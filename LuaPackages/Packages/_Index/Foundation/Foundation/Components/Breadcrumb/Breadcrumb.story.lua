local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Breadcrumb = require(Foundation.Components.Breadcrumb)
local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local InputSize = require(Foundation.Enums.InputSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Menu = require(Foundation.Components.Menu)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local View = require(Foundation.Components.View)

local IconName = BuilderIcons.Icon
local IconVariant = BuilderIcons.IconVariant
local LabeledCell = StorySection.LabeledCell
local matrixLabel = MatrixGridShared.matrixLabel
local Section = StorySection.Section

type InputSize = InputSize.InputSize
type BreadcrumbItem = Breadcrumb.BreadcrumbItem
type MenuItem = Menu.MenuItem

type Controls = {
	itemCount: number,
	leading: string,
	leadingPosition: string,
	size: InputSize,
	hasOnDropdownActivated: boolean,
}

local SIZE_ORDER: { InputSize } = {
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local ICON_TYPE_LABEL_COLUMN_WIDTH = 260
local TWO_PAGE_COLUMN_WIDTH = 200
local NAVIGATION_COUNT = 5
local DROPDOWN_CHOICES = { "Option 1", "Option 2", "Option 3" }

local function noop() end

local function makeItems(count: number): { BreadcrumbItem }
	local items: { BreadcrumbItem } = {}
	for index = 1, count do
		table.insert(items, {
			text = `Page {index}`,
			onActivated = if index < count then noop else nil,
		})
	end
	return items
end

local function itemsWithLeading(leading: string): { BreadcrumbItem }
	local items = makeItems(2)
	items[1].leading = leading
	return items
end

local DEFAULT_ITEMS = makeItems(3)
local REGULAR_ICON_ITEMS = itemsWithLeading(IconName.House)
local IMAGE_ITEMS = itemsWithLeading("rbxassetid://103403748802347")
local OVER_LIMIT_ITEMS = makeItems(5)
local LEADING_COLUMN_WIDTH = 280
local function itemsWithLeadingAt(count: number, atIndex: number?): { BreadcrumbItem }
	local items = makeItems(count)
	for index = 1, count do
		if atIndex == nil or index == atIndex then
			items[index].leading = IconName.House
		end
	end
	return items
end

local FILLED_ICON_ITEMS = makeItems(2)
FILLED_ICON_ITEMS[1].leading = { iconName = IconName.House, iconVariant = IconVariant.Filled }

local AVATAR_ITEMS = makeItems(2)
AVATAR_ITEMS[1].leading = { type = "Avatar", userId = 24813339 }

local MIXED_LEADING_ITEMS = makeItems(4)
MIXED_LEADING_ITEMS[1].leading = IconName.House
MIXED_LEADING_ITEMS[2].leading = { type = "Avatar", userId = 24813339 }
MIXED_LEADING_ITEMS[3].leading = "rbxassetid://103403748802347"

local ITEM_COUNT_ORDER: { number } = { 2, 3, 4, 5 }
local LEADING_ORDER: { string } = { "None", "Icon", "Avatar", "Image" }
local LEADING_POSITION_ORDER: { string } = { "First", "Current", "All" }

local function setLeading(item: BreadcrumbItem, leading: string)
	if leading == "Icon" then
		item.leading = IconName.House
	elseif leading == "Avatar" then
		item.leading = { type = "Avatar", userId = 24813339 }
	elseif leading == "Image" then
		item.leading = "rbxassetid://103403748802347"
	end
end

local function playgroundItems(controls: Controls, count: number): { BreadcrumbItem }
	local items = makeItems(count)
	for index = 1, count do
		local isTarget = controls.leadingPosition == "All"
			or (controls.leadingPosition == "First" and index == 1)
			or (controls.leadingPosition == "Current" and index == count)
		if isTarget then
			setLeading(items[index], controls.leading)
		end
	end
	return items
end

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	local controls = props.controls
	local depth, setDepth = React.useState(controls.itemCount)

	React.useEffect(function()
		setDepth(controls.itemCount)
	end, { controls.itemCount })

	local count = math.min(depth, controls.itemCount)
	local items = playgroundItems(controls, count)
	for index, item in items do
		if index < count then
			item.onActivated = function()
				setDepth(index)
			end
		end
	end

	return React.createElement(View, {
		tag = `align-x-left {StorySection.STORY_PAGE_COL_TAG}`,
	}, {
		Breadcrumb = React.createElement(Breadcrumb, {
			size = controls.size,
			onDropdownActivated = if controls.hasOnDropdownActivated then noop else nil,
			items = items,
			LayoutOrder = 1,
		}),
		Reset = if count < controls.itemCount
			then React.createElement(Button, {
				text = "Reset trail",
				variant = ButtonVariant.Standard,
				onActivated = function()
					setDepth(controls.itemCount)
				end,
				LayoutOrder = 2,
			})
			else nil,
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		Size = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Size",
		}, {
			Small = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "Small",
			}, {
				Breadcrumb = React.createElement(Breadcrumb, {
					size = InputSize.Small,
					items = DEFAULT_ITEMS,
				}),
			}),
			Medium = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "Medium",
			}, {
				Breadcrumb = React.createElement(Breadcrumb, {
					items = DEFAULT_ITEMS,
				}),
			}),
			Large = React.createElement(LabeledCell, {
				LayoutOrder = 3,
				label = "Large",
			}, {
				Breadcrumb = React.createElement(Breadcrumb, {
					size = InputSize.Large,
					items = DEFAULT_ITEMS,
				}),
			}),
		}),
	})
