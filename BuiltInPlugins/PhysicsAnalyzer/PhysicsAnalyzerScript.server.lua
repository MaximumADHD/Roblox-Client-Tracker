-- Detector will send a signal with an int parameter, this is the number of problems detected
-- This script can query for a list of parts for each problem
-- The plugin is responsible for:
-- 1) Pausing the game
-- 2) Highlighting the parts
-- 3) Selecting the parts in the Explorer
-- 4) Focus on the parts in a group
-- 5) Providing an interface for skipping to next issue 

-----------
--MODULES--
-----------

local Extent = require(script.Parent.Extent)
local Camera = require(script.Parent.Camera)

-------
--GUI--
-------

local PhysicsAnalyzerGui = script.Parent.PhysicsAnalyzerGui
local MainFrame = PhysicsAnalyzerGui.MainFrame

local NumberFound = MainFrame.NumberFound
local CurrentStatus = MainFrame.CurrentStatus
local RunButton = MainFrame.RunButton

local ScrollingFrame = MainFrame.ScrollingFrame
local Canvas = ScrollingFrame.Canvas
local ItemTemplate = MainFrame.ItemTemplate

local HelpButton = MainFrame.HelpButton

------------
--SERVICES--
------------
local SelectionService = game:GetService("Selection")
local RunService = game:GetService("RunService")

PhysicsAnalyzerGui.Parent = game:GetService("CoreGui")

-----------
--SIGNALS--
-----------

local PhysicsAnalyzerIssuesSignal = nil
local RunServiceSteppedSignal = nil
local RunButtonInputSignal = nil
local HelpButtonSignal = nil

-------------
--VARIABLES--
-------------

local previousIssueCount = 0;
local issues = {}

-------------
--FUNCTIONS--
-------------

local function clearAllIssues()
	for i = 1, #issues do
		issues[i][3]:disconnect()
		issues[i][2]:Destroy()
	end
	
	issues = {}
	
	NumberFound.Text = ""
end

local function addIssue(issue)
	
--	local label = "Issue " .. #issues .. (issue[1] and (": " .. issue[1].Name ..
--		(issue[2] and " / " .. issue[2].Name or "")) or (""))

	local label = "Issue " .. #issues .. ": "
	
	for j=1, #issue do
		if( j > 1 ) then
			label = label .. " / "
		end
		label = label .. issue[j].Name
	end
		
	local item = ItemTemplate:Clone()
	item.Parent = Canvas
	item.Position = UDim2.new(0, 0, 0, 21 * #issues)
	item.Text = label
	
	local itemConnection = item.InputBegan:connect(function(evt)
		if evt.UserInputType == Enum.UserInputType.MouseButton1 then
			moveAndSelectParts(issue)
		end
	end)
	
	item.Visible = true
	
	issues[#issues + 1] = {issue, item, itemConnection}
	
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, #issues * 21)
	if (ScrollingFrame.CanvasSize.Y.Offset > ScrollingFrame.AbsoluteSize.Y) then
		Canvas.Size = UDim2.new(1, -16, 1, 0)
	else
		Canvas.Size = UDim2.new(1, 0, 1, 0)
	end
	
	previousIssueCount = #issues;
end

function moveAndSelectParts(parts)
	game.Selection:Set(parts)
	
	local extents = Extent.getExtents(parts)
	Camera.zoomToExtents(extents)
end

local function gotIssues(count)
	MainFrame.Size = UDim2.new(0, 200, 0, 200)
	ScrollingFrame.Visible = true
	
	if (count == previousIssueCount) then
		return
	end
	
	clearAllIssues()	
	RunService:Pause()
	game.Workspace:SetPhysicsAnalyzerBreakOnIssue(true)
	
	--Updating GUI
	NumberFound.Text = count .. " overconstraints detected"
	RunButton.Visible = true
	CurrentStatus.Text = "Paused"
		
	for i = 0, count - 1 do
		local issue = game.Workspace:GetPhysicsAnalyzerIssue(i)
		addIssue(issue)
	end
	
	game.Workspace:SetPhysicsAnalyzerBreakOnIssue(false)
end

local function connectEvents()
	RunServiceSteppedSignal = RunService.Stepped:connect(function()
		clearAllIssues()
		CurrentStatus.Text = "Running"
	end)

	RunButtonInputSignal = RunButton.InputBegan:connect(function(evt)
		if (evt.UserInputType == Enum.UserInputType.MouseButton1) then
			RunService:Run()
			RunButton.Visible = false
		end
	end)
	
	HelpButtonSignal = HelpButton.InputBegan:connect(function(evt)
		if (evt.UserInputType == Enum.UserInputType.MouseButton1) then
			plugin:OpenWikiPage("Physics_Analyzer")
		end
	end)
	
	PhysicsAnalyzerIssuesSignal = game.Workspace.PhysicsAnalyzerIssuesFound:connect(gotIssues)
end

local function disconnectEvents()
	if PhysicsAnalyzerIssuesSignal then
		PhysicsAnalyzerIssuesSignal:disconnect()
	end
	
	if RunServiceSteppedSignal then
		RunServiceSteppedSignal:disconnect()
	end
	
	if RunButtonInputSignal then
		RunButtonInputSignal:disconnect()
	end
	
	if HelpButtonSignal then
		HelpButtonSignal:disconnect()
	end
end


local function physicsAnalyzerEnabled(enabled)
	MainFrame.Visible = enabled
	
	if enabled then
		connectEvents()
	else
		disconnectEvents()
	end
end

----------
--EVENTS--
----------

settings().Physics.Changed:connect(function(itemChanged)
	if itemChanged == "PhysicsAnalyzerEnabled" then
		physicsAnalyzerEnabled(settings().Physics.PhysicsAnalyzerEnabled)
	end
end)

physicsAnalyzerEnabled(settings().Physics.PhysicsAnalyzerEnabled)



