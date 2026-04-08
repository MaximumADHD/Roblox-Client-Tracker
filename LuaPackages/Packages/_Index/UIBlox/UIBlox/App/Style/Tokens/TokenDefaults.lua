--[[
	Inline V1 token structure for type inference via typeof().

	This file constructs a table matching the exact shape of
	RbxDesignFoundations V1 (Common/Builder/Dark) tokens.
	Only the structure matters for typeof() — values are placeholders.
	The actual runtime values come from the V1 builders in init.lua.
]]

local _c: { Color3: Color3, Transparency: number } = { Color3 = Color3.new(), Transparency = 0 }
local _t: { Font: Enum.Font, FontSize: number, LineHeight: number, LetterSpacing: number } =
	{ Font = Enum.Font.Unknown, FontSize = 0, LineHeight = 0, LetterSpacing = 0 }

return {
	Global = {
		Size_0 = 0,
		Size_25 = 0,
		Size_50 = 0,
		Size_75 = 0,
		Size_100 = 0,
		Size_125 = 0,
		Size_150 = 0,
		Size_175 = 0,
		Size_200 = 0,
		Size_250 = 0,
		Size_300 = 0,
		Size_350 = 0,
		Size_400 = 0,
		Size_450 = 0,
		Size_500 = 0,
		Size_600 = 0,
		Size_700 = 0,
		Size_800 = 0,
		Size_900 = 0,
		Size_1000 = 0,
		Size_1100 = 0,
		Size_1200 = 0,
		Size_1300 = 0,
		Size_1400 = 0,
		Space_0 = 0,
		Space_25 = 0,
		Space_50 = 0,
		Space_75 = 0,
		Space_100 = 0,
		Space_125 = 0,
		Space_150 = 0,
		Space_175 = 0,
		Space_200 = 0,
		Space_250 = 0,
		Space_300 = 0,
		Space_400 = 0,
		Space_500 = 0,
		Space_600 = 0,
		Space_800 = 0,
		Space_1000 = 0,
		FontSize_25 = 0,
		FontSize_50 = 0,
		FontSize_75 = 0,
		FontSize_100 = 0,
		FontSize_200 = 0,
		FontSize_300 = 0,
		FontSize_400 = 0,
		FontSize_500 = 0,
		FontSize_600 = 0,
		FontSize_700 = 0,
		FontSize_800 = 0,
		FontSize_900 = 0,
		FontSize_1000 = 0,
		Family = {
			Standard = "",
		},
		Weight_300 = "",
		Weight_400 = "",
		Weight_600 = "",
		Weight_700 = "",
		Weight_900 = "",
		LetterSpacing = {
			Default = 0,
			Tight = 0,
			Loose = 0,
		},
		LineHeight_100 = 0,
		LineHeight_200 = 0,
		LineHeight_300 = 0,
		LineHeight_400 = 0,
		Stroke_50 = 0,
		Stroke_100 = 0,
		Stroke_150 = 0,
		Stroke_200 = 0,
		Stroke_250 = 0,
		Stroke_300 = 0,
		Stroke_400 = 0,
		Opacity_0 = 0,
		Opacity_8 = 0,
		Opacity_12 = 0,
		Opacity_16 = 0,
		Opacity_32 = 0,
		Opacity_68 = 0,
		Opacity_84 = 0,
		Opacity_88 = 0,
		Opacity_92 = 0,
		Opacity_100 = 0,
		Color = {
			Black = _c,
			White = _c,
			Green = _c,
			Red = _c,
			Blue = _c,
			Carbon = _c,
			Flint = _c,
			Graphite = _c,
			Obsidian = _c,
			Pumice = _c,
			Slate = _c,
			Alabaster = _c,
			Ash = _c,
			Chalk = _c,
			Smoke = _c,
			None = _c,
		},
	},
	Semantic = {
		Typography = {
			Title = _t,
			Header = _t,
			Subheader = _t,
			Body = _t,
			CaptionHeader = _t,
			CaptionBody = _t,
			Footer = _t,
		},
		Color = {
			Background = {
				Default = _c,
				Contrast = _c,
				Muted = _c,
				OnHover = _c,
				OnPress = _c,
			},
			BackgroundUi = {
				Default = _c,
				Contrast = _c,
			},
			Ui = {
				Default = _c,
				Muted = _c,
				Emphasis = _c,
			},
			Text = {
				Default = _c,
				Muted = _c,
				Emphasis = _c,
				Link = _c,
				Inverse = _c,
			},
			Icon = {
				Default = _c,
				Emphasis = _c,
				OnHover = _c,
			},
			Action = {
				Primary = {
					Background = _c,
					Border = _c,
					Content = _c,
				},
				PrimaryBrand = {
					Background = _c,
					Border = _c,
					Content = _c,
				},
				Secondary = {
					Background = _c,
					Border = _c,
					Content = _c,
				},
				Alert = {
					Background = _c,
					Border = _c,
					Content = _c,
				},
				Subtle = {
					Background = _c,
					Border = _c,
					Content = _c,
				},
			},
			State = {
				Standard = {
					Default = _c,
					Hover = _c,
					Pressed = _c,
				},
				Lighten = {
					Default = _c,
					Hover = _c,
					Pressed = _c,
				},
				Inverse = {
					Default = _c,
					Hover = _c,
					Pressed = _c,
				},
				Darken = {
					Default = _c,
					Hover = _c,
					Pressed = _c,
				},
			},
			Focus = {
				Start = _c,
				End = _c,
				Gradient = _c,
			},
			Common = {
				Divider = _c,
				Overlay = _c,
				DropShadow = _c,
				NavigationBar = _c,
				Badge = _c,
				BadgeContent = _c,
				Placeholder = _c,
				Online = _c,
				Offline = _c,
				Alert = _c,
				Success = _c,
			},
		},
		Radius = {
			None = 0,
			Small = 0,
			Medium = 0,
			Large = 0,
			XLarge = 0,
			Circle = 0,
		},
		Icon = {
			Size = {
				Small = 0,
				Medium = 0,
				Large = 0,
				XLarge = 0,
				XxLarge = 0,
			},
		},
		Stroke = {
			Input = 0,
			Focus = 0,
		},
		Offset = {
			Focus = {
				Standard = 0,
				Inset = 0,
			},
		},
		Opacity = {
			State = {
				Lighten = {
					Hover = 0,
					Pressed = 0,
				},
				Darken = {
					Hover = 0,
					Pressed = 0,
				},
			},
		},
	},
	Component = {
		VerticalTile = {
			Base = {
				Container = {
					Background = _c,
					BorderWidth = 0,
					BorderColor = _c,
					DropShadow = {
						X = 0,
						Y = 0,
						Blur = 0,
						Color = _c,
					},
					BorderRadius = {
						LeadingTop = 0,
						TrailingTop = 0,
						TrailingBottom = 0,
						LeadingBottom = 0,
					},
				},
				ContentTop = {
					Spacing = {
						Top = 0,
						Trailing = 0,
						Bottom = 0,
						Leading = 0,
					},
				},
				ContentBottom = {
					Spacing = {
						Top = 0,
						Trailing = 0,
						Bottom = 0,
						Leading = 0,
					},
				},
			},
		},
		PlayerTileSmall = {
			Base = {
				Container = {
					Gap = 0,
					Spacing = {
						Top = 0,
						Trailing = 0,
						Bottom = 0,
						Leading = 0,
					},
				},
				Image = {
					Size = 0,
					BackgroundColor = _c,
					BorderColor = _c,
					BorderRadius = 0,
					BorderWidth = 0,
				},
				Status = {
					Size = 0,
					BackgroundColor = _c,
					BorderColor = _c,
					BorderWidth = 0,
				},
				Content = {
					Gap = 0,
					Typography = _t,
					ContentColor = _c,
				},
				Icon = {
					Size = 0,
				},
				Presence = {
					ContentColor = _c,
				},
			},
		},
		Facepile = {
			Container = {
				Gap = 0,
			},
			FaceGroup = {
				Gap = 0,
			},
			Face = {
				BackgroundColor = _c,
				BorderWidth = 0,
				BorderColor = _c,
				BorderRadius = 0,
				Width = 0,
				Height = 0,
			},
			Badge = {
				BackgroundColor = _c,
				BorderWidth = 0,
				BorderColor = _c,
				BorderRadius = 0,
				Spacing = 0,
				Height = 0,
				MinWidth = 0,
				ContentColor = _c,
				Typography = _t,
			},
			Label = {
				ContentColor = _c,
				Typography = _t,
			},
		},
		ControllerBar = {
			BackgroundColor = _c,
			BorderRadius = {
				LeadingTop = 0,
				TrailingTop = 0,
				TrailingBottom = 0,
				LeadingBottom = 0,
			},
			Spacing = {
				Top = 0,
				Trailing = 0,
				Bottom = 0,
				Leading = 0,
			},
			Gap = 0,
		},
		ControllerBarShortcut = {
			Container = {
				Gap = 0,
				ContentColor = _c,
			},
			Icon = {
				Size = 0,
			},
			Label = {
				Typography = _t,
			},
		},
		SelectionCursor = {
			BorderWidth = 0,
			Offset = 0,
			Inset = 0,
			Gradient = {
				Start = _c,
				End = _c,
			},
		},
		StateLayer = {
			Base = {
				BorderWidth = 0,
			},
			Standard = {
				Initialize = { Color = _c },
				Default = { Color = _c },
				Hover = { Color = _c },
				Pressed = { Color = _c },
				Selected = { Color = _c },
				SelectedPressed = { Color = _c },
				Disabled = { Color = _c },
			},
			Lighten = {
				Initialize = { Color = _c },
				Default = { Color = _c },
				Hover = { Color = _c },
				Pressed = { Color = _c },
				Selected = { Color = _c },
				SelectedPressed = { Color = _c },
				Disabled = { Color = _c },
			},
			Inverse = {
				Initialize = { Color = _c },
				Default = { Color = _c },
				Hover = { Color = _c },
				Pressed = { Color = _c },
				Selected = { Color = _c },
				SelectedPressed = { Color = _c },
				Disabled = { Color = _c },
			},
			Darken = {
				Initialize = { Color = _c },
				Default = { Color = _c },
				Hover = { Color = _c },
				Pressed = { Color = _c },
				Selected = { Color = _c },
				SelectedPressed = { Color = _c },
				Disabled = { Color = _c },
			},
		},
		MenuCell = {
			Base = {
				Container = {
					Height = 0,
					ContentColor = _c,
					BackgroundColor = _c,
					BorderColor = _c,
					BorderRadius = {
						TopLeading = 0,
						TopTrailing = 0,
						BottomTrailing = 0,
						BottomLeading = 0,
					},
					BorderWidth = 0,
					Spacing = {
						Top = 0,
						Trailing = 0,
						Bottom = 0,
						Leading = 0,
					},
				},
				IconFrame = {
					Size = 0,
				},
				TextFrame = {
					Spacing = {
						Top = 0,
						Trailing = 0,
						Bottom = 0,
						Leading = 0,
					},
				},
				Text = {
					Typography = _t,
				},
				CheckFrame = {
					Size = 0,
				},
			},
			Divider = {
				Container = {
					BorderWidth = 0,
				},
			},
			Disabled = {
				Container = {
					ContentColor = _c,
				},
			},
			HasRoundBottom = {
				Container = {
					BorderRadius = {
						BottomTrailing = 0,
						BottomLeading = 0,
					},
				},
			},
			HasRoundTop = {
				Container = {
					BorderRadius = {
						TopLeading = 0,
						TopTrailing = 0,
					},
				},
			},
		},
		BaseMenu = {
			BorderRadius = 0,
			BackgroundColor = _c,
		},
		StatGroup = {
			Gap = 0,
		},
		StatItem = {
			Container = {
				Gap = 0,
				ContentColor = _c,
			},
			Icon = {
				Size = 0,
			},
			Label = {
				Typography = _t,
			},
		},
		MediaTile = {
			Container = {
				BorderRadius = 0,
			},
			Icon = {
				Size = 0,
			},
		},
		StatWidget = {
			Container = {
				Gap = 0,
				ContentColor = _c,
			},
			Icon = {
				Size = 0,
			},
			DataGroup = {
				Gap = 0,
			},
			Data = {
				Typography = _t,
			},
			Label = {
				Typography = _t,
			},
		},
		RateCount = {
			Container = {
				Spacing = 0,
				Gap = 0,
				BorderRadius = 0,
				BackgroundColor = _c,
			},
			ButtonGroup = {
				Gap = 0,
			},
		},
		PlayerCount = {
			Container = {
				Spacing = 0,
				BorderRadius = 0,
				BackgroundColor = _c,
			},
		},
		VerticalScrollView = {
			Base = {
				Handle = {
					BackgroundColor = _c,
					ContentColor = _c,
					BorderRadius = 0,
				},
				Icon = {
					Size = 0,
				},
				Track = {
					Opacity = 0,
					Spacing = {
						Top = 0,
						Bottom = 0,
					},
				},
			},
			Compact = {
				Handle = {
					Width = 0,
				},
				Track = {
					Width = 0,
				},
			},
			Wide = {
				Handle = {
					Width = 0,
				},
				Track = {
					Width = 0,
				},
			},
			Gamepad = {
				Handle = {
					Width = 0,
				},
				Track = {
					Width = 0,
				},
			},
		},
		TextField = {
			Base = {
				Field = {
					BorderColor = _c,
					BorderRadius = 0,
					Typography = _t,
					Spacing = {
						Leading = 0,
						Trailing = 0,
					},
					Gap = 0,
					Opacity = 0,
				},
				PlaceholderText = {
					ContentColor = _c,
				},
				FieldValue = {
					ContentColor = _c,
				},
				IconLeading = {
					ContentColor = _c,
					Size = 0,
				},
			},
			Error = {
				Field = {
					BorderColor = _c,
				},
			},
			Disabled = {
				Field = {
					Opacity = 0,
				},
			},
		},
		InputLabel = {
			Base = {
				Typography = _t,
				ContentColor = _c,
				Spacing = {
					Bottom = 0,
				},
				Opacity = 0,
			},
			Disabled = {
				Opacity = 0,
			},
		},
		HelperText = {
			Base = {
				Typography = _t,
				ContentColor = _c,
				Padding = {
					Top = 0,
				},
				Opacity = 0,
			},
			Error = {
				ContentColor = _c,
			},
		},
	},
}
