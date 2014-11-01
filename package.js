Package.describe({
  name: "practicalmeteor:underscore-deep",
  summary: "Internal testing of publishing release candidate package versions.",
  version: "1.0.0",
  git: "https://github.com/spacejamio/meteor-loglevel.git"
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
