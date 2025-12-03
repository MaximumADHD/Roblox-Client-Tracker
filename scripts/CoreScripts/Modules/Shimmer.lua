-- add a shimmer effect to the parent GuiObject on CoreGui
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local TweenService = game:GetService("TweenService")
local Constants = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Constants

local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, false, 0)

local Shimmer = {}
Shimmer.__index = Shimmer

local shimmerStyles = {
	["PrimaryButton"] = function(parent)
		return Create 'ImageLabel' {
			Name = "ShimmerFrame",
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 0.7,
			ClipsDescendants = true,
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			Visible = false,
			Parent = parent,
			ZIndex = 8,
			Create 'ImageLabel' {
				Name = "Shimmer",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 2, 0),
				Position = UDim2.new(-1, 0, 0, 0),
				Image = Constants.SHIMMER_TEXTURE,
				BorderSizePixel = 0,
				ZIndex = 8,
			},
			Create 'ImageLabel' {
				Name = "ShimmerOverlay",
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(8, 8, 9, 9),
				ImageColor3 = Constants.COLORS.FLINT,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = Constants.OVERLAY_TEXTURE,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 9,
			},
		}
	end
}

function Shimmer.new(parent, style)
	if not style or not shimmerStyles[style] then
		return
	end
	local self = setmetatable({}, Shimmer)
	self._shimmer = shimmerStyles[style](parent)
	self._shimmerAnimation = TweenService:Create(self._shimmer.Shimmer, tweenInfo, {Position = UDim2.new(1, 0, 0, 0)})
	return self
end

function Shimmer:play()
	self._shimmer.Visible = true
	self._shimmerAnimation:Play()
end

function Shimmer:stop()
	self._shimmerAnimation:Cancel()
	self._shimmer.Visible = false
end

return Shimmer
