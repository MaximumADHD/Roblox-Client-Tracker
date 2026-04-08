local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local React = require(Packages.React)

local useScreenSize = require(MomentsCommon.Hooks.useScreenSize)

local FormFactor = require(MomentsCommon.Enums.FormFactor)

local MOBILE_PORTRAIT_WIDTH_BREAKPOINT = 600
local MOBILE_LANDSCAPE_HEIGHT_BREAKPOINT = 480

local function useFormFactor()
	local screenSize = useScreenSize()

	local formFactor = React.useMemo(function()
		if screenSize.X < MOBILE_PORTRAIT_WIDTH_BREAKPOINT then
			return FormFactor.MobilePortrait
		elseif screenSize.Y < MOBILE_LANDSCAPE_HEIGHT_BREAKPOINT then
			return FormFactor.MobileLandscape
		else
			return FormFactor.Wide
		end
	end, { screenSize })

	return formFactor
end

return useFormFactor
