return function(jest)
	return {
		Diag = {
			reportCounter = jest.fn(),
		},
		EventStream = {
			setRBXEventStream = jest.fn(),
		},
	}
end
