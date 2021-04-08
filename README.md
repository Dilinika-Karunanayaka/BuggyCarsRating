# Buggy Cars Rating

## Prerequisites
1. Programming Language: Java 1.8 or above
2. Build Management: Maven 3.6.1
3. IDE
 * IntelliJ IDEA (Community) - In the terminal run `mvn idea:idea` to create project files or just open pom.xml file as a project
 * Eclipse - In the terminal run `mvn eclipse:eclipse` to create project files the open the project

### Frameworks: 
1. Cucumber (BDD)
2. Selenium WebDriver (Chrome [windows & mac])
3. JUnit (Unit Testing)

### Design:
 * BDD - Scenarios, Data Tables, Scenario Outline, Examples
 * Pages - Page Factory Pattern, Page Objects
 * Parallel Execution - maven-surefire-plugin and JUnit (4 threads)
 * State Management - Dependency Injection (DI) with PicoContainer
 * Utilities - Lombok and log4j for logger management
 
### Reports:
1. Default - target/cucumber-html-reports/default.html (Single page and emailable)
2. MasterThought - target/cucumber-html-reports/feature-overview.html (Pretty formatted for hosting)
3. JSON - target/cucumber-html-reports/json/cucumber.json (Further report generation)
4. Timeline - target/cucumber-html-reports/timeline/index.html (measure scenario execution times)
5. Logs - target/logs/main.log and scenario based logs (analyse runtime failures and progress)

### Test Execution:
   * In a terminal navigate to project root directory and run `mvn clean test`