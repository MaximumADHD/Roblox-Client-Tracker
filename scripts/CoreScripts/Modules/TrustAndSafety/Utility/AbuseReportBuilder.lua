local CorePackages = game:GetService("CorePackages")
local AvatarIdentificationModule = require(CorePackages.Workspace.Packages.TnSAvatarIdentification)
local AdIdentificationModule = require(CorePackages.Workspace.Packages.TnSAdIdentification)

local HttpService = game:GetService("HttpService")

local getAvatarsForPoint = AvatarIdentificationModule.AvatarIdentification.getAvatarsForPoint
local getAvatarsForRegion = AvatarIdentificationModule.AvatarIdentification.getAvatarsForRegion
type AvatarIDResults = AvatarIdentificationModule.AvatarIDResults
type AvatarIDStats = AvatarIdentificationModule.AvatarIDStats
type VisiblePlayer = AvatarIdentificationModule.VisiblePlayer

local getAdsForPoint = AdIdentificationModule.AdIdentification.getAdsForPoint
type AdIDResults = AdIdentificationModule.AdIDResults
type VisibleAd = AdIdentificationModule.VisibleAd
type AdIDStats = AdIdentificationModule.AdIDStats

type SerializedVector2 = {number}

local GetFFlagReportAnythingEnableAdReport = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportAnythingEnableAdReport
local GetFFlagGetHumanoidDescription = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagGetHumanoidDescription
local GetFFlagRAEnableCircleRegion = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagRAEnableCircleRegion
local GetFFlagReportAnythingAbuseVectorRenameEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportAnythingAbuseVectorRenameEnabled
local GetFFlagReportAnythingIncludeDiscardStatsInReport = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportAnythingIncludeDiscardStatsInReport


local getHumanoidDescription = require(script.Parent.GetHumanoidDescription).getHumanoidDescription

type IdentifiedAvatar = {
	userId: string,
	distance: number,
	boundingBox: {
		minX: number,
		maxX: number,
		minY: number,
		maxY: number
	},
	hitRate: number,
	convexHull: {SerializedVector2},
	--[[
		Only present if GetFFlagReportAnythingIncludeDiscardStatsInReport() is true
		[1] = wasSkipped - 1 if the avatar was skipped due to too many points discarded, 0 otherwise
		[2] = total - number of points checked
		[3] = offScreenDiscardCount
		[4] = tooCloseDiscardCount
	]]
	pointProcessingStats: {number}?
}

type IdentifiedAd = {
	assetId: string, 
	distance: number,
	boundingBox: {
		minX: number,
		maxX: number,
		minY: number,
		maxY: number
	},
	adUnitName: string, 
	encryptedAdTrackingData: string,
	encryptionMetadata: string,
}

type AbuseReportBuilderState = {
	annotationCircleRadius: number,
	screenSizeWidth: number,
	screenSizeHeight: number,
	screenshotId: string,
	identifiedAvatars: AvatarIDResults,
	avatarIDStats: AvatarIDStats?,
	identifiedAds: AdIDResults,
	adIDStats: AdIDStats?,
	screenshotContentId: string,
	annotationPoints: {Vector2},
	annotationOptionSeen: boolean,
	annotationPageSeen: boolean,
	selectedAbusers: {Player},
	selectedAds: {VisibleAd}
}

type TagValue = {
	data: string | boolean
}
type TagValueList = {
	valueList: {TagValue}
}
type AbuseReportRequest = {
	tags: { [string]: TagValueList }
}

type FinalParameters = {
	finalAnnotationOptionSeen: boolean,
	finalAnnotationPageSeen: boolean,
	finalAnnotationCount: number,
}

local builderState: AbuseReportBuilderState = {
	annotationCircleRadius = 0,
	screenSizeWidth = 0,
	screenSizeHeight = 0,
	screenshotId = "",
	identifiedAvatars = {},
	avatarIDStats = nil,
	identifiedAds = {},
	adIDStats = nil,
	screenshotContentId = "",
	annotationPoints = {},
	annotationOptionSeen = false,
	annotationPageSeen = false,
	selectedAbusers = {},
	selectedAds = {}
}

