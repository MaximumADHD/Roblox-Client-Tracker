# Rodux Networking

A thunk-ful "request builder/action creator factory" library for making network requests.

## Prerequisite
This library assumes you understand the basic fundamentals of Rodux, including dispatching actions, thunks, and organizing reducers.

## Rationale
RoduxNetworking is trying to solve two problems:

1. Allow for de-duplication of GET network requests.
	* Previous attempts to solve this issue, such as PerformFetch, were overloaded with it's own caching mechanism. PerformFetch's caching mechanism was unneeded for our use cases since *our application state should be acting as our cache already*.
	* Additionally, the nature of PerformFetch's caching failed to properly support non-GET method types.
	* Generating a proper keypath and ids for PerformFetch was a very manual process and had to be done individually for every network request. RoduxNetworking takes this process and generates a keypath from the requestBuilder's url path that guarantees a unique keypath per request.
	* PerformFetch relied on the existence of the FetchingStatus reducer to exist at the top level of your application state. This made it very hard for new projects to incorporate PerformFetch because they not only needed the PerformFetch library, they needed to also import a reducer at the top level of their application state which was not packaged with the library.
		* RoduxNetworking can be configured to install it's own packaged reducer within any namespace of your application state. This also allows two instances of RoduxNetworking to exist at the same time within one project without fear of collisions.
2. Reduce the amount of boilerplate needed when creating a networked request.
	* Previously, when creating a new endpoint, it was common practice to create:
		* 1 file for the network request itself
		* 1 file for a thunk that invoked the network request and returned the result
		* 3 files for network actions that would get dispatched by the thunk depending on the status of the request and then registering them into a reducer
		* In some cases, an additional reducer would be created that handled the current networkStatus of the request (eg: UsersAsync)
	* Instead, RoduxNetworking handles the creation of the thunk, the request, and the action creators from one centralized location and we can focus more on incorporating these actions into our reducers.
	* RoduxNetworking offers it's own packaged reducer that simply stores the current networkStatus. Each endpoint also has a selector associated with it that will retrieve the status for GET requests.
	* When invoking a network request from a Rodux store dispatch, the call site would have to supply a `networkImpl` every time a request was made. RoduxNetworking can be configured to have it's own reusable `networkImpl` and this removes the need to pass a `networkImpl` throughout your application at all.



## How to use

Below is a basic description on how to use RoduxNetworking.
See also: [RequestBuilder documentation](docs/requestBuilder.md).

### Configuration

Before you can use the library, you will first need to configure it for your project.

RoduxNetworking uses the `keyPath` field to navigate to its reducer's install location (path locations separated by `.`). This should match where you call `installReducer()`.

`networkImpl` should be a function that accepts `url`, `methodType`, and `options` and returns the result as a resolved promise.

```lua
local RoduxNetworking = RoduxNetworking.config({
	keyPath = "networkStatus",
	networkImpl = httpRequest(HttpRbxApiService),
})

local myReducer = Rodux.combineReducers({
	networkStatus = RoduxNetworking.installReducer(),
})

local store = Rodux.Store.new(myReducer, nil, { Rodux.thunkMiddleware })
```

### Making a request

RoduxNetworking provides a requestBuilder for creating network requests. [(See here for `requestBuilder` documentation)](docs/requestBuilder.md) The below is a simple example of creating a request named `GetTodosForUserId` and dispatching the request through the a Rodux store.

ℹ️ Note: Mocking requests responses can be done using the [Mock api](docs/mockRequest.md).

```lua
-- Create your request endpoint.
local GetTodosForUserId = RoduxNetworking.GET(script, function(requestBuilder, userId)
	return requestBuilder("example.com"):path("userId"):id(userId):path("todos")
end)

-- Dispatch your API thunk through your Rodux store.
store:dispatch(GetTodosForUserId.API("422502")):andThen(function(result)
	-- result = { "todo1", "todo2" }
end)
```

### Creating a reducer

When API thunks are dispatched, they will return an action when their promises resolve from the given `networkImpl`.

