# Rongcloud::Ruby

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/rongcloud/ruby`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rongcloud-ruby', require: 'rongcloud'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rongcloud-ruby

## Usage

TODO: 服务器端实时消息路由、聊天室服务

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hging/rongcloud-ruby.

## **接口定义：**
获取用户token: ```Rongcloud::Token.where(:userId => [user_id])```

刷新用户信息: ```Rongcloud::User.update(:userId => [user_id], :name => [name], :portraitUri => [avatar_url])```

检查用户在线状态: ```Rongcloud::User.where(:userId => [user_id])```

封禁用户： ```Rongcloud::Ban.create(:userId => [user_id], :minute => [ban_time])```

解除封禁用户： ```Rongcloud::Ban.delete(:userId => [user_id])```

查询封禁名单： ```Rongcloud::Ban.all```

发送单聊信息： ```Rongcloud::Message::Private.create```

发送单聊模板信息： ```Rongcloud::Message::Private.templete_create```

发送系统信息： ```Rongcloud::Message::System.create```

发送系统模板信息： ```Rongcloud::Message::System.templete_create```

发送群组消息： ```Rongcloud::Message::Group.create```

发送讨论组消息： ```Rongcloud::Message::Discussion.create```

发送聊天室消息： ```Rongcloud::Message::Chatroom.create```

发送广播信息： ```Rongcloud::Message::Broadcast.create```

添加用户到黑名单： ```Rongcloud::Blacklist.create(:userId => [user_id], :blackUserId => [blacked_user_id])```

移除用户黑名单： ```Rongcloud::Blacklist.delete(:userId => [user_id], :blackUserId => [blacked_user_id])```

查询某用户的黑名单： ```Rongcloud::Blacklist.where(:userId => [user_id])```

增加敏感词： ```Rongcloud::Wordfilter.create(:word => [word])```

删除敏感词： ```Rongcloud::Wordfilter.delete(:word => [word])```

查询敏感词列表： ```Rongcloud::Wordfilter.all```

同步用户所属群组： ```Rongcloud::Group.sync(:userId => [user_id], :group[id] => [group_name])```

创建群组：```Rongcloud::Group.create(:userId => [user_id], :groupId => [group_id], :groupName => [group_name])```

加入群组：```Rongcloud::Group.join(:userId => [user_id], :groupId => [group_id], :groupName => [group_name])```

退出群组：```Rongcloud::Group.join(:userId => [user_id], :groupId => [group_id])```

解散群组： ```Rongcloud::Group.delete(:userId => [user_id], :groupId => [group_id])```

刷新群组： ```Rongcloud::Group.update(:groupId => [group_id], :groupName => [group_name])```

查询组成员： ```Rongcloud::Group.where(:groupId => [group_id])```

组内封禁用户： ```Rongcloud::Group::Ban.create(:userId => [user_id], :groupId => [group_id], :minute => [ban_time])```

组内解除封禁用户： ```Rongcloud::Group::Ban.delete(:userId => [user_id], :groupId => [group_id])```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
