local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

--[[
	Returns a Folder owned outside of React plus a ref that parents it under whichever host is mounted.
	Portal content into the folder so it survives the host swapping between Frame and CanvasGroup, which
	happens when GroupTransparency is only applied while animating. Keeping the CanvasGroup short-lived
	avoids rendering settled content through a texture, which blurs text and edges. A Folder adds no layout of its
	own, so the content sizes against the host.
]]
local function useStableContainer(): (Folder, (rbx: GuiObject?) -> ())
	local container = React.useMemo(function()
		return Instance.new("Folder")
	end, {})

	React.useEffect(function()
		return function()
			container:Destroy()
		end
	end, { container })

	local hostRef = React.useCallback(function(rbx: GuiObject?)
		-- Detach before React destroys the old host, which would otherwise destroy the portaled content.
		container.Parent = rbx
	end, { container })

	return container, hostRef
end

return useStableContainer
