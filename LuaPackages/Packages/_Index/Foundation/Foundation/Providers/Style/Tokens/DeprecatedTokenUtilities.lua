local function cloneTokenValue(value: any): any
	if type(value) ~= "table" then
		return value
	end

	local result = {}
	for key, nestedValue in value do
		result[key] = cloneTokenValue(nestedValue)
	end
	return result
end

-- Semantic mappings
local function getDeprecatedSemanticTokens(tokens: any, scale: number)
	return cloneTokenValue({
		Color = {
			Background = {
				Default = tokens.Color.Surface.Surface_0,
				Contrast = tokens.Color.Surface.Surface_100,
				Muted = tokens.Color.Surface.Surface_200,
				OnHover = tokens.Color.State.Hover,
				OnPress = tokens.Color.State.Press,
			},
			BackgroundUi = {
				Default = tokens.Color.Surface.Surface_300,
				Contrast = tokens.Color.OverMedia.OverMedia_0,
			},
			Ui = {
				Default = tokens.Color.Shift.Shift_200,
				Muted = tokens.Color.Shift.Shift_100,
				Emphasis = tokens.Color.Shift.Shift_400,
			},
			Focus = {
				Start = tokens.Color.Selection.Start,
				End = tokens.Color.Selection.End,
				Gradient = tokens.Color.Selection.Start,
			},
			State = {
				Standard = {
					Default = tokens.Color.State.Idle,
					Hover = tokens.Color.State.Hover,
					Pressed = tokens.Color.State.Press,
				},
				Inverse = {
					Default = tokens.Inverse.State.Idle,
					Hover = tokens.Inverse.State.Hover,
					Pressed = tokens.Inverse.State.Press,
				},
				Darken = {
					Default = tokens.LightMode.State.Idle,
					Hover = tokens.LightMode.State.Hover,
					Pressed = tokens.LightMode.State.Press,
				},
				Lighten = {
					Default = tokens.DarkMode.State.Idle,
					Hover = tokens.DarkMode.State.Hover,
					Pressed = tokens.DarkMode.State.Press,
				},
			},
			Text = {
				Emphasis = tokens.Color.Content.Emphasis,
				Default = tokens.Color.Content.Default,
				Muted = tokens.Color.Content.Muted,
				Link = tokens.Color.Content.Link,
				Inverse = tokens.Inverse.Content.Default,
			},
			Icon = {
				Emphasis = tokens.Color.Content.Emphasis,
				Default = tokens.Color.Content.Default,
				OnHover = tokens.Color.Content.Emphasis,
			},
			Common = {
				Divider = tokens.Color.Stroke.Emphasis,
				Overlay = tokens.Color.Common.Scrim,
				DropShadow = tokens.Color.Common.Shadow,
				NavigationBar = tokens.Color.Common.NavigationBar,
				Placeholder = tokens.Color.Common.Shimmer,
				Badge = tokens.Color.System.Contrast,
				BadgeContent = tokens.Inverse.Content.Emphasis,
				Online = tokens.Color.System.Success,
				Offline = tokens.Color.System.Neutral,
				Alert = tokens.Color.System.Alert,
				Success = tokens.Color.System.Success,
			},
			Action = {
				PrimaryBrand = {
					Background = tokens.Color.ActionEmphasis.Background,
					Content = tokens.Color.ActionEmphasis.Foreground,
					Border = tokens.Color.ActionEmphasis.Border,
				},
				Primary = {
					Background = tokens.Color.ActionSubEmphasis.Background,
					Content = tokens.Color.ActionSubEmphasis.Foreground,
					Border = tokens.Color.ActionSubEmphasis.Border,
				},
				Secondary = {
					Background = tokens.Color.ActionSubtle.Background,
					Content = tokens.Color.ActionSubtle.Foreground,
					Border = tokens.Color.ActionSubtle.Border,
				},
				Subtle = {
					Background = tokens.Color.ActionLink.Background,
					Content = tokens.Color.ActionLink.Foreground,
					Border = tokens.Color.ActionLink.Border,
				},
				Alert = {
					Background = tokens.Color.ActionAlert.Background,
					Content = tokens.Color.ActionAlert.Foreground,
					Border = tokens.Color.ActionAlert.Border,
				},
			},
		},
		Icon = {
			Size = {
				Small = tokens.Size.Size_400,
				Medium = tokens.Size.Size_900,
				Large = tokens.Size.Size_1200,
				XLarge = tokens.Size.Size_2400,
				XXLarge = 192 * scale,
			},
		},
		Offset = {
			Focus = {
				Standard = tokens.Size.Size_150,
				Inset = tokens.Size.Size_0,
			},
		},
		Opacity = {
			State = {
				Lighten = {
					Hover = 0.88,
					Pressed = 0.8,
				},
				Darken = {
					Hover = 0.88,
					Pressed = 0.8,
				},
			},
		},
		Radius = {
			None = tokens.Radius.None,
			Small = tokens.Radius.Small,
			Medium = tokens.Radius.Medium,
			Large = tokens.Size.Size_300,
			XLarge = tokens.Radius.Large,
			Circle = tokens.Radius.Circle,
		},
		Stroke = {
			Input = tokens.Stroke.Standard,
			Focus = tokens.Stroke.Thick,
		},
		Typography = {
			Title = {
				Font = tokens.Typography.HeadingLarge.Font,
				FontSize = tokens.Typography.HeadingLarge.FontSize,
				LetterSpacing = tokens.Typography.HeadingLarge.LetterSpacing,
				LineHeight = tokens.LineHeight.LineHeight_130,
			},
			Header = {
				Font = tokens.Typography.HeadingSmall.Font,
				FontSize = tokens.Typography.HeadingSmall.FontSize,
				LetterSpacing = tokens.Typography.HeadingSmall.LetterSpacing,
				LineHeight = tokens.Typography.HeadingSmall.LineHeight,
			},
			Subheader = {
				Font = tokens.Typography.TitleLarge.Font,
				FontSize = tokens.Typography.TitleLarge.FontSize,
				LetterSpacing = tokens.Typography.TitleLarge.LetterSpacing,
				LineHeight = tokens.Typography.TitleLarge.LineHeight,
			},
			Body = {
				Font = tokens.Typography.BodyLarge.Font,
				FontSize = tokens.Typography.BodyLarge.FontSize,
				LetterSpacing = tokens.Typography.BodyLarge.LetterSpacing,
				LineHeight = tokens.Typography.BodyLarge.LineHeight,
			},
			CaptionHeader = {
				Font = tokens.Typography.CaptionLarge.Font,
				FontSize = tokens.FontSize.FontSize_300,
				LetterSpacing = tokens.Typography.BodyLarge.LetterSpacing,
				LineHeight = tokens.LineHeight.LineHeight_130,
			},
			CaptionBody = {
				Font = tokens.Typography.BodySmall.Font,
				FontSize = tokens.Typography.BodySmall.FontSize,
				LetterSpacing = tokens.Typography.BodySmall.LetterSpacing,
				LineHeight = tokens.LineHeight.LineHeight_130,
			},
			Footer = {
				Font = tokens.Typography.CaptionSmall.Font,
				FontSize = tokens.Typography.CaptionSmall.FontSize,
				LetterSpacing = tokens.Typography.BodyLarge.LetterSpacing,
				LineHeight = tokens.Typography.CaptionSmall.LineHeight,
			},
		},
	})
end

return {
	getDeprecatedSemanticTokens = getDeprecatedSemanticTokens,
}
