--!strict
export type TYPE =  {
	VerticalTile: {
		Base: {
			Container: {
				Background: Color3,
				BorderWidth: number,
				BorderColor: Color3,
				DropShadow: {
					X: number,
					Y: number,
					Blur: number,
					Color: Color3,
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
}
return {}
