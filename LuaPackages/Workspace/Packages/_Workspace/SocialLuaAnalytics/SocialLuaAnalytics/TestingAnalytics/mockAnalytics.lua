return function(jest)
	return {
		Diag = {
			reportCounter = jest.fn(),
			reportStats = jest.fn(),
		},
		EventStream = {
			setRBXEventStream = jest.fn(),
		},
	}
end
