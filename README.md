# get_github_pub_keys

### githubの公開鍵をローカルにファイルとして保存するgem

## Installtion

1) ローカルで以下のコマンドを実行してください
```:bach
mkdir ~/.ssh
```

```:ruby
gem install get_github_pub_keys
```

```:ruby
GetGithubPubKeys.new(user_name)
GetGithubPubKeys.find_and_create
```

(まだテスト、機能面で不足がある開発版です)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
