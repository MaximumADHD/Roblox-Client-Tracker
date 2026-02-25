local Framework = script:FindFirstAncestor("UI").Parent
local StyleKey = require(Framework.Style.StyleKey)

-- TODO https://jira.rbx.com/browse/STM-2651: Add these styles to MultiImagePicker when the wrapper and this component are combined
return {
	FontStyle = {
		SemiBold = {
			Font = Enum.Font.SourceSansSemibold,
			TextSize = 22,
			TextColor = StyleKey.MainText,
		},
	},

	ImageTypes = { "jpg", "jpeg", "png" },
}
