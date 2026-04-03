local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)

local Button = require(Foundation.Components.Button)
local Coachmark = require(Foundation.Components.Coachmark)
local IconButton = require(Foundation.Components.IconButton)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local Menu = require(Foundation.Components.Menu)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type MenuItem = Menu.MenuItem
type MenuItems = Menu.MenuItems
type IconSize = IconSize.IconSize
type InputSize = InputSize.InputSize
type PopoverSide = PopoverSide.PopoverSide
type PopoverAlign = PopoverAlign.PopoverAlign

local SAMPLE_MENU_ITEMS: { MenuItem } = {
	{ id = "new", icon = "icons/actions/edit/add", text = "New" },
	{ id = "edit", icon = "icons/actions/edit/edit", text = "Edit" },
	{ id = "copy", icon = "icons/actions/edit/copy", text = "Copy" },
	{ id = "delete", icon = "icons/actions/edit/delete", text = "Delete", isDisabled = true },
}

local SELECTION_MENU_ITEMS: { MenuItem } = {
	{ id = "r15", text = "R15 Only" },
	{ id = "r6", text = "R6 Only" },
	{ id = "choice", text = "Player Choice" },
}

type Props = {
	controls: {
		size: InputSize,
		side: PopoverSide,
		align: PopoverAlign,
		maxDepth: number,
	},
}

local function truncateDepth(items: any, depth: number, maxDepth: number): any
	local result = {}
	for _, item in items do
		local processed = table.clone(item)
		if processed.items then
			if depth >= maxDepth then
				processed.items = nil
			else
				processed.items = truncateDepth(processed.items, depth + 1, maxDepth)
			end
		end
		table.insert(result, processed)
	end
	return result
end

local function truncateGroups(groups: any, maxDepth: number): any
	local result = {}
	for _, group in groups do
		if group.items then
			local processed = table.clone(group)
			processed.items = truncateDepth(group.items, 1, maxDepth)
			table.insert(result, processed)
		else
			table.insert(result, truncateDepth({ group }, 1, maxDepth)[1])
		end
	end
	return result
end

