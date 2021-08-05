<p>
    <img alt="Ruby" src="https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white"/>
    <img alt="Selenium" src="https://img.shields.io/badge/Selenium-%5cb012.svg?style=for-the-badge&logo=selenium&logoColor=white"/>
    <img alt="Cucumber" src="https://img.shields.io/badge/Cucumber-23D96C.svg?style=for-the-badge&logo=Cucumber&logoColor=white"/>
    <a href="https://linkedin.com/in/leonardo-duprates">
        <img alt="LinkedIn" src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white"/>
    </a>
</p>

# Ruby Web Testing

Behavior driven development (BDD) approach to write automation test scripts to test web applications using Ruby, Selenium and Cucumber.

## Project Architecture

The project architecture uses the standard Cucumbers structure.

```shell
ruby-web-testing/
├── config
├── features
│   ├── page_objects
│   ├── step_definitions
│   ├── support
├── reports
│   ├── html
│   ├── json
│   ├── screenshots
├── resources
│   ├── demo_app
```

## Built With

- [chromedriver-helper](https://rubygems.org/gems/chromedriver-helper)
- [cucumber](https://rubygems.org/gems/cucumber)
- [geckodriver-helper](https://rubygems.org/gems/geckodriver-helper)
- [page-object](https://rubygems.org/gems/page-object)
- [report_builder](https://rubygems.org/gems/report_builder)
- [selenium-webdriver](https://rubygems.org/gems/selenium-webdriver)

## Design Patterns

This project uses the design patterns from [Rubocop Ruby Style Guide](https://github.com/rubocop/ruby-style-guide).

## Getting Started

1. Install Ruby using [Official Documentation](https://www.ruby-lang.org/en/documentation/installation/).

2. Download and setup the [chromedriver](https://chromedriver.chromium.org/downloads), [geckodriver](https://github.com/mozilla/geckodriver/releases) and [operachromiumdriver](https://github.com/operasoftware/operachromiumdriver/releases).

3. Install Bundler

   ```shell
   $ gem install bundler
   ```

4. Install Dependencies

   ```shell
   $ bundle install
   ```

5. Run Tests

   ```shell
   $  bundle exec cucumber -t @tag BROWSER=chrome
   ```

6. Run Rubocop (Linter)

   ```shell
   $  rubocop
   ```

7. Run Rufo (Prettier)
   ```shell
   $  rufo --check .
   ```

## Links

- [Chrome Driver](https://chromedriver.chromium.org/downloads)
- [Cucumber Ruby](https://github.com/cucumber/cucumber-ruby)
- [Gecko Driver](https://github.com/mozilla/geckodriver/releases)
- [Opera Chromium Driver](https://github.com/operasoftware/operachromiumdriver)
- [Ruby](https://www.ruby-lang.org/)
- [Rubocop](https://github.com/rubocop/ruby-style-guide)
- [Rufo](https://github.com/ruby-formatter/rufo)
- [Selenium](https://www.selenium.dev/)
