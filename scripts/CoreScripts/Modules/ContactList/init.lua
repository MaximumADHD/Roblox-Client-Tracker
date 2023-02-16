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

local Reducer = require(script.Reducer)
local ContactListApp = require(script.Components.ContactListApp)

local ContactList = {}
ContactList.__index = ContactList

function ContactList.new()
	local self = setmetatable({}, ContactList)

	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	self.root = React.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		ThemeProvider = React.createElement(UIBlox.Style.Provider, {
			style = appStyle,
		}, {
			ContactListApp = React.createElement(ContactListApp),
		}),
	})

	self.element = Roact.mount(self.root, RobloxGui, "ContactList")

	return self
end

return ContactList.new()
