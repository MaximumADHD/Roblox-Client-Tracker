local LayoutOrderIterator = {}
LayoutOrderIterator.__index = LayoutOrderIterator

function LayoutOrderIterator.new()
    local self = setmetatable({}, LayoutOrderIterator)

    self.order = 0

    return self
end

function LayoutOrderIterator:getNextOrder()
    self.order = self.order + 1
    return self.order
end

return LayoutOrderIterator