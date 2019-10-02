local sort = {
    default = function(key1, key2)
        return key1 < key2
    end,
    reverse = function(key1, key2)
        return key2 < key1
    end,
}

return sort