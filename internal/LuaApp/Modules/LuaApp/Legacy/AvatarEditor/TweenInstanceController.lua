local TweenService = game:GetService('TweenService')

local function createTween(obj, tweenInfo, propGoals, propStarts)
	if obj and obj:IsA("Instance") and tweenInfo and next(propGoals) ~= nil then
		local tweenGoals = {}
		for prop, propGoal in pairs(propGoals) do
			tweenGoals[prop] = propGoal
		end

		if propStarts and next(propStarts) ~= nil then
			for prop, propStart in pairs(propStarts) do
				obj[prop] = propStart
			end
		end

		local tween = TweenService:Create(obj, tweenInfo, tweenGoals)
		tween.Completed:Connect(function()
			tween = nil
		end)
		tween:Play()

		return tween
	end
end

return createTween
