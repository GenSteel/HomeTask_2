Scenario: Create account
Meta:

Given I am on a page with the URL 'https://www.walmart.com'
When I click on element located `By.xpath((//span[text()="Account"])[1])`
When I click on element located `By.xpath(//div[text()="Account"])`
Then the page with the URL containing 'https://www.walmart.com/account' is loaded
When I click on element located `By.xpath((//a[text()="create an account"])[1])`
When I change context to the page
When I enter `TestFirstName` in field located `By.xpath((//input[@name="firstName"])[1])`
When I enter `TestLastName` in field located `By.xpath((//input[@name="lastName"])[1])`
When I change context to the page
When I enter `test123_user123@mail.ru` in field located `By.xpath(//input[@id="email-su"])`
When I enter `12345Test` in field located `By.xpath(//input[@id="password-su"])`
When I click on element located `By.xpath((//button[text()="Create account"])[2])`
When I change context to element located `By.xpath(//div[@class="captcha re-captcha"])`
When I wait until element located `By.xpath(//div[@id="rc-anchor-container"])` appears
When I change context to element located `By.xpath(//div[@id="rc-anchor-container"])`
When I click a checkbox by the xpath 'By.xpath(//div[@class="recaptcha-checkbox-border"])'



Scenario: Sign in
Meta:

Given I am on a page with the URL 'https://www.walmart.com'
When I click on element located `By.xpath((//span[text()="Account"])[1])`
When I click on element located `By.xpath(//div[text()="Sign In"])`
When I enter `test123_user123@mail.ru` in field located `By.xpath((//input[@placeholder="Email address (required)"])[1])`
When I enter `12345Test` in field located `By.xpath((//input[@placeholder="Password (required)"])[1])`
When I click on element located `By.xpath((//button[text()="Sign in"])[1])`


Scenario: Perform search for product by search box
Meta:

Given I am on a page with the URL 'https://www.walmart.com'
When I enter `fishing` in field located `By.xpath(//input[@id='global-search-input'])`
When I click on element located `By.xpath(//button[@id='global-search-submit'])`
When I click on element located `By.xpath(//img[@alt='Berkley Trilene Big Game Monofilament Fishing Line'])`
When I click on element located `By.xpath(//span[text()='Add to cart'])`
When I click on element located `By.xpath(//span[text()='View cart'])`
