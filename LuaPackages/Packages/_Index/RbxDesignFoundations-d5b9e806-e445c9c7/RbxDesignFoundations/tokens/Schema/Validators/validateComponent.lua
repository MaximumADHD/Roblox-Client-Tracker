return function(t)
	return {
		VerticalTile = t.strictInterface({
			Base = t.strictInterface({
				Container = t.strictInterface({
					Background = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					BorderWidth = t.number,
					BorderColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					DropShadow = t.strictInterface({
						X = t.number,
						Y = t.number,
						Blur = t.number,
						Color = t.strictInterface({
							Color3 = t.Color3,
							Transparency = t.number,
						}),
					}),
					BorderRadius = t.strictInterface({
						LeadingTop = t.number,
						TrailingTop = t.number,
						TrailingBottom = t.number,
						LeadingBottom = t.number,
					}),
				}),
				ContentTop = t.strictInterface({
					Spacing = t.strictInterface({
						Top = t.number,
						Trailing = t.number,
						Bottom = t.number,
						Leading = t.number,
					}),
				}),
				ContentBottom = t.strictInterface({
					Spacing = t.strictInterface({
						Top = t.number,
						Trailing = t.number,
						Bottom = t.number,
						Leading = t.number,
					}),
				}),
			}),
		}),
		PlayerTileSmall = t.strictInterface({
			Base = t.strictInterface({
				Container = t.strictInterface({
					Gap = t.number,
					Spacing = t.strictInterface({
						Top = t.number,
						Trailing = t.number,
						Bottom = t.number,
						Leading = t.number,
					}),
				}),
				Image = t.strictInterface({
					Size = t.number,
					BackgroundColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					BorderColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					BorderRadius = t.number,
					BorderWidth = t.number,
				}),
				Status = t.strictInterface({
					Size = t.number,
					BackgroundColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					BorderColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					BorderWidth = t.number,
				}),
				Content = t.strictInterface({
					Gap = t.number,
					Typography = t.strictInterface({
						Font = t.enum(Enum.Font),
						FontSize = t.number,
						LineHeight = t.number,
						LetterSpacing = t.number,
					}),
					ContentColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Icon = t.strictInterface({
					Size = t.number,
				}),
				Presence = t.strictInterface({
					ContentColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
			}),
		}),
		Facepile = t.strictInterface({
			Container = t.strictInterface({
				Gap = t.number,
			}),
			FaceGroup = t.strictInterface({
				Gap = t.number,
			}),
			Face = t.strictInterface({
				BackgroundColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				BorderWidth = t.number,
				BorderColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				BorderRadius = t.number,
				Width = t.number,
				Height = t.number,
			}),
			Badge = t.strictInterface({
				BackgroundColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				BorderWidth = t.number,
				BorderColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				BorderRadius = t.number,
				Spacing = t.number,
				Height = t.number,
				MinWidth = t.number,
				ContentColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Typography = t.strictInterface({
					Font = t.enum(Enum.Font),
					FontSize = t.number,
					LineHeight = t.number,
					LetterSpacing = t.number,
				}),
			}),
			Label = t.strictInterface({
				ContentColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Typography = t.strictInterface({
					Font = t.enum(Enum.Font),
					FontSize = t.number,
					LineHeight = t.number,
					LetterSpacing = t.number,
				}),
			}),
		}),
		ControllerBar = t.strictInterface({
			BackgroundColor = t.strictInterface({
				Color3 = t.Color3,
				Transparency = t.number,
			}),
			BorderRadius = t.strictInterface({
				LeadingTop = t.number,
				TrailingTop = t.number,
				TrailingBottom = t.number,
				LeadingBottom = t.number,
			}),
			Spacing = t.strictInterface({
				Top = t.number,
				Trailing = t.number,
				Bottom = t.number,
				Leading = t.number,
			}),
			Gap = t.number,
		}),
		ControllerBarShortcut = t.strictInterface({
			Container = t.strictInterface({
				Gap = t.number,
				ContentColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
			Icon = t.strictInterface({
				Size = t.number,
			}),
			Label = t.strictInterface({
				Typography = t.strictInterface({
					Font = t.enum(Enum.Font),
					FontSize = t.number,
					LineHeight = t.number,
					LetterSpacing = t.number,
				}),
			}),
		}),
		SelectionCursor = t.strictInterface({
			BorderWidth = t.number,
			Offset = t.number,
			Inset = t.number,
			Gradient = t.strictInterface({
				Start = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				End = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
		}),
		StateLayer = t.strictInterface({
			Base = t.strictInterface({
				BorderWidth = t.number,
			}),
			Standard = t.strictInterface({
				Initialize = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Default = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Hover = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Pressed = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Selected = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				SelectedPressed = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Disabled = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
			}),
			Static = t.strictInterface({
				Initialize = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Default = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Hover = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Pressed = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Selected = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				SelectedPressed = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Disabled = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
			}),
			Inverse = t.strictInterface({
				Initialize = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Default = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Hover = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Pressed = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Selected = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				SelectedPressed = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Disabled = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
			}),
			StaticInverse = t.strictInterface({
				Initialize = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Default = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Hover = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Pressed = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Selected = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				SelectedPressed = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				Disabled = t.strictInterface({
					Color = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
			}),
		}),
		MenuCell = t.strictInterface({
			Base = t.strictInterface({
				Container = t.strictInterface({
					Height = t.number,
					ContentColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					BackgroundColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					BorderColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					BorderRadius = t.strictInterface({
						TopLeading = t.number,
						TopTrailing = t.number,
						BottomTrailing = t.number,
						BottomLeading = t.number,
					}),
					BorderWidth = t.number,
					Spacing = t.strictInterface({
						Top = t.number,
						Trailing = t.number,
						Bottom = t.number,
						Leading = t.number,
					}),
				}),
				IconFrame = t.strictInterface({
					Size = t.number,
				}),
				TextFrame = t.strictInterface({
					Spacing = t.strictInterface({
						Top = t.number,
						Trailing = t.number,
						Bottom = t.number,
						Leading = t.number,
					}),
				}),
				Text = t.strictInterface({
					Typography = t.strictInterface({
						Font = t.enum(Enum.Font),
						FontSize = t.number,
						LineHeight = t.number,
						LetterSpacing = t.number,
					}),
				}),
				CheckFrame = t.strictInterface({
					Size = t.number,
				}),
			}),
			Divider = t.strictInterface({
				Container = t.strictInterface({
					BorderWidth = t.number,
				}),
			}),
			Disabled = t.strictInterface({
				Container = t.strictInterface({
					ContentColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
			}),
			HasRoundBottom = t.strictInterface({
				Container = t.strictInterface({
					BorderRadius = t.strictInterface({
						BottomTrailing = t.number,
						BottomLeading = t.number,
					}),
				}),
			}),
			HasRoundTop = t.strictInterface({
				Container = t.strictInterface({
					BorderRadius = t.strictInterface({
						TopLeading = t.number,
						TopTrailing = t.number,
					}),
				}),
			}),
		}),
		BaseMenu = t.strictInterface({
			BorderRadius = t.number,
			BackgroundColor = t.strictInterface({
				Color3 = t.Color3,
				Transparency = t.number,
			}),
		}),
		StatGroup = t.strictInterface({
			Gap = t.number,
		}),
		StatItem = t.strictInterface({
			Container = t.strictInterface({
				Gap = t.number,
				ContentColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
			Icon = t.strictInterface({
				Size = t.number,
			}),
			Label = t.strictInterface({
				Typography = t.strictInterface({
					Font = t.enum(Enum.Font),
					FontSize = t.number,
					LineHeight = t.number,
					LetterSpacing = t.number,
				}),
			}),
		}),
		MediaTile = t.strictInterface({
			Container = t.strictInterface({
				BorderRadius = t.number,
			}),
			Icon = t.strictInterface({
				Size = t.number,
			}),
		}),
		StatWidget = t.strictInterface({
			Container = t.strictInterface({
				Gap = t.number,
				ContentColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
			Icon = t.strictInterface({
				Size = t.number,
			}),
			DataGroup = t.strictInterface({
				Gap = t.number,
			}),
			Data = t.strictInterface({
				Typography = t.strictInterface({
					Font = t.enum(Enum.Font),
					FontSize = t.number,
					LineHeight = t.number,
					LetterSpacing = t.number,
				}),
			}),
			Label = t.strictInterface({
				Typography = t.strictInterface({
					Font = t.enum(Enum.Font),
					FontSize = t.number,
					LineHeight = t.number,
					LetterSpacing = t.number,
				}),
			}),
		}),
		RateCount = t.strictInterface({
			Container = t.strictInterface({
				Spacing = t.number,
				Gap = t.number,
				BorderRadius = t.number,
				BackgroundColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
			ButtonGroup = t.strictInterface({
				Gap = t.number,
			}),
		}),
		PlayerCount = t.strictInterface({
			Container = t.strictInterface({
				Spacing = t.number,
				BorderRadius = t.number,
				BackgroundColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
		}),
		VerticalScrollView = t.strictInterface({
			Base = t.strictInterface({
				Handle = t.strictInterface({
					BackgroundColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					ContentColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					BorderRadius = t.number,
				}),
				Icon = t.strictInterface({
					Size = t.number,
				}),
				Track = t.strictInterface({
					Opacity = t.number,
					Spacing = t.strictInterface({
						Top = t.number,
						Bottom = t.number,
					}),
				}),
			}),
			Compact = t.strictInterface({
				Handle = t.strictInterface({
					Width = t.number,
				}),
				Track = t.strictInterface({
					Width = t.number,
				}),
			}),
			Wide = t.strictInterface({
				Handle = t.strictInterface({
					Width = t.number,
				}),
				Track = t.strictInterface({
					Width = t.number,
				}),
			}),
			Gamepad = t.strictInterface({
				Handle = t.strictInterface({
					Width = t.number,
				}),
				Track = t.strictInterface({
					Width = t.number,
				}),
			}),
		}),
		TextField = t.strictInterface({
			Base = t.strictInterface({
				Field = t.strictInterface({
					BorderColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					BorderRadius = t.number,
					Typography = t.strictInterface({
						Font = t.enum(Enum.Font),
						FontSize = t.number,
						LineHeight = t.number,
						LetterSpacing = t.number,
					}),
					Spacing = t.strictInterface({
						Leading = t.number,
						Trailing = t.number,
					}),
					Gap = t.number,
					Opacity = t.number,
				}),
				PlaceholderText = t.strictInterface({
					ContentColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				FieldValue = t.strictInterface({
					ContentColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
				IconLeading = t.strictInterface({
					ContentColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
					Size = t.number,
				}),
			}),
			Error = t.strictInterface({
				Field = t.strictInterface({
					BorderColor = t.strictInterface({
						Color3 = t.Color3,
						Transparency = t.number,
					}),
				}),
			}),
			Disabled = t.strictInterface({
				Field = t.strictInterface({
					Opacity = t.number,
				}),
			}),
		}),
		InputLabel = t.strictInterface({
			Base = t.strictInterface({
				Typography = t.strictInterface({
					Font = t.enum(Enum.Font),
					FontSize = t.number,
					LineHeight = t.number,
					LetterSpacing = t.number,
				}),
				ContentColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Spacing = t.strictInterface({
					Bottom = t.number,
				}),
				Opacity = t.number,
			}),
			Disabled = t.strictInterface({
				Opacity = t.number,
			}),
		}),
		HelperText = t.strictInterface({
			Base = t.strictInterface({
				Typography = t.strictInterface({
					Font = t.enum(Enum.Font),
					FontSize = t.number,
					LineHeight = t.number,
					LetterSpacing = t.number,
				}),
				ContentColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
				Padding = t.strictInterface({
					Top = t.number,
				}),
				Opacity = t.number,
			}),
			Error = t.strictInterface({
				ContentColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
				}),
			}),
		}),
	}
end
