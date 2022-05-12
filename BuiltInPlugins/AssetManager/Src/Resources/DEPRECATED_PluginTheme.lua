local Plugin = script.Parent.Parent.Parent

local FFlagRemoveUILibraryComponentsPart1 = game:GetFastFlag("RemoveUILibraryComponentsPart1")

local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local Theme = ContextServices.Theme

local StudioUI = Framework.StudioUI
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local StyleTable = Util.StyleTable
local Style = Util.Style
local StyleModifier = Util.StyleModifier
local StudioTheme = Framework.Style.Themes.StudioTheme

local UI = Framework.UI
local Decoration = UI.Decoration

local UILibrary = require(Plugin.Packages.UILibrary)
local Spritesheet = if FFlagRemoveUILibraryComponentsPart1 then Util.Spritesheet else UILibrary.Util.Spritesheet

local getUILibraryTheme = require(script.Parent.DEPRECATED_UILibraryTheme)

local FONT_SIZE_SMALL = 14
local FONT_SIZE_MEDIUM = 16
local FONT_SIZE_LARGE = 18

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
	local upArrowProps = arrowSpritesheet[1]
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
			TextSize = FONT_SIZE_MEDIUM,
			TextColor = theme:GetColor(c.MainText),
			Font = Enum.Font.SourceSans,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Bottom,

			BackgroundStyle = Style.extend(AssetManagerButton.BackgroundStyle, {
				BorderSize = 0,
			}),
		})

		local RecentlyImportedViewButton = Style.new({
			Background = Decoration.Box,
			BackgroundStyle = {
				Color = theme:GetColor(c.Titlebar),
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

		local UpButton = Style.extend(RecentlyImportedViewButton, {
			ForegroundStyle = Style.extend(RecentlyImportedViewButton.ForegroundStyle, Cryo.Dictionary.join(upArrowProps, {
				Size = UDim2.new(0, 10, 0, 10),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}))
		})

		local DownButton = Style.extend(RecentlyImportedViewButton, {
			ForegroundStyle = Style.extend(RecentlyImportedViewButton.ForegroundStyle, Cryo.Dictionary.join(downArrowProps, {
				Size = UDim2.new(0, 10, 0, 10),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}))
		})

		local GridViewButton = Style.extend(AssetManagerButton, {
			ForegroundStyle = Style.extend(AssetManagerButton.ForegroundStyle, {
				Image = "rbxasset://textures/StudioSharedUI/grid.png",
			})
		})

		local ListViewButton = Style.extend(AssetManagerButton, {
			ForegroundStyle = Style.extend(AssetManagerButton.ForegroundStyle, {
				Image = "rbxasset://textures/StudioSharedUI/list.png",
			})
		})

		return {
			OverlayButton = OverlayButton,
			PreviousButton = PreviousButton,
			NextButton = NextButton,
			BulkImporterButton = BulkImporterButton,
			TreeItemButton = TreeItemButton,
			UpButton = UpButton,
			DownButton = DownButton,
			GridViewButton = GridViewButton,
			ListViewButton = ListViewButton,
		}
	end)

	local linkText = StyleTable.new("LinkText", function()
		local AssetManagerDefault = Style.new({
			Font = Enum.Font.SourceSans,
			TextSize = FONT_SIZE_MEDIUM,
			EnableHover = true,
		})
		local BulkImporterTooltip = Style.extend(AssetManagerDefault, {
			TextColor = theme:GetColor(c.LinkText),
		})

		local MainViewTooltip = Style.extend(AssetManagerDefault, {
			TextColor = theme:GetColor(c.LinkText),
			ShowUnderline = false,
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
			MainViewTooltip = MainViewTooltip,
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

	local tile = StyleTable.new("Tile", function()
		local Default = Style.new({
			Size = UDim2.new(0, 85, 0, 121),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			AssetPreview = {
				Button = {
					Offset = 14,
				},
				Image = "rbxasset://textures/StudioToolbox/AssetPreview/MAGNIFIER_PH.png",
			},

			Image = {
				FrameSize = UDim2.new(0, 69, 0, 69),
				ImageSize = UDim2.new(0, 32, 0, 32),
				Position = UDim2.new(0, 8, 0, 8),
				FolderPosition = UDim2.new(0.5, 0, 0.5, 0),
				FolderAnchorPosition = Vector2.new(0.5, 0.5),
				BackgroundColor = theme:GetColor(c.ScrollBarBackground),
				RBXThumbSize = 150,
				PlaceHolder = "rbxasset://textures/PublishPlaceAs/TransparentWhiteImagePlaceholder.png",
				Folder = "rbxasset://textures/StudioSharedUI/folder.png",

				StartingPlace = {
					Size = 24,
					Icon = "rbxasset://textures/StudioSharedUI/spawn_withbg_24.png",
					XOffset = 8,
					YOffset = 37,
				},

				ModerationStatus = {
					XOffset = 4,
					YOffset = 4,
					Rejected = "rbxasset://textures/StudioSharedUI/alert_error_withbg.png",
					Pending = "rbxasset://textures/StudioSharedUI/pending_withbg.png",
				},
			},

			Text = {
				Color = theme:GetColor(c.MainText),
				Size = FONT_SIZE_MEDIUM,
				TextTruncate = Enum.TextTruncate.AtEnd,

				XAlignment = Enum.TextXAlignment.Left,
				YAlignment = Enum.TextYAlignment.Top,

				BackgroundTransparency = 1,

				Frame = {
					Size = UDim2.new(0, 69, 0, 32),
					Position = UDim2.new(0, 8, 0, 81),
				},
			},

			EditText = {
				TextPadding = 10,
				TextWrapped = true,
				ClearTextOnFocus = false,

				XAlignment = Enum.TextXAlignment.Center,

				Frame = {
					BackgroundColor = theme:GetColor(c.InputFieldBackground),
					BorderColor = theme:GetColor(c.Button, m.Selected),
				},
			},

			[StyleModifier.Hover] = {
				BackgroundTransparency = 0,
				BackgroundColor = theme:getColor(c.CheckedFieldBackground, m.Hover),
				AssetPreview = {
					Button = {
						Offset = 14,
					},
					Image = "rbxasset://textures/StudioToolbox/AssetPreview/MAGNIFIER_PH.png",
				},
			},

			[StyleModifier.Selected] = {
				BackgroundTransparency = 0,
				BackgroundColor = theme:getColor(c.Item, m.Selected),
			}
		})

		return {
			Default = Default,
		}
	end)

	local listItem = StyleTable.new("ListItem", function()
		local Default = Style.new({
			Size = UDim2.new(1, 0, 0, 24),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Padding = UDim.new(0, 4),

			Image = {
				FrameSize = UDim2.new(0, 24, 0, 24),
				ImageSize = UDim2.new(0, 20, 0, 20),
				ImagePosition = UDim2.new(0.5, 0, 0.5, 0),
				ImageAnchorPosition = Vector2.new(0.5, 0.5),
				BackgroundColor = theme:GetColor(c.MainBackground),
				RBXThumbSize = 150,
				Folder = "rbxasset://textures/StudioSharedUI/folder.png",

				ModerationStatus = {
					Rejected = "rbxasset://textures/StudioSharedUI/alert_error.png",
					Pending = "rbxasset://textures/StudioSharedUI/pending.png",
				},
			},

			Text = {
				Color = theme:GetColor(c.MainText),
				Size = FONT_SIZE_MEDIUM,
				TextTruncate = Enum.TextTruncate.AtEnd,

				XAlignment = Enum.TextXAlignment.Left,
				YAlignment = Enum.TextYAlignment.Center,

				BackgroundTransparency = 1,

				Frame = {
					Size = UDim2.new(1, -24, 0, 24),
					XOffset = -24,
					YOffset = 24,
					Padding = 10,
				},
			},

			EditText = {
				TextPadding = 10,
				ClearTextOnFocus = false,

				XAlignment = Enum.TextXAlignment.Center,

				Frame = {
					BackgroundColor = theme:GetColor(c.InputFieldBackground),
					BorderColor = theme:GetColor(c.Button, m.Selected),
				},
			},

			[StyleModifier.Hover] = {
				BackgroundTransparency = 0,
				BackgroundColor = theme:getColor(c.CheckedFieldBackground, m.Hover),

				Image = {
					BackgroundColor = theme:getColor(c.CheckedFieldBackground, m.Hover),
				},
			},

			[StyleModifier.Selected] = {
				BackgroundTransparency = 0,
				BackgroundColor = theme:getColor(c.Item, m.Selected),

				Image = {
					BackgroundColor = theme:getColor(c.Item, m.Selected),
				},
			}
		})

		return {
			Default = Default,
		}
	end)

	return {
		Plugin = Style.extend({
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
			FontSizeSmall = FONT_SIZE_SMALL,
			FontSizeMedium = FONT_SIZE_MEDIUM,
			FontSizeLarge = FONT_SIZE_LARGE,

			AssetGridContainer = {
				CellPadding = UDim2.new(0, 4, 0, 6),
				LoadButton = {
					Offset = 125,
					PaddingX = 75,
					PaddingY = 15,
				},
			},

			MainView = {
				PublishText = {
					Offset = 70,
					Width = 250,
				},
				PublishButton = {
					Offset = 125,
					PaddingX = 75,
					PaddingY = 15,
				},
			},

			NavBar = {
				BackgroundColor = theme:GetColor(c.Titlebar),
				ImageSize = 24,
				Padding = 12,
				Height = 38,
				TruncatedTextScale = 0.4,
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
				Height = 24,

				Button = {
					Size = 24,
				},

				Padding = 15,

				Tooltip = {
					TextSize = FONT_SIZE_SMALL,
					Width = 210,
					Padding = 5,
				}
			},

			RecentView = {
				ItemPadding = UDim.new(0, 6),
				Bar = {
					BackgroundColor = theme:GetColor(c.Titlebar),
					Height = 24,
					Padding = 10,

					Arrow = {
						Expanded = downArrowProps,
						Collapsed = upArrowProps,
						Color = theme:GetColor(c.MainText),
						Size = 9,
					},
					Button = {
						Size = 24,
					},
				}
			},

			TreeViewItem = {
				Height = 16,
				Indent = 20,
				Offset = 3,
				Padding = 5,
				Folder = "rbxasset://textures/StudioSharedUI/folder.png",

				Arrow = {
					Expanded = downArrowProps,
					Collapsed = rightArrowProps,
					Color = theme:GetColor(c.MainText),
					Size = 9,
				},
			},
		}, {
			Tile = tile,
			ListItem = listItem,
		}),

		Framework = Style.extend(studioStyles, {
			Button = Style.extend(studioStyles.Button, button),
			Image = Style.extend(studioStyles.Image, image),
			LinkText = Style.extend(studioStyles.LinkText, linkText),
		}),
	}
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
