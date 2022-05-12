local Plugin = script.Parent.Parent.Parent

local FFlagRemoveUILibraryComponentsPart1 = game:GetFastFlag("RemoveUILibraryComponentsPart1")

local Cryo = require(Plugin.Packages.Cryo)
local join = Cryo.Dictionary.join

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
local StyleKey = Framework.Style.StyleKey
local StudioTheme = Framework.Style.Themes.StudioTheme
local ui = Framework.Style.ComponentSymbols

local UI = Framework.UI
local Decoration = UI.Decoration

local UILibrary = require(Plugin.Packages.UILibrary)
local Spritesheet = if FFlagRemoveUILibraryComponentsPart1 then Util.Spritesheet else UILibrary.Util.Spritesheet

local FONT_SIZE_SMALL = 14
local FONT_SIZE_MEDIUM = 16
local FONT_SIZE_LARGE = 18

local arrowSpritesheet = Spritesheet("rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", {
	SpriteSize = 12,
	NumSprites = 4,
})
local rightArrowProps = arrowSpritesheet[2]
local leftArrowProps = arrowSpritesheet[4]
local upArrowProps = arrowSpritesheet[1]
local downArrowProps = arrowSpritesheet[3]

ui:add("ListItem")
ui:add("Tile")

local assetManagerButton = {
	Background = Decoration.Box,
	BackgroundStyle = {
		Color = StyleKey.MainBackground,
		BorderColor = StyleKey.Border,
		BorderSize = 1,
	},
	Foreground = Decoration.Image,
	ForegroundStyle = {
		Color = StyleKey.MainText,
	},
	[StyleModifier.Hover] = {
		BackgroundStyle = {
			Color = StyleKey.ButtonHover,
			BorderColor = StyleKey.Border,
			BorderSize = 1,
		},
	},
}

local disabledForeground = {
	Color = StyleKey.MainTextDisabled,
}

local prevButtonForeground = join(assetManagerButton.ForegroundStyle, leftArrowProps, {
	Size = UDim2.new(0, 10, 0, 10),
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.new(0.5, 0, 0.5, 0),
})

local nextButtonForeground = join(assetManagerButton.ForegroundStyle, rightArrowProps, {
	Size = UDim2.new(0, 10, 0, 10),
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.new(0.5, 0, 0.5, 0),
})

local button = {
	-- Defining a new button style that uses images
	["&AssetManagerButton"] = assetManagerButton,
	["&OverlayButton"] = join(assetManagerButton, {
		ForegroundStyle = join(assetManagerButton.ForegroundStyle, {
			Image = "rbxasset://textures/StudioSharedUI/menu.png",
		})
	}),
	["&PreviousButton"] = join(assetManagerButton, {
		ForegroundStyle = prevButtonForeground,
		[StyleModifier.Disabled] = {
			ForegroundStyle = join(prevButtonForeground, disabledForeground),
		},
	}),
	["&NextButton"] = join(assetManagerButton, {
		ForegroundStyle = nextButtonForeground,
		[StyleModifier.Disabled] = {
			ForegroundStyle = join(nextButtonForeground, disabledForeground),
		},
	}),
	["&BulkImporterButton"] = join(assetManagerButton, {
		ForegroundStyle = join(assetManagerButton.ForegroundStyle, {
			Image = "rbxasset://textures/StudioSharedUI/import.png",
		})
	}),
	["&TreeItemButton"] = join(assetManagerButton, {
		TextSize = FONT_SIZE_MEDIUM,
		TextColor = StyleKey.MainText,
		Font = Enum.Font.SourceSans,
		TextTruncate = Enum.TextTruncate.AtEnd,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Bottom,

		BackgroundStyle = join(assetManagerButton.BackgroundStyle, {
			BorderSize = 0,
		}),
	}),

	["&GridViewButton"] = join(assetManagerButton, {
		ForegroundStyle = join(assetManagerButton.ForegroundStyle, {
			Image = "rbxasset://textures/StudioSharedUI/grid.png",
		})
	}),

	["&ListViewButton"] = join(assetManagerButton, {
		ForegroundStyle = join(assetManagerButton.ForegroundStyle, {
			Image = "rbxasset://textures/StudioSharedUI/list.png",
		})
	}),
}

local assetManagerDefault = {
	Font = Enum.Font.SourceSans,
	TextSize = FONT_SIZE_MEDIUM,
	EnableHover = true,
}

