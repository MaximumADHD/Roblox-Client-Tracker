local function CreateCacheData(data, version, getRefreshIntervalFunc, refreshFunc)
	local this = {}
	this.Data = data
	this.Version = version
    this.GetRefreshIntervalFunc = getRefreshIntervalFunc
    this.RefreshFunc = refreshFunc
    local refreshDebounce = false

    --Use new data to update, usually we do this at intervals in BG
	function this:Update(newCached)
		if newCached and newCached.Version then
			if self.Version <= newCached.Version then
				self.Version = newCached.Version
				self.Data = newCached.Data
			end
		end
	end

    --Refresh the data, usually we will call the Refresh when some data is required
    function this:Refresh(forceRefresh)
        if self.RefreshFunc and type(self.RefreshFunc) == 'function' then
            while refreshDebounce do
                wait()
            end

            --Get RefreshInterval
            local RefreshInterval = nil
            if self.GetRefreshIntervalFunc and type(self.GetRefreshIntervalFunc) == 'function' then
                RefreshInterval = tonumber(self.GetRefreshIntervalFunc())
            end

            if forceRefresh or not self.Version or not RefreshInterval or (tick() - self.Version >= RefreshInterval) then
                refreshDebounce = true
                --RefreshFunc will update data, and return whether the refresh was valid
                if self.RefreshFunc(self.Data) then
                    self.Version = tick()
                else --this refresh fails, we needs to reset Version to ensure next RefreshFunc call
                    self.Version = nil
                end
                refreshDebounce = false
            end
        end
    end
	return this
end


return CreateCacheData