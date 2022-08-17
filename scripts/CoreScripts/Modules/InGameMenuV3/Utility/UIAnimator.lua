local TweenService = game:GetService("TweenService")

local UIAnimator = {}
UIAnimator.__index = UIAnimator
UIAnimator.ReversibleTweens = {
	Fade = function()
		return {
			from = {
				GroupTransparency = 0,
			},
			to = {
				GroupTransparency = 1,
			},
		}
	end,
	VerticalCollapse = function(instance, maxHeight)
		return {
			from = {
				Size = UDim2.new(
					instance.Size.X.Scale,
					instance.Size.X.Offset,
					instance.Size.Y.Scale,
					maxHeight
				),
			},
			-- Setting offset to 1 for minHeight as 0 does not work currently with CanvasGroup
			to = {
				Size = UDim2.new(
					instance.Size.X.Scale,
					instance.Size.X.Offset,
					instance.Size.Y.Scale,
					1
				),
			},
		}
	end,
}

function UIAnimator:new()
  return setmetatable({
		tweens = {},
	}, self)
end

function UIAnimator:_pauseAllPlayingTweens(instance)
	if instance and self.tweens[instance] then
		for tweenName, tween in self.tweens[instance] do
			if typeof(tween) == "Tween" then
				if tween.PlaybackState == Enum.PlaybackState.Playing then
					tween:Pause()
				end
			elseif typeof(tween) == "table" then
				for name, tweenInstance in tween do
					if tweenInstance.PlaybackState == Enum.PlaybackState.Playing then
						tweenInstance:Pause()
					end
				end
			end
		end
	end
end

function UIAnimator:addTween(instance, name, props, tweenInfo)
	if instance == nil then
		return
	end

	if self.tweens[instance] == nil then
		self.tweens[instance] = {}
	end

	local tween = TweenService:Create(instance, tweenInfo, props)
	self.tweens[instance][name] = tween
	return tween
end

function UIAnimator:playTween(instance, name)
	if instance and self.tweens[instance] and self.tweens[instance][name] and typeof(self.tweens[instance][name]) == "Instance" then
		self.tweens[instance][name]:Play()
	end
end

function UIAnimator:playReversibleTween(instance, name, isReverse)
	if instance == nil or self.tweens[instance] == nil or self.tweens[instance][name] == nil then
		return
	end

	local tweens = self.tweens[instance][name]
	if tweens.fromTween and tweens.toTween then
		if isReverse then
			tweens.fromTween:Play()
		else
			tweens.toTween:Play()
		end
	end
end

function UIAnimator:removeAllTweens(instance)
	if instance and self.tweens[instance] ~= nil then
		table.clear(instance)
	end
end

function UIAnimator:playTweens(instance, names)
	self:_pauseAllPlayingTweens(instance)
	for i = 1, #names do
		self:playTween(instance, names[i])
	end
end

function UIAnimator:addReversibleTween(instance, name, transitions, tweenInfo)
	if instance == nil then
		return
	end

	if self.tweens[instance] == nil then
		self.tweens[instance] = {}
	end

	local tweens = {
		fromTween = TweenService:Create(instance, tweenInfo, transitions.from),
		toTween = TweenService:Create(instance, tweenInfo, transitions.to),
	}

	self.tweens[instance][name] = tweens
	return tweens
end

function UIAnimator:playReversibleTweens(instance, names, isReverse)
	self:_pauseAllPlayingTweens(instance)

	if type(names) == "table" then
		for i = 1, #names do
			self:playReversibleTween(instance, names[i], isReverse)
		end
	else
		self:playReversibleTween(instance, names, isReverse)
	end
end

return UIAnimator
