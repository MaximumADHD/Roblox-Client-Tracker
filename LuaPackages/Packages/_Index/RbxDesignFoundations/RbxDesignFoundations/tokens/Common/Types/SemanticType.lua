--!strict
export type TYPE =  {
	Typography: {
		Title: {
			FontFamily: string,
			FontWeight: string,
			FontSize: number,
			LineHeight: string,
			LetterSpacing: string,
		},
		Header: {
			FontFamily: string,
			FontWeight: string,
			FontSize: number,
			LineHeight: string,
			LetterSpacing: string,
		},
		Subheader: {
			FontFamily: string,
			FontWeight: string,
			FontSize: number,
			LineHeight: string,
			LetterSpacing: string,
		},
		Body: {
			FontFamily: string,
			FontWeight: string,
			FontSize: number,
			LineHeight: string,
			LetterSpacing: string,
		},
		CaptionHeader: {
			FontFamily: string,
			FontWeight: string,
			FontSize: number,
			LineHeight: string,
			LetterSpacing: string,
		},
		CaptionBody: {
			FontFamily: string,
			FontWeight: string,
			FontSize: number,
			LineHeight: string,
			LetterSpacing: string,
		},
		Footer: {
			FontFamily: string,
			FontWeight: string,
			FontSize: number,
			LineHeight: string,
			LetterSpacing: string,
		},
	},
	Color: {
		Background: {
			Default: Color3,
			Contrast: Color3,
			Muted: Color3,
			OnHover: Color3,
			OnPress: Color3,
		},
		BackgroundUi: {
			Default: Color3,
			Contrast: Color3,
		},
		Ui: {
			Default: Color3,
			Muted: Color3,
			Emphasis: Color3,
		},
		Text: {
			Default: Color3,
			Muted: Color3,
			Emphasis: Color3,
			Link: Color3,
		},
		Icon: {
			Default: Color3,
			Emphasis: Color3,
			OnHover: Color3,
		},
		Button: {
			ContextualPrimary: {
				Default: Color3,
				OnHover: Color3,
				Content: Color3,
			},
			SystemPrimary: {
				Default: Color3,
				OnHover: Color3,
				Content: Color3,
			},
			Secondary: {
				Default: Color3,
				OnHover: Color3,
				Content: Color3,
			},
		},
		Common: {
			Divider: Color3,
			Overlay: Color3,
			DropShadow: Color3,
			NavigationBar: Color3,
			Badge: Color3,
			BadgeContent: Color3,
			Placeholder: Color3,
			Online: Color3,
			Offline: Color3,
			Alert: Color3,
			Success: Color3,
		},
	},
	BorderRadius: {
		None: number,
		Small: number,
		Medium: number,
		Large: number,
		XLarge: number,
		Circle: string,
	},
	Icon: {
		Size: {
			Small: number,
			Medium: number,
			Large: number,
			XLarge: number,
		},
	},
}
return {}
