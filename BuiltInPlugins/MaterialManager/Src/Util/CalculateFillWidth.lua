local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

return function(widths: _Types.Array<UDim>, padding: number?, spacing: number?) : UDim
	local offset = 0
	local scale = 0
	local numWidths = 0

	for _, width in ipairs(widths) do
		offset += width.Offset
		scale += width.Scale

		if width.Offset ~= 0 or width.Scale ~= 0 then
			numWidths += 1
		end
	end

	if numWidths == 0 then
		return UDim.new(1, 0)
	end

	offset += (padding or 0) * 2
	offset += (spacing or 0) * (numWidths - 1)

	return UDim.new(1 - scale, -offset)
end
