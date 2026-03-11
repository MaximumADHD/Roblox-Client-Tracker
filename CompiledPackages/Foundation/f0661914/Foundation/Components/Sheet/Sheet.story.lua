local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local Button = require(Foundation.Components.Button)
local Checkbox = require(Foundation.Components.Checkbox)
local Dash = require(Packages.Dash)
local Icon = require(Foundation.Components.Icon)
local IconButton = require(Foundation.Components.IconButton)
local Image = require(Foundation.Components.Image)
local Sheet = require(Foundation.Components.Sheet)
local Text = require(Foundation.Components.Text)
local TextInput = require(Foundation.Components.TextInput)
local View = require(Foundation.Components.View)

local IconName = require(Packages.BuilderIcons).Icon
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local DialogSize = require(Foundation.Enums.DialogSize)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local useSheetNavigation = require(Foundation.Components.Sheet.useSheetNavigation)
local useTokens = require(Foundation.Providers.Style.useTokens)

type DialogSize = DialogSize.DialogSize

local function Story(props)
	local open, setOpen = React.useState(false)
	local tokens = useTokens()
	return React.createElement(React.Fragment, nil, {
		Button = React.createElement(Button, {
			onActivated = function()
				setOpen(true)
			end,
			text = "Open Sheet",
		}),
		Sheet = React.createElement(Sheet.Root, {
			isOpen = open,
			snapPoints = { 0.5, 0.9 },
			preferCenterSheet = props.controls.preferCenterSheet,
			size = props.controls.size,
			onClose = function()
				setOpen(false)
			end,
		}, {
			Header = React.createElement(Sheet.Header, nil, {
				Padding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, tokens.Padding.Medium),
					PaddingBottom = UDim.new(0, tokens.Padding.Medium),
					PaddingRight = UDim.new(0, tokens.Padding.Small),
				}),
				GameIcon = React.createElement(Image, {
					LayoutOrder = 1,
					tag = "size-1200 radius-small bg-shift-200",
				}),
				Text = React.createElement(View, {
					LayoutOrder = 2,
					tag = "col gap-xsmall fill auto-xy",
				}, {
					Title = React.createElement(Text, {
						LayoutOrder = 1,
						Text = "Sheet Title",
						tag = "text-title-large content-emphasis auto-xy text-truncate-split",
					}),
					Subtitle = React.createElement(Text, {
						LayoutOrder = 2,
						Text = "Subtitle or description goes here",
						tag = "text-body-small content-default auto-xy text-truncate-split",
					}),
				}),
				Notification = React.createElement(IconButton, {
					LayoutOrder = 3,
					Size = InputSize.Large,
					icon = IconName.Bell,
					onActivated = function() end,
				}),
			}),
			Content = React.createElement(Sheet.Content, nil, {
				Carousel = React.createElement(View, {
					LayoutOrder = 2,
					tag = "size-full-full auto-y radius-medium bg-shift-200 aspect-16-9",
				}),
				Attributes = React.createElement(View, {
					tag = "row gap-medium auto-y size-full-0 items-center flex-fill",
					LayoutOrder = 3,
				}, {
					Rating = React.createElement(View, {
						LayoutOrder = 1,
						tag = "col gap-small align-x-center auto-xy",
					}, {
						Label = React.createElement(Text, {
							LayoutOrder = 1,
							Text = "Rating",
							tag = "text-body-small content-default auto-xy",
						}),
						Value = React.createElement(Text, {
							LayoutOrder = 2,
							Text = "94%",
							tag = "text-title-medium content-emphasis auto-xy",
						}),
					}),
					Active = React.createElement(View, {
						LayoutOrder = 3,
						tag = "col gap-small align-x-center auto-xy",
					}, {
						Label = React.createElement(Text, {
							LayoutOrder = 1,
							Text = "Active",
							tag = "text-body-small content-default auto-xy",
						}),
						Value = React.createElement(Text, {
							LayoutOrder = 2,
							Text = "1.2K",
							tag = "text-title-medium content-emphasis auto-xy",
						}),
					}),
					Age = React.createElement(View, {
						LayoutOrder = 5,
						tag = "col gap-small align-x-center auto-xy",
					}, {
						Label = React.createElement(Text, {
							LayoutOrder = 1,
							Text = "Age",
							tag = "text-body-small content-default auto-xy",
						}),
						Value = React.createElement(Text, {
							LayoutOrder = 2,
							Text = "13+",
							tag = "text-title-medium content-emphasis auto-xy",
						}),
					}),
					Maturity = React.createElement(View, {
						LayoutOrder = 7,
						tag = "col gap-small align-x-center auto-xy",
					}, {
						Label = React.createElement(Text, {
							LayoutOrder = 1,
							Text = "Maturity",
							tag = "text-body-small content-default auto-xy",
						}),
						Value = React.createElement(Text, {
							LayoutOrder = 2,
							Text = "Everyone",
							tag = "text-title-medium content-emphasis auto-xy",
						}),
					}),
				}),
				Rating = React.createElement(View, {
					LayoutOrder = 4,
					tag = "row radius-medium size-full-0 auto-y gap-small align-y-center bg-shift-200 padding-small",
				}, {
					Icon = React.createElement(Icon, {
						LayoutOrder = 1,
						name = IconName.ThumbUp,
						size = IconSize.Large,
					}),
					Rating = React.createElement(View, {
						LayoutOrder = 2,
						tag = "col grow auto-xy",
					}, {
						Value = React.createElement(Text, {
							LayoutOrder = 1,
							Text = "94%",
							tag = "text-body-medium content-emphasis auto-xy",
						}),
						Label = React.createElement(Text, {
							LayoutOrder = 2,
							Text = "100 VOTES",
							tag = "text-body-small content-default auto-xy",
						}),
					}),
					Up = React.createElement(IconButton, {
						LayoutOrder = 3,
						icon = IconName.ThumbUp,
						size = InputSize.Large,
						onActivated = function() end,
					}),
					Down = React.createElement(IconButton, {
						LayoutOrder = 4,
						icon = IconName.ThumbDown,
						size = InputSize.Large,
						onActivated = function() end,
					}),
				}),
				Description = React.createElement(Text, {
					LayoutOrder = 5,
					Text = "This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen.",
					tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
				}),
				Description2 = React.createElement(Text, {
					LayoutOrder = 6,
					Text = "Sheets can be dismissed by swiping down or tapping outside of the sheet area.",
					tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
				}),
				Description3 = React.createElement(Text, {
					LayoutOrder = 7,
					Text = "This sheet is fully responsive and will adapt to different screen sizes and orientations.",
					tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
				}),
				Description4 = React.createElement(Text, {
					LayoutOrder = 8,
					Text = "You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space.",
					tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
				}),
				Description5 = React.createElement(Text, {
					LayoutOrder = 9,
					Text = "Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once.",
					tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
				}),
				Description6 = React.createElement(Text, {
					LayoutOrder = 10,
					Text = "This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case.",
					tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
				}),
				Description7 = React.createElement(Text, {
					LayoutOrder = 11,
					Text = "Thank you for checking out this example of a sheet component in Roblox using the Foundation library!",
					tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
				}),
				Description8 = React.createElement(Text, {
					LayoutOrder = 12,
					Text = "Feel free to reach out if you have any questions or need further assistance.",
					tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
				}),
				Description9 = React.createElement(Text, {
					LayoutOrder = 13,
					Text = "Happy developing!",
					tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
				}),
			}),
			Actions = React.createElement(Sheet.Actions, nil, {
				SubActions = React.createElement(View, {
					tag = "row auto-xy padding-right-small",
				}, {
					More = React.createElement(IconButton, {
						LayoutOrder = 1,
						icon = IconName.CircleThreeDotsHorizontal,
						size = InputSize.Large,
						onActivated = function() end,
					}),
					Invite = React.createElement(IconButton, {
						LayoutOrder = 2,
						icon = IconName.PersonArrowFromBottomRight,
						size = InputSize.Large,
						onActivated = function() end,
					}),
				}),
				Join = React.createElement(Button, {
					LayoutOrder = 3,
					text = "Join",
					icon = IconName.PlayLarge,
					size = InputSize.Large,
					variant = ButtonVariant.Emphasis,
					fillBehavior = FillBehavior.Fill,
					onActivated = function()
						setOpen(false)
					end,
				}),
			}),
		}),
	})
