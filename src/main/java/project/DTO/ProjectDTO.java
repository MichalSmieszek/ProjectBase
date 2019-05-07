package project.DTO;

import com.fasterxml.jackson.annotation.JsonFormat;
import project.Model.Employee;
import project.Model.Project;

import java.util.Date;
import java.util.List;

public class ProjectDTO {
    private String projectName;
    @JsonFormat(pattern="yyyy-MM-dd")
    private Date startDate;
    @JsonFormat(pattern="yyyy-MM-dd")
    private Date endDate;
    List<EmployeeDTO> employeeList;


    public ProjectDTO(Project project, List<EmployeeDTO> employeeDTO){
        projectName=project.getName();
        startDate=project.getStartDate();
        endDate=project.getEndDate();
        employeeList=employeeDTO;

    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public List<EmployeeDTO> getEmployeeList() {
        return employeeList;
    }

    public void setEmployeeList(List<EmployeeDTO> employeeList) {
        this.employeeList = employeeList;
    }
}
