-- singleton

local ScaleBoundaries = {}

ScaleBoundaries.Height = { min = 0.9, max = 1.05, increment = 0.05 }
ScaleBoundaries.Width = { min = 0.7, max = 1, increment = 0.05 }
ScaleBoundaries.Head = { min = 0.95, max = 1, increment = 0.05 }
ScaleBoundaries.BodyType = { min = 0, max = 0.3, increment = 0.05 }
ScaleBoundaries.Proportion = { min = 0, max = 1, increment = 0.05 }

return ScaleBoundaries
