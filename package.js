Package.describe({
  name: "jeffpatzer:underscore-deep-utilities",
  summary: "_.deep, _.pluckDeep",
  version: "0.1.2",
  git: "https://github.com/jpatzer/meteor-underscore-deep"
});


Package.onUse(function (api) {
  api.versionsFrom('0.9.3');

  api.use(['coffeescript', 'underscore']);

  api.addFiles('underscore-deep.coffee');
  api.addFiles('underscore-deep-pluck.js');
});


Package.onTest(function(api) {
  api.use(['coffeescript', 'jeffpatzer:underscore-deep-utilities', 'practicalmeteor:munit@2.1.2']);

  api.addFiles('tests/underscore-deep-test.coffee');
});
