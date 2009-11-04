module TwitterOAuth
  class Client

    def lists(user)
      oauth_response = access_token.get("/#{user}/lists.json")
      JSON.parse(oauth_response.body)
    end

    def list_members(user, list, cursor="-1")
      oauth_response = access_token.get("/#{user}/#{list}/members.json?cursor=" + cursor)
      JSON.parse(oauth_response.body)
    end

    def subscribers(user)
      oauth_response = access_token.get("/#{user}/subscribers.json", options)
      JSON.parse(oauth_response.body)
    end

  end
end
