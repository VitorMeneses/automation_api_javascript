# GOREST.CO.IN API AUTOMATION IN JAVA SCRIPT
## Framework

- Tests Definition: Gherkin language following TDD/BDD best practices
- BDD/TDD Framework: Cucumber. Using feature files in order to decouple test definition from test code
- Tests code: Javascript / node.js
- Cucumber:
-- Features directory: `features`. No tag is being used for this small test plan.
-- Steps Definition directory: `tests`. Files are splited by resource plus a common one. Dedicated by resource files are near empty, just because these is only the critical/smoke test plan.
-- Additional test code: `tests/src`
-- Classes set up: `tests/setup.js`
-- Command Line launch: `./node_modules/.bin/cucumber-js --require setup.js --require tests`
- Test data clean up: Not supported. An “After” hook should be maybe added.


## Test Execution

1. Generate your access token: https://gorest.co.in/access-token
2. Create a new environment variable with it: `export API_ACCESS_TOKEN=<access token>`
3. Launch test plan: `npm test`

1. Generate your access token: https://gorest.co.in/access-token
2. Enter your token in the .env file in the API_ACCESS_TOKEN
3. Run `npm install`
4. Run `npm install dotenv --save`

## Reports
1. json: `./node_modules/.bin/cucumber-js --require setup.js --require tests --format json:<report file path>`
2. junit (xml): 2 steps
-- launch the json report
-- convert it to xml: `cat <json report file path> | ./node_modules/.bin/cucumber-junit > <report file path>`