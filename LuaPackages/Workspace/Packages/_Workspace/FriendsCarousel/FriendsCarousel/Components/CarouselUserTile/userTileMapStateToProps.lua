local mapStateToProps = function(state, props)
	local localUserId = tostring(state.LocalUserId)

	return {
		localUserId = localUserId :: string,
	}
end

export type Props = typeof(mapStateToProps(...))

return mapStateToProps
