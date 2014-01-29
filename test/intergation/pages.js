var request = require('supertest')
  , app = require(__dirname + '/../../app')

describe('GET /', function () {
  it('should contain text "Hello, World!"', function (done) {
     request(app)
       .get('/')
       .expect(/Hello, World!/, done);
  });
});