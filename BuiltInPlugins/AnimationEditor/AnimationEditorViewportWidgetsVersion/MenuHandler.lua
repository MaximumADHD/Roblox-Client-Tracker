local module = {}
local uis = script.Parent.GUIs

---------------------Toggles------------------------
module.toggles = {
	["Interpolation"] = true,
	["TweenCursor"] = true,
	["SelectInvisible"] = false,
	["ShowTooltips"] = true,
}
module.selectedImage = "http://www.roblox.com/asset/?id=620778172"
module.deselectedImage = "http://www.roblox.com/asset/?id=620791039"
module.toggleTrigger = false
module.clickTrigger = false
----------------------------------------------------
---------------------Tooltips-----------------------
module.tooltips = {
	
}

module.activeWindow = nil
module.mouse = nil
module.cleanup = {} -- Events to kill
module.killFunction = nil--If the process is cut short (i.e. the user quits in the middle of a select dialog)


module.space = nil
module.menuHover = false

module.CreateTip = function()
	module.tip = Instance.new("TextLabel")
	module.tip.Size = UDim2.new(0,100,0,30)
	module.tip.Parent = module.space
	module.tip.BackgroundTransparency = 1
	module.tip.TextXAlignment = Enum.TextXAlignment.Left
	module.tip.Text = ""
	module.tip.TextColor3 = Color3.new(1,1,1)
	module.tip.ZIndex = 9
	module.tip.FontSize = Enum.FontSize.Size12
	module.tip.TextStrokeTransparency = 0.6	
end

module.CreateTip()

module.Quit = function()
	for i = #module.cleanup, 1, -1 do
		module.cleanup[i]:disconnect()
	end
	if module.activeWindow then
		module.activeWindow:Destroy()
	end
	if module.killFunction then
		module.killFunction()
		module.killFunction = nil
	end
	module.tooltips = {}
	module.tip.Text = ""
	module.tip.Parent = nil
	module.activeWindow = nil
end

--Returns if the module has a window open. [Used to detect if the editor is closed while picking a root]
module.HasActiveWindow = function()
	return module.activeWindow ~= nil
end

module.SetEasingStyle = function(pose, exitFunction)
	if module.activeWindow == nil then
		local ui = uis.EasingStyle:clone()
		
		--Keep track of initial values in case cancel
		local initialEasingStyle = pose.EasingStyle.Name
		local selectedEasingStyle = pose.EasingStyle.Name
		local initialEasingDirection = pose.EasingDirection.Name
		local selectedEasingDirection = pose.EasingDirection.Name
		
		local function updateColors()
			--Style
			local str = tostring(selectedEasingStyle) == "nil" and "Linear" or selectedEasingStyle
			for i, v in pairs(ui.Styles:GetChildren()) do
				if v:IsA("TextButton") then
					if str == v.Name then
						v.BackgroundColor3 = ui.Styles.SelectedColor.Value
					else
						v.BackgroundColor3 = ui.Styles.DeselectedColor.Value
					end
				end
			end
			--Direction
			str = tostring(selectedEasingDirection) == "nil" and "In" or selectedEasingDirection
			for i, v in pairs(ui.Directions:GetChildren()) do
				if v:IsA("TextButton") then
					if str == v.Name then
						v.BackgroundColor3 = ui.Directions.SelectedColor.Value
					else
						v.BackgroundColor3 = ui.Directions.DeselectedColor.Value
					end
				end
			end	
		end
		
		for i, v in pairs(ui.Styles:GetChildren()) do
			if v:IsA("TextButton") then
				v.MouseButton1Click:connect(function()
					selectedEasingStyle = v.Name --Enum.PoseEasingStyle[v.Name]
					updateColors()
				end)
			end
		end
		
		for i, v in pairs(ui.Directions:GetChildren()) do
			if v:IsA("TextButton") then
				v.MouseButton1Click:connect(function()
					selectedEasingDirection = v.Name --Enum.PoseEasingDirection[v.Name]
					updateColors()
				end)
			end
		end
		
		ui.Submit.MouseButton1Click:connect(function()
			ui:Destroy()
			module.activeWindow = nil
			if pose then
				pose.EasingStyle = Enum.PoseEasingStyle[selectedEasingStyle]
				pose.EasingDirection = Enum.PoseEasingDirection[selectedEasingDirection]
			end
			if exitFunction then exitFunction() end
		end)
		
		ui.Cancel.MouseButton1Click:connect(function()
			ui:Destroy()
			module.activeWindow = nil
			if exitFunction then exitFunction() end
		end)
		
		updateColors()
		
		ui.Parent = module.space
		module.activeWindow = ui
	end
