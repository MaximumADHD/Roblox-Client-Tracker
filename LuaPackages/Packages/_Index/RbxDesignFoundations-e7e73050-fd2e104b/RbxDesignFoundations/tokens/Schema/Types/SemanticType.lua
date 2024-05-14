--!strict
export type TYPE =  {
	Typography: {
		Title: {
			Font: Enum.Font,
			FontSize: number,
			LineHeight: number,
			LetterSpacing: number,
		},
		Header: {
			Font: Enum.Font,
			FontSize: number,
			LineHeight: number,
			LetterSpacing: number,
		},
		Subheader: {
			Font: Enum.Font,
			FontSize: number,
			LineHeight: number,
			LetterSpacing: number,
		},
		Body: {
			Font: Enum.Font,
			FontSize: number,
			LineHeight: number,
			LetterSpacing: number,
		},
		CaptionHeader: {
			Font: Enum.Font,
			FontSize: number,
			LineHeight: number,
			LetterSpacing: number,
		},
		CaptionBody: {
			Font: Enum.Font,
			FontSize: number,
			LineHeight: number,
			LetterSpacing: number,
		},
		Footer: {
			Font: Enum.Font,
			FontSize: number,
			LineHeight: number,
			LetterSpacing: number,
		},
	},
	Color: {
		Background: {
			Default: {
				Color3: Color3,
				Transparency: number,
			},
			Contrast: {
				Color3: Color3,
				Transparency: number,
			},
			Muted: {
				Color3: Color3,
				Transparency: number,
			},
			OnHover: {
				Color3: Color3,
				Transparency: number,
			},
			OnPress: {
				Color3: Color3,
				Transparency: number,
			},
		},
		BackgroundUi: {
			Default: {
				Color3: Color3,
				Transparency: number,
			},
			Contrast: {
				Color3: Color3,
				Transparency: number,
			},
		},
		Ui: {
			Default: {
				Color3: Color3,
				Transparency: number,
			},
			Muted: {
				Color3: Color3,
				Transparency: number,
			},
			Emphasis: {
				Color3: Color3,
				Transparency: number,
			},
		},
		Text: {
			Default: {
				Color3: Color3,
				Transparency: number,
			},
			Muted: {
				Color3: Color3,
				Transparency: number,
			},
			Emphasis: {
				Color3: Color3,
				Transparency: number,
			},
			Link: {
				Color3: Color3,
				Transparency: number,
			},
			Inverse: {
				Color3: Color3,
				Transparency: number,
			},
		},
		Icon: {
			Default: {
				Color3: Color3,
				Transparency: number,
			},
			Emphasis: {
				Color3: Color3,
				Transparency: number,
			},
			OnHover: {
				Color3: Color3,
				Transparency: number,
			},
		},
		Action: {
			Primary: {
				Background: {
					Color3: Color3,
					Transparency: number,
				},
				Border: {
					Color3: Color3,
					Transparency: number,
				},
				Content: {
					Color3: Color3,
					Transparency: number,
				},
			},
			PrimaryBrand: {
				Background: {
					Color3: Color3,
					Transparency: number,
				},
				Border: {
					Color3: Color3,
					Transparency: number,
				},
				Content: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Secondary: {
				Background: {
					Color3: Color3,
					Transparency: number,
				},
				Border: {
					Color3: Color3,
					Transparency: number,
				},
				Content: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Alert: {
				Background: {
					Color3: Color3,
					Transparency: number,
				},
				Border: {
					Color3: Color3,
					Transparency: number,
				},
				Content: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Subtle: {
				Background: {
					Color3: Color3,
					Transparency: number,
				},
				Border: {
					Color3: Color3,
					Transparency: number,
				},
				Content: {
					Color3: Color3,
					Transparency: number,
				},
			},
		},
		State: {
			Standard: {
				Default: {
					Color3: Color3,
					Transparency: number,
				},
				Hover: {
					Color3: Color3,
					Transparency: number,
				},
				Pressed: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Lighten: {
				Default: {
					Color3: Color3,
					Transparency: number,
				},
				Hover: {
					Color3: Color3,
					Transparency: number,
				},
				Pressed: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Inverse: {
				Default: {
					Color3: Color3,
					Transparency: number,
				},
				Hover: {
					Color3: Color3,
					Transparency: number,
				},
				Pressed: {
					Color3: Color3,
					Transparency: number,
				},
			},
			Darken: {
				Default: {
					Color3: Color3,
					Transparency: number,
				},
				Hover: {
					Color3: Color3,
					Transparency: number,
				},
				Pressed: {
					Color3: Color3,
					Transparency: number,
				},
			},
		},
		Focus: {
			Start: {
				Color3: Color3,
				Transparency: number,
			},
			End: {
				Color3: Color3,
				Transparency: number,
			},
			Gradient: {
				Color3: Color3,
				Transparency: number,
			},
		},
		Common: {
			Divider: {
				Color3: Color3,
				Transparency: number,
			},
			Overlay: {
				Color3: Color3,
				Transparency: number,
			},
			DropShadow: {
				Color3: Color3,
				Transparency: number,
			},
			NavigationBar: {
				Color3: Color3,
				Transparency: number,
			},
			Badge: {
				Color3: Color3,
				Transparency: number,
			},
			BadgeContent: {
				Color3: Color3,
				Transparency: number,
			},
			Placeholder: {
				Color3: Color3,
				Transparency: number,
			},
			Online: {
				Color3: Color3,
				Transparency: number,
			},
			Offline: {
				Color3: Color3,
				Transparency: number,
			},
			Alert: {
				Color3: Color3,
				Transparency: number,
			},
			Success: {
				Color3: Color3,
				Transparency: number,
			},
		},
	},
	Radius: {
		None: number,
		Small: number,
		Medium: number,
		Large: number,
		XLarge: number,
		Circle: number,
	},
	Icon: {
		Size: {
			Small: number,
			Medium: number,
			Large: number,
			XLarge: number,
			XxLarge: number,
		},
	},
	Stroke: {
		Input: number,
		Focus: number,
	},
	Offset: {
		Focus: {
			Standard: number,
			Inset: number,
		},
	},
	Opacity: {
		State: {
			Lighten: {
				Hover: number,
				Pressed: number,
			},
			Darken: {
				Hover: number,
				Pressed: number,
			},
		},
	},
}
return {}
