local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local Theme = ContextServices.Theme

local StudioUI = require(Framework.StudioUI)
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local Util = require(Framework.Util)
local StyleTable = Util.StyleTable
local Style = Util.Style
local StyleModifier = Util.StyleModifier

local UI = require(Framework.UI)
local Decoration = UI.Decoration

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style
local Spritesheet = UILibrary.Util.Spritesheet

local function createStyles(theme, getColor)
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local studioStyles = StudioFrameworkStyles.new(theme, getColor)

	local arrowSpritesheet = Spritesheet("rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", {
		SpriteSize = 12,
		NumSprites = 4,
	})
	local rightArrowProps = arrowSpritesheet[2]
	local leftArrowProps = arrowSpritesheet[4]
	local downArrowProps = arrowSpritesheet[3]

	local button = StyleTable.new("Button", function()
		-- Defining a new button style that uses images
		local AssetManagerButton = Style.new({
			Background = Decoration.Box,
			BackgroundStyle = {
				Color = theme:GetColor(c.MainBackground),
				BorderColor = theme:GetColor(c.Border),
				BorderSize = 1,
			},
			Foreground = Decoration.Image,
			ForegroundStyle = {
				Color = theme:GetColor(c.MainText),
			},
			[StyleModifier.Hover] = {
				BackgroundStyle = {
					Color = theme:GetColor(c.Button, m.Hover),
				},
			},

			[StyleModifier.Disabled] = {
				ForegroundStyle = {
					Color = theme:GetColor(c.MainText, m.Disabled),
				},
			},
		})

		local OverlayButton = Style.extend(AssetManagerButton, {
			ForegroundStyle = Style.extend(AssetManagerButton.ForegroundStyle, {
				Image = "rbxasset://textures/StudioSharedUI/menu.png",
			})
		})

		local PreviousButton = Style.extend(AssetManagerButton, {
			ForegroundStyle = Style.extend(AssetManagerButton.ForegroundStyle, Cryo.Dictionary.join(leftArrowProps, {
				Size = UDim2.new(0, 10, 0, 10),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}))
		})

		local NextButton = Style.extend(AssetManagerButton, {
			ForegroundStyle = Style.extend(AssetManagerButton.ForegroundStyle, Cryo.Dictionary.join(rightArrowProps, {
				Size = UDim2.new(0, 10, 0, 10),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}))
		})

		local BulkImporterButton = Style.extend(AssetManagerButton, {
			ForegroundStyle = Style.extend(AssetManagerButton.ForegroundStyle, {
				Image = "rbxasset://textures/StudioSharedUI/import.png",
			})
		})

		local TreeItemButton = Style.extend(AssetManagerButton, {
			TextSize = 14,
			TextColor = theme:GetColor(c.MainText),
			Font = Enum.Font.SourceSans,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Bottom,

			BackgroundStyle = Style.extend(AssetManagerButton.BackgroundStyle, {
				BorderSize = 0,
			}),
		})

		return {
			OverlayButton = OverlayButton,
			PreviousButton = PreviousButton,
			NextButton = NextButton,
			BulkImporterButton = BulkImporterButton,
			TreeItemButton = TreeItemButton,
		}
	end)

	local linkText = StyleTable.new("LinkText", function()
		local AssetManagerDefault = Style.new({
			Font = Enum.Font.SourceSans,
			TextSize = 14,
			EnableHover = true,
		})
		local BulkImporterTooltip = Style.extend(AssetManagerDefault, {
			TextColor = theme:GetColor(c.LinkText),
		})

		local NavBar = Style.extend(AssetManagerDefault, {
			TextColor = theme:GetColor(c.DialogButtonText),
			ShowUnderline = false,
			[StyleModifier.Disabled] = {
				EnableHover = false,
			},
		})

		return {
			BulkImporterTooltip = BulkImporterTooltip,
			NavBar = NavBar,
		}
	end)

	local image = StyleTable.new("Image", function()
		local NavBarPathSeparator = Style.new(Cryo.Dictionary.join(rightArrowProps, {
			Size = UDim2.new(0, 10, 0, 10),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
		}))

		return {
			NavBarPathSeparator = NavBarPathSeparator,
		}
	end)

	return {
		Plugin = {
			BackgroundColor = theme:GetColor(c.MainBackground),
			ButtonColor = theme:GetColor(c.Button),
			ProgressBarColor = theme:GetColor(c.DialogMainButton, m.Selected),
			HoverColor = theme:GetColor(c.Button, m.Hover),
			BorderColor = theme:GetColor(c.Border),
			SubTextColor = theme:GetColor(c.SubText),
			InfoTextColor = theme:GetColor(c.DimmedText),
			TextColor = theme:GetColor(c.MainText),
			ErrorColor = theme:GetColor(c.ErrorText),
			LinkColor = theme:GetColor(c.LinkText),
			Green = Color3.fromRGB(64, 166, 81),
			White = Color3.fromRGB(255, 255, 255),
			DisabledColor = theme:GetColor(c.MainText, m.Disabled),
			ScrollbarTransparency = 0.7,
			ScrollbarSize = 8,
			Font = Enum.Font.SourceSans,
			FontBold = Enum.Font.SourceSansSemibold,
			FontSizeSmall = 14,

			NavBar = {
				BackgroundColor = theme:GetColor(c.Titlebar),
				ImageSize = 24,
				Padding = 12,
				Height = 38,
			},

			Overlay = {
				Background = {
					WidthScale = -0.25,
					Transparency = 0.75,
				},

				Foreground = {
					WidthScale = 0.75,
				},

				CloseButton = {
					Size = 16,

					Images = {
						Close = "rbxasset://textures/StudioSharedUI/close.png",
					},
				},

				Padding = {
					Right = 11,
				}
			},

			TopBar = {
				Height = 53,

				Button = {
					Size = 24,
				},

				Padding = 15,

				Tooltip = {
					TextSize = 14,
					Width = 210,
					Padding = 5,
				}
			},

			TreeViewItem = {
				Height = 16,
				Indent = 20,
				Offset = 3,
				Padding = 5,

				Arrow = {
					Expanded = downArrowProps,
					Collapsed = rightArrowProps,
					Color = theme:GetColor(c.MainText),
					Size = 9,
				},
			},
		},

		Framework = Style.extend(studioStyles, {
				Button = button,
				Image = image,
				LinkText = linkText,
		}),
	}
end

local function getUILibraryTheme()
	local theme = settings().Studio.Theme

	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local UILibraryPalette = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, c, m)

	local UILibraryOverrides = {
		searchBar = {
			backgroundColor = theme:GetColor(c.InputFieldBackground),
			border = {
				hover = {
					color = theme:GetColor(c.MainText),
				},
				selected = {
					color = theme:GetColor(c.Button, m.Selected),
				},
				color = Color3.fromRGB(0, 0, 0),
			},
			buttons = {
				size = 24,
			}
		},
	}

	return createTheme(UILibraryPalette, UILibraryOverrides)
end

local function getTheme()
	return settings().Studio.Theme
end

local PluginTheme = {}

function PluginTheme.makePluginTheme()
	local theme = Theme.new(createStyles)
	function theme:getUILibraryTheme()
		return getUILibraryTheme()
	end

	return theme
end

function PluginTheme.mock()
	local theme = Theme.mock(createStyles, getTheme)
	function theme:getUILibraryTheme()
		return getUILibraryTheme()
	end
	return theme
end

return PluginTheme