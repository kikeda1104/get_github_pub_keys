# coding: utf-8

require 'faraday'
require 'get_github_pub_keys/error'

# FIXME: 未確認
module GetGithubPubKeys
  module Response
    class RaiseError < Faraday::Response::Middleware
      def on_complete(env)
        case env[:status].to_i
        when 400
          raise GetGithubPubKeys::BadRequest, error_message(env)
        when 401
          raise GetGithubPubKeys::NotAuthorized, error_message(env)
        when 403
          raise GetGithubPubKyes::Forbidden, error_message(env)
        when 404
          raise GetGithubPubKeys::NotFound, error_message(env)
        when 400...500
          raise GetGithubPubKeys::ClientError, error_message(env)
        when 500
          raise GetGithubPubKeys::InternalServerError, error_message(env)
        when 503
          raise GetGithubPubKeys::ServiceUnavailable, error_message(env)
        when 500...600
          raise GetGithubPubKeys::ServiceUnavailable, error_message(env)
        end
      end

      private
      
      def error_message(env)
        body = env[:body]
        if body.nil?
          nil
        elsif body['error'] && body['error']['message']
          body['error']['message'] 
        elsif body['fault'] && body['fault']['faultstring']
          body['fault']['faultstring']
        end
      end
    end
  end
end
