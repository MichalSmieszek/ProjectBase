package project.Repository;


import project.Model.Project;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProjectRepository extends CrudRepository<Project, Integer>  {
    List<Project> findAll();
    Project findById(int id);
}