local function makeNestedSubmenuItems(setIsOpen: (boolean) -> ())
	local obbyVersions: { MenuItem } = {
		{ id = "obby-v3", icon = "check-large", text = "v3.0 (Live)" },
		{ id = "obby-v2", text = "v2.5 (Draft)" },
		{ id = "obby-v1", text = "v1.0 (Archived)" },
		{ id = "obby-restore", icon = "arrow-rotate-right", text = "Restore Backup" },
	}
	local myPlaces: { MenuItems } = {
		{ id = "place-obby", icon = "globe-simplified", text = "Obby World", items = obbyVersions },
		{ id = "place-racing", icon = "globe-simplified", text = "Racing Game" },
		{ id = "place-rpg", icon = "globe-simplified", text = "RPG Quest" },
		{ id = "place-tycoon", icon = "globe-simplified", text = "Tycoon Builder" },
	}
	local openRecent: { MenuItems } = {
		{ id = "recent-places", icon = "folder", text = "My Places", items = myPlaces },
		{ id = "recent-team", icon = "folder", text = "Team Projects" },
		{ id = "recent-templates", text = "Templates" },
		{ id = "recent-clear", icon = "trash-can", text = "Clear History", isDisabled = true },
	}
	local exportItems: { MenuItems } = {
		{ id = "export-rbxl", text = "Place File (.rbxl)" },
		{ id = "export-rbxm", text = "Model File (.rbxm)" },
		{ id = "export-png", icon = "photo-camera", text = "Screenshot (.png)" },
		{ id = "export-json", icon = "code", text = "Selection as JSON" },
	}
	local fileItems: { MenuItems } = {
		{ id = "file-new", icon = "plus-small", text = "New Place" },
		{ id = "file-open-recent", icon = "clock", text = "Open Recent", items = openRecent },
		{ id = "file-save", icon = "floppy-disk", text = "Save" },
		{ id = "file-save-as", text = "Save As...", isDisabled = true },
		{ id = "file-export", icon = "arrow-large-right", text = "Export", items = exportItems },
		{ id = "file-publish", icon = "globe-simplified", text = "Publish to Roblox" },
		{ id = "file-close", icon = "x-large", text = "Close Place" },
	}

	local alignItems: { MenuItems } = {
		{ id = "align-left", icon = "arrow-large-left", text = "Align Left" },
		{ id = "align-center", text = "Align Center" },
		{ id = "align-right", icon = "arrow-large-right", text = "Align Right" },
		{ id = "align-top", icon = "arrow-large-up", text = "Align Top" },
		{ id = "align-middle", text = "Align Middle" },
		{ id = "align-bottom", icon = "arrow-large-down", text = "Align Bottom" },
	}
	local transformItems: { MenuItems } = {
		{ id = "transform-align", icon = "two-arrows-left-right", text = "Align", items = alignItems },
		{ id = "transform-rotate-cw", icon = "arrow-spin-clockwise", text = "Rotate 90\u{00B0} CW" },
		{ id = "transform-rotate-ccw", text = "Rotate 90\u{00B0} CCW" },
		{ id = "transform-flip-h", icon = "two-arrows-left-right", text = "Flip Horizontal" },
		{ id = "transform-flip-v", text = "Flip Vertical" },
		{ id = "transform-reset", text = "Reset Transform", isDisabled = true },
	}
	local editItems: { MenuItems } = {
		{ id = "edit-undo", icon = "arrow-large-left", text = "Undo" },
		{ id = "edit-redo", icon = "arrow-large-right", text = "Redo" },
		{
			id = "edit-cut",
			text = "Cut",
			onActivated = function()
				print("Menu item activated by child: edit-cut")
				setIsOpen(false)
			end,
		},
		{
			id = "edit-copy",
			text = "Copy",
			onActivated = function()
				print("Menu item activated by child: edit-copy")
				setIsOpen(false)
			end,
		},
		{
			id = "edit-paste",
			text = "Paste",
			onActivated = function()
				print("Menu item activated by child: edit-paste")
				setIsOpen(false)
			end,
		},
		{ id = "edit-duplicate", text = "Duplicate", isDisabled = true },
		{ id = "edit-transform", icon = "arrow-spin-clockwise", text = "Transform", items = transformItems },
	}

	local viewItems: { MenuItems } = {
		{ id = "view-explorer", icon = "folder", text = "Explorer" },
		{ id = "view-properties", icon = "rectangle-list", text = "Properties" },
		{ id = "view-output", text = "Output" },
		{ id = "view-cmd-bar", text = "Command Bar" },
		{ id = "view-toolbox", text = "Toolbox" },
		{ id = "view-terrain", text = "Terrain Editor" },
	}

	local particleItems: { MenuItems } = {
		{ id = "style-fire", icon = "flame", text = "Fire" },
		{ id = "style-smoke", icon = "cloud", text = "Smoke" },
		{ id = "style-sparks", icon = "star", text = "Sparks" },
		{ id = "style-custom", icon = "gear", text = "Custom..." },
	}
	local effectItems: { MenuItems } = {
		{ id = "insert-particles", icon = "star", text = "Particles", items = particleItems },
		{ id = "effect-explosion", text = "Explosion" },
		{ id = "effect-highlight", icon = "eye", text = "Highlight" },
		{ id = "effect-bloom", text = "Bloom" },
	}
	local objectItems: { MenuItems } = {
		{ id = "insert-effects", icon = "star", text = "Effects", items = effectItems },
		{ id = "insert-part", icon = "cube-vertexes", text = "Part" },
		{ id = "insert-mesh", text = "Mesh Part" },
		{ id = "insert-model", text = "Model" },
		{ id = "insert-light", icon = "lightning-bolt", text = "Light" },
		{ id = "insert-sound", icon = "speaker", text = "Sound", isDisabled = true },
	}
	local insertItems: { MenuItems } = {
		{ id = "insert-object", icon = "cube-vertexes", text = "Object", items = objectItems },
		{ id = "insert-script", icon = "code", text = "Script" },
		{ id = "insert-local-script", text = "Local Script" },
		{ id = "insert-module", text = "Module Script" },
		{ id = "insert-folder", icon = "folder", text = "Folder" },
	}

	return {
		{
			title = "Document",
			items = {
				{ id = "file", icon = "page", text = "File", items = fileItems },
				{ id = "edit", icon = "pencil-square", text = "Edit", items = editItems },
			},
		},
		{
			title = "Workspace",
			items = {
				{ id = "view", icon = "eye", text = "View", items = viewItems },
				{ id = "insert", icon = "plus-large", text = "Insert", items = insertItems },
			},
		},
		{
			title = "Quick Actions",
			items = {
				{ id = "select-all", icon = "check-large", text = "Select All" },
				{ id = "preferences", icon = "gear", text = "Preferences" },
			},
		},
	} :: { MenuItems }
