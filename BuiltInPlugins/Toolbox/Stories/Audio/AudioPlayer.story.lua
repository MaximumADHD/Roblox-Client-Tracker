local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local Dash = Framework.Dash

local AudioPlayer = require(Plugin.Core.Components.AudioPlayer.AudioPlayer)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local AudioPlayerWrapper = Roact.PureComponent:extend("AudioPlayerWrapper")

function AudioPlayerWrapper:init()
	self.state = { isPlaying = false }

	self.onEnded = function()
		self:setState({ isPlaying = false })
	end
end

function AudioPlayerWrapper:render()
	return Roact.createFragment({
		Controls = Roact.createElement("TextButton", {
			Text = if self.state.isPlaying then "Pause" else "Play",
			Size = UDim2.new(0, 40, 0, 40),
			[Roact.Event.Activated] = function()
				self:setState(function(prevState)
					return { isPlaying = not prevState.isPlaying }
				end)
			end,
		}),
		Player = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),

			UIPadding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, 10),
				PaddingLeft = UDim.new(0, 10),
			}),
			Player = Roact.createElement(
				AudioPlayer,
				Dash.join(self.props, { IsPlaying = self.state.isPlaying, OnEnded = self.onEnded })
			),
		}),
	})
end

return {
	summary = "Audio Player",
	stories = {
		{
			name = "Playing",
			story = Roact.createElement(ToolboxStoryWrapper, {}, {
				AudioPlayer = Roact.createElement(AudioPlayerWrapper, {
					SoundId = 142376088,
				}),
			}),
		},
	},
}