end

local function StoryManual(props)
	local open, setOpen = React.useState(false)
	local snapPoints = { 0.2, useScaledValue(300) }
	return React.createElement(React.Fragment, nil, {
		Button = React.createElement(Button, {
			onActivated = function()
				setOpen(true)
			end,
			text = "Open Sheet (Manual)",
		}),
		Sheet = if open
			then React.createElement(Sheet.Root, {
				centerSheetHeight = props.controls.centerSheetHeight,
				snapPoints = snapPoints,
				defaultSnapPointIndex = 2,
				preferCenterSheet = props.controls.preferCenterSheet,
				size = props.controls.size,
				onClose = function()
					setOpen(false)
				end,
			}, {
				Content = React.createElement(Sheet.Content, nil, {
					Image = React.createElement(View, {
						LayoutOrder = 1,
						tag = "size-full-full auto-y radius-medium bg-shift-200 aspect-16-9",
					}),
					Description = React.createElement(Text, {
						LayoutOrder = 2,
						Text = "This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen.",
						tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
					}),
					Description2 = React.createElement(Text, {
						LayoutOrder = 3,
						Text = "Sheets can be dismissed by swiping down or tapping outside of the sheet area.",
						tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
					}),
					Description3 = React.createElement(Text, {
						LayoutOrder = 4,
						Text = "This sheet is fully responsive and will adapt to different screen sizes and orientations.",
						tag = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap",
					}),
				}),
			})
			else nil,
	})
