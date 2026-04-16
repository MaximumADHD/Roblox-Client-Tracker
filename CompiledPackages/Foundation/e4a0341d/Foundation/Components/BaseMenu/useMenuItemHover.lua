--[[
	Per-item hook that wires a GuiObject's GuiState changes to the centralized
	submenu hover state (managed by useSubmenuHover). Listens for Hover
	enter/leave and calls the appropriate openAtDepth / closeAtDepth callbacks.

	For submenu items (isSubmenu = true):  hover opens, un-hover closes.
	For leaf items (isSubmenu = false):    hover closes any open sibling submenu.
	Disabled items are ignored entirely.
]]
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
type ItemId = Types.ItemId

export type UseMenuItemHoverOptions = {
	itemRef: { current: GuiObject? },
	id: ItemId,
	depth: number,
	isSubmenu: boolean,
	isDisabled: boolean?,
	hoverOpenAtDepth: ((depth: number, id: ItemId, immediate: boolean?) -> ())?,
	hoverCloseAtDepth: ((depth: number) -> ())?,
}

local function useMenuItemHover(options: UseMenuItemHoverOptions)
	React.useEffect(
		function()
			if options.itemRef.current == nil then
				return
			end
			if typeof(options.itemRef.current) ~= "Instance" then
				return
			end

			local connection = options.itemRef.current:GetPropertyChangedSignal("GuiState"):Connect(function()
				if options.isSubmenu then
					if options.isDisabled then
						return
					end

					local isHovered = options.itemRef.current.GuiState == Enum.GuiState.Hover

					if isHovered then
						if options.hoverOpenAtDepth then
							options.hoverOpenAtDepth(options.depth, options.id)
						end
					else
						if options.hoverCloseAtDepth then
							options.hoverCloseAtDepth(options.depth)
						end
					end
				else
					if options.itemRef.current.GuiState == Enum.GuiState.Hover then
						if options.hoverCloseAtDepth then
							options.hoverCloseAtDepth(options.depth)
						end
					end
				end
			end)

			return function()
				connection:Disconnect()
			end
		end,
		{
			options.isSubmenu,
			options.isDisabled,
			options.id,
			options.depth,
			options.hoverCloseAtDepth,
			options.hoverOpenAtDepth,
			options.itemRef,
		} :: { unknown }
	)
end

return useMenuItemHover
