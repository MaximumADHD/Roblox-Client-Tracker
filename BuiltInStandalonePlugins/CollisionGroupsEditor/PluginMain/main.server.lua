
local Roact = require(script.Parent.Parent.modules.Roact)
local Gui = require(script.Parent.Parent.Plugin.Components.Gui)

local MinX = 128
local MinY = 256

local Opened = false

local AnalyticsService = game:GetService("RbxAnalyticsService")

FFlagSupportPluginDebugging = settings():GetFFlag("SupportPluginDebugging")

local function reportOpening()
	if Opened then return end
	AnalyticsService:ReportCounter("cgeOpenings", 1)
	AnalyticsService:SendEventDeferred("studio", "collisionGroupsEditor", "opening", {
		method = 1, --studio tab
		gameId = game.GameId,
		uid = plugin:GetStudioUserId(),
	})
	Opened = true
end

local Toolbar = plugin:CreateToolbar("collisionGroupsEditorToolbar")
local Button = Toolbar:CreateButton("collisionGroupsEditorButton", "Edit collision groups", "rbxasset://textures/CollisionGroupsEditor/ToolbarIcon.png")

local function updateButtonActive(button, pluginGui)
	if pluginGui.Enabled then
	  button:SetActive(true)
	else
	  button:SetActive(false)
	end
end

local Info = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Right,
	false,
	false,
	MinX, MinY,
	MinX, MinY
)

local Window = nil
local RoactHandle = nil

local function handleDMSession(dmSession)
	if (Window == nil) then 
		Window = plugin:CreateDockWidgetPluginGui("CollisionGroupsEditorWindow", Info)
		Window.Title = "Collision Groups Editor"
		
		updateButtonActive(Button, Window)

		-- Listen for changes in plugin gui visibility to keep toolbar button
		-- active state synced.
		Window:GetPropertyChangedSignal("Enabled"):connect(function(property)
			updateButtonActive(Button, Window)
		end)

		RoactHandle = Roact.mount(
			Roact.createElement(Gui, {
				Window = Window,
				plugin = plugin
			}),
			Window,
			"CollisionGroupEditorGui"
		)	
	end

	-- in case the window was open when the place started, we
	-- can report that the user started the place with it open
	-- note: I don't know if this works, but it should
	if Window.Enabled then
		reportOpening()
	end
end

-- Lurk: wait until we create DM session before creating UI.
plugin.MultipleDocumentInterfaceInstance.DataModelSessionStarted:connect(function(dmSession)
	handleDMSession(dmSession)
end)

if (FFlagSupportPluginDebugging) then 	
	-- Usually standalone plugin scripts are loaded before we've created any place session, 
	-- so listening for "new place session" from MultipleDocumentInterfaceInstance is sufficient.
	-- With the advent of plugin debugging, we load standalone plugins again each time we open 
	-- a place.  So we have a situation where MultipleDocumentInterfaceInstance already has a 
	-- place session before plugin is loaded -> DataModelSessionStarted will never hit.
	-- So we have to explicitly check if we already have a DM session.
	if (plugin.MultipleDocumentInterfaceInstance.FocusedDataModelSession) then 
		handleDMSession(plugin.MultipleDocumentInterfaceInstance.FocusedDataModelSession)
	end
end

-- If place session ends and we have a gui, destroy it.
plugin.MultipleDocumentInterfaceInstance.DataModelSessionEnded:connect(function(dmSession)
	if (Window ~= nil) then 
		Roact.unmount(RoactHandle)
		RoactHandle = nil
		Window:Destroy()
		Window = nil
	end
end)

function onClicked()
	-- Theoretically not possible, the button isn't available to users unless 
	-- place session has started, at which point we have a Window.
	-- Still, just to be safe, check for Window == nil.
	if (Window == nil) then 
		return
	end

	Window.Enabled = not Window.Enabled
	if (Window.Enabled) then 
		-- Reasonable time to update view.
		plugin:Invoke("WindowEnabled", "true")
	end

	-- report an opening if we were just opened
	if Window.Enabled then
		reportOpening()
	end
end
Button.Click:Connect(onClicked)

