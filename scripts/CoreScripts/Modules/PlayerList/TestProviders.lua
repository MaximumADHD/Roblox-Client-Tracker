--!strict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)

local PlayerList = script.Parent
local Reducers = PlayerList.Reducers
local Reducer = require(Reducers.Reducer)

local Components = script.Parent.Components
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local LayoutValuesProvider = LayoutValues.Provider

local ApolloClientModule = require(CorePackages.Packages.ApolloClient)
local ApolloProvider = ApolloClientModule.ApolloProvider

local GraphQLServer = require(CorePackages.Workspace.Packages.GraphQLServer)
local ApolloClientTestUtils = GraphQLServer.ApolloClientTestUtils
local mockApolloClient = ApolloClientTestUtils.mockApolloClient

local Array = require(CorePackages.Packages.LuauPolyfill).Array


local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

local function TestProviders(props: any)
  local store = Rodux.Store.new(Reducer)
  local ApolloClientInstance = mockApolloClient({
    mockResolvers = {
      Query = {
        userProfiles = function(root, args, context, options)
          local res =  Array.map(args.userIds, function(userId)
            return {
              userId = userId,
              names = {
                alias = `alias{userId}`,
                combinedName = `combinedName{userId}`,
                contactName = `contactName{userId}`,
                displayName = `displayName{userId}`,
                username = `username{userId}`,
                platformName = `platformName{userId}`,
              },
            }
          end)
          return res
        end,
      },
      UserProfile = {
        id = function(root)
          return tostring(root.userId)
        end,
        names = function(root)
          return root.names
        end
      }
    }
  })

  return Roact.createElement(RoactRodux.StoreProvider, {
    store = props.store or store,
  }, {
    ApolloProvider = Roact.createElement(ApolloProvider, {
      client = props.client or ApolloClientInstance
    }, {
      LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
        layoutValues = props.layoutValues or CreateLayoutValues(false)
      }, {
        ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, props.children)
      })
    })
  })
end

return TestProviders
