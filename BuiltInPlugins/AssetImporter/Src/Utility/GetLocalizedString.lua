return function(localization, scope, key, context)
    local message = localization:getText(scope, key, context)
    if message:sub(-#key) == key then
        return nil
    end
    return message
end