end

local function NavigationExample(props: { LayoutOrder: number })
	local depth, setDepth = React.useState(NAVIGATION_COUNT)

	local items: { BreadcrumbItem } = {}
	local pageButtons: { [string]: React.ReactNode } = {}
	for index = 1, NAVIGATION_COUNT do
		local isCurrent = index == depth
		if index <= depth then
			table.insert(items, {
				text = `Page {index}`,
				onActivated = if isCurrent
					then nil
					else function()
						setDepth(index)
					end,
			})
		end
		pageButtons[`Page{index}`] = React.createElement(Button, {
			text = `Page {index}`,
			variant = if isCurrent then ButtonVariant.Emphasis else ButtonVariant.Standard,
			onActivated = function()
				setDepth(index)
			end,
			LayoutOrder = index,
		})
	end

	return React.createElement(View, {
		tag = "col align-x-left gap-medium auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Breadcrumb = React.createElement(Breadcrumb, {
			items = items,
			LayoutOrder = 1,
		}),
		Pages = React.createElement(View, {
			tag = "row gap-small auto-xy",
			LayoutOrder = 2,
		}, pageButtons),
	})
end

local function DropdownExample(props: { LayoutOrder: number })
	local currentPage, setCurrentPage = React.useState(DROPDOWN_CHOICES[1])
	local isOpen, setIsOpen = React.useState(false)
	local anchorRef = React.useRef(nil :: GuiObject?)

	local menuItems: { MenuItem } = {}
	for _, page in DROPDOWN_CHOICES do
		table.insert(menuItems, {
			id = page,
			text = page,
			isChecked = page == currentPage,
		})
	end

	return React.createElement(View, {
		tag = "col align-x-left auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Breadcrumb = React.createElement(Breadcrumb, {
			items = {
				{ text = "Page 1", onActivated = noop },
				{ text = currentPage, ref = anchorRef },
			} :: { BreadcrumbItem },
			onDropdownActivated = function()
				setIsOpen(function(open)
					return not open
				end)
			end,
			LayoutOrder = 1,
		}),
		Menu = React.createElement(Menu, {
			isOpen = isOpen,
			anchorRef = anchorRef,
			items = menuItems,
			onActivated = function(id)
				setCurrentPage(tostring(id))
				setIsOpen(false)
			end,
			onPressedOutside = function()
				setIsOpen(false)
			end,
		}),
	})
end

