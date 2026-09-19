local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)

local Types = require(Main.Types)
type PanelHandler = Types.PanelHandler

--[=[
    A React hook that manages asynchronous size updates for a panel based on GuiObject's absolute size changes.

    @param panel -- The panel handler object that contains setSizeAsync method
    @return -- A callback function that handles the size change event
]=]
local function useAsyncOnAbsoluteSizeChanged(panel: PanelHandler?): (frame: GuiObject) -> ()
	local setSizeTask = React.useRef(nil :: thread?)
	local onAbsoluteSizeChanged = React.useCallback(function(frame: GuiObject)
		if panel == nil then
			return
		end

		if setSizeTask.current then
			task.cancel(setSizeTask.current)
		end
		setSizeTask.current = task.spawn(function()
			panel.setSizeAsync(frame.AbsoluteSize)
		end)
	end, { panel })

	React.useEffect(function()
		return function()
			if setSizeTask.current then
				task.cancel(setSizeTask.current)
			end
		end
	end, {})

	return onAbsoluteSizeChanged
end

return useAsyncOnAbsoluteSizeChanged
