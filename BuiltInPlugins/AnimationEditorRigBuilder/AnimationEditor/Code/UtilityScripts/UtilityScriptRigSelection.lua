local RigSelection = {}

local hasController = function(model)
	for _, child in ipairs(model:GetChildren()) do
		if child:IsA("Humanoid") or child:IsA("AnimationController") then
			return true
		end
	end
	return false
end

local hasAnimations = function(model)
	for _, child in ipairs(model:GetChildren()) do
		if child:IsA("Model") and child.Name == "AnimSaves" then
			for _, animChild in ipairs(child:GetChildren()) do
				if animChild:IsA("KeyframeSequence") then
					return true
				end
			end
		end
	end
	return false
end

local findAllPossibleRoots = function(model)
	local roots = {}
	for _, child in ipairs(model:GetChildren()) do
		if child:IsA("BasePart") then
			local root = child:GetRootPart()
			roots[root.Name] = root
		end
	end
	return roots
end

local checkForCircularRig = function(motors)
	local traversed = {}
	for part1, motor in pairs(motors) do
		local part0 = motor.Part0
		if part0 and part1 and part0 == part1 then
			return true
		end
		while part0 ~= nil and part0 ~= game.Workspace do
			local connectedMotor = motors[part0]
			if connectedMotor then
				part0 = connectedMotor.Part0
				if not traversed[connectedMotor] then
					traversed[connectedMotor] = {}
				else
					return true
				end
			else
				break
			end
		end
		traversed = {}
	end
	return false
end

local verifyRig = function(self, model)
	local motors = {}

	--error handling
	local partsWithMultipleParents = {}
	local motorsWithMissingPart0 = {}
	local motorsWithMissingPart1 = {}
	local motorsWithCircularAttachments = {}

	for _, child in ipairs(model:GetDescendants()) do
		if child:IsA("Motor6D") then
			local part1 = child.Part1
			local part0 = child.Part0
			if not part1 or (part1 and part1.Parent == nil) then
				table.insert(motorsWithMissingPart1, child)
			end
			if not part0 or (part0 and part0.Parent == nil) then
				table.insert(motorsWithMissingPart0, child)
			end
			if part1 and part0 and model:FindFirstChild(part1.Name, true) and model:FindFirstChild(part0.Name, true) then
				if motors[part1] then
					table.insert(partsWithMultipleParents, part1)
					motors = {}
					break
				else
					motors[part1] = child
				end
			end
		end
	end

	local circularRig = checkForCircularRig(motors)

	if #partsWithMultipleParents > 0 or #motorsWithMissingPart0 > 0 or #motorsWithMissingPart1 > 0 or circularRig then
		self.Paths.HelperFunctionsWarningsAndPrompts:createRigError(
			self.Paths, 
			partsWithMultipleParents, 
			motorsWithMissingPart0, 
			motorsWithMissingPart1, 
			circularRig
		)
		return false
	elseif next(motors) == nil then
		self.Paths.HelperFunctionsWarningsAndPrompts:createNoMotorsError(self.Paths)
		return false
	end

	return true
end

local function getModel(instance)
	if not instance or instance == game.Workspace then
		return nil
	end

	if instance:IsA("Model") then
		return instance
	else
		return getModel(instance.Parent)
	end
end

local function selectionEmpty(self, selection)
	return self.Paths.HelperFunctionsTable:isNilOrEmpty(selection)
end

local function setTargetModel(self, model)
	self.TargetModel = model
	self.TargetPart = nil
end

local function setToDefaultSelectionState(self)
	self.Paths.GUIScriptDarkCover:turnOn(true, self)
	self.Paths.GUIScriptDarkCover:showText("Select a rig to animate.")
	self.Paths.GUIScriptDarkCover:showButton(false)
	setTargetModel(self, nil)
end

local function wasTargetModelDeleted(self)
	return self.TargetModel and self.TargetModel.Parent ~= game.Workspace
end

local function doesPartNotExistOnModel(self, part)
	return self.TargetModel and (part and not self.TargetModel:FindFirstChild(part.Name, true))
end

local function doesPartExistOnModel(self, part)
	return self.TargetModel and (part and self.TargetModel:FindFirstChild(part.Name, true))
end

local function wasControllerDeleted(self)
	return self.TargetModel and not hasController(self.TargetModel)
end

local function wasRigInvalidated(self)
	return self.TargetModel and not verifyRig(self, self.TargetModel)
end

local function showEditor(self, roots)
	self.Paths.UtilityScriptPluginSetup:populateEditor(roots)
	self.Paths.GUIScriptDarkCover:turnOn(false, self)
	self.Paths.GUIScriptDarkCover:showText("")
	self.Paths.GUIScriptDarkCover:showButton(false)
