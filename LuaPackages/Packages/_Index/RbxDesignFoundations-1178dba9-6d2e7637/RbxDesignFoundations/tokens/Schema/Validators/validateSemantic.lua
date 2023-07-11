return function(t)
	return {
		Typography = t.strictInterface({
			Title = t.strictInterface({
				Font = t.enum(Enum.Font),
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			Header = t.strictInterface({
				Font = t.enum(Enum.Font),
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			Subheader = t.strictInterface({
				Font = t.enum(Enum.Font),
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			Body = t.strictInterface({
				Font = t.enum(Enum.Font),
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			CaptionHeader = t.strictInterface({
				Font = t.enum(Enum.Font),
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			CaptionBody = t.strictInterface({
				Font = t.enum(Enum.Font),
				FontSize = t.number,
				LineHeight = t.number,
				LetterSpacing = t.number,
			}),
			Footer = t.strictInterface({
				Font = t.enum(Enum.Font),
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
				Inverse = t.strictInterface({
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
			Action = t.strictInterface({
				Primary = t.strictInterface({
					Background = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Border = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Content = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				PrimaryBrand = t.strictInterface({
					Background = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Border = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Content = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Secondary = t.strictInterface({
					Background = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Border = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Content = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Alert = t.strictInterface({
					Background = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Border = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Content = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Subtle = t.strictInterface({
					Background = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Border = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Content = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
			}),
			State = t.strictInterface({
				Standard = t.strictInterface({
					Default = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Hover = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Pressed = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Static = t.strictInterface({
					Default = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Hover = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Pressed = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Inverse = t.strictInterface({
					Default = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Hover = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Pressed = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				StaticInverse = t.strictInterface({
					Default = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Hover = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Pressed = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
			}),
			Focus = t.strictInterface({
				Start = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				End = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Gradient = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
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
		Stroke = t.strictInterface({
			Input = t.number,
			Focus = t.number,
		}),
		Offset = t.strictInterface({
			Focus = t.strictInterface({
				Standard = t.number,
				Inset = t.number,
			}),
		}),
		Opacity = t.strictInterface({
			State = t.strictInterface({
				Lighten = t.strictInterface({
					Hover = t.number,
					Pressed = t.number,
				}),
				Darken = t.strictInterface({
					Hover = t.number,
					Pressed = t.number,
				}),
			}),
		}),
	}
end
