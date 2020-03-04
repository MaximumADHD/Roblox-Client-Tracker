--[[
	Displays panels associated with the import tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)

local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

local UILibrary = Plugin.Packages.UILibrary
local RoundTextButton = require(UILibrary.Components.RoundTextButton)
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local ToolParts = script.Parent.ToolParts
local Panel = require(ToolParts.Panel)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local MapSettings = require(ToolParts.MapSettings)
local AssetIdSelector = require(ToolParts.AssetIdSelector)
local ImportProgressFrame = require(Plugin.Src.Components.ImportProgressFrame)
local ButtonGroup = require(ToolParts.ButtonGroup)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SetUseColorMap = require(Actions.SetUseColorMap)

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = "ImportTool"

local Import = Roact.PureComponent:extend(script.Name)

function Import:init()
	self.terrainImporter = TerrainInterface.getTerrainImporter(self)
	assert(self.terrainImporter, "Import component requires a TerrainImporter from context")

	self.state = {
		validatedMapSettings = true,
		validatedHeightMap = nil,
		validatedColorMap = nil,

		-- If we open the import tool and there's an import in progress
		-- Then we want to initialize with that state
		isImporting = self.terrainImporter:isImporting(),
		importProgress = self.terrainImporter:getImportProgress(),
	}

	self.onPositionChanged = function(_, axis, text, isValid)
		if isValid then
			self.props.dispatchChangePosition(Cryo.Dictionary.join(self.props.Position, {
				[axis] = text,
			}))
		end
	end

	self.onSizeChanged = function(_, axis, text, isValid)
		if isValid then
			self.props.dispatchChangeSize(Cryo.Dictionary.join(self.props.Size, {
				[axis] = text,
			}))
		end
	end

	-- this function is used to propagate changes back to rodux from the mapsettings
	self.onTextEnter = function(text, container)
		if FFlagTerrainToolsRefactor then
			warn("Import.onTextEnter() should not be used when FFlagTerrainToolsRefactor is true")
		end
		-- warning should be displayed using the
		-- validation funtion in the LabeledTextInput
		if not tonumber(text) then
			return
		end

		-- not a pattern we shoulf follow we should factor this into
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

	self.updateImportProps = function()
		self.terrainImporter:updateSettings({
			size = Vector3.new(self.props.Size.X, self.props.Size.Y, self.props.Size.Z),
			position = Vector3.new(self.props.Position.X, self.props.Position.Y, self.props.Position.Z),
			useColorMap = self.props.UseColorMap,

			heightMapUrl = self.state.validatedHeightMap,
			colorMapUrl = self.state.validatedColorMap,
		})
	end

	self.mapSettingsValidated = function(validatedMapSettings)
		self:setState({
			validatedMapSettings = validatedMapSettings
		})
	end

	self.heightMapValidated = function(validatedAssetId)
		self:setState({
			validatedHeightMap = validatedAssetId
		})
	end

	self.colorMapValidated = function(validatedAssetId)
		self:setState({
			validatedColorMap = validatedAssetId
		})
	end

	self.toggleUseColorMap = function()
		if self.props.dispatchSetUseColorMap then
			self.props.dispatchSetUseColorMap(not self.props.UseColorMap)
		end
	end

	self.onImportButtonClicked = function()
		self.terrainImporter:startImport()
	end

	self.onImportingStateChangedConnnection = self.terrainImporter:subscribeToImportingStateChanged(function(importing)
		self:setState({
			isImporting = importing,
		})
	end)

	self.onImportProgressChangedConnection = self.terrainImporter:subscribeToImportProgressChanged(function(progress)
		self:setState({
			importProgress = progress,
		})
	end)
end

function Import:didUpdate()
	self.updateImportProps()
end

function Import:didMount()
	self.updateImportProps()
end

function Import:willUnmount()
	if self.onImportingStateChangedConnnection then
		self.onImportingStateChangedConnnection:disconnect()
		self.onImportingStateChangedConnnection = nil
	end

	if self.onImportProgressChangedConnection then
		self.onImportProgressChangedConnection:disconnect()
		self.onImportProgressChangedConnection = nil
	end
end

function Import:render()
	local size = self.props.Size
	local position = self.props.Position
	local useColorMap = self.props.UseColorMap

	local importInProgress = self.state.isImporting
	local importProgress = self.state.importProgress

	local importIsActive = (not importInProgress)
		and self.state.validatedHeightMap
		and self.state.validatedMapSettings

	return withTheme(function(theme)
		return withLocalization(function(localization)
			local toggleOn = theme.toggleTheme.toggleOnImage
			local toggleOff = theme.toggleTheme.toggleOffImage

			return Roact.createFragment({
				MapSettings = Roact.createElement(MapSettings, {
					LayoutOrder = 1,

					Position = position,
					Size = size,

					OnPositionChanged = self.onPositionChanged,
					OnSizeChanged = self.onSizeChanged,
					SetMapSettingsValid = self.mapSettingsValidated,
					HeightMapValidation = self.heightMapValidated,

					OnTextEnter = self.onTextEnter,
					IsMapSettingsValid = self.mapSettingsValidated,
				}),

				MaterialSettings = Roact.createElement(Panel, {
					Title = localization:getText("MaterialSettings", "MaterialSettings"),
					LayoutOrder = 2,
				}, {
					UseColorMapToggle = Roact.createElement(LabeledElementPair, {
						Size = UDim2.new(1, 0, 0, 60),
						LayoutOrder = 1,
						Text = localization:getText("MaterialSettings", "UseColorMap"),
						SizeToContent = true,
					}, {
						Content = Roact.createElement("ImageButton", {
							Size = UDim2.new(0, 27, 0, 16),
							Image = useColorMap and toggleOn or toggleOff,
							BackgroundTransparency = 1,
							[Roact.Event.Activated] = self.toggleUseColorMap,
						}),
					}),
					AssetIdField = Roact.createElement(AssetIdSelector, {
						Size = UDim2.new(1, 0, 0, 60),
						LayoutOrder = 2,
						Label = "",

						OnAssetIdValidated = self.colorMapValidated,
					}),
				}),

				ImportButtonFrame = FFlagTerrainToolsRefactor and Roact.createElement(ButtonGroup, {
					LayoutOrder = 4,
					Buttons = {
						{
							Key = "Import",
							Name = localization:getText("ToolName", "Import"),
							Active = importIsActive,
							OnClicked = self.onImportButtonClicked,
						}
					}
				}) or Roact.createElement("Frame", {
					Size = UDim2.new(1, 0 ,0, 28+24),
					BackgroundTransparency = 1,
					LayoutOrder = 4,
				}, {
					ImportButton = Roact.createElement(RoundTextButton, {
						Size = UDim2.new(0, 200, 0, 28),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),

						Name = localization:getText("ToolName", "Import"),

						Active = importIsActive,
						Style = theme.roundTextButtonTheme.styleSheet,
						TextSize = theme.roundTextButtonTheme.textSize,

						OnClicked = self.onImportButtonClicked,
					}),
				}),

				ImportProgressFrame = importInProgress and Roact.createElement(ImportProgressFrame, {
					ImportProgress = importProgress,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Import,
		Size = state[REDUCER_KEY].size,
		Position = state[REDUCER_KEY].position,
		UseColorMap = state[REDUCER_KEY].useColorMap,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToImport = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangePosition = function(position)
			dispatchToImport(ChangePosition(position))
		end,
		dispatchChangeSize = function(size)
			dispatchToImport(ChangeSize(size))
		end,
		dispatchSetUseColorMap = function(useColorMap)
			dispatchToImport(SetUseColorMap(useColorMap))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Import)
