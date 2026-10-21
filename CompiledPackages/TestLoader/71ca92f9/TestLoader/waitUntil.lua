--!strict
return function(predicate, timeout: number)
	local fixedTimeout = os.clock() + timeout
	while os.clock() < fixedTimeout and not predicate() do
		task.wait()
	end
end
