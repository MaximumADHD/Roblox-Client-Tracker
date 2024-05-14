return  {
	VerticalTile = {
		Base = {
			Container = {
				Background = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				BorderWidth = 1.500,
				BorderColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0.8,
				},
				DropShadow = {
					X = 0,
					Y = 6,
					Blur = 12,
					Color = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 0.7,
					},
				},
				BorderRadius = {
					LeadingTop = 12,
					TrailingTop = 12,
					TrailingBottom = 12,
					LeadingBottom = 12,
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
					Top = 12,
					Trailing = 12,
					Bottom = 12,
					Leading = 12,
				},
			},
		},
	},
	PlayerTileSmall = {
		Base = {
			Container = {
				Gap = 12,
				Spacing = {
					Top = 12,
					Trailing = 12,
					Bottom = 12,
					Leading = 12,
				},
			},
			Image = {
				Size = 144,
				BackgroundColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				BorderColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0.8,
				},
				BorderRadius = 9999,
				BorderWidth = 4.500,
			},
			Status = {
				Size = 24,
				BackgroundColor = {
					Color3 = Color3.new(0, 0.70588, 0.42745),
					Transparency = 0,
				},
				BorderColor = {
					Color3 = Color3.new(0.94902, 0.95686, 0.96078),
					Transparency = 0,
				},
				BorderWidth = 3.750,
			},
			Content = {
				Gap = 3,
				Typography = {
					Font = Enum.Font.GothamMedium,
					FontSize = 18,
					LineHeight = 1.150,
					LetterSpacing = 0,
				},
				ContentColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
			},
			Icon = {
				Size = 24,
			},
			Presence = {
				ContentColor = {
					Color3 = Color3.new(0.37647, 0.38039, 0.38431),
					Transparency = 0,
				},
			},
		},
	},
	Facepile = {
		Container = {
			Gap = 6,
		},
		FaceGroup = {
			Gap = -9,
		},
		Face = {
			BackgroundColor = {
				Color3 = Color3.new(0.37647, 0.38039, 0.38431),
				Transparency = 0,
			},
			BorderWidth = 3,
			BorderColor = {
				Color3 = Color3.new(1, 1, 1),
				Transparency = 0,
			},
			BorderRadius = 9999,
			Width = 24,
			Height = 24,
		},
		Badge = {
			BackgroundColor = {
				Color3 = Color3.new(0, 0.70588, 0.42745),
				Transparency = 0,
			},
			BorderWidth = 3,
			BorderColor = {
				Color3 = Color3.new(1, 1, 1),
				Transparency = 0,
			},
			BorderRadius = 9999,
			Spacing = 6,
			Height = 24,
			MinWidth = 24,
			ContentColor = {
				Color3 = Color3.new(1, 1, 1),
				Transparency = 0,
			},
			Typography = {
				Font = Enum.Font.GothamMedium,
				FontSize = 15,
				LineHeight = 1.200,
				LetterSpacing = 0,
			},
		},
		Label = {
			ContentColor = {
				Color3 = Color3.new(0, 0, 0),
				Transparency = 0.4,
			},
			Typography = {
				Font = Enum.Font.Gotham,
				FontSize = 18,
				LineHeight = 1.150,
				LetterSpacing = 0,
			},
		},
	},
	ControllerBar = {
		BackgroundColor = {
			Color3 = Color3.new(0, 0, 0),
			Transparency = 0.9,
		},
		BorderRadius = {
			LeadingTop = 9999,
			TrailingTop = 9999,
			TrailingBottom = 9999,
			LeadingBottom = 9999,
		},
		Spacing = {
			Top = 12,
			Trailing = 18,
			Bottom = 12,
			Leading = 18,
		},
		Gap = 24,
	},
	ControllerBarShortcut = {
		Container = {
			Gap = 6,
			ContentColor = {
				Color3 = Color3.new(0.22353, 0.23137, 0.23922),
				Transparency = 0,
			},
		},
		Icon = {
			Size = 54,
		},
		Label = {
			Typography = {
				Font = Enum.Font.GothamMedium,
				FontSize = 18,
				LineHeight = 1.150,
				LetterSpacing = 0,
			},
		},
	},
	SelectionCursor = {
		BorderWidth = 3,
		Offset = 9,
		Inset = 0,
		Gradient = {
			Start = {
				Color3 = Color3.new(0.74118, 0.7451, 0.7451),
				Transparency = 0,
			},
			End = {
				Color3 = Color3.new(0.74118, 0.7451, 0.7451),
				Transparency = 0,
			},
		},
	},
	StateLayer = {
		Base = {
			BorderWidth = 1.500,
		},
		Standard = {
			Initialize = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			Default = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			Hover = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.88,
				},
			},
			Pressed = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.8,
				},
			},
			Selected = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			SelectedPressed = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.8,
				},
			},
			Disabled = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
		},
		Lighten = {
			Initialize = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			Default = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			Hover = {
				Color = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.88,
				},
			},
			Pressed = {
				Color = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.8,
				},
			},
			Selected = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			SelectedPressed = {
				Color = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.8,
				},
			},
			Disabled = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
		},
		Inverse = {
			Initialize = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			Default = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			Hover = {
				Color = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.88,
				},
			},
			Pressed = {
				Color = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.8,
				},
			},
			Selected = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			SelectedPressed = {
				Color = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.8,
				},
			},
			Disabled = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
		},
		Darken = {
			Initialize = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			Default = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			Hover = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.88,
				},
			},
			Pressed = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.8,
				},
			},
			Selected = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
			SelectedPressed = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.8,
				},
			},
			Disabled = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
		},
	},
	MenuCell = {
		Base = {
			Container = {
				Height = 84,
				ContentColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				BackgroundColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				BorderColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0.8,
				},
				BorderRadius = {
					TopLeading = 0,
					TopTrailing = 0,
					BottomTrailing = 0,
					BottomLeading = 0,
				},
				BorderWidth = 0,
				Spacing = {
					Top = 0,
					Trailing = 18,
					Bottom = 0,
					Leading = 18,
				},
			},
			IconFrame = {
				Size = 48,
			},
			TextFrame = {
				Spacing = {
					Top = 0,
					Trailing = 18,
					Bottom = 0,
					Leading = 18,
				},
			},
			Text = {
				Typography = {
					Font = Enum.Font.GothamMedium,
					FontSize = 24,
					LineHeight = 1.250,
					LetterSpacing = 0,
				},
			},
			CheckFrame = {
				Size = 48,
			},
		},
		Divider = {
			Container = {
				BorderWidth = 1.500,
			},
		},
		Disabled = {
			Container = {
				ContentColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0.5,
				},
			},
		},
		HasRoundBottom = {
			Container = {
				BorderRadius = {
					BottomTrailing = 12,
					BottomLeading = 12,
				},
			},
		},
		HasRoundTop = {
			Container = {
				BorderRadius = {
					TopLeading = 12,
					TopTrailing = 12,
				},
			},
		},
	},
	BaseMenu = {
		BorderRadius = 12,
		BackgroundColor = {
			Color3 = Color3.new(1, 1, 1),
			Transparency = 0,
		},
	},
	StatGroup = {
		Gap = 12,
	},
	StatItem = {
		Container = {
			Gap = 3,
			ContentColor = {
				Color3 = Color3.new(0, 0, 0),
				Transparency = 0.4,
			},
		},
		Icon = {
			Size = 24,
		},
		Label = {
			Typography = {
				Font = Enum.Font.Gotham,
				FontSize = 18,
				LineHeight = 1.150,
				LetterSpacing = 0,
			},
		},
	},
	MediaTile = {
		Container = {
			BorderRadius = 12,
		},
		Icon = {
			Size = 54,
		},
	},
	StatWidget = {
		Container = {
			Gap = 12,
			ContentColor = {
				Color3 = Color3.new(0.22353, 0.23137, 0.23922),
				Transparency = 0,
			},
		},
		Icon = {
			Size = 72,
		},
		DataGroup = {
			Gap = 0,
		},
		Data = {
			Typography = {
				Font = Enum.Font.GothamBlack,
				FontSize = 51,
				LineHeight = 1.200,
				LetterSpacing = 0,
			},
		},
		Label = {
			Typography = {
				Font = Enum.Font.GothamMedium,
				FontSize = 24,
				LineHeight = 1.250,
				LetterSpacing = 0,
			},
		},
	},
	RateCount = {
		Container = {
			Spacing = 12,
			Gap = 12,
			BorderRadius = 12,
			BackgroundColor = {
				Color3 = Color3.new(0, 0, 0),
				Transparency = 0.7,
			},
		},
		ButtonGroup = {
			Gap = 12,
		},
	},
	PlayerCount = {
		Container = {
			Spacing = 12,
			BorderRadius = 0,
			BackgroundColor = {
				Color3 = Color3.new(0, 0, 0),
				Transparency = 1,
			},
		},
	},
	VerticalScrollView = {
		Base = {
			Handle = {
				BackgroundColor = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.7,
				},
				ContentColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				BorderRadius = 9999,
			},
			Icon = {
				Size = 54,
			},
			Track = {
				Opacity = 0,
				Spacing = {
					Top = 6,
					Bottom = 6,
				},
			},
		},
		Compact = {
			Handle = {
				Width = 3,
			},
			Track = {
				Width = 18,
			},
		},
		Wide = {
			Handle = {
				Width = 12,
			},
			Track = {
				Width = 24,
			},
		},
		Gamepad = {
			Handle = {
				Width = 24,
			},
			Track = {
				Width = 24,
			},
		},
	},
	TextField = {
		Base = {
			Field = {
				BorderColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0.8,
				},
				BorderRadius = 12,
				Typography = {
					Font = Enum.Font.Gotham,
					FontSize = 24,
					LineHeight = 1.250,
					LetterSpacing = 0,
				},
				Spacing = {
					Leading = 18,
					Trailing = 18,
				},
				Gap = 12,
				Opacity = 1,
			},
			PlaceholderText = {
				ContentColor = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.4,
				},
			},
			FieldValue = {
				ContentColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
			},
			IconLeading = {
				ContentColor = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.4,
				},
				Size = 24,
			},
		},
		Error = {
			Field = {
				BorderColor = {
					Color3 = Color3.new(0.96863, 0.29412, 0.32157),
					Transparency = 0,
				},
			},
		},
		Disabled = {
			Field = {
				Opacity = 0.32,
			},
		},
	},
	InputLabel = {
		Base = {
			Typography = {
				Font = Enum.Font.Gotham,
				FontSize = 18,
				LineHeight = 1.150,
				LetterSpacing = 0,
			},
			ContentColor = {
				Color3 = Color3.new(0.37647, 0.38039, 0.38431),
				Transparency = 0,
			},
			Spacing = {
				Bottom = 6,
			},
			Opacity = 1,
		},
		Disabled = {
			Opacity = 0.32,
		},
	},
	HelperText = {
		Base = {
			Typography = {
				Font = Enum.Font.GothamMedium,
				FontSize = 15,
				LineHeight = 1.200,
				LetterSpacing = 0,
			},
			ContentColor = {
				Color3 = Color3.new(0.37647, 0.38039, 0.38431),
				Transparency = 0,
			},
			Padding = {
				Top = 6,
			},
			Opacity = 1,
		},
		Error = {
			ContentColor = {
				Color3 = Color3.new(0.96863, 0.29412, 0.32157),
				Transparency = 0,
			},
		},
	},
}
