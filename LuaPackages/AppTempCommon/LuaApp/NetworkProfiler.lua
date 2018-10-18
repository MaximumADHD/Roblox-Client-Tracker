local percentReporting = tonumber(settings():GetFVariable("PercentReportingNetworkProfileAfterStartup"))

local FEATURE_NAME = "NetworkProfileDuringStartup"
local QUEUED_MEASURE_NAME = "Queued"
local NAME_LOOKUP_MEASURE_NAME = "NameLookup"
local CONNECT_MEASURE_NAME = "Connect"
local SSL_HANDSHAKE_MEASURE_NAME = "SSLHandshake"
local MAKE_REQUEST_MEASURE_NAME = "MakeRequest"
local RECEIVE_RESPONSE_MEASURE_NAME = "ReceiveResponse"

local NetworkProfiler = {}
NetworkProfiler.__index = NetworkProfiler

NetworkProfiler.aggregate = {
	queued = 0.0,
	nameLookup = 0.0,
	connect = 0.0,
	sslHandshake = 0.0,
	makeRequest = 0.0,
	receiveResponse = 0.0,
}

function NetworkProfiler:track(timeProfile)
	self.aggregate.queued = self.aggregate.queued + timeProfile.queued
	if timeProfile.nameLookup >= 0 then
		self.aggregate.nameLookup = self.aggregate.nameLookup + timeProfile.nameLookup
	end
	if timeProfile.connect >= 0 then
		self.aggregate.connect = self.aggregate.connect + timeProfile.connect
	end
	if timeProfile.sslHandshake  >= 0 then
		self.aggregate.sslHandshake = self.aggregate.sslHandshake + timeProfile.sslHandshake
	end
	if timeProfile.makeRequest >= 0 then
		self.aggregate.makeRequest = self.aggregate.makeRequest + timeProfile.makeRequest
	end
	if timeProfile.receiveResponse >= 0 then
		self.aggregate.receiveResponse = self.aggregate.receiveResponse + timeProfile.receiveResponse
	end
end

function NetworkProfiler:report(reportToDiag)
	reportToDiag(FEATURE_NAME, QUEUED_MEASURE_NAME, self.aggregate.queued, percentReporting)
	reportToDiag(FEATURE_NAME, NAME_LOOKUP_MEASURE_NAME, self.aggregate.nameLookup, percentReporting)
	reportToDiag(FEATURE_NAME, CONNECT_MEASURE_NAME, self.aggregate.connect, percentReporting)
	reportToDiag(FEATURE_NAME, SSL_HANDSHAKE_MEASURE_NAME, self.aggregate.sslHandshake, percentReporting)
	reportToDiag(FEATURE_NAME, MAKE_REQUEST_MEASURE_NAME, self.aggregate.makeRequest, percentReporting)
	reportToDiag(FEATURE_NAME, RECEIVE_RESPONSE_MEASURE_NAME, self.aggregate.receiveResponse, percentReporting)
end

return NetworkProfiler