--!nocheck

local Flow = require(script.Parent.Parent.GameTable.UploadDownloadFlow)
local RecursiveEquals = require(script.Parent.RecursiveEquals)
local Promise = require(script.Parent.Parent.Promise)

local MockPatch = {"I'm a patch"}
local MockGameId = 123456789
local MockRenderFunction = function() end

local MakeRenderDialogContent = function()
	return MockRenderFunction
end

local function NeverReaches()
	assert(false, "control never reaches this point")
end

local MockLocalizationTable = {"I'm a LocalizationTable"}

return function()
	it("traverses successful download", function()
		local currentState = {"NOSTATE"}
		local currentMessage = {"NOMESSAGE"}

		local section = {
			setState = function(_, state)
				currentState = state
			end,
		}

		local flow

		local function DownloadGameTable(gameId)
			expect(gameId).to.equal(MockGameId)
			return Promise.new(function(resolve, reject)
				expect(reject).to.be.a("function")
				expect(flow._busy).to.equal(true)
				expect(currentState.NonInteractive).to.equal(true)
				expect(currentMessage).to.equal("Downloading table...")

				-- Table data download succeeds
				resolve(MockLocalizationTable)
			end)
		end

		local function SaveCSV(localizationTable)
			return Promise.new(function(resolve, reject)
				expect(localizationTable).to.equal(MockLocalizationTable)
				expect(flow._busy).to.equal(true)
				expect(currentState.NonInteractive).to.equal(true)
				expect(currentMessage).to.equal("Select CSV file...")

				-- User selects a destination on their harddrive, and file write succeeds
				resolve()
			end)
		end

		flow = Flow.new({
			SetMessage = function(message)
				currentMessage = message
			end,

			DownloadGameTable = DownloadGameTable,
			SaveCSV = SaveCSV,

			UpdateBusyMode = function(nonInteractive, showProgressIndicator)
				section:setState({
					NonInteractive = nonInteractive,
					ShowProgressIndicator = showProgressIndicator,
				})
			end,
		})

		expect(flow._busy).to.equal(false)
		local success, _ = flow:OnDownload(MockGameId):_unwrap()
		assert(success)
		expect(flow._busy).to.equal(false)
		expect(currentMessage).to.equal("Table written to file")
		assert(RecursiveEquals(currentState, {
			NonInteractive = false,
			ShowProgressIndicator = false,
		}))
	end)

	it("traverses successful download with asynchronous callbacks", function()
		local currentState = {"NOSTATE"}
		local currentMessage = {"NOMESSAGE"}

		local section = {
			setState = function(_, state)
				currentState = state
			end,
		}

		local flow

		local function DownloadGameTable(gameId)
			expect(gameId).to.equal(MockGameId)
			return Promise.new(function(resolve, reject)
				expect(reject).to.be.a("function")
				expect(flow._busy).to.equal(true)
				expect(currentState.NonInteractive).to.equal(true)
				expect(currentMessage).to.equal("Downloading table...")

				-- Table data download succeeds
				resolve({"I'm a localization table"})
			end)
		end

		local function SaveCSV(localizationTable)
			return Promise.new(function(resolve, reject)
				expect(localizationTable).never.to.equal(nil)
				expect(resolve).to.be.a("function")
				expect(flow._busy).to.equal(true)
				expect(currentState.NonInteractive).to.equal(true)
				expect(currentMessage).to.equal("Select CSV file...")

				-- User selects a destination on their harddrive, and file write succeeds
				resolve()
			end)
		end

		flow = Flow.new({
			SetMessage = function(message)
				currentMessage = message
			end,

			DownloadGameTable = DownloadGameTable,
			SaveCSV = SaveCSV,

			UpdateBusyMode = function(nonInteractive, showProgressIndicator)
				section:setState({
					NonInteractive = nonInteractive,
					ShowProgressIndicator = showProgressIndicator,
				})
			end,
		})

		local success, _ = flow:OnDownload(MockGameId):_unwrap()
		assert(success)
		expect(flow._busy).to.equal(false)
		expect(currentMessage).to.equal("Table written to file")
		assert(RecursiveEquals(currentState, {
			NonInteractive = false,
			ShowProgressIndicator = false,
		}))
	end)

	it("navigates unsuccesful download", function()
		local currentState = {"NOSTATE"}
		local currentMessage = {"NOMESSAGE"}

		local section = {
			setState = function(_, state)
				currentState = state
			end,
		}

		local flow

		local function DownloadGameTable(gameId)
			expect(gameId).to.equal(MockGameId)
			return Promise.new(function(resolve, reject)
				expect(flow._busy).to.equal(true)
				expect(currentState.NonInteractive).to.equal(true)
				expect(resolve).to.be.a("function")
				reject("Download failed")
			end)
		end

		flow = Flow.new({
			SetMessage = function(message)
				currentMessage = message
			end,

			DownloadGameTable = DownloadGameTable,
			SaveCSV = NeverReaches,

			UpdateBusyMode = function(nonInteractive, showProgressIndicator)
				section:setState({
					NonInteractive = nonInteractive,
					ShowProgressIndicator = showProgressIndicator,
				})
			end,
		})

		local promise = flow:OnDownload(MockGameId)
		local success, errorInfo = promise:_unwrap()
		assert(not success)
		assert(type(errorInfo) == "table")
		expect(flow._busy).to.equal(false)
		expect(errorInfo:getRibbonMessage()).to.equal("Download failed")
		expect(currentMessage).to.equal("Download failed")
		assert(not errorInfo:hasWarningMessage())
		assert(RecursiveEquals(currentState, {
			NonInteractive = false,
			ShowProgressIndicator = false,
		}))

		promise:catch(function(_) end) -- Prevent still-pending promise warning
	end)

	it("navigates download where save failed", function()
		local currentState = {"NOSTATE"}
		local currentMessage = {"NOMESSAGE"}

		local section = {
			setState = function(_, state)
				currentState = state
			end,
		}

		local flow

		local function DownloadGameTable(gameId)
			expect(gameId).to.equal(MockGameId)
			return Promise.new(function(resolve, reject)
				expect(flow._busy).to.equal(true)
				expect(currentState.NonInteractive).to.equal(true)
				resolve({"I'm a LocalizationTable"})
			end)
		end

		local function SaveCSV(localizationTable)
			return Promise.new(function(resolve, reject)
				expect(localizationTable).to.be.a("table")
				expect(resolve).to.be.a("function")
				reject("File permissions or something")
			end)
		end

		flow = Flow.new({
			SetMessage = function(message)
				currentMessage = message
			end,

			DownloadGameTable = DownloadGameTable,
			SaveCSV = SaveCSV,

			UpdateBusyMode = function(nonInteractive, showProgressIndicator)
				section:setState({
					NonInteractive = nonInteractive,
					ShowProgressIndicator = showProgressIndicator,
				})
			end,
		})

		local promise = flow:OnDownload(MockGameId)
		local success, errorInfo = promise:_unwrap()
		assert(not success)
		assert(type(errorInfo) == "table")
		expect(flow._busy).to.equal(false)
		expect(errorInfo:getRibbonMessage()).to.equal("CSV write failed")
		assert(errorInfo:hasWarningMessage())
		expect(errorInfo:getWarningMessage()).to.equal("File permissions or something")
		expect(currentMessage).to.equal("CSV write failed")
		assert(RecursiveEquals(currentState, {
			NonInteractive = false,
			ShowProgressIndicator = false,
		}))
		promise:catch(function(_) end) -- Prevent still-pending promise warning
	end)

	it("navigates download where user cancels save", function()
		local currentState = {"NOSTATE"}
		local currentMessage = {"NOMESSAGE"}

		local section = {
			setState = function(_, state)
				currentState = state
			end,
		}

		local flow

		local function DownloadGameTable(gameId)
			expect(gameId).to.equal(MockGameId)
			return Promise.new(function(resolve, reject)
				expect(flow._busy).to.equal(true)
				expect(currentState.NonInteractive).to.equal(true)
				resolve({"I'm a LocalizationTable"})
			end)
		end

		local function SaveCSV(localizationTable)
			return Promise.new(function(resolve, reject)
				expect(localizationTable).to.be.a("table")
				expect(resolve).to.be.a("function")
				reject("No file selected")
			end)
		end

		flow = Flow.new({
			SetMessage = function(message)
				currentMessage = message
			end,

			DownloadGameTable = DownloadGameTable,
			SaveCSV = SaveCSV,

			UpdateBusyMode = function(nonInteractive, showProgressIndicator)
				section:setState({
					NonInteractive = nonInteractive,
					ShowProgressIndicator = showProgressIndicator,
				})
			end,
		})

		local promise = flow:OnDownload(MockGameId)
		local success, errorInfo = promise:_unwrap()
		assert(not success)
		assert(type(errorInfo) == "table")
		expect(flow._busy).to.equal(false)
		expect(errorInfo:getRibbonMessage()).to.equal("Save CSV canceled")
		assert(not errorInfo:hasWarningMessage())
		expect(currentMessage).to.equal("Save CSV canceled")
		assert(RecursiveEquals(currentState, {
			NonInteractive = false,
			ShowProgressIndicator = false,
		}))
		promise:catch(function(_) end) -- Prevent still-pending promise warning
	end)

	it("traverses successful upload", function()
		local currentState = {"NOSTATE"}
		local currentMessage = {"NOMESSAGE"}
		local uploadedPatch = {"NOUPLOAD"}

		local section = {
			_busy = false,
			setState = function(self, state)
				currentState = state
			end
		}

		local flow

		local function OpenCSV()
			return Promise.new(function(resolve, reject)
				expect(flow._busy).to.equal(true)
				expect(currentState.NonInteractive).to.equal(true)
				expect(currentMessage).to.equal("Open CSV file...")

				-- User selects a proper csv and it loads into a Localization Table
				resolve(MockLocalizationTable)
			end)
		end

		local function ComputePatch(gameId, localizationTable)
			return Promise.new(function(resolve, reject)
				expect(localizationTable).to.equal(MockLocalizationTable)
				expect(flow._busy).to.equal(true)
				expect(currentState.NonInteractive).to.equal(true)
				expect(currentMessage).to.equal("Computing patch...")

				-- Patch computes successfully (which means the download succeeds)
				resolve({
					patch = MockPatch,
				})
			end)
		end

		local function ShowDialog(title, sizeX, sizeY, renderContent)
			return Promise.new(function(resolve, reject)
				expect(flow._busy).to.equal(true)
				expect(currentState.NonInteractive).to.equal(true)
				expect(currentMessage).to.equal("Confirm upload...")

				-- User hits "okay"
				resolve()
			end)
		end

		local function UploadPatch(gameId, patchInfo)
			return Promise.new(function(resolve, reject)
				expect(flow._busy).to.equal(true)
				expect(currentState.NonInteractive).to.equal(true)
				expect(currentMessage).to.equal("Uploading patch...")
				expect(patchInfo.patch).to.equal(MockPatch)
				uploadedPatch = patchInfo.patch

				-- The internet is working, and patch upload succeeds
				resolve()
			end)
		end

		local function RequestAssetGeneration(gameId)
			-- place holder function
			-- RequestAssetGeneration shouldn't affect the upload flow no matter success or fail
		end

		flow = Flow.new({
			SetMessage = function(message)
				currentMessage = message
			end,

			OpenCSV = OpenCSV,
			MakeRenderDialogContent = MakeRenderDialogContent,
			ShowDialog = ShowDialog,
			UploadPatch = UploadPatch,
			RequestAssetGeneration = RequestAssetGeneration,

			UpdateBusyMode = function(nonInteractive, showProgressIndicator)
				section:setState({
					NonInteractive = nonInteractive,
					ShowProgressIndicator = showProgressIndicator,
				})
			end,
		})

		flow:OnUpload(ComputePatch, MockGameId):_unwrap()
		expect(section._busy).to.equal(false)
		expect(currentMessage).to.equal("Upload complete")
		expect(uploadedPatch).to.equal(MockPatch)

		assert(RecursiveEquals(currentState, {
			NonInteractive = false,
			ShowProgressIndicator = false,
		}))
	end)

	it("navigates the cancelling of an open-CSV", function()
		local currentState = {"WRONGSTATE"}
		local currentMessage = {"WRONGMESSAGE"}
		local mockDefaultUpload = {"WRONGUPLOAD"}
		local uploadedPatch = mockDefaultUpload

		local section = {
			_busy = false,
			setState = function(self, state)
				currentState = state
			end,
		}

		local flow

		local function OpenCSV()
			return Promise.reject("No file selected", nil)
		end

		flow = Flow.new({
			SetMessage = function(message)
				currentMessage = message
			end,

			OpenCSV = OpenCSV,
			ComputePatch = NeverReaches,
			MakeRenderDialogContent = NeverReaches,
			ShowDialog = NeverReaches,
			UploadPatch = NeverReaches,

			UpdateBusyMode = function(nonInteractive, showProgressIndicator)
				section:setState({
					NonInteractive = nonInteractive,
					ShowProgressIndicator = showProgressIndicator,
				})
			end,
		})

		local promise = flow:OnUpload(NeverReaches, MockGameId)
		local success, errorInfo = promise:_unwrap()
		assert(not success)
		assert(type(errorInfo) == "table")

		expect(section._busy).to.equal(false)

		assert(not errorInfo:hasWarningMessage())
		expect(errorInfo:getRibbonMessage()).to.equal("Open CSV canceled")

		expect(currentMessage).to.equal("Open CSV canceled")
		expect(currentState.NonInteractive).to.equal(false)
		expect(uploadedPatch).to.equal(mockDefaultUpload)

		promise:catch(function(_) end) -- Prevent still-pending promise warning
	end)

	it("navigates CSV file read failed", function()
		local currentState = {"WRONGSTATE"}
		local currentMessage = {"WRONGMESSAGE"}
		local mockDefaultUpload = {"WRONGUPLOAD"}
		local uploadedPatch = mockDefaultUpload

		local section = {
			_busy = false,
			setState = function(self, state)
				currentState = state
			end,
		}

		local flow

		local function OpenCSV()
			return Promise.reject("details")
		end

		flow = Flow.new({
			SetMessage = function(message)
				currentMessage = message
			end,

			OpenCSV = OpenCSV,
			ComputePatch = NeverReaches,
			MakeRenderDialogContent = NeverReaches,
			ShowDialog = NeverReaches,
			UploadPatch = NeverReaches,

			UpdateBusyMode = function(nonInteractive, showProgressIndicator)
				section:setState({
					NonInteractive = nonInteractive,
					ShowProgressIndicator = showProgressIndicator,
				})
			end,
		})

		local promise = flow:OnUpload(NeverReaches, MockGameId)
		local success, errorInfo = promise:_unwrap()
		assert(not success)
		assert(type(errorInfo) == "table")

		expect(section._busy).to.equal(false)
		expect(currentMessage).to.equal("CSV read failed")
		expect(errorInfo:getRibbonMessage()).to.equal("CSV read failed")
		expect(errorInfo:getWarningMessage()).to.equal("details")
		expect(currentState.NonInteractive).to.equal(false)
		expect(uploadedPatch).to.equal(mockDefaultUpload)

		promise:catch(function(_) end) -- Prevent still-pending promise warning
	end)


	it("navigates compute patch failed", function()
		local currentState = {"WRONGSTATE"}
		local currentMessage = {"WRONGMESSAGE"}
		local uploadedPatch = {"WRONGUPLOAD"}

		local section = {
			_busy = false,
			setState = function(self, state)
				currentState = state
			end,
		}

		local flow

		local function OpenCSV()
			return Promise.resolve( {"I'm a LocalizationTable"} )
		end

		local function ComputePatch(gameId, localizationTable)
			-- Patch compute fails
			return Promise.reject("Patch compute failed, probably because the download failed")
		end

		flow = Flow.new({
			SetMessage = function(message)
				currentMessage = message
			end,

			OpenCSV = OpenCSV,
			MakeRenderDialogContent = NeverReaches,
			ShowDialog = NeverReaches,
			UploadPatch = NeverReaches,

			UpdateBusyMode = function(nonInteractive, showProgressIndicator)
				section:setState({
					NonInteractive = nonInteractive,
					ShowProgressIndicator = showProgressIndicator,
				})
			end,
		})

		local promise = flow:OnUpload(ComputePatch, MockGameId)
		local success, errorInfo = promise:_unwrap()
		assert(not success)
		assert(type(errorInfo) == "table")

		expect(section._busy).to.equal(false)
		expect(errorInfo:getRibbonMessage()).to.equal("Compute patch failed")
		assert(not errorInfo:hasWarningMessage())
		expect(currentMessage).to.equal("Compute patch failed")
		assert(RecursiveEquals(currentState, {
			NonInteractive = false,
			ShowProgressIndicator = false,
		}))
		expect(uploadedPatch).never.to.equal(MockPatch)

		promise:catch(function(_) end) -- Prevent still-pending promise warning
	end)

	it("navigates user canceled at confirmation dialog", function()
		local currentState = {"NOSTATE"}
		local currentMessage = {"NOMESSAGE"}
		local uploadedPatch = {"NOUPLOAD"}

		local section = {
			_busy = false,
			setState = function(self, state)
				currentState = state
			end,
		}

		local flow

		local function OpenCSV()
			return Promise.new(function(resolve, reject)
				-- User selects a proper csv and it loads into a Localization Table
				resolve( {"I'm a LocalizationTable"} )
			end)
		end

		local function ComputePatch(gameId, localizationTable)
			return Promise.new(function(resolve, reject)
				-- Patch computes successfully (which means the download succeeds)
				local patchInfo = {
					patch = MockPatch,
				}

				resolve(patchInfo)
			end)
		end

		local function ShowDialog(title, sizeX, sizeY, renderContent)
			-- User hits "cancel"
			return Promise.reject()
		end

		flow = Flow.new({
			SetMessage = function(message)
				currentMessage = message
			end,

			OpenCSV = OpenCSV,
			MakeRenderDialogContent = MakeRenderDialogContent,
			ShowDialog = ShowDialog,
			UploadPatch = NeverReaches,

			UpdateBusyMode = function(nonInteractive, showProgressIndicator)
				section:setState({
					NonInteractive = nonInteractive,
					ShowProgressIndicator = showProgressIndicator,
				})
			end,
		})

		local promise = flow:OnUpload(ComputePatch, MockGameId)
		local success, errorInfo = promise:_unwrap()
		assert(not success)
		assert(type(errorInfo) == "table")
		expect(section._busy).to.equal(false)
		expect(errorInfo:getRibbonMessage()).to.equal("Upload canceled")
		assert(not errorInfo:hasWarningMessage())
		expect(currentMessage).to.equal("Upload canceled")
		assert(RecursiveEquals(currentState, {
			NonInteractive = false,
			ShowProgressIndicator = false,
		}))
		expect(uploadedPatch).never.to.equal(MockPatch)
		promise:catch(function(_) end) -- Prevent still-pending promise warning
	end)

	it("navigates upload failed", function()
		local currentState = {"NOSTATE"}
		local currentMessage = {"NOMESSAGE"}
		local mockDefaultUpload = {"NOUPLOAD"}
		local uploadedPatch = mockDefaultUpload

		local section = {
			_busy = false,
			setState = function(self, state)
				currentState = state
			end,
		}

		local flow

		local function OpenCSV()
			return Promise.new(function(resolve, reject)
				-- User selects a proper csv and it loads into a Localization Table
				resolve( {"I'm a LocalizationTable"} )
			end)
		end

		local function ComputePatch(gameId, localizationTable)
			return Promise.resolve({
				patch = MockPatch,
			})
		end

		local function ShowDialog(title, sizeX, sizeY, renderContent)
			return Promise.new(function(resolve, reject)
			-- User hits "okay"
				expect(title).to.be.a("string")
				expect(sizeX).to.be.a("number")
				expect(sizeY).to.be.a("number")
				expect(renderContent).to.be.a("function")

				resolve()
			end)
		end

		local function UploadPatch(gameId, patchInfo)
			return Promise.reject("Upload failed")
		end

		flow = Flow.new({
			SetMessage = function(message)
				currentMessage = message
			end,

			OpenCSV = OpenCSV,
			MakeRenderDialogContent = MakeRenderDialogContent,
			ShowDialog = ShowDialog,
			UploadPatch = UploadPatch,


			UpdateBusyMode = function(nonInteractive, showProgressIndicator)
				section:setState({
					NonInteractive = nonInteractive,
					ShowProgressIndicator = showProgressIndicator,
				})
			end,
		})

		local promise = flow:OnUpload(ComputePatch, MockGameId)
		local success, errorInfo = promise:_unwrap()
		assert(not success)
		assert(type(errorInfo) == "table")
		expect(section._busy).to.equal(false)
		expect(errorInfo:getRibbonMessage()).to.equal("Upload failed")
		expect(not errorInfo:hasWarningMessage())
		expect(currentMessage).to.equal("Upload failed")
		assert(RecursiveEquals(currentState, {
			NonInteractive = false,
			ShowProgressIndicator = false,
		}))
		expect(uploadedPatch).to.equal(mockDefaultUpload)
		promise:catch(function(_) end) -- Prevent still-pending promise warning
	end)
end

