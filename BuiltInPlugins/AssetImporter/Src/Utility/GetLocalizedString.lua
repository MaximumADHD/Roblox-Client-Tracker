return function(localization, scope, key)
    local message = localization:getText(scope, key)
    if message:sub(-#key) == key then
        return nil
    end
    return message
end
