return  {
	VerticalTile = {
		Base = {
			Container = {
				Background = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				BorderWidth = 1.5,
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
				BorderRadius = 50,
				BorderWidth = 4.5,
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
				BorderWidth = 3.75,
			},
			Content = {
				Gap = 3,
				Typography = {
					FontFamily = "Gotham SSm",
					FontWeight = "Medium",
					FontSize = 18,
					LineHeight = 1.15,
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
	FacePile = {
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
			BorderRadius = 50,
			Width = 24,
			Height = 24,
		},
		TextLabel = {
			Typography = {
				FontFamily = "Gotham SSm",
				FontWeight = "Book",
				FontSize = 18,
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
			LeadingTop = 50,
			TrailingTop = 50,
			TrailingBottom = 50,
			LeadingBottom = 50,
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
				FontFamily = "Gotham SSm",
				FontWeight = "Medium",
				FontSize = 18,
				LineHeight = 1.15,
				LetterSpacing = 0,
			},
		},
	},
}
