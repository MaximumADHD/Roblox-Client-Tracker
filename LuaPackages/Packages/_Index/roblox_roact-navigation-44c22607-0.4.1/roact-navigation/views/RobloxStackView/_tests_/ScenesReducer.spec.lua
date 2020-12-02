return function()
	-- ScenesReducer(scenes, nextState, prevState, descriptors)
	local ScenesReducer = require(script.Parent.Parent.ScenesReducer)

	local initialRouteKey = "id-1"
	local initialRouteName = "First Route"
	local initialRoute = {
		routeName = initialRouteName,
		key = initialRouteKey,
	}

	local initialState =  {
		index = 1,
		key = "StackRouterRoot",
		isTransitioning = false,
		routes = {
			initialRoute,
		},
	}

	local initialDescriptors = {
		[initialRouteKey] = {
			key = initialRouteKey,
			navigation = {
				state = initialRoute,
			},
			state =  initialRoute,
		},
	}

	local initialScenes = nil

	it("should generate valid initial scene", function()
		local scenes = ScenesReducer({}, initialState, nil, initialDescriptors)
		local sceneOne = scenes[1]
		expect(#scenes).to.be.equal(1)
		expect(sceneOne.route).to.be.equal(initialRoute)
		expect(sceneOne.index).to.be.equal(1)
		expect(sceneOne.isActive).to.be.equal(true)
		expect(sceneOne.isStale).to.be.equal(false)
		initialScenes = scenes
	end)

	it("should update descriptor", function()
		local scenes = ScenesReducer({}, initialState, nil, initialDescriptors)
		local dummyDescriptor = { key = "this is a dummy descriptor" }
		scenes[1].descriptor = dummyDescriptor
		local updatedScenes = ScenesReducer(scenes, initialState, initialState, initialDescriptors)
		expect(#updatedScenes).to.be.equal(1)
		local sceneOne = updatedScenes[1]
		expect(sceneOne.descriptor).to.never.be.equal(dummyDescriptor)
		expect(sceneOne.descriptor).to.be.equal(initialDescriptors[initialRouteKey])
		expect(sceneOne.route).to.be.equal(initialRoute)
		expect(sceneOne.index).to.be.equal(1)
		expect(sceneOne.isActive).to.be.equal(true)
		expect(sceneOne.isStale).to.be.equal(false)
	end)

	it("should bail out early", function()
		expect(initialScenes).to.never.be.equal(nil)
		local scenes = ScenesReducer(initialScenes, nil, nil, nil)
		expect(scenes).to.be.equal(initialScenes)
		scenes = ScenesReducer(initialScenes, initialState, initialState, initialDescriptors)
		expect(scenes).to.be.equal(initialScenes)
	end)

	local secondRouteKey =  "id-2"
	local secondRouteName =  "Second Route"
	local secondRoute = {
		key = secondRouteKey,
		routeName = secondRouteName,
	}

	local secondState = {
		index = 2,
		key = "StackRouterRoot",
		isTransitioning = true,
		routes = {
			initialRoute,
			secondRoute,
		},
	}

	local secondDescriptors = {
		[initialRouteKey] = initialDescriptors[initialRouteKey],
		[secondRouteKey] ={
			key = secondRouteKey,
			navigation = {
				state = secondRoute,
			},
			state = secondRoute,
		},
	}

	local secondScenes = nil

	it("should add second scene", function()
		expect(initialScenes).to.never.be.equal(nil)
		local scenes = ScenesReducer(initialScenes, secondState, initialState, secondDescriptors)
		expect(scenes).to.never.be.equal(initialScenes)
		expect(#scenes).to.be.equal(2)

		local sceneOne = scenes[1]
		expect(sceneOne.route).to.be.equal(initialRoute)
		expect(sceneOne.index).to.be.equal(1)
		expect(sceneOne.isActive).to.be.equal(false)
		expect(sceneOne.isStale).to.be.equal(false)

		local sceneTwo = scenes[2]
		expect(sceneTwo.route).to.be.equal(secondRoute)
		expect(sceneTwo.index).to.be.equal(2)
		expect(sceneTwo.isActive).to.be.equal(true)
		expect(sceneTwo.isStale).to.be.equal(false)

		secondScenes = scenes
	end)

	local thirdRouteKey =  "id-3"
	local thirdRouteName =  "Third Route"
	local thirdRoute = {
		key = thirdRouteKey,
		routeName = thirdRouteName,
	}

	local thirdState = {
		index = 3,
		key = "StackRouterRoot",
		isTransitioning = true,
		routes = {
			initialRoute,
			secondRoute,
			thirdRoute,
		},
	}

	local thirdDescriptors = {
		[initialRouteKey] = initialDescriptors[initialRouteKey],
		[secondRouteKey] = secondDescriptors[secondRouteKey],
		[thirdRouteKey] = {
			key = thirdRouteKey,
			navigation = {
				state = thirdRoute,
			},
			state = thirdRoute,
		},
	}

	local thirdScenes = nil

	it("should add third scene", function()
		expect(initialScenes).to.never.be.equal(nil)
		local scenes = ScenesReducer(secondScenes, thirdState, secondState, thirdDescriptors)
		expect(scenes).to.never.be.equal(initialScenes)
		expect(#scenes).to.be.equal(3)

		local sceneOne = scenes[1]
		expect(sceneOne.route).to.be.equal(initialRoute)
		expect(sceneOne.index).to.be.equal(1)
		expect(sceneOne.isActive).to.be.equal(false)
		expect(sceneOne.isStale).to.be.equal(false)

		local sceneTwo = scenes[2]
		expect(sceneTwo.route).to.be.equal(secondRoute)
		expect(sceneTwo.index).to.be.equal(2)
		expect(sceneTwo.isActive).to.be.equal(false)
		expect(sceneTwo.isStale).to.be.equal(false)

		local sceneThree = scenes[3]
		expect(sceneThree.route).to.be.equal(thirdRoute)
		expect(sceneThree.index).to.be.equal(3)
		expect(sceneThree.isActive).to.be.equal(true)
		expect(sceneThree.isStale).to.be.equal(false)

		thirdScenes = scenes
	end)

	it("should mark removed scenes as stale", function()
		expect(secondState).to.never.be.equal(nil)
		local scenes = ScenesReducer(thirdScenes, initialState, thirdState, initialDescriptors)
		expect(scenes).to.never.be.equal(initialScenes)
		expect(#scenes).to.be.equal(3)

		local sceneOne = scenes[1]
		expect(sceneOne.route).to.be.equal(initialRoute)
		expect(sceneOne.index).to.be.equal(1)
		expect(sceneOne.isActive).to.be.equal(true)
		expect(sceneOne.isStale).to.be.equal(false)

		local sceneTwo = scenes[2]
		expect(sceneTwo.route).to.be.equal(secondRoute)
		expect(sceneTwo.index).to.be.equal(2)
		expect(sceneTwo.isActive).to.be.equal(false)
		expect(sceneTwo.isStale).to.be.equal(true)

		local sceneThree = scenes[3]
		expect(sceneThree.route).to.be.equal(thirdRoute)
		expect(sceneThree.index).to.be.equal(3)
		expect(sceneThree.isActive).to.be.equal(false)
		expect(sceneThree.isStale).to.be.equal(true)
	end)

	local secondScreenReplacementKey =  "id-22"
	local secondScreenReplacementName =  "Second Route Replacement"
	local secondScreenReplacementRoute = {
		key = secondScreenReplacementKey,
		routeName = secondScreenReplacementName,
	}

	local replacedSecondSceneState = {
		index = 3,
		key = "StackRouterRoot",
		isTransitioning = true,
		routes = {
			initialRoute,
			secondScreenReplacementRoute,
			thirdRoute,
		},
	}

	local replacedSceneDescriptors = {
		[initialRouteKey] = initialDescriptors[initialRouteKey],
		[secondRouteKey] = {
			key = secondScreenReplacementKey,
			navigation = {
				state = secondScreenReplacementRoute
			},
			state = secondScreenReplacementRoute,
		},
		[thirdRouteKey] = thirdDescriptors[thirdRouteKey],
	}

	it("should mark replaced scene as stale", function()
		expect(secondState).to.never.be.equal(nil)
		local scenes = ScenesReducer(thirdScenes, replacedSecondSceneState, thirdState, replacedSceneDescriptors)
		expect(scenes).to.never.be.equal(initialScenes)
		expect(#scenes).to.be.equal(4) -- replaced scene is marked stale, it is not removed

		local sceneOne = scenes[1]
		expect(sceneOne.route).to.be.equal(initialRoute)
		expect(sceneOne.index).to.be.equal(1)
		expect(sceneOne.isActive).to.be.equal(false)
		expect(sceneOne.isStale).to.be.equal(false)

		local sceneTwo = scenes[2]
		expect(sceneTwo.route).to.be.equal(secondRoute)
		expect(sceneTwo.index).to.be.equal(2)
		expect(sceneTwo.isActive).to.be.equal(false)
		expect(sceneTwo.isStale).to.be.equal(true)

		-- because of comparison algorithm in SceneReducer.lua compareScenes
		-- the replacement scene is after the scene it replaced because id-2 < id-22
		local sceneTwoReplacement = scenes[3]
		expect(sceneTwoReplacement.route).to.be.equal(secondScreenReplacementRoute)
		-- index is still 2 because the scene index come from route index in the nextState
		-- this is ok because filterStale in Transitioner.lua will remove the stale scene
		expect(sceneTwoReplacement.index).to.be.equal(2)
		expect(sceneTwoReplacement.isActive).to.be.equal(false)
		expect(sceneTwoReplacement.isStale).to.be.equal(false)

		local sceneThree = scenes[4]
		expect(sceneThree.route).to.be.equal(thirdRoute)
		expect(sceneThree.index).to.be.equal(3)
		expect(sceneThree.isActive).to.be.equal(true)
		expect(sceneThree.isStale).to.be.equal(false)
	end)
end
