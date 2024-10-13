# GraphQL-Lua

The Roblox Lua reference implementation for GraphQL, a query language for APIs created by Facebook.

[![Build Status](https://github.com/Roblox/graphql-lua-internal/workflows/ci/badge.svg?branch=master)](https://github.com/Roblox/graphql-lua-internal/actions?query=branch%3Amaster)
[![Coverage Status](https://codecov.io/gh/Roblox/graphql-lua-internal/branch/master/graph/badge.svg)](https://codecov.io/gh/Roblox/graphql-lua-internal)

See more complete documentation at https://graphql.org/ and
https://graphql.org/graphql-js/. GraphQL-Lua has few to no deviations from the upstream documentation and APIs, with the exception of the subscription API (which is stubbed). A quick search for `SKIP`ped tests will highlight current deviations.

Looking for help? Find resources [from the community](https://graphql.org/community/).

## Getting Started

A general overview of GraphQL is available in the
[README](https://github.com/graphql/graphql-spec/blob/main/README.md) for the
[Specification for GraphQL](https://github.com/graphql/graphql-spec). That overview
describes a simple set of GraphQL examples that exist as [tests](src/__tests__)
in this repository. A good way to get started with this repository is to walk
through that README and the corresponding tests in parallel.

### Using GraphQL-Lua

This repository contains an integration-tested GraphQL implementation, with complete unit and
integration tests, written in Roblox Lua that is aligned to the same major.minor version as
upstream. See the README.md in each src subdirectory for current status, and run the tests using
`scripts/ci.sh` to see the progress.

GraphQL-Lua provides two important capabilities: building a type schema and
serving queries against that type schema.

* In a new project, you can consume this library by adding this line to your rotriever.toml
  * `GraphQL = "github.com/Roblox/graphql-lua-internal@15.5.0"`
* Make sure you are using the latest [rotriever](https://github.com/Roblox/rotriever/releases) 0.5.1 (or later) release
  * you can download the release binary, or add it to your `foreman.toml`: ```rotrieve = { source = "roblox/rotriever", version = "0.5.1" }```


You'll need [rotriever](https://github.com/Roblox/rotriever) 0.5.1 (or later), so hop over there
and make sure you have the latest released version specified in your `foreman.toml`, or have the
latest rotriever version in your PATH. See the rotriever repo for more details on how to install
and use rotriever.

The first thing you'll do in GraphQL-Lua is build a GraphQL type schema which maps to your services.

```lua
local Workspace = Script.Parent.Parent
local GraphQLModule = require(Workspace.Packages.GraphQL)
local graphql = GraphQLModule.graphql
local GraphQLSchema = GraphQLModule.GraphQLSchema
local GraphQLObjectType = GraphQLModule.GraphQLObjectType
local GraphQLString = GraphQLModule.GraphQLString

local schema = GraphQLSchema.new({
  query = GraphQLObjectType.new({
    name = 'RootQueryType',
    fields = {
      hello = {
        type = GraphQLString,
        resolve = function()
          return 'world';
        end,
      },
    },
  }),
})
```

This defines a simple schema, with one type and one field, that resolves
to a fixed value. The `resolve` function can return a value, a promise,
or an array of promises. (Lua Note: You'll need to use a Promise library 
compatible with https://github.com/evaera/roblox-lua-promise .) A more complex 
example, with a Star Wars theme, is included in the top-level [tests](src/__tests__) directory.

Then, serve the result of a query against that type schema.

```lua
local source = '{ hello }'

graphql({schema = schema, source = source}):andThen(function (result)
  --[[ Prints:
    world
  ]]
  print(tostring(result.data.hello))
end)
```

Note: If you're using the [luau-polyfill](https://github.com/Roblox/luau-polyfill) library,
you can use the `inspect` function it exports to pretty-print results and errors.

This runs a query fetching the one field defined. The `graphql` function will
first ensure the query is syntactically and semantically valid before executing
it, reporting errors otherwise.

```lua
local source = '{ BoyHowdy }'

graphql({schema = schema, source = source}):andThen(function (result)
  --[[ Prints:
    Cannot query field "BoyHowdy" on type "MyRootQueryType".
  ]]
  print(tostring(result.errors[1].message))
end)
```

**Note**: Please don't forget to disable the global `_G.__DEV__` (the default) if you are running a
production server. Enabling `_G.__DEV__` has some runtime checks that can provide useful feedback
during development, but those extra runtime checks can degrade performance.

### Using with GraphiQL and similar tooling

We have ported [Apollo GraphQL Client](https://github.com/Roblox/apollo-client-lua) and have both
end-to-end tests and benchmarks in that repository that deeply exercises this GraphQL
implementation (and its strong Luau types).

Other tooling will likely 'just work', but we will update this documentation with examples of other screenshots of integration with commodity GQL tooling in the future.

### Contributing

We actively welcome pull requests. Learn how to [contribute](./.github/CONTRIBUTING.md).

### Changelog

Changes are tracked as [GitHub releases](https://github.com/Roblox/graphql-lua-internal/releases).

### License

GraphQL-Lua is [MIT-licensed](./LICENSE).

### Credits

The Luau types in this project are based on [DefinitelyTyped](https://github.com/DefinitelyTyped/DefinitelyTyped/tree/54712a7e28090c5b1253b746d1878003c954f3ff/types/graphql) definitions written by:

<!--- spell-checker:disable -->

- TonyYang https://github.com/TonyPythoneer
- Caleb Meredith https://github.com/calebmer
- Dominic Watson https://github.com/intellix
- Firede https://github.com/firede
- Kepennar https://github.com/kepennar
- Mikhail Novikov https://github.com/freiksenet
- Ivan Goncharov https://github.com/IvanGoncharov
- Hagai Cohen https://github.com/DxCx
- Ricardo Portugal https://github.com/rportugal
- Tim Griesser https://github.com/tgriesser
- Dylan Stewart https://github.com/dyst5422
- Alessio Dionisi https://github.com/adnsio
- Divyendu Singh https://github.com/divyenduz
- Brad Zacher https://github.com/bradzacher
- Curtis Layne https://github.com/clayne11
- Jonathan Cardoso https://github.com/JCMais
- Pavel Lang https://github.com/langpavel
- Mark Caudill https://github.com/mc0
- Martijn Walraven https://github.com/martijnwalraven
- Jed Mao https://github.com/jedmao
