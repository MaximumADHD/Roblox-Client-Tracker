--[[
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
NOTES FOR ANYBODY READING / MODIFYING THE EDITOR!

-Almost all UI code has been moved to the MenuHandler ModuleScript. There is still a lot of earlier UI code in here that can be cleaned, can probably reduce 500 - 1000 lines
-It would be nice to prebuild the timeline (as has been done with UI) so the generation does not need to be done in code
-Rewrite code that uses variables timelineScale, animationLength so that these can be calculated more cleanly instead of being done often
-MenuManager works by being passed functions to be called when they are done running.

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
--]]
--The envRoot is for a testing environment. When developing the plugin, you can loadstring instead of reloading studio.
local envRoot = script ~= nil and script.Parent or game.Workspace:findFirstChild("Plugin"):clone()
if not require(envRoot.AnimationEditorVersioning):isRunningViewportWidgetsVersion() then
	return --exit if we're running a different version of the animation editor 
end

local version = "3.3.2" --try to keep this up to date :)
_G["AnimationEdit"] = false
local toolbar = plugin:CreateToolbar("Animations")
local button = toolbar:CreateButton(
	"Animation Editor",
	"Create, preview and publish animations for character rigs", -- The text next to the icon. Leave Othis blank if the icon is sufficient.
	"http://www.roblox.com/asset/?id=620849296" -- The icon file's name
)

local rootPart
local menuManager = require(envRoot.AnimationEditorViewportWidgetsVersion.MenuHandler)
local easingStyles = require(envRoot.AnimationEditorViewportWidgetsVersion.EasingStyles)
local guis = envRoot.AnimationEditorViewportWidgetsVersion.GUIs
local cleanup = {}--Parts to be cleaned up on close

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- 3.1 Flag Code
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

local fbxFlagExists, fbxFlagValue = pcall(function () return settings():GetFFlag("DebugStudioRigImporter") end)

local DoNotRunAnimationEditorInPlayModeFlagExists, DoNotRunAnimationEditorInPlayModeFlagValue = pcall(function() return settings():GetFFlag("DoNotRunAnimationEditorInPlayMode") end)

-----------------------------------------...
local DebugEnabled = false
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- PREFERENCES
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

local preferences = {
	["TweenCursor"] = plugin:GetSetting("AnimEditor_TweenCursor"),
	["Snapping"] = true,
	["TransparentSelect"] = plugin:GetSetting("AnimEditor_TransparentSelect"),
	["Interpolation"] = plugin:GetSetting("AnimEditor_Interpolation"),
	["Tooltips"] = plugin:GetSetting("AnimEditor_Tooltips")
}
if preferences["TweenCursor"] == nil then
	preferences["TweenCursor"] = true
end
if preferences["TransparentSelect"] == nil then
	preferences["TransparentSelect"] = true
end
if preferences["Tooltips"] == nil then
	preferences["Tooltips"] = true
end
if preferences["Interpolation"] == nil then
	preferences["Interpolation"] = true
end

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- G E N E R I C    U T I L    C O D E
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

local function Repeat(func)
	local flag = true
	spawn(function()
		while flag do
			func()
			wait()
		end	
	end)

	return (function()	flag = false end)
end


function repairedCFrameSnailVersion(cf)
	local sq=math.sqrt
	local x,y,z,a,b,c,d,e,f,g,h,i=cf:components()
	local j,k,l=f*g-d*i,a*i-c*g,c*d-a*f
	local m,n,o=d*l-k*g,j*g-l*a,a*k-j*d
	local l1,l2,l3=sq(a^2+d^2+g^2),sq(j^2+k^2+l^2),sq(m^2+n^2+o^2)
	return CFrame.new(x,y,z,a/l1,j/l2,m/l3,d/l1,k/l2,n/l3,g/l1,l/l2,o/l3)
end

function repairedCFrame(cf)
	local x,y,z,a,b,c,d,e,f,g,h,i=cf:components()
	local j,k,l=f*g-d*i,a*i-c*g,c*d-a*f
	local m,n,o=d*l-k*g,j*g-l*a,a*k-j*d
	local l1,l2,l3=(a^2+d^2+g^2)^0.5,(j^2+k^2+l^2)^0.5,(m^2+n^2+o^2)^0.5
	return CFrame.new(x,y,z,a/l1,j/l2,m/l3,d/l1,k/l2,n/l3,g/l1,l/l2,o/l3)
end

function isCFrameBroken(cframe)
	local x, y, z, a, b, c, d, e, f, g, h, i = cframe:components()
	
	local r1 = Vector3.new(a, d, g)
	local r2 = Vector3.new(b, e, h)
	local r3 = Vector3.new(c, f, i)
	
	local function fuzzyEq(a, b)
		return math.abs(a - b) < 0.001
	end
		
	return (not fuzzyEq(r1.magnitude, 1) ) or (not fuzzyEq(r2.magnitude, 1) ) or (not fuzzyEq(r3.magnitude, 1) )
end

function approx(arg)
	return math.floor(arg * 1000) / 1000
end

function spairs(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys 
    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

----------- udim stuff ----------------------------
local function UD(a, b, c, d)
	return UDim2.new(a, b, c, d)
end
local function CenterPos(w, h)
	return UD(0.5, -w/2, 0.5, -h/2)
end
local function ConstSize(w, h)
	return UD(0, w, 0, h)
end

function Make(ty, data)
	local obj = Instance.new(ty)
	for k, v in pairs(data) do
		if type(k) == 'number' then
			v.Parent = obj
		else
			obj[k] = v
		end
	end
	return obj
end

function round(val)
  return math.floor(val + 0.5)
end

function printCFrame(name, cf)
	local anarray = {cf:components()}
	local str = ""
	for i,v in pairs(anarray) do
		str = str .. " " .. i .. "# " .. v
	end 
	print(name .. " " .. str)
end

function printVector(vec)
	print("X " .. vec.x .. " Y " .. vec.y .. " Z " .. vec.z)
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

local function weldBetween(a, b, optionalParent)
    local weld = Instance.new("Motor6D")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = CFrame.new()
    weld.C1 = b.CFrame:inverse()*a.CFrame
    weld.Parent = optionalParent ~= nil and optionalParent or a
    return weld;
end

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- MOUSE EVENT CODE
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

local mouseOnLClick = {}
local mouseOnRClick = {}

local mouseOnLUp = {}
local mouseOnRUp = {}

function safeNil(item)
	if (item == nil) then
		return "NIL"
	else
		return item
	end
end

function isSafeNIL(item)
	return (item == "NIL")
end

function registerOn(event, guiElement, func)
	guiElement = safeNil(guiElement)
	local ord = 1
	if (isSafeNIL(guiElement)) then
		ord = 0
	else 
		local parent = guiElement.Parent
		while (parent ~= nil and parent ~= game.Workspace) do
			ord = ord + 1
			parent = parent.Parent
		end
	end
	local eventInstance = { Element = guiElement, Function = func, Order = ord}
	table.insert(event, eventInstance)
	return eventInstance
end

function unregisterOn(event, guiElement)
	guiElement = safeNil(guiElement)
	local i=1
	while i <= #event do
	    if event[i].Element == guiElement then
	        table.remove(event, i)
	    else
	        i = i + 1
	    end
	end
end

function unregisterEvent(event, eventInstance)
	local i=1
	while i <= #event do
	    if event[i] == eventInstance then
	        table.remove(event, i)
--	        print("Remove " .. eventInstance.Element.Name )
	    else
	        i = i + 1
	    end
	end
end

function clearAllEvents()
	mouseOnLClick = {}
	mouseOnRClick = {}

	mouseOnLUp = {}
	mouseOnRUp = {}
end

function isIn(guiElement, X, Y)
	if (X >= guiElement.AbsolutePosition.X and X <= guiElement.AbsolutePosition.X + guiElement.AbsoluteSize.X and
		Y >= guiElement.AbsolutePosition.Y and Y <= guiElement.AbsolutePosition.Y + guiElement.AbsoluteSize.Y) then
		return true
	else
		return false
	end			
end

function listEvent(event)
	print("Event List --------------------------------------")
	local i=1
	while i <= #event do
		local consume = "false"
		if (event[i].Consume) then
			consume = "true"
		end
		if (isSafeNIL(event[i].Element)) then
			print("Nil " .. event[i].Order )
		else
			print(event[i].Element.Name .. " " .. event[i].Order)
		end
        i = i + 1
	end
end


--------------------------------------------------------------------------------------------
-- GUI Mouse Handlers
--------------------------------------------------------------------------------------------

local function mouseCallbackCheck(list)
	local mouse = plugin:GetMouse()
	for _,elem in spairs(list, function(t, a, b) return t[a].Order > t[b].Order end) do
		if (isSafeNIL(elem.Element)) then
			if (elem.Function(mouse.X, mouse.Y)) then
				break
			end
		elseif isIn(elem.Element, mouse.X, mouse.Y) then
			if (elem.Function(mouse.X - elem.Element.AbsolutePosition.X, mouse.Y - elem.Element.AbsolutePosition.Y)) then
				break
			end
		end
	end
end

plugin:GetMouse().Button1Down:connect(function()
		mouseCallbackCheck(mouseOnLClick)
	end
)
plugin:GetMouse().Button2Down:connect(function()
		mouseCallbackCheck(mouseOnRClick)
	end
)
plugin:GetMouse().Button1Up:connect(function()
		mouseCallbackCheck(mouseOnLUp)
	end
)
plugin:GetMouse().Button2Up:connect(function()
		mouseCallbackCheck(mouseOnRUp)
	end
)
game:GetService("UserInputService").InputEnded:connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		mouseCallbackCheck(mouseOnLUp)
	end
end)

local mousePosition2d = Vector2.new()
game:GetService("UserInputService").InputChanged:connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		mousePosition2d = Vector2.new(input.Position.X, input.Position.Y)
	end
end)


function saveModel()
	local model = animationController.Parent:Clone()
	model.Parent = game:GetService("ServerStorage")
	model.Name = "AnimationEditorDebugModel"
end

function mouseRaycast(ignoreList)
	local ray = workspace.CurrentCamera:ViewportPointToRay(mousePosition2d.X, mousePosition2d.Y)
	ray = Ray.new(ray.Origin, ray.Direction.Unit * 512)
		
	local part, point, normal
	
	--infinite loop that is broken out of, so don't worry
	while true do
		part, point, normal = workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
		
		if part then
			local isTransparent = (part.Transparency > 0.9 and preferences["TransparentSelect"] == false) or part.Name == "SelectionPart"
			local isHumanoidRootPart = part.Name == "HumanoidRootPart"
			
			--calculate whether it's an active part or not
			local isDisabled = false
			local animatedPart = findAnimatedPart(part)
			if animatedPart then
				isDisabled = not partInclude[animatedPart.Name]
			end
			
			local shouldSkip = isTransparent or isHumanoidRootPart or isDisabled
			
			if shouldSkip then
				table.insert(ignoreList, part)
			else
				break
			end
		else
			break
		end
	end
	
	return part, point, normal
end


----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- G L O B A L S 																						(Globals for CTRL-F)
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------


timelineUI = nil
menuUI = nil
saveUI = nil
loadUI = nil
stopAnimUI = nil
timeChangeUI = nil
selectedLine = nil
rotateMoveUI = nil

local timelinemarginSize = 40
local marginSize = 5
local lineSize = 10
local buttonSize = 15
local nameSize = 150
local headerSize = 45
local timelineLength = 0
local tickSeparation = 50
local ticks = 1
local tickSpacing = 0.25
local lineCount = 0
local cursorTime = 0
local timeScale = 0.05 -- Pixels per second of animation
--New Timeline
local tickIncrements = plugin:GetSetting("AnimEditor_TickIncrement") == nil and 0.1 or plugin:GetSetting("AnimEditor_TickIncrement")
local timelineWidth = 0
local dragSnapIncrements = nil

local snapIncrementsFixFlagExists, snapIncrementsFixFlagValue = pcall(function () return settings():GetFFlag("AnimationEditorSnapIncrementsDivideByZeroFix") end)
if snapIncrementsFixFlagExists and snapIncrementsFixFlagValue then
	dragSnapIncrements = plugin:GetSetting("AnimEditor_SnapIncrement")
	dragSnapIncrements = (nil == dragSnapIncrements or dragSnapIncrements < 0.02) and 0.02 or dragSnapIncrements
else
	dragSnapIncrements = plugin:GetSetting("AnimEditor_SnapIncrement") == nil and 0.05 or plugin:GetSetting("AnimEditor_SnapIncrement")
end

partList = {}
undoMemory = {}
redoMemory = {}
undoPointer = 0
partListByName = {}
partToItemMap = {}
partToLineNumber = {}
rootPart = nil
animationController = nil

partInclude = {}

cursorClick = false
modal = false
rotateMode = true
partSelection = nil
selectedKeyframe = nil
rotateStep = 0
moveStep = 0
game.Workspace:WaitForChild("Camera")
screenWidth = game.Workspace.Camera.ViewportSize.X

buttonOnColor = Color3.new(200/255, 200/255, 200/255)
buttonOffColor = Color3.new(50/255, 50/255, 50/255)

dropDownColor = Color3.new(21/255, 21/255, 21/255)--Color3.new(100/255, 100/255, 150/255)

local lastAutoSaveTime = 0



----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- D R O P   D O W N    M E N U
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
dropDownMouseClickEater = nil
dropDownMenuClearEvent = nil

function displayDropDownMenu(parent, choiceList, x, y)
	local retval = nil
	modal = true

	local numButtons = tablelength(choiceList)

	-- create frame
	local dropDownUI = Make('Frame', {
			Parent = timelineUI.RootFrame,
			Name = 'RootFrame',
			Style = 'Custom',
			Position = UD(0, x - 100, 0, y),
			Size = UD(0, 100, 0, (marginSize) + numButtons * (buttonSize + marginSize)),
			BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
			BackgroundTransparency = 0.3,
			ZIndex = 10,
		})

	local waitLock = false
	local buttonIdx = 0
	for idx, value in pairs(choiceList) do

		local button = Make('TextButton', {
			Parent = dropDownUI,
			Name = value ..'Button',
			Font = 'ArialBold',
			FontSize = GuiSettings.TextMed,
			TextColor3 = GuiSettings.TextColor,
			Position = UD(0.05, 0, 0, marginSize + buttonIdx * (buttonSize + marginSize)),
			Size = UD(0.9, 0, 0, buttonSize),
			BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
			BackgroundTransparency = 0,
			Text = value,
			ZIndex = 11,
		})

		button.MouseButton1Click:connect(function()
			waitLock = true
			retval = value
		end)


		buttonIdx = buttonIdx + 1
		
	end

	dropDownMouseClickEater = registerOn(mouseOnLClick, dropDownUI, function(x, y)	return true	end)
	dropDownMenuClearEvent = registerOn(mouseOnLClick, nil, function(x, y)
		waitLock = true
		return true
	end)

	while( not waitLock ) do
		wait()
	end

	dropDownUI.Parent = nil
	unregisterEvent(mouseOnLClick, dropDownMouseClickEater)
	unregisterEvent(mouseOnLClick, dropDownMenuClearEvent)

	modal = false
	return retval
end

function displayOptionsMenu(x, y)
	if timelineUI.RootFrame:findFirstChild("OptionsRootFrame") ~= nil then timelineUI.RootFrame.OptionsRootFrame.Parent = nil end
	modal = true
	local loopButton = loopAnimation == true and "Loop: on" or "Loop: off"
	local priorityType = "Priority: "..timelineUI.RootFrame.PriorityDisplay.Text
	local cursorText = preferences["TweenCursor"] == true and "Tween Cursor: on" or "Tween Cursor: off"
	local transparentToggle = preferences["TransparentSelect"] == true and "Select Invisible: yes" or "Select Invisible: no"
	
	local choiceList = {"Change Length","Tick Interval: "..tostring(tickIncrements),"Snap Interval: "..tostring(dragSnapIncrements),loopButton, priorityType, cursorText, transparentToggle}
	local choiceNames = {"Length","Tick","Snap","Loop","Priority","TweenCursor","TransparentToggle"}

	local numButtons = tablelength(choiceList)
	local buttonSize = buttonSize + 4
	-- create frame
	local dropDownUI = Make('Frame', {
			Parent = timelineUI.RootFrame,
			Name = 'OptionsRootFrame',
			Style = 'Custom',
			Position = UD(0, x, 0, y),
			Size = UD(0, 200, 0, (marginSize) + numButtons * (buttonSize + marginSize)),
			BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
			BackgroundTransparency = 0.3,
			ZIndex = 10,
	})
	
	local waitLock = false
	local buttonIdx = 0
	local buttons = {}	
	
	for idx, value in pairs(choiceList) do
		local button = Make('TextButton', {
			Parent = dropDownUI,
			Name = value ..'Button',
			Font = 'ArialBold',
			FontSize = GuiSettings.TextMed,
			TextColor3 = GuiSettings.TextColor,
			Position = UD(0.05, 0, 0, marginSize + buttonIdx * (buttonSize + marginSize)),
			Size = UD(0.9, 0, 0, buttonSize),
			BackgroundColor3 = (idx %2) == 0 and Color3.new(150/255, 150/255, 150/255) or Color3.new(170/255, 170/255, 170/255),
			BackgroundTransparency = 0,
			Text = " "..value,
			ZIndex = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextStrokeTransparency = 0.9,
		})
		buttons[choiceNames[idx]] = button
		buttonIdx = buttonIdx + 1
	end
	
	buttons["Length"].MouseButton1Click:connect(function()
		timeChangeUI.RootFrame.SaveNameFrame.AnimLengthBox.Text = tostring(animationLength)
		timeChangeUI.Parent = game:GetService("CoreGui")
	end)
	
	buttons["Tick"].MouseButton1Click:connect(function()
		tickChangeUI.RootFrame.SaveNameFrame.TickIncrementBox.Text = tostring(tickIncrements)
		tickChangeUI.Parent = game:GetService("CoreGui")
	end)
	
	buttons["Snap"].MouseButton1Click:connect(function()
		snapChangeUI.RootFrame.SaveNameFrame.SnapIncrementBox.Text = tostring(dragSnapIncrements)
		snapChangeUI.Parent = game:GetService("CoreGui")
	end)
	
	buttons["Loop"].MouseButton1Click:connect(function()
		loopAnimation = not loopAnimation
		buttons["Loop"].Text = loopAnimation and "Loop: on" or "Loop: off"
	end)
	
	buttons["Priority"].MouseButton1Click:connect(function()
		local mouse = plugin:GetMouse()
		local newPriority = displayDropDownMenu(timelineUI.RootFrame.PriorityDisplay, animationPriorityList, x + 300, mouse.Y)
		if (newPriority ~= nil) then
			animationPriority = newPriority
			timelineUI.RootFrame.PriorityDisplay.Text = newPriority
			buttons["Priority"].Text = "Priority: "..newPriority
		end			
	end)
	
	buttons["TweenCursor"].MouseButton1Click:connect(function()
		preferences["TweenCursor"] = not preferences["TweenCursor"]
		buttons["TweenCursor"].Text = preferences["TweenCursor"] == true and "Tween Cursor: on" or "Tween Cursor: off"
	end)
	
	buttons["TransparentToggle"].MouseButton1Click:connect(function()
		preferences["TransparentSelect"] = not preferences["TransparentSelect"]
		buttons["TransparentToggle"].Text = preferences["TransparentSelect"] == true and "Select Invisible: yes" or "Select Invisible: no"
	end)
	
	local close
	close = plugin:GetMouse().Button1Down:connect(function()
		local mouse = plugin:GetMouse()
		if mouse.X > x + (200) or mouse.X < x then
			if mouse.Y > y + (marginSize) + numButtons * (buttonSize + marginSize) or mouse.Y < y then
				close:disconnect()
				dropDownUI:Destroy()
				modal = false
			end
		end
	end)

end


----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- T E X T   E N T R Y   D I A L O G
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

