local Plugin = script.Parent.Parent.Parent

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local FONT_SIZE_SMALL = 14

local function getUILibraryTheme()
	local theme = settings().Studio.Theme

	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local UILibraryPalette = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, c, m)

	local mainColor = theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	local isDark = (mainColor.r + mainColor.g + mainColor.b) / 3 < 0.5

	local UILibraryOverrides = {
		assetPreview = {
			fontBold = Enum.Font.GothamBold,
			textSizeMedium = 16,
			textSizeLarge = 18,

			modelPreview = {
				background = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(227, 227, 227)
			},

			imagePreview = {
				background = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(227, 227, 227),
				textColor = theme:GetColor(c.MainText)
			},

			thumbnailIconPreview = {
				background = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(227, 227, 227),
				textColor = theme:GetColor(c.MainText),
			},

			previewButtons = {
				backgroundTrans = isDark and 0.25 or 0.25,
				backgroundColor = isDark and Color3.fromRGB(102, 102, 102) or Color3.fromRGB(158, 158, 158),
				backgroundDisabledColor = isDark and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(100, 100, 100),
			},

			vote = {
				background = isDark and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(0, 0, 0),
				boderColor = isDark and Color3.fromRGB(67, 67, 67) or Color3.fromRGB(229, 229, 229),

				button = {
					backgroundColor = isDark and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(178, 178, 178),
					backgroundTrans = isDark and 0.7 or 0,
				},

				voteUp = {
					borderColor = isDark and Color3.fromRGB(124, 124, 124) or Color3.fromRGB(178, 178, 178),
				},

				voteDown = {
					borderColor = isDark and Color3.fromRGB(124, 124, 124) or Color3.fromRGB(178, 178, 178),
				},
			},

			treeViewButton = {
				backgroundColor = isDark and Color3.fromRGB(102, 102, 102) or Color3.fromRGB(158, 158, 158),
				backgroundDisabledColor = isDark and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(100, 100, 100),
			},

			actionBar = {
				background = isDark and theme:GetColor(c.InputFieldBackground) or Color3.fromRGB(255,255,255),

				button = {
					backgroundColor = Color3.fromRGB(0, 162, 255),
					backgroundDisabledColor = isDark and Color3.fromRGB(60, 60, 60) or Color3.fromRGB(153, 218, 255),
				},

				showMore = {
					backgroundColor = isDark and Color3.fromRGB(109, 109, 109) or Color3.fromRGB(168,168,168),
					borderColor = isDark and Color3.fromRGB(109, 109, 109) or Color3.fromRGB(207, 207, 207),
				},

				text = {
					color = Color3.fromRGB(255, 255, 255),
					colorDisabled = isDark and Color3.fromRGB(102, 102, 102) or Color3.fromRGB(255, 255, 255),
				},

				padding = 12,
				centerPadding = 10,

				robuxSize = UDim2.fromOffset(16,16),

				images = {
					showMore = "rbxasset://textures/StudioToolbox/AssetPreview/more.png",
					robuxSmall = "rbxasset://textures/ui/common/robux_small.png",
					colorWhite = Color3.fromRGB(255, 255, 255),
				}
			},

			description = {
				background = theme:GetColor(c.MainBackground),
				leftTextColor = isDark and Color3.fromRGB(170, 170, 170) or Color3.fromRGB(117, 117, 117),
				rightTextColor = isDark and Color3.fromRGB(204, 204, 204) or theme:GetColor(c.MainText),
				lineColor = isDark and Color3.fromRGB(34, 34, 34) or Color3.fromRGB(227, 227, 227),
			},
		},

		instanceTreeView = {
			background = isDark and theme:GetColor(c.ScrollBarBackground) or theme:GetColor(c.TabBar),
			arrowColor = Color3.fromRGB(140, 140, 140),
			selectedText = Color3.fromRGB(255, 255, 255),
			hover = theme:GetColor(c.Item, m.Hover),
			selected = theme:GetColor(c.Item, m.Selected),
		},

		searchBar = {
			backgroundColor = theme:GetColor(c.InputFieldBackground),
			border = {
				hover = {
					color = theme:GetColor(c.MainText),
				},
				selected = {
					color = theme:GetColor(c.Button, m.Selected),
				},
				color = theme:GetColor(c.Border),
			},
			buttons = {
				size = 24,
			}
		},

		loadingIndicator = {
			endColor = theme:GetColor(c.Button, m.Selected),
		},

		tooltip = {
			textSize = FONT_SIZE_SMALL,
			font = Enum.Font.SourceSans,
		}
	}

	return createTheme(UILibraryPalette, UILibraryOverrides)
end

return getUILibraryTheme
