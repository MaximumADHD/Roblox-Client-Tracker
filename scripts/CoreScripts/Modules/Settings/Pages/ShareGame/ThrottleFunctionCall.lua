return function(throttleDelay, callback)
    local isThrottled = false
    return function(...)
        if isThrottled then
            return
        end
        isThrottled = true
        task.delay(throttleDelay, function()
            isThrottled = false
        end)
        return callback(...)
    end
end
