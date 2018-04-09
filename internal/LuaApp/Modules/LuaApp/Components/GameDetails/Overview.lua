local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local FitChildren = require(Modules.LuaApp.FitChildren)
local SnappingCarousel = "ImageLabel" -- require(Modules.LuaApp.Components.SnappingCarousel)
local ShareButton = "ImageButton" -- require(Modules.LuaApp.Components.ShareButton)
local Line = require(Modules.LuaApp.Components.Line)
local LargeGameVoteBar = require(Modules.LuaApp.Components.LargeGameVoteBar)
local Constants = require(Modules.LuaApp.Constants)

local Overview = Roact.Component:extend("Overview")

local function joinDictionaries(to, ...)
	for _, dictionary in ipairs({...}) do
		for key, value in pairs(dictionary) do
			to[key] = value
		end
	end
	return to
end

local IMAGE_MAX_WIDTH = 640
local OVERVIEW_LANDSCAPE_HEIGHT = 360
local IMAGE_RATIO = OVERVIEW_LANDSCAPE_HEIGHT / IMAGE_MAX_WIDTH
local CALLS_TO_ACTION_WIDTH = 302
local CALLS_TO_ACTION_HEIGHT = 190
local TITLE_HEIGHT = 30
local VOTE_BAR_WIDTH = 162
local ICON_SIZE = 24
local PLAY_BUTTON_WIDTH = 270
local PLAY_BUTTON_HEIGHT = 53
local GAME_BUTTONS_PORTRAIT_HEIGHT = 80
local GAME_BUTTONS_LANDSCAPE_HEIGHT = 140
local SHARE_BUTTON_WIDTH = 24
local SHARE_BUTTON_SIZE = UDim2.new(0, SHARE_BUTTON_WIDTH, 0, SHARE_BUTTON_WIDTH)
local SHARE_BUTTON_PADDING = 2

