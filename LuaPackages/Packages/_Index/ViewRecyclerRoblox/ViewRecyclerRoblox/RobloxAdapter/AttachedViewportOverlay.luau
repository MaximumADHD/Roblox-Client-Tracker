-- A Viewport overlay beside a ScrollingFrame the adapter does not render. The
-- overlay is a sibling of the ScrollingFrame inside a Folder, so the parent's
-- UI layouts ignore it, and it moves with the ScrollingFrame's parent without
-- following CanvasPosition. Only the ScrollingFrame's own geometry changes are
-- copied to it.
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local ScrollbarOverlay = require(Root.RobloxAdapter.ScrollbarOverlay)

local POSITION_EPSILON = 0.5

export type AttachedViewportOverlay = {
	overlay: Frame,
	destroy: () -> (),
}

local AttachedViewportOverlay = {}

local function createFrame(name: string, parent: Instance): Frame
	local frame = Instance.new("Frame")
	frame.Name = name
	frame.Active = false
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	frame.Selectable = false
	frame.Parent = parent
	return frame
end

function AttachedViewportOverlay.new(scrollingFrame: ScrollingFrame, axis: Core.Axis): AttachedViewportOverlay
	local container = Instance.new("Folder")
	container.Name = "ViewRecyclerOverlayContainer"
	-- Fills the parent's content box. An automatically sized parent grows to
	-- fit an offset-sized child, which would hold the ScrollingFrame at its old
	-- size, so the window inside is placed in scale relative to these bounds.
	local bounds = createFrame("ViewRecyclerOverlayBounds", container)
	bounds.Size = UDim2.fromScale(1, 1)
	-- Matches the ScrollingFrame's bounds; the overlay inside it excludes the
	-- scrollbar gutter.
	local window = createFrame("ViewRecyclerOverlayWindow", bounds)
	local overlay = createFrame("ViewRecyclerOverlay", window)
	overlay.ClipsDescendants = true
	local disconnectScrollbar = ScrollbarOverlay.connect(scrollingFrame, overlay, axis)
	local destroyed = false

	local function synchronize()
		if destroyed or container.Parent == nil then
			return
		end
		window.Visible = scrollingFrame.Visible
		window.ZIndex = scrollingFrame.ZIndex + 1
		bounds.ZIndex = window.ZIndex
		local boundsSize = bounds.AbsoluteSize
		if boundsSize.X <= 0 or boundsSize.Y <= 0 then
			return
		end
		local size = scrollingFrame.AbsoluteSize
		local position = scrollingFrame.AbsolutePosition - bounds.AbsolutePosition
		window.Size = UDim2.fromScale(size.X / boundsSize.X, size.Y / boundsSize.Y)
		local delta = scrollingFrame.AbsolutePosition - window.AbsolutePosition
		if math.abs(delta.X) >= POSITION_EPSILON or math.abs(delta.Y) >= POSITION_EPSILON then
			window.Position = UDim2.fromScale(position.X / boundsSize.X, position.Y / boundsSize.Y)
		end
	end

	local function reparent()
		if destroyed then
			return
		end
		container.Parent = scrollingFrame.Parent
		synchronize()
	end

	local connections = {
		scrollingFrame:GetPropertyChangedSignal("AbsolutePosition"):Connect(synchronize),
		scrollingFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(synchronize),
		scrollingFrame:GetPropertyChangedSignal("Visible"):Connect(synchronize),
		scrollingFrame:GetPropertyChangedSignal("ZIndex"):Connect(synchronize),
		scrollingFrame:GetPropertyChangedSignal("Parent"):Connect(reparent),
		window:GetPropertyChangedSignal("AbsolutePosition"):Connect(synchronize),
		bounds:GetPropertyChangedSignal("AbsoluteSize"):Connect(synchronize),
	}
	reparent()

	return table.freeze({
		overlay = overlay,
		destroy = function()
			if destroyed then
				return
			end
			destroyed = true
			for _, connection in connections do
				connection:Disconnect()
			end
			disconnectScrollbar()
			container:Destroy()
		end,
	})
end

return AttachedViewportOverlay
