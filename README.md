## Sample-Ruby-Cucumber-Test

Este projeto é um exemplo de automação de testes para páginas web utilizando os frameworks Cucumber e Selenium desenvolvidos através da tecnologia ruby.

### Setup

1. Global Dependencies
    * Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
    * Or Install Ruby with [Homebrew](http://brew.sh/)
    ```
    $ brew install ruby
    ```
    
    * Install bundler (Sudo may be necessary)
    ```
    $ gem install bundler
    ```

2. Dependencies
	* Install packages (Use sudo if necessary)
	```
	$ bundle install
	```

### Running Tests

* Tests in Parallel:
	```
	$ cucumber -t @unit_test BROWSER=firefox
	```

### Resources
##### [SeleniumHQ](http://www.seleniumhq.org/docs/)

##### [Cucumber](https://cucumber.io/docs/reference)

##### [Ruby](http://ruby-doc.org/)
