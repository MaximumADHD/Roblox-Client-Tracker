local Players = game:GetService("Players")

local NAME_COLORS = {
	Color3.new(253 / 255, 41 / 255, 67 / 255), -- BrickColor.new("Bright red").Color,
	Color3.new(1 / 255, 162 / 255, 255 / 255), -- BrickColor.new("Bright blue").Color,
	Color3.new(2 / 255, 184 / 255, 87 / 255), -- BrickColor.new("Earth green").Color,
	BrickColor.new("Alder").Color,
	BrickColor.new("Bright orange").Color,
	BrickColor.new("Bright yellow").Color,
	BrickColor.new("Light reddish violet").Color,
	BrickColor.new("Brick yellow").Color,
}

local function GetNameValue(pName: string)
	local value = 0
	for index = 1, #pName do
		local cValue = string.byte(string.sub(pName, index, index))
		local reverseIndex = #pName - index + 1
		if #pName % 2 == 1 then
			reverseIndex = reverseIndex - 1
		end
		if reverseIndex % 4 >= 2 then
			cValue = -cValue
		end
		value = value + cValue
	end
	return value
end

local color_offset = 0
local function ComputeNameColor(pName)
	return NAME_COLORS[((GetNameValue(pName) + color_offset) % #NAME_COLORS) + 1]
end

local function GetNameColor(userId: number): Color3
	local player: Player = Players:GetPlayerByUserId(userId)
	if player then
		if player.Team ~= nil then
			return player.TeamColor.Color
		end

		return ComputeNameColor(player.Name)
	end

	return Color3.fromRGB(255, 255, 255)
end

return GetNameColor
