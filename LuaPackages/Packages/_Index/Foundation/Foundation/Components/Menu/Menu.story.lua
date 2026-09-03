local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local BadgeVariant = require(Foundation.Enums.BadgeVariant)
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
type BadgeVariant = BadgeVariant.BadgeVariant

local SAMPLE_MENU_ITEMS: { MenuItem } = {
	{ id = "new", icon = BuilderIcons.Icon.CirclePlus, text = "New" },
	{ id = "edit", icon = BuilderIcons.Icon.Pencil, text = "Edit" },
	{ id = "copy", icon = BuilderIcons.Icon.StackedSquaresPlus, text = "Copy" },
	{ id = "delete", icon = BuilderIcons.Icon.TrashCan, text = "Delete", isDisabled = true },
}

-- Pool of sample labels/icons cycled through to build arbitrarily long menus in the Playground.
local LONG_MENU_ITEMS: { { icon: string, text: string } } = {
	{ icon = BuilderIcons.Icon.CirclePlus, text = "New" },
	{ icon = BuilderIcons.Icon.Pencil, text = "Open" },
	{ icon = BuilderIcons.Icon.Pencil, text = "Save" },
	{ icon = BuilderIcons.Icon.Pencil, text = "Save As..." },
	{ icon = BuilderIcons.Icon.Pencil, text = "Rename" },
	{ icon = BuilderIcons.Icon.StackedSquaresPlus, text = "Duplicate" },
	{ icon = BuilderIcons.Icon.StackedSquaresPlus, text = "Copy" },
	{ icon = BuilderIcons.Icon.StackedSquaresPlus, text = "Cut" },
	{ icon = BuilderIcons.Icon.StackedSquaresPlus, text = "Paste" },
	{ icon = BuilderIcons.Icon.Pencil, text = "Export" },
	{ icon = BuilderIcons.Icon.Pencil, text = "Import" },
	{ icon = BuilderIcons.Icon.TrashCan, text = "Delete" },
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
		-- Number of items generated per menu level in the Playground.
		numMenuItems: number,
		-- Height (in px) after which the menu and its submenus scroll; `0` means no cap.
		maxHeight: number,
		leading: string?,
		trailing: string?,
		firstItemText: string,
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
			name = "Playground",
			story = function(props: Props)
				local isOpen, setIsOpen = React.useState(false)
				local selectedId, setSelectedId = React.useState(nil :: string?)

				local recursionDepth = props.controls.maxDepth
				local leadingMode = props.controls.leading or "Icon"
				local trailingMode = props.controls.trailing or "None"
				local firstItemText = props.controls.firstItemText

				local leadingIconPalette = {
					BuilderIcons.Icon.Pencil,
					BuilderIcons.Icon.ClipboardPencil,
					BuilderIcons.Icon.TextBBold,
					BuilderIcons.Icon.ArrowUpFromLandscapeRectangle,
					BuilderIcons.Icon.StackedSquaresPlus,
					BuilderIcons.Icon.TrashCan,
				}
				local function leadingFor(index: number, currentDepth: number): any
					if leadingMode == "None" then
						return nil
					end
					if leadingMode == "Avatar" then
						return { type = "Avatar", userId = 24813339 } :: any
					end
					if leadingMode == "Mixed" then
						-- alternate icon → avatar → none → repeat
						local r = (index - 1) % 3
						if r == 1 then
							return { type = "Avatar", userId = 24813339 } :: any
						elseif r == 2 then
							return nil
						end
					end
					-- Fall through to icon for "Icon" + the icon arm of "Mixed".
					return leadingIconPalette[((index - 1 + currentDepth) % #leadingIconPalette) + 1]
				end

				local hintPalette = { "⌘B", "⌘I", "⌘C", "⌘V", "⌘S", "⌘Z" }
				local badgePalette: { { text: string, variant: BadgeVariant } } = {
					{ text = "New", variant = BadgeVariant.Success },
					{ text = "Beta", variant = BadgeVariant.Warning },
					{ text = "Pro", variant = BadgeVariant.Contrast },
					{ text = "Soon", variant = BadgeVariant.Neutral },
				}
				local function trailingFor(index: number, isSubmenu: boolean): any
					if isSubmenu or trailingMode == "None" then
						return nil
					end
					if trailingMode == "Hint" then
						return { type = "Hint", text = hintPalette[((index - 1) % #hintPalette) + 1] } :: any
					end
					if trailingMode == "Badge" then
						local b = badgePalette[((index - 1) % #badgePalette) + 1]
						return { type = "Badge", text = b.text, variant = b.variant } :: any
					end
					-- Mixed: hint on odd indices, badge on even.
					if index % 2 == 1 then
						return { type = "Hint", text = hintPalette[((index - 1) % #hintPalette) + 1] } :: any
					end
					local b = badgePalette[((index - 1) % #badgePalette) + 1]
					return { type = "Badge", text = b.text, variant = b.variant } :: any
				end

				local itemTexts: { [string]: string } = {}

				local function buildMenu(
					currentDepth: number,
					prefix: string,
					isTopLevel: boolean,
					count: number
				): MenuItems
					local hasNested = currentDepth > 1
					local function buildItem(
						index: number,
						isSubmenuTrigger: boolean,
						isFirstOverall: boolean
					): MenuItem
						local id = `{prefix}-{index}`
						local poolItem = LONG_MENU_ITEMS[((index - 1) % #LONG_MENU_ITEMS) + 1]
						local label = if isSubmenuTrigger then `More ({poolItem.text})` else poolItem.text
						local resolvedText = if isFirstOverall and firstItemText ~= "" then firstItemText else label
						itemTexts[id] = resolvedText
						local item: MenuItem = {
							id = id,
							text = resolvedText,
							leading = leadingFor(index, currentDepth),
							trailing = trailingFor(index, isSubmenuTrigger),
							isChecked = if isSubmenuTrigger then nil else selectedId == id,
						}
						if isSubmenuTrigger then
							item.items = buildMenu(currentDepth - 1, `{id}-sub`, false, count)
						end
						return item
					end

					-- Split the items across two groups; the last item of each group opens a submenu
					-- (when nesting is enabled) so deeper levels stay reachable.
					local half = math.max(1, math.ceil(count / 2))
					local groupAItems: { MenuItem } = {}
					local groupBItems: { MenuItem } = {}
					for i = 1, count do
						local isSubmenuTrigger = hasNested and (i == half or i == count)
						local item = buildItem(i, isSubmenuTrigger, isTopLevel and i == 1)
						if i <= half then
							table.insert(groupAItems, item)
						else
							table.insert(groupBItems, item)
						end
					end

					local groupA = { title = "Group A" :: string?, items = groupAItems }
					local groupB = { title = "Group B" :: string?, items = groupBItems }
					return (if #groupBItems > 0 then { groupA, groupB } else { groupA }) :: MenuItems
				end

				local items = buildMenu(recursionDepth, "p", true, props.controls.numMenuItems)

				return React.createElement(View, {
					Size = UDim2.new(1, 0, 0, 480),
					tag = "row align-x-center align-y-center",
				}, {
					Menu = React.createElement(Menu, {
						isOpen = isOpen,
						items = items,
						size = props.controls.size,
						side = props.controls.side,
						align = props.controls.align,
						maxHeight = if props.controls.maxHeight > 0 then props.controls.maxHeight else nil,
						onPressedOutside = function()
							setIsOpen(false)
						end,
						onActivated = function(id)
							local key = tostring(id)
							print(`Menu: "{itemTexts[key] or key}" activated`)
							setSelectedId(key)
							setIsOpen(false)
						end,
					}, {
						Button = React.createElement(Button, {
							text = "Open Playground",
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
							icon = BuilderIcons.Icon.CircleThreeDotsHorizontal,
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
							tag = "col gap-medium auto-xy padding-large stroke-neutral radius-medium bg-surface-100",
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
								icon = BuilderIcons.Icon.Robux,
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
		{
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
		},
		{
			name = "Nested Submenus (per-item onActivated)",
			story = function(props: Props)
				local isOpen, setIsOpen = React.useState(false)

				local items: { MenuItem } = {
					{
						id = "file",
						icon = "page",
						text = "File",
						items = {
							{
								id = "file-new",
								icon = "plus-small",
								text = "New Place",
								onActivated = function(id)
									print("Per-item onActivated:", id)
								end,
							},
							{
								id = "file-open-recent",
								icon = "clock",
								text = "Open Recent",
								items = {
									{
										id = "recent-project-a",
										text = "Project A",
										onActivated = function(id)
											print("Per-item onActivated:", id)
										end,
									},
									{
										id = "recent-project-b",
										text = "Project B",
										onActivated = function(id)
											print("Per-item onActivated:", id)
										end,
									},
								},
							} :: any,
						} :: any,
					},
					{
						id = "edit",
						icon = "pencil-square",
						text = "Edit",
						items = {
							{
								id = "edit-cut",
								text = "Cut",
								onActivated = function(id)
									print("Per-item onActivated:", id)
								end,
							},
							{
								id = "edit-copy",
								text = "Copy",
								onActivated = function(id)
									print("Per-item onActivated:", id)
								end,
							},
						},
					} :: any,
				} :: { MenuItem }

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
	},
	controls = {
		size = Dash.values(InputSize),
		side = { PopoverSide.Bottom, PopoverSide.Top, PopoverSide.Left, PopoverSide.Right } :: { PopoverSide },
		align = Dash.values(PopoverAlign),
		maxDepth = { 3, 4, 5, 2, 1 },
		numMenuItems = 6,
		maxHeight = { 0, 180, 240, 360 },
		firstItemText = "Action one",
		leading = { "Icon", "Avatar", "Mixed", "None" },
		trailing = { "Hint", "Badge", "Mixed", "None" },
	},
}
