local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(id, position, size)
  return {
    id = id,
    position = position,
    size = size,
  }
end)
