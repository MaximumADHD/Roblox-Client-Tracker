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
	Facepile: {
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
		Badge: {
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
			Spacing: number,
			Height: number,
			MinWidth: number,
			ContentColor: {
				Color3: Color3,
				Transparency: number,
			},
			Typography: {
				Font: Enum.Font,
				FontSize: number,
				LineHeight: number,
				LetterSpacing: number,
			},
		},
		Label: {
			ContentColor: {
				Color3: Color3,
				Transparency: number,
			},
			Typography: {
				Font: Enum.Font,
				FontSize: number,
				LineHeight: number,
				LetterSpacing: number,
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
		BorderWidth: number,
		Offset: number,
		Inset: number,
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
		Lighten: {
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
		Darken: {
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
	StatGroup: {
		Gap: number,
	},
	StatItem: {
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
	MediaTile: {
		Container: {
			BorderRadius: number,
		},
		Icon: {
			Size: number,
		},
	},
	StatWidget: {
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
		DataGroup: {
			Gap: number,
		},
		Data: {
			Typography: {
				Font: Enum.Font,
				FontSize: number,
				LineHeight: number,
				LetterSpacing: number,
			},
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
	RateCount: {
		Container: {
			Spacing: number,
			Gap: number,
			BorderRadius: number,
			BackgroundColor: {
				Color3: Color3,
				Transparency: number,
			},
		},
		ButtonGroup: {
			Gap: number,
		},
	},
	PlayerCount: {
		Container: {
			Spacing: number,
			BorderRadius: number,
			BackgroundColor: {
				Color3: Color3,
				Transparency: number,
			},
		},
	},
	VerticalScrollView: {
		Base: {
			Handle: {
				BackgroundColor: {
					Color3: Color3,
					Transparency: number,
				},
				ContentColor: {
					Color3: Color3,
					Transparency: number,
				},
				BorderRadius: number,
			},
			Icon: {
				Size: number,
			},
			Track: {
				Opacity: number,
				Spacing: {
					Top: number,
					Bottom: number,
				},
			},
		},
		Compact: {
			Handle: {
				Width: number,
			},
			Track: {
				Width: number,
			},
		},
		Wide: {
			Handle: {
				Width: number,
			},
			Track: {
				Width: number,
			},
		},
		Gamepad: {
			Handle: {
				Width: number,
			},
			Track: {
				Width: number,
			},
		},
	},
	TextField: {
		Base: {
			Field: {
				BorderColor: {
					Color3: Color3,
					Transparency: number,
				},
				BorderRadius: number,
				Typography: {
					Font: Enum.Font,
					FontSize: number,
					LineHeight: number,
					LetterSpacing: number,
				},
				Spacing: {
					Leading: number,
					Trailing: number,
				},
				Gap: number,
				Opacity: number,
			},
			PlaceholderText: {
				ContentColor: {
					Color3: Color3,
					Transparency: number,
				},
			},
			FieldValue: {
				ContentColor: {
					Color3: Color3,
					Transparency: number,
				},
			},
			IconLeading: {
				ContentColor: {
					Color3: Color3,
					Transparency: number,
				},
				Size: number,
			},
		},
		Error: {
			Field: {
				BorderColor: {
					Color3: Color3,
					Transparency: number,
				},
			},
		},
		Disabled: {
			Field: {
				Opacity: number,
			},
		},
	},
	InputLabel: {
		Base: {
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
			Spacing: {
				Bottom: number,
			},
			Opacity: number,
		},
		Disabled: {
			Opacity: number,
		},
	},
	HelperText: {
		Base: {
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
			Padding: {
				Top: number,
			},
			Opacity: number,
		},
		Error: {
			ContentColor: {
				Color3: Color3,
				Transparency: number,
			},
		},
	},
}
return {}
