//========新增檢舉========
$(document).ready(function() {
	$('#send_report').click(function() {
		var postID = $('#reportButton').attr("data-post-id");
		var selectedOption = $("#exampleModal2 input[type='radio']:checked");
		var reportType;
		switch (selectedOption.next('label').text().trim()) {
			case '違反版規':
				reportType = 0;
				break;
			case '內容不實':
				reportType = 1;
				break;
			case '惡意洗版':
				reportType = 2;
				break;
			case '仇恨言論':
				reportType = 3;
				break;
			case '商業宣傳內容':
				reportType = 4;
				break;
			case '其他':
				reportType = 5;
				break;
		}
		$.ajax({
			type: "POST",
			url: "http://localhost:8081/PiChill/report/report.do",
			data: {
				"action": "insert",
				"postID": postID,
				"reportType": reportType,
			},
			dataType: "json",
			success: function(postData) {
				$('#exampleModal2').modal('hide');
				$("#exampleModal2 input[type='radio']").prop('checked', false);


			},
			error: function(xhr, status, error) {
				console.error("Get report Error:", status, error);
			}
		});
	});
	//======新增/取消按讚======
	$("#post-list").on("click", "#likecol", function() {
		var postID = $(this).attr("data-post-id");
		var button = $(this); // 儲存當前按鈕的引用
		var likeStatus = button.data('likeStatus'); // 獲取當前按讚狀態
		console.log(likeStatus);
//console.log(postID);
		// 檢查是否是首次按讚（沒有現存的 likeStatus）
		var isFirstLike = likeStatus === undefined;

		$.ajax({
			type: "POST",
			url: "http://localhost:8081/PiChill/like/like.do",
			data: {
				"action": isFirstLike ? "insert" : "update", // 如果是首次按讚，則使用 insert
				"postID": postID,
				"likeStatus": isFirstLike ? 1 : (likeStatus === 1 ? 0 : 1), // 根據情況切換按讚狀態
			},
			dataType: "json",
			success: function(postData) {
				if (isFirstLike || likeStatus === 0) {
					button.css('color', 'blue'); // 更改為藍色，表示按讚
					button.data('likeStatus', 1); // 設置狀態為已按讚
				} else {
					button.css('color', ''); // 恢復原始顏色
					button.data('likeStatus', 0); // 更新狀態為未按讚
				}
			},
			error: function(xhr, status, error) {
				console.error("Error:", status, error);
			}
		});
	});
	//========所有留言=========
	$("#post-list").on("click", "#commentcol", function() {
		$.ajax({
			url: "http://localhost:8081/PiChill/comment/comment.do",
			type: "GET",
			data: {
				action: "list_All"
			},
			dataType: "json",
			contentType: "application/json; charset=utf-8",
			success: function(data) {
				data.forEach(function(comment) {
					publishcomment(comment.commentID, comment.commentContent, comment.commentTime);
				});
			},
			error: function(xhr, status, error) {
				console.error("Error fetching comments:", status, error);
			}
		});
	});
	function publishcomment(commentID, commentContent, commentTime) {
		// 初始化 HTML 字串
		var list_html = '<li>';
		list_html += '<div class="item_flex">';
		list_html += '<div class="left_block">';
		list_html += '<div class="comment_img"> <img src="../image/cat.jpg" alt="大頭貼"></div>';
		list_html += '<div>';
		list_html += '<a class="comment_user">貓貓</a>';
		list_html += '<div class="comment_time">' + commentTime + '</div>'
		list_html += '</div>';
		list_html += '</div>';
		list_html += '<div class="middle_block">';
		list_html += '<p class="para">' + commentContent + '</p>';
		// 假設 'task_text' 是您想在輸入框中顯示的預設文字
		list_html += '<input type="text" class="task_name_update -none" placeholder="更新留言…" value="' + commentContent + '">';
		list_html += '</div>';
		list_html += '<div class="right_block">';
		list_html += '<div class="btn_flex">';
//		list_html += '<button type="button" class="btn_update" data-comment-id=' + commentID + '>';
//		list_html += '<i class="fa-regular fa-pen-to-square"></i>';
//		list_html += '<span class="tooltip-text3">編輯</span>';
//		list_html += '</button>'
//		list_html += '<button type="button" class="btn_delete" data-comment-id=' + commentID + '>';
//		list_html += '<i class="fa-regular fa-trash-can"></i>'
//		list_html += '<span class="tooltip-text3">刪除</span>'
//		list_html += '</button>'
		list_html += '<button type="button" class="btn_report" data-bs-toggle="modal" data-bs-target="#exampleModal2"  id="openSecondModal" data-comment-id=' + commentID + '>';
		list_html += '<i class="fa-solid fa-triangle-exclamation"></i>'
		list_html += '<span class="tooltip-text">檢舉</span>'
		list_html += '</button>'
		list_html += '</div>';
		list_html += '</div>';
		list_html += '</div>';
		list_html += '</li>';

		// 將生成的 HTML 插入到頁面的指定元素中
		$('.task_list').prepend(list_html);
// 获取檢舉按钮元素
const reportButton = document.querySelector('.btn_report');

// 获取第二个模态的模态框
const secondModal = document.getElementById('exampleModal2');

// 添加点击事件监听器以打开第二个模态
reportButton.addEventListener('click', () => {
  secondModal.style.display = 'block';
});
	//=======編輯留言==========
	$("ul.task_list").on("click", "button.btn_update", function() {
		if ($(this).attr("data-edit") == undefined) { // 進入編輯狀態
			$(this).attr("data-edit", true);
			$(this).closest("li").find("p.para").toggleClass("-none");
			$(this).closest("li").find("input.task_name_update").toggleClass("-none");

			// 監聽按鍵事件
			$(this).closest("li").find("input.task_name_update").on("keyup", function(event) {
				if (event.key === "Enter") {
					saveUpdate($(this));
				}
			});
		} else {
			let update_task_name = ($(this).closest("li").find("input.task_name_update").val()).trim();
			if (update_task_name == "") {
				alert("請輸入待辦事項");
			} else {
				saveUpdate($(this));
			}
		}
	});

	}
	
	
	//========新增留言===========
	function addComment() {
		let task_text = ($("input.task_name").val()).trim();
		if (task_text != "") {
			$.ajax({
				url: "http://localhost:8081/PiChill/comment/comment.do",
				type: 'POST',
				dataType: 'json',
				data: {
					"action": "insert",
					commentContent: task_text
				},
				success: function(response) {
					let commentTime = response.commentTime;
					let commentID = response.commentID;
					let list_html = "";
					list_html += '<li>';
					list_html += '<div class="item_flex">';
					list_html += '<div class="left_block">';
					list_html += '<div class="comment_img"> <img src="../image/cat.jpg" alt="大頭貼"></div>';
					list_html += '<div>';
					list_html += '<a class="comment_user">貓貓</a>';
					list_html += '<div class="comment_time">' + commentTime + '</div>'
					list_html += '</div>';
					list_html += '</div>';
					list_html += '<div class="middle_block">';

					list_html += '<p class="para">' + task_text + '</p>';
					list_html += '<input type="text" class="task_name_update -none" placeholder="更新留言…" value="' + task_text + '">';
					list_html += '</div>';
					list_html += '<div class="right_block">';
					list_html += '<div class="btn_flex">';
					list_html += '<button type="button" class="btn_update" data-comment-id=' + commentID + '>編輯</button>';
					list_html += '<button type="button" class="btn_delete" data-comment-id=' + commentID + '>刪除</button>';
					list_html += '</div>';
					list_html += '</div>';
					list_html += '</div>';
					list_html += '</li>';
					$("ul.task_list").prepend(list_html);
				},
				error: function(xhr, status, error) {
					console.error("留言新增失敗:", error);
				}
			});

			$("input.task_name").val("");
		}
		// 綁定 Enter 鍵事件
		$("input.task_name").on("keyup", function(e) {
			if (e.which == 13) { // 按下 Enter 鍵
				addComment();
			}
		});

		// 綁定新增按鈕點擊事件
		$("button.task_add").on("click", function() {
			addComment();
		});
	}
	//==========刪除留言=========
	$(".task_list_parent").on("click", "ul.task_list button.btn_delete", function() {
		//		console.log("aa");
		let r = confirm("是否確定刪除留言？");
		if (r) {
			var commentID = $(this).attr("data-comment-id");
			var commentElement = $(this).closest("li");

			$.ajax({
				url: "http://localhost:8081/PiChill/comment/comment.do",
				type: 'POST',
				data: {
					"action": "delete",
					"commentID": commentID
				},
				success: function(response) {
					// 刪除動畫
					commentElement.animate({
						"opacity": 0
					}, 1000, "swing", function() {
						commentElement.remove();
					});
				},
				error: function(xhr, status, error) {
					console.error("留言刪除失敗:", error);
				}
			});
		}
	});
	
	function saveUpdate(button) {
		let update_task_name = button.closest("li").find("input.task_name_update").val().trim();
		let commentID = button.closest("li").find("button.btn_delete").attr("data-comment-id");

		$.ajax({
			url: "http://localhost:8081/PiChill/comment/comment.do",
			type: 'POST',
			data: {
				"action": "update",
				"commentID": commentID,
				"commentContent": update_task_name
			},
			success: function(response) {
				// 更新成功時的處理
				console.log("更新成功");
			},
			error: function(xhr, status, error) {
				console.error("更新失敗:", error);
			}
		});

		button.closest("li").find("p.para").html(update_task_name).toggleClass("-none");
		button.closest("li").find("input.task_name_update").val(update_task_name).toggleClass("-none");
		button.removeAttr("data-edit");

		// 移除按鍵事件監聽器
		button.closest("li").find("input.task_name_update").off("keyup");
	}
});