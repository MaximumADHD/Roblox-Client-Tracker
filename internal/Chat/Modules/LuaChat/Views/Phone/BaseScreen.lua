--[[
	Defines a set of tweens and default lifecycle handlers appropriate for this
	platform.
]]

local Modules = script.Parent.Parent.Parent

local BaseView = require(Modules.BaseView)

local BaseScreen = BaseView:Template()

function BaseScreen:Start()
end

function BaseScreen:Stop()
end

function BaseScreen:Resume()
end

function BaseScreen:Pause()
end

function BaseScreen:Destruct()
end

return BaseScreen