const {Given, When, Then} = require('@cucumber/cucumber');
const {todosResponseFields} = require('./src/constants.js');

Then(/^todos response fields are populated$/, () => {
    responseUtils.verifyFieldsAreTodos(todosResponseFields.mandatory, response.data.data);
});
