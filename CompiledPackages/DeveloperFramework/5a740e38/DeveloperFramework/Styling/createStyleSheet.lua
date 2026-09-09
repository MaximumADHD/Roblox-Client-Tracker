local StylingService = game:GetService("StylingService")

local Styling = script.Parent
local Framework = Styling.Parent
local shouldOrderStyleRulesByInsertion = require(Styling.shouldOrderStyleRulesByInsertion)
local getClosestColorSystemColor = require(Framework.Style.getClosestColorSystemColor)

local FFlagDevFrameworkParentStylesToDm = require(Framework.SharedFlags.getFFlagDevFrameworkParentStylesToDm)()
local FFlagDebugDeveloperFrameworkSdk = game:GetFastFlag("DebugDeveloperFrameworkSdk")

local function createStyleSheet(
	name: string,
	rules: { StyleRule? }?,
	tokens: { [string]: any }?,
	derives: { StyleSheet }?
)
	local sheet = Instance.new("StyleSheet")
	sheet.Name = name
	if FFlagDevFrameworkParentStylesToDm then
		sheet.Parent = StylingService
	end
	if tokens then
		for name, token in tokens do
			if typeof(token) == "Color3" then
				local closestColor, category, colorName = getClosestColorSystemColor(token)
				if FFlagDebugDeveloperFrameworkSdk and token ~= closestColor then
					print(
						("[DebugDeveloperFrameworkSdk] Stylesheet rule %s: (%s) replaced with the closest color system color %s[%s]: (%s)"):format(
							tostring(name),
							tostring(token),
							category,
							colorName,
							tostring(closestColor)
						)
					)
				end
				sheet:SetAttribute(name, closestColor)
			elseif typeof(token) == "ColorSequence" then
				local points: { ColorSequenceKeypoint } = {}
				for _, point in token.Keypoints do
					local closestColor, category, colorName = getClosestColorSystemColor(point.Value)
					if FFlagDebugDeveloperFrameworkSdk and token ~= closestColor then
						print(
							("[DebugDeveloperFrameworkSdk] Stylesheet rule %s: (%s) replaced color sequence color with the closest color system color %s[%s]: (%s)"):format(
								tostring(name),
								tostring(token),
								category,
								colorName,
								tostring(closestColor)
							)
						)
					end
					table.insert(points, ColorSequenceKeypoint.new(point.Time, closestColor))
				end
				sheet:SetAttribute(name, ColorSequence.new(points))
			else
				sheet:SetAttribute(name, token)
			end
		end
	end
	if rules then
		local hasOnlyZeros
		if not pcall(function()
			hasOnlyZeros = shouldOrderStyleRulesByInsertion(rules)
		end) then
			error(`Zero priorities mixed with non-zero priorities in StyleRule children for StyleSheet: {name}`)
		end
		for _, style in rules do
			if hasOnlyZeros then
				sheet:InsertStyleRule(style, #sheet:GetStyleRules())
			else
				style.Parent = sheet
			end
		end
	end
	if derives then
		sheet:SetDerives(derives)
	end
	return sheet
end

return createStyleSheet
