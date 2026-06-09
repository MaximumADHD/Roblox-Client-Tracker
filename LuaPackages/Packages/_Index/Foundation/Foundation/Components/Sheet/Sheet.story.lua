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
local List = require(Foundation.Components.List)
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

local Flags = require(Foundation.Utility.Flags)

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
					tag = "col fill gap-xsmall auto-xy",
				}, {
					Title = React.createElement(Text, {
						LayoutOrder = 1,
						Text = "Sheet Title",
						tag = "auto-xy text-title-large text-truncate-split content-emphasis",
					}),
					Subtitle = React.createElement(Text, {
						LayoutOrder = 2,
						Text = "Subtitle or description goes here",
						tag = "auto-xy text-body-small text-truncate-split content-default",
					}),
				}),
				Notification = React.createElement(IconButton, {
					LayoutOrder = 3,
					Size = InputSize.Large,
					icon = IconName.Bell,
					onActivated = function() end,
				}),
			}),
			Content = React.createElement(Sheet.Content, { isContentFullBleed = props.controls.isContentFullBleed }, {
				Carousel = React.createElement(View, {
					LayoutOrder = 2,
					tag = "size-full-full auto-y aspect-16-9 radius-medium bg-shift-200",
				}),
				Attributes = React.createElement(View, {
					tag = "row flex-fill items-center gap-medium size-full-0 auto-y",
					LayoutOrder = 3,
				}, {
					Rating = React.createElement(View, {
						LayoutOrder = 1,
						tag = "col align-x-center gap-small auto-xy",
					}, {
						Label = React.createElement(Text, {
							LayoutOrder = 1,
							Text = "Rating",
							tag = "auto-xy text-body-small content-default",
						}),
						Value = React.createElement(Text, {
							LayoutOrder = 2,
							Text = "94%",
							tag = "auto-xy text-title-medium content-emphasis",
						}),
					}),
					Active = React.createElement(View, {
						LayoutOrder = 3,
						tag = "col align-x-center gap-small auto-xy",
					}, {
						Label = React.createElement(Text, {
							LayoutOrder = 1,
							Text = "Active",
							tag = "auto-xy text-body-small content-default",
						}),
						Value = React.createElement(Text, {
							LayoutOrder = 2,
							Text = "1.2K",
							tag = "auto-xy text-title-medium content-emphasis",
						}),
					}),
					Age = React.createElement(View, {
						LayoutOrder = 5,
						tag = "col align-x-center gap-small auto-xy",
					}, {
						Label = React.createElement(Text, {
							LayoutOrder = 1,
							Text = "Age",
							tag = "auto-xy text-body-small content-default",
						}),
						Value = React.createElement(Text, {
							LayoutOrder = 2,
							Text = "13+",
							tag = "auto-xy text-title-medium content-emphasis",
						}),
					}),
					Maturity = React.createElement(View, {
						LayoutOrder = 7,
						tag = "col align-x-center gap-small auto-xy",
					}, {
						Label = React.createElement(Text, {
							LayoutOrder = 1,
							Text = "Maturity",
							tag = "auto-xy text-body-small content-default",
						}),
						Value = React.createElement(Text, {
							LayoutOrder = 2,
							Text = "Everyone",
							tag = "auto-xy text-title-medium content-emphasis",
						}),
					}),
				}),
				Rating = React.createElement(View, {
					LayoutOrder = 4,
					tag = "row align-y-center gap-small size-full-0 auto-y padding-small radius-medium bg-shift-200",
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
							tag = "auto-xy text-body-medium content-emphasis",
						}),
						Label = React.createElement(Text, {
							LayoutOrder = 2,
							Text = "100 VOTES",
							tag = "auto-xy text-body-small content-default",
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
					tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
				}),
				Description2 = React.createElement(Text, {
					LayoutOrder = 6,
					Text = "Sheets can be dismissed by swiping down or tapping outside of the sheet area.",
					tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
				}),
				Description3 = React.createElement(Text, {
					LayoutOrder = 7,
					Text = "This sheet is fully responsive and will adapt to different screen sizes and orientations.",
					tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
				}),
				Description4 = React.createElement(Text, {
					LayoutOrder = 8,
					Text = "You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space.",
					tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
				}),
				Description5 = React.createElement(Text, {
					LayoutOrder = 9,
					Text = "Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once.",
					tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
				}),
				Description6 = React.createElement(Text, {
					LayoutOrder = 10,
					Text = "This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case.",
					tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
				}),
				Description7 = React.createElement(Text, {
					LayoutOrder = 11,
					Text = "Thank you for checking out this example of a sheet component in Roblox using the Foundation library!",
					tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
				}),
				Description8 = React.createElement(Text, {
					LayoutOrder = 12,
					Text = "Feel free to reach out if you have any questions or need further assistance.",
					tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
				}),
				Description9 = React.createElement(Text, {
					LayoutOrder = 13,
					Text = "Happy developing!",
					tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
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
				Content = React.createElement(
					Sheet.Content,
					{ isContentFullBleed = props.controls.isContentFullBleed },
					{
						Image = React.createElement(View, {
							LayoutOrder = 1,
							tag = "size-full-full auto-y aspect-16-9 radius-medium bg-shift-200",
						}),
						Description = React.createElement(Text, {
							LayoutOrder = 2,
							Text = "This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen.",
							tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
						}),
						Description2 = React.createElement(Text, {
							LayoutOrder = 3,
							Text = "Sheets can be dismissed by swiping down or tapping outside of the sheet area.",
							tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
						}),
						Description3 = React.createElement(Text, {
							LayoutOrder = 4,
							Text = "This sheet is fully responsive and will adapt to different screen sizes and orientations.",
							tag = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default",
						}),
					}
				),
			})
			else nil,
	})
