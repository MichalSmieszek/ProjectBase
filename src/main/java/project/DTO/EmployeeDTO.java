package project.DTO;

import project.Model.Employee;

public class EmployeeDTO {
    String name;
    public EmployeeDTO(Employee employee){
        name=employee.getName();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
