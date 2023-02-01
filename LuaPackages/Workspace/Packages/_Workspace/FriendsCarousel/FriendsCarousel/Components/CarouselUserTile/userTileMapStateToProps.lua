local mapStateToProps = function(state, props)
	local localUserId = tostring(state.LocalUserId)
	-- remove with getFFlagFriendsCarouselRemoveVariant
	return {
		localUserId = localUserId :: string,
	}
end

export type Props = typeof(mapStateToProps(...))

return mapStateToProps
