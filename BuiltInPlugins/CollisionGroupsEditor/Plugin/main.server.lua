local AnalyticsService = game:GetService("AnalyticsService")
local Opened = false

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

local Roact = require(script.Parent.Parent.modules.roact)
local Gui = require(script.Parent.Components.Gui)

Roact.mount(Roact.createElement(Gui, {Window = Window}), Window, "CollisionGroupEditorGui")

function onClicked()
	Window.Enabled = not Window.Enabled

	-- report an opening if we were just opened
	if Window.Enabled then
		reportOpening()
	end
end
Button.Click:Connect(onClicked)

-- in case the window was open when the place started, we
-- can report that the user started the place with it open
-- note: I don't know if this works, but it should
if Window.Enabled then
	reportOpening()
end