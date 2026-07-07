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
			backgroundUiColor = tokens.Color.Surface.Surface_300,
			separatorColor = tokens.Color.Stroke.Emphasis,
			textColor = tokens.Color.Content.Emphasis,
			buttonColor = tokens.Color.Content.Emphasis,
			buttonTextColor = tokens.Color.Surface.Surface_300,
		},
		Size = {
			displayWidth = 1920,
			promptWidth = 1080,
			imageWidth = 566,
			imageHeight = 324,
			buttonHeight = tokens.Size.Size_1200,
			iconSize = tokens.Size.Size_400,
		},
		Space = {
			titlePadding = tokens.Size.Size_300,
			bodyPadding = tokens.Size.Size_600,
			iconPadding = tokens.Size.Size_100,
		},
		Radius = {
			cornerRadius = tokens.Radius.Medium,
			buttonRadius = tokens.Radius.Small,
		},
		Typography = {
			label = tokens.Typography.TitleLarge,
			header = tokens.Typography.HeadingSmall,
			caption = tokens.Typography.BodyLarge,
		},
	}
end
