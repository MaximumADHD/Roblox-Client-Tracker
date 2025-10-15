local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

return function(props: {
	value: number?,
})
	-- Calculate progress value (0 to 1)
	local progressValue: number? = nil
	if props.value ~= nil then
		progressValue = math.clamp(props.value / 100, 0, 1)
	end

	local progress, updateProgress = React.useBinding(progressValue)

	React.useEffect(function()
		if progressValue ~= nil then
			updateProgress(progressValue)
		end
	end, { progressValue })

	return progress, props.value == nil
end
