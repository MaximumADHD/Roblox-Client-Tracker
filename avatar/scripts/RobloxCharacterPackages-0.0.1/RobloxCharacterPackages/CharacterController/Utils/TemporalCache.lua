local Cache = {}
Cache.__index = Cache

function Cache:new(expireTime)
    return setmetatable({
        expireTime = expireTime,
        data = {},
        timestamps = {},
        insertIndex = 1
    }, Cache)
end

function Cache:insert(values)
    local now = tick()

    for _, value in ipairs(values) do
        self.data[self.insertIndex] = value
        self.timestamps[self.insertIndex] = now
        self.insertIndex = self.insertIndex + 1
    end
end

function Cache:get()
    local now = tick()
    local values = {}
    local newInsertIndex = 1
    local newData = {}
    local newTimestamps = {}

    for i = 1, self.insertIndex - 1 do
        if now - self.timestamps[i] <= self.expireTime then
            newData[newInsertIndex] = self.data[i]
            newTimestamps[newInsertIndex] = self.timestamps[i]
            newInsertIndex = newInsertIndex + 1
            table.insert(values, self.data[i])
        end
    end

    self.data = newData
    self.timestamps = newTimestamps
    self.insertIndex = newInsertIndex

    return values
end

return Cache
