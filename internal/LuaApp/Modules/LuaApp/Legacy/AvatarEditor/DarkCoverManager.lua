local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local tween = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)

return function(DarkCover, CategoryMenu)
	local function showDarkCover()
		DarkCover.ZIndex = 5
		DarkCover.Visible = true
		local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
		local propGoals = {
			BackgroundTransparency = 0.4
		}
		tween(DarkCover, tweenInfo, propGoals)
	end

	local function hideDarkCover()
		local tweenInfo = TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)

		local propGoals = {
			BackgroundTransparency = 1
		}

		utilities.fastSpawn(tween, DarkCover, tweenInfo, propGoals).Completed:Connect(function()
			DarkCover.Visible = false
		end)
	end

	DarkCover.MouseButton1Click:connect(function()
		CategoryMenu:closeTopMenu()
	end)

	CategoryMenu.openCategoryMenuEvent:Connect(function()
		showDarkCover()
	end)

	CategoryMenu.closeCategoryMenuEvent:Connect(function()
		hideDarkCover()
	end)
end

