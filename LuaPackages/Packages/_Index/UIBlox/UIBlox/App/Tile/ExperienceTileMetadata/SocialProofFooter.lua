local ExperienceTileMetadata = script.Parent
local Tile = ExperienceTileMetadata.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local StatGroup = require(App.Indicator.StatGroup)
local FooterFrame = require(ExperienceTileMetadata.FooterFrame)

export type Props = {
	-- Text representing the rating of experience
	ratingText: string,
	-- Text representing the playing information of experience
	playingText: string,
} & FooterFrame.Props

local function SocialProofFooter(props: Props)
	return React.createElement(FooterFrame, props :: FooterFrame.Props, {
		Stats = React.createElement(StatGroup, {
			ratingText = props.ratingText,
			playingText = props.playingText,
		}),
	})
end

return SocialProofFooter
