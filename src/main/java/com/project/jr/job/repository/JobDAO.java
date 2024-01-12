package com.project.jr.job.repository;

import java.util.ArrayList;
import java.util.HashMap;

import com.project.jr.job.model.JobDTO;
import com.project.jr.job.model.JobGroupDTO;

/**
 * 직업 DAO 인터페이스
 * @author user
 *
 */
public interface JobDAO {


	ArrayList<JobGroupDTO> getJobGroup();

	ArrayList<JobDTO> getJobList(HashMap<String, Object> j);

	int getTotalCount(HashMap<String, Object> j);

	JobDTO getJob(int seq);

	ArrayList<String> getJobNames(HashMap<String, Object> map);

	ArrayList<JobDTO> getJobG(int seq);


}
