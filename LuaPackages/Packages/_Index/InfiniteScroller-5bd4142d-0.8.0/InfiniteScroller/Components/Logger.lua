local Root = script:FindFirstAncestor("InfiniteScroller").Parent
local Lumberyak = require(Root.Lumberyak)

return Lumberyak.Logger.new(nil, script:GetFullName())
