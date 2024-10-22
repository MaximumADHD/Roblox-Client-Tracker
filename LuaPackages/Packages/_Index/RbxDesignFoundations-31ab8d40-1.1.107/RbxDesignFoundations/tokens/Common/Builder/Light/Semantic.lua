return function(scale)
	return {
		Typography = {
			Title = {
				Font = Enum.Font.BuilderSansBold,
				FontSize = 35.280 * scale,
				LineHeight = 1.032,
				LetterSpacing = -0.01,
			},
			Header = {
				Font = Enum.Font.BuilderSansBold,
				FontSize = 25.200 * scale,
				LineHeight = 0.952,
				LetterSpacing = -0.01,
			},
			Subheader = {
				Font = Enum.Font.BuilderSansBold,
				FontSize = 20.160 * scale,
				LineHeight = 1.111,
				LetterSpacing = 0,
			},
			Body = {
				Font = Enum.Font.BuilderSans,
				FontSize = 20.160 * scale,
				LineHeight = 1.111,
				LetterSpacing = 0,
			},
			CaptionHeader = {
				Font = Enum.Font.BuilderSansMedium,
				FontSize = 15.120 * scale,
				LineHeight = 1.032,
				LetterSpacing = 0.01,
			},
			CaptionBody = {
				Font = Enum.Font.BuilderSans,
				FontSize = 15.120 * scale,
				LineHeight = 1.032,
				LetterSpacing = 0,
			},
			Footer = {
				Font = Enum.Font.BuilderSansMedium,
				FontSize = 12.600 * scale,
				LineHeight = 1.111,
				LetterSpacing = 0.01,
			},
		},
		Color = {
			Background = {
				Default = {
					Color3 = Color3.new(0.94902, 0.95686, 0.96078),
					Transparency = 0,
				},
				Contrast = {
					Color3 = Color3.new(0.87059, 0.88235, 0.8902),
					Transparency = 0,
				},
				Muted = {
					Color3 = Color3.new(0.78039, 0.79608, 0.80784),
					Transparency = 0,
				},
				OnHover = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.9,
				},
				OnPress = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.9,
				},
			},
			BackgroundUi = {
				Default = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				Contrast = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.1,
				},
			},
			Ui = {
				Default = {
					Color3 = Color3.new(0.74118, 0.7451, 0.7451),
					Transparency = 0,
				},
				Muted = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.9,
				},
				Emphasis = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.7,
				},
			},
			Text = {
				Default = {
					Color3 = Color3.new(0.37647, 0.38039, 0.38431),
					Transparency = 0,
				},
				Muted = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.4,
				},
				Emphasis = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				Link = {
					Color3 = Color3.new(0.32157, 0.67843, 0.95686),
					Transparency = 0,
				},
				Inverse = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
			},
			Icon = {
				Default = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.4,
				},
				Emphasis = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				OnHover = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
			},
			Action = {
				Primary = {
					Background = {
						Color3 = Color3.new(0.22353, 0.23137, 0.23922),
						Transparency = 0,
					},
					Border = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 1,
					},
					Content = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0,
					},
				},
				PrimaryBrand = {
					Background = {
						Color3 = Color3.new(0, 0.70588, 0.42745),
						Transparency = 0,
					},
					Border = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 1,
					},
					Content = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0,
					},
				},
				Secondary = {
					Background = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 1,
					},
					Border = {
						Color3 = Color3.new(0.39608, 0.4, 0.40784),
						Transparency = 0,
					},
					Content = {
						Color3 = Color3.new(0.22353, 0.23137, 0.23922),
						Transparency = 0,
					},
				},
				Alert = {
					Background = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 1,
					},
					Border = {
						Color3 = Color3.new(0.96863, 0.29412, 0.32157),
						Transparency = 0,
					},
					Content = {
						Color3 = Color3.new(0.96863, 0.29412, 0.32157),
						Transparency = 0,
					},
				},
				Subtle = {
					Background = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 1,
					},
					Border = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 1,
					},
					Content = {
						Color3 = Color3.new(0.22353, 0.23137, 0.23922),
						Transparency = 0,
					},
				},
			},
			State = {
				Standard = {
					Default = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 1,
					},
					Hover = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 0.88,
					},
					Pressed = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 0.8,
					},
				},
				Lighten = {
					Default = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 1,
					},
					Hover = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0.88,
					},
					Pressed = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0.8,
					},
				},
				Inverse = {
					Default = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 1,
					},
					Hover = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0.88,
					},
					Pressed = {
						Color3 = Color3.new(1, 1, 1),
						Transparency = 0.8,
					},
				},
				Darken = {
					Default = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 1,
					},
					Hover = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 0.88,
					},
					Pressed = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 0.8,
					},
				},
			},
			Focus = {
				Start = {
					Color3 = Color3.new(0.74118, 0.7451, 0.7451),
					Transparency = 0,
				},
				End = {
					Color3 = Color3.new(0.74118, 0.7451, 0.7451),
					Transparency = 0,
				},
				Gradient = {
					Color3 = Color3.new(0.74118, 0.7451, 0.7451),
					Transparency = 0,
				},
			},
			Common = {
				Divider = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0.8,
				},
				Overlay = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.7,
				},
				DropShadow = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.7,
				},
				NavigationBar = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				Badge = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				BadgeContent = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
				Placeholder = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.9,
				},
				Online = {
					Color3 = Color3.new(0, 0.70588, 0.42745),
					Transparency = 0,
				},
				Offline = {
					Color3 = Color3.new(0, 0, 0),
					Transparency = 0.5,
				},
				Alert = {
					Color3 = Color3.new(0.96863, 0.29412, 0.32157),
					Transparency = 0,
				},
				Success = {
					Color3 = Color3.new(0, 0.70588, 0.42745),
					Transparency = 0,
				},
			},
		},
		Radius = {
			None = 0,
			Small = 4 * scale,
			Medium = 8 * scale,
			Large = 12 * scale,
			XLarge = 16 * scale,
			Circle = 9999,
		},
		Icon = {
			Size = {
				Small = 16 * scale,
				Medium = 36 * scale,
				Large = 48 * scale,
				XLarge = 96 * scale,
				XxLarge = 192 * scale,
			},
		},
		Stroke = {
			Input = 1 * scale,
			Focus = 2 * scale,
		},
		Offset = {
			Focus = {
				Standard = 6 * scale,
				Inset = 0,
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
	}
end
