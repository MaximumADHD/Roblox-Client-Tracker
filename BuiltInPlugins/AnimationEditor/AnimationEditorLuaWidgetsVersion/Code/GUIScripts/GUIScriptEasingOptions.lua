-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local EasingOptions = {}

EasingOptions.TargetWidget = nil

local function initEasingDirection(self)
	local inOpt = self.TargetWidget.EasingDirectionSelectionLine1.In
	local inOutOpt = self.TargetWidget.EasingDirectionSelectionLine1.InOut
	local outOpt = self.TargetWidget.EasingDirectionSelectionLine1.Out
	-- this is just to use shorter variable names ot make the lines below narrower
	local check = self.Paths.WidgetCheckbox
	local radioButton = self.Paths.WidgetRadioButton

	self.directionOptionsEnumToButton = {
		[Enum.PoseEasingDirection.In] = radioButton:new(self.Paths, check:new(self.Paths, inOpt.CheckBox), {inOpt.LabelContainer.In}),
		[Enum.PoseEasingDirection.InOut] = radioButton:new(self.Paths, check:new(self.Paths, inOutOpt.CheckBox), {inOutOpt.LabelContainer.InOut}),
		[Enum.PoseEasingDirection.Out] = radioButton:new(self.Paths, check:new(self.Paths, outOpt.CheckBox), {outOpt.LabelContainer.Out})
	}	
	
	local multiple = self.TargetWidget.EasingDirectionSelectionLine2.Multiple
	self.multipleDirectionsRadioButton = radioButton:new(self.Paths, check:new(self.Paths, multiple.CheckBox), {multiple.LabelContainer.Multiple})

	local buttons = self.Paths.HelperFunctionsTable:getValuesArray(self.directionOptionsEnumToButton)
	table.insert(buttons, self.multipleDirectionsRadioButton)
	self.easingDirectionRadioButtons = self.Paths.WidgetRadioButtonGroup:new(self.Paths, buttons)
	local onDirectionChanged = function(selectedRadioButton)
		if selectedRadioButton ~= self.multipleDirectionsRadioButton then
			self.selectedEasingDirection = selectedRadioButton ~= nil and self.directionOptionsButtonToEnum[selectedRadioButton] or self.selectedEasingDirection
			self.Paths.ActionEditEasingOptions:executeSingle(self.Paths, self.Poses, self.selectedEasingDirection)
		else
			self.selectedEasingDirection = nil
			self.Paths.ActionEditEasingOptions:executeMultiple(self.Paths, self.Poses, self.initialEasingDirections)
		end
	end

	self.directionOptionsButtonToEnum = self.Paths.HelperFunctionsTable:getValuesToKeysTable(self.directionOptionsEnumToButton)
	self.Connections:add(self.easingDirectionRadioButtons.toggledOnEvent:connect(onDirectionChanged))
end

local function initEasingStyle(self)
	local constant = self.TargetWidget.EasingTypeSelectionLine1.Constant
	local cubic = self.TargetWidget.EasingTypeSelectionLine1.Cubic
	local linear = self.TargetWidget.EasingTypeSelectionLine1.Linear	
	local bounce = self.TargetWidget.EasingTypeSelectionLine2.Bounce
	local elastic =	self.TargetWidget.EasingTypeSelectionLine2.Elastic
	-- this is just to use shorter variable names ot make the lines below narrower
	local check = self.Paths.WidgetCheckbox
	local radioButton = self.Paths.WidgetRadioButton
		
	self.styleOptionsEnumToButton = {
		[Enum.PoseEasingStyle.Constant] = radioButton:new(self.Paths, check:new(self.Paths, constant.CheckBox), {constant.LabelContainer.Label, constant.Keyframe}),
		[Enum.PoseEasingStyle.Cubic] = radioButton:new(self.Paths, check:new(self.Paths, cubic.CheckBox), {cubic.LabelContainer.Label, cubic.Keyframe}),
		[Enum.PoseEasingStyle.Linear] =	radioButton:new(self.Paths, check:new(self.Paths, linear.CheckBox), {linear.LabelContainer.Label, linear.Keyframe}),	
		[Enum.PoseEasingStyle.Bounce] =	radioButton:new(self.Paths, check:new(self.Paths, bounce.CheckBox), {bounce.LabelContainer.Label, bounce.Keyframe}),
		[Enum.PoseEasingStyle.Elastic] = radioButton:new(self.Paths, check:new(self.Paths, elastic.CheckBox), {elastic.LabelContainer.Label, elastic.Keyframe}) 
	}

	local multiple = self.TargetWidget.EasingTypeSelectionLine2.Multiple
	self.multipleStylesRadioButton = radioButton:new(self.Paths, check:new(self.Paths, multiple.CheckBox), {multiple.LabelContainer.Label})

	local buttons = self.Paths.HelperFunctionsTable:getValuesArray(self.styleOptionsEnumToButton)
	table.insert(buttons, self.multipleStylesRadioButton)
	self.easingStyleRadioButtons = self.Paths.WidgetRadioButtonGroup:new(self.Paths, buttons)
	local onStyleChanged = function(selectedRadioButton)
		if selectedRadioButton ~= self.multipleStylesRadioButton then
			self.selectedEasingStyle = selectedRadioButton ~= nil and self.styleOptionsButtonToEnum[selectedRadioButton] or self.selectedEasingStyle
			self.Paths.ActionEditEasingOptions:executeSingle(self.Paths, self.Poses, nil, self.selectedEasingStyle)
		else
			self.selectedEasingStyle = nil
			self.Paths.ActionEditEasingOptions:executeMultiple(self.Paths, self.Poses, nil, self.initialEasingStyles)
		end
	end

	self.styleOptionsButtonToEnum = self.Paths.HelperFunctionsTable:getValuesToKeysTable(self.styleOptionsEnumToButton)	
	self.Connections:add(self.easingStyleRadioButtons.toggledOnEvent:connect(onStyleChanged))
