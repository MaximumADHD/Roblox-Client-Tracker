local Validator = script.Parent
local Style = Validator.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local GetEngineFeatureSafe = require(Packages.UIBlox.Core.Utility.GetEngineFeatureSafe)
local EngineFeaturedPreferredTextSizeExists = GetEngineFeatureSafe("EnablePreferredTextSizeSetting")

local t = require(Packages.t)

local Settings = t.strictInterface({
	PreferredTransparency = t.optional(t.number),
	ReducedMotion = t.optional(t.boolean),
	PreferredTextSize = if EngineFeaturedPreferredTextSizeExists
		then t.optional(t.enum(Enum.PreferredTextSize))
		else nil,
	Scale = t.optional(t.number),
})

return Settings
