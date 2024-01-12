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

    public double calculateSalary() {

        if ("Manager".equals(position)) {
            return 50000.0;
        } else {
            return 30000.0;
        }
    }

    public void addProject(Project project) {
        projects.add(project);
    }

    public void removeProject(Project project) {
        projects.remove(project);
    }
}
