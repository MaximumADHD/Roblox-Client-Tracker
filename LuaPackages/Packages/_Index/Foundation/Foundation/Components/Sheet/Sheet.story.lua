local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local Button = require(Foundation.Components.Button)
local Icon = require(Foundation.Components.Icon)
local IconButton = require(Foundation.Components.IconButton)
local Image = require(Foundation.Components.Image)
local Sheet = require(Foundation.Components.Sheet)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local IconName = require(Packages.BuilderIcons).Icon
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local DialogSize = require(Foundation.Enums.DialogSize)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local useScaledValue = require(Foundation.Utility.useScaledValue)
type DialogSize = DialogSize.DialogSize

local function Story(props)
	local open, setOpen = React.useState(false)
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
						tag = "text-heading-large content-emphasis auto-xy text-truncate-split",
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

return {
	summary = "Sheet",
	stories = {
		{
			name = "Sheet (auto)",
			story = Story :: unknown,
		},
		{
			name = "Sheet (manual)",
			story = StoryManual,
		},
		{
			name = "Sheet (auto size)",
			story = StoryAutoSize,
		},
	},
	controls = {
		preferCenterSheet = false,
		size = { DialogSize.Medium, DialogSize.Large } :: { DialogSize },
	},
}
