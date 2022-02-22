--[[
	Progress bar for currently playing audio

	Required Props
		number assetId: used to mark selected asset
		number currentSoundId: used to check the assetType

	Optional Props
		UDim2 AnchorPoint: The anchorpoint of the component
		number LayoutOrder: The layoutOrder of the component
		UDim2 Position: The position of the component
		UDim2 Size: The size of the component
]]
local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util

local AudioProgressBar = Roact.PureComponent:extend("AudioProgressBar")

function AudioProgressBar:init()
	self.progress = 0
end

function AudioProgressBar:shouldUpdate(nextProps, nextState)
	return not (nextProps.currentSoundId ~= nextProps.assetId and self.progress == 0)
end

function AudioProgressBar:render()
	local props = self.props

	local anchorPoint = props.AnchorPoint
	local assetId = props.assetId
	local currentSoundId = props.currentSoundId
	local layoutOrder = props.LayoutOrder
	local elapsedTime = props.elapsedTime
	local position = props.Position
	local size = props.Size
	local totalTime = props.totalTime

	local progressBarColor = props.Stylizer.progressBarColor

	self.progress = 0
	if totalTime ~= nil and totalTime ~= 0 and currentSoundId == assetId then
		self.progress = elapsedTime / totalTime
	end

	return Roact.createElement("Frame", {
		AnchorPoint = anchorPoint,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
	}, {
		ProgressBar = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundColor3 = progressBarColor,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 0.5, 0),
			Size = UDim2.new(self.progress, 0, 1, 0),
		}),
	})
end

local function mapStateToProps(state, props)
	state = state or {}

	local sound = state.sound or {}
	return {
		elapsedTime = sound.elapsedTime or 0,
		totalTime = sound.totalTime or 0,
	}
end

AudioProgressBar = withContext({
	Stylizer = ContextServices.Stylizer,
})(AudioProgressBar)

return RoactRodux.connect(mapStateToProps, nil)(AudioProgressBar)
