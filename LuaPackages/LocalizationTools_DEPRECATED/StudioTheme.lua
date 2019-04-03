
local function getColorEnum()
	local success, result = pcall(function()
		return Enum.StudioStyleGuideColor
	end)

	if success then
		return result
	else
		return {}
	end
end

local function getModifierEnum()
	local success, result = pcall(function()
		return Enum.StudioStyleGuideModifier
	end)

	if success then
		return result
	else
		return {}
	end
end

return function(studioSettings)
	local colorEnum = getColorEnum()
	local modifierEnum = getModifierEnum()

	local _,_,backgroundValue = Color3.toHSV(
		studioSettings.Theme:GetColor(colorEnum.MainBackground))

	--[[
	Based on the value of the background,
	either show the light or dark loading circle.
	]]
	local ProgressSpinnerImageUrl = backgroundValue > 0.5
		and "rbxasset://textures/LightThemeLoadingCircle.png"
		or  "rbxasset://textures/DarkThemeLoadingCircle.png"

	return {
		BrightText =
			studioSettings.Theme:GetColor(colorEnum.BrightText),
		DimmedText =
			studioSettings.Theme:GetColor(colorEnum.DimmedText),
		WarningText =
			studioSettings.Theme:GetColor(colorEnum.WarningText),
		ErrorText =
			studioSettings.Theme:GetColor(colorEnum.ErrorText),
		MainButton =
			studioSettings.Theme:GetColor(colorEnum.MainButton),
		RibbonTab =
			studioSettings.Theme:GetColor(colorEnum.RibbonTab),
		Border =
			studioSettings.Theme:GetColor(colorEnum.Border),
		MainBackground =
			studioSettings.Theme:GetColor(colorEnum.MainBackground),
		ScrollBar =
			studioSettings.Theme:GetColor(colorEnum.ScrollBar),
		ScrollBarBackground =
			studioSettings.Theme:GetColor(colorEnum.ScrollBarBackground),
		Hover =
			studioSettings.Theme:GetColor(colorEnum.Button, modifierEnum.Hover),
		Pressed =
			studioSettings.Theme:GetColor(colorEnum.Button, modifierEnum.Pressed),
		InputFieldBackground =
			studioSettings.Theme:GetColor(colorEnum.InputFieldBackground),

		ProgressSpinnerImageUrl = ProgressSpinnerImageUrl
	}
end