end

return {
	summary = "Menu - A popover-based menu component that combines Popover with InternalMenu",
	stories = {
		{
			name = "Always Open",
			story = function(props: Props)
				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 300),
					tag = "row align-x-center align-y-center",
				}, {
					Menu = React.createElement(Menu, {
						isOpen = true,
						items = SAMPLE_MENU_ITEMS,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onActivated = function(id)
							print("Always open menu item activated:", id)
						end,
					}, {
						Button = React.createElement(Button, {
							text = "Always Open Menu",
							size = InputSize.Medium,
							onActivated = function()
								print("Button clicked but menu stays open")
							end,
						}),
					}),
				})
			end,
		},
		{
			name = "Basic Menu",
			story = function(props: Props)
				local isOpen, setIsOpen = React.useState(false)

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 100),
					tag = "row align-x-center align-y-center",
				}, {
					Menu = React.createElement(Menu, {
						isOpen = isOpen,
						items = SAMPLE_MENU_ITEMS,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen(false)
						end,
						onActivated = function(id)
							print("Menu item activated:", id)
							setIsOpen(false)
						end,
					}, {
						Button = React.createElement(Button, {
							text = "Open Menu",
							size = InputSize.Medium,
							onActivated = function()
								setIsOpen(not isOpen)
							end,
						}),
					}),
				})
			end,
		},
		{
			name = "Selection Menu",
			story = function(props: Props)
				local isOpen, setIsOpen = React.useState(false)
				local selectedItemId, setSelectedItemId = React.useState(SELECTION_MENU_ITEMS[1].id)

				local menuItems = React.useMemo(function()
					return Dash.map(SELECTION_MENU_ITEMS, function(item)
						return {
							id = item.id,
							text = item.text,
							isChecked = selectedItemId == item.id,
						}
					end)
				end, { selectedItemId })

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 300),
					tag = "row align-x-center align-y-center",
				}, {
					Menu = React.createElement(Menu, {
						isOpen = isOpen,
						items = menuItems,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen(false)
						end,
						onActivated = function(id)
							setSelectedItemId(id)
						end,
					}, {
						Button = React.createElement(Button, {
							text = "Selection Menu",
							size = InputSize.Medium,
							onActivated = function()
								setIsOpen(not isOpen)
							end,
						}),
					}),
				})
			end,
		},
		{
			name = "Different Anchors",
			story = function(props: Props)
				local isOpen1, setIsOpen1 = React.useState(false)
				local isOpen2, setIsOpen2 = React.useState(false)

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 300),
					tag = "row align-x-center align-y-center gap-large",
				}, {
					ButtonMenu = React.createElement(Menu, {
						isOpen = isOpen1,
						items = SAMPLE_MENU_ITEMS,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen1(false)
						end,
						onActivated = function(id)
							print("Button menu item activated:", id)
							setIsOpen1(false)
						end,
					}, {
						IconButton = React.createElement(IconButton, {
							icon = "icons/common/more",
							size = IconSize.Medium,
							onActivated = function()
								setIsOpen1(not isOpen1)
							end,
						}),
					}),
					CardMenu = React.createElement(Menu, {
						isOpen = isOpen2,
						items = SAMPLE_MENU_ITEMS,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen2(false)
						end,
						onActivated = function(id)
							print("Card menu item activated:", id)
							setIsOpen2(false)
						end,
					}, {
						Card = React.createElement(View, {
							tag = "bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-medium",
							onActivated = function()
								setIsOpen2(not isOpen2)
							end,
						}, {
							Title = React.createElement(Text, {
								Text = "Card with Menu",
								tag = "auto-xy text-heading-medium",
							}),
							Subtitle = React.createElement(Text, {
								Text = "Click me to open menu",
								tag = "auto-xy text-body-small",
							}),
						}),
					}),
				})
			end,
		},
		{
			name = "Reference anchor",
			story = function(props: Props)
				local ref = React.useRef(nil)
				local isOpen, setIsOpen = React.useState(false)

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 300),
					tag = "row align-x-center align-y-center",
				}, {
					Anchor = React.createElement(Button, {
						text = "Anchor outside of the menu component",
						size = InputSize.Medium,
						ref = ref,
						onActivated = function()
							setIsOpen(true)
						end,
					}),
					Menu = React.createElement(Menu, {
						isOpen = isOpen,
						items = SAMPLE_MENU_ITEMS,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen(false)
						end,
						onActivated = function(id)
							print("Always open menu item activated:", id)
						end,
						anchorRef = ref,
					}),
				})
			end,
		},
		{
			name = "Coachmark on menu item",
			story = function(props: Props)
				local ref1 = React.useRef(nil)
				local ref2 = React.useRef(nil)
				local isOpen, setIsOpen = React.useState(false)
				local coachmarkAnchorRef, setCoachmarkAnchorRef = React.useState(nil :: React.Ref<GuiObject>?)
				local isCoachmarkOpen, setIsCoachmarkOpen = React.useState(false)

				local itemsWithRefs: { MenuItem } = {
					{ id = "option-a", text = "Option A", ref = ref1 },
					{ id = "option-b", text = "Option B", ref = ref2 },
				}

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 300),
					tag = "row align-x-center align-y-center",
				}, {
					Menu = React.createElement(Menu, {
						isOpen = isOpen,
						items = itemsWithRefs,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen(false)
						end,
						onActivated = function(id)
							-- Keep menu open so the item ref stays mounted for the coachmark anchor
							if id == "option-a" then
								setCoachmarkAnchorRef(ref1)
							elseif id == "option-b" then
								setCoachmarkAnchorRef(ref2)
							end
							setIsCoachmarkOpen(true)
						end,
					}, {
						Button = React.createElement(Button, {
							text = "Open Menu",
							size = InputSize.Medium,
							onActivated = function()
								setIsOpen(not isOpen)
							end,
						}),
					}),
					Coachmark = React.createElement(Coachmark, {
						title = "Anchored to this item",
						text = "The coachmark is anchored to the menu item you clicked.",
						isOpen = isCoachmarkOpen,
						anchorRef = coachmarkAnchorRef,
						onClose = function()
							setIsCoachmarkOpen(false)
						end,
					}),
				})
			end,
		},
		{
			name = "Match anchorRef width",
			story = function(props: Props)
				local ref = React.useRef(nil)
				local isOpen, setIsOpen = React.useState(false)
				local menuWidth, setMenuWidth = React.useState(nil :: UDim?)

				React.useLayoutEffect(function()
					local anchorInstance = ref.current :: GuiObject?
					if not anchorInstance then
						return
					end

					local function updateWidth()
						setMenuWidth(UDim.new(0, anchorInstance.AbsoluteSize.X))
					end

					updateWidth()
					local connection = anchorInstance:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateWidth)

					return function()
						connection:Disconnect()
					end
				end, {})

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 300),
				}, {
					Anchor = React.createElement(Button, {
						text = `External anchor`,
						size = InputSize.Medium,
						width = UDim.new(0, 220),
						ref = ref,
						onActivated = function()
							setIsOpen(not isOpen)
						end,
					}),
					Menu = React.createElement(Menu, {
						isOpen = isOpen,
						items = SAMPLE_MENU_ITEMS,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						width = menuWidth,
						onPressedOutside = function()
							setIsOpen(false)
						end,
						onActivated = function(id)
							print("Menu item activated:", id)
							setIsOpen(false)
						end,
						anchorRef = ref,
					}),
				})
			end,
		},
		{
			name = "Grouped",
			story = function(props: Props)
				local isOpen, setIsOpen = React.useState(false)
				local selectedItemId, setSelectedItemId = React.useState("a1")
				local items = {
					{
						title = "First title" :: string?,
						items = {
							{
								id = "a1",
								icon = "icons/common/robux",
								text = "Alpha 1",
								isChecked = selectedItemId == "a1",
							} :: MenuItem,
							{
								id = "a2",
								text = "Alpha 2",
								isChecked = selectedItemId == "a2",
							},
						},
					},
					{
						items = {
							{
								id = "b1",
								text = "Beta 1",
								isChecked = selectedItemId == "b1",
							},
							{
								id = "b2",
								isDisabled = true,
								text = "Beta 2 (disabled)",
								isChecked = selectedItemId == "b2",
							},
						},
					},
					{
						items = {
							{ id = "c1", text = "Untitled group item", isChecked = selectedItemId == "c1" },
						},
					},
				}

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 100),
					tag = "row align-x-center align-y-center",
				}, {
					Menu = React.createElement(Menu, {
						isOpen = isOpen,
						items = items,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						onPressedOutside = function()
							setIsOpen(false)
						end,
						onActivated = function(id: number | string)
							setIsOpen(false)
							setSelectedItemId(id :: string)
						end,
					}, {
						Button = React.createElement(Button, {
							text = "Open Menu",
							size = InputSize.Medium,
							onActivated = function()
								setIsOpen(not isOpen)
							end,
						}),
					}),
				})
			end,
		},
		if Flags.FoundationBaseMenuSubmenuSupport
			then {
				name = "Nested Submenus",
				story = function(props: Props)
					local isOpen, setIsOpen = React.useState(false)

					local maxDepth = props.controls.maxDepth
					local items = React.useMemo(function()
						return truncateGroups(makeNestedSubmenuItems(setIsOpen), maxDepth)
					end, { maxDepth })

					return React.createElement(View, {
						Size = UDim2.new(1, 0, 0, 600),
						tag = "row align-x-center align-y-center",
					}, {
						Menu = React.createElement(Menu, {
							isOpen = isOpen,
							items = items,
							size = props.controls.size,
							side = props.controls.side,
							align = props.controls.align,
							onPressedOutside = function()
								setIsOpen(false)
							end,
							onActivated = function(id)
								print("Menu item activated by parent:", id)
								setIsOpen(false)
							end,
						}, {
							Button = React.createElement(Button, {
								text = "Open Menu",
								size = InputSize.Medium,
								onActivated = function()
									setIsOpen(not isOpen)
								end,
							}),
						}),
					})
				end,
			}
			else {} :: any,
	},
	controls = {
		size = Dash.values(InputSize),
		side = { PopoverSide.Bottom, PopoverSide.Top, PopoverSide.Left, PopoverSide.Right } :: { PopoverSide },
		align = Dash.values(PopoverAlign),
		maxDepth = { 3, 4, 5 },
	},
}
