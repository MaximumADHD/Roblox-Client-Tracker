local plugin, settings = plugin, settings

local versionString = "v1.1"

-- Module scripts
local ActionMediator		= require(script.Parent.ActionMediator)
local CoreGuiManager		= require(script.Parent.CoreGuiManager)
local DoubleClickDetector	= require(script.Parent.DoubleClickDetector)
local FFlag					= require(script.Parent.FFlag)
local RotationBox			= require(script.Parent.RotationBox)
local Rubberband			= require(script.Parent.Rubberband)
local SizeBox				= require(script.Parent.SizeBox)
local DistanceLinesManager	= require(script.Parent.DistanceLinesManager)
local TextEditor			= require(script.Parent.TextEditor)
local Utility				= require(script.Parent.Utility)
local GlobalValues 			= require(script.Parent.GlobalValues)
local InstanceInfo			= require(script.Parent.InstanceInfo)

local Select				= require(script.Parent.Select)
local Resize				= require(script.Parent.Resize)
local Rotate				= require(script.Parent.Rotate)
local Move					= require(script.Parent.Move)
local MouseIconManager		= require(script.Parent.MouseIconManager)

local SelectionManager		= require(script.Parent.SelectionManager)

local SnappingPointManager	= require(script.Parent.SnappingPointManager)

local Analytics				= require(script.Parent.Analytics)

-- Services
local ChangeHistoryService	= game:GetService("ChangeHistoryService")
local UserInputService		= game:GetService("UserInputService")
local SelectionService		= game:GetService("Selection")
local StarterGuiService 	= game:GetService("StarterGui")
local RunService			= game:GetService("RunService")

-- Flags
local FFlagFixStarterGuiErrors = game:DefineFastFlag("FixStarterGuiErrors", false)

-- Variables
local childAddedEvent = nil
local inputBeganEvent = nil
local inputChangedEvent = nil
local inputEndedEvent = nil
local selectionChangedEvent = nil
local deactivationEvent = nil
local dragEnterEvent = nil

local undoEvent = nil
local redoEvent = nil

local pluginOffInputBeganEvent = nil

local selectedInstancesPropertyChangedEvent = nil
local m_totalInputs = 0

local m_mouseDown = false

local m_previousSelection = {}

local Camera = workspace.CurrentCamera

-- Constants
local BUFFER_SIZE_MINIMUM = 5


-- Functions

-- Injects all the modules that the ActionMediator needs.
local function configureActionMediator()
	Move:setActionMediator(ActionMediator)
	Resize:setActionMediator(ActionMediator)
	Rubberband:setActionMediator(ActionMediator)
	TextEditor:setActionMediator(ActionMediator)
	
	ActionMediator:setMove(Move)
	ActionMediator:setResize(Resize)
	ActionMediator:setRubberband(Rubberband)
	ActionMediator:setTextEditor(TextEditor)
	
	ActionMediator:setDistanceLinesManager(DistanceLinesManager)
	ActionMediator:setSizeBox(SizeBox)

    ActionMediator:setSelectionManager(SelectionManager)
end

-- Events

