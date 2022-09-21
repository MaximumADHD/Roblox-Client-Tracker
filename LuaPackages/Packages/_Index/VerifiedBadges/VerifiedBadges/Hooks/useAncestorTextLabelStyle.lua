local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local React = require(VerifiedBadges.Parent.React)

local TEXT_LABEL_PROPS = {
	"Font",
	"TextSize",
	"TextYAlignment",
	"LineHeight",
}

local function useAncestorTextLabelStyle(ref: { current: any })
	local style, setStyle = React.useState({})

	local updateStyle = React.useCallback(function(rbx: TextLabel)
		local newStyle = {}
		for _, prop in TEXT_LABEL_PROPS do
			newStyle[prop] = (rbx :: any)[prop]
		end
		setStyle(newStyle)
	end, {})

	React.useEffect(function()
		local conn: RBXScriptConnection

		if ref.current then
			local ancestor = ref.current:FindFirstAncestorOfClass("TextLabel")

			if ancestor then
				updateStyle(ancestor)

				conn = ancestor.Changed:Connect(function()
					updateStyle(ancestor)
				end)
			end
		end

		return function()
			if conn then
				conn:Disconnect()
			end
		end
	end, {})

	return style
end

return useAncestorTextLabelStyle
