package project.Repository;

import project.Model.Project;
import project.Model.ProjectEmployee;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProjectEmployeeRepository extends CrudRepository<ProjectEmployee, Integer> {
    List<ProjectEmployee> findAllByProject(Project project);
}
