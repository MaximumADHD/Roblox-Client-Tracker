--[[
		This helper module will be a bridge to help migrate the console AppShell to using Roact.
		The idea is to add the interface of a "Screen" to the Roact component, so the ScreenManager
		can be happy and correctly manage screens that are not using Roact.

		You will only need to wrap Roact components with this if they are the root of a route. Anything
		that is a child screen/compoent of this should use Roact Routing.

		Usage:
			local MyScreen = require(ShellModules.Components.MyScreen)
			local myRoactScreen = RoactScreenManagerWrapper.new(MyScreen, GuiRoot, {
				backgroundTransparency = 0,
				name = "MyScreen",
			})

			ScreenManager:OpenScreen(myRoactScreen)
]]
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Roact = require(Modules.Common.Roact)
local ScreenManager = require(Modules.Shell.ScreenManager)

local RoactScreenManagerWrapper = {}
RoactScreenManagerWrapper.__index = RoactScreenManagerWrapper

function RoactScreenManagerWrapper.new(roactComponent, parent, props)
	local self = {}
	props = props or {}

	-- this will be passed to top level Roact components in order to close the screen
	-- since we need some way to route back to the previous screen through the screen manager
	local function onUnmount()
		if self == ScreenManager:GetTopScreen() then
			ScreenManager:CloseCurrent()
		end
	end

	props.onUnmount = onUnmount

	local element = Roact.createElement(roactComponent, props)
	self._instance = nil

	function self:Show()
		self._instance = Roact.reify(element, parent, tostring(roactComponent))
	end

	function self:Hide()
		self:Destruct()
	end

	function self:Focus()
		-- do nothing
	end

	function self:RemoveFocus()
		-- do nothing
	end

	setmetatable(self, RoactScreenManagerWrapper)
	return self
end

function RoactScreenManagerWrapper:Destruct()
	Roact.teardown(self._instance)
end

return RoactScreenManagerWrapper