end

local function AccountItem(props)
	return React.createElement(View, {
		tag = "row items-center gap-medium size-full-0 auto-y",
	}, {
		Avatar = React.createElement(Avatar, {
			size = InputSize.Large,
			userId = 24813339,
		}),
		Info = React.createElement(View, {
			LayoutOrder = 2,
			tag = "col fill gap-xsmall auto-xy",
		}, {
			Username = React.createElement(Text, {
				LayoutOrder = 1,
				Text = `User #{props.index}`,
				tag = "auto-xy text-body-medium text-truncate-split content-emphasis",
			}),
			UserId = React.createElement(Text, {
				LayoutOrder = 2,
				Text = `@user{props.index}`,
				tag = "auto-xy text-body-small text-truncate-split content-default",
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
				Content = React.createElement(
					Sheet.Content,
					{ isContentFullBleed = props.controls.isContentFullBleed },
					accountItems
				),
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
			Content = React.createElement(Sheet.Content, { isContentFullBleed = props.controls.isContentFullBleed }, {
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
			Content = React.createElement(Sheet.Content, { isContentFullBleed = props.controls.isContentFullBleed }, {
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

local function StoryFullBleed(props)
	local open, setOpen = React.useState(false)
	local ending = React.createElement(List.Item, {
		description = "End date",
		trailing = React.createElement(Text, {
			tag = "auto-xy text-title-medium content-emphasis",
			Text = "Tue, Mar 11 at 5:00 AM",
		}) :: React.ReactNode,
	})
	return React.createElement(React.Fragment, nil, {
		Button = React.createElement(Button, {
			onActivated = function()
				setOpen(true)
			end,
			text = "Open Sheet (FullBleed)",
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
			FullBleed = React.createElement(Sheet.FullBleed, {
				media = "component_assets/avatarBG_dark",
				sticky = props.controls.stickyFullBleed,
				aspectRatio = 16 / 9,
			}),
			Content = React.createElement(Sheet.Content, { isContentFullBleed = props.controls.isContentFullBleed }, {
				Body = React.createElement(View, {
					LayoutOrder = 1,
					tag = "col gap-xlarge size-full-0 auto-y padding-top-small",
				}, {
					EventDetails = React.createElement(View, {
						LayoutOrder = 1,
						tag = "row size-full-0 gap-medium auto-y items-center",
					}, {
						GameIcon = React.createElement(Image, {
							LayoutOrder = 1,
							tag = "size-1400 radius-medium bg-shift-200",
						}),
						Text = React.createElement(View, {
							LayoutOrder = 2,
							tag = "col fill align-y-center auto-xy",
						}, {
							Title = React.createElement(Text, {
								LayoutOrder = 1,
								Text = "Sheet Title",
								tag = "auto-xy text-heading-small text-truncate-split content-emphasis",
							}),
							Subtitle = React.createElement(Text, {
								LayoutOrder = 2,
								Text = "Subtitle or description goes here",
								tag = "auto-xy text-label-medium text-truncate-split content-default",
							}),
						}),
					}),
					Title = React.createElement(View, {
						LayoutOrder = 2,
						tag = "row size-full-0 auto-y gap-medium",
					}, {
						Time = React.createElement(View, {
							LayoutOrder = 1,
							tag = "row auto-xy gap-xsmall",
						}, {
							Clock = React.createElement(Icon, {
								LayoutOrder = 1,
								name = IconName.Clock,
								size = IconSize.Small,
							}),
							Time = React.createElement(Text, {
								LayoutOrder = 2,
								Text = "In 2 days",
								tag = "auto-xy text-body-medium content-emphasis",
							}),
						}),
						Interest = React.createElement(View, {
							LayoutOrder = 2,
							tag = "row auto-xy gap-xsmall",
						}, {
							People = React.createElement(Icon, {
								LayoutOrder = 1,
								name = IconName.PersonPlay,
								size = IconSize.Small,
							}),
							PeopleCount = React.createElement(Text, {
								LayoutOrder = 2,
								Text = "1M Interested",
								tag = "auto-xy text-body-medium content-emphasis",
							}),
						}),
					}),
					Description = React.createElement(Text, {
						LayoutOrder = 3,
						Text = "Style your look with iconic-inspired pieces and walk the runway to showcase your high-fashion vision. Compete, get inspired, and serve your best moment ✨...more ",
						tag = "auto-xy text-body-medium content-default text-wrap text-align-x-left",
					}),
					Rating = React.createElement(View, {
						LayoutOrder = 4,
						tag = "row size-full-0 auto-y padding-medium gap-medium stroke-default radius-medium align-y-center",
					}, {
						IARC = React.createElement(View, {
							tag = "size-1000-1300 bg-shift-200",
						}),
						Description = React.createElement(Text, {
							Text = "Strong language, Mild Suggestive Themes • In-Game Purchases (Includes Random Items)",
							tag = "auto-xy fill text-align-x-left text-body-small text-wrap",
						}),
					}),
				}),
				List = React.createElement(List.Root, {
					LayoutOrder = 2,
					isContained = {
						isContained = false :: false,
						hasMargin = false,
					},
					hasDivider = {
						hasDivider = true :: true,
						isInset = false,
					},
				}, {
					Start = React.createElement(List.Item, {
						LayoutOrder = -1,
						description = "Start date",
						trailing = React.createElement(Text, {
							tag = "auto-xy text-title-medium content-emphasis",
							Text = "Sat, Mar 8 at 8:00 PM",
						}) :: React.ReactNode,
					}),
					End = ending,
					End2 = ending,
					End3 = ending,
					End4 = ending,
					End5 = ending,
					End6 = ending,
					End7 = ending,
				}),
			}),
			Actions = React.createElement(Sheet.Actions, nil, {
				Interested = React.createElement(Button, {
					LayoutOrder = 1,
					text = "Interested",
					size = InputSize.Medium,
					variant = ButtonVariant.Emphasis,
					fillBehavior = FillBehavior.Fill,
					onActivated = function()
						setOpen(false)
					end,
				}),
				Share = React.createElement(IconButton, {
					LayoutOrder = 2,
					icon = IconName.ArrowThickToRight,
					variant = ButtonVariant.Standard,
					size = InputSize.Medium,
					onActivated = function() end,
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
			Content = React.createElement(Sheet.Content, { isContentFullBleed = props.controls.isContentFullBleed }, {
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
		if Flags.FoundationSheetFullBleed
			then {
				name = "Sheet (FullBleed)",
				story = StoryFullBleed,
			}
			else nil :: never,
	},
	controls = {
		centerSheetHeight = 1,
		preferCenterSheet = false,
		size = { DialogSize.Medium, DialogSize.Large } :: { DialogSize },
		stickyFullBleed = false,
		isContentFullBleed = false,
	},
}
