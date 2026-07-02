--[[
	This stubs the plugin-only connection to StudioService.StudioLocaleId
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Super = require((script.Parent :: any).Localization_stubbed)
local Signal = require(Framework.Util.Signal)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local constructor = Super.new

function Super.new(props)
	return constructor(join(props, {
		overrideLocaleChangedSignal = Signal.new(),
		overrideLocaleId = 1,
	}))
end

return Super
