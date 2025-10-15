local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local CircularProgressBar = require(Foundation.Components.CircularProgressBar)
local View = require(Foundation.Components.View)

local function Story(props)
	local progress, updateProgress = React.useBinding(props.progress)

	React.useEffect(function()
		updateProgress(props.progress)
	end, { props.progress })

	return React.createElement(View, {
		tag = "size-1000-1000",
	}, {
		ProgressBar = React.createElement(CircularProgressBar, {
			progress = progress,
		}),
	})
end

return {
	summary = "CircularProgressBar",
	stories = {
		{
			name = "CircularProgressBar",
			story = function(props)
				return Story({
					progress = math.clamp((props.controls.progress :: number) / 100, 0, 1),
				})
			end,
		},
	},
	controls = {
		progress = 0,
	},
}
