<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
      <form>
         <input type="hidden" name="id" id="id" value="${principal.user.id }">
         <div class="form-group">
            <label for="username">username:</label> <input type="text" readonly="readonly" class="form-control" placeholder="Enter username" id="username" value="${principal.user.username}">
         </div>
         <c:if test="${empty principal.user.oauth}">
         <div class="form-group">
            <label for="password">password:</label> <input type="password" class="form-control" placeholder="Enter password" id="password" value="">
         </div>
         </c:if>
         <div class="form-group">
            <label for="email">Email:</label> <input type="email" class="form-control" placeholder="Enter email" id="email" value="${principal.user.email}">
         </div>
      </form>
   <button type="button" id="btn--update" class="btn btn-primary">회원 정보 수정 완료</button>
</div>

<!-- HTML 렌더링이 모두 끝난 후 js코드 -->
<script type="text/javascript" src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>