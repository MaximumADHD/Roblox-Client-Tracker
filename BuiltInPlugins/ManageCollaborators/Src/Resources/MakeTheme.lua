--[[
	Creates the theme for the plugin.
	Defines values specific to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local FrameworkStyle = Framework.Style
local getRawComponentStyle = FrameworkStyle.getRawComponentStyle

local Cryo = require(Plugin.Packages.Cryo)

local UIFolderData = Framework.UIData
local ui = FrameworkStyle.ComponentSymbols
local ExpandablePaneStyle = require(UIFolderData.ExpandablePane.style)

local default = ExpandablePaneStyle["&Default"]
local header = ExpandablePaneStyle.Header

local ButtonStyle = require(UIFolderData.Button.style)
local roundPrimary = ButtonStyle["&RoundPrimary"]
local round = ButtonStyle["&Round"]

local Style = Framework.Style
local BaseTheme = Style.Themes.BaseTheme
local StudioTheme = Style.Themes.StudioTheme
local DarkTheme = Style.Themes.DarkTheme
local LightTheme = Style.Themes.LightTheme

local _StyleKey = Style.StyleKey

local Dash = Framework.Dash
local join = Dash.join

local PluginTheme = {
	
	[ui.ExpandablePane] = join(BaseTheme[ui.ExpandablePane], {
		["&Arrowless"] = join(default, {
			Header = join(header, {
				Arrow = {
					Size = UDim2.fromOffset(0, 0),
				},
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				Padding = 0,
			}),
		}),
	}),

	[ui.SelectInput] = join(BaseTheme[ui.SelectInput], {
		["&Editable"] = join(default, {
			PlaceholderTextColor = _StyleKey.TitlebarText
		}),
		["&NonEditable"] = join(default, {
			PlaceholderTextColor = _StyleKey.DimmedText
		}),
	}),
	
	[ui.Button] = join(BaseTheme[ui.Button], {
		["&Active"] = join(roundPrimary, {
			TextSize = 24
		}),
		["&Passive"] = join(roundPrimary, {
			TextSize = 24
		}),
		["&Cancel"] = join(round, {
			TextSize = 24
		})
	}),
	
	[ui.StyledDialog] = Cryo.Dictionary.join(getRawComponentStyle("StyledDialog"), {
		["&CancelDialog"] = {
			ButtonPadding = 24,
			ContentPadding = 0,
			ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
		},
	}),
	
	[ui.DropdownMenu] = Cryo.Dictionary.join(getRawComponentStyle("DropdownMenu"), {
		["&Search"] = {
			Offset = Vector2.new(-12, 0),
		},
	}),
	backgroundColor = _StyleKey.MainBackground,
	fontStyle = {
		Subtitle = {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor3 = _StyleKey.SubText
		},
		Normal = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = _StyleKey.TitlebarText
		},
		Subtext = {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor3 = _StyleKey.DimmedText
		},
	},

	buttonBar = {
		padding = 25,
		edgePadding = 35
	},
	
	confirmTcDialog = {
		TitleText = {
			Font = Enum.Font.SourceSansSemibold,
			TextSize = 22,
			TextColor3 = _StyleKey.TitlebarText
		},
		DescriptionText = {
			Font = Enum.Font.SourceSans,
			TextSize = 18,
			TextColor3 = _StyleKey.TitlebarText
		}
	},
	
	cancelDialog = {
		Text = {
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextColor3 = _StyleKey.TitlebarText,
		},

		Size = Vector2.new(343, 65),
		Position = UDim2.new(.5, 0, .5, 10),
	},
	
	saveToRobloxView = {
		Text = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = _StyleKey.MainText,
			YOffset = 70,
		},
		
		publishButton = {
			offset = 125,
			paddingX = 75,
			paddingY = 15,
		},		
	},
	
	permissionsView = {
		Padding = 2,
	},
		
	menuEntry = {
		hover = _StyleKey.MenuEntryHover,
		--highlight = StyleKey.MenuEntryHighlight,
		--text = StyleKey.BrightText,
	},

	searchWidget = {
		paddingTop = UDim.new(0, 32),
		paddingHorizontal = UDim.new(0, 67)
	},
	
	searchBar = {
		border = _StyleKey.Border,
		borderHover = _StyleKey.MainButton,
		borderSelected = _StyleKey.MainButton,
		placeholderText = _StyleKey.DimmedText,
		backgroundColor = _StyleKey.SubBackground2,

		collabTypeTextPosition = UDim2.new(0, 26, 0, 14),
		friendsAccessTextPosition = UDim2.new(1, -28, 0, 14),

		searchIcon = _StyleKey.SubText,
		friendIcon = {
			Image = _StyleKey.FriendIcon,
			LabelWidth = 20,
			LabelHeight = 13,
			FrameWidth = 37,
		},

		clearButton = {
			imageSelected = _StyleKey.SubText,
			image = _StyleKey.SubText,
		},

		headerHeight = 25,
		itemHeight = 75,
		ribbonWidth = 5,
		thumbnailSize = 48,
		thumbnailPaddingLeft = 40,
		renderItemTextPadding = 19,
		searchBarHeight = 40,
		clearButtonIconSize = 32,
		textPadding = 16,
		nameLabelWidth = 480,
		
		

		dropDown = {
			collaboratorTypeText = {
				Font = Enum.Font.SourceSans,
				TextSize = 16,
				TextColor3 = _StyleKey.MainText
			},
			backgroundColor = _StyleKey.InputFieldBackground,
			itemText = _StyleKey.MainText,
			headerText = _StyleKey.SubText,
			hovered = {
				backgroundColor = _StyleKey.Dropdown,
				itemText = _StyleKey.MainText
			},
			item = {
				offset = 2,
			},
			selected = {
				backgroundColor = _StyleKey.ButtonHover,
			},

			maxHeight = 425
		},
	},
	
	groupThumbnail = {
		loadingImage = "rbxasset://textures/StudioSharedUI/default_group.png",
		loadFailureImage = "rbxasset://textures/GameSettings/ModeratedAsset.jpg",
	},
	
	subjectThumbnail = {
		background = _StyleKey.TableItem,
		maskImage = "rbxasset://textures/StudioSharedUI/avatarMask.png",
		loadingImage = "rbxasset://textures/StudioSharedUI/default_user.png",
		loadFailureImage = "rbxasset://textures/GameSettings/ModeratedAsset.jpg",
	},
	
	selectInput = {
		button = {
			height = 50,
		},
		padding = 10,
		width = 195
	},
	
	scrollingFrame = {
		yPadding = 47,
		xPadding = 25,
		yPaddingNonOwner = 35
	},
	
	saveMessage = {
		boxHeight = 45,
		textStyle = {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor3 = _StyleKey.TitlebarText
		},

		InnerTextPosition = UDim2.new(0, 67, .5, 0),
	},
	
	footer = {
		height = 65,
		gradientSize = 3,
		gradientTransparency = .9,
		border = _StyleKey.FooterBorder
	},
		
	collaboratorItem = {
		FadeTransparency = .75,
		
		groupCollaboratorItem = {
			ExpandTextSize = 14,
			size = UDim2.new(0, 665, 0, 60),
			collaboratorItemOffset = 16,
			expandablePaneSize = UDim2.new(1, 0, 0, 34),

			headerComponent = {
				size = UDim2.new(0, 608, 0, 34),
				arrowLabel = {
					position = UDim2.new(0, 42, .5, 0),
					size = UDim2.new(0, 17, 0, 17)
				},
				textLabel = {
					position = UDim2.new(0, 60, .5, 0),
				}
			}
		},

		deleteButton = {
			size = 32,
			xOffset = 6,
			hovered = _StyleKey.Dropdown,
		},

		permissionEditor = {
			heightOffset = 54,
			yOffset = 11,
		},

		collaboratorName = {
			withIcon = {
				size = UDim2.new(1, -264, 0, 54),
				xOffset = 72
			},
			withoutIcon = {
				UDim2.new(1, -126, 0, 54),
				xOffset = 50
			}
		},

		ownerLabel = {
			withIconSize = UDim2.new(1, -264, 0, 54),
			withoutIconSize = UDim2.new(1, -126, 0, 54),
			position = UDim2.new(1, -7, .5, 0),
		},

		iconContainerSize = 40,

		nonRolesetFrame = {
			width = 665,
			height = 74,
			position = nil,
			anchorPoint = nil,
		},

		rolesetFrame = {
			width = 608,
			height = 54,
			position = UDim2.new(1.5, 200, 0, 20),
			anchorPont = Vector2.new(1, 0),
		}
	},

	deleteIcon = _StyleKey.CloseWidget,
	
	arrows = {
		right = _StyleKey.RightArrow,
		down = _StyleKey.DownArrow,
	}
}

