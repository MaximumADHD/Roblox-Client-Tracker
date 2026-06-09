--!strict
local CorePackages = game:GetService("CorePackages")
local Style = require(CorePackages.Workspace.Packages.Style)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagRenameDeprecatedUIBloxTokens = SharedFlags.FFlagRenameDeprecatedUIBloxTokens

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
			backgroundUiColor = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Color.Surface.Surface_300 else tokens.Semantic.Color.BackgroundUi.Default),
			separatorColor = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Color.Stroke.Emphasis else tokens.Semantic.Color.Common.Divider),
			textColor = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Color.Content.Emphasis else tokens.Semantic.Color.Text.Emphasis),
			buttonColor = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Color.Content.Emphasis else tokens.Semantic.Color.Text.Emphasis),
			buttonTextColor = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Color.Surface.Surface_300 else tokens.Semantic.Color.BackgroundUi.Default),
		},
		Size = {
			displayWidth = 1920,
			promptWidth = 1080,
			imageWidth = 566,
			imageHeight = 324,
			buttonHeight = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Size.Size_1200 else tokens.Global.Size_600),
			iconSize = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Size.Size_400 else tokens.Global.Size_200),
		},
		Space = {
			titlePadding = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Size.Size_300 else tokens.Global.Space_150),
			bodyPadding = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Size.Size_600 else tokens.Global.Space_300),
			iconPadding = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Size.Size_100 else tokens.Global.Space_50),
		},
		Radius = {
			cornerRadius = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Radius.Medium else tokens.Semantic.Radius.Medium),
			buttonRadius = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Radius.Small else tokens.Semantic.Radius.Small),
		},
		Typography = {
			label = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Typography.TitleLarge else tokens.Semantic.Typography.Subheader),
			header = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Typography.HeadingSmall else tokens.Semantic.Typography.Header),
			caption = (if FFlagRenameDeprecatedUIBloxTokens then tokens.Typography.BodyLarge else tokens.Semantic.Typography.Body),
		},
	}
end
