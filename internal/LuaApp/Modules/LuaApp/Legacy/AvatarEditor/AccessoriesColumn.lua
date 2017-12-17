local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local UnequipAsset = require(Modules.LuaApp.Actions.UnequipAsset)

local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfo)
local AssetInfo = require(Modules.LuaApp.Legacy.AvatarEditor.AssetInfo)
local Strings = require(Modules.LuaApp.Legacy.AvatarEditor.LocalizedStrings)
local categories = require(Modules.LuaApp.Legacy.AvatarEditor.Categories)
local tween = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)
local Urls = require(Modules.LuaApp.Legacy.AvatarEditor.Urls)


local accessoriesColumn = nil
local longPressMenu = nil

local NUMBER_OF_ALLOWED_HATS = 3

local userInputService = game:GetService('UserInputService')

local currentHats = {}
local this = {}


local function getCurrentHats()
	return AppState.Store:GetState().Character.Assets.Hat or {}
end

local function updateAccessoriesColumnVisuals()
	currentHats = getCurrentHats()
	for i = 1, NUMBER_OF_ALLOWED_HATS do
		local accessoryButton = accessoriesColumn:FindFirstChild('AccessoryButton'..tostring(i))
		if accessoryButton then
			local assetId = currentHats[i]
			if assetId then
				if accessoryButton.Image ~= Urls.assetImageUrl..tostring(assetId) then
					local numberOfHatsScale = (i - 1)/(NUMBER_OF_ALLOWED_HATS - 1)
					delay(numberOfHatsScale * 0.25, function()
						local basePosition =
							LayoutInfo.isLandscape
							and UDim2.new(0, 0, 0, 84 * (i - 1))
							or UDim2.new(0.5, -24, numberOfHatsScale, numberOfHatsScale * -48)

						local tweenInfoDown = TweenInfo.new(
							0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
						local tweenInfoUp = TweenInfo.new(
							0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0)

						tween(
							accessoryButton,
							tweenInfoDown,
							{
								Position = basePosition + UDim2.new(0, 0, 0, 15)
							}
						).Completed:Connect(
							function()
								tween(accessoryButton, tweenInfoUp, { Position = basePosition })
							end
						)
						accessoryButton.Image = Urls.assetImageUrl..tostring(currentHats[i])
					end)
				end
			else
				if accessoryButton.Image ~= '' then
					local tweenInfoLeft = TweenInfo.new(
						0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
					local tweenInfoRight = TweenInfo.new(
						0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
					local tweenInfoMiddle =
						LayoutInfo.isLandscape
						and tweenInfoLeft
						or TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0)

					local basePosition =
						LayoutInfo.isLandscape
						and UDim2.new(0, 0, 0, 84 * (i - 1))
						or UDim2.new(0.5, -24, accessoryButton.Position.Y.Scale, accessoryButton.Position.Y.Offset)

					tween(accessoryButton, tweenInfoLeft,
						{
							Position = basePosition + UDim2.new(0, -15, 0, 0)
						}
					).Completed:Connect(
						function()
							tween(accessoryButton, tweenInfoRight,
									{ Position = basePosition + UDim2.new(0, 15, 0, 0) }).Completed:Connect(
									function()
										tween(accessoryButton, tweenInfoMiddle, { Position = basePosition })
									end
							)
						end
					)

					accessoryButton.Image = ''
				end
			end

			local fadeIcon = accessoryButton:FindFirstChild('FadeIcon')	--This is the faded icon of an accessory
			if fadeIcon then
				fadeIcon.Visible = not assetId	--Make the faded icon visible if there is no asset in the slot
			end
		end
	end
end

local function updateViewMode(isFullView)
	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
	if isFullView then
		if LayoutInfo.isLandscape then
			tween(accessoriesColumn, tweenInfo, { Position = UDim2.new(0, -156, 0, 76) })
		else
			tween(accessoriesColumn, tweenInfo, { Position = UDim2.new(-0.1, -50, 0.05, 0) })
		end
	else
		if LayoutInfo.isLandscape then
			tween(accessoriesColumn, tweenInfo, { Position = UDim2.new(0, 56,0, 76) })
		else
			tween(accessoriesColumn, tweenInfo, { Position = UDim2.new(0.05, 25, 0.05, 0) })
		end
	end
end

local function updateState(newState, oldState)
	if newState.FullView ~= oldState.FullView then
		updateViewMode(newState.FullView)
	end

	-- Either CategoryIndex changed (by selecting new category) or TabsInfo changed (by selecting new tab)
	if newState.Category.CategoryIndex ~= oldState.Category.CategoryIndex or
		newState.Category.TabsInfo ~= oldState.Category.TabsInfo then
		local categoryIndex = newState.Category.CategoryIndex
		local tabInfo = categoryIndex and newState.Category.TabsInfo[categoryIndex]
		local tabIndex = tabInfo and tabInfo.TabIndex or 1
		local desiredPage = categories[categoryIndex].pages[tabIndex]
		accessoriesColumn.Visible = desiredPage.name == 'Hats'
	end

	if newState.Character.Assets.Hat ~= oldState.Character.Assets.Hat then
		updateAccessoriesColumnVisuals()
	end
end

local function init()
	if LayoutInfo.isLandscape then
		accessoriesColumn.AnchorPoint = Vector2.new(0, 0)
		accessoriesColumn.Position = UDim2.new(0, 24, 0, 24)
		accessoriesColumn.Size = UDim2.new(0, 60, 0.3, 30)
		for i = 1, 3 do
			accessoriesColumn['AccessoryButton'..i].Position = UDim2.new(0.5, -30, 0, (i - 1) * 84)
			accessoriesColumn['AccessoryButton'..i].Size = UDim2.new(0, 60, 0, 60)
		end
	end

	currentHats = getCurrentHats()
	for index = 1, NUMBER_OF_ALLOWED_HATS do
		local accessoryButton = accessoriesColumn:WaitForChild('AccessoryButton'..tostring(index))
		if accessoryButton then

			local takeOffFunction = function()
				local assetId = currentHats[index]
				if assetId then
					longPressMenu:hideMenu()
					AppState.Store:Dispatch(UnequipAsset(AssetInfo.getAssetType(assetId), assetId))
				end
			end

			local showMenuFunction = function()
				local assetId = currentHats[index]
				if assetId then
					longPressMenu:showMenu({text = Strings:LocalizedString("TakeOffWord"), func = takeOffFunction}, assetId)
				end
			end

			local clickFunction = function()
				if userInputService:IsKeyDown(Enum.KeyCode.Q) then
					showMenuFunction()
				else
					takeOffFunction()
				end
			end

			accessoryButton.MouseButton1Click:connect(clickFunction)
			accessoryButton.TouchLongPress:connect(showMenuFunction)
		end
	end
end

return function(inAccessoriesColumn, inLongPressMenu)
	accessoriesColumn = inAccessoriesColumn
	longPressMenu = inLongPressMenu
	init()

	AppState.Store.Changed:Connect(updateState)

	return this
end

