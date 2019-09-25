local module = {}

local GuiUtilities = require(script.Parent.Parent.Libs.GuiUtilities)
local ImageButtonWithText = require(script.Parent.Parent.Libs.ImageButtonWithText)
local i18nModule = require(script.Parent.Parent.Libs.Localization)

local FFlagTerrainToolMetrics = settings():GetFFlag("TerrainToolMetrics")
local FFlagImportTerrainV2 = settings():GetFFlag("ImportTerrainV2")
local FFlagTerrainClearButtonMove = settings():GetFFlag("TerrainClearButtonMove")

local AnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = game:GetService("StudioService")
local ChangeHistoryService = game:GetService('ChangeHistoryService')

local kMainButtonOuterSize = 53
local kMainButtonBorderSize = 1
local kMainButtonActualSize = (kMainButtonOuterSize - 2 * kMainButtonBorderSize)

local kMainButtonActualSizeUDim2 = UDim2.new(0, kMainButtonActualSize, 0, kMainButtonActualSize)
local kMainButtonOuterSizeUDim2 = UDim2.new(0, kMainButtonOuterSize, 0, kMainButtonOuterSize)

local kMainButtonFramePadding = UDim.new(0, 4)

local kMainButtonListFrame

--[[
	How tool modules work:
		Your ModuleScript should return a table. The table can contain the following functions
			On	= This function will be called when your tool is selected. Will hand in the mouse object, and the tool.
			Off	= This function will be called when your tool is deselected.
			BrushOperation = If this function is present, the tool will use the basic brushing functionality, and use this function as the operation
				operation(centerPoint, materialsTable, occupanciesTable, resolution, selectionSize, strength, desiredMaterial, brushShape, minBounds, maxBounds)
			FirstTimeSetup = A function that can hold back the majority of the code from being setup until the tool is used for the first time
]]


local modules =
{
	Brush = require(script.Parent.TerrainBrush),
	TerrainGeneration = require(script.Parent.TerrainGeneration),
	TerrainImporter = require(script.Parent.TerrainImporter),
	TerrainSmoother = require(script.Parent.TerrainSmoother),
	TerrainRegionEditor = require(script.Parent.TerrainRegionEditor)
}

local kMainButtonConfigs =
{
	{
		Name = "Generate",
		Text = "Studio.TerrainEditor.MainButtons.Generate",
		Tip = "Studio.TerrainEditor.MainButtons.GenerateTooltip",
		Icon = "rbxasset://textures/TerrainTools/mt_generate.png",
		Modules = {modules.TerrainGeneration},
		LayoutOrder = 1,
	},
	{
		Name = "Add",
		Text = "Studio.TerrainEditor.MainButtons.Add",
		Tip = "Studio.TerrainEditor.MainButtons.AddTooltip",
		Icon = "rbxasset://textures/TerrainTools/mt_add.png",
		Modules = {modules.Brush,},
		UsesMaterials = true,
		LayoutOrder = 3,
		DisablesPlaneLock = true,
	},
	{
		Name = "Subtract",
		Text = "Studio.TerrainEditor.MainButtons.Subtract",
		Tip = "Studio.TerrainEditor.MainButtons.SubtractTooltip",
		Icon = "rbxasset://textures/TerrainTools/mt_subtract.png",
		Modules = {modules.Brush,},
		LayoutOrder = 4,
		DisablesPlaneLock = true,
		DisablesAutoColor = true,
	},
	{
		Name = "Paint",
		Text = "Studio.TerrainEditor.MainButtons.Paint",
		Tip = "Studio.TerrainEditor.MainButtons.PaintTooltip",
		Icon = "rbxasset://textures/TerrainTools/mt_paint.png",
		Modules = {modules.Brush,},
		UsesMaterials = true,
		LayoutOrder = 5,
		DisablesAutoColor = true,
	},
	{
		Name = "Grow",
		Text = "Studio.TerrainEditor.MainButtons.Grow",
		Tip = "Studio.TerrainEditor.MainButtons.GrowTooltip",
		Icon = "rbxasset://textures/TerrainTools/mt_grow.png",
		Modules = {modules.Brush,},
		UsesMaterials = true,
		LayoutOrder = 6,
	},
	{
		Name = "Erode",
		Text = "Studio.TerrainEditor.MainButtons.Erode",
		Tip = "Studio.TerrainEditor.MainButtons.ErodeTooltip",
		Icon = "rbxasset://textures/TerrainTools/mt_erode.png",
		Modules = {modules.Brush,},
		LayoutOrder = 7,
		DisablesAutoColor = true,
	},
	{
		Name = "Smooth",
		Text = "Studio.TerrainEditor.MainButtons.Smooth",
		Tip = "Studio.TerrainEditor.MainButtons.SmoothTooltip",
		Icon = "rbxasset://textures/TerrainTools/mt_smooth.png",
		Modules = {modules.Brush, modules.TerrainSmoother,},
		LayoutOrder = 8,
		DisablesAutoColor = true,
	},
	{
		Name = "Regions",
		Text = "Studio.TerrainEditor.MainButtons.Regions",
		Tip = "Studio.TerrainEditor.MainButtons.RegionsTooltip",
		Icon = "rbxasset://textures/TerrainTools/mt_regions.png",
		Modules = {modules.TerrainRegionEditor,},
		LayoutOrder = 9,
	}

}

