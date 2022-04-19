local Root = script:FindFirstAncestor("InfiniteScroller").Parent
local Lumberyak = require(Root.Lumberyak) :: any

return Lumberyak.Logger.new(nil, script:GetFullName())
