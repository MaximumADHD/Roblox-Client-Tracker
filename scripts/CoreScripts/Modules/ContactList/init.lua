--!strict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local React = require(CorePackages.Packages.React)
local Rodux = require(CorePackages.Packages.Rodux)
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)

local ApolloProvider = require(CorePackages.Packages.ApolloClient).ApolloProvider
local ApolloClient = require(RobloxGui.Modules.ApolloClient)

local initCall = require(script.initCall)
local Reducer = require(script.Reducer)
local ContactListApp = require(script.Components.ContactListApp)

-- Screen should be beneath the in game menu
local CONTACT_LIST_DISPLAY_ORDER = -1

local ContactList = {}
ContactList.__index = ContactList

function ContactList.new()
	local self = setmetatable({}, ContactList)

	-- Init call
	initCall(CallProtocol.CallProtocol.default :: CallProtocol.CallProtocolModule)

	-- Mount component
	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	self.root = React.createElement("ScreenGui", {
		AutoLocalize = false,
		DisplayOrder = CONTACT_LIST_DISPLAY_ORDER,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Content = React.createElement(RoactRodux.StoreProvider, {
			store = self.store,
		}, {
			ThemeProvider = React.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				ApolloProvider = React.createElement(ApolloProvider, {
					client = ApolloClient,
				}, {
					ContactListApp = React.createElement(ContactListApp),
				}),
			}),
		}),
	})

	self.element = Roact.mount(self.root, CoreGui, "ContactList")

	return self
end

return ContactList.new()