return function(createMock: boolean?)
	local styleRoot
	
	local overridedDarkTheme = join(DarkTheme, {
		[_StyleKey.CloseWidget] = "rbxasset://textures/ManageCollaborators/closeWidget_dark.png",
		[_StyleKey.RightArrow] = "rbxasset://textures/ManageCollaborators/arrowRight_dark.png",
		[_StyleKey.DownArrow] = "rbxasset://textures/ManageCollaborators/arrowDown_dark.png",
		[_StyleKey.FriendIcon] = "rbxasset://textures/ManageCollaborators/friendIcon_dark.png",
		[_StyleKey.FooterBorder] = Color3.fromRGB(0, 0, 0),
	})
	
	local overridedLightTheme = join(LightTheme, {
		[_StyleKey.CloseWidget] = "rbxasset://textures/ManageCollaborators/closeWidget_light.png",
		[_StyleKey.RightArrow] = "rbxasset://textures/ManageCollaborators/arrowRight_light.png",
		[_StyleKey.DownArrow] = "rbxasset://textures/ManageCollaborators/arrowDown_light.png",
		[_StyleKey.FriendIcon] = "rbxasset://textures/ManageCollaborators/friendIcon_light.png",
		[_StyleKey.FooterBorder] = Color3.fromRGB(244, 244, 244),
		[_StyleKey.Dropdown] = Color3.fromRGB(228, 238, 254),
	})
	
	if createMock then
		styleRoot = StudioTheme.mock(overridedDarkTheme, overridedLightTheme)
	else
		styleRoot = StudioTheme.new(overridedDarkTheme, overridedLightTheme)
	end

	return styleRoot:extend(PluginTheme)
end