function Overview:render()
	local game = self.props.game
	local padding = self.props.padding
	local layoutOrder = self.props.LayoutOrder
	local isMaxWidth = self.props.isMaxWidth
	local showShare = self.props.showShare

	local gameButtonsHeight = isMaxWidth and GAME_BUTTONS_LANDSCAPE_HEIGHT or GAME_BUTTONS_PORTRAIT_HEIGHT

	-- Offset may need to add some padding between a line and the icons when in landscape.
	local offset = isMaxWidth and ICON_SIZE + 4 or ICON_SIZE
	local ratingButtons = {
		Favorite = Roact.createElement("ImageButton", {
			Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
			Position = UDim2.new(0, 0, 1, -offset),
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/ui/LuaApp/icons/ic-favorite.png",
		}),
		FavoriteCount = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 0, 0, offset),
			Position = UDim2.new(0, ICON_SIZE, 1, -offset),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			Text = "0",
		}),
		Votes = Roact.createElement(LargeGameVoteBar, {
			upVotes = game.totalUpVotes,
			downVotes = game.totalDownVotes,
			iconSize = ICON_SIZE,
			frameProps = isMaxWidth and {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, VOTE_BAR_WIDTH, 0, offset),
				Position = UDim2.new(1, -VOTE_BAR_WIDTH, 1, -offset),
			} or {
				BackgroundTransparency = 1,
				Size = UDim2.new(0.5, 0, 0, offset),
				Position = UDim2.new(0.25, 0, 1, -offset),
			}
		}),
	}

	local shareButtons = showShare and {
		Facebook = Roact.createElement(ShareButton, {
			Position = UDim2.new(
				1, -2*(SHARE_BUTTON_PADDING + SHARE_BUTTON_WIDTH) - SHARE_BUTTON_WIDTH,
				1, -SHARE_BUTTON_PADDING - SHARE_BUTTON_WIDTH
			),
			BackgroundTransparency = 1,
			Size = SHARE_BUTTON_SIZE,
			Image = "rbxasset://textures/ui/LuaApp/icons/ic-facebook.png",
			[Roact.Event.MouseButton1Click] = function()
				-- TODO: Share on facebook.
			end,
		}),
		Twitter = Roact.createElement(ShareButton, {
			Position = UDim2.new(1
				, -1*(SHARE_BUTTON_PADDING + SHARE_BUTTON_WIDTH) - SHARE_BUTTON_WIDTH,
				1, -SHARE_BUTTON_PADDING - SHARE_BUTTON_WIDTH
			),
			BackgroundTransparency = 1,
			Size = SHARE_BUTTON_SIZE,
			Image = "rbxasset://textures/ui/LuaApp/icons/ic-twitter.png",
			[Roact.Event.MouseButton1Click] = function()
				-- TODO: Share on Twitter.
			end,
		}),
		Google = Roact.createElement(ShareButton, {
			Position = UDim2.new(
				1, -0*(SHARE_BUTTON_PADDING + SHARE_BUTTON_WIDTH) - SHARE_BUTTON_WIDTH,
				1, -SHARE_BUTTON_PADDING - SHARE_BUTTON_WIDTH
			),
			BackgroundTransparency = 1,
			Size = SHARE_BUTTON_SIZE,
			Image = "rbxasset://textures/ui/LuaApp/icons/ic-google.png",
			[Roact.Event.MouseButton1Click] = function()
				-- TODO: Share on Google+.
			end,
		}),
	} or {}

	return Roact.createElement(FitChildren.FitFrame, {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundColor3 = Constants.Color.WHITE,
		BorderSizePixel = 0,
		fitFields = {
			Size = FitChildren.FitAxis.Height,
		}
	}, {
		ListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, padding),
			FillDirection = isMaxWidth and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, padding),
			PaddingRight = UDim.new(0, padding),
			PaddingBottom = UDim.new(0, padding),
			PaddingLeft = UDim.new(0, padding),
		}),
		Image = Roact.createElement(SnappingCarousel, {
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Image = game.Image,
		}, {
			RatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1/IMAGE_RATIO,
				AspectType = Enum.AspectType.FitWithinMaxSize,
			}),
			SizeConstraint = Roact.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(IMAGE_MAX_WIDTH, OVERVIEW_LANDSCAPE_HEIGHT),
				MinSize = Vector2.new(0, 0),
			}),
		}),
		CallsToAction = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Size = isMaxWidth
				and UDim2.new(0, CALLS_TO_ACTION_WIDTH, 0, OVERVIEW_LANDSCAPE_HEIGHT)
				or UDim2.new(1, 0, 0, CALLS_TO_ACTION_HEIGHT),
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, padding),
			}),
			TopSection = Roact.createElement("Frame", {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 1, -ICON_SIZE -gameButtonsHeight -2*padding),
				BackgroundTransparency = 1,
			}, {
				Title = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					TextSize = TITLE_HEIGHT,
					TextYAlignment = Enum.TextYAlignment.Center,
					Text = game.name,
					Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),
				}),
				By = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 0, 0, 20),
					Position = UDim2.new(0, 3, 0, TITLE_HEIGHT),
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					Text = "By",
				}),
				Creator = Roact.createElement("TextButton", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 0, 0, 20),
					Position = UDim2.new(0, 20, 0, TITLE_HEIGHT),
					TextColor3 = Constants.Color.BLUE_PRIMARY,
					Text = game.creatorName,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					[Roact.Event.MouseButton1Click] = function()
						-- TODO: navigate to group or user page depending on game.creatorType and Id.
					end,
				}),
			}),
			GameButtons = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, gameButtonsHeight),
				LayoutOrder = 2,
			}, joinDictionaries({
				TopLine = Roact.createElement(Line),
				Play = Roact.createElement("TextButton", {
					Size = UDim2.new(0, PLAY_BUTTON_WIDTH, 0, PLAY_BUTTON_HEIGHT),
					Position = UDim2.new(
						0.5,
						-PLAY_BUTTON_WIDTH/2,
						0.5,
						-PLAY_BUTTON_HEIGHT/2 -(isMaxWidth and ICON_SIZE/2 or 0)
					),
					BackgroundColor3 = Constants.Color.GREEN_PRIMARY,
					TextSize = 15,
					TextColor3 = Color3.new(1, 1, 1),
					Text = "Play",
					BorderSizePixel = 0,
					[Roact.Event.MouseButton1Click] = function()
						-- TODO: jump into the game!
					end,
				}),
				BottomLine = Roact.createElement(Line, {
					Position = UDim2.new(0, 0, 1, -1),
				}),
			}, isMaxWidth and ratingButtons or nil)),
			UnfocusedActions = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 3,
				Size = UDim2.new(1, 0, 0, ICON_SIZE),
			}, joinDictionaries(shareButtons, not isMaxWidth and ratingButtons or nil))
		}),
	})
end

return Overview