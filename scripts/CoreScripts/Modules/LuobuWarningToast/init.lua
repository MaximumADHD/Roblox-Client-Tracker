local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)

local LuobuWarningToastComponent = require(script.LuobuWarningToastComponent)
local LuobuWarningToast = {}
local FRAME_DURATION = 10
LuobuWarningToast.__index = LuobuWarningToast

function LuobuWarningToast.new()
	local self = setmetatable({}, LuobuWarningToast)

	self.element = Roact.createElement(LuobuWarningToastComponent)

	self.root = Roact.mount(self.element, CoreGui, "LuobuWarningToast")
	
	task.delay(FRAME_DURATION, function()
		Roact.unmount(self.root)
	end)

	return self
end



return LuobuWarningToast.new()