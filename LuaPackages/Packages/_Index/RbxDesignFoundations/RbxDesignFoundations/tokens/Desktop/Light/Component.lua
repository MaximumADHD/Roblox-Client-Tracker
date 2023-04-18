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
				BorderRadius = 50,
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
					FontFamily = "Gotham SSm",
					FontWeight = "Medium",
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
			BorderRadius = 50,
			Width = 16,
			Height = 16,
		},
		TextLabel = {
			Typography = {
				FontFamily = "Gotham SSm",
				FontWeight = "Book",
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
			LeadingTop = 50,
			TrailingTop = 50,
			TrailingBottom = 50,
			LeadingBottom = 50,
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
				FontFamily = "Gotham SSm",
				FontWeight = "Medium",
				FontSize = 12,
				LineHeight = 1.15,
				LetterSpacing = 0,
			},
		},
	},
}
