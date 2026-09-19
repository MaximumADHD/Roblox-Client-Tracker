--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Framework = require(ViewportToolingFramework.Parent.Framework)
local React = require(ViewportToolingFramework.Parent.React)
local StudioFoundation = require(ViewportToolingFramework.Parent.StudioFoundation)
local useStyleSheet = require(ViewportToolingFramework.Hooks.useStyleSheet)

local getFFlagViewportToolingFrameworkStyleLinkInDesign =
	require(ViewportToolingFramework.Flags.getFFlagViewportToolingFrameworkStyleLinkInDesign)

local function StyleLink(): React.ReactNode
	local styleSheet = useStyleSheet()

	if not getFFlagViewportToolingFrameworkStyleLinkInDesign() then
		return React.createElement("StyleLink", {
			StyleSheet = styleSheet,
		})
	end

	local designContext = (Framework.ContextServices.Design :: any).use()
	local design = if designContext ~= nil then designContext:get() else nil
	local themeName = StudioFoundation.Hooks.useThemeName()

	React.useEffect(function()
		if design == nil then
			return
		end
		local newDerives = table.clone(design:GetDerives())
		table.insert(newDerives, 1, styleSheet)
		design:SetDerives(newDerives)

		return function()
			local filtered = {}
			for _, derive in design:GetDerives() do
				if derive ~= styleSheet then
					table.insert(filtered, derive)
				end
			end
			design:SetDerives(filtered)
		end
	end, { design, styleSheet, themeName })

	return nil
end

return StyleLink
