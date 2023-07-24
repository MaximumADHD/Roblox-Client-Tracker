--!strict
local CorePackages = game:GetService("CorePackages")

local Logging = require(CorePackages.Logging)

local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local TextButton = UIBlox.App.Button.TextButton

local TnsModule = script.Parent.Parent

local EndReportFlow = require(TnsModule.Actions.EndReportFlow)
local Constants = require(TnsModule.Resources.Constants)
local GetFFlagReportAnythingDebugCanvas = require(TnsModule.Flags.GetFFlagReportAnythingDebugCanvas)

local DebugCanvas = React.PureComponent:extend("DebugCanvas")

local POINT_SIZE = 4
local POINT_OFFSET = -1 * (POINT_SIZE / 2)

function DebugCanvas:render()
	if not GetFFlagReportAnythingDebugCanvas() or not self.props.identifiedAvatars then
		return React.createElement("Frame", {Size = UDim2.fromScale(0, 0)})
	end

	local children = {}
	for userId, v in pairs(self.props.identifiedAvatars) do
		local bb = v.boundingBox
		children[#children + 1] = React.createElement("Frame", {
			Position = UDim2.fromScale(bb.min.X, bb.min.Y),
			Size = UDim2.fromScale(bb.max.X - bb.min.X, bb.max.Y - bb.min.Y),
			BackgroundTransparency = 0.8,
			BackgroundColor3 = Color3.fromRGB(20, 0, 255 * v.hitRate),
		})
		local lhp = #v.convexHull
		for ihp, hp in v.convexHull do
			children[#children + 1] = React.createElement("Frame", {
				Position = UDim2.new(hp.X, POINT_OFFSET, hp.Y, POINT_OFFSET),
				Size = UDim2.fromOffset(POINT_SIZE, POINT_SIZE),
				BackgroundTransparency = 0.2,
				BackgroundColor3 = Color3.fromHSV(ihp / lhp, 1, 0.65),
			})
		end
	end
	
	for adId, v in pairs(self.props.identifiedAds) do
		local bb = v.boundingBox
		children[#children + 1] = React.createElement("Frame", {
			Position = UDim2.fromScale(bb.min.X, bb.min.Y),
			Size = UDim2.fromScale(bb.max.X - bb.min.X, bb.max.Y - bb.min.Y),
			BackgroundTransparency = 0.8,
			BackgroundColor3 = Color3.fromRGB(20, 0, 255),
		})
		local hulls = v.visibleRegions 
		for _, hull in hulls do 
			local lhp = #hull.convexHull
			for ihp, hp in hull.convexHull do
				children[#children + 1] = React.createElement("Frame", {
					Position = UDim2.new(hp.X, POINT_OFFSET, hp.Y, POINT_OFFSET),
					Size = UDim2.fromOffset(POINT_SIZE, POINT_SIZE),
					BackgroundTransparency = 0.2,
					BackgroundColor3 = Color3.fromHSV(ihp / lhp, 1, 0.65),
				})
				
			end
		end
		
	end
	return React.createElement("Frame", {
		BackgroundTransparency = 0.9,
		Size = UDim2.fromScale(1, 1),
		ZIndex = self.props.ZIndex
	}, children)
end

return DebugCanvas
