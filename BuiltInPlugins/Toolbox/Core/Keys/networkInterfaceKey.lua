local networkInterfaceKey = newproxy(true)

getmetatable(networkInterfaceKey).__tostring = function()
	return "Symbol(NetworkInterface)"
end

return networkInterfaceKey
