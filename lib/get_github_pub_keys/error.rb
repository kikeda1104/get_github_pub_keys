# coding: utf-8

# TODO: 例外を細かくできないかな
module GetGithubPubKeys
  Error = Class.new(StandardError)

  ClientError = Class.new(Error)
  
  BadRequest = Class.new(ClientError)

  NotAuthorized = Class.new(ClientError)

  Forbidden = Class.new(ClientError)

  NotFound = Class.new(ClientError)

  ServerError = Class.new(Error)

  InternalServerError = Class.new(ServerError)

  ServiceUnavailable = Class.new(ServerError)
end

