--[[
	Displays panels associated with the import tool
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local UILibrary = Plugin.Packages.UILibrary
local RoundTextButton = require(UILibrary.Components.RoundTextButton)
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local ToolParts = script.Parent.ToolParts
local Panel = require(ToolParts.Panel)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledTextInput = require(ToolParts.LabeledTextInput)
local MapSettings = require(ToolParts.MapSettings)
local AssetIdSelector = require(ToolParts.AssetIdSelector)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SetUseColorMap = require(Actions.SetUseColorMap)

local Functions = Plugin.Src.Components.Functions
local TerrainImporter = require(Functions.TerrainImporter)

local TexturePath = "rbxasset://textures/TerrainTools/"
local TOGGLE_ON = TexturePath .. "import_toggleOn.png"
local TOGGLE_OFF = TexturePath .. "import_toggleOff.png"

-- be sure to localize these strings
local MIN_STUDS = 5
local MAX_STUDS = 16384

local MIN_STUDS_ERROR_STR = string.format("Input must be greater than %d studs.", MIN_STUDS - 1)
local MAX_STUDS_ERROR_STR = string.format("Input can not exceed %d studs.", MAX_STUDS)

local REDUCER_KEY = "ImportTool"

local Import = Roact.PureComponent:extend(script.Name)

function Import:init()
	self.mainFrameRef = Roact.createRef()
	self.layoutRef	= Roact.createRef()

	self.state = {
		validatedMapSettings = true,
		validatedHeightMap = nil,
		validatedColorMap = nil,
		importButtonActive = true,
	}
	-- this function is used to propagate changes back to rodux from the mapsettings
	self.onTextEnter = function(text, container)
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

	self.onContentSizeChanged = function()
		local mainFrame = self.mainFrameRef.current
		local layout = self.layoutRef.current
		if mainFrame and layout then
			mainFrame.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
		end
	end

	self.updateImportProps = function()
		TerrainImporter.ChangeProperties({
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

	self.setImportButtonState = function(isActive)
		self:setState({
			importButtonActive = isActive
		})
	end
end

function Import:didUpdate()
	self.updateImportProps()
end

function Import:didMount()
	self.updateImportProps()
	TerrainImporter.SetImportButtonStateFunc(self.setImportButtonState)
end

function Import:willUnmount()
	TerrainImporter.SetImportButtonStateFunc(nil)
end

function Import:render()
	local size = self.props.Size
	local position = self.props.Position
	local useColorMap = self.props.UseColorMap

	local importIsActive = self.state.importButtonActive and
		self.state.validatedHeightMap and
		self.state.validatedMapSettings

	return withTheme(function(theme)
		return withLocalization(function(localization)
			local toggleOn = theme.toggleTheme.toggleOnImage
			local toggleOff = theme.toggleTheme.toggleOffImage

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
					HeightMapValidation = self.heightMapValidated,
					IsMapSettingsValid = self.mapSettingsValidated,

					Position = position,
					Size = size,
					OnTextEnter = self.onTextEnter,
					LayoutOrder = 1,
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
							[Roact.Event.Activated] = function()
								if self.props.dispatchSetUseColorMap then
									self.props.dispatchSetUseColorMap(not useColorMap)
								end
							end,
						}),
					}),
					AssetIdField = Roact.createElement(AssetIdSelector, {
						Size = UDim2.new(1, 0, 0, 60),
						LayoutOrder = 2,
						Label = "",

						OnAssetIdValidated = self.colorMapValidated,
					}),
				}),

				ImportButtonFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0 ,0, 28+24),
					BackgroundTransparency = 1,
					LayoutOrder = 4,
				},{

					ImportButton = Roact.createElement(RoundTextButton, {
						Size = UDim2.new(0, 200, 0, 28),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),

						Name = localization:getText("ToolName", "Import"),

						Active = importIsActive,
						Style = theme.roundTextButtonTheme.styleSheet,
						TextSize = theme.roundTextButtonTheme.textSize,

						OnClicked = function()
							TerrainImporter.ImportTerrain(localization)
						end,
					}),
				})

			})
		end)
	end)
end

local function MapStateToProps(state, props)
	return {
		Size = state[REDUCER_KEY].size,
		Position = state[REDUCER_KEY].position,
		UseColorMap = state[REDUCER_KEY].useColorMap,
	}
end

local function MapDispatchToProps(dispatch)
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

return RoactRodux.connect(MapStateToProps, MapDispatchToProps)(Import)
