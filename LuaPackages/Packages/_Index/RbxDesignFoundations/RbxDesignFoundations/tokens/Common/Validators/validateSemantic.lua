return function(t)
	return {
		Typography = t.strictInterface({
			Title = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.string,
				LetterSpacing = t.string,
			}),
			Header = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.string,
				LetterSpacing = t.string,
			}),
			Subheader = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.string,
				LetterSpacing = t.string,
			}),
			Body = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.string,
				LetterSpacing = t.string,
			}),
			CaptionHeader = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.string,
				LetterSpacing = t.string,
			}),
			CaptionBody = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.string,
				LetterSpacing = t.string,
			}),
			Footer = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.string,
				LetterSpacing = t.string,
			}),
		}),
		Color = t.strictInterface({
			Background = t.strictInterface({
				Default = t.Color3,
				Contrast = t.Color3,
				Muted = t.Color3,
				OnHover = t.Color3,
				OnPress = t.Color3,
			}),
			BackgroundUi = t.strictInterface({
				Default = t.Color3,
				Contrast = t.Color3,
			}),
			Ui = t.strictInterface({
				Default = t.Color3,
				Muted = t.Color3,
				Emphasis = t.Color3,
			}),
			Text = t.strictInterface({
				Default = t.Color3,
				Muted = t.Color3,
				Emphasis = t.Color3,
				Link = t.Color3,
			}),
			Icon = t.strictInterface({
				Default = t.Color3,
				Emphasis = t.Color3,
				OnHover = t.Color3,
			}),
			Button = t.strictInterface({
				ContextualPrimary = t.strictInterface({
					Default = t.Color3,
					OnHover = t.Color3,
					Content = t.Color3,
				}),
				SystemPrimary = t.strictInterface({
					Default = t.Color3,
					OnHover = t.Color3,
					Content = t.Color3,
				}),
				Secondary = t.strictInterface({
					Default = t.Color3,
					OnHover = t.Color3,
					Content = t.Color3,
				}),
			}),
			Common = t.strictInterface({
				Divider = t.Color3,
				Overlay = t.Color3,
				DropShadow = t.Color3,
				NavigationBar = t.Color3,
				Badge = t.Color3,
				BadgeContent = t.Color3,
				Placeholder = t.Color3,
				Online = t.Color3,
				Offline = t.Color3,
				Alert = t.Color3,
				Success = t.Color3,
			}),
		}),
		BorderRadius = t.strictInterface({
			None = t.number,
			Small = t.number,
			Medium = t.number,
			Large = t.number,
			XLarge = t.number,
			Circle = t.string,
		}),
		Icon = t.strictInterface({
			Size = t.strictInterface({
				Small = t.number,
				Medium = t.number,
				Large = t.number,
				XLarge = t.number,
			}),
		}),
	}
end
