--[[
	Displays panels associated with the SeaLevel tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local ChangePlanePositionY = require(Actions.ChangePlanePositionY)
local SetHeightPicker = require(Actions.SetHeightPicker)

local ToolParts = script.Parent.ToolParts
local Panel = require(ToolParts.Panel)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledTextInput = require(ToolParts.LabeledTextInput)
local MapSettings = require(ToolParts.MapSettings)

--local SeaLevelEditor = require(Plugin.Src.Components.Functions.SeaLevelEditor)

local UILibrary = Plugin.Packages.UILibrary

local REDUCER_KEY = "SeaLevelTool"
local SeaLevel = Roact.Component:extend(script.Name)

function SeaLevel:init(initialProps)
	self.toggleButton = function(containter)
		self.props.dispatchSetMergeEmpty(not self.props.mergeEmpty)
	end
	self.onTextEnter = function(text, container)
		-- warning should be displayed using the
		-- validation funtion in the LabeledTextInput
		if not tonumber(text) then
			return
		end

		-- not a pattern we should follow we should factor this into
		-- functions that handle position and size separately rather
		-- than matching keywords in an container-id.
		local field, fieldName
		if string.match(container, "Position") then
			field = self.props.Position
			fieldName = "Position"
		elseif string.match(container, "Size") then
			field = self.props.Size
			fieldName = "Size"
		end

		local x = string.match(container, "X") and text or field.X
		local y = string.match(container, "Y") and text or field.Y
		local z = string.match(container, "Z") and text or field.Z

		if fieldName == "Position" then
			self.props.dispatchChangePosition({X = x, Y = y, Z = z})
		elseif fieldName == "Size" then
			self.props.dispatchChangeSize({X = x, Y = y, Z = z})
		end
	end
end

function SeaLevel:didUpdate()
	-- fill out function hook here
	--SeaLevelEditor:pass_meh_props_where_plz()
end

function SeaLevel:render()
	local position = self.props.Position
	local size = self.props.Size
	return withLocalization(function(localization)
		return withTheme(function(theme)
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				[Roact.Ref] = self.mainFrameRef,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					[Roact.Ref] = self.layoutRef,
					[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
				}),

				MapSettings = Roact.createElement(MapSettings, {
					IsImport = false,
					Position = position,
					Size = size,
					OnTextEnter = self.onTextEnter,
					LayoutOrder = 1,
				}),
			})
		end)
	end)
end

local function MapStateToProps (state, props)
	return {
		Position = state[REDUCER_KEY].position,
		Size = state[REDUCER_KEY].size,
		PlanePositionY = state[REDUCER_KEY].PlanePositionY,
		heightPicker = state[REDUCER_KEY].heightPicker,
	}
end

local function MapDispatchToProps (dispatch)
	local dispatchToSeaLevel = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangePosition = function (position)
			dispatchToSeaLevel(ChangePosition(position))
		end,
		dispatchChangeSize = function(size)
			dispatchToSeaLevel(ChangeSize(size))
		end,
		dispatchChangePlanePositionY = function(planePositionY)
			dispatchToSeaLevel(ChangePlanePositionY(planePositionY))
		end,
		dispatchSetHeightPicker = function (heightPicker)
			dispatchToSeaLevel(SetHeightPicker(heightPicker))
		end,
	}
end

return RoactRodux.connect(MapStateToProps, MapDispatchToProps)(SeaLevel)