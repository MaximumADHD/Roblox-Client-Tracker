local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
local normalizeFontFace = require(Foundation.Utility.normalizeFontFace)
local TextService = require(Foundation.Utility.Wrappers.Services).TextService

type FontFaceTable = Types.FontFaceTable
type MeasurableFontFace = Font | Enum.Font | FontFaceTable

local function getTextBoundsAsync(text: string, font: MeasurableFontFace, fontSize: number, width: number?): Vector2?
	local normalizedFont = normalizeFontFace(font)
	if typeof(normalizedFont) ~= "Font" then
		return nil
	end

	local params = Instance.new("GetTextBoundsParams")
	params.Text = text
	params.Font = normalizedFont
	params.Size = fontSize
	params.Width = width or math.huge

	local success, result = pcall(function()
		return TextService:GetTextBoundsAsync(params)
	end)
	params:Destroy()

	return if success then result else nil
end

return getTextBoundsAsync