end

module.PromptInput = function(text, defaultText)
	if defaultText == nil then
		defaultText = "<input>"
	end
	if module.activeWindow == nil then
		local gui = script.Parent.GUIs.InputTemplate:clone()
		gui.Parent = module.space
		module.activeWindow = gui
		gui.Title.Text = text
		gui.Input.Text = defaultText
		local done = false
		gui.Submit.MouseButton1Click:connect(function()
			done = true
		end)
		gui.Cancel.MouseButton1Click:connect(function()
			gui.Input.Text = ""
			done = true
		end)
		repeat wait() until done
		local retVal = gui.Input.Text
		module.activeWindow = nil
		gui:Destroy()
		return retVal
	end
end

module.PromptOkCancel = function(text)
	if module.activeWindow == nil then
		local gui = script.Parent.GUIs.OkCancelTemplate:clone()
		gui.Parent = module.space
		module.activeWindow = gui
		gui.Title.Text = text
		local done = false
		local retVal = false
		gui.Submit.MouseButton1Click:connect(function()
			done = true
			retVal = true
		end)
		gui.Cancel.MouseButton1Click:connect(function()
			done = true
			retVal = false
		end)
		repeat wait() until done
		module.activeWindow = nil
		gui:Destroy()
		return retVal
	end
end

module.GetPriority = function(plugin, exitFunction)
	if module.activeWindow == nil then
		local gui = script.Parent.GUIs.Priority:clone()
		gui.Parent = module.space
		
		--What priority they click
		local function setupBtn(btn) 
			module.RegisterTooltip(btn, btn.Tooltip.Value)
			btn.MouseButton1Click:connect(function()
				module.activeWindow = nil
				gui:Destroy()
				exitFunction(btn.Name)
			end)
		end
		
		setupBtn(gui.Core)
		setupBtn(gui.Idle)
		setupBtn(gui.Movement)
		setupBtn(gui.Action)
		
		gui.Help.MouseButton1Click:connect(function()
			plugin:OpenWikiPage("Animations#Priority")
		end)
		
		module.activeWindow = gui
	end
end

module.GetLoop = function(plugin, exitFunction)
	if module.activeWindow == nil then
		local gui = script.Parent.GUIs.Looping:clone()
		gui.Parent = module.space
		
		gui.Help.MouseButton1Click:connect(function()
			plugin:OpenWikiPage("Animations#Looping")
		end)
		
		gui.Yes.MouseButton1Click:connect(function()
			module.activeWindow = nil
			gui:Destroy()
			exitFunction(true)
		end)
		
		gui.No.MouseButton1Click:connect(function()
			module.activeWindow = nil
			gui:Destroy()
			exitFunction(false)
		end)
		
		module.RegisterTooltip(gui.Yes, gui.Yes.Tooltip.Value)
		module.RegisterTooltip(gui.No, gui.No.Tooltip.Value)
		
		module.activeWindow = gui
	end
end

module.GetSaveName = function(rig, exitFunction)
	if module.activeWindow == nil then
		local gui = script.Parent.GUIs.Save:clone()
		
		if rig:findFirstChild("AnimSaves") ~= nil then
			local items = rig.AnimSaves:GetChildren()
			local sf = function(a, b) return a.Name < b.Name end
			table.sort(items, sf)
			local count = 0
			for i, v in pairs(items) do
				if v:IsA("KeyframeSequence") and v.Name ~= "Automatic Save" then
					local btn = gui.Template:clone()
					btn.Text = v.Name
					btn.Position = UDim2.new(0, 0, 0, 23 * (count))
					btn.Parent = gui.ScrollingFrame
					btn.Visible = true
					btn.MouseButton1Click:connect(function()
						gui.TextBox.Text = btn.Text
					end)
					count = count + 1
				end
			end
		end
		
		gui.Save.MouseButton1Click:connect(function()
			local txt = gui.TextBox.Text
			if txt == "<enter name>" then
				exitFunction(nil)
			else
				exitFunction(txt)
			end
			module.activeWindow = nil
			gui:Destroy()
		end)
		
		gui.Cancel.MouseButton1Click:connect(function()
			exitFunction(nil)
			module.activeWindow = nil
			gui:Destroy()
		end)		
		
		local numOverwrite = #gui.ScrollingFrame:GetChildren()
		gui.ScrollingFrame.CanvasSize = UDim2.new(0,0,0,23 * numOverwrite)
		
		gui.Parent = module.space
		module.activeWindow = gui
	end
end

