# Technical Testing - Test Automation using Robot Framework, Selenium Library, and Gherkin (Velv)

This document describes the approach, structure, and challenges encountered when carrying out the technical test automation for the functionality of adding and viewing products in the cart. 

The test was implemented using the Robot Framework, and Selenium Library, and adopting the Gherkin syntax for better readability of the test cases.

The technical test aims to test the following functionalities:
1. Launch browser
2. Navigate to page [http://automationexercise.com]
3. Navigate to page 'Products'
4. Verify if the search bar is visible
5. write 'men tshirt'
6. Click on the 'search button'
7. Verify 'men tshirt' is visible
8. Add product to cart
9. Add a second item to the cart (your choice)
10. Click on the 'Cart' button
11. verify that products are visible in the cart
12. verify that the sum of the product values is correct

## Project structure:

The project was organized following the Page Objects approach to improve code maintenance and readability, separating responsibilities, keeping keywords, locators, and variables within  
the same file corresponding to their page, all separate from the test data file, facilitating maintenance and reusability.

## Difficulties encountered:

### Problems with Locators:
We encountered difficulties due to the lack of unique locators, such as the ID, making the identification of elements on the page challenging.

### Overlay inside the Product Card:
The presence of an overlay within the product card posed a challenge. This functionality can result in flaky tests, since interaction with elements covered by the overlay may not be 
consistent.

### Calculating the Product Total:
Carrying out the step of adding up the total of the products was a challenge since there is no specific total column within the cart page. This required a creative approach to validate 
the accuracy of the product totals in the cart.

___

### Pre-requirements

Before starting the project it is necessary to install the following tools:

[Python](https://www.python.org/)
[Robot Framework](https://robotframework.org/)
[Chromedriver](https://sites.google.com/chromium.org/driver/)

## Installation

### Python

Make sure you have Python installed. You can download it [here](https://www.python.org/downloads/)

### RobotFramework

Install the Robot Framework using pip: pip install robot framework

For more information click [here](https://robotframework.org/?tab=1#getting-started)

### Chromedriver

Chromedriver must be compatible with the version of the Chrome browser installed on your machine. You can download Chromedriver [here](https://chromedriver.chromium.org/downloads)

## Running the test

1 - Clone this repository: git clone https://github.com/caroltheqatester/testVelv.git
2 - Open the repository in your IDE
3 - Run the test using: robot products_test.robot
___

Tested with 💚 by [me](https://www.linkedin.com/in/carolinebarbosavilar/).