local linkText = {
	["&AssetManagerDefault"] = assetManagerDefault,
	["&BulkImporterTooltip"] = join(assetManagerDefault, {
		TextColor = StyleKey.LinkText,
	}),

	["&MainViewTooltip"] = join(assetManagerDefault, {
		TextColor = StyleKey.LinkText,
		ShowUnderline = false,
	}),

	["&NavBar"] = join(assetManagerDefault, {
		TextColor = StyleKey.DialogButtonText,
		ShowUnderline = false,
		[StyleModifier.Disabled] = {
			EnableHover = false,
		},
	})
}

local image = {
	["&NavBarPathSeparator"] = join(rightArrowProps, {
		Size = UDim2.new(0, 10, 0, 10),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
	})
}

local tile = {
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
		BackgroundColor = StyleKey.ScrollBarBackground,
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
			Size = 24,
			XOffset = 4,
			YOffset = 4,
			Rejected = "rbxasset://textures/StudioSharedUI/alert_error_withbg.png",
			Pending = "rbxasset://textures/StudioSharedUI/pending_withbg.png",
		},
	},

	Text = {
		Color = StyleKey.MainText,
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
			BackgroundColor = StyleKey.InputFieldBackground,
			BorderColor = StyleKey.ButtonSelected,
		},
	},

	[StyleModifier.Hover] = {
		BackgroundTransparency = 0,
		BackgroundColor = StyleKey.ButtonHover,
		AssetPreview = {
			Button = {
				Offset = 14,
			},
			Image = "rbxasset://textures/StudioToolbox/AssetPreview/MAGNIFIER_PH.png",
		},
	},

	[StyleModifier.Selected] = {
		BackgroundTransparency = 0,
		BackgroundColor = StyleKey.ItemSelected,
	}
}

local listItem = {
	Font = Enum.Font.SourceSans,
	Size = UDim2.new(1, 0, 0, 24),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Padding = UDim.new(0, 4),

	Image = {
		FrameSize = UDim2.new(0, 24, 0, 24),
		ImageSize = UDim2.new(0, 20, 0, 20),
		ImagePosition = UDim2.new(0.5, 0, 0.5, 0),
		ImageAnchorPosition = Vector2.new(0.5, 0.5),
		BackgroundColor = StyleKey.MainBackground,
		RBXThumbSize = 150,
		Folder = "rbxasset://textures/StudioSharedUI/folder.png",

		ModerationStatus = {
			Rejected = "rbxasset://textures/StudioSharedUI/alert_error.png",
			Pending = "rbxasset://textures/StudioSharedUI/pending.png",
		},
	},

	Text = {
		Color = StyleKey.MainText,
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
			BackgroundColor = StyleKey.InputFieldBackground,
			BorderColor = StyleKey.ButtonSelected,
		},
	},

	[StyleModifier.Hover] = {
		BackgroundTransparency = 0,
		BackgroundColor = StyleKey.ButtonHover,

		Image = {
			BackgroundColor = StyleKey.ButtonHover,
		},
	},

	[StyleModifier.Selected] = {
		BackgroundTransparency = 0,
		BackgroundColor = StyleKey.ItemSelected,

		Image = {
			BackgroundColor = StyleKey.ItemSelected,
		},
	}
}

local PluginTheme = {
	BackgroundColor = StyleKey.MainBackground,
	ButtonColor = StyleKey.Button,
	ProgressBarColor = StyleKey.DialogMainButtonSelected,
	HoverColor = StyleKey.ButtonHover,
	BorderColor = StyleKey.Border,
	SubTextColor = StyleKey.SubText,
	InfoTextColor = StyleKey.DimmedText,
	TextColor = StyleKey.MainText,
	ErrorColor = StyleKey.ErrorText,
	LinkColor = StyleKey.LinkText,
	Green = Color3.fromRGB(64, 166, 81),
	White = Color3.fromRGB(255, 255, 255),
	DisabledColor = StyleKey.MainTextDisabled,
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
		BackgroundColor = StyleKey.Titlebar,
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
			BackgroundColor = StyleKey.Titlebar,
			Height = 24,
			Padding = 10,

			Arrow = {
				Expanded = downArrowProps,
				Collapsed = upArrowProps,
				Color = StyleKey.MainText,
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
			Color = StyleKey.MainText,
			Size = 9,
		},
	},

	[ui.Tile] = tile,
	[ui.ListItem] = listItem,

	[ui.Button] = button,
	[ui.Image] = image,
	[ui.LinkText] = linkText,
}


local getUILibraryTheme = require(script.Parent.DEPRECATED_UILibraryTheme)

return function(createMock: boolean?)
	local styleRoot = if createMock then StudioTheme.mock() else StudioTheme.new()
	local theme = styleRoot:extend(PluginTheme)
	theme.getUILibraryTheme = getUILibraryTheme
	return theme
end
