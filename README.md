# GoogleConsumer

**TODO: Add description**

## Usage

#### install and mix
```
$ export GOOGLE_APPLICATION_CREDENTIALS=secrets.json
$ mix deps.get
$ iex -S mix
```

#### call
```elixir
iex> {:ok, token} = Goth.Token.for_scope("https://www.googleapis.com/auth/cloud-platform")

iex> conn = GoogleApi.Retail.V2.Connection.new(token.token)

iex> GoogleApi.Retail.V2.Api.Projects.retail_projects_locations_catalogs_list(conn, "projects/project-name/locations/global")
```
