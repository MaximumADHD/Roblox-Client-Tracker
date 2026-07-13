--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Cryo = InGameMenuDependencies.Cryo
local t = InGameMenuDependencies.t
local withFoundationOrUIBloxStyle = require(CorePackages.Workspace.Packages.CoreGuiCommon).withFoundationOrUIBloxStyle
local InGameMenu = script.Parent.Parent
local GlobalConfig = require(InGameMenu.GlobalConfig)

local validateProps = t.strictInterface({
	themeKey = t.optional(t.string),
	fontKey = t.optional(t.string),

	AnchorPoint = t.optional(t.Vector2),
	LayoutOrder = t.optional(t.integer),
	Position = t.optional(t.UDim2),
	Size = t.optional(t.UDim2),
	Text = t.string,
	TextColor3 = t.optional(t.Color3),
	TextTransparency = t.optional(t.numberConstrained(0, 1)),
	TextWrapped = t.optional(t.boolean),
	TextXAlignment = t.optional(t.enum(Enum.TextXAlignment)),
	TextYAlignment = t.optional(t.enum(Enum.TextYAlignment)),
	TextTruncate = t.optional(t.enum(Enum.TextTruncate)),
	Visible = t.optional(t.boolean),
	ZIndex = t.optional(t.integer),
	AutomaticSize = t.optional(t.enum(Enum.AutomaticSize)),
	[Roact.Children] = t.optional(t.table),
})

