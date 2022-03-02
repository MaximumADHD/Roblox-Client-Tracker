-- set transparency on lc clothes, lc avatar, or cages
local Plugin = script.Parent.Parent.Parent
local ModelUtil = require(Plugin.Src.Util.ModelUtil)
local ItemCharacteristics = require(Plugin.Src.Util.ItemCharacteristics)

local function setTransparency(item, transparency)
	transparency = tonumber(transparency)
	transparency = ModelUtil.transparencyFromLCEditorToProperty(transparency)
	if not item then
		warn("Try to modify transparency on nil")
		return
	end

	if not item.Parent then
		warn("Item isn't parented to anything.")
		return
	end

	if item:IsA("MeshPart") then
		if ItemCharacteristics.isAvatar(item) then
			item = item.Parent
		else
			item.Transparency = transparency
			return
		end
	end

	if item:IsA("Model") then
		-- for lc avatar, set transparency of all its children mesh parts
		for _, v in pairs(item:GetChildren()) do
			if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
				v.Transparency = transparency
			end
		end
		for _, v in pairs(item:GetDescendants()) do
			if v:IsA("Decal") and v.Name == "face" then
				v.Transparency = transparency
			end
		end
	else
		-- todo: check if item is a cage
		warn("Try to modify transparency on inavlid item "..item.Name)
	end
end

return setTransparency