end

local function loadAnimatedModel(self, model)
	self.Paths.GUIScriptDarkCover:turnOn(true, self)
	self.Paths.GUIScriptDarkCover:showText("")
	self.Paths.GUIScriptDarkCover:showButton(false)
	if self.Paths.DataModelRig:hasRig(self.Paths) then
		self.Paths.UtilityScriptPluginSetup:clearEditor()
	end
	showEditor(self, findAllPossibleRoots(model))
end

local function promptForNewModel(self, model)
	self.Paths.GUIScriptDarkCover:turnOn(true, self)
	self.Paths.GUIScriptDarkCover:showText("No animations exist for this rig. Please create one.")
	self.Paths.GUIScriptDarkCover:showButton(true)
	if self.Paths.DataModelRig:hasRig(self.Paths) then
		self.Paths.UtilityScriptPluginSetup:clearEditor()
	end
	self.Paths.GUIScriptDarkCover:setButtonCallback(function()
		local roots = findAllPossibleRoots(model)
		if verifyRig(self, model) then
			showEditor(self, roots)
		end
	end)
end

local function selectRig(self, selection)
	if selectionEmpty(self, selection) then
		if not self.Paths.DataModelRig:hasRig(self.Paths) then
			setToDefaultSelectionState(self)
		elseif wasTargetModelDeleted(self) or doesPartNotExistOnModel(self, self.TargetPart) or wasControllerDeleted(self) or wasRigInvalidated(self) then
			setToDefaultSelectionState(self)
			self.Paths.UtilityScriptPluginSetup:clearEditor(true)
		end
	else
		local item = selection[1]
		if doesPartExistOnModel(self, item) and (item:IsA("BasePart") or item:IsA("Motor6D")) then
			self.TargetPart = item
		end
		if item:IsA("Model") and hasController(item) then
			if item ~= self.TargetModel then
				setTargetModel(self, item)
				self.Paths.ViewportScriptFlyCamera:focusCameraOnModel(game.Workspace.CurrentCamera, item)
				if hasAnimations(item) and verifyRig(self, item) then
					loadAnimatedModel(self, item)
				else
					promptForNewModel(self, item)
				end
			end
		else
			setToDefaultSelectionState(self)
			if self.Paths.DataModelRig:hasRig(self.Paths) then
				self.Paths.UtilityScriptPluginSetup:clearEditor()
			end
		end
	end
end

local function spawnRigSelection(self)
	if not self.Lock then
		self.Lock = true
		spawn(function()
			local selection = self.Paths.Globals.Selection:Get()
			selectRig(self, selection, nil)
			self.Lock = false
		end)
	end
end

function RigSelection:init(Paths)
	self.Paths = Paths
	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	self.newRigEvent = self.Paths.UtilityScriptEvent:new()
	self.TargetModel = nil

	local mouse = self.Paths.Globals.Plugin:GetMouse()
	self.HoverBox = Instance.new("SelectionBox", game.CoreGui)
	self.HoverBox.LineThickness = 0.09

	spawnRigSelection(self)

	self.Connections:add(self.Paths.Globals.Selection.SelectionChanged:Connect(function()
		spawnRigSelection(self)
	end))

	self.Connections:add(mouse.Button1Down:connect(function()
		local target = mouse.Target
		if target then
			local model = getModel(target)
			if model and model ~= self.TargetModel then
				self.Paths.Globals.Selection:Set({model})
			elseif doesPartNotExistOnModel(self, target) and not self.Paths.HelperFunctionsCreation:hasTag(target, self.Paths.DataModelPartManipulator.TagName) then
				self.Paths.Globals.Selection:Set({target})
			end
		end
	end))

	self.MouseTargeterHalt = self.Paths.HelperFunctionsIteration:tick(function()
		local target = mouse.Target
		if target then
			local model = getModel(target)
			if model and model ~= self.TargetModel then
				self.HoverBox.Adornee = model
			elseif doesPartNotExistOnModel(self, target) and not self.Paths.HelperFunctionsCreation:hasTag(target, self.Paths.DataModelPartManipulator.TagName) then
				self.HoverBox.Adornee = target
			else
				self.HoverBox.Adornee = nil
			end
		else
			self.HoverBox.Adornee = nil
		end
	end)
end

function RigSelection:terminate()
	if self.MouseTargeterHalt ~= nil then
		self.MouseTargeterHalt()
		self.MouseTargeterHalt = nil
	end

	self.HoverBox:Destroy()
	self.HoverBox = nil

	self.Connections:disconnectAll()
	self.Connections = nil
	self.Paths = nil
	self.TargetModel = nil
	self.TargetPart = nil
	self.Lock = false
end

return RigSelection