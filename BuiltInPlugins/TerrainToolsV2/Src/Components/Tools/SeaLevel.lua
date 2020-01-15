--[[
	Displays panels associated with the SeaLevel tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)

local FFlagTerrainToolsUseFragmentsForToolPanel = game:GetFastFlag("TerrainToolsUseFragmentsForToolPanel")
local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

local CoreGui = game:GetService("CoreGui")

local UILibrary = Plugin.Packages.UILibrary
local RoundTextButton = require(UILibrary.Components.RoundTextButton)
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme
local StudioPlugin = require(Plugin.Src.ContextServices.StudioPlugin)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local ChangePlanePositionY = require(Actions.ChangePlanePositionY)
local SetHeightPicker = require(Actions.SetHeightPicker)

local ProgressFrame = require(script.Parent.Parent.ProgressFrame)

local ToolParts = script.Parent.ToolParts
local MapSettings = require(ToolParts.MapSettings)
local ButtonGroup = require(ToolParts.ButtonGroup)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local LargeVoxelRegionPreview = require(Plugin.Src.TerrainWorldUI.LargeVoxelRegionPreview)

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)
local getSeaLevel = TerrainInterface.getSeaLevel

local REDUCER_KEY = "SeaLevelTool"

local FFlagTerrainToolsFixGettingTerrain = game:GetFastFlag("TerrainToolsFixGettingTerrain")

local SeaLevel = Roact.PureComponent:extend(script.Name)

function SeaLevel:init(initialProps)
	local plugin = StudioPlugin.getPlugin(self)
	local mouse = plugin:GetMouse()

	if FFlagTerrainToolsFixGettingTerrain then
		self.preview = LargeVoxelRegionPreview.new(mouse, TerrainInterface.getTerrain(self))
	else
		self.preview = LargeVoxelRegionPreview.new(mouse)
	end

	self.pluginActivationController = TerrainInterface.getPluginActivationController(self)
	self.seaLevel = getSeaLevel(self)

	self.state = {
		isReplacing = self.seaLevel:isReplacing(),
		progress = self.seaLevel:getProgress(),
	}

	assert(self.pluginActivationController, "SeaLevel requires a PluginActivationController from context")
	assert(self.seaLevel, "SeaLevel requires Sealevel function from context")

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

	self.tryGenerateSeaLevel = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)
		self.seaLevel:replaceMaterial(position, size, Enum.Material.Air, Enum.Material.Water)
	end

	self.tryEvaporateSeaLevel = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)
		self.seaLevel:replaceMaterial(position, size, Enum.Material.Water, Enum.Material.Air)
	end

	self.updatePreview = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)
		self.preview:setSizeAndPosition(size, position)
	end

	self.cancel = function()
		self.seaLevel:cancel()
	end

	-- When my tool becomes active, we want to run the terrain brush
	self.onToolActivatedConnection = self.pluginActivationController:subscribeToToolActivated(function()
		-- :getActiveTool() returns ToolId.None if no tool is selected, so this works in that case too
		if self.pluginActivationController:getActiveTool() == ToolId.SeaLevel then
			self:updatePreview()
			self.preview:updateVisibility(true)
		end
	end)

	self.onToolDeactivatedConnection = self.pluginActivationController:subscribeToToolDeactivated(function(toolId)
		if toolId == ToolId.SeaLevel then
			self.preview:updateVisibility(false)
		end
	end)
end

function SeaLevel:didUpdate()
	self:updatePreview()
end

function SeaLevel:didMount()
	self._onSizeChangeConnect = self.preview:getOnSizeChanged():connect(function(size, position)
		-- move values from preview to rodux
		self.props.dispatchChangePosition({X = position.x, Y = position.y, Z = position.z})
		self.props.dispatchChangeSize({X = size.x, Y = size.y, Z = size.z})
	end)

	self.onProgressChanged = self.seaLevel:subscribeToProgressChange(function(progress)
		self:setState({
			progress = progress
		})
	end)

	self.onStateChanged = self.seaLevel:subscribeToStateChange(function(state)
		self:setState({
			isReplacing = state
		})
	end)

	self:updatePreview()
