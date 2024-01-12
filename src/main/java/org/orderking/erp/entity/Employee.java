package org.orderking.erp.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;
@Getter
@Setter
public class Employee extends Person implements ContractDepartment {
    private String entryDate;
    private int contractDuration;
    private int noticePeriod;
    private String position;
    private List<Project> projects = new ArrayList<>();

    public Employee(String name, int age, String position) {
        super(name, age);
        this.position = position;
    }

    // Implementing ContractDepartment interface
    @Override
    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    @Override
    public void setContractDuration(int contractDuration) {
        this.contractDuration = contractDuration;
    }

    @Override
    public void setNoticePeriod(int noticePeriod) {
        this.noticePeriod = noticePeriod;
    }

    // Method for salary calculation based on the employee's position
    public double calculateSalary() {
        // Implement your salary calculation logic based on the employee's position
        // For simplicity, let's assume a fixed salary for now
        if ("Manager".equals(position)) {
            return 50000.0;
        } else {
            return 30000.0;
        }
    }

    // Step 4: Adding and removing projects
    public void addProject(Project project) {
        projects.add(project);
    }

    public void removeProject(Project project) {
        projects.remove(project);
    }
}
