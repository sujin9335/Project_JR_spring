<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<header class="site-header2" style="padding-top: 70px">
		<div class="section-overlay2"></div>

		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-12 text-center">
					<h1 class="">${name} 후기 게시판</h1>

					<nav aria-label="breadcrumb">
						<ol class="breadcrumb justify-content-center">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>

							<li class="breadcrumb-item"><a href="/jr/crt/crtboardlist.do">후기게시판</a></li>
							<li class="breadcrumb-item active" aria-current="page">${name}</li>
						</ol>
					</nav>
				</div>

			</div>
		</div>
	</header>

<main>


	<section class="contact-section section-padding">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 col-12 mx-auto">
					<form class="custom-form contact-form" action="/jr/crt/edit.do" method="POST"
						role="form">

						<div class="row">
							<div class="col-12">
								<!-- <label for="first-name">제목</label> -->
								<input type="text" maxlength="500"
									name="crtBoardTitle" id="full-name" class="form-control"
									placeholder="제목을 입력해 주세요." required value="${dto.crtBoardTitle}">
							</div>

							<div class="col-lg-12 col-12">
								<!-- <label for="message">내용</label> -->

								<textarea name="crtBoardContent" rows="6" class="form-control" maxlength="3000"
									id="message" placeholder="내용을 입력해 주세요." required>${dto.crtBoardContent}</textarea>
							</div>
							<div>
								<input type="hidden" name="crtBoardSeq" value="${ dto.crtBoardSeq }">
							</div>

							<div class="col-lg-4 col-md-5 col-sm-6 mx-auto d-flex flex-row">
								<button type="submit" class="form-control me-1" id="btn-edit-board">등록</button>
								<button type="button" class="form-control" onclick="location.href='/jr/crt/crtboarddetail.do?crtBoardSeq=${dto.crtBoardSeq}';">취소</button>
							</div>
							<!-- 
							<div class="col-lg-4 col-md-5 col-sm-6 mx-auto d-flex flex-row">
								<button type="submit" class="form-control me-1" id="btn-add-board">등록</button>
								<button type="button" class="form-control" onclick="location.href='/jr/board/list.do'">취소</button>
							</div> -->
						</div>
					</form>
				</div>

			</div>
		</div>
	</section>
</main>