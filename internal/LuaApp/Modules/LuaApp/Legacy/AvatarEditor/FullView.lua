local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local ToggleAvatarEditorFullView = require(Modules.LuaApp.Actions.ToggleAvatarEditorFullView)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfo)
local SpriteManager = require(Modules.LuaApp.Legacy.AvatarEditor.SpriteSheetManager)
local Tween = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)

return function(FullViewButton)
	FullViewButton.Position = LayoutInfo.FullViewInitialPosition

	local function update(isFullView)
		local image = isFullView and 'ic-collapse' or 'ic-expand'
		SpriteManager.equip(FullViewButton, image)

		if LayoutInfo.isLandscape then
			local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
			local finalPosition = isFullView and UDim2.new(1, -52, 1, -52) or UDim2.new(1, -112, 1, -52)
			local tweenGoals = {
				Position = finalPosition
			}
			Tween(FullViewButton, tweenInfo, tweenGoals)
		end
	end

	AppState.Store.Changed:Connect(function(newState, oldState)
		if newState.FullView ~= oldState.FullView then
			update(newState.FullView)
		end
	end)

	FullViewButton.MouseButton1Click:connect(function()
		AppState.Store:Dispatch(ToggleAvatarEditorFullView())
	end)
end
