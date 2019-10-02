# RequestBuilder

Builds request urls and key-mappers for use in network requests and network caching.

## Api

### Public Api
:new(string baseUrl)

Constructs a new request builder with the given baseUrl.
```lua
local myBuilder = RequestBuilder:new("https://games.roblox.com")
print(myBuilder:makeUrl())
--> "https://games.roblox.com"
```
 ---

### Url Api

:path(string path)

Appends a path to the end of the url. Used for the key-mapper to create a unique key.

```lua
local myBuilder = RequestBuilder:new("https//games.roblox.com"):path("v1")
print(myBuilder:makeUrl())
--> "https://games.roblox.com/v1"
```
---
:id(any ids[, string name])

Appends an id to the end of the url. Used for identifying ids that can be passed into the key-mapper.
Default name of the id will use the previous path if not provided.

**Note:** Name is currently used for getting the id through :getNamedIds() and does not impact the url string generated from :makeUrl() at this time.

```lua
local myBuilder = RequestBuilder:new("https//games.roblox.com"):path("v1"):path("games"):id("1818"):path("icon")
print(myBuilder:makeUrl())
--> "https://games.roblox.com/v1/games/1818/icon"
```
---
:queryArgs(string args)

Appends query arguments to the end of the builder. Does not affect ids or key mapping.

```lua
local builder = RequestBuilder:new("example.com"):queryArgs({
	arg = "value"
})
print(builder:makeUrl())
--> "example.com?arg=value"
```
---
:queryArgWithIds(string argName, any ids)

Appends query arguments to the end of the builder as ids, named by `argName`.

```lua
local builder = RequestBuilder:new("example.com"):queryArgWithIds("arg", {})
print(builder:makeUrl(123))
--> "example.com?arg=123"
print(builder:makeUrl({345, 456}))
--> "example.com?arg=345;456"
```
---
:getIds()

Returns an array of ids provided to the builder.

```lua
local myBuilder = RequestBuilder:new("https//games.roblox.com"):path("v1"):path("games"):id("1818"):path("icon")
print(myBuilder:getIds())
--> { "1818" }
```

---
:getNamedIds()

Returns a key-value dictionary of named ids and their values. Ids are determined on the builder's structure.

The `:id` function can be used to register a new id. The name of this id will either be inferred from the previous path or provided by the second argument.

```lua
local myBuilder = RequestBuilder:new("roblox.com"):path("v1"):path("friends"):id(422502):path("list")
local namedIds = myBuilder:getNamedIds()
print(namedIds["friends"])
--> 422502
```

```lua
local myBuilder = RequestBuilder:new("example.com"):id("foo", "bar")
local namedIds = myBuilder:getNamedIds()
print(namedIds["bar"])
--> "foo"
```
---

:makeUrl([any ids])

Returns a string built from the url object. Optionally accepts ids to override within the url.
Note: if there are multiple ids in the url, it will only swap for the last id's group.

```lua
local myBuilder = RequestBuilder:new("roblox.com"):path("some/element"):id({})
print(myBuilder:makeUrl({ 567, 789 }))
--> roblox.com/some/element/567;789"
```
---

:makeKeymapper()

Returns a keymapper function unique to the path provided to the builder. This could be used to track an outgoing network request with a history of its responses.

```lua
local builder = RequestBuilder:new("example.com"):path("some/element"):id(123)
local keyMapper = builder:makeKeyMapper()
print(keyMapper())
--> "example.com/some/element/123"
print(keyMapper(456))
--> "example.com/some/element/456"
```
