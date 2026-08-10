local Framework = script:FindFirstAncestor("Style").Parent

local StudioColorClasses = require(Framework.Style.ColorSystem.StudioColorClasses)
local StyleKey = require(Framework.Style.StyleKey)

type Keys = {
	[string]: Color3,
}

local function getStudioColorClassTheme(theme: string)
	return {
		[StyleKey.BackgroundPaper] = StudioColorClasses.Background.Paper[theme],
		[StyleKey.BackgroundDefault] = StudioColorClasses.Background.Default[theme],

		[StyleKey.ForegroundMain] = StudioColorClasses.Foreground.Main[theme],
		[StyleKey.ForegroundMuted] = StudioColorClasses.Foreground.Muted[theme],
		[StyleKey.ForegroundContrast] = StudioColorClasses.Foreground.Contrast[theme],

		[StyleKey.TextPrimary] = StudioColorClasses.Text.Primary[theme],
		[StyleKey.TextSecondary] = StudioColorClasses.Text.Secondary[theme],
		[StyleKey.TextContrast] = StudioColorClasses.Text.Contrast[theme],
		[StyleKey.TextLink] = StudioColorClasses.Text.Link[theme],
		[StyleKey.TextDisabled] = StudioColorClasses.Text.Disabled[theme],
		[StyleKey.TextError] = (StudioColorClasses.Text.Error :: Keys)[theme],
		[StyleKey.TextSuccess] = (StudioColorClasses.Text.Success :: Keys)[theme],
		[StyleKey.TextWarning] = (StudioColorClasses.Text.Warning :: Keys)[theme],

		[StyleKey.ErrorMain] = StudioColorClasses.Error.Main[theme],
		[StyleKey.SuccessMain] = StudioColorClasses.Success.Main[theme],
		[StyleKey.WarningMain] = StudioColorClasses.Warning.Main[theme],

		[StyleKey.ActionHover] = StudioColorClasses.Action.Hover[theme],
		[StyleKey.ActionEnabled] = StudioColorClasses.Action.Enabled[theme],
		[StyleKey.ActionSelected] = StudioColorClasses.Action.Selected[theme],
		[StyleKey.ActionActivated] = StudioColorClasses.Action.Activated[theme],
		[StyleKey.ActionFocusBorder] = StudioColorClasses.Action.FocusBorder[theme],

		[StyleKey.PrimaryMain] = StudioColorClasses.Primary.Main[theme],

		[StyleKey.PrimaryStatesHoverBackground] = StudioColorClasses.PrimaryStates.HoverBackground[theme],

		[StyleKey.SecondaryMain] = StudioColorClasses.Secondary.Main[theme],
		[StyleKey.SecondaryMuted] = StudioColorClasses.Secondary.Muted[theme],
		[StyleKey.SecondaryContrast] = StudioColorClasses.Secondary.Contrast[theme],

		[StyleKey.SecondaryStatesHoverBackground] = StudioColorClasses.SecondaryStates.HoverBackground[theme],
		[StyleKey.SecondaryStatesHoverOutlineBorder] = StudioColorClasses.SecondaryStates.HoverOutlineBorder[theme],
		[StyleKey.SecondaryStatesRestingOutlineBorder] = StudioColorClasses.SecondaryStates.RestingOutlineBorder[theme],

		[StyleKey.AlertBackgroundDefault] = StudioColorClasses.AlertBackground.Default[theme],
		[StyleKey.AlertBackgroundError] = StudioColorClasses.AlertBackground.Error[theme],
		[StyleKey.AlertBackgroundInfo] = StudioColorClasses.AlertBackground.Info[theme],
		[StyleKey.AlertBackgroundSuccess] = StudioColorClasses.AlertBackground.Success[theme],
		[StyleKey.AlertBackgroundWarning] = StudioColorClasses.AlertBackground.Warning[theme],

		[StyleKey.OtherFilledInputBackground] = StudioColorClasses.Other.FilledInputBackground[theme],
		[StyleKey.OtherDivider] = StudioColorClasses.Other.Divider[theme],

		-- Old StyleKeys which have been updated to new system
		[StyleKey.ErrorText] = StudioColorClasses.Error.Main[theme],
		[StyleKey.LinkText] = StudioColorClasses.Text.Link[theme],
		[StyleKey.LinkTextHover] = StudioColorClasses.Text.LinkHover[theme],
		[StyleKey.WarningText] = StudioColorClasses.Warning.Main[theme],

		[StyleKey.MainText] = StudioColorClasses.Text.Primary[theme],
	}
end

return getStudioColorClassTheme
