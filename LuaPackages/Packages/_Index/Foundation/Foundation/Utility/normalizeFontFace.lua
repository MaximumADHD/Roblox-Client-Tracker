local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local ReactIs = require(Packages.ReactIs)

local Types = require(Foundation.Components.Types)

type Bindable<T> = Types.Bindable<T>
type FontFace = Types.FontFace
type FontFaceTable = Types.FontFaceTable

local function normalizeFontFace(fontFace: FontFace?): Bindable<Font>?
	if typeof(fontFace) == "table" then
		if ReactIs.isBinding(fontFace) then
			return fontFace :: Bindable<Font>
		end
		local fontFaceTable = fontFace :: FontFaceTable
		return Font.new(fontFaceTable.Family, fontFaceTable.Weight, fontFaceTable.Style)
	elseif typeof(fontFace) == "EnumItem" then
		if fontFace == Enum.Font.Unknown then
			return nil
		end
		return Font.fromEnum(fontFace)
	end

	return fontFace
end

return normalizeFontFace
