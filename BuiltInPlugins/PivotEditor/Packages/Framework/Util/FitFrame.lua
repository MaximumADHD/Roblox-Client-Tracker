local Framework = script.Parent.Parent

local FlagsList = require(script.Parent.Flags).new({
	FFlagStudioDevFrameworkPackage = {"StudioDevFrameworkPackage"},
})

local FitFrame
local isUsedAsPackage = require(Framework.Util.isUsedAsPackage)
if FlagsList:get("FFlagStudioDevFrameworkPackage") and isUsedAsPackage() then
	FitFrame = require(Framework.Parent.FitFrame)
else
	FitFrame = require(Framework.packages.FitFrame)
end

return FitFrame