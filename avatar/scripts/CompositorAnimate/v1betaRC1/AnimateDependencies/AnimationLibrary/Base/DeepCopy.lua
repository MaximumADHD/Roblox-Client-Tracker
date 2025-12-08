local DeepCopy = {}

function DeepCopy.deepCopy<T>(obj: T, seenTablesIn: { [any]: any }?): T
    if typeof(obj) ~= "table" then
        return obj
    end
    local seenTables: { [any]: any } = seenTablesIn or {}
    if seenTables[obj] then
        return seenTables[obj]
    end

    local copy = setmetatable({}, getmetatable(obj :: any))
    seenTables[obj] = copy

    for key, val in obj :: any do
        copy[key] = DeepCopy.deepCopy(val, seenTables)
    end

    return copy :: any
end

return DeepCopy
