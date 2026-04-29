local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local HintText = require(Foundation.Components.HintText)

local function Story(props)
	local controls = props.controls

	return React.createElement(HintText, {
		text = controls.text,
		hasError = controls.hasError,
		isDisabled = if Flags.FoundationInputFieldFixDisabled then controls.isDisabled else nil,
	})
end

return {
	summary = "Helper text put below inputs",
	story = Story,
	controls = {
		text = "Helper text",
		hasError = false,
		isDisabled = if Flags.FoundationInputFieldFixDisabled then false else nil,
	},
}