end

function SeaLevel:willUnmount()
	if self._onSizeChangeConnect then
		self._onSizeChangeConnect:disconnect()
		self._onSizeChangeConnect = nil
	end

	if self.onToolActivatedConnection then
		self.onToolActivatedConnection:disconnect()
		self.onToolActivatedConnection = nil
	end

	if self.onToolDeactivatedConnection then
		self.onToolDeactivatedConnection:disconnect()
		self.onToolDeactivatedConnection = nil
	end

	if self.onProgressChanged then
		self.onProgressChanged:disconnect()
		self.onProgressChanged = nil
	end
	if self.onStateChanged then
		self.onStateChanged:disconnect()
		self.onStateChanged = nil
	end

	self.preview:destroy()
	self.preview = nil
end

function SeaLevel:render()
	local position = self.props.Position
	local size = self.props.Size
	local progress = self.state.progress
	return withLocalization(function(localization)
		return withTheme(function(theme)
			-- same as if the sealevel is currently active
			local isReplacing = self.state.isReplacing

			local children = {
				MapSettings = Roact.createElement(MapSettings, {
					IsImport = false,
					Position = position,
					Size = size,
					OnTextEnter = self.onTextEnter,
					LayoutOrder = 1,
				}),

				SeaLevelButtons = FFlagTerrainToolsRefactor and Roact.createElement(ButtonGroup, {
					LayoutOrder = 2,
					Buttons = {
						{
							Key = "Evaporate",
							Name = localization:getText("SeaLevel", "Evaporate"),
							Active = not isReplacing,
							OnClicked = self.tryEvaporateSeaLevel
						},
						{
							Key = "Create",
							Name = localization:getText("SeaLevel", "Create"),
							Active = not isReplacing,
							OnClicked = self.tryGenerateSeaLevel
						},
					}
				}) or Roact.createElement("Frame", {
					Size = UDim2.new(1, 0 ,0, 28+24),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, {
					Evaporate = Roact.createElement(RoundTextButton, {
						Size = UDim2.new(0, 100, 0, 28),
						AnchorPoint = Vector2.new(1, 0.5),
						Position = UDim2.new(0.5, -2, 0.5, 0),

						Name = localization:getText("SeaLevel", "Evaporate"),

						Active = not isReplacing,
						Style = theme.roundTextButtonTheme.styleSheet,
						TextSize = theme.roundTextButtonTheme.textSize,

						OnClicked = self.tryEvaporateSeaLevel
					}),

					Create = Roact.createElement(RoundTextButton, {
						Size = UDim2.new(0, 100, 0, 28),
						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.new(0.5, 2, 0.5, 0),

						Name = localization:getText("SeaLevel", "Create"),

						Active = not isReplacing,
						Style = theme.roundTextButtonTheme.styleSheet,
						TextSize = theme.roundTextButtonTheme.textSize,

						OnClicked = self.tryGenerateSeaLevel
					}),
				}),

				ProgressBar = isReplacing and Roact.createElement(Roact.Portal, {
					target = CoreGui,
				}, {
					SeaLevelProgressScreenGui = Roact.createElement("ScreenGui", {}, {
						Roact.createElement(ProgressFrame, {
							AnchorPoint = Vector2.new(0.5, 0),
							Position = UDim2.new(0.5, 0, 0, 0),
							Progress = progress,
							OnCancelButtonClicked = self.cancel,
						})
					})
				}),
			}

			if FFlagTerrainToolsUseFragmentsForToolPanel then
				return Roact.createFragment(children)
			else
				children.UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					[Roact.Ref] = self.layoutRef,
					[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
				})

				return Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					[Roact.Ref] = self.mainFrameRef,
				}, children)
			end
		end)
	end)
end

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.SeaLevel,

		Position = state[REDUCER_KEY].position,
		Size = state[REDUCER_KEY].size,
		PlanePositionY = state[REDUCER_KEY].PlanePositionY,
		heightPicker = state[REDUCER_KEY].heightPicker,
	}
end

local function mapDispatchToProps(dispatch)
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

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SeaLevel)
