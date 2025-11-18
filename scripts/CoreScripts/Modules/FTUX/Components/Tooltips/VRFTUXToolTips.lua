local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local IsVRAppBuild = require(CorePackages.Workspace.Packages.AppCommonLib).IsVRAppBuild
local React = require(CorePackages.Packages.React)

local RunService = game:GetService("RunService")
local ToolTip = require(script.Parent.ToolTip)

local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)

type TooltipButton = {
	Text: string,
	Controller: Enum.UserCFrame,
	ButtonKeycode: Enum.KeyCode,
}

type TooltipPart = {
	Button: TooltipButton,
	Part: BasePart,
}

type Props = {
	tooltipButtons: { TooltipButton },
}

local TooltipParts: { TooltipPart } = {}

local function onRenderStepped(deltaTime)
	if IsVRAppBuild() then
		for _, Tooltip in pairs(TooltipParts) do
			local controller = VRHub:GetControllerModel(Tooltip.Button.Controller)
			local controllerButtonPosition
			if controller then
				controllerButtonPosition = controller:getButtonPosition(Tooltip.Button.ButtonKeycode)
			end

			if Tooltip.Part then
				if controller == nil or controllerButtonPosition == nil then
					Tooltip.Part.Position = Vector3.new(-99999, -99999, -99999) -- Hide Tooltip
					continue
				end

				Tooltip.Part.Position = controllerButtonPosition
			end
		end
	end
end

function spawnTooltipPart()
	local part = Instance.new("Part")
	part.Name = "TooltipPart"
	part.Position = Vector3.new(0, -100, 0)
	part.Anchored = true
	part.CanCollide = false
	part.Transparency = 1
	part.Size = Vector3.new(0.1, 0.1, 0.1)
	part.Parent = game.Workspace

	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Parent = part
	BillboardGui.Adornee = part
	BillboardGui.AlwaysOnTop = true
	BillboardGui.Active = false
	BillboardGui.Size = UDim2.new(1, 0, 1, 0)

	return part
end

function showTooltipText(TooltipPart: TooltipPart)
	for i, v in ipairs(TooltipPart.Part:GetDescendants()) do
		if v:IsA("TextLabel") and v.Name == "Body" then
			v.ZIndex = 10
		end
	end
end

function Tooltips(props: Props)
	for key, button in pairs(props.tooltipButtons) do
		TooltipParts[key] = {
			Button = button,
			Part = spawnTooltipPart(),
		}
	end

	React.useEffect(function()
		for i, part in pairs(TooltipParts) do
			showTooltipText(part)
		end
	end, {})

	RunService.RenderStepped:Connect(onRenderStepped)

	return React.createElement(
		"Frame",
		{},
		LuauPolyfill.Array.map(TooltipParts, function(item, index)
			return React.createElement(ToolTip, {
				controllerPart = item.Part,
				tooltipText = props.tooltipButtons[index].Text,
			}) :: any
		end) :: any
	)
end

return Tooltips
