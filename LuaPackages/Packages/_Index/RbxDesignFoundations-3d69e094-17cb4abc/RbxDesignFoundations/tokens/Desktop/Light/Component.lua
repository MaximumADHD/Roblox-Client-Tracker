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
	FacePile = {
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
		TextLabel = {
			Typography = {
				Font = Enum.Font.Gotham,
				FontSize = 12,
				LineHeight = 1.15,
				LetterSpacing = 0,
			},
			ContentColor = {
				Color3 = Color3.new(0, 0, 0),
				Transparency = 0.4,
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
		Base = {
			BorderWidth = 2,
			Offset = {
				Top = 6,
				Trailing = 6,
				Bottom = 6,
				Leading = 6,
			},
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
		Inset = {
			Offset = {
				Top = 0,
				Trailing = 0,
				Bottom = 0,
				Leading = 0,
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
}
