local RunService = game:GetService("RunService")

local Stories = script.Parent.Parent.Parent.Parent
local Packages = Stories.Parent.Parent
local Roact = require(Packages.Roact)
local RoactGamepad = require(Packages.RoactGamepad)
local UIBlox = require(Packages.UIBlox)

local Images = UIBlox.App.ImageSet.Images

local FocusContainer = require(Packages.StoryComponents.FocusContainer)
local InputManager = require(Packages.StoryComponents.InputManager)

local StoryItem = require(Packages.StoryComponents.StoryItem)

local BaseMenu = UIBlox.App.Menu.BaseMenu
local UIBloxConfig = require(Stories.UIBloxStorybookConfig)

local BaseMenuOverviewComponent = Roact.Component:extend("BaseMenuOverviewComponent")

function BaseMenuOverviewComponent:init()
	self.oneItemFrameRef = Roact.createRef()
	self.threeItemFrameRef = Roact.createRef()
	self.nineItemFrameRef = Roact.createRef()
end

function BaseMenuOverviewComponent:render()
	local function activatedFunction()
		print("Test")
	end

	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.fromScale(1, 1),
		CanvasSize = UDim2.new(1, 0, 3, 0),
		BackgroundTransparency = 1,
	}, {
		InputManager = RoactGamepad.withFocusController(function(focusController)
			return Roact.createElement(InputManager, {
				focusController = focusController,
			})
		end),
		Grid = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 20),
		}),

		Oneitem = Roact.createElement(StoryItem, {
			size = UDim2.fromOffset(300, 166),
			layoutOrder = 1,
			title = "One Item",
			subTitle = "",
			showDivider = true,
		}, {
			OneItemFrame = Roact.createElement(RoactGamepad.Focusable.Frame, {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				[Roact.Ref] = self.oneItemFrameRef,
				NextSelectionDown = self.threeItemFrameRef,
				LayoutOrder = 1,
			}, {
				BaseMenu = Roact.createElement(BaseMenu, {
					buttonProps = {
						{
							icon = Images["icons/menu/friends"],
							text = "Item One",
							onActivated = activatedFunction,
						},
					},
				}),
			}),
		}),

		ThreeItems = Roact.createElement(StoryItem, {
			size = UDim2.fromOffset(300, 278),
			layoutOrder = 2,
			title = "Three Item",
			subTitle = "",
			showDivider = true,
		}, {
			ThreeItemsFrame = Roact.createElement(RoactGamepad.Focusable.Frame, {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				[Roact.Ref] = self.threeItemFrameRef,
				NextSelectionUp = self.oneItemFrameRef,
				NextSelectionDown = self.nineItemFrameRef,
				LayoutOrder = 2,
			}, {
				BaseMenu = Roact.createElement(BaseMenu, {
					buttonProps = {
						{
							text = "Item One",
							onActivated = activatedFunction,
						},
						{
							text = "Item Two",
							onActivated = activatedFunction,
						},
						{
							text = "Item Three",
							onActivated = activatedFunction,
						},
					},
				}),
			}),
		}),

		NineItems = Roact.createElement(StoryItem, {
			size = UDim2.fromOffset(300, 614),
			layoutOrder = 3,
			title = "Nine Item",
			subTitle = "",
			showDivider = true,
		}, {
			NineItemsFrame = Roact.createElement(RoactGamepad.Focusable.Frame, {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				[Roact.Ref] = self.nineItemFrameRef,
				NextSelectionUp = self.threeItemFrameRef,
				LayoutOrder = 3,
			}, {
				BaseMenu = Roact.createElement(BaseMenu, {
					buttonProps = {
						{
							text = "Item One",
							onActivated = activatedFunction,
						},
						{
							text = "Item Two",
							onActivated = activatedFunction,
						},
						{
							text = "Item Three",
							onActivated = activatedFunction,
						},
						{
							text = "Item Four",
							onActivated = activatedFunction,
						},
						{
							text = "Item Five",
							onActivated = activatedFunction,
						},
						{
							text = "Item Six",
							onActivated = activatedFunction,
						},
						{
							text = "Item Seven",
							onActivated = activatedFunction,
						},
						{
							text = "Item Eight",
							onActivated = activatedFunction,
						},
						{
							text = "Item Nine",
							onActivated = activatedFunction,
						},
					},
				}),
			}),
		}),
	})
end

local function wrapStoryForGamepad(story)
	if not UIBloxConfig.emptyStateControllerSupport or not RunService:IsRunning() then
		return story
	end

	return Roact.createElement(FocusContainer, {}, {
		InputManager = UIBloxConfig.emptyStateControllerSupport and RoactGamepad.withFocusController(
			function(focusController)
				return Roact.createElement(InputManager, {
					focusController = focusController,
				})
			end
		),
		EmptyStateStory = Roact.createElement(RoactGamepad.Focusable.Frame, {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			EmptyState = Roact.createElement(story),
		}),
	})
end

return wrapStoryForGamepad(BaseMenuOverviewComponent)
