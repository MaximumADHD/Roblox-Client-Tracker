--[[
	BrushSettings.lua
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")
local FFlagTerrainToolsFixPlanePositionErrorMessage = game:GetFastFlag("TerrainToolsFixPlanePositionErrorMessage")

local Localizing = require(Plugin.Packages.UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local BrushShape = TerrainEnums.BrushShape
local FlattenMode = TerrainEnums.FlattenMode
local PivotType = TerrainEnums.PivotType
local ToolId = TerrainEnums.ToolId

local MAX_GRAPHEMES = 12
--- Color ---
local BUTTON_BACKGROUND_COLOR = Color3.fromRGB(228, 238, 254)
local FRAME_BORDER_COLOR1 = Color3.fromRGB(227, 227, 227)
-------------

local ToolParts = script.Parent
local Panel = require(ToolParts.Panel)
local PropertyLock = require(ToolParts.PropertyLock)
local LabeledTextInput = require(ToolParts.LabeledTextInput)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local SingleSelectButtonGroup = require(ToolParts.SingleSelectButtonGroup)
local Slider = require(ToolParts.Slider)
local LabeledSlider = require(ToolParts.LabeledSlider)
local LabeledToggle = require(ToolParts.LabeledToggle)

local BrushSettings = Roact.PureComponent:extend(script.Name)

if FFlagTerrainToolsRefactor then
local BrushProperties = ToolParts.BrushProperties
local BaseSizeSlider = require(BrushProperties.BaseSizeSlider)
local BrushShapeSelector = require(BrushProperties.BrushShapeSelector)
local FlattenModeSelector = require(BrushProperties.FlattenModeSelector)
local HeightSelectionToggle = require(BrushProperties.HeightSelectionToggle)
local PivotSelector = require(BrushProperties.PivotSelector)

function BrushSettings:render()
	return withLocalization(function(localization)
		local layoutOrder = self.props.LayoutOrder

		local showHeight = self.props.brushShape ~= BrushShape.Sphere
		local isFlatten = self.props.currentTool == ToolId.Flatten

		return Roact.createElement(Panel, {
			Title = localization:getText("BrushSettings", "BrushSettings"),
			Padding = UDim.new(0, 12),
			LayoutOrder = layoutOrder,
		}, {
			BrushShapeSelector = Roact.createElement(BrushShapeSelector, {
				LayoutOrder = 1,
				brushShape = self.props.brushShape,
				setBrushShape = self.props.setBrushShape,
			}),

			BaseSizeSlider = Roact.createElement(BaseSizeSlider, {
				LayoutOrder = 2,
				baseSize = self.props.baseSize,
				setBaseSize = self.props.setBaseSize,
				ShowLock = showHeight,
				IsLocked = self.props.baseSizeHeightLocked,
				ToggleLock = self.props.toggleBaseSizeHeightLocked,
			}),

			HeightSlider = showHeight and Roact.createElement(LabeledSlider, {
				LayoutOrder = 3,
				Text = localization:getText("BrushSettings", "Height"),
				Min = Constants.MIN_BRUSH_SIZE,
				Max = Constants.MAX_BRUSH_SIZE,
				SnapIncrement = 1,
				Value = self.props.height,
				SetValue = self.props.setHeight,
			}),

			StrengthSlider = self.props.strength ~= nil and Roact.createElement(LabeledSlider, {
				LayoutOrder = 4,
				Text = localization:getText("BrushSettings", "Strength"),
				Min = 0.1,
				Max = 1,
				SnapIncrement = 0.1,
				Value = self.props.strength,
				SetValue = self.props.setStrength,
			}),

			FlattenModeSelector = isFlatten and Roact.createElement(FlattenModeSelector, {
				LayoutOrder = 5,
				flattenMode = self.props.flattenMode,
				setFlattenMode = self.props.setFlattenMode,
			}),

			PivotSelector = Roact.createElement(PivotSelector, {
				LayoutOrder = 6,
				pivot = self.props.pivot,
				setPivot = self.props.setPivot,
			}),

			PlaneLockToggle = self.props.planeLock ~= nil and Roact.createElement(LabeledToggle, {
				LayoutOrder = 7,
				Text = localization:getText("BrushSettings", "PlaneLock"),
				IsOn = self.props.planeLock,
				SetIsOn = self.props.setPlaneLock,
			}),

			FixedPlaneToggle = self.props.fixedPlane ~= nil and Roact.createElement(LabeledToggle, {
				LayoutOrder = 8,
				Text = localization:getText("BrushSettings", "FixedPlane"),
				IsOn = self.props.fixedPlane,
				SetIsOn = self.props.setPlaneLock, -- TODO: DEVTOOLS-3102 add proper fixed plane value to dataloop
			}),

			HeightSelectionToggle = self.props.fixedPlane and isFlatten and Roact.createElement(HeightSelectionToggle, {
				LayoutOrder = 9,
				Label = localization:getText("BrushSettings", "PlanePosition"),
				heightPicker = self.props.heightPicker,
				setHeightPicker = self.props.setHeightPicker,
				planePositionY = self.props.planePositionY,
				setPlanePositionY = self.props.setPlanePositionY,
			}),

			SnapToGridToggle = self.props.snapToGrid ~= nil and Roact.createElement(LabeledToggle, {
				LayoutOrder = 10,
				Text = localization:getText("BrushSettings", "SnapToGrid"),
				IsOn = self.props.snapToGrid,
				SetIsOn = self.props.setSnapToGrid,
			}),

			IgnoreWaterToggle = self.props.ignoreWater ~= nil and Roact.createElement(LabeledToggle, {
				LayoutOrder = 11,
				Text = localization:getText("BrushSettings", "IgnoreWater"),
				IsOn = self.props.ignoreWater,
				SetIsOn = self.props.setIgnoreWater,
			}),
		})
	end)
end

else
function BrushSettings:render()
	return withTheme(function(theme)
		local brushShape = self.props.brushShape
		local baseSize = self.props.baseSize
		local height = self.props.height
		local baseSizeHeightLocked = self.props.baseSizeHeightLocked
		local strength = self.props.strength
		local pivot = self.props.pivot
		local planeLock = self.props.planeLock
		local fixedPlane = self.props.fixedPlane
		local snapToGrid = self.props.snapToGrid
		local ignoreWater = self.props.ignoreWater
		local flattenMode = self.props.flattenMode
		local heightPicker = self.props.heightPicker
		local planePositionY = self.props.planePositionY

		local currentTool = self.props.currentTool

		local layoutOrder = self.props.LayoutOrder

		local setText = self.props.setText
		local toggleBaseSizeHeightLocked = self.props.toggleBaseSizeHeightLocked

		-- As you can't change the height separately from the size for spheres, hide the slider and the property lock UI
		local showHeight = brushShape ~= BrushShape.Sphere

		local isFlatten = currentTool == ToolId.Flatten

		local toggleOn = theme.toggleTheme.toggleOnImage
		local toggleOff = theme.toggleTheme.toggleOffImage

		local pickerOnImage = theme.brushSettingsTheme.pickHeightEnableImage
		local pickerOffImage = theme.brushSettingsTheme.pickHeightDisableImage

		local flattenBothImage = theme.brushSettingsTheme.flattenBothImage
		local flattenErodeImage = theme.brushSettingsTheme.flattenErodeImage
		local flattenGrowImage = theme.brushSettingsTheme.flattenGrowImage

		local sphereBrushImage = theme.brushSettingsTheme.sphereBrushImage
		local cubeBrushImage = theme.brushSettingsTheme.cubeBrushImage
		local cylinderBrushImage = theme.brushSettingsTheme.cylinderBrushImage

		local brushes = {
			Padding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, 5),
				PaddingLeft = UDim.new(0, 5),
			}),
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0.05, 0),
			}),
			Sphere = Roact.createElement("ImageButton", {
				Image = sphereBrushImage,
				Size = UDim2.new(0, 32, 0, 32),
				[Roact.Event.Activated] = function ()
					self.props.setBrushShape(BrushShape.Sphere)
				end,
				BorderColor3 = FRAME_BORDER_COLOR1,
				BackgroundTransparency = (brushShape == BrushShape.Sphere) and .5 or 1,
				LayoutOrder = 1,
			}),
			Cube = Roact.createElement("ImageButton", {
				Image = cubeBrushImage,
				Size = UDim2.new(0, 32, 0, 32),
				[Roact.Event.Activated] = function ()
					self.props.setBrushShape(BrushShape.Cube)
				end,
				BorderColor3 = FRAME_BORDER_COLOR1,
				BackgroundTransparency = (brushShape == BrushShape.Cube) and .5 or 1,
				LayoutOrder = 2,
			}),
			Cylinder = Roact.createElement("ImageButton", {
				Image = cylinderBrushImage,
				Size = UDim2.new(0, 32, 0, 32),
				[Roact.Event.Activated] = function ()
					self.props.setBrushShape(BrushShape.Cylinder)
				end,
				BorderColor3 = FRAME_BORDER_COLOR1,
				BackgroundTransparency = (brushShape == BrushShape.Cylinder) and .5 or 1,
				LayoutOrder = 3,
			}),
		}

		local flattenModes
		if isFlatten then
			flattenModes = Roact.createElement("ImageLabel", {
				Size = UDim2.new(0, 120, 0, 40),

				Image = theme.roundedBorderImage,
				ImageTransparency = 0,
				ImageColor3 = FRAME_BORDER_COLOR1,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = theme.roundedBorderSlice,

				BackgroundTransparency = 1,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				Erode = Roact.createElement("ImageButton", {
					Image = flattenErodeImage,
					Size = UDim2.new(0, 40, 0, 40),
					[Roact.Event.Activated] = function ()
						self.props.setFlattenMode(FlattenMode.Erode)
					end,
					BackgroundColor3 = BUTTON_BACKGROUND_COLOR,
					BorderColor3 = FRAME_BORDER_COLOR1,
					BackgroundTransparency = (flattenMode == FlattenMode.Erode) and 0 or 1,
					LayoutOrder = 1
				}),
				Grow = Roact.createElement("ImageButton", {
					Image = flattenGrowImage,
					Size = UDim2.new(0, 40, 0, 40),
					[Roact.Event.Activated] = function ()
						self.props.setFlattenMode(FlattenMode.Grow)
					end,
					BackgroundColor3 = BUTTON_BACKGROUND_COLOR,
					BorderColor3 = FRAME_BORDER_COLOR1,
					BackgroundTransparency = (flattenMode == FlattenMode.Grow) and 0 or 1,
					LayoutOrder = 2
				}),
				Both = Roact.createElement("ImageButton", {
					Image = flattenBothImage,
					Size = UDim2.new(0, 40, 0, 40),
					[Roact.Event.Activated] = function ()
						self.props.setFlattenMode(FlattenMode.Both)
					end,
					BackgroundColor3 = BUTTON_BACKGROUND_COLOR,
					BorderColor3 = FRAME_BORDER_COLOR1,
					BackgroundTransparency = (flattenMode == FlattenMode.Both) and 0 or 1,
					LayoutOrder = 3
				}),
			})
		end

		return withLocalization(function(localization)
			return Roact.createElement(Panel, {
				Title = localization:getText("BrushSettings", "BrushSettings"),
				Padding = UDim.new(0, 12),
				LayoutOrder = layoutOrder,
			}, {
				BrushShapeSelect = Roact.createElement("Frame", {
					Size = UDim2.new(0, 270, 0, 42),
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				}, {
					Roact.createElement("Frame", {
						Size = UDim2.new(0, 230, 1, 0),
						Position = UDim2.new(0, 20, 0, 0),
						BackgroundColor3 = theme.backgroundColor,
						BorderColor3 = theme.borderColor,
					}, brushes),
				}),

				SizeSlider = Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 15),
					Text = localization:getText("BrushSettings", "BaseSize"),
					LayoutOrder = 2,
				}, {
					Slider = Roact.createElement(Slider, {
						Min = Constants.MIN_BRUSH_SIZE,
						Max = Constants.MAX_BRUSH_SIZE,
						SnapIncrement = 1,
						ShowInput = true,
						Value = baseSize,
						SetValue = function(val)
							setText(tostring(val), "BaseSize")
						end,
					}),

					SizeHeightLock = showHeight and Roact.createElement(PropertyLock, {
						Locked = baseSizeHeightLocked,
						Clicked = toggleBaseSizeHeightLocked,
					}),
				}),

				HeightSlider = showHeight and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 15),
					Text = localization:getText("BrushSettings", "Height"),
					LayoutOrder = 3,
				}, {
					Roact.createElement(Slider, {
						Min = Constants.MIN_BRUSH_SIZE,
						Max = Constants.MAX_BRUSH_SIZE,
						SnapIncrement = 1,
						ShowInput = true,
						Value = height,
						SetValue = function(val)
							setText(tostring(val), "Height")
						end,
					}),
				}),

				StrengthSlider = strength ~= nil and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 15),
					Text = localization:getText("BrushSettings", "Strength"),
					LayoutOrder = 4,
				}, {
					Roact.createElement(Slider, {
						Min = .1,
						Max = 1,
						SnapIncrement = 0.1,
						ShowInput = true,
						Value = strength,
						SetValue = function(val)
							setText(tostring(val), "Strength")
						end,
					}),
				}),

				FlattenOptions = isFlatten and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 48),
					Text = localization:getText("BrushSettings", "FlattenMode"),
					BackgroundTransparency = 1,
					LayoutOrder = 5,
				}, flattenModes),

				Pivot = Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 22),
					Text = localization:getText("BrushSettings", "PivotPosition"),
					LayoutOrder = 4,
				}, {
					Roact.createElement(SingleSelectButtonGroup, {
						Size = UDim2.new(0, 141, 0, 22),
						Selected = pivot,
						Select = function(data)
							setText(data, "Pivot")
						end,

						Options = {
							{
								Text = localization:getText("BrushSettings", "BottomPivot"),
								Data = PivotType.Bottom,
							}, {
								Text = localization:getText("BrushSettings", "CenterPivot"),
								Data = PivotType.Center,
							}, {
								Text = localization:getText("BrushSettings", "TopPivot"),
								Data = PivotType.Top,
							},
						}
					}),
				}),

				PlaneLockToggle = planeLock ~= nil and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 18),
					Text = localization:getText("BrushSettings", "PlaneLock"),
					LayoutOrder = 7
				}, {
					Roact.createElement("ImageButton", {
						Size = UDim2.new(0, 27, 0, 16),
						Image = planeLock and toggleOn or toggleOff,
						BackgroundTransparency = 1,
						[Roact.Event.Activated] = function()
							self.props.toggleButton("PlaneLock")
						end,
					}),
				}),

				FixedPlane = fixedPlane ~= nil and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 18),
					Text = localization:getText("BrushSettings", "FixedPlane"),
					LayoutOrder = 8
				}, {
					Roact.createElement("ImageButton", {
						Size = UDim2.new(0, 27, 0, 16),
						Image = fixedPlane and toggleOn or toggleOff,
						BackgroundTransparency = 1,
						[Roact.Event.Activated] = function()
							self.props.toggleButton("PlaneLock") -- TODO: DEVTOOLS-3102 add proper fixed plane value to dataloop
						end,
					}),
				}),

				HeightSelectionToggle = fixedPlane and isFlatten and (FFlagTerrainToolsFixPlanePositionErrorMessage
				and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 22),
					Text = localization:getText("BrushSettings", "PlanePosition"),
					Padding = UDim.new(0, 4),
					SizeToContent = true,
					LayoutOrder = 9,
					ContentDirection = Enum.FillDirection.Horizontal,
				}, {
					Input = Roact.createElement(LabeledTextInput, {
						Size = UDim2.new(0, 116, 0, 22),
						Width = UDim.new(0, 116),
						Label = "Y",
						Text = planePositionY,
						MaxGraphemes = MAX_GRAPHEMES,
						LayoutOrder = 1,

						OnFocusLost = function(enterPressed, text)
							setText(text, "PlanePositionY")
						end,

						ValidateText = function(text)
							local number = tonumber(text)
							if number then
								return text
							else
								return text, localization:getText("Warning", "InvalidNumber")
							end
						end,
					}),

					HeightPicker = Roact.createElement("ImageButton", {
						Size = UDim2.new(0, 18, 0, 18),
						Image = heightPicker and pickerOnImage or pickerOffImage,
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						[Roact.Event.Activated] = function()
							self.props.toggleButton("HeightPicker")
						end,
					})
				}) or Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 22),
					Text = localization:getText("BrushSettings", "PlanePosition"),
					Padding = UDim.new(0, 4),
					SizeToContent = true,
					LayoutOrder = 9,
				}, {
					HeightPicker = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, 22),
						BackgroundTransparency = 1,
					}, {
						Input = Roact.createElement(LabeledTextInput, {
							Size = UDim2.new(0, 116, 0, 22),
							Width = UDim.new(0, 116),
							Label = "Y",
							Text = planePositionY,
							MaxGraphemes = MAX_GRAPHEMES,
							LayoutOrder = 1,

							OnFocusLost = function(enterPressed, text)
								setText(text, "PlanePositionY")
							end,

							ValidateText = function(text)
								local number = tonumber(text)
								if number then
									return text
								else
									return text, localization:getText("Warning", "InvalidNumber")
								end
							end,
						}),
						HeightPicker = Roact.createElement("ImageButton", {
							Position = UDim2.new(0, 116 + 3, 0, 3),
							Size = UDim2.new(0, 18, 0, 18),
							Image = heightPicker and pickerOnImage or pickerOffImage,
							BackgroundTransparency = 1,
							LayoutOrder = 2,
							[Roact.Event.Activated] = function()
								self.props.toggleButton("HeightPicker")
							end,
						})
					})
				})),

				SnapToGridToggle = snapToGrid ~= nil and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 18),
					Text = localization:getText("BrushSettings", "SnapToGrid"),
					LayoutOrder = 10,
				}, {
					Roact.createElement("ImageButton", {
						Size = UDim2.new(0, 27, 0, 16),
						Image = snapToGrid and toggleOn or toggleOff,
						BackgroundTransparency = 1,
						[Roact.Event.Activated] = function()
							self.props.toggleButton("SnapToGrid")
						end,
					}),
				}),

				IgnoreWaterToggle = ignoreWater ~= nil and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 18),
					Text = localization:getText("BrushSettings", "IgnoreWater"),
					LayoutOrder = 11,
				}, {
					Roact.createElement("ImageButton", {
						Size = UDim2.new(0, 27, 0, 16),
						Image = ignoreWater and toggleOn or toggleOff,
						BackgroundTransparency = 1,
						[Roact.Event.Activated] = function()
							self.props.toggleButton("IgnoreWater")
						end,
					}),
				}),
			})
		end)
	end)
end
end

return BrushSettings
