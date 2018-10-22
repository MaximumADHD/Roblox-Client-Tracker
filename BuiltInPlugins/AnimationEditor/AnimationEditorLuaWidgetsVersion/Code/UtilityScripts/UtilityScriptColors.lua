-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local Colors = {}

local function createColor(r, g, b)
	return Color3.new(r/255, g/255, b/255)
end

Colors.Black = createColor(0, 0, 0)
Colors.White = createColor(255, 255, 255)
Colors.Red = createColor(255, 0, 0)
Colors.GreyDisabled = createColor(191, 191, 191)
Colors.GreyDisabledPosOriPopUp = createColor(184, 184, 184)
Colors.GreyTimelineJoint = createColor(245, 245, 245)
Colors.GreyPosOriPopUpInputBorder = createColor(151, 151, 151)
Colors.BluePosOriPopUpInputBorder = createColor(0, 162, 255)
Colors.BlueJointSelected = createColor(95, 138, 208)
Colors.BlueKeyframeSelected = createColor(46, 109, 210)
if FastFlags:isIKModeFlagOn() then
	Colors.PurpleLine = createColor(231, 112, 255)
end
Colors.HoverBlue = createColor(228, 238, 254)
Colors.EasingStyleColors = {
	[Enum.PoseEasingStyle.Constant] = createColor(156, 147, 226),
	[Enum.PoseEasingStyle.Cubic] = createColor(255, 205, 122),
	[Enum.PoseEasingStyle.Linear] =	createColor(187, 187, 182),	
	[Enum.PoseEasingStyle.Bounce] =	createColor(151, 212, 218),
	[Enum.PoseEasingStyle.Elastic] = createColor(168, 214, 113) 
}
Colors.BrickColorInstitutionalWhite = BrickColor.new("Institutional white")
Colors.BrickColorMagenta = BrickColor.new("Magenta")
Colors.BrickColorDeepOrange = BrickColor.new("Deep orange")

return Colors