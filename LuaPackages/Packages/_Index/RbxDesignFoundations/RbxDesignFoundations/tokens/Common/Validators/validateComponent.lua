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
						FontFamily = t.string,
						FontWeight = t.string,
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
		FacePile = t.strictInterface({
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
			TextLabel = t.strictInterface({
				Typography = t.strictInterface({
					FontFamily = t.string,
					FontWeight = t.string,
					FontSize = t.number,
					LineHeight = t.number,
					LetterSpacing = t.number,
				}),
				ContentColor = t.strictInterface({
					Color3 = t.Color3,
					Transparency = t.number,
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
					FontFamily = t.string,
					FontWeight = t.string,
					FontSize = t.number,
					LineHeight = t.number,
					LetterSpacing = t.number,
				}),
			}),
		}),
	}
end
