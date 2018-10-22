-- singleton (can't be undone/redone)

local Pause = {}

function Pause:execute(Paths)
	Paths.DataModelPlayState:pause()
end

return Pause
