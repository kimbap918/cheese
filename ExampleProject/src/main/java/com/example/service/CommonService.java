package com.example.service;

import java.util.*;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.example.dao.CommonDAO;

@Service("commonService")
public class CommonService {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="commonDAO")
	private CommonDAO commonDAO;
	
	public List<Map<String, Object >> getList(Map<String, Object> map){ return commonDAO.getList(map);}

}
