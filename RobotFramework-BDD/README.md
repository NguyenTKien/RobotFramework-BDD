# RobotFramework-BDD-Employee App Automation
Robot Framework is an open-source test automation framework, exclusively designed for acceptance testing and acceptance test-driven development. The environment it uses is built with a number of libraries and tools.
If comparing Robot Framework with other test automation tools, then the best benefit with Robot Framework for the users is that there is no need for using any sort of programming language for implementing and running tests.

https://robotframework.org/robotframework/#user-guide
# Installation
1. Install Python 3.7.8 (follow pdf for more detail):

   `https://www.python.org/ftp/python/3.7.8/python-3.7.8-amd64.exe`
2. Install Robot Framework on command prompt:
   
   `pip install Robotframework`
3. Install Wxpython version 4.0.7 on command prompt:
   
   `pip install wxpython==4.0.7`
4. Install Python IDE. For example, Pycharm:
- For the installation of PyCharm: https://www.youtube.com/watch?v=ZqqIRgNn1vM
- Writing your first test using PyCharm: https://www.youtube.com/watch?v=WsjShhwDLlo
5. Install Selenium Library (version 5.1.1) on command prompt:
   
   `pip install --upgrade robotframework-seleniumlibrary==5.1.1`
6. Install WebDriver:

   https://www.selenium.dev/downloads/
   After download, extract file and place it into folder python37->scripts
7. Data Driver Library:
   
   `pip install --upgrade robotframework-datadriver[XLS]`
- For data driven using excel file tutorial, can refer documentation
Use requirements.txt to install the required packages and run this project
# About the Project
It is automation of eBay commercial site using Robot Framework. POM design pattern & BDD-Cucumber style is applied to develop this project
# Page Objects
The pages folder holds the locators and the functions which is called by test cases (in the tests folder)
pages/abstract_pages.robot contains common functionalities used by other page objects
resources.robot is used to open Employee App and maximize the browser window
# Tests
Test case files as well as a resource file used by them are located in the login_tests directory. Click file names below to see the latest versions online.

- login_BDD: A test suite with a single test for valid login.
This test has a workflow that is created using keywords in the imported resource file.

- invalid_login: A test suite containing tests related to invalid login.
These tests are data-driven by their nature. They use a single keyword, specified with the Test Template setting, that is called with different arguments to cover different scenarios.
This suite also demonstrates using setups and teardowns in different levels.

# Report
The result folder consists of report.html which shows the result of the last test execution
