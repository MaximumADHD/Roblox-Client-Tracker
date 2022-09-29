local TweenService = game:GetService("TweenService")

type Table = { [string]: any }

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

local TWEEN_ACTION_NAMES = {
	Pause = 'Pause',
	Cancel = 'Cancel',
	Play = 'Play',
	Reset = 'Reset'
}

local getInstanceOriginalProps = function (instance: Instance, props: Table): Table
	local originalProps = {}
	for propName in pairs(props) do
		local attribute = (instance::any)[propName]
		if attribute ~= nil then
			originalProps[propName] = attribute
		end
	end
	return originalProps
end

local restoreInstanceOriginalProps = function (instance: Instance, originalProps: Table)
	for propName in pairs(originalProps) do
		(instance::any)[propName] = originalProps[propName]
	 end
end

local executeForTween = function (tween, actionName)
	if actionName == TWEEN_ACTION_NAMES.Pause then
		if tween.PlaybackState == Enum.PlaybackState.Playing then
			tween:Pause()
		end
	elseif actionName == TWEEN_ACTION_NAMES.Cancel or actionName == TWEEN_ACTION_NAMES.Reset then
		if tween.PlaybackState == Enum.PlaybackState.Playing then
			tween:Cancel()
		end
	elseif actionName == TWEEN_ACTION_NAMES.Play then
		if tween.PlaybackState ~= Enum.PlaybackState.Playing then
			tween:Play()
		end
	end
end

local UITween = {}
UITween.__index = UITween

function UITween:new(instance, tweenInfo, props)
	return setmetatable({
		isReversible = false,
		originalProps = getInstanceOriginalProps(instance, props),
		tween = TweenService:Create(instance, tweenInfo, props),
	}, self)
end

function UITween:Execute(instance, actionName)
	executeForTween(self.tween, actionName)
	if actionName == TWEEN_ACTION_NAMES.Reset then
		restoreInstanceOriginalProps(instance, self.originalProps)
	end
end

local UIReversibleTween = {}
UIReversibleTween.__index = UIReversibleTween

function UIReversibleTween:new(instance, tweenInfo, transitions)
	return setmetatable({
		isReversible = true,
		originalProps = transitions.from,
		fromTween = TweenService:Create(instance, tweenInfo, transitions.from),
		toTween = TweenService:Create(instance, tweenInfo, transitions.to),
	}, self)
end

function UIReversibleTween:Execute(instance, actionName)
	executeForTween(self.fromTween, actionName)
	executeForTween(self.toTween, actionName)
	if actionName == TWEEN_ACTION_NAMES.Reset then
		restoreInstanceOriginalProps(instance, self.originalProps)
	end
end

function UIReversibleTween:Play(isReverse)
	if isReverse then
		executeForTween(self.fromTween, TWEEN_ACTION_NAMES.Play)
	else
		executeForTween(self.toTween, TWEEN_ACTION_NAMES.Play)
	end
end

function UIAnimator:new()
	return setmetatable({
		tweens = {},
	}, self)
end

function UIAnimator:_executeForAllTweensOnInstance(instance, actionName)
	if instance and self.tweens[instance] then
		for tweenName, uiTween in self.tweens[instance] do
			uiTween:Execute(instance, actionName)
		end
	end
end

function UIAnimator:_executeForAllTweens(actionName)
	for instance in pairs(self.tweens) do
		self:_executeForAllTweensOnInstance(instance, actionName)
	end
end

function UIAnimator:playAllTweens()
	self:_executeForAllTweens(TWEEN_ACTION_NAMES.Play)
end

function UIAnimator:cancelAllTweens()
	self:_executeForAllTweens(TWEEN_ACTION_NAMES.Cancel)
end

function UIAnimator:resetAllTweens()
	self:_executeForAllTweens(TWEEN_ACTION_NAMES.Reset)
end

function UIAnimator:pauseAllTweens()
	self:_executeForAllTweens(TWEEN_ACTION_NAMES.Pause)
end

function UIAnimator:pauseAllTweensOnInstance(instance)
	self:_executeForAllTweensOnInstance(instance, TWEEN_ACTION_NAMES.Pause)
end

function UIAnimator:playAllTweensOnInstance(instance)
	self:_executeForAllTweensOnInstance(instance, TWEEN_ACTION_NAMES.Play)
end

function UIAnimator:cancelAllTweensOnInstance(instance)
	self:_executeForAllTweensOnInstance(instance, TWEEN_ACTION_NAMES.Cancel)
end

function UIAnimator:addTween(instance, name, props, tweenInfo)
	if instance == nil then
		return
	end

	if self.tweens[instance] == nil then
		self.tweens[instance] = {}
	end

	if self.tweens[instance][name] == nil then
		self.tweens[instance][name] = UITween:new(instance, tweenInfo, props)
	end

	return self.tweens[instance][name].tween
end

function UIAnimator:getUITween(instance, name)
	if instance and self.tweens[instance] then
		return self.tweens[instance][name]
	end
	return nil
end

function UIAnimator:pauseTween(instance, name)
	local uiTween = self:getUITween(instance, name)
	if uiTween then
		uiTween:Execute(instance, TWEEN_ACTION_NAMES.Pause)
	end
end

function UIAnimator:playTween(instance, name)
	local uiTween = self:getUITween(instance, name)
	if uiTween then
		uiTween:Execute(instance, TWEEN_ACTION_NAMES.Play)
	end
end

function UIAnimator:playReversibleTween(instance, name, isReverse)
	local uiTween = self:getUITween(instance, name)
	if uiTween and uiTween.isReversible then
		uiTween:Play(isReverse)
	end
end

function UIAnimator:removeAllTweens(instance)
	if instance and self.tweens[instance] ~= nil then
		table.clear(self.tweens[instance])
	end
end

function UIAnimator:playTweens(instance, names)
	self:pauseAllTweensOnInstance(instance)
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

	if self.tweens[instance][name] == nil then
		self.tweens[instance][name] = UIReversibleTween:new(instance, tweenInfo, transitions)
	end
	return self.tweens[instance][name]
end

function UIAnimator:playReversibleTweens(instance, names, isReverse)
	self:pauseAllTweensOnInstance(instance)

	if type(names) == "table" then
		for i = 1, #names do
			self:playReversibleTween(instance, names[i], isReverse)
		end
	else
		self:playReversibleTween(instance, names, isReverse)
	end
end

return UIAnimator