local function onDoubleClick(inputObject)
	local location = Vector2.new(inputObject.Position.x, inputObject.Position.y)
	local objectsAtPoint = Select:getGuiObjectsAtPoint(location)
	
	if (#objectsAtPoint > 0) and 
		(objectsAtPoint[1]:IsA("TextLabel") or
		objectsAtPoint[1]:IsA("TextButton") or
		objectsAtPoint[1]:IsA("TextBox")) then
	
		TextEditor:startEditingInstance(objectsAtPoint[1])
		Resize:hide()
		
		return true
	end
	
	return false
end

local function onInstanceChanged(instance, property)
		if property == "Parent" then
			-- SelectionManager might need to remove the instance from the filtered selection
			-- if the instance is no longer in StarterGui
			SelectionManager:onParentChanged()
		else
			Resize:updatePosition()
			DistanceLinesManager:update()
			DistanceLinesManager:setVisible(true)
			SizeBox:update()
		end
end

-- void onDescendantAddedToStarterGui(Instance child)
local function onDescendantAddedToStarterGui(child)
	-- Need to notify the SelectionManager. Otherwise it will not know
	-- if a GUI object has been moved into the StarterGui and that it
	-- should be managed.
	SelectionManager:onDescendantAddedToStarterGui(child)
end

local function onInputBegan(inputObject)
	if (TextEditor:isCurrentlyEditing()) then
		return
	end
	
	if (inputObject.UserInputType == Enum.UserInputType.MouseButton1) then
		if (UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or 
			UserInputService:IsKeyDown(Enum.KeyCode.RightShift)) then
				m_previousSelection = SelectionManager:getRawSelection()
		end

		selectedInstancesPropertyChangedEvent = SelectionManager:disconnectSelectionInstancesChanged(selectedInstancesPropertyChangedEvent)

		m_mouseDown = true
		local location = Vector2.new(inputObject.Position.X, inputObject.Position.Y)
		
		if Resize:isOverAHandle() then
			Resize:startDrag(location)
			return
		end

		local item = Select:selectTopLevelItemAtPoint(location)


		Move:startDrag(location)
		
		if (not item) then
			local ray = Camera:ScreenPointToRay(inputObject.Position.X, inputObject.Position.Y)	
			ray = Ray.new(ray.Origin, ray.Direction * 5000)	
			local part, position = workspace:FindPartOnRay(ray)
			if (part and not part.Locked) then
				local instances = {part}
				SelectionService:Set(instances)
                Off()
			else
					Off()
			end
		else
			InstanceInfo:isVisible(item, true)
		end
		
	elseif (inputObject.UserInputType == Enum.UserInputType.Keyboard) then
		--[[
		if (inputObject.KeyCode == Enum.KeyCode.Left) then
			Move:bump(Move.LEFT)
		elseif (inputObject.KeyCode == Enum.KeyCode.Right) then
			Move:bump(Move.RIGHT)
		elseif (inputObject.KeyCode == Enum.KeyCode.Up) then
			Move:bump(Move.UP)
		elseif (inputObject.KeyCode == Enum.KeyCode.Down) then
			Move:bump(Move.DOWN)
		else--]]
		if (inputObject.KeyCode == Enum.KeyCode.U and 
			(UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or
			UserInputService:IsKeyDown(Enum.KeyCode.RightShift))) then
			
			GlobalValues:toggleGridType()
		elseif (inputObject.KeyCode == Enum.KeyCode.A and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl)) then
			--We will eventually want an action overriding system
			--Select all action has already been fired
			SelectionManager:setSelection(Select:getGuiObjects())
		end
	end
end

