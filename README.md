# GoogleRetailConsumer

Consume google retail using: [Elixir google api](https://github.com/googleapis/elixir-google-api)

## Usage

### With service account
```
$ export GOOGLE_APPLICATION_CREDENTIALS=secrets.json
$ mix deps.get
$ iex -S mix

iex> {:ok, token} = Goth.Token.for_scope("https://www.googleapis.com/auth/cloud-platform")
iex> conn = GoogleApi.Retail.V2.Connection.new(token.token)
```

### With Oauth (debug + development)
```
$ export GOOGLE_CLIENT_ID=[YOUR-OAUTH-CLIENT-ID]
$ export GOOGLE_CLIENT_SECRET=[YOUR-OAUTH-CLIENT-SECRET]
$ mix google_apis.auth https://www.googleapis.com/auth/cloud-platform
...
Open the following link in your brower:
https://accounts.google.com/o/oauth2/auth?[some-long-url]
Enter verification code:
```
Click on the link above, wait the browser opens and copy the code param value from browser url:
> http://localhost/auth/callback?code=TOKEN&scope=https://www.googleapis.com/auth/cloud-platform

Fill the verification code and wait response:

> Token: [your-oauth-token]

Copy the token from terminal and put in the `Connection.new` call

```
conn = GoogleApi.Retail.V2.Connection.new("TOKEN_HERE")
```
---
#### Call some method
```elixir
iex> GoogleApi.Retail.V2.Api.Projects.retail_projects_locations_catalogs_list(conn, "projects/project-name/locations/global")
```