end

local function AccountItem(props)
	return React.createElement(View, {
		tag = "row gap-medium size-full-0 auto-y items-center",
	}, {
		Avatar = React.createElement(Avatar, {
			size = InputSize.Large,
			userId = 24813339,
		}),
		Info = React.createElement(View, {
			LayoutOrder = 2,
			tag = "col gap-xsmall fill auto-xy",
		}, {
			Username = React.createElement(Text, {
				LayoutOrder = 1,
				Text = `User #{props.index}`,
				tag = "text-body-medium content-emphasis auto-xy text-truncate-split",
			}),
			UserId = React.createElement(Text, {
				LayoutOrder = 2,
				Text = `@user{props.index}`,
				tag = "text-body-small content-default auto-xy text-truncate-split",
			}),
		}),
	})
end

local function StoryAutoSize(props)
	local open, setOpen = React.useState(false)
	local accounts, setAccounts = React.useState(1)

	local accountItems = {}
	for i = 1, accounts do
		table.insert(accountItems, React.createElement(AccountItem, { index = i, key = i }))
	end

	return React.createElement(React.Fragment, nil, {
		Button = React.createElement(Button, {
			onActivated = function()
				setOpen(true)
			end,
			text = "Open Sheet (Auto Size)",
		}),
		Sheet = if open
			then React.createElement(Sheet.Root, {
				preferCenterSheet = props.controls.preferCenterSheet,
				size = props.controls.size,
				onClose = function()
					setOpen(false)
				end,
			}, {
				Header = React.createElement(Sheet.Header, nil, {
					Title = React.createElement(Text, {
						LayoutOrder = 1,
						Text = "Account Switcher",
						tag = "auto-xy text-heading-small text-truncate-split content-emphasis",
					}),
				}),
				Content = React.createElement(Sheet.Content, nil, accountItems),
				Actions = React.createElement(Sheet.Actions, nil, {
					AddAccount = React.createElement(Button, {
						LayoutOrder = 1,
						text = "Add Account",
						size = InputSize.Large,
						variant = ButtonVariant.Emphasis,
						fillBehavior = FillBehavior.Fill,
						onActivated = function()
							setAccounts(accounts + 1)
						end,
					}),
					RemoveAccount = React.createElement(Button, {
						LayoutOrder = 2,
						text = "Remove Account",
						size = InputSize.Large,
						variant = ButtonVariant.Alert,
						fillBehavior = FillBehavior.Fill,
						onActivated = function()
							setAccounts(math.max(1, accounts - 1))
						end,
					}),
				}),
			})
			else nil,
	})
end