if FFlagImportTerrainV2 then
	table.insert(kMainButtonConfigs, {
		Name = "Import",
		Text = "Studio.TerrainEditor.MainButtons.Import",
		Tip = "Studio.TerrainEditor.MainButtons.ImportTooltip",
		Icon = "rbxasset://textures/TerrainTools/mt_terrain_import.png", -- probably need a better image for this
		Modules = {modules.TerrainImporter},
		LayoutOrder = 2,
	})
end

if FFlagTerrainClearButtonMove then
	table.insert(kMainButtonConfigs, {
		Name = "Clear",
		Text = "Studio.TerrainEditor.MainButtons.Clear",
		Tip = "Studio.TerrainEditor.MainButtons.ClearTooltip",
		Icon = "rbxasset://textures/TerrainTools/mt_terrain_clear.png",
		Modules = {
			{
				On = function()
					-- for the roact rewrite we'll want to pop up confirmation screen in the main window
					terrain = workspace.Terrain
					if not clearing and terrain then
						clearing = true
						terrain:Clear()
						ChangeHistoryService:SetWaypoint('Terrain Clear')
						clearing = false
					end
				end
			}
		},
		LayoutOrder = 10,
	})
end

local function createMainButton(thePlugin, thePluginGui, mainButtonConfig, toggleFunction)
	local buttonObj = ImageButtonWithText.new(mainButtonConfig.Name,
		mainButtonConfig.LayoutOrder,
		mainButtonConfig.Icon,
		i18nModule.TranslateId(mainButtonConfig.Text),
		kMainButtonActualSizeUDim2,
		UDim2.new(0,26,0,26),
		UDim2.new(0,13,0,3),
		UDim2.new(1,0,0,22),
		UDim2.new(0,0,1,-22))

	buttonObj:getButton().Parent = kMainButtonListFrame
	mainButtonConfig.ButtonObj = buttonObj

	mainButtonConfig.ButtonObj:getButton().MouseButton1Click:connect(toggleFunction);

	local pluginAction = thePlugin:CreatePluginAction(mainButtonConfig.Name,
		i18nModule.TranslateId(mainButtonConfig.Text),
		i18nModule.TranslateId(mainButtonConfig.Tip))

	pluginAction.Triggered:connect(function()
  		-- Make sure the plugin GUI is visible.
		thePluginGui.Enabled = true
		-- Toggle this mode.
		toggleFunction()
	end)
end


