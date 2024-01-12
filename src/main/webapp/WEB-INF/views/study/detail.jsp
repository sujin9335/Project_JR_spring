<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
<script src="https://unpkg.com/gijgo@1.9.14/js/gijgo.min.js" type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.14/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<style>
	
	#study i{
		margin-right: 10px;
	}
	
	#study > div > div.col-lg-8.col-12 > p {
		margin-left: 40px;
	}
	
	#todotable {
		font-size: 15px;
		text-align: center;
	}
	
	#todotable th:nth-child(1) {
		width: 100px;
	}
	
	#todotable th:nth-child(2) {
		width: auto;
	}
	
	#todotable th:nth-child(3) {
		width: auto;
	}
	
	#todotable th:nth-child(4) {
		width: 130px;
	}
	
	#todotable th:nth-child(5) {
		width: 130px;
	}
	
	#todo table th{
		text-align: center;
		border: 1px solid #CCC;
		border-radius: 30px;
		
	}
	
	#todo table{
		height: 60px;
	}
	
	#todo table tr:nth-child(2) > td{
		height: 40px;
	}
	
</style>

<main>

            <header class="site-header2" style="padding-top: 70px">
                <div class="section-overlay2"></div>

                <div class="container">
                    <div class="row">
                        
                        <div class="col-lg-12 col-12 text-center">
                            <h1 class="">나의 학습</h1>

                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">나의학습</li>
                                    <li class="breadcrumb-item active" aria-current="page">스터디</li>
                                </ol>
                            </nav>
                        </div>

                    </div>
                </div>
            </header>
			


			
			<!-- /여기서 부터 내용작성 세션 -->
			<section class="job-section section-padding pb-0">
                <div class="container" id="study">
                    <div class="row">

                       <div class="col-lg-8 col-12">
                            <h2 class="job-title mb-0"><i class="bi bi-book"></i>${dto.studyName }</h2><p>자격증: ${dto.crtName }</p>
                            <div class="job-thumb job-thumb-detail">
                            	<div>
                                	스터디원:
                                	<c:forEach items="${mList }" var="dto">
                                		${dto.id }
                                	</c:forEach>
                                </div>
                                <div class="d-flex flex-wrap align-items-center border-bottom pt-lg-3 pt-2 pb-3 mb-4">

                                    <div class="d-flex">
                                        
                                    </div>
                                </div>

                                <div class="d-flex flex-wrap align-items-center border-bottom pt-lg-3 pt-2 pb-3 mb-4">
                                	<div>TodoList</div>
                                    <table class="table table-hover fs-5 align-middle board" id="todotable">
										<thead class="text-center">
											<tr>
												<th scope="col">신청자</th>
												<th scope="col">할일</th>
												<th scope="col">메모</th>
												<th scope="col">완료일</th>
												<th scope="col">작성일</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${tList }" var="dto">
											<tr>
												<td>${dto.id }</td>
												<td>${dto.toDo }</td>
												<td>${dto.toDoComment }</td>
												<td>${dto.completeDate }</td>
												<td>${dto.writeDate }</td>
											</tr>
											</c:forEach>
										</tbody>
									</table>

                                </div>
                                <div>
                                	<form id="todo" method="POST" action="/jr/study/todoadd.do">
                                	<div>
                                	<table>
										<tr>
											<th>할일</th>
											<td><input type="text" name="toDo" class="form-control" required autofocus></td>
										</tr>
										<tr>
											<th>요청날짜</th>
											<td><input type="text" id="datepicker" name="completeDate" class="form-control" placeholder="YYYY-MM-DD" required></td>
										</tr>
										<tr>
											<th>메모</th>
											<td>
												<input type="text" name="toDoComment" class="form-control" required autofocus>
												<input type="hidden" name="seq" value="${dto.studySeq }">
											</td>
										</tr>
									</table>
									</div>
									<div>
										<button id="btntodo" type="button" class="add btn btn-outline-dark" style="margin-left: 120px;">할일 추가하기</button>
									</div>
									</form>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mt-5 mt-lg-0" >
                            <div class="job-thumb job-thumb-detail-box bg-white shadow-lg" style="width:390px;">
                                <!-- 채팅기능 -->
                                <div class="services-block-wrap col-lg-4 col-md-6 col-12" style="width:300px;">
		                            <div class="services-block">
		                                <div class="services-block-title-wrap">
		                                    <i class="services-block-icon bi-window" style="margin-right: 50px;"></i>
		                                
		                                    <h4 class="services-block-title">채팅</h4>
		                                </div>
		
		                                <div class="services-block-body">
		                                    <p>지금 접속해 있는 스터디원과 채팅을 할 수 있습니다</p>
		                                </div>
		                            </div>
		                        </div>
		                        
                                
                                <div>
                                
                                
                                <div style="text-align: center;">
                                	
                                
									<button type="button" class="in custom-btn btn ms-lg-auto" data-name="${id }" style="background-color: pink;">참가하기</button>
								</div>
                                
                                </div>
                                <!-- /채팅기능 -->

                            </div>
                        </div>

                    </div>
                </div>
            </section>

           
        </main>
        <script>
		$('.in').click(function() {
			
			let name = $('#name').val();
			
			if ($(event.target).data('name') != null && $(event.target).data('name') != '') {
				name = $(event.target).data('name');
			}
			
			let child = window.open('/jr/study/chat.do', 'chat', 'width=404 height=510');
			
			//child.connect(name);
			
			child.addEventListener('load', function() {
				//자식창 다 뜨고 나면 발생 
				child.connect(name);
			});
			
			
			
		});
		
		  $('#datepicker').datepicker({
		  	format: 'yyyy-mm-dd',
		      uiLibrary: 'bootstrap5'
		  });
		  
		  
		  
		  $('#btntodo').click(function(){
			  var dateVal=$("#datepicker").val();
			  if(isValidDate(dateVal)) {
				  $("#todo").submit();
			  }else{
				  alert("입력된 값이 유효한 날짜 형식이 아닙니다.");
			  }
		  });
		  
		  
		  
		  function isValidDate(dateString) {
		      var regex = /^\d{4}-\d{2}-\d{2}$/;
		      return regex.test(dateString);
		  }
	  
        
        </script>