module.GetLoadName = function(rig, exitFunction)
	if module.activeWindow == nil then
		local gui = script.Parent.GUIs.Load:clone()
		
		if rig:findFirstChild("AnimSaves") ~= nil then
			local items = rig.AnimSaves:GetChildren()
			local sf = function(a, b) return a.Name < b.Name end
			table.sort(items, sf)
			local count = 0
			for i, v in pairs(items) do
				if v:IsA("KeyframeSequence") then
					local btn = gui.Template:clone()
					btn.Text = v.Name
					btn.Position = UDim2.new(0, 0, 0, 23 * (count))
					btn.Parent = gui.ScrollingFrame
					btn.Visible = true
					btn.MouseButton1Click:connect(function()
						gui.LoadTitle.Text = btn.Text
					end)
					count = count + 1
				end
			end
		end
		
		gui.Load.MouseButton1Click:connect(function()
			local txt = gui.LoadTitle.Text
			if #txt == 0 then
				exitFunction(nil)
			else
				exitFunction(txt)
			end
			module.activeWindow = nil
			gui:Destroy()
		end)
		
		gui.Cancel.MouseButton1Click:connect(function()
			exitFunction(nil)
			module.activeWindow = nil
			gui:Destroy()
		end)		
		
		local numOverwrite = #gui.ScrollingFrame:GetChildren()
		gui.ScrollingFrame.CanvasSize = UDim2.new(0,0,0,23 * numOverwrite)
		
		gui.Parent = module.space
		module.activeWindow = gui
	end
end

module.SelectRig = function(mouse, plugin, exitFunc)
	if module.activeWindow == nil then
		local sg = Instance.new("ScreenGui", game:GetService("CoreGui"))
		module.mouse = mouse
		local gui = script.Parent.GUIs.StartScreen:clone()
		local selectionBox = Instance.new("SelectionBox", game.CoreGui)
		local hoverBox = Instance.new("SelectionBox", game.CoreGui)
		local running = true
		selectionBox.Color = BrickColor.new"Teal"
		selectionBox.LineThickness = 0.1
		hoverBox.LineThickness = 0.09
		local selected = nil
		
		local cleanupEvents = {}
		
		local function cleanup()
			for i, v in pairs(cleanupEvents) do
				v:disconnect()
			end
			selectionBox:Destroy()
			hoverBox:Destroy()
			gui:Destroy()
			module.activeWindow = nil
		end
		
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
		
		spawn(function()
			while running do
				local target = mouse.target
				hoverBox.Adornee = GetAbsoluteRoot(target)
				wait(0.1)
			end
		end)
		
		local mouseDownEvent = mouse.Button1Down:connect(function()
			local target = GetAbsoluteRoot(mouse.Target)
			selected = target
			selectionBox.Adornee = target
			if selected then
				gui.Select.Visible = true
				gui.RigName.Text = selected.Parent.Name
			else
				gui.Select.Visible = false
				gui.RigName.Text = "<No Rig Selected>"
			end
		end)
		table.insert(cleanupEvents, mouseDownEvent)
		
		gui.Cancel.MouseButton1Click:connect(function()
			running = false
			cleanup()
			exitFunc(nil)
		end)
		
		gui.Select.MouseButton1Click:connect(function()
			running = false
			if selected and selected.Anchored == false then
				--Prompt to anchor it
				gui.Select.Visible = false
				gui.Cancel.Visible = false
				gui.Help.Visible = false
				gui.AnchorWarning.Visible = true
				gui.ScriptWarning.Visible = false
				local done = false
				local answer = false
				local aw = gui.AnchorWarning
				aw.Yes.MouseButton1Click:connect(function()
					answer = true
					done = true
				end)
				aw.No.MouseButton1Click:connect(function()
					answer = false
					done = true
				end)
				while not done do wait() end
				if answer == true then
					selected.Anchored = true
				end
			end
			module.killFunction = nil
			cleanup()
			exitFunc(selected)
		end)
		
		gui.Help.MouseButton1Click:connect(function()
			plugin:OpenWikiPage("Animations")
		end)
		
		if not isPlaceSafe() then
			gui.ScriptWarning.Visible = true
		end
		
		gui.Parent = sg
		module.activeWindow = gui
		module.killFunction = function() cleanup() end
	end
end

module.GetStopRequest = function(callback)
	local gui = script.Parent.GUIs.PlayFrame:clone()
	gui.Parent = module.space
	local function stop()
		gui:Destroy()
	end
	
	--Callback. This is if the user prompts the play to stop.
	gui.Cancel.MouseButton1Click:connect(function()
		stop()
		callback()
	end)
	
	--The returned method is if the editor informs us to stop. (The animation reached the end)
	return stop
end

