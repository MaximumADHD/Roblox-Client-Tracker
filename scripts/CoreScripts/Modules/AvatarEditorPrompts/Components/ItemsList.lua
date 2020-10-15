local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local AvatarExperienceDeps = require(CorePackages.AvatarExperienceDeps)
local Text = require(CorePackages.AppTempCommon.Common.Text)

local RoactFitComponents = AvatarExperienceDeps.RoactFitComponents
local FitTextLabel = RoactFitComponents.FitTextLabel
local VerticalScrollView = UIBlox.App.Container.VerticalScrollView
local withStyle = UIBlox.Style.withStyle
local ShimmerPanel = UIBlox.Loading.ShimmerPanel
local EmptyState = UIBlox.App.Indicator.EmptyState

local AvatarEditorPrompts = script.Parent.Parent
local GetAssetNamesFromDescription = require(AvatarEditorPrompts.GetAssetNamesFromDescription)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local PADDING_BETWEEN = 10
local BULLET_POINT_SYMBOL = "• "

local GRADIENT_HEIGHT = 30

local ItemsList = Roact.PureComponent:extend("ItemsList")

ItemsList.validateProps = t.strictInterface({
	humanoidDescription = t.instanceOf("HumanoidDescription"),
})

function ItemsList:init()
	self:setState({
		canvasSizeY = 0,
		loading = true,
		assetNames = nil,
	})

	self.mounted = false

	self.frameRef = Roact.createRef()
	self.topGradientVisibleBinding, self.updateTopGradientVisibleBinding = Roact.createBinding(false)
	self.bottomGradientVisibleBinding, self.updateBottomGradientVisibleBinding = Roact.createBinding(false)

	self.onContentSizeChanged = function(rbx)
		self:setState({
			canvasSizeY = rbx.AbsoluteContentSize.Y
		})
	end

	self.firstEntryPositionChanged = function(rbx)
		local frame = self.frameRef:getValue()
		if not frame then
			return
		end

		if rbx.AbsolutePosition.Y < frame.AbsolutePosition.Y then
			self.updateTopGradientVisibleBinding(true)
		else
			self.updateTopGradientVisibleBinding(false)
		end
	end

	self.lastEntryPositionChanged = function(rbx)
		local frame = self.frameRef:getValue()
		if not frame then
			return
		end

		local entryMaxPosition = rbx.AbsolutePosition.Y + rbx.AbsoluteSize.Y
		local frameMaxPosition = frame.AbsolutePosition.Y + frame.AbsoluteSize.Y
		if entryMaxPosition > frameMaxPosition then
			self.updateBottomGradientVisibleBinding(true)
		else
			self.updateBottomGradientVisibleBinding(false)
		end
	end

	self.loadAssetNames = function()
		coroutine.wrap(function()
			GetAssetNamesFromDescription(self.props.humanoidDescription):andThen(function(assetNames)
				if self.mounted then
					self:setState({
						loading = false,
						assetNames = assetNames,
					})
				end
			end, function(err)
				if self.mounted then
					self:setState({
						loading = false,
						assetNames = Roact.None,
					})
				end
			end)
		end)()
	end

	self.onRetryLoading = function()
		self:setState({
			loading = true,
		})

		self.loadAssetNames()
	end
end

function ItemsList:renderItemsList()
	return withStyle(function(stylePalette)
		local fontInfo = stylePalette.Font
		local theme = stylePalette.Theme

		local font = fontInfo.CaptionBody.Font
		local fontSize = fontInfo.BaseSize * fontInfo.CaptionBody.RelativeSize
		local list = {}

		local bulletPointWidth = Text.GetTextWidth(BULLET_POINT_SYMBOL, font, fontSize)

		list.Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Padding = UDim.new(0, PADDING_BETWEEN),
			SortOrder = Enum.SortOrder.LayoutOrder,

			[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
		})

		for i, assetName in ipairs(self.state.assetNames) do
			local positionChangeFunction
			if i == 1 then
				positionChangeFunction = self.firstEntryPositionChanged
			elseif i == #self.state.assetNames then
				positionChangeFunction = self.lastEntryPositionChanged
			end

			list[i] = Roact.createElement(RoactFitComponents.FitFrameVertical, {
				width = UDim.new(1, 0),

				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Top,

				BackgroundTransparency = 1,
				LayoutOrder = i,

				[Roact.Change.AbsolutePosition] = positionChangeFunction,
			}, {
				Bullet = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(bulletPointWidth, fontSize),
					Text = BULLET_POINT_SYMBOL,
					Font = font,
					TextSize = fontSize,
					TextColor3 = theme.TextDefault.Color,
					TextTransparency = theme.TextDefault.Transparency,
					TextXAlignment = Enum.TextXAlignment.Left,
					LayoutOrder = 1,
				}),

				Text = Roact.createElement(FitTextLabel, {
					width = UDim.new(1, -bulletPointWidth),

					BackgroundTransparency = 1,
					Text = assetName,
					Font = font,
					TextSize = fontSize,
					TextColor3 = theme.TextDefault.Color,
					TextTransparency = theme.TextDefault.Transparency,
					TextXAlignment = Enum.TextXAlignment.Left,
					LayoutOrder = 2,
				})
			})
		end

		return Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,

			[Roact.Ref] = self.frameRef,
		}, {
			TopGradient = Roact.createElement("Frame", {
				Visible = self.topGradientVisibleBinding,
				Size = UDim2.new(1, 0, 0, GRADIENT_HEIGHT),
				Position = UDim2.fromScale(0, 0),
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderSizePixel = 0,
				ZIndex = 2,
			}, {
				UIGradient = Roact.createElement("UIGradient", {
					Rotation = 90,

					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, theme.BackgroundUIDefault.Color),
						ColorSequenceKeypoint.new(1, theme.BackgroundUIDefault.Color)
					}),

					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 0),
						NumberSequenceKeypoint.new(1, 1)
					}),
				}),
			}),

			ScrollView = Roact.createElement(VerticalScrollView, {
				size = UDim2.fromScale(1, 1),
				canvasSizeY = UDim.new(0, self.state.canvasSizeY),
			}, list),

			BottomGradient = Roact.createElement("Frame", {
				Visible = self.bottomGradientVisibleBinding,
				Size = UDim2.new(1, 0, 0, GRADIENT_HEIGHT),
				Position = UDim2.fromScale(0, 1),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderSizePixel = 0,
				ZIndex = 2,
			}, {
				UIGradient = Roact.createElement("UIGradient", {
					Rotation = 90,

					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, theme.BackgroundUIDefault.Color),
						ColorSequenceKeypoint.new(1, theme.BackgroundUIDefault.Color)
					}),

					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(1, 0)
					}),
				}),
			}),
		})
	end)
end

function ItemsList:renderLoading()
	return Roact.createElement(ShimmerPanel, {
		Size = UDim2.fromScale(1, 1),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
	})
end

function ItemsList:renderFailed()
	return Roact.createElement(EmptyState, {
		text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.ItemsListLoadingFailed"),
		size = UDim2.fromScale(1, 1),
		reloadAction = self.onRetryLoading,
	})
end

function ItemsList:render()
	if self.state.loading then
		return self:renderLoading()
	elseif self.state.assetNames then
		return self:renderItemsList()
	else
		return self:renderFailed()
	end
end

function ItemsList:didMount()
	self.mounted = true

	self.loadAssetNames()
end

function ItemsList:willUnmount()
	self.mounted = false
end

return ItemsList