-- Creates the main panel for tools, and creates the scrolling frame for sub-content section.
-- The main panel will be resized dynamically when widget is stretched horizontally
-- The content section will resize to fill the rest of the vertical space that the main panel is not using.
-- Returns the main panel, and returns the sub-content section
function makeMainPanel()
	-- Background.
	local outerBackground = GuiUtilities.MakeFrame("OuterBackground")
	outerBackground.Parent = pluginGui
	outerBackground.Position = UDim2.new(0, 0, 0, 0)
	outerBackground.Size = UDim2.new(1, 0, 1, 0)

	-- Make the main panel for tool buttons
	local section = GuiUtilities.MakeFixedHeightFrame("MainPanel",  100)
	section.Parent = pluginGui
	section.Position = UDim2.new(0, 0, 0, 0)

	GuiUtilities.SetMainFrame(section)

	local buttonListFrame = Instance.new("Frame")
	buttonListFrame.Name = "ButtonListFrame"
	buttonListFrame.BackgroundTransparency = 1
	buttonListFrame.BorderSizePixel = 0
	buttonListFrame.Size = UDim2.new(1, 0, 1, 0)
	buttonListFrame.Position = UDim2.new(0, 0, 0, 0)
	buttonListFrame.Parent = section

	local uiGridLayout = Instance.new("UIGridLayout")
	uiGridLayout.CellSize = kMainButtonOuterSizeUDim2
	uiGridLayout.CellPadding = UDim2.new(0,3,0,0)
	uiGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	uiGridLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	uiGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiGridLayout.Parent = buttonListFrame
	uiGridLayout.SortOrder = Enum.SortOrder.LayoutOrder

	local uiPadding = Instance.new("UIPadding")
	uiPadding.PaddingBottom = kMainButtonFramePadding
	uiPadding.PaddingLeft = kMainButtonFramePadding
	uiPadding.PaddingRight = kMainButtonFramePadding
	uiPadding.PaddingTop = kMainButtonFramePadding
	uiPadding.Parent = buttonListFrame

	-- Make the visual that sits behind the scrollbar and gives the scrollbar thumb visual contrast
	local scrollbarBackground = Instance.new('Frame')
	scrollbarBackground.Name = 'ScrollbarBackground'
	scrollbarBackground.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
	scrollbarBackground.BorderColor3 = Color3.fromRGB(182, 182, 182)
	scrollbarBackground.Parent = pluginGui

	-- Make the content section scrolling frame
	local mainSpaceScrollingFrame = Instance.new("ScrollingFrame")
	mainSpaceScrollingFrame.Name = "MainSpace"
	mainSpaceScrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
	mainSpaceScrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
	mainSpaceScrollingFrame.ElasticBehavior = Enum.ElasticBehavior.Never
	mainSpaceScrollingFrame.ScrollBarThickness = 17
	mainSpaceScrollingFrame.BorderSizePixel = 0
	mainSpaceScrollingFrame.BackgroundTransparency = 1
	mainSpaceScrollingFrame.ZIndex = 2
	mainSpaceScrollingFrame.TopImage = "rbxasset://textures/TerrainTools/UpArrowButtonOpen17.png"
	mainSpaceScrollingFrame.MidImage = "rbxasset://textures/TerrainTools/EdgesSquare17x1.png"
	mainSpaceScrollingFrame.BottomImage = "rbxasset://textures/TerrainTools/DownArrowButtonOpen17.png"

	local uiListLayout = Instance.new("UIListLayout")
	uiListLayout.Parent = mainSpaceScrollingFrame
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	mainSpaceScrollingFrame.Parent = pluginGui

	-- The scrollbar backing should only be visible when the scrollbar is visible
	local function updateScrollbarBackingVisibility()
		scrollbarBackground.Visible = mainSpaceScrollingFrame.CanvasSize.Y.Offset > mainSpaceScrollingFrame.AbsoluteSize.Y
	end

	-- Adjust the vertical size of the main buttons panel and the main panel details space when the main panel buttons change the number of rows are being rendered
	local function updateMainSectionsSizesAndPositions()
		section.Size = UDim2.new(1, 0, 0, uiGridLayout.AbsoluteContentSize.Y+kMainButtonFramePadding.Offset*2)
		mainSpaceScrollingFrame.Size = UDim2.new(1, 0, 1, -section.AbsoluteSize.Y)
		mainSpaceScrollingFrame.Position = UDim2.new(0, 0, 0, section.AbsolutePosition.Y+section.AbsoluteSize.Y)
		scrollbarBackground.Size = UDim2.new(0, mainSpaceScrollingFrame.ScrollBarThickness-2, 1, -section.AbsoluteSize.Y-2)
		scrollbarBackground.Position = UDim2.new(1, -mainSpaceScrollingFrame.ScrollBarThickness+1, 0, section.AbsolutePosition.Y+section.AbsoluteSize.Y+1)
		updateScrollbarBackingVisibility()
	end
	uiGridLayout:GetPropertyChangedSignal("AbsoluteContentSize"):connect(updateMainSectionsSizesAndPositions)
	updateMainSectionsSizesAndPositions()

	-- Update the canvas size of the scrolling frame to fit the size of it's contents
	local function updateScrollingFrameCanvas()
		mainSpaceScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, uiListLayout.AbsoluteContentSize.Y)
		updateScrollbarBackingVisibility()
	end
	uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):connect(updateScrollingFrameCanvas)
	updateScrollingFrameCanvas()

	contentFrame = mainSpaceScrollingFrame
	kMainButtonListFrame = buttonListFrame
