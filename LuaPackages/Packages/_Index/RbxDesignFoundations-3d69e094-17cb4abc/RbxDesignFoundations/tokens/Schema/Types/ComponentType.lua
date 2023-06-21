--!strict
export type TYPE =  {
	VerticalTile: {
		Base: {
			Container: {
				Background: {
					Color3: Color3,
					Transparency: number,
				},
				BorderWidth: number,
				BorderColor: {
					Color3: Color3,
					Transparency: number,
				},
				DropShadow: {
					X: number,
					Y: number,
					Blur: number,
					Color: {
						Color3: Color3,
						Transparency: number,
					},
				},
				BorderRadius: {
					LeadingTop: number,
					TrailingTop: number,
					TrailingBottom: number,
					LeadingBottom: number,
				},
			},
			ContentTop: {
				Spacing: {
					Top: number,
					Trailing: number,
					Bottom: number,
					Leading: number,
				},
			},
			ContentBottom: {
				Spacing: {
					Top: number,
					Trailing: number,
					Bottom: number,
					Leading: number,
				},
			},
		},
	},
	PlayerTileSmall: {
		Base: {
			Container: {
				Gap: number,
				Spacing: {
					Top: number,
					Trailing: number,
					Bottom: number,
					Leading: number,
				},
			},
			Image: {
				Size: number,
				BackgroundColor: {
					Color3: Color3,
					Transparency: number,
				},
				BorderColor: {
					Color3: Color3,
					Transparency: number,
				},
				BorderRadius: number,
				BorderWidth: number,
			},
			Status: {
				Size: number,
				BackgroundColor: {
					Color3: Color3,
					Transparency: number,
				},
				BorderColor: {
					Color3: Color3,
					Transparency: number,
				},
				BorderWidth: number,
			},
			Content: {
				Gap: number,
				Typography: {
					Font: Enum.Font,
					FontSize: number,
					LineHeight: number,
					LetterSpacing: number,
				},
				ContentColor: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Icon: {
				Size: number,
			},
			Presence: {
				ContentColor: {
					Color3: Color3,
					Transparency: number,
				},
			},
		},
	},
	FacePile: {
		Container: {
			Gap: number,
		},
		FaceGroup: {
			Gap: number,
		},
		Face: {
			BackgroundColor: {
				Color3: Color3,
				Transparency: number,
			},
			BorderWidth: number,
			BorderColor: {
				Color3: Color3,
				Transparency: number,
			},
			BorderRadius: number,
			Width: number,
			Height: number,
		},
		TextLabel: {
			Typography: {
				Font: Enum.Font,
				FontSize: number,
				LineHeight: number,
				LetterSpacing: number,
			},
			ContentColor: {
				Color3: Color3,
				Transparency: number,
			},
		},
	},
	ControllerBar: {
		BackgroundColor: {
			Color3: Color3,
			Transparency: number,
		},
		BorderRadius: {
			LeadingTop: number,
			TrailingTop: number,
			TrailingBottom: number,
			LeadingBottom: number,
		},
		Spacing: {
			Top: number,
			Trailing: number,
			Bottom: number,
			Leading: number,
		},
		Gap: number,
	},
	ControllerBarShortcut: {
		Container: {
			Gap: number,
			ContentColor: {
				Color3: Color3,
				Transparency: number,
			},
		},
		Icon: {
			Size: number,
		},
		Label: {
			Typography: {
				Font: Enum.Font,
				FontSize: number,
				LineHeight: number,
				LetterSpacing: number,
			},
		},
	},
	SelectionCursor: {
		Base: {
			BorderWidth: number,
			Offset: {
				Top: number,
				Trailing: number,
				Bottom: number,
				Leading: number,
			},
			Gradient: {
				Start: {
					Color3: Color3,
					Transparency: number,
				},
				End: {
					Color3: Color3,
					Transparency: number,
				},
			},
		},
		Inset: {
			Offset: {
				Top: number,
				Trailing: number,
				Bottom: number,
				Leading: number,
			},
		},
	},
	StateLayer: {
		Base: {
			BorderWidth: number,
		},
		Standard: {
			Initialize: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Default: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Hover: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Pressed: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Selected: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			SelectedPressed: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Disabled: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
		},
		Static: {
			Initialize: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Default: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Hover: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Pressed: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Selected: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			SelectedPressed: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Disabled: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
		},
		Inverse: {
			Initialize: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Default: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Hover: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Pressed: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Selected: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			SelectedPressed: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Disabled: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
		},
		StaticInverse: {
			Initialize: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Default: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Hover: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Pressed: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Selected: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			SelectedPressed: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Disabled: {
				Color: {
					Color3: Color3,
					Transparency: number,
				},
			},
		},
	},
	MenuCell: {
		Base: {
			Container: {
				Height: number,
				ContentColor: {
					Color3: Color3,
					Transparency: number,
				},
				BackgroundColor: {
					Color3: Color3,
					Transparency: number,
				},
				BorderColor: {
					Color3: Color3,
					Transparency: number,
				},
				BorderRadius: {
					TopLeading: number,
					TopTrailing: number,
					BottomTrailing: number,
					BottomLeading: number,
				},
				BorderWidth: number,
				Spacing: {
					Top: number,
					Trailing: number,
					Bottom: number,
					Leading: number,
				},
			},
			IconFrame: {
				Size: number,
			},
			TextFrame: {
				Spacing: {
					Top: number,
					Trailing: number,
					Bottom: number,
					Leading: number,
				},
			},
			Text: {
				Typography: {
					Font: Enum.Font,
					FontSize: number,
					LineHeight: number,
					LetterSpacing: number,
				},
			},
			CheckFrame: {
				Size: number,
			},
		},
		Divider: {
			Container: {
				BorderWidth: number,
			},
		},
		Disabled: {
			Container: {
				ContentColor: {
					Color3: Color3,
					Transparency: number,
				},
			},
		},
		HasRoundBottom: {
			Container: {
				BorderRadius: {
					BottomTrailing: number,
					BottomLeading: number,
				},
			},
		},
		HasRoundTop: {
			Container: {
				BorderRadius: {
					TopLeading: number,
					TopTrailing: number,
				},
			},
		},
	},
	BaseMenu: {
		BorderRadius: number,
		BackgroundColor: {
			Color3: Color3,
			Transparency: number,
		},
	},
}
return {}