module.RegisterTooltip = function(button, ttip)
	local tooltip = {btn = button, tip = ttip}
	table.insert(module.tooltips, tooltip)
end

module.InitializeTooltips = function()
	local tooltipEvent = game:GetService("UserInputService").InputChanged:connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement and module.toggles["ShowTooltips"] == true then
				local potential = {}
				local x = input.Position.X
				local y = input.Position.Y
				for i = #module.tooltips, 0, -1 do
					local v = module.tooltips[i]
					if v and v.btn ~= nil and v.btn.Parent ~= nil then
						if v.btn.Visible and (v.btn.Parent:IsA("ScreenGui") == true or v.btn.Parent.Visible) then
							local minx = v.btn.AbsolutePosition.X
							local miny = v.btn.AbsolutePosition.Y
							local maxx = minx + v.btn.AbsoluteSize.X
							local maxy = miny + v.btn.AbsoluteSize.Y
							if x >= minx and x <= maxx and y >= miny and y <= maxy then
								table.insert(potential, v)
							end 
						end
					else
						table.remove(module.tooltips, i)
					end
				end
				module.tip.Position = UDim2.new(0, x, 0, y)
				if #potential == 1 then
					local str = potential[1].tip
					--local size = game:GetService("TextService"):GetTextSize(str, Enum.FontSize.Size12, Enum.Font.Legacy, Vector2.new(0,0))
					module.tip.Text = str
					module.tip.BackgroundTransparency = 0
					local desiredXSize = module.tip.TextBounds.X + 5
					local desiredXPos = x + 15
					if desiredXPos + desiredXSize > game.Workspace.CurrentCamera.ViewportSize.X then
						desiredXPos = desiredXPos - (desiredXPos + desiredXSize - game.Workspace.CurrentCamera.ViewportSize.X)
					end
					module.tip.Size = UDim2.new(0, desiredXSize, 0, module.tip.TextBounds.Y + 5)
					module.tip.Position = UDim2.new(0, desiredXPos, 0, y + 15)
					--module.tip.Size = UDim2.new(0, size.X, 0, 30)
				else
					module.tip.Text = ""
					module.tip.BackgroundTransparency = 1
				end
			else
				module.tip.Text = ""
				module.tip.BackgroundTransparency = 1
			end
		end)
		table.insert(module.cleanup, tooltipEvent)
end

module.InitializeSettings = function(defaults)
	for i, v in pairs(defaults) do
		module.toggles[i] = v
	end
end

