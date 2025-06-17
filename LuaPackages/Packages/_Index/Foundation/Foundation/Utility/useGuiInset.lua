local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)
local Wrappers = require(Foundation.Utility.Wrappers)
local Connection = Wrappers.Connection
local Instance = Wrappers.Instance
local Signal = Wrappers.Signal
local GuiService = Wrappers.Services.GuiService
local UserInputService = Wrappers.Services.UserInputService

local function getGuiInset(): Rect
	local topLeftInset, bottomRightInset = GuiService:GetGuiInset()

	return Rect.new(topLeftInset, bottomRightInset)
end

local function useGuiInset(): Rect
	local guiInset, setGuiInset = React.useState(function()
		return getGuiInset()
	end)

	local updateGuiInset = React.useCallback(function()
		setGuiInset(getGuiInset())
	end, {})

	React.useEffect(function()
		local connections: { RBXScriptConnection } = {}

		if isPluginSecurity() then
			connections = {
				Signal.Connect(GuiService.SafeZoneOffsetsChanged, updateGuiInset),
				Signal.Connect(Instance.GetPropertyChangedSignal(UserInputService, "BottomBarSize"), updateGuiInset),
				Signal.Connect(Instance.GetPropertyChangedSignal(UserInputService, "RightBarSize"), updateGuiInset),
			}
		end

		return function()
			for _, connection in connections do
				Connection.Disconnect(connection)
			end
		end
	end, {})

	return guiInset
end

return useGuiInset