function showTextExtryDialog(title, default)

	modal = true

	local dialogUI = Make('ScreenGui', 
		{	
			Name = "SaveUI",
			Make('Frame', {
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0.5, -200, 0.5, 0),
				Size = UD(0, 400, 0, marginSize + (lineSize + marginSize) * 5),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = title,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Make('Frame', {
					Parent = timelineUI,
					Name = 'SaveNameFrame',
					Style = 'Custom',
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 1),
					Size = UD(0.9, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 100/255),
					BackgroundTransparency = 0.3,
					Make('TextBox', {
						Name = 'SaveNameBox',
						Font = 'ArialBold',
						FontSize = 'Size14',
						TextColor3 = GuiSettings.TextColor,
						Position = UD(0.05, 0, 0, 0),
						Size = UD(0.9, 0, 1, 0),
						BackgroundTransparency = 1,
						Text = default,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),

				Make('TextButton', {
					Name = 'OKButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "OK",
				}),
				Make('TextButton', {
					Name = 'CancelButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.55, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Cancel",
				}),

			}),
		})

		local retval = default
		local waitLock = false

		dialogUI.RootFrame.OKButton.MouseButton1Click:connect(function()
			retval = dialogUI.RootFrame.SaveNameFrame.SaveNameBox.Text
			waitLock = true
		end)

		dialogUI.RootFrame.CancelButton.MouseButton1Click:connect(function()
			retval = nil
			waitLock = true
		end)


		dialogUI.Parent = game:GetService("CoreGui")


		while( not waitLock ) do
			wait()
		end

		dialogUI.Parent = nil
		modal = false
		return retval

	end

--confirm dialogue
function showConfirmationDialog(text)

	modal = true

	local dialogUI = Make('ScreenGui', 
		{	
			Name = "SaveUI",
			Make('Frame', {
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0.5, -200, 0.5, 0),
				Size = UD(0, 400, 0, marginSize + (lineSize + marginSize) * 5),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				BorderSizePixel = 0,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize * 2),
					BackgroundTransparency = 1,
					Text = text,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Make('TextButton', {
					Name = 'OKButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "OK",
				}),
				Make('TextButton', {
					Name = 'CancelButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.55, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Cancel",
				}),

			}),
		})

		local retval = default
		local waitLock = false

		dialogUI.RootFrame.OKButton.MouseButton1Click:connect(function()
			retval = true
			waitLock = true
		end)

		dialogUI.RootFrame.CancelButton.MouseButton1Click:connect(function()
			retval = false
			waitLock = true
		end)


		dialogUI.Parent = game:GetService("CoreGui")


		while( not waitLock ) do
			wait()
		end

		dialogUI.Parent = nil
		modal = false
		return retval

	end

--Warning dialogue
function showWarningDialog(text)

	modal = true

	local dialogUI = Make('ScreenGui', 
		{	
			Name = "SaveUI",
			Make('Frame', {
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0.5, -200, 0.5, 0),
				Size = UD(0, 400, 0, marginSize + (lineSize + marginSize) * 5),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				BorderSizePixel = 0,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize * 2),
					BackgroundTransparency = 1,
					Text = text,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Make('TextButton', {
					Name = 'OKButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.3, 0, 0, marginSize + (lineSize + marginSize) * 3), -- Center the OK button
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "OK",
				}),
			}),
		})

		local retval = default
		local waitLock = false

		dialogUI.RootFrame.OKButton.MouseButton1Click:connect(function()
			retval = true
			waitLock = true
		end)

		dialogUI.Parent = game:GetService("CoreGui")


		while( not waitLock ) do
			wait()
		end

		dialogUI.Parent = nil
		modal = false
		return retval

	end

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- K E Y  F R A M E    C O D E
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
animationPriorityList = { 
	"Core",
	"Idle",
	"Movement",
	"Action"
}

animationPlayID = 0
animationLength = 2.0
keyframeList = {}
loopAnimation = false
animationPriority = "Core"
animationFramerate = 1 / 20
copyPoseList = {}
poseColor =  Color3.new(200/255, 50/255, 150/255)
copyPoseColor = Color3.new(150/255, 150/255, 200/255)


function copyPose(part, pose)

	if (copyPoseList[part.Name] == pose) then
		copyPoseList[part.Name].UI.BackgroundColor3 = poseColor
		copyPoseList[part.Name] = nil
		return
	elseif (copyPoseList[part.Name] ~= nil) then
		copyPoseList[part.Name].UI.BackgroundColor3 = poseColor
	end

	copyPoseList[part.Name] = pose
	pose.updateColor(true)
	
end

function resetCopyPoseList()
	for partName, pose in pairs(copyPoseList) do
		pose.updateColor(false)
	end
	copyPoseList = {}
end

function pastePoses()
	if (tablelength(copyPoseList) <= 0) then
		return
	end

	local keyframe = getKeyframe(cursorTime)
	if (keyframe == nil) then
		keyframe = createKeyframe(cursorTime)
	end

	for partName, pose in pairs(copyPoseList) do
		local item = partListByName[partName]
		if (keyframe.Poses[item.Item] ~= pose) then
			if (keyframe.Poses[item.Item] == nil) then
				keyframe.Poses[item.Item] = initializePose(keyframe, item.Item)
			end
			
			if keyframe.Poses[item.Item] then
				keyframe.Poses[item.Item].CFrame = pose.CFrame
				keyframe.Poses[item.Item].EasingDirection = pose.EasingDirection
				keyframe.Poses[item.Item].EasingStyle = pose.EasingStyle
				keyframe.Poses[item.Item].updateColor()
			end
		end
	end	

	resetCopyPoseList()
	updateCursorPosition()
end

function keyframeTimeClamp(time)
	-- clamp to their desired snapping property
	if time > animationLength then return animationLength end
	if preferences["Snapping"] then
		--time = round(time / (tickIncrements / 2))
		--time = time * animationFramerate
		time = time + (dragSnapIncrements / 2)
		local t = time - (time % dragSnapIncrements)
		return t
	end

	return time	
end

function deletePose(keyframe, part)
	local active = partInclude[part.Name]
	if (active and keyframe ~= nil and partToItemMap[part] ~= nil and partToItemMap[part].Motor6D ~= nil and keyframe.Poses[part] ~= nil) then

		-- remove pose if it is currently the copied pose for this part
		if (copyPoseList[part.Name] == keyframe.Poses[part]) then
			copyPoseList[part.Name] = nil
		end

		keyframe.Poses[part] = nil

		local ui = keyframe.UI:FindFirstChild('Pose' .. part.Name)

		if (ui ~= nil) then
			ui.Parent = nil
			unregisterOn(mouseOnRClick, ui)
			unregisterOn(mouseOnLClick, ui)
		end


		updateCursorPosition()
	end
end

function initializePose(keyframe, part, poseObject, override)
	local active = partInclude[part.Name]
	if ((not active and (override == false or override == nil)) or keyframe == nil) then
		return nil
	end
	
	local pose = keyframe.Poses[part]
	if (pose == nil and partToItemMap[part] ~= nil and partToItemMap[part].Motor6D ~= nil) then
		resetCopyPoseList()
		local previousPose = getClosestPose(keyframe.Time, part)
		pose = {}
		
		if (previousPose == nil) then
			pose.CFrame = CFrame.new()
		else
			pose.CFrame = previousPose.CFrame
		end
		
		local data = partToItemMap[part]
		pose.CFrame = getMotorC1(data, keyframe.Time) * data.OriginC1:inverse()
		
		pose.Item = partToItemMap[part]
		pose.Time = keyframe.Time
		
		if poseObject then
			pose.EasingStyle = poseObject.EasingStyle
			pose.EasingDirection = poseObject.EasingDirection
		else
			pose.EasingStyle = Enum.PoseEasingStyle.Linear
			pose.EasingDirection = Enum.PoseEasingDirection.Out
		end
		
		
		keyframe.Poses[part] = pose
		
		newPoseUI = Make('TextButton', {
			Parent = keyframe.UI,
			Name = 'Pose' .. part.Name,
			Style = 'Custom',
			Position = UD(0, -lineSize / 2 + 1, 0, ((partToLineNumber[part]) * (lineSize + marginSize) + lineSize / 3) - 8 - timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y),
			Size = UD(0, lineSize, 0, lineSize),
			BackgroundColor3 = poseColor,
			BackgroundTransparency = 0,
			Text = "",
			TextColor3 = Color3.new(1,1,1),
		})
		pose.UI = newPoseUI
		
		pose.updateUI = function()
			if partToLineNumber[part] then
				pose.UI.Position = UD(0, -lineSize / 2 + 1, 0, ((partToLineNumber[part]) * (lineSize + marginSize) + lineSize / 3) - 8 - timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y)
			end
		end

		newPoseUI.MouseButton1Click:connect(function()
			if isKeyDown("ctrl") then
				copyPose(part, pose)
			elseif isKeyDown("alt") then
				registerUndo( {
					action = "deletePose",
				})
				deletePose(keyframe, part)
			else
				modal = true
				menuManager.SetEasingStyle(pose, (function() modal = false  pose.updateColor() end))
			end
		end)

		pose.updateNodePosition = function()
			local shift = timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y
			pose.UI.Position = UD(0, -lineSize / 2 + 1, 0, ((partToLineNumber[part]) * (lineSize + marginSize) + lineSize / 3) - 8 - shift)
		end

		pose.updateColor = function(copy)
			if copy then
				pose.UI.BackgroundColor3 = copyPoseColor
			else
				local styleName = pose.EasingStyle.Name
				if styleName == "Linear" then
					pose.UI.Text = ""
					pose.UI.BackgroundColor3 = poseColor
				elseif styleName == "Constant" then
					pose.UI.Text = "-"
					pose.UI.BackgroundColor3 = Color3.new(61/255, 61/255, 61/255)
				elseif styleName == "Cubic" then
					pose.UI.Text = "C"
					pose.UI.BackgroundColor3 = Color3.new(255/255, 106/255, 0/255)
				elseif styleName == "Elastic" then
					pose.UI.Text = "E"
					pose.UI.BackgroundColor3 = Color3.new(71/255, 204/255, 86/255)
				elseif styleName == "Bounce" then
					pose.UI.Text = "B"
					pose.UI.BackgroundColor3 = Color3.new(14/255, 188/255, 204/255)
				else
					pose.UI.Text = "?"
					pose.UI.BackgroundColor3 = Color3.new(1,1,1)
				end
			end
		end
		
		--Initialize Pose
		pose.updateColor()

		registerOn(mouseOnRClick, newPoseUI, function(x, y)
			if (isKeyDown("shift") and keyframe.Time > 0) then
				deletePose(keyframe, part)
			end
			return true
		end)

		registerOn(mouseOnLClick, newPoseUI, function(x, y)
			if (isKeyDown("ctrl")) then
				copyPose(part, pose)
				return true
			end
			return false
		end)
	end
	return pose
end

function deleteKeyframe(time, undoRegister)
	if undoRegister == true then
		registerUndo( {
			action = "deleteKeyframe",
		})
	end
	time = keyframeTimeClamp(time)
	local keyframe = keyframeList[time]
	if (keyframe ~= nil) then
		for part, pose in pairs(keyframe.Poses) do
			deletePose(keyframe, pose.Item.Item)
		end
		keyframe.UI.Parent = nil
		keyframe.UI = nil
		keyframeList[time] = nil
	end
end

function createKeyframe(time, undoRegister)
	if (undoRegister == true or undoRegister == nil) and time > 0 then
		registerUndo( {
			action = "createKeyframe",
		})
	end
	time = keyframeTimeClamp(time)
	local newKeyframe = keyframeList[time]
	if (newKeyframe == nil) then
		newKeyframe = {
			Time = time,
			Poses = {},		
			Name = "Keyframe",
			UI = Make('Frame', {
				Parent = timelineUI.RootFrame.KeyframeContainer.TimelineFrame,
				Name = 'Keyframe' .. time,
				Style = 'Custom',
				Position = UD(0, --[[nameSize + marginSize + ]](time * timeScale), 0--[[ -lineSize - marginSize]]),
				Size = UD(0, 2, 0, (lineSize + marginSize) * (lineCount + 1)),
				BackgroundColor3 = Color3.new(200/255, 50/255, 150/255),
				BackgroundTransparency = 0,
				Make("TextButton", {
					Parent = timelineUI.RootFrame,
					Name = "OptionsButton",
					Size = UD(0, 12, 0, 12),
					Position = UD(0.5, -6, 0, 0),
					BackgroundColor3 = Color3.new(200/255, 50/255, 150/255),
					TextScaled = true,
					TextColor3 = GuiSettings.TextColor,
					Text = "...",
					ZIndex = 3,
				})
			}),
		}
		local OptionsButton	= newKeyframe.UI.OptionsButton	
		local function getXY()
			if not timelineUI:FindFirstChild("RootFrame") then
				return 0, 0
			end
			
			local x = newKeyframe.UI.AbsolutePosition.X - timelineUI.RootFrame.KeyframeContainer.TimelineFrame.AbsolutePosition.X
			local y = 0
			return x, y
		end
		
		newKeyframe.setPos = function(time)
			local pos = time * timeScale
			if newKeyframe.Time >= animationLength- 0.009 then
				pos = pos - 5
			end
			newKeyframe.UI.Position = UD(0, pos, 0, 0)
		end
		
		newKeyframe.adjust = function()
			newKeyframe.setPos(newKeyframe.Time)
		end
		newKeyframe.adjust()
		
		local function moveOptionsButton()
			if not timelineUI:FindFirstChild("RootFrame") then return end
			
			--[[local x, y = getXY()
			x = x + timelineUI.RootFrame.KeyframeContainer.TimelineFrame.AbsolutePosition.X
			local desiredX = (x - 6)
			local deltaX = desiredX - newKeyframe.UI.OptionsButton.AbsolutePosition.X
			OptionsButton.Position = newKeyframe.UI.OptionsButton.Position + UDim2.new(0, deltaX, 0, 0)]]
		end
		
		
		local mouseDownTime = 0
		local pos
		
		OptionsButton.MouseButton1Down:connect(function()
			lockUndoStep("keyframeMove")
			mouseDownTime = tick()
			pos = newKeyframe.Position
			selectedKeyframe = newKeyframe
		end)
		
		OptionsButton.MouseButton1Click:connect(function()
			mouseCallbackCheck(mouseOnLUp)
			--print("Clickup")
			local timeSinceMouseDown = tick() - mouseDownTime
			--If 2s passes since clicking or the pos is changed, do not open menu.
			if newKeyframe.Position ~= pos then return end
			if timeSinceMouseDown > 2 then return end
			
			local x, y = getXY()
			--print("Options menu")
			keyframeContextMenu(x, y, false)
		end)
		
		OptionsButton.MouseButton1Down:connect(function()
			--print("Options clicked")
			selectedKeyframe = newKeyframe
			local x, y = getXY()
			keyframePositionShift(x, y)
		end)

		
		newKeyframe.UI.Changed:connect(function()
			moveOptionsButton()
		end)
		moveOptionsButton()

		if (time <= 0.0) then
			for part,elem in pairs(partList) do
				initializePose(newKeyframe, part)
			end
		end

		keyframeList[time] = newKeyframe
	end
	return newKeyframe
end

function adjustKeyframes()
	for i, v in pairs(keyframeList) do
		--print("Adjusting "..tostring(i))
		v.adjust()
		for z, x in pairs(v.Poses) do
			x.updateNodePosition()
		end
	end
end

function resetKeyframeToDefaultPose(keyframe)
	for part, item in pairs(partList) do
		initializePose(keyframe, part)
		local pose = keyframe.Poses[part]
		if pose then
			pose.CFrame = CFrame.new()	
			item.Motor6D.C1 = item.OriginC1
			pose.EasingStyle = Enum.PoseEasingStyle.Linear
			pose.EasingDirection = Enum.PoseEasingDirection.Out
			pose.updateColor()
		end
	end
end

function moveKeyframe(keyframe, time)
	if (keyframeList[time] == nil) then
		registerUndo({
			action = "keyframeMove",
			keyframe = keyframe,
			oldTime = keyframe.Time,
		})
		keyframeList[keyframe.Time] = nil
		keyframe.Time = time
		for _, pose in pairs(keyframe.Poses) do
			pose.Time = keyframe.Time
		end
		keyframe.setPos(time)
		keyframeList[time] = keyframe
		updateCursorPosition()
		wait()
	end
end

function nudgeView()
	local mainPart = rootPart.Item
	mainPart.CFrame = mainPart.CFrame*CFrame.new(0, 1, 0)
	mainPart.CFrame = mainPart.CFrame*CFrame.new(0, -1, 0)
end

local function findTime(x)
	--The following line takes the larger
	timelineLength = math.max(timelineUI.RootFrame.KeyframeContainer.CanvasSize.X.Offset, timelineUI.RootFrame.KeyframeContainer.AbsoluteSize.X)
	timeScale =  timelineLength / animationLength
	local X = x-- - timelineUI.RootFrame.KeyframeContainer.CanvasPosition.X
	--print("finding time at "..tostring(X))
	local time = X / timeScale
	local clamped = keyframeTimeClamp(time)
	return clamped
end

function getKeyframe(time)
	time = keyframeTimeClamp(time)
	return keyframeList[time]
end

function getKeyframeData(part, time, createKeyframeIfNil, createPoseIfNil)
	local keyframe = getKeyframe(time)
	if (keyframe == nil and createKeyframeIfNil) then
		keyframe = createKeyframe(cursorTime)
	end

	if (keyframe ~= nil and partToItemMap[part] ~= nil and partToItemMap[part].Motor6D ~= nil) then
		if (keyframe.Poses[part] == nil and createPoseIfNil) then
			initializePose(keyframe, part)
		end
		return keyframe.Poses[part]
	else
		return nil
	end	
end

function getCurrentKeyframeData(part, createIfNil, createPoseIfNil)
	return getKeyframeData(part, cursorTime, createIfNil, createPoseIfNil)
end