module.InitializeTopbar = function(timeline, canOpenFunc, openFunc, closeFunc, fireFunc, valueRequest)
	--Space
	module.space = Instance.new("Frame")
	module.space.BackgroundTransparency = 1
	module.space.Name = "AnimationEditorMenuModule"	
	module.space.Size = UDim2.new(1,0,1,0)
	module.space.Parent = timeline.Parent
	--
	local tb = script.Parent.GUIs.Topbar:clone()
	tb.Parent = timeline
	if module.tip.Parent ~= nil then
		module.tip.Parent = timeline
	else
		module.CreateTip()
	end
	
	--Artist Commands
	local fbxFlagExists, fbxFlagValue = pcall(function () return settings():GetFFlag("DebugStudioRigImporter") end)
	------------------------------------
	if fbxFlagExists and fbxFlagValue == true then
		tb.FileFrame.Size = tb.FileFrame.Size + UDim2.new(0,0,0,30)
	else
		tb.FileFrame.FBXImport:Destroy()
	end
	--
	
	local function updateSettingToggles()
		for i, v in pairs(module.toggles) do
			tb.SettingsFrame[i].ImageLabel.Image = v == true and module.selectedImage or module.deselectedImage
		end
	end
	
	local function updateValues()
		for i, v in pairs(tb.FileFrame:GetChildren()) do
			if v:findFirstChild("CurrentValue") then
				v.CurrentValue.Text = "["..tostring(valueRequest(v.Name)).."]"
			end
		end
		for i, v in pairs(tb.EditFrame:GetChildren()) do
			if v:findFirstChild("CurrentValue") then
				v.CurrentValue.Text = "["..tostring(valueRequest(v.Name)).."]"
			end
		end
		for i, v in pairs(tb.SettingsFrame:GetChildren()) do
			if v:findFirstChild("CurrentValue") then
				v.CurrentValue.Text = "["..tostring(valueRequest(v.Name)).."]"
			end
		end
	end
	
	local function hoverOver()
		tb.File.MouseEnter:connect(function()
			if module.menuHover then
				module.activeWindow = tb.FileFrame
				tb.FileFrame.Visible = true
				tb.EditFrame.Visible = false
				tb.SettingsFrame.Visible = false
			end
		end)
		
		tb.Edit.MouseEnter:connect(function()
			if module.menuHover then
				module.activeWindow = tb.EditFrame
				tb.FileFrame.Visible = false
				tb.EditFrame.Visible = true
				tb.SettingsFrame.Visible = false
			end
		end)
		
		tb.Settings.MouseEnter:connect(function()
			if module.menuHover then
				module.activeWindow = tb.SettingsFrame
				tb.FileFrame.Visible = false
				tb.EditFrame.Visible = false
				tb.SettingsFrame.Visible = true
			end
		end)
	end
	
	local function isToggle(btn)
		for i, v in pairs(module.toggles) do
			if btn.Name == i then
				return true
			end
		end
		return false
	end
	
	local function fireCommands()
		for i, v in pairs(tb.FileFrame:GetChildren()) do
			local doClick = function()
				module.activeWindow = nil
				spawn(function() module.clickTrigger = true fireFunc(v.Name) end)	
			end
			v.MouseButton1Down:connect(function()
				doClick()
			end)
			if v:findFirstChild("ImageLabel") then
				v.ImageLabel.InputBegan:connect(function(uio, proc)
					if not proc and uio.UserInputType == Enum.UserInputType.MouseButton1 then
						doClick()
					end
				end)
			end
			--Register tooltip
			if v:findFirstChild("Tooltip") then
				module.RegisterTooltip(v, v.Tooltip.Value)
			end
		end
		for i, v in pairs(tb.EditFrame:GetChildren()) do
			local doClick = function()
				module.activeWindow = nil
				spawn(function() module.clickTrigger = true fireFunc(v.Name) end)	
			end

			v.MouseButton1Down:connect(function()
				doClick()
			end)
			if v:findFirstChild("ImageLabel") then
				v.ImageLabel.InputBegan:connect(function(uio, proc)
					if not proc and uio.UserInputType == Enum.UserInputType.MouseButton1 then
						doClick()
					end
				end)
			end
			--Register tooltip
			if v:findFirstChild("Tooltip") then
				module.RegisterTooltip(v, v.Tooltip.Value)
			end
		end
		for i, v in pairs(tb.SettingsFrame:GetChildren()) do
			local doClick = function()
				if isToggle(v) then
					module.toggles[v.Name] = not module.toggles[v.Name]
					module.toggleTrigger = true
					updateSettingToggles()
					spawn(function() fireFunc(v.Name, module.toggles[v.Name]) end)
				else
					module.activeWindow = nil
					spawn(function() module.clickTrigger = true fireFunc(v.Name) end)
				end				
			end
			v.MouseButton1Down:connect(function()
				doClick()
			end)
			if v:findFirstChild("ImageLabel") then
				v.ImageLabel.InputBegan:connect(function(uio, proc)
					if not proc and uio.UserInputType == Enum.UserInputType.MouseButton1 then
						doClick()
					end
				end)
			end	
			--Register tooltip
			if v:findFirstChild("Tooltip") then
				module.RegisterTooltip(v, v.Tooltip.Value)
			end
		end
	end
	
	local function quit()
		if tb:findFirstChild("FileFrame") then tb.FileFrame.Visible = false end
		if tb:findFirstChild("EditFrame") then tb.EditFrame.Visible = false end
		if tb:findFirstChild("SettingsFrame") then tb.SettingsFrame.Visible = false end
		module.activeWindow = nil
	end
	
	tb.File.MouseButton1Click:connect(function()
		updateValues()
		if module.activeWindow == nil and canOpenFunc() then
			module.activeWindow = tb.FileFrame
			module.menuHover = true
			tb.FileFrame.Visible = true
		end
	end)
	
	tb.Edit.MouseButton1Click:connect(function()
		updateValues()
		if module.activeWindow == nil and canOpenFunc() then
			module.activeWindow = tb.EditFrame
			module.menuHover = true
			tb.EditFrame.Visible = true
		end		
	end)
	
	tb.Settings.MouseButton1Click:connect(function()
		updateValues()
		if module.activeWindow == nil and canOpenFunc() then
			module.activeWindow = tb.SettingsFrame
			module.menuHover = true
			tb.SettingsFrame.Visible = true
		end
	end)
	
	game:GetService("UserInputService").InputBegan:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			wait()
			if not module.toggleTrigger then
				if module.menuHover then
					module.menuHover = false
					wait()
					quit()
					if not module.clickTrigger then
						closeFunc()
					else
						module.clickTrigger = false
					end
				end
			else
				module.toggleTrigger = false
			end
		end
	end)
	
	hoverOver()
	fireCommands()
	updateSettingToggles()
end

return module
