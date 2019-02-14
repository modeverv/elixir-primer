# ModestGreeter

```
#本番稼働
mix phoenix.gen.secret
#=>config/prod.secret.exsにかきこみ
mix deps.get --only prod
brunch build --production 
MIX_ENV=prod mix phoenix. digest 
MIX_ENV=prod PORT=4000 elixir -S mix do compile, phoenix.server
MIX_ENV=prod PORT=4000 elixir --detached -S mix do compile, phoenix.server
```

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