function getClosestPose(time, part)
	local closestPose = nil
	
	for keyframeTime,  keyframe in spairs(keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
		if keyframeTime > time then
			break
		end
		
		if keyframe.Poses[part] then
			closestPose = keyframe.Poses[part]
		end
	end

	return closestPose
end

function getClosestNextPose(time, part)
	local closestPose = nil
	
	for keyframeTime,  keyframe in spairs(keyframeList, function(t, a, b) return t[a].Time > t[b].Time end) do
		if keyframeTime <= time then
			break
		end
		
		if keyframe.Poses[part] then
			closestPose = keyframe.Poses[part]
		end
	end

	return closestPose
end

function resetKeyframes()
	resetCopyPoseList()
	
	for time, keyframe in spairs(keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
		deleteKeyframe(time)
	end

	keyframeList = {}
end

function undo()
	--print("Memory: "..tostring(#undoMemory).." : "..tostring(#redoMemory))
	--undoMemory is table name
	--undoPointer refers to where in the table we are, for redo purposes
	if #undoMemory <= 0 then return end
	local undoStep = undoMemory[#undoMemory]
	table.remove(undoMemory, #undoMemory)
	local newUndo = createAnimationFromCurrentData()
	loadImportAnim(undoStep.undo)
	updateTimeLabels()
	undoStep.undo = newUndo
	table.insert(redoMemory, undoStep)
end

function redo()
	--print("Memory: "..tostring(#undoMemory).." : "..tostring(#redoMemory))
	if  #redoMemory > 0 then
		--print("CAN REDO")
		local redoStep = redoMemory[#redoMemory]
		local newRedo = createAnimationFromCurrentData()
		loadImportAnim(redoStep.undo)
		redoStep.undo = newRedo
		table.remove(redoMemory, #redoMemory)
		table.insert(undoMemory, redoStep)
	end
end

function registerUndo(a)
	--Trim stack, remove any undo steps
	redoMemory = {}
	----limbTransform
	if #undoMemory > 0 then
		--Because handle dragging and whatnot fire multiple times per action, we ignore repeated or similar actions.
		local lastAction = undoMemory[#undoMemory]
		if a.action == "editTransform" or a.action == "editRotate" or a.action == "keyframeMove" then
			if not (lastAction.action == a.action and lastAction.item == a.item) or (lastAction.locked == true) then
				a.undo = createAnimationFromCurrentData()
				--print("Registering undo "..a.action)
				table.insert(undoMemory, a)
			end
		else
			a.undo = createAnimationFromCurrentData()
			--print("Registering undo "..a.action)
			table.insert(undoMemory, a)
		end
	else
		a.undo = createAnimationFromCurrentData()
		--print("Registering undo "..a.action)
		table.insert(undoMemory, a)		
	end
end

--Basically, when you drag a keyframe or handle, you want to mark that as a "save". Locking the last undo step makes it not skip the next undo change even if the action is the same

function lockUndoStep(doublecheck)
	--print("Locking "..doublecheck)
	if #undoMemory > 0 then
		if undoMemory[#undoMemory].action == doublecheck then
			undoMemory[#undoMemory].locked = true
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- C U R S O R    C O D E
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
doNotUpdateCursor = false

local ShowingInEditorInterpolation = true

function toggleInEditorInterpolation()
	ShowingInEditorInterpolation = not ShowingInEditorInterpolation
	
	if ShowingInEditorInterpolation then
		menuUI.RootFrame.ToggleInterpolationButton.Text = "Lerp (on)"
	else
		menuUI.RootFrame.ToggleInterpolationButton.Text = "Lerp (off)"
	end
	
	updateCursorPosition()
end

function isJustTranslation(c1, c2)
	local x1, y1, z1, a1, b1, c1, d1, e1, f1, g1, h1, i1 = c1:components()
	local x2, y2, z2, a2, b2, c2, d2, e2, f2, g2, h2, i2 = c2:components()
	local dx = x2 - x1
	local dy = y2 - y1
	local dz = z2 - z1
	local da = a2 - a1
	local db = b2 - b1
	local dc = c2 - c1
	local dd = d2 - d1
	local de = e2 - e1
	local df = f2 - f1
	local dg = g2 - g1
	local dh = h2 - h1
	local di = i2 - i1
	
	local returnValue = true
	for _, delta in pairs{da, db, dc, dd, de, df, dg, dh, di} do
		if math.abs(delta) > 0.001 then
			returnValue = false
		end
	end
	
	return returnValue
end

function getMotorC1(data, time)
	time = keyframeTimeClamp(time)
	
	if data.Motor6D and data.Item then
		local part = data.Item
		local active = partInclude[part.Name]
		if active then
			local lastPose = getClosestPose(time, part)
			local nextPose = getClosestNextPose(time, part)
			
			if lastPose then
				if preferences["Interpolation"] and nextPose and (lastPose.CFrame ~= nextPose.CFrame) and (time ~= lastPose.Time) then
					local timeChunk = nextPose.Time - lastPose.Time
					local timeIn = time - lastPose.Time
					local weight = timeIn / timeChunk
					
					--print(lastPose.EasingStyle)
					weight = easingStyles.GetEasing(lastPose.EasingStyle.Name,lastPose.EasingDirection.Name, 1-weight)

					local lastCFrame = lastPose.CFrame
					local lastPosition = lastCFrame.p
					local lastRotation = (lastCFrame - lastPosition)
					
					local nextCFrame = nextPose.CFrame
					local nextPosition = nextCFrame.p
					local nextRotation = (nextCFrame - nextPosition)
										
					
					local retPos = lastPosition:Lerp(nextPosition, weight)
					local retRot = lastRotation:lerp(nextRotation, weight)
					
					local retVal = lastCFrame:inverse():lerp(nextCFrame:inverse(), weight):inverse() * data.OriginC1--this
					
					retVal = repairedCFrame(retVal)
					return retVal
				else
					return lastPose.CFrame * data.OriginC1
				end
			else
				return data.OriginC1
			end
		else
			return data.OriginC1
		end
	end
end

function updateCursorPosition()
	if (doNotUpdateCursor) then
		return
	end

	-- move UI
	local scroll = timelineUI.RootFrame.KeyframeContainer.CanvasPosition.X
	--timelineUI.RootFrame.Cursor.Position = UD(0, nameSize + marginSize - (lineSize / 2) + (cursorTime * timeScale), 0, (lineSize + marginSize))
	--Timeline 2.0
	local tweenPos = (cursorTime * timeScale) - (lineSize / 2)
	if cursorTime >= animationLength - 0.03 then
		tweenPos = tweenPos - 5
	end
	if preferences["TweenCursor"] then
		if timelineUI.Parent ~= nil then
			timelineUI.RootFrame.KeyframeContainer.Cursor:TweenPosition(UD(0, tweenPos, 0, timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y),"Out","Quad", 0.3, true)
		end	
	else
		timelineUI.RootFrame.KeyframeContainer.Cursor.Position = UD(0, tweenPos, 0, timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y)
	end
	
	--move the model
	for part, data in pairs(partList) do
		local active = partInclude[part.Name]
		if data.Motor6D then
			data.Motor6D.C1 = getMotorC1(data, cursorTime) --seen it
			updateProxyPart()
			nudgeView()
		end
	end
end

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
-- P A R T    S E L E C T I O N     C O D E
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
function selectPartUI(part)
	if not timelineUI then return end
	selectedLine.Parent = timelineUI.RootFrame.ScrollingFrame
	selectedLine.Position = UD(0, marginSize, 0,  23 + ((lineSize + marginSize) * (partToLineNumber[part] - 1)))
	selectedLine2.Parent = timelineUI.RootFrame.KeyframeContainer
	selectedLine2.Position = UD(0, marginSize, 0,  23 + ((lineSize + marginSize) * (partToLineNumber[part] - 1)))
end

function unselectPartUI()
	selectedLine.Parent = nil
	selectedLine2.Parent = nil
end
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
function repairWholeRig()
	for part, data in pairs(partList) do
		if data.Motor6D then
			--data.Motor6D.C0 = repairedCFrame(data.Motor6D.C0)
			--data.Motor6D.C1 = repairedCFrame(data.Motor6D.C1)
		end
	end	
end

------------------------------------------------------------
local function MakePartSelectGui(baseItem)
	local trueSize = Vector2.new(100, lineSize + marginSize * 3)
	local renderSize = Vector2.new(100, lineSize + marginSize * 2)
	
	if (rotateMoveUI == nil) then
		rotateMoveUI = Make('ScreenGui', 
		{	
			Name = "rotateMoveUI",
			
			--world/local space
			Make('Frame', {
				Name = 'SpaceFrame',
				Style = 'Custom',
				Position = UD(0, 15, 1.0, -15 - trueSize.Y * 3),
				Size = UD(0, renderSize.X, 0, renderSize.Y),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				Make('TextButton', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Local Space (Y)",
					TextXAlignment = Enum.TextXAlignment.Center,
				}),
			}),
			
			--rotate/translate
			Make('Frame', {
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0, 15, 1.0, -15 - trueSize.Y * 2),
				Size = UD(0, renderSize.X, 0, renderSize.Y),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				Make('TextButton', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Rotate (R)",
					TextXAlignment = Enum.TextXAlignment.Center,
				}),
			}),
			
			--steps!
			Make('Frame', {
				Name = 'StepFrame',
				Style = 'Custom',
				Position = UD(0, 15, 1.0, -15 - trueSize.Y),
				Size = UD(0, renderSize.X - renderSize.Y - 1, 0, renderSize.Y),
				BackgroundColor3 = Color3.new(50/255, 50/255, 50/255),
				BackgroundTransparency = 0.3,
				Make('TextButton', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Step: Free (T)",
					TextXAlignment = Enum.TextXAlignment.Center,
				}),
				Make('TextButton',{
					Name = 'StepOptions',
					Style = 'Custom',
					Position = UD(1, 2, 0, 0),
					Size = UD(0, renderSize.Y, 0, renderSize.Y),
					BackgroundTransparency = 0.5,
					--BackgroundColor3 = Color3.new(50/255, 50/255, 50/255),
					TextColor3 = Color3.new(1,1,1),
					BorderSizePixel = 1,
					Text = '...',
					ZIndex = 2,
				}),
			}),
		})
	end

	--selection boxes
	local mHoverBox = Make('SelectionBox', {
		Name = "HoverBox",
		Color = envRoot.AnimationEditorViewportWidgetsVersion.Customize.MouseoverColor.Value,
		Transparency = 0.5,
		LineThickness = 0.02,
		Parent = game:GetService("CoreGui"),
		Archivable = false,
	})
	
	local HoverBoxes = {}
	local SelectionBoxes = {}

	local mSelectBox = Make('SelectionBox', {
		Name = "SelectBox",
		Color = envRoot.AnimationEditorViewportWidgetsVersion.Customize.SelectedColor.Value,--Legit selection box
		Transparency = 0,
		LineThickness = 0.02,
		Parent = game:GetService("CoreGui"),
		Archivable = false,
	})

	local mDragHandles = Make('Handles', {
		Color = BrickColor.new"Black",--BrickColor.new(23),
--		Style = 'Resize',
		Style = 'Movement',
		Parent = game:GetService('CoreGui'),
		Archivable = false,
	})

	local mProxyPart = Make('Part', {
--		Size = Vector3.new(0.8,0.8,0.8);
		Size = Vector3.new(0.8,0.8,0.8),
		Name = 'ProxyPart',
		Shape = 'Ball',
		Archivable = false,
		Parent = game.Workspace,
		BrickColor = BrickColor.new(23),
		Anchored = false,
		CanCollide = false,
		Transparency = 0.5,
		TopSurface = 'Smooth',
		BottomSurface = 'Smooth',
	})	

	local mRotateHandles = Make('ArcHandles', {
		Color = BrickColor.new(23),
		Parent = game:GetService('CoreGui'),
		Archivable = false,
	})


	local mHover = nil
	local mCanOffset = nil
	local mShowControls = nil
	local mStartTransformCF = nil
	local mProxyWeld = nil
	
	local InWorldSpace = false
	local PartCFrameAtTransformStart = nil
	-------------

	function displayHandles()
		if (partSelection ~= nil) then
			local item = partSelection

			mProxyPart.Size = Vector3.new(0.2, 0.2, 0.2)
			updateProxyPart()

			if (rotateMode) then
				mRotateHandles.Adornee = mProxyPart
				mDragHandles.Adornee = nil
			else
				mRotateHandles.Adornee = nil
				mDragHandles.Adornee = mProxyPart
			end
		end
	end
	
	function updateProxyPart()
		if partSelection then
			local item = partSelection
			
			--Get 2nd largest dimension of the part!
			local sx = item.Item.Size.X
			local sy = item.Item.Size.Y
			local sz = item.Item.Size.Z
			--local dim = math.min(math.max(sx,sy), math.max(sx,sz))
			local dim = math.min(math.min(sx,sy), math.min(sx,sz))
			mProxyPart.Size = Vector3.new(dim, dim, dim)
			
			if (mProxyWeld ~= nil) then
				mProxyWeld:Destroy()
			end
			
			local pivotCFrame = (item.Motor6D.Part0.CFrame * item.Motor6D.C0)
			local pivotInOriginPartSpace = (item.Motor6D.Part0.CFrame * item.Motor6D.C0 * item.OriginC1:inverse()):toObjectSpace(pivotCFrame)
			local point = item.Item.CFrame:toWorldSpace(pivotInOriginPartSpace).p
			
			if InWorldSpace then
				mProxyPart.CFrame = CFrame.new(point)
			else
				mProxyPart.CFrame = item.Item.CFrame + (point - item.Item.CFrame.p)
			end
			mProxyWeld = weldBetween(item.Item, mProxyPart, mProxyPart)
		end
	end

	function toggleHandles()
		if (partSelection ~= nil) then
			rotateMode = not rotateMode
			if (rotateMode) then
				rotateMoveUI.RootFrame.TitleBar.Text = "Rotate (R)"
			else
				rotateMoveUI.RootFrame.TitleBar.Text = "Move (R)"
			end
			updateStepDisplay()
			displayHandles()
		end
	end
	
	function toggleTransformSpace()
		InWorldSpace = not InWorldSpace
		
		if InWorldSpace then
			rotateMoveUI.SpaceFrame.TitleBar.Text = "World Space (Y)"
		else
			rotateMoveUI.SpaceFrame.TitleBar.Text = "Local Space (Y)"
		end
		
		updateProxyPart()
	end

	function toggleStep()
		if (partSelection ~= nil) then
			if (rotateMode) then
				if (rotateStep == 0) then
					rotateStep = 10
				elseif (rotateStep == 10) then
					rotateStep = 45
				else
					rotateStep = 0
				end
			else
				if (moveStep == 0) then
					moveStep = 0.2
				elseif (moveStep == 0.2) then
					moveStep = 1
				else
					moveStep = 0
				end
			end
			updateStepDisplay()
			displayHandles()
		end
	end

	function updateStepDisplay()
		if (rotateMode) then
			if (rotateStep == 0) then
				rotateMoveUI.StepFrame.TitleBar.Text = "Step: Free (T)"
			elseif (rotateStep == 10) then
				rotateMoveUI.StepFrame.TitleBar.Text = "Step: 10 (T)"
			elseif rotateStep == 45 then
				rotateMoveUI.StepFrame.TitleBar.Text = "Step: 45 (T)"
			else
				rotateMoveUI.StepFrame.TitleBar.Text = "Step: "..tostring(rotateStep).." (T)"
			end
		else
			if (moveStep == 0) then
				rotateMoveUI.StepFrame.TitleBar.Text = "Step: Free (T)"
			elseif (moveStep == 0.2) then
				rotateMoveUI.StepFrame.TitleBar.Text = "Step: 0.2 (T)"
			elseif moveStep == 1 then
				rotateMoveUI.StepFrame.TitleBar.Text = "Step: 1 (T)"
			else
				rotateMoveUI.StepFrame.TitleBar.Text = "Step: "..tostring(moveStep).." (T)"
			end
		end
	end


	local function setSelection(item, showControls, canoffset)
		partSelection = item
		if item then
			mSelectBox.Adornee = item.Item
			selectPartUI(item.Item)
		else
			mSelectBox.Adornee = nil
			unselectPartUI()
		end
		mDragHandles.Adornee = nil
		mRotateHandles.Adornee = nil
		mProxyPart.Parent = nil
		mCanOffset = canoffset
		mShowControls = showControls
		if showControls then
			if canoffset then
				displayHandles()
			else
				mSelectBox.Adornee = nil
				mRotateHandles.Adornee = mProxyPart
				mProxyPart.Parent = game.Workspace
				if item then
					mProxyPart.CFrame = item.Item.CFrame * item.OriginC1
				end
			end
			if rotateMoveUI then
				rotateMoveUI.Parent = game:GetService("CoreGui")
			end
		else
			if rotateMoveUI then
				rotateMoveUI.Parent = nil
			end
		end
	end

	local function getSelection()
		return partSelection
	end
	
	function getHandleSelection()
		return partSelection
	end
	
	function resetHandleSelection()
		setSelection(nil, false, false)
	end

	function setHandleSelection(item)
		setSelection(item, true, true)
	end

	-------------
	-- used for keyframe settings
	local  mKeyframeData = { 
		CanOffset = true,
	}

	mRotateHandles.MouseDrag:connect(function(axisRaw, relAngle, delRadius)
		if (not modal) then
			local rotateStepRad = (rotateStep / 180 ) * math.pi
			if rotateStepRad > 0 then
				relAngle =  math.floor((relAngle / rotateStepRad) + 0.5) * rotateStepRad
			end

			local item = getSelection()
			local part = item.Item
			local kfd = getCurrentKeyframeData(part, true, true)

			local transform = CFrame.fromAxisAngle(Vector3.FromAxis(axisRaw), -relAngle)
			
			registerUndo( {
				action = "editRotate",
				keyframe = kfd,
				oldKeyframeCFrame = kfd.CFrame,
				item = item,
				oldC1 = item.Motor6D.C1
			})
			
			if InWorldSpace then
				transform = CFrame.fromAxisAngle(Vector3.FromAxis(axisRaw), relAngle)
				
				local pivotCFrame = item.Motor6D.Part0.CFrame * item.Motor6D.C0
				local pivotPosition = (PartCFrameAtTransformStart * item.OriginC1).p
				local delta = pivotPosition - pivotCFrame.p
				pivotCFrame = pivotCFrame + delta
				
				local relativeToPivot = pivotCFrame:toObjectSpace(PartCFrameAtTransformStart)
				local newPartCFrame = (transform * (pivotCFrame - pivotCFrame.p) + pivotCFrame.p):toWorldSpace(relativeToPivot)
				
				local newMotorC1 = repairedCFrame(newPartCFrame:inverse() * (pivotCFrame - delta))
				kfd.CFrame = newMotorC1 * item.OriginC1:inverse()
				item.Motor6D.C1 = newMotorC1
			else
				local partcf = item.Motor6D.Part0.CFrame * item.Motor6D.C0 * 
							   mStartTransformCF * transform:inverse() *
							   item.OriginC1:inverse()
				local cf = partcf:inverse() * 
						   item.Motor6D.Part0.CFrame * item.Motor6D.C0 
						   * item.OriginC1:inverse()

				local A = item.Motor6D.Part0.CFrame
				local B = item.Motor6D.C0 
				local C = transform
				local D = mStartTransformCF
				local E = item.OriginC1
				local F = part.CFrame

				local ARot = item.Motor6D.Part0.CFrame - item.Motor6D.Part0.CFrame.p
				local BRot = item.Motor6D.C0 - item.Motor6D.C0.p
				local ERot = E - E.p
				local ETrans = CFrame.new(E.p)

				kfd.CFrame = (ETrans * C * ETrans:inverse() * D)
				item.Motor6D.C1 = (kfd.CFrame*item.OriginC1)
			end
			
			nudgeView()
			updateProxyPart()
		end

	end)


	mRotateHandles.MouseButton1Down:connect(function() 
		if (not modal) then
			local item = getSelection()
			local part = item.Item
			local kfd = getCurrentKeyframeData(part, true, true)
			if mKeyframeData.CanOffset then
				mStartTransformCF = kfd.CFrame
			else
				mStartTransformCF = item.Motor6D.C0:inverse() * item.Motor6D.Part0.CFrame:inverse() *
				                    part.CFrame * item.OriginC1
			end
			
			PartCFrameAtTransformStart = part.CFrame
		end
	end)
	
	mRotateHandles.MouseButton1Up:connect(function()
		lockUndoStep("editRotate")
	end)


	mDragHandles.MouseDrag:connect(function(face, dist)
		if (not modal) then
			if moveStep > 0 then
				dist = math.floor(dist / moveStep) * moveStep
			end
			
			local item = getSelection()
			local part = item.Item
			local kfd = getCurrentKeyframeData(part, true, true)
			
			registerUndo( {
				action = "editTransform",
				keyframe = kfd,
				oldKeyframeCFrame = kfd.CFrame,
				item = item,
				oldC1 = item.Motor6D.C1
			})
			
			if InWorldSpace then
				local translation = Vector3.FromNormalId(face) * dist -- good
				
				local newPartCFrame = PartCFrameAtTransformStart + translation -- good
				
				
				local pivotCFrame = item.Motor6D.Part0.CFrame * item.Motor6D.C0
				
				local newMotorC1 = repairedCFrame(newPartCFrame:inverse() * pivotCFrame)
				kfd.CFrame = (newMotorC1 * item.OriginC1:inverse())
				item.Motor6D.C1 = (newMotorC1)
			else
				axis = Vector3.FromNormalId(face)

				kfd.CFrame = (CFrame.new(-axis*dist)*mStartTransformCF)
				item.Motor6D.C1 = (kfd.CFrame*item.OriginC1)
			end
			
			nudgeView()
			updateProxyPart()
		end
	end)

	mDragHandles.MouseButton1Down:connect(function() 
		if (not modal) then
			local item = getSelection()
			local part = item.Item
			local kfd = getCurrentKeyframeData(part, true, true)
			mStartTransformCF = kfd.CFrame
			
			PartCFrameAtTransformStart = part.CFrame
		end
	end)
	
	mDragHandles.MouseButton1Up:connect(function()
		lockUndoStep("editTransform")
	end)

	local mouse = plugin:GetMouse()

	MouseTargeterHalt = Repeat(function()
		local part = mouseRaycast{}
		if part then
			part = findAnimatedPart(part)
			if part then
				part = part.Item
			end
		end
		
		if part ~= mHover  and _G["AnimationEdit"] == true then
			mHover = part
			
			--clear old hover boxes
			for _, hoverBox in pairs(HoverBoxes) do
				hoverBox:Destroy()
			end
			
			--make new hover boxes
			local model = Instance.new("Model")
			for _, chunkPart in pairs(getAnimatedChunk(part)) do
				local newPart = chunkPart:Clone()
				if newPart then
					newPart.Parent = model
					
					if partToItemMap[chunkPart] then
						model.PrimaryPart = newPart
					end
				end
			end
			local selectionPart = Make("Part", {
				Name = 'SelectionPart',
				Transparency = 1,
				Anchored = true,
				CanCollide = false,
				Archivable = false,
				CFrame = model:GetModelCFrame(),
				Parent = workspace,
			})
			--this can't be in the table since form factor must be set first
			selectionPart.Size = model:GetExtentsSize()
			
			table.insert(HoverBoxes, selectionPart)
			
			local hoverBox = Make("SelectionBox", {
				Name = "HoverBox2",
				LineThickness = 0.02,
				Archivable = false,
				Adornee = selectionPart,
				Parent = game:GetService("CoreGui"),
				Color = envRoot.AnimationEditorViewportWidgetsVersion.Customize.MouseoverColor.Value,
			})
			table.insert(HoverBoxes, hoverBox)
		end
	end)

	function destroySelectionBoxes()
		if (mSelectBox) then
			mSelectBox.Adornee = nil
			mSelectBox.Parent = nil
		end
		if (mHoverBox) then
			mHoverBox.Adornee = nil
			mHoverBox.Parent = nil
		end
		if (mDragHandles) then
			mDragHandles.Adornee = nil
			mDragHandles.Parent = nil
		end
		if (mRotateHandles) then
			mRotateHandles.Adornee = nil
			mRotateHandles.Parent = nil
		end
		if (mProxyPart) then
			mProxyPart:Destroy()
		end
		
		for _, hoverBox in pairs(HoverBoxes) do
			hoverBox:Destroy()
		end
		
		for i, v in pairs(cleanup) do
			v:Destroy()
		end
	end
	
	function tableHasValue(t, v)
		for _, val in pairs(t) do
			if val == v then
				return true
			end
		end
		return false
	end
	
	function getAnimatedChunk(part)
		local parts = {part}
		
		local function recurse(parent)
			if not parent then return end
			
			for _, child in pairs(parent:GetConnectedParts()) do
				if (not partToItemMap[child]) and (not tableHasValue(parts, child)) then
					table.insert(parts, child)
					recurse(child)
				end
			end
		end
		recurse(part)
		
		return parts
	end
	
	function findAnimatedPart(clickedPart, partsChecked)
		partsChecked = partsChecked or {}
		
		if tableHasValue(partsChecked, clickedPart) then return end
		table.insert(partsChecked, clickedPart)
		
		if partToItemMap[clickedPart] then
			return partToItemMap[clickedPart]
		end
		
		for _, part in pairs(clickedPart:GetConnectedParts()) do
			local animatedPart = findAnimatedPart(part, partsChecked)
			if animatedPart then
				return animatedPart
			end
		end
		
		return nil
	end

	registerOn(mouseOnLClick, nil, function()
		if not rootPart then return end
		
		if (not modal) then
			local part, point, normal = mouseRaycast{mProxyPart, rootPart.Item}
			
			if (part ~= nil) then
				local item = findAnimatedPart(part)
				local active = false
				if item then
					active = partInclude[item.Item.Name]
				end

				if (active and item ~= rootPart) then
					if (item ~= nil) then
						setSelection(item, true, true) --select it, (true = with movement controls)
					else
						setSelection(nil, false, false) --select it, (true = with movement controls)
					end
				else
					setSelection(nil, false, false)
				end
			else
				setSelection(nil, false, false) --select it, (true = with movement controls)
			end
		end
		return false
	end)

	rotateMoveUI.RootFrame.TitleBar.MouseButton1Click:connect(function()
		toggleHandles()
	end)

	rotateMoveUI.StepFrame.TitleBar.MouseButton1Click:connect(function()
		toggleStep()
	end)
	
	rotateMoveUI.StepFrame.StepOptions.MouseButton1Click:connect(function()
		if modal then return end
		modal = true
		local input = tonumber(menuManager.PromptInput("Interval:","<degrees>"))
		if input ~= nil and input > 0 then
				if rotateMode then
					rotateStep = input
				else
					moveStep = input
				end
			updateStepDisplay()
		end
		modal = false
	end)
	
	rotateMoveUI.SpaceFrame.TitleBar.MouseButton1Click:connect(function()
		toggleTransformSpace()
	end)

	

--[[
	registerOn(registerOn(mouseOnLClick, nil, function()
		local part = mouse.Target

		--clamp the selection to a single 
--		local sel = mKeyframeStrip.getSelection()

		--do selection
		local item = mPartToItemMap[part]
		if item and mKeyframeData.Enabled[item] then
			--ne selection? Pretend we're at frame 1
			if sel.x == 0 then sel.x = 1 end

			--clamp the selection to one x value for editing
			mKeyframeStrip.setSlider(sel.x)
			local kfdata = mKeyframeData[sel.x][item]
			mKeyframeStrip.setItemSelection(item)
			local canoffset = mKeyframeData.CanOffset
			if item.Motor6D and kfdata then
				mPartSelection.setSelection(item, true, canoffset) --select it, (true = with movement controls)
			else
				mPartSelection.setSelection(item, false, canoffset) --it's the root, false => no controls
			end
		end
	end))
--]]

end

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------



-----------------------------------------------------

GuiSettings = {}
GuiSettings.TextLarge = 'Size24'
GuiSettings.TextMed = 'Size18'
GuiSettings.TextSmall = 'Size14'
GuiSettings.TextColor = Color3.new(221/255, 221/255, 221/255)

guiWindow = nil


local function selectObjectToAnimate()
	-- creating test GUI
	if (guiWindow == nil) then

		guiWindow = Make('ScreenGui', 
		{
			Name = "TestGUI",
			Make('Frame', {
				Parent = guiWindow,
				Name = 'TestFrame',
				Style = 'DropShadow',
				Position = UD(0.5, -200, 0.8, -100),
				Size = UD(0, 400, 0, 130),
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Size = UD(1, 0, 0, 20),
					BackgroundTransparency = 1,
					Text = "Select the root part of your rig",
				}),
				Make('TextLabel', {
					Name = 'SelectionText',
					Font = 'Arial',
					FontSize = GuiSettings.TextSmall,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0, 100, 0, 20),
					Size = UD(1, -100, 0, 20),
					BackgroundTransparency = 1,
					---------------------------
					Text = "<none>",
				}),
				Make('TextButton', {
					Name = 'OkayButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextSmall,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0, 0, 0, 40),
					Size = UD(0.5, 0, 0, 30),
					Style = 'RobloxRoundDefaultButton',
					Visible = false,
					--------------------------
					Text = "Okay",
				}),
				------------------------------
				Make('TextButton', {
					Name = 'HelpButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextSmall,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0, 0, 0, 80),
					Size = UD(1, 0, 0, 30),
					Style = 'RobloxRoundButton',
					--------------------------
					Text = "Need Help? Click Here!",
				}),
				Make('TextButton', {
					Name = 'CancelButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextSmall,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.5, 0, 0, 40),
					Size = UD(0.5, 0, 0, 30),
					Style = 'RobloxRoundButton',
					---------------------------
					Text = "Cancel",
				}),
			}),
		})

	end


	--------------------------------
	local mSelectionHoverBox = Make('SelectionBox', {
		Name = 'AnimEdit_SelectionBox',
		Color = envRoot.AnimationEditorViewportWidgetsVersion.Customize.MouseoverColor.Value,--BrickColor.new(21),
		Transparency = 0.5,
		Parent = game:GetService("CoreGui"),
	})

	local mSelectionBox = Make('SelectionBox', {
		Name = 'AnimEdit_SelectionBox',
		Color = envRoot.AnimationEditorViewportWidgetsVersion.Customize.MouseoverColor.Value,--BrickColor.new(23),
		Parent = game:GetService("CoreGui"),
	})

	local mCurrentSelection = nil
	local mHoverRepeater = nil
	local mOnClickCn
	local waitLock = true

	local mouse = plugin:GetMouse()



	local halt = Repeat(function() mSelectionHoverBox.Adornee = mouse.Target end)

--[[
	Spawn(function()
		while mFlag do
			mSelectionHoverBox.Adornee = mouse.Target
			wait()
		end	
	end)

	local function halt()
		mFlag = false
	end
--]]

	---------------------------
	local function delete()
		if mOnClickCn then
			mOnClickCn:disconnect()
			mOnClickCn = nil
		end
		mSelectionBox.Adornee = nil
		mSelectionHoverBox.Adornee = nil
		mSelectionBox.Parent = nil
		mSelectionHoverBox.Parent = nil
		halt()
	end
	
	local GetAbsoluteRoot = function(what)
		local possibleRoot = what:GetRootPart()
		local found = nil
		local getRoot
		getRoot = function(p)
			for i, v in pairs(p:GetChildren()) do
				if v:IsA("Motor6D") and v.Part1 == possibleRoot then
					found = v.Part0
				elseif v:IsA("BasePart") or v:IsA("Model") then
					getRoot(v)
				end
			end
		end
		getRoot(possibleRoot.Parent)
		if found then return found end
		return possibleRoot
		
	end

	local function setCurrentSelection(selection)

		if (selection == nil) then
			return
		end

		--selection = selection:GetRootPart(selection)
		selection = GetAbsoluteRoot(selection)
		if not selection then return end

		local tempAnimControl = selection.Parent:FindFirstChild("Humanoid")

		tempAnimControl = selection.Parent:FindFirstChild("Humanoid")
		if (not tempAnimControl) then
			tempAnimControl = selection.Parent:FindFirstChild("AnimationController")
			if (not tempAnimControl) then
				warn("Animation Editor was unable to find a Humanoid or AnimationController in the selected model.")
				_G["AnimationEdit"] = false
				return
			end
		end

		animationController = tempAnimControl

		mCurrentSelection = selection	
		mSelectionBox.Adornee = selection

		if selection then
			guiWindow.TestFrame.OkayButton.Visible = true
			guiWindow.TestFrame.SelectionText.Text = selection.Name
			if not selection.Anchored then
				local issuePart = selection
				guiWindow.TestFrame.SelectionText.TextColor3 = Color3.new(1,0,0)
				guiWindow.TestFrame.SelectionText.Text = guiWindow.TestFrame.SelectionText.Text.."  [Warning: Unanchored]"
				repeat wait() 
				until selection == nil or selection ~= issuePart or selection.Anchored == true
				if selection == issuePart and issuePart.Anchored == true then
					guiWindow.TestFrame.SelectionText.Text = issuePart.Name.."  [Resolved]"
					guiWindow.TestFrame.SelectionText.TextColor3 = Color3.new(1,1,1)
				elseif selection ~= issuePart and (selection == nil or selection.Anchored == false) then
					guiWindow.TestFrame.SelectionText.TextColor3 = Color3.new(1,1,1)
				end
			else
				guiWindow.TestFrame.SelectionText.TextColor3 = Color3.new(1,1,1)
			end
		else
			guiWindow.TestFrame.OkayButton.Visible = false
			guiWindow.TestFrame.SelectionText.Text = "<none>"
			guiWindow.TestFrame.SelectionText.TextColor3 = Color3.new(1,1,1)
		end

	end

	local function getSelection()
		return mCurrentSelection
	end

	mOnClickCn = mouse.Button1Down:connect(function()
		setCurrentSelection(mouse.Target)
	end)


	guiWindow.TestFrame.OkayButton.MouseButton1Click:connect(function()
		delete()
		waitLock = false
	end)
	guiWindow.TestFrame.CancelButton.MouseButton1Click:connect(function()
		mCurrentSelection = nil
		delete()
		waitLock = false
		exitPlugin()
	end)
	guiWindow.TestFrame.HelpButton.MouseButton1Click:connect(function()
		local success, msg = pcall(function()
			plugin:OpenWikiPage("Animations")
		end)
		if not success then
			guiWindow.TestFrame.HelpButton.Text = "Coming Very Soon!"
		end
	end)

	-- reset GUI from previous incarnations
	guiWindow.TestFrame.OkayButton.Visible = false
	guiWindow.TestFrame.SelectionText.Text = "<none>"

	guiWindow.Parent = game:GetService("CoreGui")

	while (waitLock) do
		wait()
	end

	-- clean up selection stuff
	delete()
	guiWindow.Parent = nil
	return mCurrentSelection
end



loadButtonList = {}

function showLoadGame()
	if (loadUI == nil) then
		loadUI = Make('ScreenGui', 
		{	
			Name = "LoadUI",
			Make('Frame', {
				Parent = timelineUI,
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0.5, -200, 0.5, 0),
				Size = UD(0, 200, 0, marginSize + (lineSize + marginSize) * 5),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Load:",
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),
		})
	end

	-- clean up old buttons
	for _, part in pairs(loadButtonList) do
		part.Parent = nil
	end

	local humanoid = rootPart.Item.Parent
	local AnimationBlock = humanoid:FindFirstChild("AnimSaves")
	local fileCount = 0

	if (AnimationBlock ~= nil) then
		-- add button for saved games
		for _, childPart in pairs(AnimationBlock:GetChildren()) do
			if (childPart:IsA("KeyframeSequence")) then
				local newButton = Make('TextButton', {
					Parent = loadUI.RootFrame,
					Name = childPart.Name,
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * (1 + fileCount * 2)),
					Size = UD(0.9, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = childPart.Name,
				})
				fileCount = fileCount + 1	
				loadButtonList[fileCount] = newButton


				newButton.MouseButton1Click:connect(function()
					loadUI.Parent = nil
					loadCurrentAnimation(childPart.Name)
					modal = false
				end)

			end
		end
	end

	if (fileCount > 0) then
		local newButton = Make('TextButton', {
			Parent = loadUI.RootFrame,
			Name = 'CancelButton',
			Font = 'ArialBold',
			FontSize = GuiSettings.TextMed,
			TextColor3 = GuiSettings.TextColor,
			Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * (1 + fileCount * 2)),
			Size = UD(0.9, 0, 0, lineSize * 2),
			BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
			BackgroundTransparency = 0,
			Text = 'Cancel',
		})
		fileCount = fileCount + 1	
		loadButtonList[fileCount] = newButton

		newButton.MouseButton1Click:connect(function()
			loadUI.Parent = nil
			modal = false
		end)

		loadUI.RootFrame.Size = UD(0, 200, 0, marginSize + (lineSize + marginSize) * (1 + fileCount * 2))
		loadUI.Parent = game:GetService("CoreGui")
	else
		modal = false
	end
end

function showExportAnim()
	-- Update the model to start positions
	local motorOrig = {}
	for part,elem in pairs(partList) do
		if (elem.Motor6D ~= nil) then
			elem.Motor6D.C1 = elem.OriginC1
			nudgeView()
		end
	end

	local kfsp = game:GetService('KeyframeSequenceProvider')

	local kfs = createAnimationFromCurrentData()
	local animID = kfsp:RegisterKeyframeSequence(kfs)
	local dummy = rootPart.Item.Parent

-- EXPORT HERE
--			print("AnimID = " .. animID)

	local AnimationBlock = dummy:FindFirstChild("AnimSaves")
	if AnimationBlock == nil then
		AnimationBlock = Instance.new('Model')
		AnimationBlock.Name = "AnimSaves"
		AnimationBlock.Parent = dummy
	end

	local Animation = AnimationBlock:FindFirstChild("ExportAnim")
	if Animation == nil then
		Animation = Instance.new('Animation')
		Animation.Name = "ExportAnim"
		Animation.Parent = AnimationBlock
	end
	Animation.AnimationId = animID

	local OldKeyframeSqeuence = Animation:FindFirstChild("Test")
	if OldKeyframeSqeuence ~= nil then
--		print("Found old sequence")
		OldKeyframeSqeuence.Parent = nil
	end

	kfs.Parent = Animation

	local selectionSet = {}
	table.insert(selectionSet, kfs)

	game.Selection:Set(selectionSet)
	wait()
	plugin:SaveSelectedToRoblox()

--[[
	local selectionSet = {}
	table.insert(selectionSet, Animation)

	game.Selection:Set(selectionSet)
	wait()
	plugin:SaveSelectedToRoblox()
--]]

	modal = false
end


function showImportAnimText()
	local id = plugin:PromptForExistingAssetId("Animation")
	if (id ~= nil and tonumber(id) > 0) then
		  loadImportAnim(tonumber(id))
	end
end
					

function showImportAnim()
	local animPage = 1
	local userID = plugin:GetStudioUserId()
	local kfsp = game:GetService('KeyframeSequenceProvider')
	local animList = kfsp:GetAnimations(userID, animPage)

	if (loadUI == nil) then
		loadUI = Make('ScreenGui', 
		{	
			Name = "LoadUI",
			Make('Frame', {
				Parent = timelineUI,
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0.5, -200, 0.25, 0),
				Size = UD(0, 200, 0, marginSize + (lineSize + marginSize) * 5),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Load:",
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),
		})
	end

	-- clean up old buttons
	for _, part in pairs(loadButtonList) do
		part.Parent = nil
	end

	local humanoid = rootPart.Item.Parent
	local AnimationBlock = humanoid:FindFirstChild("AnimSaves")
	local fileCount = 0
	local rowCount = 0

--[[
	print("Anims Loaded " .. #animList)
	for _, childPart in pairs(animList) do
		print("File - " .. childPart.Name)
	end
--]]
	if (animList ~= nil) then
		-- add button for saved games
		for _, childPart in pairs(animList) do
			local newButton = Make('TextButton', {
				Parent = loadUI.RootFrame,
				Name = childPart.Name,
				Font = 'ArialBold',
				FontSize = GuiSettings.TextMed,
				TextColor3 = GuiSettings.TextColor,
				Position = UD(0, 10 + 200 * rowCount, 0, marginSize + (lineSize + marginSize) * (1 + fileCount * 2)),
				Size = UD(0, 180, 0, lineSize * 2),
				BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
				BackgroundTransparency = 0,
				Text = childPart.Name,
			})
			fileCount = fileCount + 1	
			if (fileCount > 10) then
				fileCount = 0
				rowCount = rowCount + 1
			end
			loadButtonList[fileCount] = newButton


			newButton.MouseButton1Click:connect(function()
				loadUI.Parent = nil
				loadImportAnim(childPart.Id)
				modal = false
			end)
		end
	end

--	print("File Count " .. fileCount)
	if (fileCount > 0 or rowCount > 0) then
		local newButton = Make('TextButton', {
			Parent = loadUI.RootFrame,
			Name = 'CancelButton',
			Font = 'ArialBold',
			FontSize = GuiSettings.TextMed,
			TextColor3 = GuiSettings.TextColor,
			Position = UD(0, 10 + 200 * rowCount, 0, marginSize + (lineSize + marginSize) * (1 + fileCount * 2)),
			Size = UD(0, 180, 0, lineSize * 2),
			BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
			BackgroundTransparency = 0,
			Text = 'Cancel',
		})
		fileCount = fileCount + 1	
		loadButtonList[fileCount] = newButton

		newButton.MouseButton1Click:connect(function()
			loadUI.Parent = nil
			modal = false
		end)

		loadUI.RootFrame.Size = UD(0, 200  * (rowCount + 1), 0, marginSize + (lineSize + marginSize) * (1 + fileCount * 2))
		loadUI.Parent = game:GetService("CoreGui")
	else
		modal = false
	end

end

function importPose(keyframe, pose)
	item = partListByName[pose.Name]
	if (item ~= nil) then
		LocalPose = initializePose(keyframe, item.Item, pose, true)
		if (LocalPose ~= nil) then
			if (item.OriginC1 ~= nil) then
				LocalPose.CFrame = item.OriginC1*pose.CFrame:inverse()*item.OriginC1:inverse()
			else
				LocalPose.CFrame = pose.CFrame
			end
			
			-- Easing Style Importing
			LocalPose.EasingStyle = pose.EasingStyle
			LocalPose.EasingDirection = pose.EasingDirection
			LocalPose.updateColor()
			
			if (pose.Parent:IsA('Pose')) and (pose.Weight > 0) then
				importPartInclude[pose.Name] = true
			end
		end
	end

	for id, childPose in pairs(pose:GetChildren()) do
		importPose(keyframe, childPose)
	end
end

--AbstractAlex rewrite of importPose
function loadPose(keyframe, pose)
	local item = partListByName[pose.Name]
	if item ~= nil and pose.Weight > 0 then
		local LocalPose = initializePose(keyframe, item.Item, pose, true)
		if (LocalPose ~= nil) then
			if (item.OriginC1 ~= nil) then
				LocalPose.CFrame = item.OriginC1*pose.CFrame:inverse()*item.OriginC1:inverse()
			else
				LocalPose.CFrame = pose.CFrame
			end
			
			--Easing Style Importing
			LocalPose.EasingStyle = pose.EasingStyle
			LocalPose.EasingDirection = pose.EasingDirection
			LocalPose.updateColor()
			
			if (pose.Parent:IsA('Pose')) and (pose.Weight > 0) then
				importPartInclude[pose.Name] = true
			end
		end
	end

	for id, childPose in pairs(pose:GetChildren()) do
		loadPose(keyframe, childPose)
	end
end

importPartInclude = {} --What is this? Todo: Remove this and see if anything breaks. It's declared in loadKeyframeSequence

function loadImportAnim(animId)
	---------------------------------
	-------------NEW-----------------
	---------------------------------
	local isNumber = type(animId) == "number"
	local isUserdata = type(animId) == "userdata"
	
	if (isNumber and animId > 0) or isUserdata then
		doNotUpdateCursor = true
		resetKeyframes()
		importPartInclude = {}

		local kfs
		if isNumber then
			local kfsp = game:GetService('KeyframeSequenceProvider')
			kfs = kfsp:GetKeyframeSequenceById(animId, false) -- Test 2
		else
			kfs = animId
		end	
		loadKeyframeSequence(kfs)
	end
		
	---------------------------------
	-------------OLD-----------------
	---------------------------------
	--[[
	local isNumber = type(animId) == "number"
	local isUserdata = type(animId) == "userdata"
	
	if (isNumber and animId > 0) or isUserdata then
		doNotUpdateCursor = true
		resetKeyframes()
		importPartInclude = {}

		local kfs
		if isNumber then
			local kfsp = game:GetService('KeyframeSequenceProvider')
			kfs = kfsp:GetKeyframeSequenceById(animId, false) -- Test 2
		else
			kfs = animId
		end
		
		--update the animation length
		animationLength = 0
		for _, keyframe in pairs(kfs:GetChildren()) do
			if keyframe.Time > animationLength then
				animationLength = keyframe.Time
			end
		end
		
		--update the framerate so that the keyframes are imported properly
		updateAnimationFramerate()
		updateTimeLabels()
		
		--import the poses
		local LocalKeyframe = nil
		for _, keyframe in pairs(kfs:GetChildren()) do
			--print("\nImporting keyframe "..keyframe.Name.."["..tostring(keyframe.Time).."]")
			LocalKeyframe = createKeyframe(keyframe.Time, false)
			LocalKeyframe.Name = keyframe.Name
			for __, pose in pairs(keyframe:GetChildren()) do
				importPose(LocalKeyframe, pose)
			end
			local countPoses = function()
				local c = 0
				for i, v in pairs(LocalKeyframe.Poses) do
					c = c + 1
				end
				return c
			end
			
		end

		-- cull duplication poses
		
		for time, keyframe in spairs(keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
			if (time > 0) then
				for part, pose in pairs(keyframe.Poses) do
					local previousPose = getClosestPose(time - animationFramerate, part)
					local nextPose = getClosestNextPose(time + animationFramerate, part)
					
					local previousStyle = Enum.PoseEasingStyle.Linear
					local previousDirection = Enum.PoseEasingDirection.Out
					
					local myStyle = pose.EasingStyle
					local myDirection = pose.EasingDirection
					
					local nextStyle = Enum.PoseEasingStyle.Linear
					local nextDirection = Enum.PoseEasingDirection.Out
					
					if nextPose then
						nextStyle = nextPose.EasingStyle
						nextDirection = nextPose.EasingDirection
					end
					if previousPose then
						previousStyle = previousPose.EasingStyle
						previousDirection = previousPose.EasingDirection
					end
					
					local easingDifferent = false
					if previousPose then
						if previousStyle ~= myStyle or previousDirection ~= myDirection then
							easingDifferent = true
						end
					end
					if nextPose then
						if nextStyle ~= myStyle or nextDirection ~= myDirection then
							easingDifferent = true
						end
					end
					

					if (previousPose ~= nil and previousPose.CFrame == pose.CFrame and (nextPose == nil or nextPose.CFrame == pose.CFrame)) and not easingDifferent then
						deletePose(keyframe, part)
					end
				end
			end
		end


		loopAnimation = kfs.Loop
		animationPriority = kfs.Priority.Name

		-- set proper keyframe locations
		for time, keyframe in spairs(keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
			--keyframe.UI.Position = UD(0, nameSize + marginSize + (time * timeScale), 0, -lineSize - marginSize)
			keyframe.setPos(time)
		end

		--cursorTime = 0
		if cursorTime > animationLength then
			cursorTime = 0
		end

		for partName, setting in pairs(partInclude) do
			if (importPartInclude[partName] ~= nil) then
				partInclude[partName] = true
			else
				partInclude[partName] = false
			end
		end

		doNotUpdateCursor = false

		updatePartInclude()
		updateCursorPosition()
		nudgeView()
		updateLoopButton()
		updatePriorityLabel()
		adjustKeyframes()
	end
	]]
end

--AbstractAlex Remade Loading Code
function loadKeyframeSequence(kfs)
	local keyframes = kfs:GetChildren()
	
	animationLength = 0
	for i, v in pairs(keyframes) do
		if v.Time > animationLength then
			animationLength = v.Time
		end
	end
	
	--update the framerate so that the keyframes are imported properly
	updateAnimationFramerate()
	updateTimeLabels()		
	
	--import the poses
	local LocalKeyframe = nil
	for _, keyframe in pairs(keyframes) do
		--print("\nImporting keyframe "..keyframe.Name.."["..tostring(keyframe.Time).."]")
		LocalKeyframe = createKeyframe(keyframe.Time, false)
		LocalKeyframe.Name = keyframe.Name
		for __, pose in pairs(keyframe:GetChildren()) do
			loadPose(LocalKeyframe, pose)
		end
	end
	
	loopAnimation = kfs.Loop
	animationPriority = kfs.Priority.Name

	-- set proper keyframe locations
	for time, keyframe in spairs(keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
		--keyframe.UI.Position = UD(0, nameSize + marginSize + (time * timeScale), 0, -lineSize - marginSize)
		keyframe.setPos(time)
	end

	--cursorTime = 0
	if cursorTime > animationLength then
		cursorTime = 0
	end

	for partName, setting in pairs(partInclude) do
		if (importPartInclude[partName] ~= nil) then
			partInclude[partName] = true
		else
			partInclude[partName] = false
		end
	end

	doNotUpdateCursor = false

	updatePartInclude()
	updateCursorPosition()
	nudgeView()
	updateLoopButton()
	updatePriorityLabel()
	adjustKeyframes()
end


function updatePriorityLabel()
	if (animationPriority == nil) then
		animationPriority = "Core"
	end
	timelineUI.RootFrame.PriorityDisplay.Text = animationPriority
end

function updateLoopButton()
	if (loopAnimation) then
		timelineUI.RootFrame.LoopButton.BackgroundColor3 = buttonOnColor
	else
		timelineUI.RootFrame.LoopButton.BackgroundColor3 = buttonOffColor
	end
end

animationLabelsList = {}

function updateTimeLabels()
	-- delete existing labels
	for _, label in pairs(animationLabelsList) do
		label.Parent = nil
	end
	animationLabelsList = {}

	timelineLength = timelineUI.RootFrame.KeyframeContainer.CanvasSize.X.Offset
	minTickSeparation = 50
	tickSpacing = 0
	tickSeparation = 0
	local tickScale = 0

	while tickSeparation < minTickSeparation do
		tickScale = tickScale + 1
		ticks = math.floor(animationLength / (animationFramerate * tickScale))
		tickSeparation = timelineLength / ticks
		tickSpacing = animationFramerate * tickScale
	end

	timeScale =  timelineLength / animationLength
	
	local totalTickSpace = (nameSize + marginSize + (ticks * tickSpacing * timeScale) ) / timelineUI.RootFrame.AbsoluteSize.X
	if totalTickSpace > 0.97 then
		ticks = ticks - 1
	end
	
	local numberOfTicks = math.floor(animationLength / tickIncrements)
	local pNumberOfTicks = animationLength / tickIncrements -- Precise
	
	for tickNum = 0, numberOfTicks do		
		--local tickTime = math.floor((animationLength * (tickNum / numberOfTicks))*10)/10
		local tickTime = tickNum * tickIncrements
		--print(tickTime)
		local label = Make('TextLabel', {
			Parent = timelineUI.RootFrame.KeyframeContainer.TimeListFrame,
			Name = 'Tick' .. tickNum,
			Font = 'ArialBold',
			FontSize = 'Size10',
			TextColor3 = GuiSettings.TextColor,
			ZIndex = 4,
			Active = false,
			--Position = UD(0, nameSize + marginSize + (tickNum * tickSpacing * timeScale), 0, lineSize +  marginSize),
			--Timeline 2.0
			Position = UD((tickNum/pNumberOfTicks), 0, 0, 0), 
			Size = UD(0, 10, 0, lineSize),
			BackgroundTransparency = 1,
			--Text = string.format("%.2f", tickNum * tickSpacing),
			--Timeline 2.0
			Text = tostring(tickTime),
			TextXAlignment = Enum.TextXAlignment.Right,
			Make('TextLabel',{
				Name = 'TickIndicator',
				Size = UD(0,2,1000,0),
				Text = "",
				BackgroundColor3 = Color3.new(1,1,1),
				BackgroundTransparency = 0.9,
				BorderSizePixel = 0,
			})
		})
		animationLabelsList[tickNum] = label
	end

	-- end tick
	local endMarker = Make('TextLabel', {
		Parent = timelineUI.RootFrame.KeyframeContainer.TimeListFrame,
		Name = 'TickEnd',
		Font = 'ArialBold',
		FontSize = 'Size10',
		TextColor3 = GuiSettings.TextColor,
		Position = UD(1, -5, 0, 0),
		Size = UD(0, 10, 0, lineSize),
		BackgroundTransparency = 1,
		ZIndex = 5,
		Active = false,
		Text = string.format("%.2f", animationLength),
		TextXAlignment = Enum.TextXAlignment.Right,
			Make('TextLabel',{
				Name = 'TickIndicator',
				Size = UD(0,2,1000,0),
				Text = "",
				BackgroundColor3 = Color3.new(1,1,1),
				BackgroundTransparency = 0.9,
				BorderSizePixel = 0,
			})
	})
	animationLabelsList['TickEnd'] = endMarker


	registerOn(mouseOnLClick, endMarker, function(x, y)
		--[[if (not modal and cursorTime ~= animationLength) then
			timeChangeUI.RootFrame.SaveNameFrame.AnimLengthBox.Text = animationLength
			timeChangeUI.Parent = game:GetService("CoreGui")
			modal = true
		end]]
		return true
	end)
end

function changeKeyframePosition(keyframe, time)
	time = keyframeTimeClamp(time)
	
	if (keyframeList[time] == nil) then
		keyframeList[keyframe.Time] = nil
		keyframe.Time = time
		--keyframe.UI.Position = UD(0, nameSize + marginSize + (time * timeScale), 0, -lineSize - marginSize)
		keyframe.setPos(time)
		keyframeList[time] = keyframe
		
		for _, pose in pairs(keyframe.Poses) do
			pose.Time = time
		end
	end
end

function addTimeAtCursor(addedTime)
	if (animationLength + addedTime > 30) then return end
	if (addedTime <= 0) then return end
	
	animationLength = animationLength + addedTime
	timelineLength = timelineUI.RootFrame.KeyframeContainer.CanvasSize.X.Offset
	timeScale =  timelineLength / animationLength
	updateAnimationFramerate()
	
	local currentKeyframes = {}
	for timePosition, keyframe in spairs(keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
		currentKeyframes[keyframe.Time] = keyframe
	end
	keyframeList = {}
	
	for timePosition, keyframe in spairs(currentKeyframes, function(t, a, b) return t[a].Time < t[b].Time end) do
		local newTime
		if keyframe.Time > cursorTime then
			newTime = keyframe.Time + addedTime
		else
			newTime = keyframe.Time
		end
		
		--changeKeyframePosition(keyframe, newTime)
		keyframe.setPos(newTime)
	end
	setAnimationLength(animationLength)
	updateTimeLabels()
	updateCursorPosition()
end

function addTimeAtCursorNew(addedTime)
	if tonumber(addedTime) == nil or tonumber(addedTime) < 0 or animationLength + addedTime > 30 then
		return
	end
	--Add animation length
	animationLength = animationLength + addedTime
	timelineLength = timelineUI.RootFrame.KeyframeContainer.CanvasSize.X.Offset
	timeScale =  timelineLength / animationLength
	updateAnimationFramerate()
	--First step. Copy all of these keyframes and wipe the list.
	local keyframeListCache = {}
	for timePosition, keyframe in pairs(keyframeList) do
		keyframeListCache[timePosition] = keyframe
	end
	--Second step. Wipe the list, and adjust times.
	keyframeList = {}
	for timePosition, keyframe in pairs(keyframeListCache) do
		if keyframe.Time > cursorTime then
			keyframe.Time = keyframe.Time + addedTime
			for _, pose in pairs(keyframe.Poses) do
				pose.Time = keyframe.Time
			end
		end
	end
	--Third step.Repopulate original keyframeList.
	for ignore, keyframe in pairs(keyframeListCache) do
		keyframeList[keyframe.Time] = keyframe
	end
	--Update the view
	setAnimationLength(animationLength)
	updateTimeLabels()
	updateCursorPosition()
end

function removeTimeAtCursorNew(addedTime)
	if tonumber(addedTime) == nil or tonumber(addedTime) < 0 or animationLength - addedTime < 0.1 then
		return
	end
	--Add animation length
	animationLength = animationLength - addedTime
	timelineLength = timelineUI.RootFrame.KeyframeContainer.CanvasSize.X.Offset
	timeScale =  timelineLength / animationLength
	updateAnimationFramerate()
	--First step. Copy all of these keyframes and wipe the list.
	local keyframeListCache = {}
	for timePosition, keyframe in pairs(keyframeList) do
		--If in the "erase zone", don't store it
		if timePosition > cursorTime and timePosition < cursorTime + addedTime then
			--Ignore it. It's in the killzone.
		else
			keyframeListCache[timePosition] = keyframe
		end
	end
	--Second step. Wipe the list, and adjust times.
	keyframeList = {}
	for timePosition, keyframe in pairs(keyframeListCache) do
		if keyframe.Time > cursorTime then
			keyframe.Time = keyframe.Time - addedTime
		end
	end
	--Third step.Repopulate original keyframeList.
	for ignore, keyframe in pairs(keyframeListCache) do
		keyframeList[keyframe.Time] = keyframe
		keyframe.setPos(keyframe.Time)
	end
	--Update the view
	setAnimationLength(animationLength)
	updateTimeLabels()
	updateCursorPosition()
end

function removeTimeAtCursor(removedTime)
	if (animationLength - removedTime < 0.1) then return end
	if (cursorTime + removedTime > animationLength) then
		removedTime = animationLength - cursorTime
	end
	if (removedTime <= 0) then return end
	
	local currentKeyframes = {}
	local removedKeyframes = {}
	local willRemoveKeyframes = false
	for timePosition, keyframe in spairs(keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
		if keyframe.Time > cursorTime and keyframe.Time < cursorTime + removedTime then
			removedKeyframes[keyframe.Time] = keyframe
			willRemoveKeyframes = true
		else
			currentKeyframes[keyframe.Time] = keyframe
		end
	end
	
	if willRemoveKeyframes then
		if not showConfirmationDialog("This will remove keyframes.\nAre you sure?") then
			return
		end
	end
	
	for timePosition, removedKeyframe in pairs(removedKeyframes) do
		deleteKeyframe(removedKeyframe.Time)
	end
	
	animationLength = animationLength - removedTime
	updateAnimationFramerate()
	updateTimeLabels()
	updateCursorPosition()
	keyframeList = {}
	
	for timePosition, keyframe in spairs(currentKeyframes, function(t, a, b) return t[a].Time < t[b].Time end) do
		local newTime
		if keyframe.Time > cursorTime then
			newTime = keyframe.Time - removedTime
		else
			newTime = keyframe.Time
		end
		
		changeKeyframePosition(keyframe, newTime)
	end
	setAnimationLength(animationLength)
end

function updateAnimationFramerate()
	local framesPerLength = 40
	local framesPerSecond = 50 / animationLength
	animationFramerate = 1 / framesPerSecond
end

local function createTimelineUI(rootNode)

	if (saveUI == nil) then
		saveUI = Make('ScreenGui', 
		{	
			Name = "SaveUI",
			Make('Frame', {
				Parent = timelineUI,
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0.5, -200, 0.5, 0),
				Size = UD(0, 400, 0, marginSize + (lineSize + marginSize) * 5),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Save As:",
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Make('Frame', {
					Parent = timelineUI,
					Name = 'SaveNameFrame',
					Style = 'Custom',
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 1),
					Size = UD(0.9, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 100/255),
					BackgroundTransparency = 0.3,
					Make('TextBox', {
						Name = 'SaveNameBox',
						Font = 'ArialBold',
						FontSize = 'Size14',
						TextColor3 = GuiSettings.TextColor,
						Position = UD(0.05, 0, 0, 0),
						Size = UD(0.9, 0, 1, 0),
						BackgroundTransparency = 1,
						Text = "<name>",
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),

				Make('TextButton', {
					Name = 'OKButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "OK",
				}),
				Make('TextButton', {
					Name = 'CancelButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.55, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Cancel",
				}),

			}),
		})


		saveUI.RootFrame.OKButton.MouseButton1Click:connect(function()
			saveUI.Parent = nil
			saveCurrentAnimation(saveUI.RootFrame.SaveNameFrame.SaveNameBox.Text)
			modal = false
		end)

		saveUI.RootFrame.CancelButton.MouseButton1Click:connect(function()
			saveUI.Parent = nil
			modal = false
		end)

	end



	if (timeChangeUI == nil) then
		timeChangeUI = Make('ScreenGui', 
		{	
			Name = "TimeChangeUI",
			Make('Frame', {
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0.5, -200, 0.5, 0),
				Size = UD(0, 400, 0, marginSize + (lineSize + marginSize) * 5),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Animation Length:",
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Make('Frame', {
					Parent = timelineUI,
					Name = 'SaveNameFrame',
					Style = 'Custom',
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 1),
					Size = UD(0.9, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 100/255),
					BackgroundTransparency = 0.3,
					Make('TextBox', {
						Name = 'AnimLengthBox',
						Font = 'ArialBold',
						FontSize = 'Size14',
						TextColor3 = GuiSettings.TextColor,
						Position = UD(0.05, 0, 0, 0),
						Size = UD(0.9, 0, 1, 0),
						BackgroundTransparency = 1,
						Text = animationLength,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),

				Make('TextButton', {
					Name = 'OKButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "OK",
				}),
				Make('TextButton', {
					Name = 'CancelButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.55, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Cancel",
				}),

			}),
		})


		timeChangeUI.RootFrame.OKButton.MouseButton1Click:connect(function()
			timeChangeUI.Parent = nil
			setAnimationLength(tonumber(timeChangeUI.RootFrame.SaveNameFrame.AnimLengthBox.Text))
			modal = false
		end)

		timeChangeUI.RootFrame.CancelButton.MouseButton1Click:connect(function()
			timeChangeUI.Parent = nil
			modal = false
		end)

	end
	
	
	if (snapChangeUI == nil) then
		snapChangeUI = Make('ScreenGui', 
		{	
			Name = "SnapChangeUI",
			Make('Frame', {
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0.5, -200, 0.5, 0),
				Size = UD(0, 400, 0, marginSize + (lineSize + marginSize) * 5),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Snap At Increment (Min 0.02):",
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Make('Frame', {
					Parent = timelineUI,
					Name = 'SaveNameFrame',
					Style = 'Custom',
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 1),
					Size = UD(0.9, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 100/255),
					BackgroundTransparency = 0.3,
					Make('TextBox', {
						Name = 'SnapIncrementBox',
						Font = 'ArialBold',
						FontSize = 'Size14',
						TextColor3 = GuiSettings.TextColor,
						Position = UD(0.05, 0, 0, 0),
						Size = UD(0.9, 0, 1, 0),
						BackgroundTransparency = 1,
						Text = animationLength,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),

				Make('TextButton', {
					Name = 'OKButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "OK",
				}),
				Make('TextButton', {
					Name = 'CancelButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.55, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Cancel",
				}),

			}),
		})
		
		snapChangeUI.RootFrame.OKButton.MouseButton1Click:connect(function()
			local newSnap = tonumber(snapChangeUI.RootFrame.SaveNameFrame.SnapIncrementBox.Text)
			if newSnap ~= nil and newSnap >= 0.02 then
				dragSnapIncrements = newSnap
			end
			snapChangeUI.Parent = nil
			modal = false
		end)
		
		snapChangeUI.RootFrame.CancelButton.MouseButton1Click:connect(function()
			snapChangeUI.Parent = nil
			modal = false
		end)
	end
	
if (angleChangeUI == nil) then
		angleChangeUI = Make('ScreenGui', 
		{	
			Name = "AngleChangeUI",
			Make('Frame', {
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0.5, -200, 0.5, 0),
				Size = UD(0, 400, 0, marginSize + (lineSize + marginSize) * 5),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Interval:",
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Make('Frame', {
					Parent = timelineUI,
					Name = 'SaveNameFrame',
					Style = 'Custom',
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 1),
					Size = UD(0.9, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 100/255),
					BackgroundTransparency = 0.3,
					Make('TextBox', {
						Name = 'AngleIncrementBox',
						Font = 'ArialBold',
						FontSize = 'Size14',
						TextColor3 = GuiSettings.TextColor,
						Position = UD(0.05, 0, 0, 0),
						Size = UD(0.9, 0, 1, 0),
						BackgroundTransparency = 1,
						Text = animationLength,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),

				Make('TextButton', {
					Name = 'OKButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "OK",
				}),
				Make('TextButton', {
					Name = 'CancelButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.55, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Cancel",
				}),

			}),
		})
		
		angleChangeUI.RootFrame.OKButton.MouseButton1Click:connect(function()
			local value = tonumber(angleChangeUI.RootFrame.SaveNameFrame.AngleIncrementBox.Text)
			if value ~= nil then
				if rotateMode then
					rotateStep = value
				else
					moveStep = value
				end
			end
			updateStepDisplay()
			angleChangeUI.Parent = nil
			modal = false
		end)
		
		angleChangeUI.RootFrame.CancelButton.MouseButton1Click:connect(function()
			angleChangeUI.Parent = nil
			modal = false
		end)
	end
	
	if (tickChangeUI == nil) then
		tickChangeUI = Make('ScreenGui', 
		{	
			Name = "TickChangeUI",
			Make('Frame', {
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0.5, -200, 0.5, 0),
				Size = UD(0, 400, 0, marginSize + (lineSize + marginSize) * 5),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.5,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Timeline Increment (Min 0.02):",
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Make('Frame', {
					Parent = timelineUI,
					Name = 'SaveNameFrame',
					Style = 'Custom',
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 1),
					Size = UD(0.9, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 100/255),
					BackgroundTransparency = 0.3,
					Make('TextBox', {
						Name = 'TickIncrementBox',
						Font = 'ArialBold',
						FontSize = 'Size14',
						TextColor3 = GuiSettings.TextColor,
						Position = UD(0.05, 0, 0, 0),
						Size = UD(0.9, 0, 1, 0),
						BackgroundTransparency = 1,
						Text = animationLength,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),

				Make('TextButton', {
					Name = 'OKButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "OK",
				}),
				Make('TextButton', {
					Name = 'CancelButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.55, 0, 0, marginSize + (lineSize + marginSize) * 3),
					Size = UD(0.4, 0, 0, lineSize * 2),
					BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Cancel",
				}),

			}),
		})
		
		tickChangeUI.RootFrame.OKButton.MouseButton1Click:connect(function()
			local newSnap = tonumber(tickChangeUI.RootFrame.SaveNameFrame.TickIncrementBox.Text)
			if newSnap ~= nil and newSnap >= 0.02 then
				tickIncrements = newSnap
			end
			tickChangeUI.Parent = nil
			modal = false
			setAnimationLength(animationLength)
		end)
		
		tickChangeUI.RootFrame.CancelButton.MouseButton1Click:connect(function()
			tickChangeUI.Parent = nil
			modal = false
		end)
	end

	if (menuUI == nil) then
		menuUI = Make('ScreenGui', 
		{
			Name = "MenuUI",
			Make('Frame', {
				Parent = timelineUI,
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0, lineSize, 0, lineSize),
				Size = UD(0, 100, 0, (lineSize + (2*marginSize)) + 10 * (buttonSize + marginSize)),
				BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
				BackgroundTransparency = 0.3,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Menu",
					TextXAlignment = Enum.TextXAlignment.Center,
				}),
				Make('TextButton', {
					Name = 'PlayButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, lineSize + (2*marginSize)),
					Size = UD(0.9, 0, 0, buttonSize),
					BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Play",
				}),
				Make('TextButton', {
					Name = 'SaveButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, (lineSize + (2*marginSize)) + (buttonSize + marginSize)),
					Size = UD(0.9, 0, 0, buttonSize),
					BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Save",
				}),
				Make('TextButton', {
					Name = 'LoadButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, (lineSize + (2*marginSize)) + 2 * (buttonSize + marginSize)),
					Size = UD(0.9, 0, 0, buttonSize),
					BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Load",
				}),
				Make('TextButton', {
					Name = 'ImportButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, (lineSize + (2*marginSize)) + 3 * (buttonSize + marginSize)),
					Size = UD(0.9, 0, 0, buttonSize),
					BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Import",
				}),
				Make('TextButton', {
					Name = 'ExportButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, (lineSize + (2*marginSize)) + 4 * (buttonSize + marginSize)),
					Size = UD(0.9, 0, 0, buttonSize),
					BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Export",
				}),
				Make('TextButton', {
					Name = 'ResetButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, (lineSize + (2*marginSize)) + 5 * (buttonSize + marginSize)),
					Size = UD(0.9, 0, 0, buttonSize),
					BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Reset",
				}),
				Make('TextButton', {
					Name = 'DebugButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, (lineSize + (2*marginSize)) + 6 * (buttonSize + marginSize)),
					Size = UD(0.9, 0, 0, buttonSize),
					BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Debug",
				}),
				Make("TextButton", {
					Name = "AddTimeButton",
					Font = "ArialBold",
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, (lineSize + (2 * marginSize) ) + 7 * (buttonSize + marginSize) ),
					Size = UD(0.9, 0, 0, buttonSize),
					BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
					BackgroundTransparency = 0,
					Text = "+ Time",
				}),
				Make("TextButton", {
					Name = "RemoveTimeButton",
					Font = "ArialBold",
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, (lineSize + (2 * marginSize) ) + 8 * (buttonSize + marginSize) ),
					Size = UD(0.9, 0, 0, buttonSize),
					BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
					BackgroundTransparency = 0,
					Text = "- Time",
				}),
				Make("TextButton", {
					Name = "ToggleInterpolationButton",
					Font = "ArialBold",
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, (lineSize + (2 * marginSize) ) + 9 * (buttonSize + marginSize) ),
					Size = UD(0.9, 0, 0, buttonSize),
					BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Lerp (on)",
				})
			}),
		})
	end
	--TimelineUIStart
	-- creating test GUI
	if (timelineUI == nil) then

		lineCount = 0

		timelineUI = Make('ScreenGui', 
		{
			Name = "TimelineUI",
			Make('TextButton',{
				Name = "Resize",
				Size = UDim2.new(0, 35, 0, 15),
				Position = UDim2.new(1, -35, 0, lineSize * 16),
				Text = "==",
				TextColor3 = Color3.new(0.8,0.8,0.8),
				BackgroundColor3 = Color3.new(98/255, 98/255, 98/255),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Draggable = true,
			}),
			Make('Frame', {
				Parent = timelineUI,
				Name = 'RootFrame',
				Position = UD(0, 0, 0, 0),
				Size = UD(1, 0, 0, lineSize * 16),
				BackgroundColor3 = Color3.new(98/255, 98/255, 98/255),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Make("ScrollingFrame", {
					Name = "ScrollingFrame",
					Position = UD(0, 0, 0, (lineSize + marginSize)),
					Size = UD(0, nameSize + marginSize, 1, -headerSize + 30),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ScrollBarThickness = 0,
				}),
				--Timeline Scrollingframe
				Make("ScrollingFrame",{
					Name = 'KeyframeContainer',
					Position = UD(0, lineSize + (marginSize*2) + nameSize - 15, 0, (lineSize + marginSize)),
					Size = UD(1, -(nameSize + marginSize) - 35, 1, -headerSize + 30),
					BackgroundColor3 = Color3.new(21/255, 21/255, 21/255),
					BackgroundTransparency = 0.5,
					BorderSizePixel = 0,
					CanvasSize = UD(0, 2000, 1, 0),
					ScrollBarThickness = 0,
					Make('Frame', {
						Name = 'TimeListFrame',
						Style = 'Custom',
						Position = UD(0, 0, 0, 0),
						--Size = UD(1, -(marginSize + nameSize + timelinemarginSize), 0, lineSize),
						--Timeline 2.0
						Size = UD(1, 0, 0, lineSize),
						BackgroundColor3 = Color3.new(98/255, 98/255, 98/255),
						BackgroundTransparency = 0.1,
						BorderSizePixel = 0,
						ZIndex = 3,
					}),
					Make('TextButton', {
						Name = 'TimelineFrame',
						Style = 'Custom',
						Text = "",
						Active = false,
						AutoButtonColor = false,
						Position = UD(0, 0, 0, (lineSize + marginSize)),
						--Size = UD(1, -(marginSize + nameSize + timelinemarginSize), 0, lineSize),
						--Timeline 2.0
						Size = UD(1, 0, 0, lineSize),
						BackgroundColor3 = Color3.new(200/255, 200/255, 200/255),
						BackgroundTransparency = 0.1,
					}),
					--Create Cursor
					Make('Frame', {
						Name = 'Cursor',
						Style = 'Custom',
						Position = UD(0, nameSize + marginSize - (lineSize / 2) , 0, 1 * (lineSize + marginSize)),
						Size = UD(0, lineSize + 2, 0, lineSize + 2),
						BackgroundColor3 = Color3.new(250/255, 50/255, 50/255),
						BackgroundTransparency = 0,
						BorderColor3 = Color3.new(250/255, 50/255, 50/255),
						ZIndex = 4,
						Make('Frame', {
							Name = 'CursorLine',
							Style = 'Custom',
							Position = UD(0, (lineSize / 2), 0, 0),
							Size = UD(0, 2, 1000, 0),
							BackgroundColor3 = Color3.new(250/255, 50/255, 50/255),
							BackgroundTransparency = 0,
							BorderSizePixel = 0,
							ZIndex = 0,
						}),
					}),	
				}),
				--
				--Vertical scroll proxy
				Make("ScrollingFrame", {
					Name = "VerticalProxy",
					Position = UD(1, -40, 0, (lineSize + marginSize)),
					Size = UD(0, 15, 1, -headerSize + 30),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ScrollBarThickness = 10,
				}),
				--Horizontal scroll proxy
				Make("ScrollingFrame", {
					Name = "HorizontalProxy",
					Position = UD(0, lineSize + (marginSize*2) + nameSize - 15, 1, -headerSize + 35),
					Size = UD(1, -(nameSize + marginSize) - 35, 0, 10),
					BackgroundTransparency = 1,
					BorderSizePixel = 0.5,
					ScrollBarThickness = 10,
				}),
				-----------------------
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.25, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Timeline",
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Make('TextButton', {
					Name = 'MoreButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0, lineSize, 0, lineSize),
					Size = UD(0, lineSize * 1.1, 
					          0, lineSize * 1.1),
					BackgroundColor3 = Color3.new(50/255, 50/255, 50/255),
					BackgroundTransparency = 0,
					Text = "+",
				}),
				Make('ImageButton', {
					Name = 'SettingsButton',
					Position = UD(0, lineSize * 3, 0, lineSize),
					Size = UD(0, lineSize * 1.1, 
					          0, lineSize * 1.1),
					BackgroundColor3 = Color3.new(50/255, 50/255, 50/255),
					BackgroundTransparency = 0,
					Image = "rbxassetid://299306324",
				}),
				Make('TextButton', {
					Name = 'CloseButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(1, -20, 0, 20),
					Size = UD(0, 15, 
					          0, 15),
					BackgroundColor3 = Color3.new(168/255, 34/255, 34/255),
					BackgroundTransparency = 0,
					BorderSizePixel = 0,
					Text = "X",
					ZIndex = 5
				}),
				Make('TextButton', {
					Name = 'TimelineZoomIn',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(1, -32, 1, -26),
					Size = UD(0, 15,
					          0, 18),
					BackgroundColor3 = Color3.new(50/255, 50/255, 50/255),
					BackgroundTransparency = 0,
					BorderSizePixel = 0.5,
					Text = "+",
				}),
				Make('TextButton', {
					Name = 'TimelineZoomOut',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(1, -17, 1, -26),
					Size = UD(0, 14, 
					          0, 18),
					BackgroundColor3 = Color3.new(50/255, 50/255, 50/255),
					BackgroundTransparency = 0.5,
					BorderSizePixel = 0,
					Text = "-",
				}),
				--[[Make('TextLabel', {
					Name = 'PriorityLabel',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.6, 0, 0, 1),
					Size = UD(0.1, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Priority:",
					TextXAlignment = Enum.TextXAlignment.Left,
				}),]]
				Make('TextLabel', {
					Name = 'PriorityDisplay',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.6, 55, 0, 1),
					Size = UD(0, 100, 0, lineSize),
					BackgroundTransparency = 0.5,
					Text = "Action",
					TextXAlignment = Enum.TextXAlignment.Center,
					BackgroundColor3 = dropDownColor,
					Visible = false,
				}),
				Make('TextLabel', {
					Name = 'LoopLabel',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.8, 0, 0, 1),
					Size = UD(0.1, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Loop:",
					TextXAlignment = Enum.TextXAlignment.Left,
					Visible = false,
				}),
				Make('TextButton', {
					Name = 'LoopButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.8, 45, 0, 0),
					Size = UD(0, lineSize * 1.1, 
					          0, lineSize * 1.1),
					BackgroundColor3 = Color3.new(50/255, 50/255, 50/255),
					BackgroundTransparency = 0,
					Text = "",
					Visible = false,
				}),	
			}),
		})
		
		--for some reason, the scrolling frame captures input
		-- timelineUI.RootFrame.ScrollingFrame.InputEnded:connect(function(input)
			-- if input.UserInputType == Enum.UserInputType.MouseButton1 then
				-- mouseCallbackCheck(mouseOnLUp)
			-- end
		-- end)

		-- adding labels
		--timelineUI.RootFrame.KeyframeContainer.CanvasSize = UDim2.new(timelineUI.RootFrame.KeyframeContainer.AbsoluteSize.Y, 0, 1, 0)
		timelineUI.RootFrame.MoreButton.Visible = false
		timelineUI.RootFrame.SettingsButton.Visible = false
		timelineUI.Parent = game:GetService("CoreGui")
		timelineUI.RootFrame.KeyframeContainer.CanvasSize = UDim2.new(0, timelineUI.RootFrame.KeyframeContainer.AbsoluteSize.X, 1, 0)
		menuManager.RegisterTooltip(timelineUI.RootFrame.TimelineZoomIn, "Zoom in to the timeline")
		menuManager.RegisterTooltip(timelineUI.RootFrame.TimelineZoomOut, "Zoom out of the timeline")
		wait(0.1)
		updateTimeLabels()
		-- M E N U 
		-- P L A Y
		menuUI.RootFrame.PlayButton.MouseButton1Click:connect(function()
			closePopupMenu()
			playCurrentAnimation()
		end)

		-- S A V E
		menuUI.RootFrame.SaveButton.MouseButton1Click:connect(function()
			closePopupMenu()
			PromptSave()
		end)

		-- L O A D
		menuUI.RootFrame.LoadButton.MouseButton1Click:connect(function()
			closePopupMenu()
			PromptLoad()
			--showLoadGame()
		end)

		-- I M P O R T 
		menuUI.RootFrame.ImportButton.MouseButton1Click:connect(function()
			closePopupMenu()
			modal = true
--			showImportAnim()
			showImportAnimText()
			modal = false
		end)

		-- E X P O R T
		menuUI.RootFrame.ExportButton.MouseButton1Click:connect(function()
			closePopupMenu()
			modal = true
			showExportAnim()
		end)

		-- R E S E T 
		menuUI.RootFrame.ResetButton.MouseButton1Click:connect(function()
			closePopupMenu()
			resetAnimation()
		end)

		-- D E B U G 
		menuUI.RootFrame.DebugButton.MouseButton1Click:connect(function()
--			listEvent(mouseOnLClick)
			for time, keyframe in spairs(keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
				print("keyframe time " .. time .. " poses " .. tablelength(keyframe.Poses))
			end
		end)
		
		--add time
		menuUI.RootFrame.AddTimeButton.MouseButton1Click:connect(function()
			closePopupMenu()
			
			local timeAdded = tonumber(showTextExtryDialog("Amount of time to add?", "0.1") )
			if timeAdded and timeAdded > 0 then
				addTimeAtCursor(timeAdded)
			end
			timelineLength = timelineUI.RootFrame.KeyframeContainer.CanvasSize.X.Offset
			timeScale =  timelineLength / animationLength
			
			updateCursorPosition()
			adjustKeyframes()

		end)
		
		--remove time
		menuUI.RootFrame.RemoveTimeButton.MouseButton1Click:connect(function()
			closePopupMenu()
			
			local timeRemoved = tonumber(showTextExtryDialog("Amount of time to remove?", "0.1") )
			if timeRemoved and timeRemoved > 0 then
				removeTimeAtCursor(timeRemoved)
			end
			timelineLength = timelineUI.RootFrame.KeyframeContainer.CanvasSize.X.Offset
			timeScale =  timelineLength / animationLength
			updateCursorPosition()
			adjustKeyframes()
		end)
		
		--lerp
		menuUI.RootFrame.ToggleInterpolationButton.MouseButton1Click:connect(function()
			closePopupMenu()
			toggleInEditorInterpolation()
		end)

		--zoom timeline
		timelineUI.RootFrame.TimelineZoomIn.MouseButton1Click:connect(function()
			local currentSize = timelineUI.RootFrame.KeyframeContainer.AbsoluteSize.X	
			local frameSize = timelineUI.RootFrame.KeyframeContainer.CanvasSize.X.Offset	
			local newSize = frameSize + 100	
			timelineUI.RootFrame.KeyframeContainer.CanvasSize = UD(0, newSize, 0, timelineUI.RootFrame.KeyframeContainer.CanvasSize.Y.Offset)		
			timelineUI.RootFrame.HorizontalProxy.CanvasSize = UD(0, newSize, 0, timelineUI.RootFrame.HorizontalProxy.CanvasSize.Y.Offset)		
			timelineLength = newSize
			timeScale =  timelineLength / animationLength
			adjustKeyframes()
			updateCursorPosition()
			--setAnimationLength(animationLength)
		end)
		
		timelineUI.RootFrame.TimelineZoomOut.MouseButton1Click:connect(function()
			local currentSize = timelineUI.RootFrame.KeyframeContainer.AbsoluteSize.X
			local frameSize = timelineUI.RootFrame.KeyframeContainer.CanvasSize.X.Offset
			local newSize = frameSize - 100
			if newSize < currentSize then
				newSize = currentSize
			end
			timelineUI.RootFrame.KeyframeContainer.CanvasSize = UD(0, newSize, 0, timelineUI.RootFrame.KeyframeContainer.CanvasSize.Y.Offset)
			timelineUI.RootFrame.HorizontalProxy.CanvasSize = UD(0, newSize, 0, timelineUI.RootFrame.HorizontalProxy.CanvasSize.Y.Offset)
			timelineLength = newSize
			timeScale =  timelineLength / animationLength
			adjustKeyframes()
			updateCursorPosition()
			--setAnimationLength(animationLength)
		end)
		
		timelineUI.Resize.Changed:connect(function()
			local obj = timelineUI:findFirstChild("Resize")
			if obj then
				local newSize = obj.Position.Y.Offset
				obj.Position = UDim2.new(1, -obj.Size.X.Offset, 0, newSize)
				timelineUI.RootFrame.Size = UDim2.new(1, 0, 0, newSize)
			end
		end)
		
		timelineUI.RootFrame.SettingsButton.MouseButton1Click:connect(function()
			loadOptionsMenu()
		end)
		
		function loadOptionsMenu()
			local mouse = plugin:GetMouse()
			displayOptionsMenu(mouse.X, mouse.Y)
			local mouse = plugin:GetMouse()
			local loopButton = loopAnimation == true and "Loop (true)" or "Loop (false)"
			local priorityType = "Priority: "..timelineUI.RootFrame.PriorityDisplay.Text
			local cursorText = preferences["TweenCursor"] == true and "Cursor Tween (true)" or "Cursor Tween (false)"
			local transparentToggle = preferences["TransparentSelect"] == true and "Select Invisible: yes" or "Select Invisible: no"
			local options = {"Change Length","Tick Interval","Snap Interval",loopButton, priorityType, cursorText, transparentToggle}
			
			if selection == nil then return end
			if (selection == "Change Length") then
				timeChangeUI.Parent = game:GetService("CoreGui")
				modal = true
			elseif selection == "Tick Interval" then
				tickChangeUI.Parent = game:GetService("CoreGui")
				modal = true
			elseif selection == "Snap Interval" then
				snapChangeUI.Parent = game:GetService("CoreGui")
				modal = true
			elseif selection == "Loop (false)" then
				loopAnimation = true
			elseif selection == "Loop (true)" then
				loopAnimation = false
			elseif selection == "Cursor Tween (true)" then
				preferences["TweenCursor"] = false
			elseif selection == "Cursor Tween (false)" then
				preferences["TweenCursor"] = true
			elseif string.find(selection, "Priority") then
				local mouse = plugin:GetMouse()
				spawn(function()
					local newPriority = displayDropDownMenu(timelineUI.RootFrame.PriorityDisplay, animationPriorityList, sx + 300, mouse.Y)
					if (newPriority ~= nil) then
						animationPriority = newPriority
						timelineUI.RootFrame.PriorityDisplay.Text = newPriority
					end	
					loadOptionsMenu(sx, sy)	
				end)
			elseif selection == "Select Invisible: yes" then
				preferences["TransparentSelect"] = false
			elseif selection == "Select Invisible: no" then
				preferences["TransparentSelect"] = true
			end			
			--loadOptionsMenu(sx, sy)
		end

		toggleInEditorInterpolation()
		toggleInEditorInterpolation()


		function closePopupMenu(x, y)
			menuUI.Parent = nil
			unregisterEvent(mouseOnLClick, mouseClickEater)
			unregisterEvent(mouseOnLClick, menuClearEvent)
			return true
		end

		timelineUI.RootFrame.MoreButton.MouseButton1Click:connect(function()
			if (not modal) then
				menuUI.Parent = game:GetService("CoreGui")
				mouseClickEater = registerOn(mouseOnLClick,menuUI.RootFrame, function(x, y)	return true	end)
				menuClearEvent = registerOn(mouseOnLClick, nil, closePopupMenu)		
			end
		end)

		timelineUI.RootFrame.CloseButton.MouseButton1Down:connect(function()
			if (not modal) then
				autoSave()
				--[[timelineUI.Parent = nil
				resetAnimation()
				clearAllEvents()
				if (MouseTargeterHalt ~= nil) then
					MouseTargeterHalt()
				end
				destroySelectionBoxes()]]
				exitPlugin()
				plugin:SetSetting("AnimEditor_TweenCursor", preferences["TweenCursor"])
				plugin:SetSetting("AnimEditor_AnimLength", animationLength)
				plugin:SetSetting("AnimEditor_SnapIncrement", dragSnapIncrements)
				plugin:SetSetting("AnimEditor_TickIncrement", tickIncrements)
				plugin:SetSetting("AnimEditor_TransparentSelect", preferences["TransparentSelect"])
				plugin:SetSetting("AnimEditor_Interpolation", preferences["Interpolation"])
				plugin:SetSetting("AnimEditor_Tooltips", preferences["Tooltips"])
			end
		end)

		--[[timelineUI.RootFrame.LoopButton.MouseButton1Click:connect(function()
			if (not modal) then
				loopAnimation = not loopAnimation
				updateLoopButton()
			end
		end)]]
		
		timelineUI.RootFrame.KeyframeContainer.TimelineFrame.MouseButton1Click:connect(function()
			selectedKeyframe = nil
		end)


		registerOn(mouseOnLClick, timelineUI.RootFrame.PriorityDisplay, function(x, y)
			if (not modal) then
				local mouse = plugin:GetMouse()
				local newPriority = displayDropDownMenu(timelineUI.RootFrame.PriorityDisplay, animationPriorityList, mouse.X, mouse.Y + 10)
				if (newPriority ~= nil) then
					animationPriority = newPriority
					timelineUI.RootFrame.PriorityDisplay.Text = newPriority
				end
			end
		end)

		-- hooking up clicks


		-- sliding keyframe cursor
		registerOn(mouseOnLClick, timelineUI.RootFrame.KeyframeContainer.TimelineFrame, function(x, y)
			keyframePositionShift(x, y)
		end)


		-- create or delete keyframe
		registerOn(mouseOnRClick, timelineUI.RootFrame.KeyframeContainer.TimelineFrame, function(x, y)
			return keyframeContextMenu(x, y, true)
		end)

		-- moving time cursor
		registerOn(mouseOnLClick, timelineUI.RootFrame.KeyframeContainer.TimeListFrame, function(x, y)
			wait()
			if (not modal and not cursorClick) then
				--print("Timeline click")
				if (cursorTime ~= findTime(x)) then
					cursorTime = findTime(x)
					updateCursorPosition()
					wait()
					return true
				end
			end
			return false
		end)

		-- sliding time cursor
		registerOn(mouseOnLClick, timelineUI.RootFrame.KeyframeContainer.Cursor, function(x, y)
			if (not modal) then
				--print("Cursor click")
				local halt = Repeat(function()
						local mouse = plugin:GetMouse()
						xvalue = mouse.X - timelineUI.RootFrame.KeyframeContainer.TimelineFrame.AbsolutePosition.X
						cursorTime = findTime(xvalue)
						if (cursorTime < 0) then
							cursorTime = 0
						elseif (cursorTime > animationLength) then
							cursorTime = animationLength
						end
						updateCursorPosition()
						wait()
					end)
				local unregisterEvent = registerOn(mouseOnLUp, nil, function(x, y)
					unregisterEvent(mouseOnLUp, unregisterEvent)
					halt()
					return false
				end)
				return true
			end
			return false
		end)
		
		timelineUI.RootFrame.KeyframeContainer.Cursor.InputBegan:connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				cursorClick = true
				--print("CC")
				delay(0.1, function()
					cursorClick = false
				end)			
			end
		end)
		
		--[[timelineUI.RootFrame.KeyframeContainer.Cursor.MouseButton1Down:connect(function()
			if not modal then
				print("CC")
				--cursorClick = true
				delay(0.1, function()
					cursorClick = false
				end)
			end
		end)]]
		
	end

	local function createLine(node, indentLevel)
		if (node == nil) then
			return
		end

		local newLine = Make('TextLabel', {
								Name = 'Line' .. lineCount,
								Font = 'Arial',
								FontSize = GuiSettings.TextSmall,
								TextColor3 = GuiSettings.TextColor,
								TextXAlignment = Enum.TextXAlignment.Left,
								Position = UD(0, 10, 0, (25 + (lineSize + marginSize) * lineCount)),
								Size = UD(0, nameSize, 0, lineSize),
								BackgroundTransparency = 1,
								Parent = timelineUI.RootFrame.ScrollingFrame,
								---------------------------
								Text = string.rep('  ', indentLevel) .. node.Name,
							})

		registerOn(mouseOnLClick, newLine, function(x, y)
			if (not modal) then
				if (getHandleSelection() ~= node and node ~= rootNode) then
					setHandleSelection(node)
				else
					resetHandleSelection()
				end
				updateCursorPosition()
				return true
			end
		end)
							
		if (node.Motor6D ~= nil) then
			local newLineButton = Make('TextButton', {
									Name = 'LineButton' .. node.Name,
									Font = 'Arial',
									FontSize = GuiSettings.TextSmall,
									TextColor3 = GuiSettings.TextColor,
									TextXAlignment = Enum.TextXAlignment.Left,
									BackgroundColor3 = buttonOffColor,
									Position = UD(0, nameSize - lineSize, 0, 25 + ((lineSize + marginSize) * lineCount)),
									Size = UD(0, lineSize, 0, lineSize),
									BackgroundTransparency = 0,
									Parent = timelineUI.RootFrame.ScrollingFrame,
									Text = ' ',
								})

			newLineButton.MouseButton1Click:connect(function()
				partInclude[node.Name] = not partInclude[node.Name]
				if partInclude[node.Name] then
					newLineButton.BackgroundColor3 = buttonOnColor
				else
					newLineButton.BackgroundColor3 = buttonOffColor		
				end
				resetHandleSelection()
				updateCursorPosition()		
			end)
		end

		lineCount = lineCount + 1
		for _, c in pairs(node.Children) do
			createLine(c, indentLevel + 1)
		end
	end
	createLine(rootNode, 0)
	updatePartInclude()

	selectedLine = 	Make('Frame', {
					Name = 'SelectedLineFrame',
					Style = 'Custom',
					Position = UD(0, marginSize, 0, (marginSize / 2) + 1 + ((lineSize + marginSize) * (lineCount - 1))),
					Size = UD(1, -(marginSize * 2), 0, lineSize + marginSize),
					BackgroundColor3 = Color3.new(200/255, 200/255, 150/255),
					BackgroundTransparency = 0.9,
	})
	selectedLine.Parent = timelineUI.RootFrame
	
	selectedLine2 = 	Make('Frame', {
					Name = 'SelectedLineFrame2',
					Style = 'Custom',
					Position = UD(0, marginSize, 0, (marginSize / 2) + 1 + ((lineSize + marginSize) * (lineCount - 1))),
					Size = UD(1, -(marginSize * 2), 0, lineSize + marginSize),
					BackgroundColor3 = Color3.new(200/255, 200/255, 150/255),
					BackgroundTransparency = 0.9,
	})
	selectedLine2.Parent = timelineUI.RootFrame.KeyframeContainer


	timelineUI.RootFrame.ScrollingFrame.CanvasSize = UD(1, 0, 0, 30 + marginSize + ((lineSize + marginSize) * lineCount --[[+ 8]]))
	--timelineUI.RootFrame.KeyframeContainer.CanvasSize = UD(0, 2000, 0, 30 + marginSize + ((lineSize + marginSize) * lineCount))
	timelineUI.RootFrame.KeyframeContainer.CanvasSize = UD(0, timelineUI.RootFrame.KeyframeContainer.AbsoluteSize.X, 0, 30 + marginSize + ((lineSize + marginSize) * lineCount))
	timelineUI.RootFrame.VerticalProxy.CanvasSize = UD(0, 0, 0, 30 + marginSize + ((lineSize + marginSize) * lineCount --[[+ 8]]))
	timelineUI.RootFrame.HorizontalProxy.CanvasSize = UD(0, timelineUI.RootFrame.KeyframeContainer.AbsoluteSize.X, 0, 0)
	
	local function moveTimelineBars()
		timelineUI.RootFrame.KeyframeContainer.TimeListFrame.Position = UD(0, 0, 0, timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y)
		timelineUI.RootFrame.KeyframeContainer.TimelineFrame.Position = UD(0, 0, 0, timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y + (lineSize + marginSize))
		adjustKeyframes()
		local tweenPos = (cursorTime * timeScale) - (lineSize / 2)
		if cursorTime >= animationLength - 0.03 then
			tweenPos = tweenPos - 5
		end
		timelineUI.RootFrame.KeyframeContainer.Cursor.Position = UD(0, tweenPos, 0, timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y)
	end	
	
	--Match scrollingframe positions
	timelineUI.RootFrame.KeyframeContainer.Changed:connect(function()
		if timelineUI and timelineUI:findFirstChild("RootFrame") then
			timelineUI.RootFrame.ScrollingFrame.CanvasPosition = Vector2.new(0, timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y)
			timelineUI.RootFrame.VerticalProxy.CanvasPosition = Vector2.new(0, timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y)
			moveTimelineBars()
		end
	end)
	timelineUI.RootFrame.ScrollingFrame.Changed:connect(function()
		if timelineUI and timelineUI:findFirstChild("RootFrame") then
			timelineUI.RootFrame.KeyframeContainer.CanvasPosition = Vector2.new(timelineUI.RootFrame.KeyframeContainer.CanvasPosition.X, timelineUI.RootFrame.ScrollingFrame.CanvasPosition.Y)
			timelineUI.RootFrame.VerticalProxy.CanvasPosition = Vector2.new(0, timelineUI.RootFrame.ScrollingFrame.CanvasPosition.Y)
		end
	end)
	timelineUI.RootFrame.VerticalProxy.Changed:connect(function()
		if timelineUI and timelineUI:findFirstChild("RootFrame") then
			timelineUI.RootFrame.KeyframeContainer.CanvasPosition = Vector2.new(timelineUI.RootFrame.KeyframeContainer.CanvasPosition.X, timelineUI.RootFrame.VerticalProxy.CanvasPosition.Y)
			timelineUI.RootFrame.ScrollingFrame.CanvasPosition = Vector2.new(0, timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y)
		end
	end)
	
	timelineUI.RootFrame.HorizontalProxy.Changed:connect(function()
		if timelineUI and timelineUI:findFirstChild("RootFrame") then
			timelineUI.RootFrame.KeyframeContainer.CanvasPosition = Vector2.new(timelineUI.RootFrame.HorizontalProxy.CanvasPosition.X, timelineUI.RootFrame.KeyframeContainer.CanvasPosition.Y)
		end
	end)	
	
	
	timelineUI.Parent = game:GetService("CoreGui")
end

function setAnimationLength(length)
	--length = approx(length)
	
	registerUndo({action = "lengthChange"})	
	
	length = math.floor(length * 10000)/10000
	--print("Setting length "..length)
	local scale = length / animationLength
	animationLength = length
	timeScale =  timelineLength / animationLength
	if (animationLength > 30) then
		animationLength = 30
	end
	plugin:SetSetting("AnimEditor_AnimLength", animationLength)

	-- modify animation framerate (easier than trying to combine keyframes)
	updateAnimationFramerate()
	
	-- copy out all keyframes
	local tempKeyFrameList = {}
	for time, keyframe in spairs(keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
		tempKeyFrameList[keyframe.Time] = keyframe
	end
	keyframeList = {}

	-- scale all keyframes
	for time, keyframe in spairs(tempKeyFrameList, function(t, a, b) return t[a].Time < t[b].Time end) do
		local newTime = keyframeTimeClamp(scale * time)
		keyframe.Time = newTime
		for _, pose in pairs(keyframe.Poses) do
			pose.Time = keyframe.Time
		end
		keyframeList[keyframe.Time] = keyframe
		keyframe.adjust()
	end



	-- update animation length display
	updateTimeLabels()

	-- update cursor location
	cursorTime = cursorTime * scale
	
	
	--timelineLength = timelineUI.RootFrame.KeyframeContainer.CanvasSize.X.Offset
	--timeScale =  timelineLength / animationLength
	--updateCursorPosition()
	wait(2)
	--adjustKeyframes()
	updateCursorPosition()
end

function keyframeContextMenu(x, y, needsShift)
	if (not modal and ( (not needsShift) or isKeyDown("shift") ) ) then
		time = findTime(x)
		--local key = getKeyframe(time)
		local key = selectedKeyframe
		if (key == nil) then
			createKeyframe(time)
		else
			local keyframeMenu = { "Delete", "Rename", "Copy", "Reset" }
			if DebugEnabled then table.insert(keyframeMenu, "Debug") end
			local mouse = plugin:GetMouse()
			local selection = displayDropDownMenu(timelineUI.RootFrame.KeyframeContainer.TimelineFrame, keyframeMenu, mouse.X, mouse.Y)
			if (selection == "Delete") then
				if (time > 0) then
					deleteKeyframe(time, true)
				end
				
			elseif (selection == "Rename") then
				local newName = showTextExtryDialog("Enter Keyframe Name:", key.Name)
				if (newName ~= nil) then
					key.Name = newName
				end
			
			elseif selection == "Copy" then
				for part, pose in pairs(key.Poses) do
					copyPose(part, pose)
				end
			
			elseif selection == "Reset" then
				resetKeyframeToDefaultPose(key)
			elseif selection == "Debug" then
				print("------------------------------")
				for i, v in pairs(key.Poses) do
					print(v.Item.Name)
				end
				print("------------------------------")
			end
		end
	end
	return false
end

function keyframePositionShift(x, y)
	if (not modal) then
		time = findTime(x)
		--local keyframe = getKeyframe(time)
		local keyframe = selectedKeyframe

		if (keyframe ~= nil and time > 0) then
			local halt = Repeat(function()
					local mouse = plugin:GetMouse()
					xvalue = mouse.X - timelineUI.RootFrame.KeyframeContainer.TimelineFrame.AbsolutePosition.X
					mouseTime = findTime(xvalue)
					if (mouseTime < 0) then
						mouseTime = 0
					elseif (mouseTime > animationLength) then
						mouseTime = animationLength
					end
					local currentKeyframe = getKeyframe(mouseTime)
					while (getKeyframe(mouseTime) ~= nil and getKeyframe(mouseTime) ~= keyframe) do
						mouseTime = mouseTime + animationFramerate
					end
					if (mouseTime > animationLength) then
						while (mouseTime > animationLength or (getKeyframe(mouseTime) ~= nil and getKeyframe(mouseTime) ~= keyframe)) do
							mouseTime = mouseTime - animationFramerate
						end
					end
					moveKeyframe(keyframe, mouseTime)
				end)	
			local unregisterEvent = registerOn(mouseOnLUp, nil, function(x, y)
				unregisterEvent(mouseOnLUp, unregisterEvent)
				halt()
				return false
			end)
			return true
		end
	end
	return false
end

function PromptSave()
	modal = true
	--saveUI.Parent = game:GetService("CoreGui")
	local exitFunc = function(givenName)
		modal = false
		if givenName ~= nil then
			saveCurrentAnimation(givenName)
		end
	end
	menuManager.GetSaveName(rootPart.Item.Parent, exitFunc)
end

function PromptLoad()
	modal = true
	menuManager.GetLoadName(rootPart.Item.Parent, function(name)
		if name ~= nil and name ~= "" then
			loadCurrentAnimation(name)
		end
		modal = false
	end)
end

function updatePartInclude()
	for partName, setting in pairs(partInclude) do
		local item = partListByName[partName]
		local button =timelineUI.RootFrame.ScrollingFrame:FindFirstChild('LineButton' .. partName)
		if (button ~= nil) then
			if setting then
				button.BackgroundColor3 = buttonOnColor		
			else
				button.BackgroundColor3 = buttonOffColor		
			end
		end
	end
end

function resetAnimation()
	undoMemory = {}
	redoMemory = {}
	doNotUpdateCursor = true
	resetCopyPoseList()
	resetKeyframes()
	local savedLength = plugin:GetSetting("AnimEditor_AnimLength")
	animationLength = savedLength ~= nil and savedLength or 2
	cursorTime = 0
	loopAnimation = false
	animationPriority = "Core"
	
	createKeyframe(0)
	doNotUpdateCursor = false
	updateTimeLabels()
	updateCursorPosition()
	resetHandleSelection()
	updateLoopButton()
	updatePriorityLabel()
	
	for partName, setting in pairs(partInclude) do
		partInclude[partName] = true
	end
	updatePartInclude()

end


stopAnim = false
function showStopAnimUI()
	if (stopAnimUI == nil) then
		stopAnimUI = Make('ScreenGui', 
		{
			Name = "StopAnimUI",
			Make('Frame', {
				Parent = timelineUI,
				Name = 'RootFrame',
				Style = 'Custom',
				Position = UD(0.1, 0, 0.5, 0),
				Size = UD(0, 150, 0, lineSize + buttonSize + 3*marginSize),
				BackgroundColor3 = Color3.new(100/255, 100/255, 150/255),
				BackgroundTransparency = 0.3,
				Make('TextLabel', {
					Name = 'TitleBar',
					Font = 'ArialBold',
					FontSize = 'Size14',
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, marginSize),
					Size = UD(0.9, 0, 0, lineSize),
					BackgroundTransparency = 1,
					Text = "Animation Playing",
					TextXAlignment = Enum.TextXAlignment.Center,
				}),
				Make('TextButton', {
					Name = 'StopButton',
					Font = 'ArialBold',
					FontSize = GuiSettings.TextMed,
					TextColor3 = GuiSettings.TextColor,
					Position = UD(0.05, 0, 0, lineSize + (2*marginSize)),
					Size = UD(0.9, 0, 0, buttonSize),
					BackgroundColor3 = Color3.new(150/255, 150/255, 150/255),
					BackgroundTransparency = 0,
					Text = "Stop",
				}),
			}),
		})
	end

	stopAnim = false
	stopAnimUI.Parent = game:GetService("CoreGui")
	stopAnimUI.RootFrame.StopButton.MouseButton1Click:connect(function()
		stopAnim = true
		stopAnimUI.Parent = nil
	end)

end




	function createPoseFromLastKeyframe(time, keyframeData, part)
		if (part ~= nil) then
			local poseParent = keyframeData

			-- see if we can find a pose for this part
			local pose = getClosestPose(time, part)

			if (pose ~= nil) then
				local item = pose.Item
				poseParent = Make('Pose', {					
					Name = part.Name,
					Parent = keyframeData,
					Weight = 1,
					CFrame =(item.OriginC1 
						         and item.OriginC1:inverse()*pose.CFrame:inverse()*item.OriginC1
						         or  pose.CFrame)
				})

				poseParent.EasingStyle = pose.EasingStyle
				poseParent.EasingDirection = pose.EasingDirection
			end

			for _, childPart in pairs(part.Children) do
				createPoseFromLastKeyframe(time, poseParent, childPart)
			end
		end
	end
	
	function createPosesFromKeyframeHelper(keyframeData, poseParent, partData)
		if not partData then return end
		local poseData = keyframeData.Poses[partData.Item]
		local didCreatePose = false
				
		if poseData then
			local posedPartData = poseData.Item
			poseParent = Make("Pose", {
				Name = partData.Name,
				Parent = poseParent,
				Weight = 1,
				MaskWeight = 0,
				CFrame = (posedPartData.OriginC1 and posedPartData.OriginC1:inverse() * poseData.CFrame:inverse() * posedPartData.OriginC1) or poseData.CFrame,
			})

			poseParent.EasingStyle = poseData.EasingStyle
			poseParent.EasingDirection = poseData.EasingDirection
			didCreatePose = true
		end
		
		--Creates parent poses. Weight set to 0 because these are poses that did not exist that we create for saving only.
		--When importing a pose, we ignore poses with weight 0.
		for _, childPartData in pairs(partData.Children) do
			if keyframeData.Poses[childPartData.Item] and not didCreatePose then
				poseParent = Make("Pose", {
					Name = partData.Name,
					Parent = poseParent,
					Weight = 0,
					MaskWeight = 0,
					CFrame = CFrame.new(),
				})

				poseParent.EasingStyle = Enum.PoseEasingStyle.Linear
				poseParent.EasingDirection = Enum.PoseEasingDirection.Out
				didCreatePose = true
			end
			
			createPosesFromKeyframe(keyframeData, poseParent, childPartData)
		end
	end
	
	function removeUnincludedParts(keyframe)
		--Collect all poses in given keyframe
		local poses = {}
		local function recurse(parent)
			for _, child in pairs(parent:GetChildren()) do
				if child:IsA("Pose") then
					table.insert(poses, child)
				end
				recurse(child)
			end
		end
		recurse(keyframe)
		
		
		for _, pose in pairs(poses) do
			local poseHasIncludedChildren = false
			local poseIncluded = partInclude[pose.Name] and (pose.Name ~= "HumanoidRootPart")
			for _, child in pairs(pose:GetChildren()) do
				if partInclude[child.Name] then
					poseHasIncludedChildren = true
					break
				end
			end
			
			if (not poseIncluded) then
				pose.Weight = 0
				
				if (not poseHasIncludedChildren) then
					for _, child in pairs(pose:GetChildren()) do
						child.Parent = pose.Parent
					end
					pose:Destroy()
				end
			end
		end
	end
	
	function createPosesFromKeyframe(keyframeData, poseParent, partData)
		createPosesFromKeyframeHelper(keyframeData, poseParent, partData)
		removeUnincludedParts(poseParent)
	end

	function createAnimationFromCurrentData()
		local kfs = Make('KeyframeSequence', {
			Name = "Test",
			Loop = loopAnimation,
			Priority = animationPriority,
		})

		for time, keyframe in spairs(keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
			-- print("Time " .. time)

			local kfd = Make('Keyframe', {
				Name = keyframe.Name,
				Time = time,
				Parent = kfs,
			})

			-- go through part heirarach
			createPosesFromKeyframe(keyframe, kfd, rootPart)
		end

		-- check for end animation keyframe
		local keyframe = getKeyframe(animationLength)
		if (keyframe == nil) then
			local kfd = Make('Keyframe', {
				Name = "KF" .. animationLength,
				Time = animationLength,
				Parent = kfs,
			})

			createPoseFromLastKeyframe(animationLength, kfd, rootPart)
		end
		return kfs
	end
	

	playingAnim = false
	function playCurrentAnimation()
        if (not playingAnim) then
			modal = true
			game:GetService("ChangeHistoryService"):SetEnabled(true)
			game:GetService("ChangeHistoryService"):SetWaypoint("Animation_Play")

			playingAnim = true
			stopAnim = false
			animationPlayID = animationPlayID + 1

			-- Update the model to start positions
			local motorOrig = {}
			for part,elem in pairs(partList) do
				if (elem.Motor6D ~= nil) then
--					local pose = getClosestPose(0, part)
--					elem.Motor6D.C1 = pose.CFrame * pose.Item.OriginC1
					elem.Motor6D.C1 = elem.OriginC1
					nudgeView()
				end
			end

			local kfsp = game:GetService('KeyframeSequenceProvider')

			local kfs = createAnimationFromCurrentData()
			local animID = kfsp:RegisterKeyframeSequence(kfs)
			local dummy = rootPart.Item.Parent

--			print("AnimID = " .. animID)

			local AnimationBlock = dummy:FindFirstChild("AnimSaves")
			if AnimationBlock == nil then
				AnimationBlock = Instance.new('Model')
				AnimationBlock.Name = "AnimSaves"
				AnimationBlock.Parent = dummy
			end

			local Animation = AnimationBlock:FindFirstChild("TestAnim")
			if Animation == nil then
				Animation = Instance.new('Animation')
				Animation.Name = "TestAnim"
				Animation.Parent = AnimationBlock
			end
			Animation.AnimationId = animID

			local endEarly = menuManager.GetStopRequest(function()
				stopAnim = true
			end)
			
			currentAnimTrack = animationController:LoadAnimation(Animation)
			currentAnimTrack:Play()

			local animator
			animator = animationController:FindFirstChildOfClass("Animator")
			if not animator then
				return -- error?
			end

			local ID = animationPlayID
			time = tick()

			while not stopAnim and (loopAnimation or tick() - time < animationLength) do
				local step = game:GetService("RunService").Heartbeat:wait()
				if not stopAnim and (loopAnimation or tick() - time < animationLength) then
					animator:StepAnimations(step)
				end
			end

			if not stopAnim then
				endEarly()
			end
			stopAnim = true

			currentAnimTrack:Stop(0)
			-- Reset Transform property for Motor6Ds
			for part,elem in pairs(partList) do
				if elem.Motor6D ~= nil then
					elem.Motor6D.Transform = CFrame.new()
				end
			end
		
			animator:StepAnimations(0)
			
			playingAnim = false
			modal = false
			--game:GetService("ChangeHistoryService"):Undo()
			for part,elem in pairs(partList) do
				if (elem.Motor6D ~= nil) then
					elem.Motor6D.CurrentAngle = 0
					elem.Motor6D.C1 = elem.OriginC1
				end
			end
			
			updateCursorPosition()
		end
	end

	function saveCurrentAnimation(animName)
		if playingAnim then return end
	
		-- save to string item
		local dummy = rootPart.Item.Parent
		local AnimationBlock = dummy:FindFirstChild("AnimSaves")
		if AnimationBlock == nil then
			AnimationBlock = Instance.new('Model')
			AnimationBlock.Name = "AnimSaves"
			AnimationBlock.Parent = dummy
		end

		local save = AnimationBlock:FindFirstChild(animName)
		if save then
			save:Destroy()
		end
		save = createAnimationFromCurrentData()
		save.Name = animName
		save.Parent = AnimationBlock
	end
	
	function autoSave()
		if not rootPart then return end
		if not _G["AnimationEdit"] then return end
		
		local timeSinceLastAutoSave = tick() - lastAutoSaveTime
		
		if timeSinceLastAutoSave > 1 then
			saveCurrentAnimation("Automatic Save")
			lastAutoSaveTime = tick()
		end
	end

	function loadCurrentAnimation(animName)
		if playingAnim then return end
		-- get string item
		local dummy = rootPart.Item.Parent
		local AnimationBlock = dummy:FindFirstChild("AnimSaves")
		if AnimationBlock == nil then
			return
		end

		local Animation = AnimationBlock:FindFirstChild(animName)
		if Animation == nil then
			return
		end
		
		loadImportAnim(Animation)
	end
	
	function promptChangeLength()
		modal = true
		local desiredLength = promptInput("Change Animation Length",tostring(animationLength))
		if desiredLength ~= nil and tonumber(desiredLength) ~= nil then
			setAnimationLength(tonumber(desiredLength))
		end
		modal = false
	end
	
	function promptTickChange()
		local newSnap = tonumber(promptInput("Tick Line Increment (seconds)", tostring(tickIncrements)))
		if newSnap ~= nil and newSnap >= 0.02 then
			tickIncrements = newSnap
		end
		setAnimationLength(animationLength)
	end
	
	function promptSnapChange()
		local newSnap = tonumber(promptInput("Cursor Snap Increment (seconds)", tostring(dragSnapIncrements)))
		if newSnap ~= nil and newSnap >= 0.02 then
			dragSnapIncrements = newSnap
		end
	end
	
	function promptAddTime()
		local time = tonumber(promptInput("Add Time At Cursor", "<time>"))
		if time ~= nil and time > 0 then
			addTimeAtCursorNew(time)
		end
	end
	
	function promptRemoveTime()
		local time = tonumber(promptInput("Remove Time At Cursor", "<time>"))
		if time ~= nil and time > 0 then
			removeTimeAtCursorNew(time)
		end		
	end
	
	function promptChangePriority()
		modal = true
		menuManager.GetPriority(plugin, function(newPriority) 
			modal = false 
			animationPriority = newPriority 
		end)
	end
	
	function promptChangeLooping()
		modal = true
		menuManager.GetLoop(plugin, function(loopDecision) 
			modal = false 
			loopAnimation = loopDecision
		end)
	end
	
	function promptInput(title, def)
		modal = true
		local val = menuManager.PromptInput(title, def)
		modal = false
		return val
	end
	
	function promptNew()
		modal = true
		local val = menuManager.PromptOkCancel("Are you sure? Unsaved progress will be lost.")
		modal = false
		if val == true then
			registerUndo( {
				action = "deleteKeyframe",
			})
			resetAnimation()			
		end
	end
	
	function requestValue(val)
		if val == "Loop" then
			return loopAnimation
		elseif val == "Snap" then
			return dragSnapIncrements
		elseif val == "Priority" then
			return animationPriority
		elseif val == "Lines" then
			return tickIncrements
		end
	end
	
	function importFbxAnimation()
		local dummy = rootPart.Item.Parent
		--Sanity check
		if dummy:findFirstChild("InitialPoses") then
			resetAnimation()
			local conn
			conn = game.Workspace.ChildAdded:connect(function(c)
				if c.Name == "ImportedAnimation" then
					--Move to AnimSaves
					if dummy:findFirstChild("AnimSaves") == nil then
						local m = Instance.new("Model", dummy)
						m.Name = "AnimSaves"
					end
					wait()
					c.Parent = dummy.AnimSaves
					c.Priority = "Core" --move this to C++ at some point
					loadKeyframeSequence(c)
					conn:disconnect()
				end
			end)
			plugin:ImportFbxAnimation(dummy)
		else
			warn("Rig does not have initial pose data. Rig must be imported via FBX to use this feature!")
		end
	end


----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

keysDown = {}
keyDownListener = nil
keyUpListener = nil


function isKeyDown(key)
	if ( keysDown[key] == nil ) then
		return false
	else
		return keysDown[key]
	end
end

function onKeyDown(key)
	if ( string.byte(key) == 48 ) then
		keysDown["shift"] = true
	elseif  ( string.byte(key) == 50 ) then
		keysDown["ctrl"] = true
	elseif  ( string.byte(key) == 52 ) then
		keysDown["alt"] = true
	elseif  ( string.byte(key) == 118 ) then
		keysDown["v"] = true
		pastePoses()
	elseif  ( string.byte(key) == 114 ) then
		keysDown["r"] = true
		toggleHandles()
	elseif  ( string.byte(key) == 116 ) then
		keysDown["t"] = true
		toggleStep()
	elseif ( string.byte(key) == 121 ) then
		keysDown["y"] = true
		if not keysDown["shift"] then
			toggleTransformSpace()
		else
			redo()
		end
	elseif key == "z" and keysDown["shift"] then
		undo()
	end
end

function onKeyUp(key)
--  print("Key UP:", key, " Code:", string.byte(key))
	if ( string.byte(key) == 48 ) then
		keysDown["shift"] = false
	elseif  ( string.byte(key) == 50 ) then
		keysDown["ctrl"] = false
	elseif  ( string.byte(key) == 52 ) then
		keysDown["alt"] = false
	elseif  ( string.byte(key) == 118 ) then
		keysDown["v"] = false
	elseif  ( string.byte(key) == 114 ) then
		keysDown["r"] = false
	elseif ( string.byte(key) == 121) then
		keysDown["y"] = false
	end
end

function releaseListeners()
	if (keyUpListener ~= nil) then
		keyUpListener:disconnect()
	end
	if (keyDownListener ~= nil) then
		keyDownListener:disconnect()
	end

end

function connectListeners(mouse)
	if (mouse ~= nil) then
		releaseListeners()
		keysDown = {}
		keyDownListener = mouse.KeyDown:connect(onKeyDown)
		keyUpListener = mouse.KeyUp:connect(onKeyUp)
	end
end

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------



function exitPlugin()
	local okToQuit = false
	if _G["AnimationEdit"] then
		modal = true
		okToQuit = menuManager.PromptOkCancel("You will lose unsaved progress. Are you sure?")
		modal = false
	else
		okToQuit = true
	end
	if okToQuit then
        plugin:Deactivate()

        pcall(function()
			destroySelectionBoxes()
		end)
		if mProxyPart ~= nil then
			mProxyPart:Destroy()
		end
		_G["AnimationEdit"] = false
		modal = false
		--new
		releaseListeners()
		--resetAnimation()
		clearAllEvents()
		if (MouseTargeterHalt ~= nil) then
			MouseTargeterHalt()
		end
		--
		menuManager.Quit()
		if destroySelectionBoxes then destroySelectionBoxes() end
		game:GetService("ChangeHistoryService"):SetEnabled(true)
		game:GetService("ChangeHistoryService"):ResetWaypoints()
		button:SetActive(false)
	end
end

plugin.Deactivation:connect(function()
	autoSave()
	
	_G["AnimationEdit"] = false
	releaseListeners()
	if timelineUI then
		resetAnimation()
		timelineUI:Destroy()
	end
	timelineUI = nil
	if menuUI then
		menuUI:Destroy()
	end
	menuUI = nil
	if saveUI then
		saveUI:Destroy()
	end
	saveUI = nil
	if loadUI then
		loadUI:Destroy()
	end
	loadUI = nil
	if stopAnimUI then
		stopAnimUI:Destroy()
	end
	stopAnimUI = nil
	if timeChangeUI then
		timeChangeUI:Destroy()
	end
	if snapChangeUI then
		snapChangeUI:Destroy()
	end
	if angleChangeUI then
		angleChangeUI:Destroy()
	end
	if tickChangeUI then
		tickChangeUI:Destroy()
	end
	timeChangeUI = nil
	if (rotateMoveUI) then
		rotateMoveUI:Destroy()
	end
	rotateMoveUI = nil
	if (destroySelectionBoxes) then
		destroySelectionBoxes()
	end

	modal = false
	rotateMode = true
	partSelection = nil
	rotateStep = 0
	moveStep = 0

end)

function CreateGrid(obj)
	spawn(function()
		local USE_FADE_EFFECT = false
		local USE_GROW_EFFET = true
		--local center = obj.Parent:GetModelCFrame().p
		local center = CFrame.new(0,0,0).p
		local extents = obj.Parent:GetExtentsSize()
		local width = math.max(extents.X, extents.Z)
		width = width + 3
		local lineSpacing = width / 10
		local dstToFloor = (extents.Y * 0.5) + (obj.Position.Y - obj.Parent:GetModelCFrame().p.Y)
		local floorCenter = center - Vector3.new(0, dstToFloor, 0)
		local lineModel = Instance.new("Folder", game.CoreGui)
		lineModel.Name = "AnimEdit_Lines"
		table.insert(cleanup, lineModel)
		--floorCenter = floorCenter - obj.Position
		--Build the grid
		
		local fade = function(line)
			spawn(function()
				for i = 1, 10 do
					if line then
						line.Transparency = 1 - i/10
						wait(0.07)
					end
				end
			end)		
		end
		
		local grow = function(line, finish)
			spawn(function()
				for i = 1, 60 do
					if line then
						line.Length = finish * (i/60)
						game:GetService("RunService").RenderStepped:wait()
					end
				end
			end)			
		end
		
		for z = -5, 5 do
			local line = Instance.new("LineHandleAdornment")
			line.Thickness = 2
			line.Color = envRoot.AnimationEditorViewportWidgetsVersion.Customize.GridColor.Value--BrickColor.new"Bright red"
			line.Length = width
			line.Adornee = obj
			line.CFrame = CFrame.new(floorCenter) + Vector3.new(z * lineSpacing, 0, width / 2)
			if USE_FADE_EFFECT then
				--Beta fade
				line.Transparency = 1
				fade(line)
				wait(0.05)
				--End of beta fade
			end
			if USE_GROW_EFFET then
				grow(line, width)
				wait(0.05)				
			end
			
			line.Parent = lineModel
			table.insert(cleanup, line)
		end
		for x = -5, 5 do
			local line = Instance.new("LineHandleAdornment")
			line.Thickness = 2
			line.Color = envRoot.AnimationEditorViewportWidgetsVersion.Customize.GridColor.Value--BrickColor.new"Bright red"
			line.Length = width
			line.Adornee = obj
			line.CFrame = (CFrame.new(floorCenter) + Vector3.new(width / 2, 0, x * lineSpacing)) * CFrame.Angles(0, math.pi/2, 0)
			if USE_FADE_EFFECT then
				--Beta fade
				line.Transparency = 1
				fade(line)
				wait(0.05)
				--End of beta fade
			end	
			if USE_GROW_EFFET then
				grow(line, width)
				wait(0.05)				
			end		
			
			line.Parent = lineModel
			table.insert(cleanup, line)
		end
	end)
end

function menuRequest(arg)
	wait()
	if modal then return end
	if arg == "Save" then
		PromptSave()
	elseif arg == "Load" then
		PromptLoad()
	elseif arg == "Export" then
		modal = true
		showExportAnim()
	elseif arg == "Import" then
		modal = true
		showImportAnimText()
		modal = false
	elseif arg == "Help" then
		plugin:OpenWikiPage("Animations")
	elseif arg == "EditHelp" then
		plugin:OpenWikiPage("Animations#Edit_Menu")
	elseif arg == "SettingsHelp" then
		plugin:OpenWikiPage("Animations#Settings_Menu")
	elseif arg == "New" then
		promptNew()
	elseif arg == "Play" then
		modal = true
		playCurrentAnimation()
	elseif arg == "Paste" then
		pastePoses()
	elseif arg == "CreateKeyframe" then
		createKeyframe(cursorTime)
	elseif arg == "Undo" then
		undo()
	elseif arg == "Redo" then
		redo()
	elseif arg == "ChangeLength" then
		promptChangeLength()
	elseif arg == "Lines" then
		promptTickChange()
	elseif arg == "Snap" then
		promptSnapChange()
	elseif arg == "AddTime" then
		promptAddTime()
	elseif arg == "RemoveTime" then
		promptRemoveTime()
	elseif arg == "Priority" then
		promptChangePriority()
	elseif arg == "Loop" then
		promptChangeLooping()
	elseif arg == "TweenCursor" then
		preferences["TweenCursor"] = not preferences["TweenCursor"]
	elseif arg == "Interpolation" then
		preferences["Interpolation"] = not preferences["Interpolation"]
	elseif arg == "ShowTooltips" then
		preferences["Tooltips"] = not preferences["Tooltips"]
	elseif arg == "SelectInvisible" then
		preferences["SelectInvisible"] = not preferences["SelectInvisible"]
	elseif arg == "FBXImport" then
		importFbxAnimation()
	end
end

button.Click:connect(function()
	if _G["AnimationEdit"] == true then --Only if the timeline has already launched
		exitPlugin()
	elseif menuManager.HasActiveWindow() then --Is the "root picker" UI open?
		exitPlugin()
    elseif DoNotRunAnimationEditorInPlayModeFlagExists and DoNotRunAnimationEditorInPlayModeFlagValue == true and game:GetService('RunService'):IsRunning() then
        showWarningDialog("Cannot run the Animation Editor while the game is running!")
	else
		plugin:Activate(true)
		button:SetActive(true)
		local retFunc = function(selectedObject)
			if selectedObject ~= nil then
				_G["AnimationEdit"] = true
				game:GetService("ChangeHistoryService"):SetEnabled(false)
				-- reset UI
				timelineUI = nil
				menuUI = nil
				saveUI = nil
				loadUI = nil
				stopAnimUI = nil
				timeChangeUI = nil
				snapChangeUI = nil
				angleChangeUI = nil
				tickChangeUI = nil
			
				-- reset the assembly information
				partList = {}
				partListByName = {}
				partToItemMap = {}
				partToLineNumber = {}
				rootPart = nil
			
				partInclude = {}
				modal = false
				rotateMode = true
				partSelection = nil
				rotateStep = 0
				moveStep = 0
			
				local mouse = plugin:GetMouse()
				connectListeners(mouse)
				
				local getController = function(p)
					for i, v in pairs(p:GetChildren()) do
						if v:IsA("Humanoid") or v:IsA("AnimationController") then
							return v
						end
					end
					return nil
				end
				
				animationController = getController(selectedObject.Parent)
			
				-- find the hierarchy
				--first, gather the info on what's being animated
				local mBaseItem = { --recursive structure holding hierarchy of items
					Item = selectedObject,
					Name = selectedObject.Name,
					Motor6D = nil,
					OriginC1 = CFrame.new(),
					Children = {},
					Parent = nil,
				}
				rootPart = mBaseItem
	
				local joints = {}
				local function recurse(obj)
					if obj:IsA("Motor6D") then
						table.insert(joints, obj)
					end
					
					for _, child in pairs(obj:GetChildren()) do
						recurse(child)
					end
				end
				recurse(rootPart.Item.Parent)
				
				local partCount = 1
				do
					local visitedParts = {}
					local function findPairedJoints(parent)
						local parentObject = parent.Item
						local childList = {}
						local jointList = {}
						for _, joint in pairs(joints) do
							if (joint.Part1 and joint.Part1.Name == "ProxyPart") or (joint.Part0 and joint.Part0.Name == "ProxyPart") then
								break 
							else
								if joint.Part0 == parentObject and joint.Part1 ~= nil and visitedParts[joint.Part1.Name] == nil then
									table.insert(childList, joint.Part1)
									table.insert(jointList, joint)
								elseif joint.Part1 == parentObject and joint.Part0 ~= nil and visitedParts[joint.Part0.Name] == nil then
									table.insert(childList, joint.Part0)
									table.insert(jointList, joint)
								end
							end
						end					
						return childList, jointList
					end
					
					local function doCalculate(item)
						visitedParts[item.Name] = item
			--			mAllItems[#mAllItems+1] = item
						partList[item.Item] = item
						partListByName[item.Name] = item
						partToItemMap[item.Item] = item
						partToLineNumber[item.Item] = partCount
						partInclude[item.Name] = true
			
						local childList, jointList = findPairedJoints(item)
						for idx, joinedTo in pairs(childList) do
							local p = jointList[idx]
								
							local it = {
								Item = joinedTo,
								Name = joinedTo.Name,
								Motor6D = p,
								OriginC1 = repairedCFrame(p.C1),
								Children = {},
								Parent = item,
							}
							item.Children[#item.Children+1] = it
							partCount = partCount+1
							doCalculate(it)
						end
					end
					doCalculate(mBaseItem)
				end
							
				MakePartSelectGui(mBaseItem)
				createTimelineUI(mBaseItem)
				menuManager.InitializeSettings({
					Interpolation = preferences["Interpolation"],
					SelectInvisible = preferences["TransparentSelect"],
					TweenCursor = preferences["TweenCursor"],
					ShowTooltips = preferences["Tooltips"],
				})
				menuManager.InitializeTopbar(timelineUI.RootFrame,function() return modal == false end, function() modal = true end, function() modal = false end, menuRequest, requestValue)
				menuManager.InitializeTooltips()
				resetAnimation()
				CreateGrid(selectedObject)
			else
                plugin:Deactivate()
				button:SetActive(false)
			end
		end	
		menuManager.SelectRig(plugin:GetMouse(), plugin, retFunc)
	end
end)