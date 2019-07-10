-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local StartScreen = {}

function StartScreen:init(Paths)
	self.Paths = Paths
end

local function cleanup(self)
	self.running = false
	
	if nil ~= self.gui then
		for i, v in pairs(self.cleanupEvents) do
			v:disconnect()
		end
		self.cleanupEvents = nil

		self.AnchorButtonOK:terminate()
		self.AnchorButtonOK = nil

		self.AnchorButtonCancel:terminate()
		self.AnchorButtonCancel = nil

		if FastFlags:useQWidgetsForPopupsOn() then
			self.QtWindow:terminate()
			self.QtWindow = nil
		else
			self.AnchorSubWindow:terminate()
			self.AnchorSubWindow = nil
		end

		self.AnchorWarning:Destroy()
		self.AnchorWarning = nil

		self.SelectButton:terminate()
		self.SelectButton = nil			

		self.CancelButton:terminate()
		self.CancelButton = nil

		self.HelpButton:terminate()
		self.HelpButton = nil

		self.selectionBox:Destroy()
		self.selectionBox = nil

		self.hoverBox:Destroy()
		self.hoverBox = nil

		self.gui.Parent = nil
		self.gui:Destroy()
		self.gui = nil
	end
end
	
function StartScreen:terminate()
	cleanup(self)
	self.Paths = nil
end

function StartScreen:isOnScreen()
	return nil ~= self.gui
end

