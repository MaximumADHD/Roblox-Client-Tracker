-- With FFlagViewRecyclerReact08 off, the package runs ViewRecycler 0.7.1's behavior.
-- With it on and FFlagViewRecyclerReact084 off, the package runs 0.8.1's.
local FFlagViewRecyclerReact08 = game:DefineFastFlag("ViewRecyclerReact08", false)
local FFlagViewRecyclerReact084 = game:DefineFastFlag("ViewRecyclerReact084", false)

return table.freeze({
	FFlagViewRecyclerReact08 = FFlagViewRecyclerReact08,
	FFlagViewRecyclerReact084 = FFlagViewRecyclerReact08 and FFlagViewRecyclerReact084,
})
