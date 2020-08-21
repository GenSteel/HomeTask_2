Scenario: Sign Up
Meta:
    @skip
Given I am on a page with the URL 'https://trello.com'
When I click on element located `By.xpath(//a[text()='Sign Up'])`
When I wait until element located `By.xpath(//div[@id='signup-form'])` appears
When I enter `<email>` in field located `By.xpath(//input[@id='email-su'])`
When I click on element located `By.xpath(//input[@id='signup-submit'])`
When I wait until element located `By.xpath(//section[@class='sc-iAyFgw jTGMge'])` appears
When I enter `<name>` in field located `By.xpath(//input[@id='displayName'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id='signup-submit'])`
Examples:
|email                   |name     |password        |
|test123_user123@mail.ru |Test Test|12345678Test!   |
|test123_user1234@mail.ru|Test Test|12345678Test1!  |
|test123_user1235@mail.ru|Test Test|12345678Test2!  |
|test123_user1236@mail.ru|Test Test|12345678Test3!  |



Scenario: Sign In
Meta:
    @skip
Given I am on a page with the URL 'https://trello.com'
When I click on element located `By.xpath(//a[@href='/login'])`
When I wait until element located `By.xpath(//section[@class='inner-section'])` appears
When I enter `test123_user123@mail.ru` in field located `By.xpath(//input[@id='user'])`
When I wait until element located `By.xpath(//input[@id='login'])` appears
When I click on element located `By.xpath(//input[@id='login'])`
When I change context to the page
When I wait until element located `By.xpath(//section[@class='sc-iAyFgw jTGMge'])` appears
When I enter `12345678Test!` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id='login-submit'])`
When I wait until element located `By.xpath(//span[text()='Welcome to Trello!'])` appears


Scenario: Visual checks
Meta:

When I login as User
Given I am on a page with the URL 'https://trello.com/create-first-board'
When I COMPARE_AGAINST baseline with `firstPage`
When I click on element located `By.xpath(//button[@aria-label='Go to List Names step'])`
When I COMPARE_AGAINST baseline with `secondPage`
When I click on element located `By.xpath(//button[@aria-label='Go to Card Names step'])`
When I COMPARE_AGAINST baseline with `thirdPage`
When I click on element located `By.xpath(//button[@aria-label='Go to Checklist Name step'])`
When I COMPARE_AGAINST baseline with `fourthPage`
When I click on element located `By.xpath(//button[@aria-label='Go to Card Dragging step'])`
When I COMPARE_AGAINST baseline with `fivethPage`
