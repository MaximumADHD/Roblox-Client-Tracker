return function(instanceOrRect)
	local typeOf = typeof(instanceOrRect)
	if typeOf == "Rect" then
		return instanceOrRect
	elseif typeOf == "Instance" then
		return Rect.new(
			instanceOrRect.AbsolutePosition,
			instanceOrRect.AbsolutePosition + instanceOrRect.AbsoluteSize
		)
	end
end
