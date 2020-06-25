package com.nt.service;

import com.nt.dto.EmployeeDto;

public class SalleryReportMgmtServiceImpl implements SalleryReportMgmtService {
    
	public SalleryReportMgmtServiceImpl() {
		System.out.println("SalaryReportMgmtServiceImpl:: 0-param constructor");
	}
	@Override
	public void generateReport(EmployeeDto dto) {
		float netSallery=0.0f,grossSallery=0.0f;
	    //set net sallery and gross sallery	
		grossSallery=dto.getBasicSallery()+0.4f*(dto.getBasicSallery());
		netSallery=grossSallery-(0.15f*grossSallery);
		//set result to dto
		dto.setGrossSallery(grossSallery);
		dto.setNetSallery(netSallery);
	}

}
