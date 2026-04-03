local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AccessoryType = require(Foundation.Enums.AccessoryType)
local Badge = require(Foundation.Components.Badge)
local BadgeVariant = require(Foundation.Enums.BadgeVariant)
local Dropdown = require(Foundation.Components.Dropdown)
local InputSize = require(Foundation.Enums.InputSize)
local List = require(Foundation.Components.List)
local ListItemInputType = require(Foundation.Enums.ListItemInputType)
local StatusIndicator = require(Foundation.Components.StatusIndicator)
local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
local View = require(Foundation.Components.View)

local function StorySettings(props)
	local chatEnabled, setChatEnabled = React.useState(false)
	local locationEnabled, setLocationEnabled = React.useState(false)
	local languageId, setLanguageId = React.useState("en")

	return React.createElement(List.Root, {
		hasDivider = props.controls.hasDivider,
		isInset = props.controls.isInset,
		size = props.controls.size,
	}, {
		PhoneNumber = React.createElement(List.Item, {
			title = "Phone number",
			description = "***-***-883",
			trailing = React.createElement(
				View,
				{
					tag = "auto-xy",
				},
				React.createElement(Badge, {
					text = "Verified",
					icon = BuilderIcons.Icon.CircleCheck,
					variant = BadgeVariant.Primary,
				})
			) :: React.ReactNode,
			onActivated = function() end,
			LayoutOrder = 1,
		}),
		Language = React.createElement(List.Item, {
			title = "Language",
			trailing = React.createElement(Dropdown.Root, {
				label = "",
				value = languageId,
				items = {
					{ id = "en", text = "English" },
					{ id = "es", text = "Spanish" },
					{ id = "fr", text = "French" },
				},
				onItemChanged = function(id: string | number)
					setLanguageId(id :: string)
				end,
				width = UDim.new(0, 140),
				LayoutOrder = 2,
			}) :: React.ReactNode,
		}),
		EmailAddress = React.createElement(List.Item, {
			title = "Email address",
			description = "rob*******@gmail.com",
			onActivated = function() end,
			LayoutOrder = 3,
		}),
		Birthday = React.createElement(List.Item, {
			title = "Birthday",
			description = "Sep 27, 2000",
			onActivated = function() end,
			LayoutOrder = 4,
		}),
		AgeGroup = React.createElement(List.Item, {
			title = "Age Group",
			description = "18+",
			onActivated = function() end,
			LayoutOrder = 5,
		}),
		Gender = React.createElement(List.Item, {
			title = "Gender",
			description = "Male",
			onActivated = function() end,
			LayoutOrder = 6,
		}),
		AutoChatTranslation = React.createElement(List.Item, {
			leading = "speech-bubble-align-left",
			title = "Automatic chat translation",
			description = "Translate chat messages from others",
			onActivated = {
				onActivated = function()
					setChatEnabled(function(prev)
						return not prev
					end)
				end,
				inputType = ListItemInputType.Toggle,
				isChecked = chatEnabled,
			},
			LayoutOrder = 7,
		}),
		TrackLocation = React.createElement(List.Item, {
			leading = "location-pin",
			title = "Track Location",
			description = "California, United States",
			onActivated = {
				onActivated = function()
					setLocationEnabled(function(prev)
						return not prev
					end)
				end,
				inputType = ListItemInputType.Toggle,
				isChecked = locationEnabled,
			},
			LayoutOrder = 8,
		}),
	})
end

