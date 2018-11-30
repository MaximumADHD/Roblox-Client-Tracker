-- singleton (can't be undone/redone)

local Play = {}

function Play:execute(Paths)
	Paths.DataModelPlayState:play()
end

return Play
