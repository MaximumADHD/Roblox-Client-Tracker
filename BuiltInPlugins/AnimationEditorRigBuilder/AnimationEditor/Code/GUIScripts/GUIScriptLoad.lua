-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local Load = {}

function Load:init(Paths)
	self.Paths = Paths
end

local function destroyGUI(self)
	if nil ~= self.Connections then
		self.Connections:terminate()
		self.Connections = nil		
	end
	
	if not FastFlags:useQWidgetsForPopupsOn() then
		if nil ~= self.KillScreenUtil then
			self.KillScreenUtil:terminate()
			self.KillScreenUtil = nil
		end
	end
	
	if nil ~= self.GUI then
		self.GUI.Parent = nil
		self.GUI:Destroy()
		self.GUI = nil

		self.LoadButton:terminate()	
		self.CancelButton:terminate()
	end

	if not FastFlags:useQWidgetsForPopupsOn() then
		if nil ~= self.resize then
			self.resize:terminate()
			self.resize = nil
		end
	end

	if FastFlags:useQWidgetsForPopupsOn() then
		if self.QtWindow then
			self.QtWindow:terminate()
			self.QtWindow = nil
		end
	end
end

local function exitFunction(self, name)
	if name ~= nil and name ~= "" then
		self.Paths.DataModelClip:loadCurrentAnimation(name)
		if FastFlags:isIKModeFlagOn() and self.Paths.DataModelIKManipulator.IsIKModeActive then
			self.Paths.HelperFunctionsWarningsAndPrompts:createApplyIKPromptForLoad(self.Paths)
		end
	end
	destroyGUI(self)
end

function Load:show()
	local gui = self.Paths.GUIPopUpLoad:clone()
	self.GUI = gui
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)
		self.KillScreenUtil = self.Paths.WidgetKillScreen:new(self.Paths, gui.KillScreen, true)
	end
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

	self.CancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Cancel)
	self.LoadButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Load)
	self.LoadButton:setEnabled(false)

	local hasAnimSaves = nil
	if FastFlags:isEnableRigSwitchingOn() then
		hasAnimSaves = self.Paths.DataModelRig:getModel():FindFirstChild("AnimSaves") ~= nil
	else
		hasAnimSaves = self.Paths.DataModelRig:getItem().Item.Parent:FindFirstChild("AnimSaves") ~= nil
	end

	if hasAnimSaves then
		local items = nil
		if FastFlags:isEnableRigSwitchingOn() then
			items = self.Paths.DataModelRig:getModel().AnimSaves:GetChildren()
		else
			items = self.Paths.DataModelRig:getItem().Item.Parent.AnimSaves:GetChildren()
		end
		local sf = function(a, b) return a.Name < b.Name end
		table.sort(items, sf)
		local count = 0
		for i, v in pairs(items) do
			if v:IsA("KeyframeSequence") then
				local btn = gui.Template:clone()
				btn.Text = v.Name
				btn.Position = UDim2.new(0.5, 0, 0, 23 * (count))
				btn.Parent = gui.ScrollingFrame
				btn.Visible = true
				self.Connections:add(btn.MouseButton1Click:connect(function()
					gui.LoadTitle.Text = btn.Text
					if self.SelectedButton then
						self.SelectedButton.BackgroundColor3 = self.Paths.UtilityScriptTheme:GetBackgroundColor()
						self.SelectedButton.TextColor3 = self.Paths.UtilityScriptTheme:GetTextColor()
					end
					self.SelectedButton = btn
					self.SelectedButton.BackgroundColor3 = self.Paths.UtilityScriptTheme:GetJointSelectedColor()
					self.SelectedButton.TextColor3 = self.Paths.UtilityScriptTheme:GetHighlightedTextColor()
					self.LoadButton:setEnabled(true)
				end))

				self.Connections:add(btn.MouseEnter:connect(function(x, y)
					if btn ~= self.SelectedButton then
						btn.BackgroundColor3 = self.Paths.UtilityScriptTheme:GetHoverColor()

					end
				end))

				self.Connections:add(btn.MouseLeave:connect(function(x, y)
					if btn ~= self.SelectedButton then
						btn.BackgroundColor3 = self.Paths.UtilityScriptTheme:GetBackgroundColor()
					end
				end))
				count = count + 1
			end
		end
	end
	
	self.Connections:add(gui.Load.MouseButton1Click:connect(function()
		local txt = gui.LoadTitle.Text
		if self.LoadButton:getEnabled() then
			exitFunction(self, txt)
		end
	end))
	
	local cancelFunc = function()
		exitFunction(self, nil)
	end	
		
	self.Connections:add(gui.Cancel.MouseButton1Click:connect(cancelFunc))
	if FastFlags:useQWidgetsForPopupsOn() then
		if FastFlags:isFixAnimationsWithLongNamesOn() then
			self.QtWindow = self.Paths.GUIScriptQtWindow:new(self.Paths, "Load", self.GUI, cancelFunc, Vector2.new(200, 300), true)
		else
			self.QtWindow = self.Paths.GUIScriptQtWindow:new(self.Paths, "Load", self.GUI, cancelFunc)
		end
		self.QtWindow:turnOn(true)
	else
		self.Connections:add(self.KillScreenUtil.OnKillEvent:connect(cancelFunc))	

		local numOverwrite = #gui.ScrollingFrame:GetChildren()
		gui.ScrollingFrame.CanvasSize = UDim2.new(0,0,0,23 * numOverwrite)

		gui.Parent = self.Paths.GUIPopUps

		local minHeight = 150
		self.resize = self.Paths.UtilityScriptResize:new(gui, minHeight, self.Paths.GUIScrollingJointTimeline)
	end
end

function Load:terminate()
	destroyGUI(self)
	self.Paths = nil
end

return Load
