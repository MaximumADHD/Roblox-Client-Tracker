return function(t)
	return {
		Typography = t.strictInterface({
			Title = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			Header = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			Subheader = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			Body = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			CaptionHeader = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			CaptionBody = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			Footer = t.strictInterface({
				FontFamily = t.string,
				FontWeight = t.string,
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
		}),
		Color = t.strictInterface({
			Background = t.strictInterface({
				Default = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Contrast = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Muted = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				OnHover = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				OnPress = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
			BackgroundUi = t.strictInterface({
				Default = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Contrast = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
			Ui = t.strictInterface({
				Default = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Muted = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Emphasis = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
			Text = t.strictInterface({
				Default = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Muted = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Emphasis = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Link = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
			Icon = t.strictInterface({
				Default = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Emphasis = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				OnHover = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
			Button = t.strictInterface({
				ContextualPrimary = t.strictInterface({
					Default = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					OnHover = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Content = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				SystemPrimary = t.strictInterface({
					Default = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					OnHover = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Content = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Secondary = t.strictInterface({
					Default = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					OnHover = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Content = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
			}),
			Common = t.strictInterface({
				Divider = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Overlay = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				DropShadow = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				NavigationBar = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Badge = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				BadgeContent = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Placeholder = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Online = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Offline = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Alert = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Success = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
		}),
		Radius = t.strictInterface({
			None = t.number,
			Small = t.number,
			Medium = t.number,
			Large = t.number,
			XLarge = t.number,
			Circle = t.number,
		}),
		Icon = t.strictInterface({
			Size = t.strictInterface({
				Small = t.number,
				Medium = t.number,
				Large = t.number,
				XLarge = t.number,
				XxLarge = t.number,
			}),
		}),
	}
end
