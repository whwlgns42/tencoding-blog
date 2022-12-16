<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<div class="container">

	<button class="btn bg-secondary" onclick="history.back();">돌아가기</button>
	<c:if test="${board.user.id == principal.user.id }">
		<a class="btn btn-warning" id="" href="/board/${board.id}/update_form">수정</a>
		<button class="btn btn-danger" id="btn--delete">삭제</button>
	</c:if>



	<br /> <br /> <br />

	<div>
		글 번호 : <span id="board-id"><i>${board.id}</i> </span>
	</div>
	<div>
		글 작성자 : <span> ${board.user.username}</span>
	</div>
	<br /> <br /> <br />

	<div class="">
		<h3>${board.title}</h3>
	</div>

	<div>${board.content}</div>
	<br /> <br />
	<div class="card">
		<div class="card-body">
			<textarea rows="1" class="form-control"></textarea>

		</div>
		<div class="card-footer">
			<button class="btn btn-primary">등록</button>
		</div>
	</div>
	<br />
	<div class="card">
		<div class="card-header">댓글 목록</div>
	</div>
	<c:forEach var="reply" items="${board.replys}">
	<ul class="list-group">
		<li class="list-group-item d-flex justify-content-between">
			<div>${reply.content}</div>
			<div class="d-flex">
				<div>작성자 :&nbsp; &nbsp;[ ${reply.user.username} ] &nbsp; &nbsp;</div>
				<button class="btn btn-danger">삭제</button>
			</div>
		</li>
	</ul>
	</c:forEach>
</div>

<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>

