--[[
	Used for testing PluginManagement.

	A mock wrapper for PluginManagement, that can catch PluginGui
	and Focus item creation and put these in a place where tests can
	reach the items mounted inside.

	Props:
		Instance Container = A container to mount PluginWidget items into.
		Instance FocusTarget = A container to mount Focus items into.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local Http = require(Plugin.Packages.Http)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local UILibraryWrapper = require(Plugin.Packages.Framework.ContextServices.UILibraryWrapper) -- remove with FFlagPluginManagementRemoveUILibrary
local makeTheme = require(Plugin.Src.Resources.makeTheme)
local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)
local Navigation = require(Plugin.Src.ContextServices.Navigation)

local Flags = require(Plugin.Packages.Framework.Util.Flags)
local FlagsList = Flags.new({
	FFlagEnablePluginPermissionsPage = {
		"EnablePluginPermissionsPage2",
		"StudioPermissionsServiceEnabled",
	},
	FFlagPluginManagementRemoveUILibrary = "PluginManagementRemoveUILibrary",
})
local MockManagement = Roact.PureComponent:extend("MockManagement")

local function mockFocus()
	return Instance.new("ScreenGui")
end

local function mockPlugin(container)
	local plugin = {}
	function plugin:GetMouse()
		return {}
	end
	local function createScreenGui()
		local focus = mockFocus()
		focus.Name = "MockPluginGui"
		if container then
			focus.Parent = container
		end
		return focus
	end
	function plugin:CreateQWidgetPluginGui()
		return createScreenGui()
	end
	function plugin:CreateDockWidgetPluginGui()
		return createScreenGui()
	end
	return plugin
end

function MockManagement:init(props)
	self.store = Rodux.Store.new(MainReducer, self.props.initialStoreState, { Rodux.thunkMiddleware })
	self.api = Http.API.mock({})
	self.plugin = mockPlugin(props.Container)
	self.target = props.FocusTarget or mockFocus()
end

function MockManagement:render()
	local services = {
		ContextServices.Plugin.new(self.plugin),
		PluginAPI2.new(self.api),
		ContextServices.Localization.mock(),
		ContextServices.Mouse.new(self.plugin:GetMouse()),
		makeTheme(),
		ContextServices.Focus.new(self.target),
		ContextServices.Store.new(self.store),
	}

	if not FlagsList:get("FFlagPluginManagementRemoveUILibrary") then
		table.insert(services, UILibraryWrapper.new())
	end

	if FlagsList:get("FFlagEnablePluginPermissionsPage") then
		table.insert(services, Navigation.new())
	end

	return ContextServices.provide(services, self.props[Roact.Children])
end

return MockManagement
