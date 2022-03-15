local defaultDelayMillis = 0

game:DefineFastInt("FullscreenTitleBarTriggerDelayMillis", defaultDelayMillis)

return function()
	local delay = game:GetFastInt("FullscreenTitleBarTriggerDelayMillis")
	if delay < 0 then
		delay = defaultDelayMillis
	end
	return delay
end
