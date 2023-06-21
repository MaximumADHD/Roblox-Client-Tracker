return  {
	VerticalTile = {
		Base = {
			Container = {
				Background = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				BorderWidth = 1.5,
				BorderColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.8,
				},
				DropShadow = {
					X = 0,
					Y = 6,
					Blur = 12,
					Color = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 0.5,
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
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				BorderColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.8,
				},
				BorderRadius = 9999,
				BorderWidth = 4.5,
			},
			Status = {
				Size = 24,
				BackgroundColor = {
					Color3 = Color3.new(0, 0.70588, 0.42745),
					Transparency = 0,
				},
				BorderColor = {
					Color3 = Color3.new(0.13725, 0.1451, 0.15294),
					Transparency = 0,
				},
				BorderWidth = 3.75,
			},
			Content = {
				Gap = 3,
				Typography = {
					Font = Enum.Font.GothamMedium,
					FontSize = 18,
					LineHeight = 1.15,
					LetterSpacing = 0,
				},
				ContentColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
			},
			Icon = {
				Size = 24,
			},
			Presence = {
				ContentColor = {
					Color3 = Color3.new(0.74118, 0.7451, 0.7451),
					Transparency = 0,
				},
			},
		},
	},
	FacePile = {
		Container = {
			Gap = 6,
		},
		FaceGroup = {
			Gap = -9,
		},
		Face = {
			BackgroundColor = {
				Color3 = Color3.new(0.74118, 0.7451, 0.7451),
				Transparency = 0,
			},
			BorderWidth = 3,
			BorderColor = {
				Color3 = Color3.new(0.22353, 0.23137, 0.23922),
				Transparency = 0,
			},
			BorderRadius = 9999,
			Width = 24,
			Height = 24,
		},
		TextLabel = {
			Typography = {
				Font = Enum.Font.Gotham,
				FontSize = 18,
				LineHeight = 1.15,
				LetterSpacing = 0,
			},
			ContentColor = {
				Color3 = Color3.new(1, 1, 1),
				Transparency = 0.3,
			},
		},
	},
	ControllerBar = {
		BackgroundColor = {
			Color3 = Color3.new(0.06667, 0.07059, 0.07843),
			Transparency = 0.2,
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
				Color3 = Color3.new(1, 1, 1),
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
				LineHeight = 1.15,
				LetterSpacing = 0,
			},
		},
	},
	SelectionCursor = {
		Base = {
			BorderWidth = 3,
			Offset = {
				Top = 9,
				Trailing = 9,
				Bottom = 9,
				Leading = 9,
			},
			Gradient = {
				Start = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				End = {
					Color3 = Color3.new(0.39608, 0.4, 0.40784),
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
			BorderWidth = 1.5,
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
				Height = 84,
				ContentColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				BackgroundColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				BorderColor = {
					Color3 = Color3.new(1, 1, 1),
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
					LineHeight = 1.25,
					LetterSpacing = 0,
				},
			},
			CheckFrame = {
				Size = 48,
			},
		},
		Divider = {
			Container = {
				BorderWidth = 1.5,
			},
		},
		Disabled = {
			Container = {
				ContentColor = {
					Color3 = Color3.new(1, 1, 1),
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
			Color3 = Color3.new(0.22353, 0.23137, 0.23922),
			Transparency = 0,
		},
	},
}