If the promise resolution is positive, the API thunk will create and dispatch a `Succeeded` variant of the network actions and will have a `responseBody` field.

However if the promise resolution is negative, the API thunk will create and dispatch a `Failed` variant of the network actions and will have an `error` field.

**Succeeded Action Creator**

| Field | Description |
|--------------|-------------|
| ids | An array of filtered ids the was passed into the request. |
| responseBody | The response returned from the `networkImpl` promise. |
| namedIds | A map of ids that are attributed to the request. See RequestBuilder section for more details. |


**Failed Action Creator**

| Field | Description |
|--------------|-------------|
| ids | An array of filtered ids the was passed into the request. |
| error | The error returned from the `networkImpl` promise. |
| namedIds | A map of ids that are attributed to the request. See RequestBuilder section for more details. |


```lua
local reducer = Rodux.combineReducers({
	-- Install the networkStatus reducer into your state.
	-- This should match the keyPath argument passed into
	-- RoduxNetworking config.
	networkStatus = RoduxNetworking.installReducer(),

	data = Rodux.createReducer(nil, {
		[GetTodosForUserId.Succeeded.name] = function(state, action)
			-- > state = store state
			-- > action = {
			--		ids = ids,
			--		responseBody = responseBody,
			--		namedIds = namedIds,
			--	}
			return state
		end,

		[GetTodosForUserId.Failed.name] = function(state, action)
			-- > state = store state
			-- > action = {
			--		ids = ids,
			--		error = error,
			--		namedIds = namedIds,
			--	}
			return state
		end,
	}),
})
```

### Comparing NetworkStatus

When requests are made, they will create actions that get reduced by the reducer installed from `installReducer`.

GET requests can be queried for their status to assist in de-duplicating network requests.

You may compare the current status of the request with the `NetworkStatus` enum. Below is a list of acceptable values:

| Enum | Description |
|--------------|-------------|
| NotStarted | The request has never been dispatched. |
| Fetching | The request has been dispatched and results are currently pending on the `networkImpl` provided. |
| Done | The request has been dispatched and the `networkImpl` has resolved its promises successfully. |
| Failed | The request has been dispatched and the `networkImpl` has resolved its promises with an error. |


```lua
local status = GetTodosForUserId.getStatus(store:getState(), "422502")
print(status == RoduxNetworking.Enum.NetworkStatus.Done)
--> true
```

### Adding dependencies / Cutting a release 

Since RoduxNetworking uses semvar ranges, we cannot refer to git dependencies
(in rotriever.toml). 

To add or update a dependency, please refer to published
[semvar
ranges](https://improved-fiesta-e200e1ad.pages.github.io/guide/publishing-a-package/#semver-dependencies-only).

To update after merging, run `rotrieve publish <remote>` where `remote` is the
name of the git remote that you would like to
[publish](https://improved-fiesta-e200e1ad.pages.github.io/guide/publishing-a-package/#publishing-the-project)
to. In most cases, you will run `rotrieve publish origin`. 

After creating the new tag, you will still need to release the new tag [here](https://github.com/Roblox/rodux-networking/tags). 

To sync up with Lua-Apps, we will have to create a proxy build in Team City
[example build](https://teamcity-sage.rbx.com//buildConfiguration/App_Lua_Tools_CacheRotrieverPackage05x/34192611).
Note: this means we have to merge and publish these changes before being able to
sync in Lua-Apps

To do this:
1. Go to
   https://teamcity-sage.rbx.com/buildConfiguration/App_Lua_Tools_CacheRotrieverPackage05x
2. On the top left, click on the 3-dot menu next to "Run"
3. Click on "Parameters*" in the top bar of the dialog that pops up
4. Input Package Source (github.com/Roblox/rodux-networking), Package name
   (RoduxNetworking), and Version (your updated version number, i.e. 2.3.2)
5. Run your custom build and proceed with sync steps to Lua-Apps.

---

If you have any questions, please message me on Slack @bbrimeyer
