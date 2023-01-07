local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama

export type InjectedProps = {
	startTimer: () -> (),
	stopTimer: () -> (),
	resetTimer: () -> (),
	getLoadingTime: (() -> number),
	cancelThreshold: (() -> ()),
}

type Config = {
	loadingThreshold: number?,
	onReachingThreshold: ((loadingTime: number, props: any) -> ())?,
	onLoaded: ((loadingTime: number, props: any) -> ())?,
}

local withLoadingTimer = function(wrappedComponent, config: Config)
	-- TODO: extract and rewrite as a class
	local LoadingTimer = Roact.PureComponent:extend("LoadingTimer")

	function LoadingTimer:init()
		self.loadingTime = {
			startTime = nil,
			endTime = nil,
			thresholdCanceled = false,
		}

		self.startThresholdTimer = function()
			if not config.loadingThreshold then
				return
			end

			delay(config.loadingThreshold, function()
				if
					config.onReachingThreshold
					and not self.thresholdCanceled
					and not self.loadingTime.endTime
					and self.loadingTime.startTime
				then
					self.stopTimer(true)
					config.onReachingThreshold(self.getLoadingTime(), self.props)
				end
			end)
		end

		self.resetTimer = function()
			self.loadingTime = {
				startTime = nil,
				endTime = nil,
			}
		end

		self.startTimer = function()
			self.loadingTime.startTime = os.clock()

			self.startThresholdTimer()
		end

		self.stopTimer = function(reachedThreshold)
			if self.loadingTime.endTime then
				return
			end

			self.loadingTime.endTime = os.clock()

			if config.onLoaded and not reachedThreshold then
				config.onLoaded(self.getLoadingTime(), self.props)
			end
		end

		self.getLoadingTime = function(): number
			if self.loadingTime.endTime and self.loadingTime.startTime then
				return self.loadingTime.endTime - self.loadingTime.startTime
			else
				return -1
			end
		end

		self.cancelThreshold = function()
			self.thresholdCanceled = true
		end
	end

	function LoadingTimer:render()
		return Roact.createElement(
			wrappedComponent,
			llama.Dictionary.join(self.props, {
				loadingTimerProps = {
					startTimer = self.startTimer,
					stopTimer = self.stopTimer,
					resetTimer = self.resetTimer,
					getLoadingTime = self.getLoadingTime,
					cancelThreshold = self.cancelThreshold,
				},
			})
		)
	end

	return LoadingTimer
end

return withLoadingTimer
