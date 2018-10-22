-- singleton

local Widget = {}

function Widget:isLayout(obj)
	return obj.ClassName == 'UIListLayout'
end

function Widget:isFrame(obj)
	return obj.ClassName == 'Frame'
end

function Widget:areAntecendentsVisible(obj)
	local objIter = obj
	while objIter and "PluginGui" ~= objIter.ClassName do
		if not objIter.Visible then
			return false
		end
		objIter = objIter.Parent
	end
	return true
end

function Widget:getAbsoluteCenter(obj)
	return Vector2.new(obj.AbsolutePosition.X+(obj.AbsoluteSize.X*0.5), obj.AbsolutePosition.Y+(obj.AbsoluteSize.Y*0.5))
end

function Widget:getAbsoluteBottom(obj)
	return obj.AbsolutePosition.Y+obj.AbsoluteSize.Y
end

function Widget:toLocalSpaceOffset(obj, absolutePos)
	return Vector2.new(absolutePos.X-obj.AbsolutePosition.X, absolutePos.Y-obj.AbsolutePosition.Y)
end

function Widget:getTextWidth(Paths, text, textWidget)
	return Paths.Globals.TextService:GetTextSize(text, textWidget.TextSize, textWidget.Font, textWidget.AbsoluteSize).X
end

function Widget:getTextHeight(Paths, text, textWidget)
	return Paths.Globals.TextService:GetTextSize(text, textWidget.TextSize, textWidget.Font, textWidget.AbsoluteSize).Y
end

return Widget