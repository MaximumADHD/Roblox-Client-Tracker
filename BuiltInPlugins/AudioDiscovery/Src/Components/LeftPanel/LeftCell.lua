local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local Dash = Framework.Dash
local mapOne = Dash.mapOne

local UI = Framework.UI
local Pane = UI.Pane
local Tooltip = UI.Tooltip

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local Image = UI.Decoration.Image
local TextLabel = UI.Decoration.TextLabel

local FIntSoundEffectMaxDuration = game:GetFastInt("SoundEffectMaxDuration")

local LeftCell = Roact.PureComponent:extend("LeftCell")

function LeftCell:getContent()
	local props = self.props
	local locations = props.CellProps.Locations[props.Row.Id] or {}
	if props.ColumnIndex > 1 then
		local value = props.Value
		if typeof(props.Value) == "number" then
			value = tostring(value)
			-- More accurate duration stored in Sound instance
			local sound = if locations
				then mapOne(locations, function(location)
					return if location.Instance.ClassName == "Sound" then location.Instance else nil
				end)
				else nil
			if sound then
				value = tostring(sound.TimeLength)
			end
			value = value .. "s"
		end
		return Roact.createElement(TextLabel, {
			TextColor = props.Style.Text,
			TextTruncate = Enum.TextTruncate.AtEnd,
			Size = UDim2.fromScale(1, 1),
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = props.ColumnIndex,
			Text = value,
		})
	else
		local ok = props.Value
		if ok == "" then
			return
		end
		if ok == "error" and #locations == 0 then
			ok = "done"
		end
		return Roact.createElement(Image, {
			Size = UDim2.fromOffset(24, 24),
			Image = ("rbxasset://textures/AudioDiscovery/%s.png"):format(ok),
		})
	end
end

local ICON_INDEX = 1
local CREATOR_INDEX = 5

function LeftCell:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Style
	local backgroundColor = if (props.RowIndex % 2) == 1 then style.BackgroundOdd else style.BackgroundEven
	local width = props.Width or UDim.new(1 / #props.Columns, 0)
	local tooltipText = if props.Value then tostring(props.Value) else nil
	local locations = props.CellProps.Locations[props.Row.Id] or {}
	if props.ColumnIndex == ICON_INDEX then
		if #locations == 0 then
			tooltipText = localization:getText("Reason", "Done")
		elseif props.Value == "ok" then
			if props.Row.Creator == "Roblox" then
				tooltipText = localization:getText("Reason", "Roblox")
			elseif props.Row.Creator == "Monstercat" then
				tooltipText = localization:getText("Reason", "Monstercat")
			elseif props.Row.Time < FIntSoundEffectMaxDuration then
				tooltipText = localization:getText("Reason", "Effect")
			else
				tooltipText = localization:getText("Reason", "OK")
			end
		else
			tooltipText = localization:getText("Reason", "Error")
		end
	elseif props.ColumnIndex == CREATOR_INDEX then
		tooltipText = ("%s %s"):format(props.Row.CreatorType, props.Row.CreatorId)
	end
	return Roact.createElement(Pane, {
		LayoutOrder = props.ColumnIndex,
		Padding = {
			Top = 1,
			Bottom = 1,
			Left = 5,
			Right = 5,
		},
		Style = "Box",
		BackgroundColor3 = backgroundColor,
		BorderSizePixel = 1,
		BorderColor3 = style.Border,
		Size = UDim2.new(width.Scale, width.Offset, 1, 0),
	}, {
		Child = self:getContent(),
		Tooltip = tooltipText and Roact.createElement(Tooltip, {
			MaxWidth = style.Tooltip.MaxWidth,
			Text = tooltipText,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

return withContext({
	Localization = Localization,
})(LeftCell)
