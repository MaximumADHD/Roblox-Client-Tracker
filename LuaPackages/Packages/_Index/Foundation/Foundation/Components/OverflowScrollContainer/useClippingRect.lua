local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local Wrappers = require(Foundation.Utility.Wrappers)
local Connection = Wrappers.Connection
local Instance = Wrappers.Instance
local Signal = Wrappers.Signal

--[[
	Returns the bounds that content can visibly spill to, in coordinates
	relative to `guiRef`'s own top-left: the nearest clipping ancestor, or
	`guiRef`'s own bounds when nothing clips. Callers position against `Min`
	rather than assuming the element is centered within those bounds.

	Also returns whether a clipping ancestor was found. Without one, nothing
	bounds the spill, so the caller has to clip to its own bounds.
]]
local function useClippingRect(guiRef: { current: Instance? }): (React.Binding<Rect>, boolean)
	local rect, setRect = React.useBinding(Rect.new(Vector2.zero, Vector2.zero))
	-- Assumed until the ancestor walk proves otherwise, so a caller that clips itself in response
	-- has not yet clipped when the walk runs.
	local hasClippingAncestor, setHasClippingAncestor = React.useState(true)

	React.useEffect(function()
		local gui = guiRef.current
		if not gui or not gui:IsA("GuiObject") then
			return
		end

		local ancestor: GuiBase2d? = nil
		local current = gui.Parent
		while current do
			if current:IsA("GuiObject") and current.ClipsDescendants then
				ancestor = current
				break
			end
			current = current.Parent
		end

		if Flags.FoundationUnifiedScrimScrolling then
			setHasClippingAncestor(ancestor ~= nil)
		end

		if not ancestor then
			if Flags.FoundationUnifiedScrimScrolling then
				ancestor = gui
			else
				local layerCollector = gui:FindFirstAncestorWhichIsA("LayerCollector")
				if layerCollector and layerCollector:IsA("GuiBase2d") then
					ancestor = layerCollector
				end
			end
		end

		local function update()
			if ancestor then
				local origin = gui.AbsolutePosition
				setRect(
					Rect.new(
						ancestor.AbsolutePosition - origin,
						ancestor.AbsolutePosition + ancestor.AbsoluteSize - origin
					)
				)
			end
		end

		local connections: { RBXScriptConnection } = {
			Signal.Connect(Instance.GetPropertyChangedSignal(gui, "AbsolutePosition"), update),
		}
		if ancestor then
			table.insert(
				connections,
				Signal.Connect(Instance.GetPropertyChangedSignal(ancestor, "AbsolutePosition"), update)
			)
			table.insert(
				connections,
				Signal.Connect(Instance.GetPropertyChangedSignal(ancestor, "AbsoluteSize"), update)
			)
		end

		update()

		return function()
			for _, connection in connections do
				Connection.Disconnect(connection)
			end
		end
	end, {})

	return rect, hasClippingAncestor
end

return useClippingRect
