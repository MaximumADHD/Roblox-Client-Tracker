return function()
    -- TextService:getTextSize() does not work in CLI, and therefore most tests will not work in CLI.
	-- We exit early out of such tests.
	-- See https://jira.rbx.com/browse/RIDE-5815 for more the ticket involving this
    return
end