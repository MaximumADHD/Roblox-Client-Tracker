local FFlagStudioVideoDocumentationStopUsingBadEventsPlease = settings():GetFFlag("StudioVideoDocumentationStopUsingBadEventsPlease")

local BUTTON_NORMAL = "rbxassetid://417211667"
local BUTTON_HOVER	= "rbxassetid://417211758"
local BUTTON_DOWN	= "rbxassetid://417211718"
local BUTTON_CURSOR = "rbxassetid://419142055"

local mouse = plugin:GetMouse()
local connections = {}

local function findPartAncestor(object)
	if object:IsA("BasePart") then return object end
	if object == game or object == game.Workspace then return false end
	return findPartAncestor(object.Parent)
end

local function setupButton(frame, link)
	local holding = false
	local inside = false
	local oldIcon = mouse.Icon

	local button = Instance.new("ImageButton", frame)
	button.Size = UDim2.new(1, 0, 1, 0)
	button.Image = BUTTON_NORMAL
	button.BackgroundTransparency = 1
	button.Archivable = false	
	
	local function updateButton()
		if inside then
			if holding then
				button.Image = BUTTON_DOWN
			else
				button.Image = BUTTON_HOVER
			end
			mouse.Icon = BUTTON_CURSOR
		else
			if holding then
				button.Image = BUTTON_DOWN
			else
				button.Image = BUTTON_NORMAL
			end
			mouse.Icon = oldIcon
		end
	end

	local buttonConnections = {}
	local clickConnection = button.MouseButton1Click:connect(function()
		plugin:OpenWikiPage(link.Value)
	end)
	local partAncestor = findPartAncestor(button)
	local initialLock = false
	if partAncestor then
		initialLock = partAncestor.Locked
	end
	
	local mouseEnterConnection = button.MouseEnter:connect(function()
		inside = true
		updateButton()

		if partAncestor then partAncestor.Locked = true end
		mouse.Icon = BUTTON_CURSOR
	end)
	local mouseLeaveConnection = button.MouseLeave:connect(function()
		inside = false
		updateButton()
		mouse.Icon = oldIcon
		if partAncestor and not initialLock then
			partAncestor.Locked = false
		end
	end)
	
	local mouseDownConnection = mouse.Button1Down:connect(function()
		if inside then
			inside = false
			holding = true
			updateButton()
		end
	end)
	
	local mouseUpConnection	= mouse.Button1Up:connect(function()
		holding = false
		updateButton()
	end)
	table.insert(buttonConnections, clickConnection)
	table.insert(buttonConnections, mouseEnterConnection)
	table.insert(buttonConnections, mouseLeaveConnection)
	table.insert(buttonConnections, mouseDownConnection)
	table.insert(buttonConnections, mouseUpConnection)
	connections[button] = buttonConnections
end

local function checkInstance(instance)
	pcall(function()
		if instance and instance:IsA("StringValue") and instance.Name == "WikiLink" then
			local container = instance.Parent
			local link = instance
			if container:IsA("Frame") then
				setupButton(container, link)
			end
		end
	end)
end

local function findWikiLinks(object)
	checkInstance(object)
	pcall(function()
		local children = object:GetChildren()
		for i = 1, #children do
			findWikiLinks(children[i])
		end
	end)
end

local function onDescendantRemoved(instance)
	local buttonConnections = connections[instance]
	if not buttonConnections then return end
	for i = 1, #buttonConnections do
		buttonConnections[i]:disconnect()
	end
end

-- dnurkkala made this change with the permission of lsparks
-- according to lsparks, a single sweep without watches
-- was sufficient to accomplish the goals of this plugin
if not FFlagStudioVideoDocumentationStopUsingBadEventsPlease then
	game.Workspace.DescendantAdded:connect(checkInstance)
	game.Workspace.DescendantRemoving:connect(onDescendantRemoved)
end

findWikiLinks(game.Workspace)
