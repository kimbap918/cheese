package com.example.dao;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
//기록저장소 
@Repository("commonDAO") 
@SuppressWarnings("unchecked")
public class CommonDAO extends AbstractDAO {

	Logger log = Logger.getLogger(this.getClass());
	
	//unchecked : 검증되지 않은 연산자 관련 경고 억제
	public List<Map<String, Object>> getList(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("common.getList", map);} 
	//common.getList의 common은 common_sql의 mapper namespace="common"
	
	public Map<String, Object> loginCheck(Map<String, Object> map) {
		return (Map<String, Object>)selectOne("common.loginCheck", map);} 
	
}
