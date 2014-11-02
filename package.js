Package.describe({
  name: "practicalmeteor:underscore-deep",
  summary: "_.deep - get the value of a nested property.",
  version: "0.9.0",
  git: "https://github.com/practicalmeteor/meteor-underscore-deep"
});


Package.onUse(function (api) {
  api.versionsFrom('0.9.3');

  api.use(['coffeescript', 'underscore']);

  api.addFiles('underscore-deep.coffee');
});


Package.onTest(function(api) {
  api.use(['coffeescript', 'practicalmeteor:underscore-deep', 'spacejamio:munit']);

  api.addFiles('tests/underscore-deep-test.coffee');
});