end

local function fastSpawn(func)	-- Creates a new thread like Spawn() but executes the code immediately, without a frame delay.
	coroutine.wrap(func)()
end


module.Initialize = function(thePlugin, thePluginGui)
	on = false
	currentMainButtonConfig = nil
	plugin = thePlugin
	pluginGui = thePluginGui
	makeMainPanel()
	local mouse = plugin:GetMouse()
	local userInput = game:GetService('UserInputService')
	local prevCameraType = game.Workspace.CurrentCamera.CameraType

	for mainButtonIndex, mainButtonConfig in ipairs(kMainButtonConfigs) do
		createMainButton(thePlugin,
			thePluginGui,
			mainButtonConfig,
			function()
				if not on or (currentMainButtonConfig ~= nil and mainButtonConfig ~= currentMainButtonConfig) then	--if off or on but current tool isn't the desired tool, then select this tool.
					Selected(mainButtonConfig)
					if FFlagTerrainToolMetrics then
						AnalyticsService:SendEventDeferred("studio", "TerrainEditor", "TopLevelButton", {
							userId = StudioService:GetUserId(),
							name = mainButtonConfig.Name
						})
					end
				else
					Deselected()
				end
			end)
	end


	-- If the plugin gui is disabled, we should definitely be deselected.
	pluginGui:GetPropertyChangedSignal("Enabled"):Connect(function()
		if (not pluginGui.Enabled) then
			Deselected()
		end
	end)

	function Selected(tool)
		if plugin then
			plugin:Activate(true)
		end

		if not userInput.MouseEnabled then
			prevCameraType = game.Workspace.CurrentCamera.CameraType
			game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Fixed
		end

        DeselectSelectedTool()

		tool.ButtonObj:setSelected(true)

		on = true
		currentMainButtonConfig = tool

		--local toolModule = tool.Module or module.Brush
		for _, toolModule in pairs(tool.Modules) do
			fastSpawn(function()
				if toolModule.FirstTimeSetup and not toolModule.isSetup then
					toolModule.FirstTimeSetup(mouse, pluginGui, contentFrame)
					toolModule.isSetup = true
				end
				if toolModule.On then
					toolModule.On(tool)
				end
			end)
		end
	end

	function DeselectSelectedTool()
		local lastTool = currentMainButtonConfig
		currentMainButtonConfig = nil

		if lastTool then
			lastTool.ButtonObj:setSelected(false)

			--local lastToolModule = lastTool.Module or module.Brush
			for _, lastToolModule in pairs(lastTool.Modules) do
				fastSpawn(function()
					if lastToolModule.Off then
						lastToolModule.Off()
					end
				end)
			end
		end
	end

	function Deselected()
		if not userInput.MouseEnabled then
			game.Workspace.CurrentCamera.CameraType = prevCameraType
		end

		on = false

		DeselectSelectedTool()
	end

	if plugin then
		plugin.Deactivation:connect(function()
			if on then
				Deselected()
			end
		end)
	end

end


return module