# get_github_pub_keys

[![Build Status](https://travis-ci.org/kikeda1104/get_github_pub_keys.svg?branch=feature%2Fadd_travis)](https://travis-ci.org/kikeda1104/get_github_pub_keys)

### githubに登録している公開鍵をローカルの.sshにファイルとして保存するgem

## Installtion

1) ローカルで以下のコマンドを実行してください
```:bach
mkdir ~/.ssh
```

```:ruby
gem install get_github_pub_keys
```

```:ruby
# irb or pry起動して
require 'get_github_pub_keys'
user = GetGithubPubKeys.new(user_name)
user.find_and_create
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

