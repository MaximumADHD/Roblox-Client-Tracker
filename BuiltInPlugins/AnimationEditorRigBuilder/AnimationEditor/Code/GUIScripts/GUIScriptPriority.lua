-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local Priority = {}

function Priority:init(Paths)
	self.Paths = Paths
end

local function destroyGUI(self)
	if nil ~= self.Connections then
		self.Connections:terminate()
		self.Connections = nil		
	end
	
	if nil ~= self.KillScreenUtil then
		self.KillScreenUtil:terminate()
		self.KillScreenUtil = nil
	end
	
	if nil ~= self.GUI then
		self.GUI.Parent = nil
		self.GUI:Destroy()
		self.GUI = nil

		self.CoreButton:terminate()
		self.ActionButton:terminate()
		self.MovementButton:terminate()
		self.Idle:terminate()
	end

	if FastFlags:useQWidgetsForPopupsOn() then
		if self.QtWindow then
			self.QtWindow:terminate()
			self.QtWindow = nil
		end
	end
end

function Priority:show()
	self.GUI = self.Paths.GUIPopUpPriority:clone()
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)
		self.KillScreenUtil = self.Paths.WidgetKillScreen:new(self.Paths, self.GUI.KillScreen, true)
	end
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

	if FastFlags:useQWidgetsForPopupsOn() then
		self.QtWindow = self.Paths.GUIScriptQtWindow:new(self.Paths, "Priority", self.GUI, function() destroyGUI(self) end)
		self.QtWindow:turnOn(true)
	end

	self.CoreButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Core)
	self.ActionButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Action)
	self.MovementButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Movement)
	self.Idle = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Idle)
	
	--What priority they click
	local function setupBtn(btn)
		self.Connections:add(btn.MouseButton1Click:connect(function()
			destroyGUI(self)
	
			if btn.Name ~= self.Paths.DataModelClip:getPriority() then
				self.Paths.ActionSetPriority:execute(self.Paths, btn.Name)
			end
		end))
	end
	
	setupBtn(self.GUI.Core)
	setupBtn(self.GUI.Idle)
	setupBtn(self.GUI.Movement)
	setupBtn(self.GUI.Action)
	
	self.Connections:add(self.GUI.Help.MouseButton1Click:connect(function()
		if FastFlags:isUseDevHubHelpLinksOn() then
			self.Paths.ActionShowContextMenu:execute(self.Paths, self.Paths.ActionShowContextMenu.Type.Help)
		else
			self.Paths.Globals.Plugin:OpenWikiPage("Animations#Priority")
		end
	end))
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Connections:add(self.KillScreenUtil.OnKillEvent:connect(function() destroyGUI(self) end))
		
		self.GUI.Parent = self.Paths.GUIPopUps
	end
end

function Priority:terminate()
	self.Paths = nil
end

return Priority