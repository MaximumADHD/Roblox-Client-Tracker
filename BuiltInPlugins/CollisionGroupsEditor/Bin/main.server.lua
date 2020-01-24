-- Fast flags
require(script.Parent.defineLuaFlags)

if settings():GetFFlag("StudioUseStandaloneCollisionEditor2") then
	return
end

local StudioDeferCGESelectionListener = game:DefineFastFlag("StudioDeferCGESelectionListener", false)

local AnalyticsService = game:GetService("RbxAnalyticsService")
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

local Roact = require(script.Parent.Parent.modules.Roact)
local Gui = require(script.Parent.Parent.Plugin.Components.Gui)

if StudioDeferCGESelectionListener then
	local mountHandle = nil

	local function widgetEnabledChanged()
		if Window.Enabled then
			mountHandle = Roact.mount(
				Roact.createElement(Gui, {
					Window = Window,
					plugin = plugin
				}),
				Window,
				"CollisionGroupEditorGui"
			)
		else
			if mountHandle then
				Roact.unmount(mountHandle)
			end
		end
	end
	Window:GetPropertyChangedSignal("Enabled"):Connect(widgetEnabledChanged)
	widgetEnabledChanged()
else
	Roact.mount(
		Roact.createElement(Gui, {
			Window = Window,
			plugin = plugin
		}),
		Window,
		"CollisionGroupEditorGui"
	)
end

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