function StartScreen:show(exitFunc)
	local mouse  = self.Paths.Globals.Plugin:GetMouse()
	self.gui = self.Paths.GUIPopUpStartScreen:clone()
	self.selectionBox = Instance.new("SelectionBox", game.CoreGui)
	self.hoverBox = Instance.new("SelectionBox", game.CoreGui)
	self.running = true
	self.selectionBox.Color = BrickColor.new"Teal"
	self.selectionBox.LineThickness = 0.1
	self.hoverBox.LineThickness = 0.09
	local selected = nil
	
	self.CancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.gui.Buttons.Cancel)
	self.SelectButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.gui.Buttons.Select)
	self.HelpButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.gui.Buttons.Help)
	
	self.SelectButton:setEnabled(false)
	self.HelpButton:setEnabled(true)
	self.CancelButton:setEnabled(true)
	
	self.gui.ScriptWarning.Visible = false
	
	self.AnchorWarning = self.Paths.GUIPopUpAnchorWarning:clone()
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Paths.UtilityScriptTheme:setColorsToTheme(self.AnchorWarning)
		self.AnchorSubWindow = self.Paths.GUIScriptSubWindow:new(self.Paths, self.AnchorWarning, self.Paths.Globals.PluginGUI)
		self.AnchorSubWindow:turnOn(false)
		self.AnchorSubWindow.GUI.AnchorPoint = Vector2.new(0.5, 0.5)
		self.AnchorSubWindow.GUI.Position = UDim2.new(0.5, 0, 0.5, 0)
	end
	
	self.cleanupEvents = {}
	
	local function isPlaceSafe()
		local scripts = {}
		local search
		search = function(item)
			for i, v in pairs(item:GetChildren()) do
				if v:IsA("Script") and not v.Disabled then
					table.insert(scripts, v)
				else
					search(v)
				end
			end
		end
		search(workspace)
		search(game.ServerScriptService)
		if #scripts > 0 then
			return false
		end
		return true
	end
	
	local isValidParent = function(p)
		for i, v in pairs(p:GetChildren()) do
			if v:IsA("Humanoid") or v:IsA("AnimationController") then
				return true
			end
		end
		return false
	end
	
	local function getRoot(part)
		if part then
			local base = part:GetRootPart()
			if base and isValidParent(base.Parent) then
				return base
			end
		end			
		return nil
	end
	
	local GetAbsoluteRoot = function(what)
		if not what then return nil end
		local possibleRoot = what:GetRootPart()
		local found = nil
		local getRoot		
		
		getRoot = function(p)
			for i, v in pairs(p:GetChildren()) do
				if v:IsA("Motor6D") and v.Part1 == possibleRoot and isValidParent(v.Parent.Parent) then
					found = v.Part0
				elseif v:IsA("BasePart") or v:IsA("Model") then
					getRoot(v)
				end
			end
		end
			
		if possibleRoot and not isValidParent(possibleRoot.Parent) then
			possibleRoot = nil
		else
			getRoot(possibleRoot.Parent)
		end	
		
		if found then return found end
		return possibleRoot
		
	end

	local isTickFuncRunning = false
	local selectorTickFunc = function()
		isTickFuncRunning = true
		while self.running do
			local target = mouse.target
			self.hoverBox.Adornee = GetAbsoluteRoot(target)
			wait(0.1)
		end
		isTickFuncRunning = false
	end
		
	spawn(selectorTickFunc)
	
	local prefixNoSelection = "Select a rig to animate."
	self.gui.RigName.Text = prefixNoSelection
	local mouseDownEvent = mouse.Button1Down:connect(function()
		local target = GetAbsoluteRoot(mouse.Target)
		selected = target
		self.selectionBox.Adornee = target
		
		if selected then
			self.SelectButton:setEnabled(true)
			self.gui.RigName.Text = selected.Parent.Name .. " Selected"
		else
			self.SelectButton:setEnabled(false)
			self.gui.RigName.Text = prefixNoSelection
		end
	end)
	table.insert(self.cleanupEvents, mouseDownEvent)
	
	local cancelMouseDownConnect = self.gui.Buttons.Cancel.MouseButton1Click:connect(function()
		if self.CancelButton:getEnabled() then
			self.running = false
			cleanup(self)
			exitFunc(nil)
		end
	end)
	table.insert(self.cleanupEvents, cancelMouseDownConnect)
	
	self.AnchorButtonOK = self.Paths.WidgetCustomImageButton:new(self.Paths, self.AnchorWarning.OkCancel.OK)
	self.AnchorButtonCancel = self.Paths.WidgetCustomImageButton:new(self.Paths, self.AnchorWarning.OkCancel.Cancel)
	
	table.insert(self.cleanupEvents, self.AnchorWarning.OkCancel.OK.MouseButton1Click:connect(function()
		selected.Anchored = true					
		cleanup(self)
		exitFunc(selected)
	end))
	
	table.insert(self.cleanupEvents, self.AnchorWarning.OkCancel.Cancel.MouseButton1Click:connect(function()
		cleanup(self)
		exitFunc(selected)
	end))
	
	if not FastFlags:useQWidgetsForPopupsOn() then
		table.insert(self.cleanupEvents, self.AnchorSubWindow.OnCloseEvent:connect(function()
			self.running = true		
			if not isTickFuncRunning then			
				spawn(selectorTickFunc)
			end
		end))
	end
				
	local selectClickConnect = self.gui.Buttons.Select.MouseButton1Click:connect(function()
		if self.SelectButton:getEnabled() then
			self.running = false
			if selected and selected.Anchored == false then
				--Prompt to anchor it
				if FastFlags:useQWidgetsForPopupsOn() then
					self.QtWindow:turnOn(true)
				else
					self.AnchorSubWindow:turnOn(true)
				end
				self.AnchorButtonOK:setEnabled(true)
				self.AnchorButtonCancel:setEnabled(true)
			else
				cleanup(self)
				exitFunc(selected)
			end
		end
	end)
	table.insert(self.cleanupEvents, selectClickConnect)
	
	local helpClickConnect = self.gui.Buttons.Help.MouseButton1Click:connect(function()
		if self.HelpButton:getEnabled() then
			self.Paths.ActionShowContextMenu:execute(self.Paths, self.Paths.ActionShowContextMenu.Type.Help)
		end
	end)
	table.insert(self.cleanupEvents, helpClickConnect)
	
	if not isPlaceSafe() then
		self.gui.ScriptWarning.Visible = true
	end

	if FastFlags:useQWidgetsForPopupsOn() then
		self.QtWindow = self.Paths.GUIScriptQtWindow:new(self.Paths, "Anchor", self.AnchorWarning, function()
			self.running = true		
			if not isTickFuncRunning then			
				spawn(selectorTickFunc)
			end
		end)
		self.QtWindow:turnOn(false)
	end
	
	self.gui.Parent = self.Paths.Globals.PluginGUI
end

return StartScreen