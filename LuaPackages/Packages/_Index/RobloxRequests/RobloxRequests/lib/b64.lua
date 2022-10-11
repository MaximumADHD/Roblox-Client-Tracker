-- base64

local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

-- encoding
function enc(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

-- decoding
function dec(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(7-i) or 0) end
        return string.char(c)
    end))
end

function safe_enc(data, log)
    -- encodes data without risk of script timeout by splitting into chunks

    if log == nil then
        log = true
    end

    local CHUNK_SIZE = math.floor(200*1024/3)*3  -- 200 KB chunks

    local encoded = ""
    local chunks = {}

    while #data > 0 do
        table.insert(chunks, data:sub(1, CHUNK_SIZE))
        data = data:sub(CHUNK_SIZE+1)
    end

    for i, chunk in ipairs(chunks) do
        if log then
            print(("[http] Encoding B64 chunk %s/%s"):format(i, #chunks))
        end
        encoded = encoded .. enc(chunk)

        wait()  -- prevent script timeout
    end

    return encoded
end

return {
	encode = safe_enc,
	decode = dec
}