return  {
	VerticalTile = {
		Base = {
			Container = {
				Background = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				BorderWidth = 1,
				BorderColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0.8,
				},
				DropShadow = {
					X = 0,
					Y = 4,
					Blur = 8,
					Color = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 0.7,
					},
				},
				BorderRadius = {
					LeadingTop = 8,
					TrailingTop = 8,
					TrailingBottom = 8,
					LeadingBottom = 8,
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
					Top = 8,
					Trailing = 8,
					Bottom = 8,
					Leading = 8,
				},
			},
		},
	},
	PlayerTileSmall = {
		Base = {
			Container = {
				Gap = 8,
				Spacing = {
					Top = 8,
					Trailing = 8,
					Bottom = 8,
					Leading = 8,
				},
			},
			Image = {
				Size = 96,
				BackgroundColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				BorderColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0.8,
				},
				BorderRadius = 9999,
				BorderWidth = 3,
			},
			Status = {
				Size = 16,
				BackgroundColor = {
					Color3 = Color3.new(0, 0.70588, 0.42745),
					Transparency = 0,
				},
				BorderColor = {
					Color3 = Color3.new(0.94902, 0.95686, 0.96078),
					Transparency = 0,
				},
				BorderWidth = 2.5,
			},
			Content = {
				Gap = 2,
				Typography = {
					Font = Enum.Font.GothamMedium,
					FontSize = 12,
					LineHeight = 1.15,
					LetterSpacing = 0,
				},
				ContentColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
			},
			Icon = {
				Size = 16,
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
			Gap = 4,
		},
		FaceGroup = {
			Gap = -6,
		},
		Face = {
			BackgroundColor = {
				Color3 = Color3.new(0.37647, 0.38039, 0.38431),
				Transparency = 0,
			},
			BorderWidth = 2,
			BorderColor = {
				Color3 = Color3.new(1, 1, 1),
				Transparency = 0,
			},
			BorderRadius = 9999,
			Width = 16,
			Height = 16,
		},
		Badge = {
			BackgroundColor = {
				Color3 = Color3.new(0, 0.70588, 0.42745),
				Transparency = 0,
			},
			BorderWidth = 2,
			BorderColor = {
				Color3 = Color3.new(1, 1, 1),
				Transparency = 0,
			},
			BorderRadius = 9999,
			Spacing = 4,
			Height = 16,
			MinWidth = 16,
			ContentColor = {
				Color3 = Color3.new(1, 1, 1),
				Transparency = 0,
			},
			Typography = {
				Font = Enum.Font.GothamMedium,
				FontSize = 10,
				LineHeight = 1.2,
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
				FontSize = 12,
				LineHeight = 1.15,
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
			Top = 8,
			Trailing = 12,
			Bottom = 8,
			Leading = 12,
		},
		Gap = 16,
	},
	ControllerBarShortcut = {
		Container = {
			Gap = 4,
			ContentColor = {
				Color3 = Color3.new(0.22353, 0.23137, 0.23922),
				Transparency = 0,
			},
		},
		Icon = {
			Size = 36,
		},
		Label = {
			Typography = {
				Font = Enum.Font.GothamMedium,
				FontSize = 12,
				LineHeight = 1.15,
				LetterSpacing = 0,
			},
		},
	},
	SelectionCursor = {
		BorderWidth = 2,
		Offset = 6,
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
			BorderWidth = 1,
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
					Transparency = 0.12,
				},
			},
			Pressed = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.2,
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
					Transparency = 0.2,
				},
			},
			Disabled = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
		},
		Static = {
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
					Transparency = 0.12,
				},
			},
			Pressed = {
				Color = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.2,
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
					Transparency = 0.2,
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
					Transparency = 0.12,
				},
			},
			Pressed = {
				Color = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.2,
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
					Transparency = 0.2,
				},
			},
			Disabled = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 1,
				},
			},
		},
		StaticInverse = {
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
					Transparency = 0.12,
				},
			},
			Pressed = {
				Color = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.2,
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
					Transparency = 0.2,
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
				Height = 56,
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
					Trailing = 12,
					Bottom = 0,
					Leading = 12,
				},
			},
			IconFrame = {
				Size = 32,
			},
			TextFrame = {
				Spacing = {
					Top = 0,
					Trailing = 12,
					Bottom = 0,
					Leading = 12,
				},
			},
			Text = {
				Typography = {
					Font = Enum.Font.GothamMedium,
					FontSize = 16,
					LineHeight = 1.25,
					LetterSpacing = 0,
				},
			},
			CheckFrame = {
				Size = 32,
			},
		},
		Divider = {
			Container = {
				BorderWidth = 1,
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
					BottomTrailing = 8,
					BottomLeading = 8,
				},
			},
		},
		HasRoundTop = {
			Container = {
				BorderRadius = {
					TopLeading = 8,
					TopTrailing = 8,
				},
			},
		},
	},
	BaseMenu = {
		BorderRadius = 8,
		BackgroundColor = {
			Color3 = Color3.new(1, 1, 1),
			Transparency = 0,
		},
	},
	StatGroup = {
		Gap = 8,
	},
	StatItem = {
		Container = {
			Gap = 2,
			ContentColor = {
				Color3 = Color3.new(0, 0, 0),
				Transparency = 0.4,
			},
		},
		Icon = {
			Size = 16,
		},
		Label = {
			Typography = {
				Font = Enum.Font.Gotham,
				FontSize = 12,
				LineHeight = 1.15,
				LetterSpacing = 0,
			},
		},
	},
	MediaTile = {
		Container = {
			BorderRadius = 8,
		},
		Icon = {
			Size = 36,
		},
	},
	StatWidget = {
		Container = {
			Gap = 8,
			ContentColor = {
				Color3 = Color3.new(0.22353, 0.23137, 0.23922),
				Transparency = 0,
			},
		},
		Icon = {
			Size = 48,
		},
		DataGroup = {
			Gap = 0,
		},
		Data = {
			Typography = {
				Font = Enum.Font.GothamBlack,
				FontSize = 34,
				LineHeight = 1.2,
				LetterSpacing = 0,
			},
		},
		Label = {
			Typography = {
				Font = Enum.Font.GothamMedium,
				FontSize = 16,
				LineHeight = 1.25,
				LetterSpacing = 0,
			},
		},
	},
	RateCount = {
		Container = {
			Spacing = 8,
			Gap = 8,
			BorderRadius = 8,
			BackgroundColor = {
				Color3 = Color3.new(0, 0, 0),
				Transparency = 0.7,
			},
		},
		ButtonGroup = {
			Gap = 8,
		},
	},
	PlayerCount = {
		Container = {
			Spacing = 8,
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
				Size = 36,
			},
			Track = {
				Opacity = 0,
				Spacing = {
					Top = 4,
					Bottom = 4,
				},
			},
		},
		Compact = {
			Handle = {
				Width = 2,
			},
			Track = {
				Width = 12,
			},
		},
		Wide = {
			Handle = {
				Width = 8,
			},
			Track = {
				Width = 16,
			},
		},
		Gamepad = {
			Handle = {
				Width = 16,
			},
			Track = {
				Width = 16,
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
				BorderRadius = 8,
				Typography = {
					Font = Enum.Font.Gotham,
					FontSize = 16,
					LineHeight = 1.25,
					LetterSpacing = 0,
				},
				Spacing = {
					Leading = 12,
					Trailing = 12,
				},
				Gap = 8,
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
				Size = 16,
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
				FontSize = 12,
				LineHeight = 1.15,
				LetterSpacing = 0,
			},
			ContentColor = {
				Color3 = Color3.new(0.37647, 0.38039, 0.38431),
				Transparency = 0,
			},
			Spacing = {
				Bottom = 4,
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
				FontSize = 10,
				LineHeight = 1.2,
				LetterSpacing = 0,
			},
			ContentColor = {
				Color3 = Color3.new(0.37647, 0.38039, 0.38431),
				Transparency = 0,
			},
			Padding = {
				Top = 4,
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
