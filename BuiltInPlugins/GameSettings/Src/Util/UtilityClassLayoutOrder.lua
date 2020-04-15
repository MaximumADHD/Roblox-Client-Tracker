local LayoutOrder = {}
LayoutOrder.__index = LayoutOrder

function LayoutOrder.new()
    local self = setmetatable({}, LayoutOrder)    

    self.order = 0

    return self
end

function LayoutOrder:getNextOrder()
    self.order = self.order + 1
    return self.order
end

return LayoutOrder