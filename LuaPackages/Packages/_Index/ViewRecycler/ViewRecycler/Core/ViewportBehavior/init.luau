local FFlagViewRecyclerReact084 = require(script:FindFirstAncestor("ViewRecycler").Flags).FFlagViewRecyclerReact084
local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecycler").Flags).FFlagViewRecyclerReact08

local AutoScroll = require(script.AutoScroll)
local ChatPreset = require(script.ChatPreset)
local PaginationEdges = require(script.PaginationEdges)
local ReachedThreshold = require(script.ReachedThreshold)

local createInitialScrollPosition = require(script.InitialScrollPosition)
local createScrollPolicy = require(script.ScrollPolicy)

return {
	ChatPreset = ChatPreset,
	PaginationEdges = PaginationEdges,
	ReachedThreshold = ReachedThreshold,

	AutoScroll = if FFlagViewRecyclerReact084 then nil else if FFlagViewRecyclerReact08 then nil else AutoScroll,
	createInitialScrollPosition = if FFlagViewRecyclerReact084
		then nil
		else if FFlagViewRecyclerReact08 then nil else createInitialScrollPosition,
	createScrollPolicy = if FFlagViewRecyclerReact084
		then nil
		else if FFlagViewRecyclerReact08 then nil else createScrollPolicy,
}
