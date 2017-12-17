-- >= left < mid, >= mid <= right
function bottomupmerge(comp, a, b, left, mid, right)
    local i, j = left, mid
    for k = left, right do
        if i < mid and (j > right or not comp(a[j], a[i])) then
            b[k] = a[i]
            i = i + 1
        else
            b[k] = a[j]
            j = j + 1
        end
    end
end

function mergesort(arr, comp)
    local work = {}
    for i = 1, #arr do
        work[i] = arr[i]
    end
    local width = 1
    while width < #arr do
        for i = 1, #arr, 2*width do
            bottomupmerge(comp, arr, work, i, math.min(i+width, #arr), math.min(i+2*width-1, #arr))
        end
        local temp = work
        work = arr
        arr = temp
        width = width * 2
    end
    return arr
end

return mergesort(...)
