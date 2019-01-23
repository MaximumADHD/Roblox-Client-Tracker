local e = nil

function Error(str)
	print("ERROR:", str)
	e:throw()
end

return Error
