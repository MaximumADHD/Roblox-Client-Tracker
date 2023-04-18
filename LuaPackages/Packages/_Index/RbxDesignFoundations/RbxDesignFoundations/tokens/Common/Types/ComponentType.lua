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
					FontFamily: string,
					FontWeight: string,
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
				FontFamily: string,
				FontWeight: string,
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
				FontFamily: string,
				FontWeight: string,
				FontSize: number,
				LineHeight: number,
				LetterSpacing: number,
			},
		},
	},
}
return {}
