local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)

local function useRefImpression(ref: { current: GuiObject }, callback: () -> ())
	local wasImpressionTriggered = React.useRef(false)

	local attemptImpression = React.useCallback(function(current: GuiObject, screen: ScreenGui)
		if current.AbsolutePosition.Y <= screen.AbsoluteSize.Y then
			wasImpressionTriggered.current = true
			callback()
		end
	end, { callback })

	React.useEffect(function()
		if wasImpressionTriggered.current then
			return
		end

		local current = ref.current
		local conn: RBXScriptConnection

		if current then
			local screen = ref.current:FindFirstAncestorWhichIsA("ScreenGui")

			if screen then
				attemptImpression(current, screen)

				conn = current:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
					if wasImpressionTriggered.current then
						return
					end

					attemptImpression(current, screen)
				end)
			end
		end

		return function()
			if conn then
				conn:Disconnect()
			end
		end
	end)
end

return useRefImpression