end

local function closeAndRevert(self)
	self.SubWindow:turnOn(false)
	self.Paths.ActionEditEasingOptions:executeMultiple(self.Paths, self.Poses, self.initialEasingDirections, self.initialEasingStyles)
end

local function closeAndKeep(self)
	self.SubWindow:turnOn(false)
	-- first go back to how we were when the pop-up window opened
	self.Paths.ActionEditEasingOptions:executeMultiple(self.Paths, self.Poses, self.initialEasingDirections, self.initialEasingStyles)
	-- now make the change from the initial style/direction to the selected style and direction undoable
	self.Paths.ActionEditEasingOptions:executeUndoable(self.Paths, self.Poses, self.selectedEasingDirection, self.selectedEasingStyle)
end

function EasingOptions:init(Paths)
	self.Paths = Paths
	self.TargetWidget = Paths.GUIPopUpEasingOptions:clone()
	self.SubWindow = Paths.GUIScriptSubWindow:new(Paths, self.TargetWidget, Paths.GUIPopUps)
	self.SubWindow:turnOn(false)
	self.Connections = Paths.UtilityScriptConnections:new(Paths)
	
	self.CancelButton = Paths.WidgetCustomImageButton:new(Paths, self.TargetWidget.OkCancel.Cancel)
	self.OKButton = Paths.WidgetCustomImageButton:new(Paths, self.TargetWidget.OkCancel.OK)
	
	initEasingDirection(self)
	initEasingStyle(self)

	self.Connections:add(self.SubWindow.OnCloseEvent:connect(function() closeAndRevert(self) end))
	self.Connections:add(self.TargetWidget.OkCancel.Cancel.MouseButton1Click:connect(function() closeAndRevert(self) end))	
	self.Connections:add(self.TargetWidget.OkCancel.OK.MouseButton1Click:connect(function() 
		if self.OKButton:getEnabled() then
			closeAndKeep(self)
		end 
	end))
	local closeForChanges = function()
		if self.SubWindow and self.SubWindow:isOn() then -- close if anything done while the menu is open, as things could be in a weird state
			closeAndRevert(self)
		end
	end
	self.Connections:add(self.Paths.UtilityScriptUndoRedo.ChangeEvent:connect(closeForChanges))
	self.Connections:add(self.Paths.DataModelSession.SelectedChangeEvent:connect(closeForChanges))
end

function EasingOptions:show(poses)
	self.Poses = poses
	self.initialEasingStyles = {}
	self.initialEasingDirections = {}

	local initialEasingStyle = nil
	local initialEasingDirection = nil
	local multipleEasingStyles = false
	local multipleEasingDirections = false
	for index, pose in ipairs(poses) do
		if index == 1 then
			initialEasingStyle = pose.EasingStyle
			initialEasingDirection = pose.EasingDirection
		else
			if initialEasingStyle ~= pose.EasingStyle then multipleEasingStyles = true end
			if initialEasingDirection ~= pose.EasingDirection then multipleEasingDirections = true end
		end
		self.initialEasingStyles[#self.initialEasingStyles + 1] = pose.EasingStyle
		self.initialEasingDirections[#self.initialEasingDirections + 1] = pose.EasingDirection
	end

	self.SubWindow:turnOn(true)
	self.OKButton:setEnabled(true)

	if multipleEasingStyles then
		self.selectedEasingStyle = nil
		self.easingStyleRadioButtons:check(self.multipleStylesRadioButton)
		self.TargetWidget.EasingTypeSelectionLine2.Multiple.Visible = true
	else
		self.selectedEasingStyle = initialEasingStyle
		self.easingStyleRadioButtons:check(self.styleOptionsEnumToButton[self.selectedEasingStyle])
		self.TargetWidget.EasingTypeSelectionLine2.Multiple.Visible = false
	end

	if multipleEasingDirections then
		self.selectedEasingDirection = nil
		self.easingDirectionRadioButtons:check(self.multipleDirectionsRadioButton)
		self.TargetWidget.EasingDirectionSelectionLine2.Visible = true
	else
		self.selectedEasingDirection = initialEasingDirection
		self.easingDirectionRadioButtons:check(self.directionOptionsEnumToButton[self.selectedEasingDirection])
		self.TargetWidget.EasingDirectionSelectionLine2.Visible = false
	end
end

function EasingOptions:terminate()
	self.easingStyleRadioButtons:terminate()
	self.easingStyleRadioButtons = nil	
	self.styleOptionsEnumToButton = nil				
	self.styleOptionsButtonToEnum = nil
						
	self.easingDirectionRadioButtons:terminate()
	self.easingDirectionRadioButtons = nil
	self.directionOptionsEnumToButton = nil
	self.directionOptionsButtonToEnum = nil	
	
	self.OKButton:terminate()	
	self.CancelButton:terminate()
	
	self.SubWindow:terminate()
	self.SubWindow = nil	
	
	self.TargetWidget:Destroy()
	self.TargetWidget = nil
	self.Paths = nil
end

return EasingOptions