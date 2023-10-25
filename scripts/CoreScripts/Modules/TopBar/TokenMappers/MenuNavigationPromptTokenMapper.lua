--!strict
local CorePackages = game:GetService("CorePackages")
local Style = require(CorePackages.Workspace.Packages.Style)

type DesignTokens = Style.DesignTokens

type Color = {
	Color3: Color3,
	Transparency: number,
}

type Typography = {
	Font: Enum.Font,
	FontSize: number,
	LetterSpacing: number,
	LineHeight: number,
}

export type MenuNavigationPromptTokens = {
	Color: {
		backgroundUiColor: Color,
		separatorColor: Color,
		textColor: Color,
	},
	Size: {
		displayWidth: number,
		promptWidth: number,
		imageWidth: number,
		imageHeight: number,
		buttonHeight: number,
		iconSize: number,
	},
	Space: {
		titlePadding: number,
		bodyPadding: number,
		iconPadding: number,
	},
	Radius: {
		cornerRadius: number,
	},
	Typography: {
		label: Typography,
		header: Typography,
		caption: Typography,
	},
}

return function(_, tokens: DesignTokens): MenuNavigationPromptTokens
	return {
		Color = {
			backgroundUiColor = tokens.Semantic.Color.BackgroundUi.Default,
			separatorColor = tokens.Semantic.Color.Common.Divider,
			textColor = tokens.Semantic.Color.Text.Emphasis,
		},
		Size = {
			displayWidth = 1920,
			promptWidth = 1080,
			imageWidth = 566,
			imageHeight = 324,
			buttonHeight = tokens.Global.Size_600,
			iconSize = tokens.Global.Size_200,
		},
		Space = {
			titlePadding = tokens.Global.Space_150,
			bodyPadding = tokens.Global.Space_300,
			iconPadding = tokens.Global.Space_50,
		},
		Radius = {
			cornerRadius = tokens.Semantic.Radius.Medium,
		},
		Typography = {
			label = tokens.Semantic.Typography.Subheader,
			header = tokens.Semantic.Typography.Header,
			caption = tokens.Semantic.Typography.Body,
		},
	}
end
