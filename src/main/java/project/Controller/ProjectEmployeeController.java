package project.Controller;

import com.sun.org.apache.xml.internal.resolver.helpers.Debug;
import org.slf4j.LoggerFactory;
import project.DTO.EmployeeDTO;
import project.DTO.ProjectDTO;
import project.Model.Employee;
import project.Model.Project;
import project.Model.ProjectEmployee;
import project.Repository.ProjectEmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;
import project.Repository.ProjectRepository;

import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;

@Controller
@RequestMapping(path="/project")
public class ProjectEmployeeController {
    @Autowired
    ProjectEmployeeRepository projectEmployeeRepository;
    @Autowired
    ProjectRepository projectRepository;

   org.slf4j.Logger logger = LoggerFactory.getLogger(ProjectEmployeeController.class);

    @CrossOrigin(origins = "http://localhost:8080")
    @ResponseBody
    @GetMapping
    public List<ProjectDTO> getProjectsAndEmployees() {
        List <Project> projectList = projectRepository.findAll();
        List <ProjectDTO> finalList = new LinkedList<>();
        for (Project project : projectList){
            List <ProjectEmployee> projectEmployeesInProject = projectEmployeeRepository.findAllByProject(project);
            List <EmployeeDTO> employeeInProjectList = new LinkedList<>();
            for (ProjectEmployee projectEmployee : projectEmployeesInProject) {
                employeeInProjectList.add(new EmployeeDTO(projectEmployee.getEmployee()));

            }
            ProjectDTO projectDTO = new ProjectDTO(project,employeeInProjectList);
            finalList.add(projectDTO);
        }

        return finalList;
    }



}