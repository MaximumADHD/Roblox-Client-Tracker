local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local React = require(Packages.React)

local Framework = require(Packages.Framework)

local ContextServices: any = Framework.ContextServices
local Plugin = ContextServices.Plugin

--[=[
	Subscribes to the mouse position when isOpen is true and call onClose callback when mouse pointer leaves anchor area
]=]
local function useMouseOver(props: {
	anchorUri: StudioUri,
	anchorRef: React.RefObject<GuiBase2d?>,
	isOpen: boolean,
	onClose: () -> (),
})
	local plugin = Plugin:use():get()

	React.useEffect(function()
		if not props.isOpen then
			return
		end

		if not props.anchorRef.current then
			return
		end

		local mouseTracker = plugin:GetPluginComponent("MouseTracker")
		local mouseTrackerInstance
		local widget = props.anchorRef.current
		local watcherThread = task.spawn(function()
			mouseTrackerInstance = mouseTracker:RegisterMouseTrackingRelativeToWidgetAsync(props.anchorUri)
			while true do
				local position = mouseTrackerInstance:GetAttribute("RBX_MousePosition")
				if
					position
					and widget
					and widget.Parent
					and (
						position.X < 0
						or position.X > widget.AbsoluteSize.X
						or position.Y < 0
						or position.Y > widget.AbsoluteSize.Y
					)
				then
					props.onClose()
					return
				end
				task.wait()
			end
		end)

		return function()
			task.cancel(watcherThread)
			if mouseTrackerInstance then
				mouseTrackerInstance:Destroy()
			end
		end
	end, { props.isOpen :: unknown, plugin, props.onClose, props.anchorUri, props.anchorRef })
end

return useMouseOver