local function ControlledStory(): React.ReactNode
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		Navigation = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Navigation",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(NavigationExample, {
				LayoutOrder = 1,
			}),
		}),
		Dropdown = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Dropdown",
			note = "Give the current item a ref and pass it as the menu's anchorRef to open the menu under the current crumb.",
			contentTag = "auto-xy",
		}, {
			Example = React.createElement(DropdownExample, {
				LayoutOrder = 1,
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = StorySection.STORY_PAGE_COL_TAG,
	}, {
		IconByType = React.createElement(StorySection.MatrixSection, {
			LayoutOrder = 1,
			name = "Icon by type",
			labelColumnWidth = ICON_TYPE_LABEL_COLUMN_WIDTH,
			columnHeaders = Dash.map(SIZE_ORDER, function(size): string
				return size
			end),
			cellColumnWidth = TWO_PAGE_COLUMN_WIDTH,
			rowGap = "xxlarge",
			rows = StoryIcons.buildIconTypeMatrixRows(function(iconExample)
				return Dash.map(SIZE_ORDER, function(size)
					return React.createElement(Breadcrumb, {
						size = size,
						items = itemsWithLeading(iconExample.name),
					})
				end)
			end),
		}),
		IconByVariant = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Icon by variant",
			note = "A name string is Regular; Filled is only available on the table arm.",
		}, {
			Regular = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "Regular",
			}, {
				Breadcrumb = React.createElement(Breadcrumb, {
					items = REGULAR_ICON_ITEMS,
				}),
			}),
			Filled = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "Filled",
			}, {
				Breadcrumb = React.createElement(Breadcrumb, {
					items = FILLED_ICON_ITEMS,
				}),
			}),
		}),
		LeadingBySize = React.createElement(StorySection.MatrixSection, {
			LayoutOrder = 3,
			name = "Leading by size",
			columnHeaders = { "Icon", "Avatar", "Image" },
			cellColumnWidth = LEADING_COLUMN_WIDTH,
			rows = Dash.map(SIZE_ORDER, function(size)
				return {
					label = matrixLabel(size),
					cells = {
						React.createElement(Breadcrumb, {
							size = size,
							items = REGULAR_ICON_ITEMS,
						}),
						React.createElement(Breadcrumb, {
							size = size,
							items = AVATAR_ITEMS,
						}),
						React.createElement(Breadcrumb, {
							size = size,
							items = IMAGE_ITEMS,
						}),
					},
				}
			end),
		}),
		MixedLeading = React.createElement(StorySection.MatrixSection, {
			LayoutOrder = 4,
			name = "Mixed leading",
			columnHeaders = { "Icon, avatar, image, none" },
			rows = Dash.map(SIZE_ORDER, function(size)
				return {
					label = matrixLabel(size),
					cells = {
						React.createElement(Breadcrumb, {
							size = size,
							items = MIXED_LEADING_ITEMS,
						}),
					},
				}
			end),
		}),
		LeadingByPosition = React.createElement(Section, {
			LayoutOrder = 5,
			name = "Leading by position",
		}, {
			First = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "First",
			}, {
				Breadcrumb = React.createElement(Breadcrumb, {
					items = itemsWithLeadingAt(2, 1),
				}),
			}),
			Current = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "Current",
			}, {
				Breadcrumb = React.createElement(Breadcrumb, {
					items = itemsWithLeadingAt(2, 2),
				}),
			}),
			All = React.createElement(LabeledCell, {
				LayoutOrder = 3,
				label = "All",
			}, {
				Breadcrumb = React.createElement(Breadcrumb, {
					items = itemsWithLeadingAt(2),
				}),
			}),
			AllFive = React.createElement(LabeledCell, {
				LayoutOrder = 4,
				label = "All 5 pages",
			}, {
				Breadcrumb = React.createElement(Breadcrumb, {
					items = itemsWithLeadingAt(5),
				}),
			}),
		}),
		Overflow = React.createElement(StorySection.MatrixSection, {
			LayoutOrder = 6,
			name = "Overflow",
			note = "The cap is fixed at four crumbs; separator, maxItems, itemsBeforeCollapse, itemsAfterCollapse, and trailing are deprecated and unread.",
			columnHeaders = { "5 items" },
			cellColumnWidth = LEADING_COLUMN_WIDTH,
			rows = Dash.map(SIZE_ORDER, function(size)
				return {
					label = matrixLabel(size),
					cells = {
						React.createElement(Breadcrumb, {
							size = size,
							items = OVER_LIMIT_ITEMS,
						}),
					},
				}
			end),
		}),
		Dropdown = React.createElement(StorySection.MatrixSection, {
			LayoutOrder = 7,
			name = "Dropdown",
			columnHeaders = { "No leading", "Leading" },
			cellColumnWidth = LEADING_COLUMN_WIDTH,
			rows = Dash.map(SIZE_ORDER, function(size)
				return {
					label = matrixLabel(size),
					cells = {
						React.createElement(Breadcrumb, {
							size = size,
							items = makeItems(2),
							onDropdownActivated = noop,
						}),
						React.createElement(Breadcrumb, {
							size = size,
							items = itemsWithLeadingAt(2, 2),
							onDropdownActivated = noop,
						}),
					},
				}
			end),
		}),
	})
end

return {
	summary = "A trail of links that shows the current page's place in a hierarchy and navigates to an ancestor.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		itemCount = ITEM_COUNT_ORDER,
		leading = LEADING_ORDER,
		leadingPosition = LEADING_POSITION_ORDER,
		size = SIZE_ORDER,
		hasOnDropdownActivated = false,
	},
}
