local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local getBaseTileMediaCorners = require(script.Parent.getBaseTileMediaCorners)
local useTokens = require(Foundation.Providers.Style.useTokens)

export type BaseTileMediaCornerProps = {
	-- Must match the tile's isContained
	isContained: boolean?,
}

-- Rounds the media element it's parented to so it matches the tile's media well
local function BaseTileMediaCorner(props: BaseTileMediaCornerProps)
	local tokens = useTokens()
	return React.createElement("UICorner", getBaseTileMediaCorners(tokens, props.isContained))
end

return React.memo(BaseTileMediaCorner)
