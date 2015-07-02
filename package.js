Package.describe({
  name: "jeffpatzer:underscore-deep-utilities",
  summary: "_.deep, _.pluckDeep, _.unpick",
  version: "0.1.1",
  git: "https://github.com/jpatzer/meteor-underscore-deep"
});


Package.onUse(function (api) {
  api.versionsFrom('0.9.3');

  api.use(['coffeescript', 'underscore']);

  api.addFiles('underscore-deep.coffee');
  api.addFiles('underscore-deep-pluck.js');
  api.addFiles('underscore-deep-unpick.js');
});


Package.onTest(function(api) {
  api.use(['coffeescript', 'jeffpatzer:underscore-deep-utilities', 'practicalmeteor:munit@2.1.2']);

  api.addFiles('tests/underscore-deep-test.coffee');
});