local function StoryGames(props)
	local chatEnabled1, setChatEnabled1 = React.useState(false)
	local chatEnabled2, setChatEnabled2 = React.useState(false)
	local languageId, setLanguageId = React.useState("en")

	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
	}, {
		SettingsSection = React.createElement(List.Root, {
			hasDivider = props.controls.hasDivider,
			isInset = props.controls.isInset,
			size = props.controls.size,
		}, {
			AutoChatTranslation = React.createElement(List.Item, {
				title = "Automatic chat translation",
				description = "Translate chat messages from others",
				onActivated = {
					onActivated = function()
						setChatEnabled1(function(prev)
							return not prev
						end)
					end,
					inputType = ListItemInputType.Toggle,
					isChecked = chatEnabled1,
				},
				LayoutOrder = 1,
			}),
			AutoChatTranslation2 = React.createElement(List.Item, {
				title = "Automatic chat translation",
				description = "Translate chat messages from others",
				onActivated = {
					onActivated = function()
						setChatEnabled2(function(prev)
							return not prev
						end)
					end,
					inputType = ListItemInputType.Toggle,
					isChecked = chatEnabled2,
				},
				LayoutOrder = 2,
			}),
			Birthday = React.createElement(List.Item, {
				title = "Birthday",
				description = "Sep 27, 2000",
				trailing = React.createElement(
					View,
					{
						tag = "auto-xy",
					},
					React.createElement(Badge, {
						text = "Verified",
						icon = BuilderIcons.Icon.CircleCheck,
						variant = BadgeVariant.Primary,
					})
				) :: React.ReactNode,
				onActivated = function() end,
				LayoutOrder = 3,
			}),
			Language = React.createElement(List.Item, {
				title = "Language",
				trailing = React.createElement(Dropdown.Root, {
					value = languageId,
					items = {
						{ id = "en", text = "English" },
						{ id = "es", text = "Spanish" },
						{ id = "fr", text = "French" },
					},
					onItemChanged = function(id: string | number)
						setLanguageId(id :: string)
					end,
					label = "",
					width = UDim.new(0, 140),
				}) :: React.ReactNode,
				LayoutOrder = 4,
			}),
			GameItem = React.createElement(List.Item, {
				leading = { iconName = "rbxthumb://type=GameIcon&id=1818&w=150&h=150" },
				title = { title = "Item Name", metadata = "Metadata" },
				trailing = React.createElement(StatusIndicator, {
					variant = StatusIndicatorVariant.Emphasis,
				}) :: React.ReactNode,
				onActivated = function() end,
				LayoutOrder = 5,
			}),
			GameItem2 = React.createElement(List.Item, {
				leading = { iconName = "rbxthumb://type=GameIcon&id=2788229376&w=150&h=150" },
				title = { title = "Item Name", metadata = "Metadata" },
				onActivated = function() end,
				LayoutOrder = 6,
			}),
			GameItem3 = React.createElement(List.Item, {
				leading = { iconName = "rbxthumb://type=GameIcon&id=1281960580&w=150&h=150" },
				title = { title = "Item Name", metadata = "Metadata" },
				trailing = React.createElement(View, {
					tag = "row items-center gap-large auto-xy",
				}, {
					Dot = React.createElement(StatusIndicator, {
						variant = StatusIndicatorVariant.Emphasis,
					}),
					UpdateBadge = React.createElement(Badge, {
						text = "Update",
						variant = BadgeVariant.Neutral,
						LayoutOrder = 2,
					}),
				}) :: React.ReactNode,
				onActivated = function() end,
				LayoutOrder = 7,
			}),
			GameItem4 = React.createElement(List.Item, {
				leading = { iconName = "rbxthumb://type=GameIcon&id=606849621&w=150&h=150" },
				title = { title = "Item Name", metadata = "Metadata" },
				onActivated = function() end,
				LayoutOrder = 8,
			}),
		}),
	})
end

return {
	summary = "List",
	stories = {
		{
			name = "Base",
			story = function(props)
				return React.createElement(List.Root, {
					hasDivider = props.controls.hasDivider,
					isInset = props.controls.isInset,
					size = props.controls.size,
				}, {
					MediaItem = React.createElement(List.Item, {
						leading = { iconName = "rbxthumb://type=GameIcon&id=1818&w=150&h=150" },
						title = {
							title = "Media",
							metadata = "Metadata",
						},
						description = "Leading media thumbnail",
						LayoutOrder = 1,
					}),
					AvatarItem = React.createElement(List.Item, {
						leading = { type = AccessoryType.Avatar, userId = 24813339 },
						title = {
							title = "Avatar",
							metadata = "Metadata",
						},
						description = "Leading avatar",
						LayoutOrder = 2,
					}),
					IconItem = React.createElement(List.Item, {
						leading = BuilderIcons.Icon.Robux,
						title = {
							title = "Icon",
							metadata = "Metadata",
						},
						description = "Leading icon",
						LayoutOrder = 3,
					}),
					NoLeadingItem = React.createElement(List.Item, {
						title = {
							title = "No Leading",
							metadata = "Metadata",
						},
						description = "No leading accessory",
						LayoutOrder = 4,
					}),
				})
			end,
		},
		{
			name = "Settings",
			story = StorySettings,
		},
		{
			name = "Games List",
			story = StoryGames,
		} :: any,
	},
	controls = {
		hasDivider = true,
		isInset = true,
		size = Dash.values(InputSize),
	},
}
