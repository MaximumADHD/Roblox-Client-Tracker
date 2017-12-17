return function(state, action)
	return {
		{
			name = "Popular",
			isDefaultSort = true,
			games = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, }
		}, {
			name = "Top Earning",
			isDefaultSort = true,
			games = { 7, 1, 4, 2, 10, 6, 3, 8, 5, 9 }
		}, {
			name = "Because You Liked \"Really Long Game Name\"",
			isDefaultSort = true,
			games = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, }
		}, {
			name = "Bad Games You Don't Want to Play",
			isDefaultSort = false,
			games = {}
		}
	}
end