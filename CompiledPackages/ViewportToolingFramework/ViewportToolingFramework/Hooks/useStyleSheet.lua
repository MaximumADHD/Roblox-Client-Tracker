local StylingService = game:GetService("StylingService")

local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Framework = require(ViewportToolingFramework.Parent.Framework)
local React = require(ViewportToolingFramework.Parent.React)

local createStyle = require(ViewportToolingFramework.createStyle)

local getFFlagViewportToolingFrameworkRenameCreatedStudioDesign =
	require(ViewportToolingFramework.Flags.getFFlagViewportToolingFrameworkRenameCreatedStudioDesign)

local STUDIODESIGN_INSTANCE_NAME = "StudioDesign"

-- Stylesheets must be parented somewhere
local function useStyleSheet(): StyleSheet
	local styleSheet = React.useState(function()
		local design = StylingService:FindFirstChild(STUDIODESIGN_INSTANCE_NAME)
		if design == nil then
			-- This is mutation, but it's idempotent, and it's basically impossible we're the first consumer
			-- to be creating StudioDesign anyway.
			design = Framework.Styling.createStudioDesign()
			if getFFlagViewportToolingFrameworkRenameCreatedStudioDesign() then
				design.Name = STUDIODESIGN_INSTANCE_NAME
			end
			design.Parent = StylingService
		end

		return Framework.Styling.createStyleSheet(
			"ViewportToolingFramework",
			createStyle(),
			{},
			{ (design :: any).Design }
		)
	end)

	React.useEffect(function()
		styleSheet.Parent = StylingService

		return function()
			styleSheet:Destroy()
		end
	end, {})

	return styleSheet
end

return useStyleSheet
