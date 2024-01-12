package com.project.jr.book.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jr.book.model.BookPageDTO;
import com.project.jr.book.repository.BookDAO;




/**
 * {@code BookPageService} 클래스는 책 목록의 페이지네이션 기능을 제공합니다. 페이지네이션 세부 정보를 계산하고,
 * 페이지네이션 링크를 생성하며, 제공된 {@code BookPageDTO} 객체에 필요한 정보를 설정합니다.
 *
 *
 * @author sla
 */
@Service
public class BookPageService {

   
   
  /**
   * 책 저장소와 상호 작용하기 위한 데이터 액세스 객체입니다.
   */
   @Autowired
   private BookDAO dao;
   
   
   
   /**
    * 제공된 {@code BookPageDTO} 객체를 기반으로 페이지네이션을 수행하며, 페이지네이션 세부 정보를 계산하고
    * 페이지네이션 링크를 생성하여 설정합니다.
    *
    * @param pdto 페이지네이션 정보가 담긴 {@code BookPageDTO} 객체
    */
   public void paging(BookPageDTO pdto) {
      //검색여부
      if ((pdto.getColumn() != null && pdto.getWord() != null)
         && (!pdto.getColumn().isEmpty() && !pdto.getWord().isEmpty())) {
             pdto.setSearch("y");   
   }
      
      System.out.println("BookPageService : " + pdto.getColumn());
      
      //페이징
      //현재페이지
      if (pdto.getPage() == 0) {
         pdto.setPage(1);
      }
      
      //총 글의 개수
      pdto.setTotalCount(dao.getTotalCount(pdto));
      
      //페이지당 글 개수
      pdto.setPageSize(12);
      
      //총 페이지 개수
      pdto.setTotalPage((int) Math.ceil((double) pdto.getTotalCount() / pdto.getPageSize()));
      
      //페이지 당 시작 ~ 끝 글번호
      pdto.setBegin((pdto.getPage() - 1) * pdto.getPageSize() + 1);
      pdto.setEnd(pdto.getBegin() + pdto.getPageSize() - 1);
      
      
      //페이징
      StringBuilder sb = new StringBuilder();
      int loop = 1; // 루프 변수
      int blockSize = 10; // 한번에 보이는 페이지 개수
      int n = ((pdto.getPage() - 1) / blockSize) * blockSize + 1;
      
      
      
   
      
      
      
      
      
      
      
      
      
      // 이전 10페이지
      if (n == 1) {
         sb.append("<li class='page-item'><a class='page-link' href='#!'\n"
               + "   aria-label='Previous'> <span aria-hidden=\"true\">Prev</span>\n"
               + "   </a></li>");
      } else {

         if (pdto.getSearch() == null) {
            sb.append(String.format("<li class='page-item'><a class='page-link' href='/jr/book/list.do?page=%d'\n"
                  + "   aria-label='Previous'> <span aria-hidden=\"true\">Prev</span>\n"
                  + "   </a></li>", n - 1));
         } else {
            sb.append(String.format("<li class='page-item'><a class='page-link' href='/jr/book/list.do?page=%d&column=%s&word=%s'\n"
                  + "   aria-label='Previous'> <span aria-hidden=\"true\">Prev</span>\n"
                  + "   </a></li>", n - 1, pdto.getColumn(), pdto.getWord()));
         }

      }

      while (!(loop > blockSize || n > pdto.getTotalPage())) {

         if (n == pdto.getPage()) {
            sb.append(String.format("<li class='page-item active' aria-current='page'><a\n"
                                 + "   class='page-link' href=''>%d</a></li>", n));
         } else {
            if (pdto.getSearch() == null) {
               sb.append(String.format("<li class='page-item'><a class='page-link' href='/jr/book/list.do?page=%d'>%d</a></li>", n, n));
            } else {
               sb.append(String.format("<li class='page-item'><a class='page-link' href='/jr/book/list.do?page=%d&column=%s&word=%s'>%d</a></li>", n,
                     pdto.getColumn(), pdto.getWord(), n));
               
            }
         }
         loop++;
         n++;

      }

      // 다음 10페이지
      if (n > pdto.getTotalPage()) {
         sb.append("<li class='page-item'><a class='page-link' href='#!'\n"
               + "   aria-label='Next'> <span aria-hidden='true'>Next</span>\n"
               + "   </a></li>");
      } else {
         if (pdto.getSearch() == null) {
            sb.append(String.format("<li class='page-item'><a class='page-link' href='/jr/book/list.do?page=%d'\n"
                  + "                     aria-label='Next'> <span aria-hidden='true'>Next</span>\n"
                  + "                  </a></li>", n));
         } else {
            sb.append(String.format(" <a href='/jr/book/list.do?page=%d&column=%s&word=%s'>[다음]</a>",
                  pdto.getColumn(), pdto.getWord(), n));
            sb.append(String.format("<li class='page-item'><a class='page-link' href='/jr/book/list.do?page=%d&column=%s&word=%s'\n"
                  + "                     aria-label='Next'> <span aria-hidden='true'>Next</span>\n"
                  + "                  </a></li>",
                  n, pdto.getColumn(), pdto.getWord()));
         }
      }
      pdto.setPagebar(sb.toString());
   }
      
   
   }