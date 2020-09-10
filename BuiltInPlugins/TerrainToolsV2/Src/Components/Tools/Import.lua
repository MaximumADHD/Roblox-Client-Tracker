--!nolint ImportUnused
--^ DEVTOOLS-4491

--[[
	Displays panels associated with the import tool
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")
local FFlagTerrainToolsUseMapSettingsWithPreview = game:GetFastFlag("TerrainToolsUseMapSettingsWithPreview2")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil
local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local ToolParts = script.Parent.ToolParts
local AssetIdSelector = require(ToolParts.AssetIdSelector)
local ButtonGroup = require(ToolParts.ButtonGroup)
local ImportProgressFrame = require(Plugin.Src.Components.ImportProgressFrame)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledToggle = require(ToolParts.LabeledToggle)
local MapSettings = not FFlagTerrainToolsUseMapSettingsWithPreview and require(ToolParts.MapSettings) or nil
local MapSettingsWithPreviewFragment = require(ToolParts.MapSettingsWithPreviewFragment)
local Panel = require(ToolParts.Panel)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SetUseColorMap = require(Actions.SetUseColorMap)

local TerrainInterface = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.TerrainInterface)
	or nil

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = "ImportTool"

local Import = Roact.PureComponent:extend(script.Name)

function Import:init()
	if FFlagTerrainToolsUseDevFramework then
		self.state = {
			validatedMapSettings = true,
			validatedHeightMap = nil,
			validatedColorMap = nil,
		}
	else
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
	end

	if not FFlagTerrainToolsUseMapSettingsWithPreview then
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
	end

	self.updateImportProps = function()
		local terrainImporter = FFlagTerrainToolsUseDevFramework and self.props.TerrainImporter or self.terrainImporter
		terrainImporter:updateSettings({
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

	if not FFlagTerrainToolsUseDevFramework then
		self.toggleUseColorMap = function()
			if self.props.dispatchSetUseColorMap then
				self.props.dispatchSetUseColorMap(not self.props.UseColorMap)
			end
		end
	end

	self.onImportButtonClicked = function()
		local terrainImporter = FFlagTerrainToolsUseDevFramework and self.props.TerrainImporter or self.terrainImporter
		terrainImporter:startImport()
	end

	if not FFlagTerrainToolsUseDevFramework then
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
end

function Import:didUpdate()
	self.updateImportProps()
end

function Import:didMount()
	self.updateImportProps()
end

if not FFlagTerrainToolsUseDevFramework then
	function Import:willUnmount()
		if self.onImportingStateChangedConnnection then
			self.onImportingStateChangedConnnection:Disconnect()
			self.onImportingStateChangedConnnection = nil
		end

		if self.onImportProgressChangedConnection then
			self.onImportProgressChangedConnection:Disconnect()
			self.onImportProgressChangedConnection = nil
		end
	end
end

-- TODO: Remove theme when removing FFlagTerrainToolsUseDevFramework
function Import:_render(localization, theme)
	local size = self.props.Size
	local position = self.props.Position
	local useColorMap = self.props.UseColorMap

	local importInProgress
	local importProgress
	if FFlagTerrainToolsUseDevFramework then
		importInProgress = self.props.TerrainImporter:isImporting()
		importProgress = importInProgress and self.props.TerrainImporter:getImportProgress() or 0
	else
		importInProgress = self.state.isImporting
		importProgress = self.state.importProgress
	end

	local importIsActive = not importInProgress
		and self.state.validatedMapSettings
		and self.state.validatedHeightMap
		-- Either don't care about color map being validated cause we're not using it
		-- Or we are using it and it has to be valid
		and (not useColorMap or self.state.validatedColorMap)

	local hideColorMapAssetSelector = not useColorMap

	-- TODO: Remove when removing FFlagTerrainToolsUseDevFramework
	local toggleOn, toggleOff
	if not FFlagTerrainToolsUseDevFramework then
		toggleOn = theme.toggleTheme.toggleOnImage
		toggleOff = theme.toggleTheme.toggleOffImage
	end

	local mapSettingsComponent
	if FFlagTerrainToolsUseMapSettingsWithPreview then
		mapSettingsComponent = Roact.createElement(Panel, {
			LayoutOrder = 1,
			Title = localization:getText("MapSettings", "MapSettings"),
			Padding = UDim.new(0, 12),
		}, {
			HeightmapSelector = Roact.createElement(AssetIdSelector, {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 60),
				Label = localization:getText("MapSettings", "HeightMap"),
				OnAssetIdValidated = self.heightMapValidated,
			}),

			MapSettingsWithPreview = Roact.createElement(MapSettingsWithPreviewFragment, {
				toolName = self.props.toolName,
				InitialLayoutOrder = 2,

				Position = position,
				Size = size,
				PreviewOffset = Vector3.new(0, 0.5, 0),

				OnPositionChanged = self.props.dispatchChangePosition,
				OnSizeChanged = self.props.dispatchChangeSize,
				SetMapSettingsValid = self.mapSettingsValidated,
			}),
		})
	else
		mapSettingsComponent = Roact.createElement(MapSettings, {
			LayoutOrder = 1,

			Position = position,
			Size = size,

			OnPositionChanged = self.onPositionChanged,
			OnSizeChanged = self.onSizeChanged,
			SetMapSettingsValid = self.mapSettingsValidated,
			HeightMapValidation = self.heightMapValidated,
		})
	end

	return Roact.createFragment({
		MapSettings = mapSettingsComponent,

		MaterialSettings = Roact.createElement(Panel, {
			Title = localization:getText("MaterialSettings", "MaterialSettings"),
			LayoutOrder = 2,
		}, {
			UseColorMapToggle = FFlagTerrainToolsUseDevFramework
			and Roact.createElement(LabeledToggle, {
				LayoutOrder = 1,
				Text = localization:getText("MaterialSettings", "UseColorMap"),
				IsOn = useColorMap,
				SetIsOn = self.props.dispatchSetUseColorMap,
			})
			or Roact.createElement(LabeledElementPair, {
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

			ColorMapAssetSelector = Roact.createElement(AssetIdSelector, {
				Size = UDim2.new(1, 0, 0, 60),
				LayoutOrder = 2,
				Label = "",

				OnAssetIdValidated = self.colorMapValidated,
				Disabled = hideColorMapAssetSelector,
			}),
		}),

		ImportButtonFrame = Roact.createElement(ButtonGroup, {
			LayoutOrder = 4,
			Buttons = {
				{
					Key = "Import",
					Name = localization:getText("ToolName", "Import"),
					Active = importIsActive,
					OnClicked = self.onImportButtonClicked,
				}
			}
		}),

		ImportProgressFrame = importInProgress and Roact.createElement(ImportProgressFrame, {
			ImportProgress = importProgress,
		}),
	})
end

function Import:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Localization:get())
	else
		return withTheme(function(theme)
			return withLocalization(function(localization)
				return self:_render(localization, theme)
			end)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(Import, {
		Localization = ContextItems.UILibraryLocalization,
		TerrainImporter = ContextItems.TerrainImporter,
	})
end

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Import,
		Position = state[REDUCER_KEY].position,
		Size = state[REDUCER_KEY].size,
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
