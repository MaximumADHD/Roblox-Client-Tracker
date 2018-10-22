return function(component)
	return {
		modalTarget = component._context.modalTarget,
		_modalStatus = component._context._modalStatus,
		onTooltipTriggered = component._context.onTooltipTriggered,
		onDropdownToggled = component._context.onDropdownToggled,
		isShowingModal = component._context.isShowingModal,
	}
end