local function ThemedTextLabel(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withFoundationOrUIBloxStyle(function(tokens)
		return {
			Theme = {
				BackgroundDefault = {
					Color = tokens.Color.Surface.Surface_0.Color3,
					Transparency = tokens.Color.Surface.Surface_0.Transparency,
				},
				BackgroundContrast = {
					Color = tokens.Color.Surface.Surface_100.Color3,
					Transparency = tokens.Color.Surface.Surface_100.Transparency,
				},
				BackgroundMuted = {
					Color = tokens.Color.Surface.Surface_200.Color3,
					Transparency = tokens.Color.Surface.Surface_200.Transparency,
				},
				BackgroundUIDefault = {
					Color = tokens.Color.Surface.Surface_300.Color3,
					Transparency = tokens.Color.Surface.Surface_300.Transparency,
				},
				BackgroundUIContrast = {
					Color = tokens.Color.OverMedia.OverMedia_0.Color3,
					Transparency = tokens.Color.OverMedia.OverMedia_0.Transparency,
				},
				BackgroundOnHover = {
					Color = tokens.Color.State.Hover.Color3,
					Transparency = tokens.Color.State.Hover.Transparency,
				},
				BackgroundOnPress = {
					Color = tokens.Color.State.Press.Color3,
					Transparency = tokens.Color.State.Press.Transparency,
				},
				UIDefault = {
					Color = tokens.Color.Shift.Shift_200.Color3,
					Transparency = tokens.Color.Shift.Shift_200.Transparency,
				},
				UIMuted = {
					Color = tokens.Color.Shift.Shift_100.Color3,
					Transparency = tokens.Color.Shift.Shift_100.Transparency,
				},
				UIEmphasis = {
					Color = tokens.Color.Shift.Shift_400.Color3,
					Transparency = tokens.Color.Shift.Shift_400.Transparency,
				},
				ContextualPrimaryDefault = {
					Color = tokens.Color.ActionEmphasis.Background.Color3,
					Transparency = tokens.Color.ActionEmphasis.Background.Transparency,
				},
				ContextualPrimaryContent = {
					Color = tokens.Color.ActionEmphasis.Foreground.Color3,
					Transparency = tokens.Color.ActionEmphasis.Foreground.Transparency,
				},
				SystemPrimaryDefault = {
					Color = tokens.Color.ActionSubEmphasis.Background.Color3,
					Transparency = tokens.Color.ActionSubEmphasis.Background.Transparency,
				},
				SystemPrimaryContent = {
					Color = tokens.Color.ActionSubEmphasis.Foreground.Color3,
					Transparency = tokens.Color.ActionSubEmphasis.Foreground.Transparency,
				},
				IconDefault = {
					Color = tokens.Color.Content.Default.Color3,
					Transparency = tokens.Color.Content.Default.Transparency,
				},
				IconEmphasis = {
					Color = tokens.Color.Content.Emphasis.Color3,
					Transparency = tokens.Color.Content.Emphasis.Transparency,
				},
				IconOnHover = {
					Color = tokens.Color.Content.Emphasis.Color3,
					Transparency = tokens.Color.Content.Emphasis.Transparency,
				},
				TextEmphasis = {
					Color = tokens.Color.Content.Emphasis.Color3,
					Transparency = tokens.Color.Content.Emphasis.Transparency,
				},
				TextDefault = {
					Color = tokens.Color.Content.Default.Color3,
					Transparency = tokens.Color.Content.Default.Transparency,
				},
				TextMuted = {
					Color = tokens.Color.Content.Muted.Color3,
					Transparency = tokens.Color.Content.Muted.Transparency,
				},
				TextLink = {
					Color = tokens.Color.Content.Link.Color3,
					Transparency = tokens.Color.Content.Link.Transparency,
				},
				Divider = {
					Color = tokens.Color.Stroke.Emphasis.Color3,
					Transparency = tokens.Color.Stroke.Emphasis.Transparency,
				},
				Overlay = {
					Color = tokens.Color.Common.Scrim.Color3,
					Transparency = tokens.Color.Common.Scrim.Transparency,
				},
				DropShadow = {
					Color = tokens.Color.Common.Shadow.Color3,
					Transparency = tokens.Color.Common.Shadow.Transparency,
				},
				NavigationBar = {
					Color = tokens.Color.Common.NavigationBar.Color3,
					Transparency = tokens.Color.Common.NavigationBar.Transparency,
				},
				PlaceHolder = {
					Color = tokens.Color.Common.Shimmer.Color3,
					Transparency = tokens.Color.Common.Shimmer.Transparency,
				},
				OnlineStatus = {
					Color = tokens.Color.System.Success.Color3,
					Transparency = tokens.Color.System.Success.Transparency,
				},
				OfflineStatus = {
					Color = tokens.Color.System.Neutral.Color3,
					Transparency = tokens.Color.System.Neutral.Transparency,
				},
				Success = {
					Color = tokens.Color.System.Success.Color3,
					Transparency = tokens.Color.System.Success.Transparency,
				},
				Alert = {
					Color = tokens.Color.System.Alert.Color3,
					Transparency = tokens.Color.System.Alert.Transparency,
				},
				Badge = {
					Color = tokens.Color.System.Contrast.Color3,
					Transparency = tokens.Color.System.Contrast.Transparency,
				},
				BadgeContent = {
					Color = tokens.Inverse.Content.Emphasis.Color3,
					Transparency = tokens.Inverse.Content.Emphasis.Transparency,
				},
				SecondaryContent = {
					Color = tokens.Color.Extended.White.White_70.Color3,
					Transparency = tokens.Color.Extended.White.White_70.Transparency,
				},
			},
			Font = {
				BaseSize = 1,
				Title = {
					Font = tokens.Typography.HeadingLarge.Font,
					RelativeSize = tokens.Typography.HeadingLarge.FontSize,
				},
				Header1 = {
					Font = tokens.Typography.HeadingSmall.Font,
					RelativeSize = tokens.Typography.HeadingSmall.FontSize,
				},
				Header2 = {
					Font = tokens.Typography.TitleLarge.Font,
					RelativeSize = tokens.Typography.TitleLarge.FontSize,
				},
				SubHeader1 = {
					Font = tokens.Typography.TitleLarge.Font,
					RelativeSize = tokens.Typography.TitleLarge.FontSize,
				},
				Body = { Font = tokens.Typography.BodyLarge.Font, RelativeSize = tokens.Typography.BodyLarge.FontSize },
				CaptionHeader = {
					Font = tokens.Typography.CaptionLarge.Font,
					RelativeSize = tokens.Typography.CaptionLarge.FontSize,
				},
				CaptionSubHeader = {
					Font = tokens.Typography.CaptionLarge.Font,
					RelativeSize = tokens.Typography.CaptionLarge.FontSize,
				},
				CaptionBody = {
					Font = tokens.Typography.BodySmall.Font,
					RelativeSize = tokens.Typography.BodySmall.FontSize,
				},
				Footer = {
					Font = tokens.Typography.CaptionSmall.Font,
					RelativeSize = tokens.Typography.CaptionSmall.FontSize,
				},
			},
		}
	end, function(style)
		local textTheme = style.Theme[props.themeKey or "TextDefault"]
		local textFont = style.Font[props.fontKey or "Body"]

		-- We want to allow you to override TextColor3 or TextTransparency if
		-- desired, so those two props come first.
		local primitiveProps = Cryo.Dictionary.join(
			{
				TextColor3 = textTheme.Color,
				TextTransparency = textTheme.Transparency,
			},
			props,
			{
				fontKey = Cryo.None,
				themeKey = Cryo.None,

				BackgroundTransparency = 1,
				Font = textFont.Font,
				TextSize = textFont.RelativeSize * style.Font.BaseSize,
			}
		)

		return Roact.createElement("TextLabel", primitiveProps)
	end)
end

return ThemedTextLabel