local function onInputEnded(inputObject)
	if (inputObject.UserInputType == Enum.UserInputType.MouseButton1) then
		m_mouseDown = false
		
		local location = Vector2.new(inputObject.Position.X, inputObject.Position.Y)
		
		if (Resize:isDragInProgress()) then
			Resize:finishDrag()
		end
		
		if (Rubberband:isDragInProgress()) then
			if (UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or 
				UserInputService:IsKeyDown(Enum.KeyCode.RightShift)) then
				Select:toggleSelectionOfAllObjectsInBounds(m_previousSelection, Rubberband:getBounds())
			else
				Select:selectAllObjectsInBounds(Rubberband:getBounds())
			end
						
			if (#SelectionManager:getRawSelection() > 0) then
				Analytics:reportEvent("DragSelect")
			end
			
			Rubberband:finishRubberbandDrag()
			m_previousSelection = {}
		end
		
		if Move:isDragInProgress() then
			Move:finishDrag(location)
		end

		-- Double click to activate text editor. This check should happen onInputEnded instead
		-- of onInputBegan because otherwise the move will end after text editing has begun. Ending
		-- a move will show the resize handles (and size box and distance lines if there's one object). 
		if (DoubleClickDetector:isDoubleClick() and not (UserInputService:IsKeyDown(Enum.KeyCode.LeftAlt) or UserInputService:IsKeyDown(Enum.KeyCode.RightAlt))) then
			if (onDoubleClick(inputObject)) then
				return
			end
		end
		
		if not selectedInstancesPropertyChangedEvent then
			selectedInstancesPropertyChangedEvent = SelectionManager:connectSelectionInstancesChanged(onInstanceChanged)
		end

		if Resize:isOverAHandle() then
			Resize:updateMouseIcon()
		else
			MouseIconManager:setToDefaultIcon()
		end
		
		Resize:updateHandleHighlight()
	end
	
	
end

local function onInputChanged(inputObject)
	if (TextEditor:isCurrentlyEditing()) then return end
	
	if (inputObject.UserInputType == Enum.UserInputType.MouseMovement) then

		local location = Vector2.new(inputObject.Position.x, inputObject.Position.y)
		
		local actionPerformed = false
		
		if (Resize:isDragInProgress()) then
			Resize:updateDrag(location)
			return
		end
		
		if (Rubberband:isDragInProgress()) then
			Rubberband:updateRubberband(location)
			
			if (UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or 
				UserInputService:IsKeyDown(Enum.KeyCode.RightShift)) then
				Select:toggleSelectionOfAllObjectsInBounds(m_previousSelection, Rubberband:getBounds())
			else
				Select:selectAllObjectsInBounds(Rubberband:getBounds())
			end
			
			return
		end
		
		if (Move:isDragInProgress()) then
			Move:updateDrag(location)
			return
		end

        if Resize:isOverAHandle() then
            Resize:updateMouseIcon()
        else
            MouseIconManager:setToDefaultIcon()
        end

        Resize:updateHandleHighlight(false)
	end
end

local function onSelectionChanged()

	SelectionManager:onSelectionChanged()

	SnappingPointManager:generateSnappingLines()

    local m_selected = SelectionService:Get()

    if m_selected[1] then
        if (m_selected[1]:FindFirstAncestor("BillboardGui") or m_selected[1]:FindFirstAncestor("SurfaceGui")) then
            Resize:hide()
            SizeBox:setVisible(false)
            DistanceLinesManager:setVisible(false)
        end
    end
end

local function onDragEnter(instances)
	if (not instances[1]:IsA("GuiBase2d")) then
		return;
	end	
	m_mouseDown = true	
	local location = Vector2.new(plugin:GetMouse().X, plugin:GetMouse().Y)
	SelectionService:Set(instances)
	SelectionManager:onSelectionChanged()
	Move:startDrag(location)
end

local function onPluginOffInputBegan(inputObject)
	if (not StarterGuiService.ShowDevelopmentGui or RunService:IsRunning()) then
		return
	end
end

local function onUndo(waypoint)
	Resize:updatePosition()
end

local function onRedo(waypoint)
	Resize:updatePosition()
end

-----------------------------------
---------PLUGIN BOILERPLATE--------
-----------------------------------

local loaded = false
local on = false

local toolbar
local toolbarButton

toolbar = plugin and plugin:CreateToolbar("RobloxUIEditor")
toolbarButton = toolbar and toolbar:CreateButton("RobloxUIEditor", "RobloxUIEditor", "")

function Off()
	if not on then return end
	on = false
	
	Analytics:reportEvent("Disabled")
	
	inputBeganEvent:disconnect()
	childAddedEvent:disconnect()
	pluginOffInputBeganEvent = UserInputService.InputBegan:connect(onPluginOffInputBegan)
	Select:refreshPaintOrder()

	inputChangedEvent:disconnect()
	inputEndedEvent:disconnect()
	selectionChangedEvent:disconnect()
	deactivationEvent:disconnect()
	dragEnterEvent:disconnect()
	
	selectedInstancesPropertyChangedEvent = SelectionManager:disconnectSelectionInstancesChanged(selectedInstancesPropertyChangedEvent)
	
	SelectionManager:disconnectFilteredSelectionChanged(DistanceLinesManager)
	SelectionManager:disconnectFilteredSelectionChanged(Resize)
	SelectionManager:disconnectFilteredSelectionChanged(SizeBox)
	SelectionManager:disconnectFilteredSelectionChanged(Move)	
	
	SizeBox:Off()
	DistanceLinesManager:Off()
	MouseIconManager:Off()
	Resize:Off()
	
    toolbarButton:SetActive(false)

    plugin:Deactivate()
end

function On()
	if on then return end
	
	Analytics:reportEvent("Enabled")
	
	plugin:Activate(true)
    toolbarButton:SetActive(true)
	
	if FFlagFixStarterGuiErrors then
		childAddedEvent = StarterGuiService.DescendantAdded:connect(onDescendantAddedToStarterGui)
	else
		childAddedEvent = game.StarterGui.DescendantAdded:connect(onDescendantAddedToStarterGui)
	end

	pluginOffInputBeganEvent:disconnect()

	inputBeganEvent = UserInputService.InputBegan:connect(onInputBegan)	
	inputChangedEvent = UserInputService.InputChanged:connect(onInputChanged)
	inputEndedEvent = UserInputService.InputEnded:connect(onInputEnded)
	selectionChangedEvent = SelectionService.SelectionChanged:connect(onSelectionChanged)
	dragEnterEvent = plugin:GetMouse().DragEnter:connect(onDragEnter)
	
	deactivationEvent = plugin.Deactivation:connect(Off)
	
	selectedInstancesPropertyChangedEvent = SelectionManager:connectSelectionInstancesChanged(onInstanceChanged)
	undoEvent = ChangeHistoryService.OnUndo:connect(onUndo)
	redoEvent = ChangeHistoryService.OnRedo:connect(onRedo)
	
	SnappingPointManager:setThreshold(5)

	SizeBox:On()
	DistanceLinesManager:On()
	MouseIconManager:On(plugin:GetMouse())
	Resize:On()
	
	SelectionManager:connectFilteredSelectionChanged(DistanceLinesManager)
	SelectionManager:connectFilteredSelectionChanged(Resize)
	SelectionManager:connectFilteredSelectionChanged(SizeBox)			
	SelectionManager:connectFilteredSelectionChanged(Move)
	
	-- Must do onSelectionChanged, otherwise you can select an object before
	-- the UI Editor is turned on and it won't be registered.	
	onSelectionChanged()
	
	configureActionMediator()

	on = true
end

if toolbarButton then
	if FFlagFixStarterGuiErrors then
		StarterGuiService.ProcessUserInput = true
	else
		game.StarterGui.ProcessUserInput = true
	end
	
    toolbarButton.Click:connect(function()
        if on then
            Off()
        else
            On()
        end
    end)

	local function areAllAncestorsGuiBase2dToStarterGui(guiObject)
		if not guiObject:isA("GuiObject") then
			return false
		end

		local ancestor = guiObject.Parent
		while ancestor ~= nil do

			if FFlagFixStarterGuiErrors then
				if ancestor == StarterGuiService then
					return true
				elseif not ancestor:isA("GuiBase2d") and not ancestor:isA("Folder") then
					return false
				end
			else
				if ancestor == game.StarterGui then
					return true
				elseif not ancestor:isA("GuiBase2d") and not ancestor:isA("Folder") then
					return false
				end
			end
			
			ancestor = ancestor.Parent 
		end
		return false
	end
	local function passesGuiFilter(instance)
		return areAllAncestorsGuiBase2dToStarterGui(instance) and instance:FindFirstAncestorOfClass("ScreenGui") ~= nil
	end

	local function selectionChangedGlobal()
		local selection = SelectionService:Get()
		for i = 1, #selection do
			local instance = selection[i]
			if passesGuiFilter(instance) then
				On()
				return
			end
		end
		Off()
	end
	SelectionService.SelectionChanged:connect(function()
		spawn(selectionChangedGlobal)
	end)
end

pluginOffInputBeganEvent = UserInputService.InputBegan:connect(onPluginOffInputBegan)
Select:refreshPaintOrder()

loaded = true