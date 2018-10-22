local FFlagStudioEnableCollisionGroupsEditorPlugin = settings():GetFFlag("StudioEnableCollisionGroupsEditorPlugin")

if FFlagStudioEnableCollisionGroupsEditorPlugin then
	local Toolbar = plugin:CreateToolbar("collisionGroupsEditorToolbar")
	local Button = Toolbar:CreateButton("collisionGroupsEditorButton", "Edit collision groups", "rbxasset://textures/CollisionGroupsEditor/ToolbarIcon.png")
	
	local MinX = 128
	local MinY = 256
	
	local Info = DockWidgetPluginGuiInfo.new(
		Enum.InitialDockState.Right,
		false,
		false,
		MinX, MinY,
		MinX, MinY
	)
	local Window = plugin:CreateDockWidgetPluginGui("CollisionGroupsEditorWindow", Info)
	Window.Title = "Collision Groups Editor"
	
	local Roact = require(script.Parent.Parent.Roact)
	local Gui = require(script.Parent.Components.Gui)
	
	Roact.mount(Roact.createElement(Gui, {Window = Window}), Window, "CollisionGroupEditorGui")
	
	function onClicked()
		Window.Enabled = not Window.Enabled
	end
	Button.Click:Connect(onClicked)
end