local function CheckboxContentWithNavigation(props: {
	checkboxStates: { [string]: boolean },
	toggleCheckbox: (key: string) -> (checked: boolean) -> (),
	lastCheckboxRef: React.Ref<GuiObject>?,
})
	local sheetNav = useSheetNavigation()
	local firstCheckboxRef = React.useRef(nil)

	React.useEffect(function()
		sheetNav.setContentStartRef(firstCheckboxRef)
	end, { sheetNav.setContentStartRef })

	return React.createElement(View, {
		tag = "col gap-small size-full-0 auto-y",
	}, {
		Notifications = React.createElement(Checkbox, {
			label = "Enable notifications",
			isChecked = props.checkboxStates.notifications,
			onActivated = props.toggleCheckbox("notifications"),
			ref = firstCheckboxRef,
			NextSelectionUp = sheetNav.closeAffordanceRef,
			NextSelectionLeft = sheetNav.closeAffordanceRef,
			LayoutOrder = 1,
		}),
		Analytics = React.createElement(Checkbox, {
			label = "Share usage analytics",
			isChecked = props.checkboxStates.analytics,
			onActivated = props.toggleCheckbox("analytics"),
			ref = props.lastCheckboxRef,
			LayoutOrder = 2,
		}),
	})
end

local function ToolbarContentWithNavigation(props: {
	onClose: () -> (),
})
	local sheetNav = useSheetNavigation()
	local toolbarRef = React.useRef(nil)

	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
	}, {
		Toolbar = React.createElement(View, {
			LayoutOrder = 1,
			tag = "row items-center gap-small size-full-0 auto-y",
		}, {
			FavoriteButton = React.createElement(IconButton, {
				LayoutOrder = 1,
				icon = IconName.Heart,
				size = InputSize.Large,
				onActivated = function() end,
			}),
			ShareButton = React.createElement(IconButton, {
				LayoutOrder = 2,
				icon = IconName.ArrowUpRightFromSquare,
				size = InputSize.Large,
				onActivated = function() end,
			}),
			MoreButton = React.createElement(IconButton, {
				LayoutOrder = 3,
				icon = IconName.CircleThreeDotsHorizontal,
				size = InputSize.Large,
				onActivated = function() end,
				ref = toolbarRef,
				NextSelectionRight = sheetNav.closeAffordanceRef,
			}),
		}),
		Image = React.createElement(View, {
			LayoutOrder = 2,
			tag = "size-full-full auto-y aspect-16-9 radius-medium bg-shift-200",
		}),
		Title = React.createElement(Text, {
			LayoutOrder = 3,
			Text = "Featured Content",
			tag = "size-full-0 auto-xy text-heading-small text-align-x-left content-emphasis",
		}),
		Description = React.createElement(Text, {
			LayoutOrder = 4,
			Text = "This sheet has no header, so the floating CloseAffordance is visible in the top-right. "
				.. "Pressing left on the CloseAffordance navigates to the toolbar, and pressing right on the "
				.. "toolbar navigates back to the CloseAffordance.",
			tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
		}),
		CloseButton = React.createElement(View, {
			LayoutOrder = 5,
			tag = "row align-x-right size-full-0 auto-y padding-top-medium",
		}, {
			Button = React.createElement(Button, {
				text = "Close",
				onActivated = props.onClose,
				variant = ButtonVariant.Emphasis,
			}),
		}),
	})
end

local function StoryFocusNavigationLeft(props)
	local open, setOpen = React.useState(false)

	return React.createElement(React.Fragment, nil, {
		Button = React.createElement(Button, {
			onActivated = function()
				setOpen(true)
			end,
			text = "Open Sheet (Left Navigation)",
		}),
		Sheet = React.createElement(Sheet.Root, {
			isOpen = open,
			preferCenterSheet = props.controls.preferCenterSheet,
			size = props.controls.size,
			onClose = function()
				setOpen(false)
			end,
		}, {
			Content = React.createElement(Sheet.Content, nil, {
				ToolbarContent = React.createElement(ToolbarContentWithNavigation, {
					onClose = function()
						setOpen(false)
					end,
				}),
			}),
		}),
	})
end

