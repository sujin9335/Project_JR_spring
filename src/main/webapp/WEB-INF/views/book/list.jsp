<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>

#bookimg {
    width: 300px; /* Set your desired fixed width */
    height: 300px;
}

.job-body{
   
   width: 400px;
   height: 320px;
}


</style>


        <main>

            <header class="site-header2" style="padding-top:70px">
                <div class="section-overlay2"></div>

                <div class="container">
                    <div class="row">
                        
                        <div class="col-lg-12 col-12 text-center">
                            <h1 class="">교재 조회</h1>

                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">교재 조회</li>
                                </ol>
                            </nav>
                        </div>

                    </div>
                </div>
            </header>

   <!-- 검색 세션 -->
   <section
      class="section-padding pb-0 d-flex justify-content-center align-items-center"
      style="padding-top: 70px">
      <div class="container">
         <div class="row">

            <div class="col-lg-12 col-12 ">
               <form class="custom-form hero-form pb-2 pt-4" action="/jr/book/list.do" method="GET"
                  role="form">
                  <h3 class="text-white mb-3">게시판 검색</h3>

                  <div class="row">

                     <!-- 셀렉트 박스 -->
                     <div class="col-lg-4 col-md-4 col-12">
                        <div class="input-group">
                           <span class="input-group-text" id="basic-addon1"><i
                              class="bi-laptop custom-icon"></i></span>
                           <select
                              class="form-select form-control" name="column"
                              id="job-level" aria-label="Default select example">
                              <option value="boardTitle">도서명</option>
                              <option value="boardContent">자격증명</option>
                              <option value="id">저자</option>
                              <option value="id">출판사</option>
                           </select>
                        </div>
                     </div>

                     <!-- 검색창 -->
                     <div class="col-lg-8 col-md-8 col-12">
                        <div class="input-group">
                           <span class="input-group-text" id="basic-addon1"><i
                              class="bi-person custom-icon"></i></span>
                           <input type="text"
                              name="word" id="job-title" class="form-control"
                              placeholder="검색어를 입력해주세요." required>
                        </div>
                     </div>

                     <!-- 검색 버튼 -->
                     <div class="col-lg-12 col-12">
                        <button type="submit" class="form-control">검색</button>
                     </div>

                  </div>
               </form>
            </div>
            <script>
               //검색 중일 때 > select박스 값, text 값 유지
               // #search, #column
               <c:if test="${pdto.search == 'y'}">
               $('select[name=column]').val('${pdto.column}');
               $('input[name=word]').val('${pdto.word}');
               </c:if>
            </script>

         </div>
      </div>
   </section>
   <!-- /검색 세션 -->


            <section class="job-section section-padding">
                <div class="container">
                    <div class="row align-items-center">

                  
                  <div class="col-lg-6 col-12 mb-lg-4">
                     <c:choose>
                        <c:when test="${pdto.search == null}">
                           <h3>전체 결과 총 ${pdto.totalCount}건</h3>
                        </c:when>
                        <c:when test="${pdto.search == 'y' }">
                           <h3>검색 결과 총 ${pdto.totalCount}건</h3>
                        </c:when>
                     </c:choose>
                  </div>
                  
                        <div class="col-lg-4 col-12 d-flex align-items-center ms-auto mb-5 mb-lg-4">
                            <p class="mb-0 ms-lg-auto">정렬</p>

                            <div class="dropdown dropdown-sorting ms-3 me-4">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownSortingButton" data-bs-toggle="dropdown" aria-expanded="false">
                                    기본 정렬
                                </button>

                                <ul class="dropdown-menu" aria-labelledby="dropdownSortingButton">
                                    <li><a class="dropdown-item" href="/jr/book/list.do?price=low">가격 낮은순</a></li>

                                    <li><a class="dropdown-item" href="/jr/book/list.do?price=high">가격 높은순</a></li>

                                </ul>
                            </div>

                            <div class="d-flex">
                                <a href="#" class="sorting-icon active bi-list me-2"></a>

                                <a href="#" class="sorting-icon bi-grid"></a>
                            </div>
                        </div>
                  <c:forEach items="${list}" var="dto">
                    <!-- 반복 -->
                      <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="/jr/book/detail.do?seq=${dto.bookSeq }">
                                        <img src="${dto.bookImg }" class="job-image img-fluid" id="bookimg" alt="">
                                    </a>
                                </div>
                                

                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="/jr/book/detail.do?seq=${dto.bookSeq }" class="job-title-link">${dto.bookName}</a>
                                    </h4>

                                    <div class="d-flex align-items-center">
                              <p class="mb-0">
                           <br>
                              출판사: ${dto.publisher }</p>
                           </div>

                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="bi-person"></i>
                                            저자: ${dto.author }
                                        </p>
                                        </div>
                              
                              <div class = "" style="display: flex; justify-content: space-between;">
                                        <p class="job-date">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            가격: ${dto.price }원
                                        </p>
                                        <c:if test="${dto.booklike2 == 0}">
                                        <i class="bookmark-button fa-regular fa-heart" onclick="bookmark(${dto.bookSeq})">                                        
                                        </i>
                                        </c:if>
                                        <c:if test="${dto.booklike2 > 0}">
                                        <i class="bookmark-button fa-solid fa-heart" onclick="bookmark(${dto.bookSeq})">                                        
                                        </i>
                                        </c:if>
                                        
                              </div>
                                        
                                </div>
                            </div>
                        </div>
                    </c:forEach>
 

                  <div class="col-lg-12 col-12">
                     <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center mt-5 pb-5">
                           ${ pdto.pagebar}
                        </ul>
                     </nav>
                  </div>
                    </div>
                </div>
            </section>


     </main>

       <!-- JAVASCRIPT FILES -->
        <script src="<%=request.getContextPath() %>/resources/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/js/owl.carousel.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/js/counter.js"></script>
        <script src="<%=request.getContextPath() %>/resources/js/custom.js"></script>
        <script>
        function bookmark(bookseq) {
           var currentClass = $(event.target).hasClass("fa-regular") ? "fa-regular" : "fa-solid";

          // 토글하여 반대 클래스를 적용합니다.
          var newClass = currentClass === "fa-regular" ? "fa-solid" : "fa-regular";
          
          // 버튼의 클래스를 변경하여 색상을 토글합니다.
          $(event.target).removeClass(currentClass).addClass(newClass);
          
            let obj = {
               id : '${id}',
               bookSeq : bookseq
            };
            if ($(event.target).hasClass("fa-regular")) {
               $.ajax({
                  type : 'DELETE',
                  url : '/jr/book/booklikedel',
                  headers : {
                     'Content-Type' : 'application/json'
                  },
                  data : JSON.stringify(obj),
                  dataType : 'json',
                  success : result => {
                     if(result == 1) {
                        alert('좋아요 목록에 삭제되었습니다.');
                     } else {
                        alert('삭제 실패');
                     }
                  },
                  error : function(a, b, c) {
                     console.log(a, b, c);
                  }
               });
            } else {

               $.ajax({
                  type : 'POST',
                  url : '/jr/book/booklike',
                  headers : { 
                     'Content-Type' : 'application/json'
                  },
                  data : JSON.stringify(obj),
                  dataType : 'json',
                  
                  success : result => {
                     if(result == 1) {
                        alert('좋아요 목록에 등록되었습니다.');
                     } else {
                        alert('로그인이 필요한 서비스입니다.');
                        location.href = '/jr/user/login.do';
                     }
                  },
                  error : function(a, b, c) {
                     console.log(a, b, c);
                  }
               });
            }
      }
        
        function add(bookSeq) {
           
           
           
           $.ajax({
              type: 'POST',
              url : '/jr/book/mybookadd.do',
              data : {
                 "bookSeq": bookSeq
              },
              dataType : 'json',
              success: result => {
                 if (result >= 1) {
                    alert('my교재에 추가되었습니다.');
                 } else {
                    alert('로그인 필요한 서비스입니다.');
                    location.href = '/jr/book/list.do';
                 }
              },
              error: (a,b,c) => {
                 console.log(a,b,c);
              }
           })
           
        } 

        
        
        </script>
    </body>
</html>