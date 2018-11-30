local Promise = require(script.Parent.Parent.Promise)

local UploadDownloadFlow = {}
UploadDownloadFlow.__index = UploadDownloadFlow

--[[
	An object to control user-flow, such as when the user hits this button where do they end up.
	The constructor takes an object full of callbacks which expected to have:

	SetMessage = display a message string to the user
	OpenCSV = Open a CSV file for uploading
	ComputePatch = Compute a diff between a downloaded table and the current table
	ShowDialog =  Prompt the user for confirmation
	UploadPatch = Upload the patch to the internet

	DownloadGameTable = Download the entire table as a CSV
	SaveCSV = Save the CSV you just downloaded to your harddrive

	SetBusyMode = takes two boolean arguments nonInteractive, showProgressIndicator

	MakeRenderDialogContent = takes a patchInfo and returns a function that renders the dialog content
		for that patch.
]]
function UploadDownloadFlow.new(props)
	local flow = {
		_busy = false,
		props = props
	}

	setmetatable(flow, UploadDownloadFlow)
	return flow
end

local NOT_BUSY = {
	nonInteractive = false,
	showProgressIndicator = false,
}

local GETTING_USER_INPUT = {
	nonInteractive = true,
	showProgressIndicator = false,
}

local COMPUTING = {
	nonInteractive = true,
	showProgressIndicator = true,
}

function UploadDownloadFlow:_setMode(mode)
	self._busy = mode.nonInteractive
	self.props.UpdateBusyMode(mode.nonInteractive, mode.showProgressIndicator)
end

function UploadDownloadFlow:_getBusy()
	return self._busy
end

function UploadDownloadFlow:OnUpload()
	if self:_getBusy() then
		return Promise.reject("busy")
	end

	self:_setMode(GETTING_USER_INPUT)

	self.props.SetMessage("Open CSV file...")

	return Promise.new(function(resolve, reject)
		self.props.OpenCSV():andThen(
			function(localizationTable)
				self.props.SetMessage("Computing patch...")
				self:_setMode(COMPUTING)

				self.props.ComputePatch(localizationTable):andThen(
					function(patchInfo)
						spawn(function()
							self.props.SetMessage("Confirm upload...")
							self:_setMode(GETTING_USER_INPUT)

							self.props.ShowDialog("Confirm Upload", 300, 320,
								self.props.MakeRenderDialogContent(patchInfo)):andThen(
								function()
									self.props.SetMessage("Uploading patch...")
									self:_setMode(COMPUTING)

									self.props.UploadPatch(patchInfo):andThen(
										function()
											self.props.SetMessage("Upload complete")
											self:_setMode(NOT_BUSY)
											resolve()
										end,
										function()
											self.props.SetMessage("Upload failed")
											self:_setMode(NOT_BUSY)
											reject("Upload failed")
										end
									)
								end,
								function()
									self.props.SetMessage("Upload canceled")
									self:_setMode(NOT_BUSY)
									reject("Upload canceled")
								end)
						end)
					end,
					function()
						self.props.SetMessage("Compute patch failed")
						self:_setMode(NOT_BUSY)
						reject("Compute patch failed")
					end
				)

			end,
			function()
				self.props.SetMessage("CSV file not provided")
				self:_setMode(NOT_BUSY)
				reject("CSV file not provided")
			end
		)
	end)
end

function UploadDownloadFlow:OnDownload()
	if self:_getBusy() then
		return Promise.reject("busy")
	end

	self:_setMode(COMPUTING)
	self.props.SetMessage("Downloading table...")

	return Promise.new(function(resolve, reject)
		self.props.DownloadGameTable():andThen(
			function(localizationTable)
				self.props.SetMessage("Select CSV file...")
				self:_setMode(GETTING_USER_INPUT)

				self.props.SaveCSV(localizationTable):andThen(
					function()
						self.props.SetMessage("Table written to file")
						self:_setMode(NOT_BUSY)
						resolve()
					end,
					function(errorMessage)
						self.props.SetMessage(errorMessage)
						self:_setMode(NOT_BUSY)
						reject(errorMessage)
					end
				)
			end,
			function(errorMessage)
				self.props.SetMessage(errorMessage)
				self:_setMode(NOT_BUSY)
				reject(errorMessage)
			end
		)
	end)
end

return UploadDownloadFlow
