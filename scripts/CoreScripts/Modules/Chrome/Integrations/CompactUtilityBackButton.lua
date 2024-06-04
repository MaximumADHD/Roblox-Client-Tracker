local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images

local ChromeService = require(script.Parent.Parent.Service)
local GetFFlagSupportCompactUtility = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSupportCompactUtility

function CompactUtilityBackButton(props)
	local toggleIconTransition = props.toggleTransition
	local style = useStyle()

	local hasCurrentUtility = false
	if GetFFlagSupportCompactUtility() then
		hasCurrentUtility = if ChromeService:getCurrentUtility():get() then true else false
	end

	local iconColor = style.Theme.IconEmphasis

	return React.createElement("Frame", {
		Size = UDim2.new(0, 36, 0, 36),
		BorderSizePixel = 0,
		BackgroundColor3 = style.Theme.BackgroundOnHover.Color,
		BackgroundTransparency = toggleIconTransition:map(function(value): any
			return 1 - ((1 - style.Theme.BackgroundOnHover.Transparency) * value)
		end),
	}, {
		React.createElement("UICorner", {
			Name = "Corner",
			CornerRadius = UDim.new(1, 0),
		}) :: any,
		React.createElement(ImageSetLabel, {
			Name = "Arrow",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5, 0)
			end),
			BackgroundTransparency = 1,
			Image = Images["icons/actions/truncationCollapse_small"],
			Size = toggleIconTransition:map(function(value: any): any
				return UDim2.new(0, 16 * value, 0, 16 * value)
			end),
			Visible = hasCurrentUtility,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			ImageTransparency = style.Theme.IconEmphasis.Transparency,
			Rotation = 270,
		}) :: any,
		React.createElement("Frame", {
			Name = "X1",
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5, 0)
			end),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = toggleIconTransition:map(function(value: any): any
				value = 1 - value
				return UDim2.new(0, 16 * value, 0, 2)
			end),
			BorderSizePixel = 0,
			BackgroundColor3 = iconColor.Color,
			BackgroundTransparency = iconColor.Transparency,
			Rotation = 45,
		}) :: any,
		React.createElement("Frame", {
			Name = "X2",
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5, 0)
			end),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = toggleIconTransition:map(function(value: any): any
				value = 1 - value
				return UDim2.new(0, 16 * value, 0, 2)
			end),
			BorderSizePixel = 0,
			BackgroundColor3 = iconColor.Color,
			BackgroundTransparency = iconColor.Transparency,
			Rotation = -45,
		}) :: any,
	})
end

return ChromeService:register({
	id = "compact_utility_back",
	label = "CoreScripts.TopBar.Back",
	activated = function()
		local currentUtility = ChromeService:getCurrentUtility():get()
		if currentUtility then
			ChromeService:toggleCompactUtility(currentUtility)
		end
	end,
	components = {
		Icon = function(props)
			return React.createElement(CompactUtilityBackButton, props)
		end,
	},
	initialAvailability = ChromeService.AvailabilitySignal.Pinned,
})
