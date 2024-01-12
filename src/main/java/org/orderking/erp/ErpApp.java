package org.orderking.erp;

import org.orderking.erp.entity.Employee;
import org.orderking.erp.entity.Project;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ErpApp {

    public static void main(String[] args)
    {
        SpringApplication.run(ErpApp.class, args);
        Employee manager = new Employee("John", 35, "Manager");
        manager.setEntryDate("2022-01-10");
        manager.setContractDuration(12);
        manager.setNoticePeriod(3);

        Employee developer = new Employee("Alice", 28, "Developer");
        developer.setEntryDate("2022-02-15");
        developer.setContractDuration(24);
        developer.setNoticePeriod(2);

        Project project1 = new Project("Project A");
        Project project2 = new Project("Project B");

        manager.addProject(project1);
        developer.addProject(project2);
        developer.removeProject(project2);

        // Displaying employee information
        System.out.println("Manager: " + manager.getName() + ", Salary: $" + manager.calculateSalary());
        System.out.println("Developer: " + developer.getName() + ", Salary: $" + developer.calculateSalary());
    }

}