local Constants = {
	Variant = {
		CS = "ra/cs",
		Sampling = "ra/sampling",
		E1 = "ra/e1",
		E2 = "ra/e2",
		E3 = "ra/e3",
		Unknown = "ra/unknown"
	}
}

local transformVectorArray = function(vectorArray: {Vector2})
	local output: {SerializedVector2} = {}
	for _, v in ipairs(vectorArray) do
		output[#output + 1] = {v.X, v.Y}
	end
	return output
end

local transformIdentifiedAds = function(identifiedAds: AdIDResults)
	local outputArray: {IdentifiedAd} = {}
	for id, identifiedAd in pairs(identifiedAds) do 
		outputArray[#outputArray + 1] = {
			assetId = identifiedAd.assetId,
			distance = identifiedAd.distance,
			boundingBox = {
				minX = identifiedAd.boundingBox.min.X,
				minY = identifiedAd.boundingBox.min.Y,
				maxX = identifiedAd.boundingBox.max.X,
				maxY = identifiedAd.boundingBox.max.Y
			},
			adUnitName = identifiedAd.adUnitName,
			encryptedAdTrackingData = identifiedAd.encryptedAdTrackingData,
			encryptionMetadata = identifiedAd.encryptionMetadata
		}
	end

	return outputArray
end

local transformIdentifiedAvatars = function(identifiedAvatars: AvatarIDResults)
	local outputArray: {IdentifiedAvatar} = {}

	for userId, identifiedAvatar in pairs(identifiedAvatars) do
		outputArray[#outputArray + 1] = {
			userId = tostring(userId),
			distance = identifiedAvatar.distance,
			boundingBox = {
				minX = identifiedAvatar.boundingBox.min.X,
				minY = identifiedAvatar.boundingBox.min.Y,
				maxX = identifiedAvatar.boundingBox.max.X,
				maxY = identifiedAvatar.boundingBox.max.Y
			},
			hitRate = identifiedAvatar.hitRate,
			convexHull = transformVectorArray(identifiedAvatar.convexHull)
		}

		if GetFFlagReportAnythingIncludeDiscardStatsInReport() and identifiedAvatar.pointProcessingStats ~= nil then
			outputArray[#outputArray].pointProcessingStats = {
				if identifiedAvatar.pointProcessingStats.wasSkipped then 1 else 0,
				identifiedAvatar.pointProcessingStats.total,
				identifiedAvatar.pointProcessingStats.offScreenDiscardCount,
				identifiedAvatar.pointProcessingStats.tooCloseDiscardCount,
			}
		end

	end

	return outputArray
end

local addBuilderStateToRequest = function(request: AbuseReportRequest)
	local hasIdentifiedAvatars = false
	-- recommended way to count keys in non-array tables (we bail out early
	-- though)
	for userId, _ in pairs(builderState.identifiedAvatars) do
		hasIdentifiedAvatars = true
		break
	end
	
	local hasIdentifiedAds = false 

	if GetFFlagReportAnythingEnableAdReport() then 
		for adId, _ in pairs(builderState.identifiedAds) do 
			hasIdentifiedAds = true 
			break
		end
	end 
	
	if hasIdentifiedAvatars then
		request.tags.IDENTIFIED_AVATARS = {
			valueList = {
				{ data = HttpService:JSONEncode(transformIdentifiedAvatars(builderState.identifiedAvatars)) }
			}
		}
	end
	

	if builderState.avatarIDStats then
		request.tags.AVATAR_ID_STATS = {
			valueList = {
				{ data = HttpService:JSONEncode(builderState.avatarIDStats) }
			}
		}
	end
	
	if hasIdentifiedAds and GetFFlagReportAnythingEnableAdReport() then 
		request.tags.IDENTIFIED_ADS = {
			valueList = {
				{ data = HttpService:JSONEncode(transformIdentifiedAds(builderState.identifiedAds))}
			}
		}
	end
	
	if builderState.adIDStats and GetFFlagReportAnythingEnableAdReport() then 
		request.tags.AD_ID_STATS = {
			valueList = {
				{ data = HttpService:JSONEncode(builderState.adIDStats)}
			}
		}
	end

	if #builderState.screenshotId > 0 then
		request.tags.SCREENSHOT_ID = {
			valueList = {
				{ data = builderState.screenshotId }
			}
		}
	end

	if #builderState.annotationPoints > 0 then
		request.tags.RA_ANNOTATION_POINTS = {
			valueList = {
				{ data = HttpService:JSONEncode(transformVectorArray(builderState.annotationPoints)) }
			}
		}
	end

	request.tags.RA_ANNOTATION_OPTION_SEEN = {
		valueList = {
			{ data = tostring(builderState.annotationOptionSeen) }
		}
	}

	request.tags.RA_ANNOTATION_PAGE_SEEN = {
		valueList = {
			{ data = tostring(builderState.annotationPageSeen) }
		}
	}
end

export type ExperienceReportData = {
	localUserId: number,
	placeId: number,
	abuseComment: string,
	abuseReason: string,
	menuEntryPoint: string,
	variant: string?
}

local buildExperienceReportRequest = function(reportData: ExperienceReportData)
	local request: AbuseReportRequest = {
		tags = {
			ENTRY_POINT = {
				valueList = {
					{ data = "in-experience" },
				}
			},

			SUBMITTER_USER_ID = {
				valueList = {
					{ data = tostring(reportData.localUserId) },
				}
			},

			REPORTED_ABUSE_CATEGORY = {
				valueList = {
					{ data = reportData.abuseReason } ,
				}
			},

			PLACE_ID = {
				valueList = {
					{ data = tostring(reportData.placeId) },
				}
			},

			REPORTER_COMMENT = {
				valueList = {
					{ data = reportData.abuseComment },
				}
			},

			REPORTED_ABUSE_VECTOR = {
				valueList = {
					{ data = "place" },
				}
			},

			IN_EXP_MENU_ENTRY_POINT = {
				valueList = {
					{ data = reportData.menuEntryPoint }
				}
			},

			VARIANT = {
				valueList = {
					{ data = reportData.variant or Constants.Variant.CS },
				}
			},
		}
	}
	addBuilderStateToRequest(request)

	if #builderState.selectedAds > 0 and GetFFlagReportAnythingEnableAdReport() then 
		request.tags.REPORT_TARGET_ADS = {
			valueList = {
				{ data = HttpService:JSONEncode(transformIdentifiedAds(builderState.selectedAds))}
			}
		}
	end

	return HttpService:JSONEncode(request)
end

export type OtherReportData = {
	localUserId: number,
	abuseComment: string,
	abuseReason: string,
	formSelectedAbuserUserId: number?,
	menuEntryPoint: string,
	variant: string?
}
local buildOtherReportRequest = function(reportData: OtherReportData)
	local request: AbuseReportRequest = {
		tags = {
			ENTRY_POINT = {
				valueList = {
					{ data = "in-experience" },
				}
			},

			SUBMITTER_USER_ID = {
				valueList = {
					{ data = tostring(reportData.localUserId) },
				}
			},

			REPORTED_ABUSE_CATEGORY = {
				valueList = {
					{ data = reportData.abuseReason } ,
				}
			},

			REPORTER_COMMENT = {
				valueList = {
					{ data = reportData.abuseComment },
				}
			},

			REPORTED_ABUSE_VECTOR = {
				valueList = {
					{ data = if GetFFlagReportAnythingAbuseVectorRenameEnabled()
						then "avatar"
						else "other"
					},
				}
			},

			IN_EXP_MENU_ENTRY_POINT = {
				valueList = {
					{ data = reportData.menuEntryPoint }
				}
			},

			VARIANT = {
				valueList = {
					{ data = reportData.variant or Constants.Variant.Unknown },
				}
			},
		}
	}

	addBuilderStateToRequest(request)
	if #builderState.selectedAbusers > 0 then
		local allegedAbuserId = tostring(builderState.selectedAbusers[1].UserId)
		local selectedAbuserIds = {}
		for _, player in ipairs(builderState.selectedAbusers) do
			selectedAbuserIds[#selectedAbuserIds + 1] = tostring(player.UserId)
		end
		
		if GetFFlagGetHumanoidDescription() then 
			local humanoidDescription, outputMessage = getHumanoidDescription(builderState.selectedAbusers[1].UserId)
			request.tags.REPORT_TARGET_HUMANOID_DESCRIPTION = {
				valueList = {
					{ data = HttpService:JSONEncode(humanoidDescription) }
				}
			}
			
			request.tags.REPORT_TARGET_HUMANOID_DESCRIPTION_STATUS = {
				valueList = {
					{ data = outputMessage }
				}
			}
			
			local abuserHumanoidDescriptions = {}
			for _, player in ipairs(builderState.selectedAbusers) do 
				humanoidDescription, outputMessage = getHumanoidDescription(player.UserId)
				abuserHumanoidDescriptions[#abuserHumanoidDescriptions + 1] = {
					humanoidDescription = humanoidDescription,
					outputMessage = outputMessage
				}
			end
			
			request.tags.RA_ALL_ANNOTATED_HUMANOID_DESCRIPTIONS = {
				valueList = {
					{ data = HttpService:JSONEncode(abuserHumanoidDescriptions) }
				}
			}
		end
		
		request.tags.REPORT_TARGET_USER_ID = {
			valueList = {
				{ data = tostring(allegedAbuserId) },
			}
		}
		request.tags.RA_ALL_ANNOTATED_USER_IDS = {
			valueList = {
				{ data = HttpService:JSONEncode(selectedAbuserIds) }
			}
		}
	elseif reportData.formSelectedAbuserUserId then
		-- if the reporter did not go through the annotation flow and instead
		-- chose the abuser from the regular form dropdown.
		-- or: Went through annotation flow but did not have any annotations
		-- that found a user.
		
		if GetFFlagGetHumanoidDescription() then 
			local humanoidDescription, outputMessage = getHumanoidDescription(reportData.formSelectedAbuserUserId)
			request.tags.REPORT_TARGET_HUMANOID_DESCRIPTION = {
				valueList = {
					{ data = HttpService:JSONEncode(humanoidDescription)}
				}
			}
			
			request.tags.REPORT_TARGET_HUMANOID_DESCRIPTION_STATUS = {
				valueList = {
					{ data = outputMessage }
				}
			}
		end

		request.tags.REPORT_TARGET_USER_ID = {
			valueList = {
				{ data = tostring(reportData.formSelectedAbuserUserId) },
			}
		}
	end

	return HttpService:JSONEncode(request)
end

-- responsible for setting selectedAbusers
local interpretAnnotations = function()
	local addedUserIds: { [number]: boolean } = {} -- "set" type
	local addedAdsIds: { [number]: boolean } = {} -- "set" type

	-- the same order in which the annotations are selected 
	local orderedResults: {Player} = {}
	local orderedAdRresults: {VisibleAd} = {}
	for _, annotationPoint in ipairs(builderState.annotationPoints) do
		
		local minDistance = math.huge
		local closestPlayerId = nil
		local avatarsHit = {} :: { Player }
		
		if GetFFlagRAEnableCircleRegion() then 
			-- we select the avatar closest to the center of the circle 
			avatarsHit = getAvatarsForRegion(
				builderState.identifiedAvatars,
				annotationPoint,
				builderState.annotationCircleRadius,
				builderState.screenSizeWidth,
				builderState.screenSizeHeight
			)
		else 
			-- pick closest player out of the players under the point
			avatarsHit = getAvatarsForPoint(builderState.identifiedAvatars, annotationPoint)
		end

		for userId, player in pairs(avatarsHit) do
			local distance = builderState.identifiedAvatars[userId].distance
			if distance < minDistance then
				minDistance = distance
				closestPlayerId = userId
			end
		end
	
		local closestAdId = nil

		if GetFFlagReportAnythingEnableAdReport() then 
			local adsHit = getAdsForPoint(builderState.identifiedAds, annotationPoint)
			minDistance = math.huge
			for adId, ad in pairs(adsHit) do
				local distance = builderState.identifiedAds[adId].distance
				if distance < minDistance then
					minDistance = distance
					closestAdId = adId
				end
			end
		end

		if closestPlayerId ~= nil and not addedUserIds[closestPlayerId] then
			addedUserIds[closestPlayerId] = true
			orderedResults[#orderedResults + 1] = builderState.identifiedAvatars[closestPlayerId].player
		else
			if GetFFlagReportAnythingEnableAdReport() then 
				if closestAdId ~= nil and not addedAdsIds[closestAdId] then 
					addedAdsIds[closestAdId] = true 
					orderedAdRresults[#orderedAdRresults + 1] = builderState.identifiedAds[closestAdId]
				end
			end
		end
	end

	builderState.selectedAbusers = orderedResults
	builderState.selectedAds = orderedAdRresults
end

return {
	setAnnotationCircleRadius = function(circleRadius: number)
		builderState.annotationCircleRadius = circleRadius
	end,
	getAnnotationCircleRadius = function()
		return builderState.annotationCircleRadius
	end,
	setAspectRatioDimensions = function(width: number, height: number)
		builderState.screenSizeWidth = width
		builderState.screenSizeHeight = height
	end,
	setScreenshotId = function(screenshotId: string)
		builderState.screenshotId = screenshotId
	end,
	setIdentifiedAds = function(identifiedAds: AdIDResults)
		builderState.identifiedAds = identifiedAds
	end,
	getIdentifiedAds = function()
		return builderState.identifiedAds
	end,
	setIdentifiedAvatars = function(identifiedAvatars: AvatarIDResults)
		builderState.identifiedAvatars = identifiedAvatars
	end,
	getIdentifiedAvatars = function()
		return builderState.identifiedAvatars
	end,
	setAvatarIDStats = function(stats: AvatarIDStats)
		builderState.avatarIDStats = stats
	end,
	setAdIDStats = function(stats: AdIDStats)
		builderState.adIDStats = stats
	end,
	setScreenshotContentId = function(contentId: string)
		builderState.screenshotContentId = contentId
		-- annotation points are only valid for the screenshot they were
		-- annotated over.
		builderState.annotationPoints = {}
		builderState.selectedAbusers = {}
	end,
	getScreenshotContentId = function()
		return builderState.screenshotContentId
	end,
	setAnnotationPoints = function(annotationPoints: {Vector2})
		builderState.annotationPoints = annotationPoints
		builderState.annotationOptionSeen = true
		builderState.annotationPageSeen = true
		interpretAnnotations()
	end,
	getSelectedAbusers = function()
		return builderState.selectedAbusers
	end,
	getSelectedAds = function()
		return builderState.selectedAds
	end,
	clearAnnotationPoints = function()
		builderState.annotationPoints = {}
		builderState.selectedAbusers = {}
		
		if GetFFlagReportAnythingEnableAdReport() then 
			builderState.selectedAds = {}
		end
		builderState.annotationOptionSeen = false
		builderState.annotationPageSeen = false
	end,
	getAnnotationPoints = function()
		return builderState.annotationPoints
	end,
	setAnnotationOptionSeen = function(seen)
		builderState.annotationOptionSeen = seen
	end,
	getAnnotationOptionSeen = function()
		return builderState.annotationOptionSeen
	end,
	setAnnotationPageSeen = function(seen)
		builderState.annotationPageSeen = seen
	end,
	getAnnotationPageSeen = function()
		return builderState.annotationPageSeen
	end,
	buildExperienceReportRequest = buildExperienceReportRequest,
	buildOtherReportRequest = buildOtherReportRequest,
	clear = function()
		builderState = {
			annotationCircleRadius = 0,
			screenSizeWidth = 0,
			screenSizeHeight = 0,
			screenshotId = "",
			identifiedAvatars = {},
			avatarIDStats = nil,
			identifiedAds = {},
			adIDStats = nil,
			screenshotContentId = "",
			annotationPoints = {},
			annotationOptionSeen = false,
			annotationPageSeen = false,
			selectedAbusers = {},
			selectedAds = {}
		}
	end,
	getAnalyticsParameters = function(): FinalParameters
		return {
			finalAnnotationOptionSeen = builderState.annotationOptionSeen,
			finalAnnotationPageSeen = builderState.annotationPageSeen,
			finalAnnotationCount = #builderState.annotationPoints,
			finalAnnotatedAvatarsCount = #builderState.selectedAbusers
		}
	end,
	Constants = Constants
}
