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

local FONT_SIZE_SMALL = 14
local FONT_SIZE_MEDIUM = 16
local FONT_SIZE_LARGE = 18

local FFlagStudioAssetManagerAddGridListToggle = game:GetFastFlag("StudioAssetManagerAddGridListToggle")

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
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Padding = UDim.new(0, 4),

			Image = {
				FrameSize = UDim2.new(0, 32, 0, 32),
				ImageSize = UDim2.new(0, 16, 0, 16),
				ImagePosition = UDim2.new(0.5, 0, 0.5, 0),
				ImageAnchorPosition = Vector2.new(0.5, 0.5),
				BackgroundColor = FFlagStudioAssetManagerAddGridListToggle and theme:GetColor(c.MainBackground) or
					theme:GetColor(c.ScrollBarBackground),
				RBXThumbSize = 150,
				Folder = "rbxasset://textures/StudioSharedUI/folder.png",
			},

			Text = {
				Color = theme:GetColor(c.MainText),
				Size = FONT_SIZE_MEDIUM,
				TextTruncate = Enum.TextTruncate.AtEnd,

				XAlignment = Enum.TextXAlignment.Left,
				YAlignment = Enum.TextYAlignment.Center,

				BackgroundTransparency = 1,

				Frame = {
					Size = UDim2.new(1, -32, 0, 32),
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

				Image = FFlagStudioAssetManagerAddGridListToggle and {
					BackgroundColor = theme:getColor(c.CheckedFieldBackground, m.Hover),
				},
			},

			[StyleModifier.Selected] = {
				BackgroundTransparency = 0,
				BackgroundColor = theme:getColor(c.Item, m.Selected),

				Image = FFlagStudioAssetManagerAddGridListToggle and {
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