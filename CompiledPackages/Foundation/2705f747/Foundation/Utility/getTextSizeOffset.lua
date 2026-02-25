local Foundation = script:FindFirstAncestor("Foundation")
local TextService = require(Foundation.Utility.Wrappers).Services.TextService
local noYield = require(Foundation.Utility.noYield)

local function getTextSizeOffset(): number?
	return noYield(function(fontSize, font): number?
		fontSize = fontSize or 0
		font = font or Font.fromEnum(Enum.Font.BuilderSans)

		local success, newTextSizeOffset = pcall(function()
			return TextService:GetTextSizeOffsetAsync(fontSize, font)
		end)
		if not success then
			return nil
		end
		return newTextSizeOffset
	end)
end

return getTextSizeOffset
