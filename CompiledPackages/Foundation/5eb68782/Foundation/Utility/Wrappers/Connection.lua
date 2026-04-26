local Connection = {
	Disconnect = function(connection: RBXScriptConnection)
		return connection:Disconnect()
	end,
}

return Connection