local function StoryFocusNavigation(props)
	local open, setOpen = React.useState(false)
	local checkboxStates, setCheckboxStates = React.useState({
		notifications = false,
		analytics = false,
		marketing = false,
		thirdParty = false,
	})
	local lastCheckboxRef = React.useRef(nil)

	local function toggleCheckbox(key: string)
		return function(checked: boolean)
			setCheckboxStates(function(prev)
				local next = Dash.assign({}, prev)
				next[key] = checked
				return next
			end)
		end
	end

	return React.createElement(React.Fragment, nil, {
		Button = React.createElement(Button, {
			onActivated = function()
				setOpen(true)
			end,
			text = "Open Sheet (Focus Navigation)",
		}),
		Sheet = React.createElement(Sheet.Root, {
			isOpen = open,
			preferCenterSheet = props.controls.preferCenterSheet,
			size = props.controls.size,
			onClose = function()
				setOpen(false)
			end,
		}, {
			Header = React.createElement(Sheet.Header, nil, {
				Title = React.createElement(Text, {
					LayoutOrder = 1,
					Text = "Settings",
					tag = "auto-xy text-heading-small text-truncate-split content-emphasis",
				}),
			}),
			Content = React.createElement(Sheet.Content, nil, {
				CheckboxContent = React.createElement(CheckboxContentWithNavigation, {
					checkboxStates = checkboxStates,
					toggleCheckbox = toggleCheckbox,
					lastCheckboxRef = lastCheckboxRef,
				}),
				AlignLeft = React.createElement(View, {
					tag = "row align-x-right size-full-0 auto-y padding-top-medium",
				}, {
					Button = React.createElement(Button, {
						text = "Close",
						onActivated = function()
							setOpen(false)
						end,
						variant = ButtonVariant.Emphasis,
						NextSelectionUp = lastCheckboxRef,
					}),
				}),
			}),
		}),
	})
end

local function StoryTextInput(props)
	-- story with a text input and actions
	local open, setOpen = React.useState(false)
	local loading, setLoading = React.useState(false)
	return React.createElement(React.Fragment, nil, {
		Button = React.createElement(Button, {
			onActivated = function()
				setOpen(true)
			end,
			text = "Open Sheet With TextInput",
		}),
		Sheet = open and React.createElement(Sheet.Root, {
			onClose = function()
				setOpen(false)
			end,
			preferCenterSheet = props.controls.preferCenterSheet,
			size = props.controls.size,
		}, {
			Header = React.createElement(Sheet.Header, nil, {
				Title = React.createElement(Text, {
					LayoutOrder = 1,
					Text = "Enter Your Name",
					tag = "text-heading-small content-emphasis auto-xy text-truncate-split",
				}),
			}),
			Content = React.createElement(Sheet.Content, nil, {
				TextInput = React.createElement(TextInput, {
					LayoutOrder = 1,
					label = "Test",
					width = UDim.new(1, 0),
					onChanged = function() end,
					text = "asdf",
				}),
			}),
			Actions = React.createElement(Sheet.Actions, nil, {
				Submit = React.createElement(Button, {
					LayoutOrder = 1,
					text = "Submit",
					size = InputSize.Large,
					variant = ButtonVariant.Emphasis,
					fillBehavior = FillBehavior.Fill,
					isLoading = loading,
					onActivated = function()
						setLoading(true)
						task.delay(2, function()
							setLoading(false)
						end)
					end,
				}),
			}),
		}) or nil,
	})
end

return {
	summary = "Sheet",
	stories = {
		{
			name = "Sheet (auto)",
			story = Story :: unknown,
		},
		{
			name = "Sheet (manual sizing based on height prop)",
			story = StoryManual,
		},
		{
			name = "Sheet (auto size)",
			story = StoryAutoSize,
		},
		{
			name = "Sheet with Focus Navigation",
			story = StoryFocusNavigation,
		},
		{
			name = "Sheet with Left Navigation (No Header)",
			story = StoryFocusNavigationLeft,
		},
		{
			name = "Sheet (with TextInput)",
			story = StoryTextInput,
		},
	},
	controls = {
		centerSheetHeight = 1,
		preferCenterSheet = false,
		size = { DialogSize.Medium, DialogSize.Large } :: { DialogSize },
	},
}
