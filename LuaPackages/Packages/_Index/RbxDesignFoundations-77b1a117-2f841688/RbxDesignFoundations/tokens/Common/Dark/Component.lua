return function(scale)
	return {
		VerticalTile = {
			Base = {
				Container = {
					Background = {
						Color3 = Color3.new(0.22353, 0.23137, 0.23922),
						Transparency = 0,
					},
					BorderWidth = 1 * scale,
					BorderColor = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0.8,
					},
					DropShadow = {
						X = 0,
						Y = 4 * scale,
						Blur = 8 * scale,
						Color = {
							Color3 = Color3.new(0, 0, 0),
							Transparency = 0.5,
						},
					},
					BorderRadius = {
						LeadingTop = 8 * scale,
						TrailingTop = 8 * scale,
						TrailingBottom = 8 * scale,
						LeadingBottom = 8 * scale,
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
						Top = 8 * scale,
						Trailing = 8 * scale,
						Bottom = 8 * scale,
						Leading = 8 * scale,
					},
				},
			},
		},
		PlayerTileSmall = {
			Base = {
				Container = {
					Gap = 8 * scale,
					Spacing = {
						Top = 8 * scale,
						Trailing = 8 * scale,
						Bottom = 8 * scale,
						Leading = 8 * scale,
					},
				},
				Image = {
					Size = 96 * scale,
					BackgroundColor = {
						Color3 = Color3.new(0.22353, 0.23137, 0.23922),
						Transparency = 0,
					},
					BorderColor = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0.8,
					},
					BorderRadius = 9999,
					BorderWidth = 3 * scale,
				},
				Status = {
					Size = 16 * scale,
					BackgroundColor = {
						Color3 = Color3.new(0, 0.70588, 0.42745),
						Transparency = 0,
					},
					BorderColor = {
						Color3 = Color3.new(0.13725, 0.1451, 0.15294),
						Transparency = 0,
					},
					BorderWidth = 2.500 * scale,
				},
				Content = {
					Gap = 2 * scale,
					Typography = {
						Font = Enum.Font.GothamMedium,
						FontSize = 12 * scale,
						LineHeight = 1.150,
						LetterSpacing = 0,
					},
					ContentColor = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0,
					},
				},
				Icon = {
					Size = 16 * scale,
				},
				Presence = {
					ContentColor = {
						Color3 = Color3.new(0.74118, 0.7451, 0.7451),
						Transparency = 0,
					},
				},
			},
		},
		Facepile = {
			Container = {
				Gap = 4 * scale,
			},
			FaceGroup = {
				Gap = -6 * scale,
			},
			Face = {
				BackgroundColor = {
					Color3 = Color3.new(0.74118, 0.7451, 0.7451),
					Transparency = 0,
				},
				BorderWidth = 2 * scale,
				BorderColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				BorderRadius = 9999,
				Width = 16 * scale,
				Height = 16 * scale,
			},
			Badge = {
				BackgroundColor = {
					Color3 = Color3.new(0, 0.70588, 0.42745),
					Transparency = 0,
				},
				BorderWidth = 2 * scale,
				BorderColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				BorderRadius = 9999,
				Spacing = 4 * scale,
				Height = 16 * scale,
				MinWidth = 16 * scale,
				ContentColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				Typography = {
					Font = Enum.Font.GothamMedium,
					FontSize = 10 * scale,
					LineHeight = 1.200,
					LetterSpacing = 0,
				},
			},
			Label = {
				ContentColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.3,
				},
				Typography = {
					Font = Enum.Font.Gotham,
					FontSize = 12 * scale,
					LineHeight = 1.150,
					LetterSpacing = 0,
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
				Top = 8 * scale,
				Trailing = 12 * scale,
				Bottom = 8 * scale,
				Leading = 12 * scale,
			},
			Gap = 16 * scale,
		},
		ControllerBarShortcut = {
			Container = {
				Gap = 4 * scale,
				ContentColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
			},
			Icon = {
				Size = 36 * scale,
			},
			Label = {
				Typography = {
					Font = Enum.Font.GothamMedium,
					FontSize = 12 * scale,
					LineHeight = 1.150,
					LetterSpacing = 0,
				},
			},
		},
		SelectionCursor = {
			BorderWidth = 2 * scale,
			Offset = 6 * scale,
			Inset = 0,
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
		StateLayer = {
			Base = {
				BorderWidth = 1 * scale,
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
					Height = 56 * scale,
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
						Trailing = 12 * scale,
						Bottom = 0,
						Leading = 12 * scale,
					},
				},
				IconFrame = {
					Size = 32 * scale,
				},
				TextFrame = {
					Spacing = {
						Top = 0,
						Trailing = 12 * scale,
						Bottom = 0,
						Leading = 12 * scale,
					},
				},
				Text = {
					Typography = {
						Font = Enum.Font.GothamMedium,
						FontSize = 16 * scale,
						LineHeight = 1.250,
						LetterSpacing = 0,
					},
				},
				CheckFrame = {
					Size = 32 * scale,
				},
			},
			Divider = {
				Container = {
					BorderWidth = 1 * scale,
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
						BottomTrailing = 8 * scale,
						BottomLeading = 8 * scale,
					},
				},
			},
			HasRoundTop = {
				Container = {
					BorderRadius = {
						TopLeading = 8 * scale,
						TopTrailing = 8 * scale,
					},
				},
			},
		},
		BaseMenu = {
			BorderRadius = 8 * scale,
			BackgroundColor = {
				Color3 = Color3.new(0.22353, 0.23137, 0.23922),
				Transparency = 0,
			},
		},
		StatGroup = {
			Gap = 8 * scale,
		},
		StatItem = {
			Container = {
				Gap = 2 * scale,
				ContentColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.3,
				},
			},
			Icon = {
				Size = 16 * scale,
			},
			Label = {
				Typography = {
					Font = Enum.Font.Gotham,
					FontSize = 12 * scale,
					LineHeight = 1.150,
					LetterSpacing = 0,
				},
			},
		},
		MediaTile = {
			Container = {
				BorderRadius = 8 * scale,
			},
			Icon = {
				Size = 36 * scale,
			},
		},
		StatWidget = {
			Container = {
				Gap = 8 * scale,
				ContentColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
			},
			Icon = {
				Size = 48 * scale,
			},
			DataGroup = {
				Gap = 0,
			},
			Data = {
				Typography = {
					Font = Enum.Font.GothamBlack,
					FontSize = 34 * scale,
					LineHeight = 1.200,
					LetterSpacing = 0,
				},
			},
			Label = {
				Typography = {
					Font = Enum.Font.GothamMedium,
					FontSize = 16 * scale,
					LineHeight = 1.250,
					LetterSpacing = 0,
				},
			},
		},
		RateCount = {
			Container = {
				Spacing = 8 * scale,
				Gap = 8 * scale,
				BorderRadius = 8 * scale,
				BackgroundColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.7,
				},
			},
			ButtonGroup = {
				Gap = 8 * scale,
			},
		},
		PlayerCount = {
			Container = {
				Spacing = 8 * scale,
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
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0.7,
					},
					ContentColor = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0,
					},
					BorderRadius = 9999,
				},
				Icon = {
					Size = 36 * scale,
				},
				Track = {
					Opacity = 0,
					Spacing = {
						Top = 4 * scale,
						Bottom = 4 * scale,
					},
				},
			},
			Compact = {
				Handle = {
					Width = 2 * scale,
				},
				Track = {
					Width = 12 * scale,
				},
			},
			Wide = {
				Handle = {
					Width = 8 * scale,
				},
				Track = {
					Width = 16 * scale,
				},
			},
			Gamepad = {
				Handle = {
					Width = 16 * scale,
				},
				Track = {
					Width = 16 * scale,
				},
			},
		},
		TextField = {
			Base = {
				Field = {
					BorderColor = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0.8,
					},
					BorderRadius = 8 * scale,
					Typography = {
						Font = Enum.Font.Gotham,
						FontSize = 16 * scale,
						LineHeight = 1.250,
						LetterSpacing = 0,
					},
					Spacing = {
						Leading = 12 * scale,
						Trailing = 12 * scale,
					},
					Gap = 8 * scale,
					Opacity = 1,
				},
				PlaceholderText = {
					ContentColor = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0.3,
					},
				},
				FieldValue = {
					ContentColor = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0,
					},
				},
				IconLeading = {
					ContentColor = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0.3,
					},
					Size = 16 * scale,
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
					FontSize = 12 * scale,
					LineHeight = 1.150,
					LetterSpacing = 0,
				},
				ContentColor = {
					Color3 = Color3.new(0.74118, 0.7451, 0.7451),
					Transparency = 0,
				},
				Spacing = {
					Bottom = 4 * scale,
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
					FontSize = 10 * scale,
					LineHeight = 1.200,
					LetterSpacing = 0,
				},
				ContentColor = {
					Color3 = Color3.new(0.74118, 0.7451, 0.7451),
					Transparency = 0,
				},
				Padding = {
					Top = 4 * scale,
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
end
