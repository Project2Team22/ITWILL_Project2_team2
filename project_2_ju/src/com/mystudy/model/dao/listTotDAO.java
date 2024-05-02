package com.mystudy.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.model.vo.listTotVO;
import com.project.mybatis.DBService;

public class listTotDAO {
	
	//리뷰 메인(전체목록 페이징) 전체조회
	public static List<listTotVO> listTot(int begin, int end) {
		try (SqlSession ss = DBService.getFactory().openSession()) {
			Map<String, Integer> map = new HashMap<>();
			map.put("begin", begin);
			map.put("end", end);
			
			return ss.selectList("listTotal.tot", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// 회원,영화,리뷰 테이블 전체조회
	public static List<listTotVO> getList() {
		try (SqlSession ss = DBService.getFactory().openSession()) {			
			return ss.selectList("listTotal.listAll");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// 회원,영화,리뷰 테이블 전체조회
		public static listTotVO getOne() {
			try (SqlSession ss = DBService.getFactory().openSession()) {			
				return ss.selectOne("listTotal.listOne");
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
	// 리뷰 번호로 조회
	public static listTotVO selectOne(int rvNo) {
		try (SqlSession ss = DBService.getFactory().openSession()) {			
			return ss.selectOne("listTotal.one", rvNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//관리자, 마이페이지 메인(전체목록 페이징) 전체조회
	public static List<listTotVO> listTotAll(int begin, int end) {
		try (SqlSession ss = DBService.getFactory().openSession()) {
			Map<String, Integer> map = new HashMap<>();
			map.put("begin", begin);
			map.put("end", end);
			
			return ss.selectList("listTotal.totAll", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
