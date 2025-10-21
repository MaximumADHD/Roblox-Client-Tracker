local root = script:FindFirstAncestor("AbuseReportMenu")
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

type SerializedVector2 = { number }

local GetFFlagReportAnythingEnableAdReport =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportAnythingEnableAdReport
local GetFFlagGetHumanoidDescription =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagGetHumanoidDescription
local GetFFlagRAEnableCircleRegion = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagRAEnableCircleRegion
local GetFFlagGetHumanoidDescriptionUpdatesV2E =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagGetHumanoidDescriptionUpdatesV2E

local getHumanoidDescription = require(root.ReportAnything.Utility.GetHumanoidDescription).getHumanoidDescription
local Types = require(root.Components.Types)
local ReportAnythingAnalytics = require(root.ReportAnything.Utility.ReportAnythingAnalytics)

type IdentifiedAvatar = {
	userId: string,
	distance: number,
	boundingBox: {
		minX: number,
		maxX: number,
		minY: number,
		maxY: number,
	},
	hitRate: number,
	convexHull: { SerializedVector2 },
	--[[
		[1] = wasSkipped - 1 if the avatar was skipped due to too many points discarded, 0 otherwise
		[2] = total - number of points checked
		[3] = offScreenDiscardCount
		[4] = tooCloseDiscardCount
	]]
	pointProcessingStats: { number }?,
}

type IdentifiedAd = {
	assetId: string,
	distance: number,
	boundingBox: {
		minX: number,
		maxX: number,
		minY: number,
		maxY: number,
	},
	adUnitName: string,
	encryptedAdTrackingData: string,
	encryptionMetadata: string,
}

type TagValue = {
	data: string | boolean,
}
type TagValueList = {
	valueList: { TagValue },
}
type AbuseReportRequest = {
	tags: { [string]: TagValueList },
}

type FinalParameters = {
	finalAnnotationOptionSeen: boolean,
	finalAnnotationPageSeen: boolean,
	finalAnnotationCount: number,
}

local Constants = {
	Variant = {
		CS = "ra/cs",
		Sampling = "ra/sampling",
		E1 = "ra/e1",
		E2 = "ra/e2",
		E3 = "ra/e3",
		NM = "ra/nm",
		Unknown = "ra/unknown",
	},
}

local transformVectorArray = function(vectorArray: { Vector2 })
	local output: { SerializedVector2 } = {}
	for _, v in ipairs(vectorArray) do
		output[#output + 1] = { v.X, v.Y }
	end
	return output
end

local transformIdentifiedAds = function(identifiedAds: AdIDResults)
	local outputArray: { IdentifiedAd } = {}
	for id, identifiedAd in pairs(identifiedAds) do
		outputArray[#outputArray + 1] = {
			assetId = identifiedAd.assetId,
			distance = identifiedAd.distance,
			boundingBox = {
				minX = identifiedAd.boundingBox.min.X,
				minY = identifiedAd.boundingBox.min.Y,
				maxX = identifiedAd.boundingBox.max.X,
				maxY = identifiedAd.boundingBox.max.Y,
			},
			adUnitName = identifiedAd.adUnitName,
			encryptedAdTrackingData = identifiedAd.encryptedAdTrackingData,
			encryptionMetadata = identifiedAd.encryptionMetadata,
		}
	end

	return outputArray
end

local transformIdentifiedAvatars = function(identifiedAvatars: AvatarIDResults)
	local outputArray: { IdentifiedAvatar } = {}

	for userId, identifiedAvatar in pairs(identifiedAvatars) do
		outputArray[#outputArray + 1] = {
			userId = tostring(userId),
			distance = identifiedAvatar.distance,
			boundingBox = {
				minX = identifiedAvatar.boundingBox.min.X,
				minY = identifiedAvatar.boundingBox.min.Y,
				maxX = identifiedAvatar.boundingBox.max.X,
				maxY = identifiedAvatar.boundingBox.max.Y,
			},
			hitRate = identifiedAvatar.hitRate,
			convexHull = transformVectorArray(identifiedAvatar.convexHull),
		}

		if identifiedAvatar.pointProcessingStats ~= nil then
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

local getHumanoidDescriptionWithFallback = function(userId: number, raState: Types.ReportAnythingState): (any, string)
	local humanoidDescription, outputMessage

	if GetFFlagGetHumanoidDescriptionUpdatesV2E() then
		local avatarIdResult = raState.identificationResults.identifiedAvatars[userId]
		if
			avatarIdResult
			and avatarIdResult.humanoidDescription
			and avatarIdResult.humanoidDescriptionStatus == "OK"
		then
			humanoidDescription = avatarIdResult.humanoidDescription
			outputMessage = avatarIdResult.humanoidDescriptionStatus
		else
			humanoidDescription, outputMessage = getHumanoidDescription(userId)
		end
	else
		humanoidDescription, outputMessage = getHumanoidDescription(userId)
	end

	return humanoidDescription, outputMessage
end

local interpretAnnotations = function(raState: Types.ReportAnythingState): ({ Player }, { VisibleAd })
	local addedUserIds: { [number]: boolean } = {} -- "set" type
	local addedAdsIds: { [number]: boolean } = {} -- "set" type

	-- the same order in which the annotations are selected
	local orderedResults: { Player } = {}
	local orderedAdRresults: { VisibleAd } = {}
	for _, annotationPoint in ipairs(raState.annotationPoints) do
		local minDistance = math.huge
		local closestPlayerId = nil
		local avatarsHit = {} :: { Player }

		if GetFFlagRAEnableCircleRegion() then
			-- we select the avatar closest to the center of the circle
			avatarsHit = getAvatarsForRegion(
				raState.identificationResults.identifiedAvatars,
				annotationPoint,
				raState.annotationCircleRadius,
				raState.annotationAreaWidth,
				raState.annotationAreaHeight
			)
		else
			-- pick closest player out of the players under the point
			avatarsHit = getAvatarsForPoint(raState.identificationResults.identifiedAvatars, annotationPoint)
		end

		for userId, player in pairs(avatarsHit) do
			local distance = raState.identificationResults.identifiedAvatars[userId].distance
			if distance < minDistance then
				minDistance = distance
				closestPlayerId = userId
			end
		end

		local closestAdId = nil

		if GetFFlagReportAnythingEnableAdReport() then
			local adsHit = getAdsForPoint(raState.identificationResults.identifiedAds, annotationPoint)
			minDistance = math.huge
			for adId, ad in pairs(adsHit) do
				local distance = raState.identificationResults.identifiedAds[adId].distance
				if distance < minDistance then
					minDistance = distance
					closestAdId = adId
				end
			end
		end

		if closestPlayerId ~= nil and not addedUserIds[closestPlayerId] then
			addedUserIds[closestPlayerId] = true
			orderedResults[#orderedResults + 1] =
				raState.identificationResults.identifiedAvatars[closestPlayerId].player
		else
			if GetFFlagReportAnythingEnableAdReport() then
				if closestAdId ~= nil and not addedAdsIds[closestAdId] then
					addedAdsIds[closestAdId] = true
					orderedAdRresults[#orderedAdRresults + 1] = raState.identificationResults.identifiedAds[closestAdId]
				end
			end
		end
	end

	return orderedResults, orderedAdRresults
end

local addRAStateToRequest = function(
	raState: Types.ReportAnythingState,
	analyticsState: ReportAnythingAnalytics.ReportAnythingAnalyticsState,
	request: AbuseReportRequest
)
	local hasIdentifiedAvatars = false
	-- recommended way to count keys in non-array tables (we bail out early
	-- though)
	for userId, _ in pairs(raState.identificationResults.identifiedAvatars) do
		hasIdentifiedAvatars = true
		break
	end

	local hasIdentifiedAds = false

	if GetFFlagReportAnythingEnableAdReport() then
		for adId, _ in pairs(raState.identificationResults.identifiedAds) do
			hasIdentifiedAds = true
			break
		end
	end

	if hasIdentifiedAvatars then
		request.tags.IDENTIFIED_AVATARS = {
			valueList = {
				{
					data = HttpService:JSONEncode(
						transformIdentifiedAvatars(raState.identificationResults.identifiedAvatars)
					),
				},
			},
		}
	end

	if raState.identificationResults.avatarIDStats then
		request.tags.AVATAR_ID_STATS = {
			valueList = {
				{ data = HttpService:JSONEncode(raState.identificationResults.avatarIDStats) },
			},
		}
	end

	if hasIdentifiedAds and GetFFlagReportAnythingEnableAdReport() then
		request.tags.IDENTIFIED_ADS = {
			valueList = {
				{ data = HttpService:JSONEncode(transformIdentifiedAds(raState.identificationResults.identifiedAds)) },
			},
		}
	end

	if raState.identificationResults.adIDStats and GetFFlagReportAnythingEnableAdReport() then
		request.tags.AD_ID_STATS = {
			valueList = {
				{ data = HttpService:JSONEncode(raState.identificationResults.adIDStats) },
			},
		}
	end

	if #raState.screenshotId > 0 then
		request.tags.SCREENSHOT_ID = {
			valueList = {
				{ data = raState.screenshotId },
			},
		}
	end

	if #raState.annotationPoints > 0 then
		request.tags.RA_ANNOTATION_POINTS = {
			valueList = {
				{ data = HttpService:JSONEncode(transformVectorArray(raState.annotationPoints)) },
			},
		}
	end

	request.tags.RA_ANNOTATION_OPTION_SEEN = {
		valueList = {
			{ data = tostring(raState.annotationOptionSeen) },
		},
	}

	request.tags.RA_ANNOTATION_PAGE_SEEN = {
		valueList = {
			{ data = tostring(raState.annotationPageSeen) },
		},
	}
end

export type ExperienceFormData = {
	localUserId: number,
	placeId: number,
	abuseComment: string,
	abuseReason: string,
	menuEntryPoint: string,
	variant: string?,
}

local buildExperienceReportRequest = function(
	formData: ExperienceFormData,
	raState: Types.ReportAnythingState,
	analyticsState: ReportAnythingAnalytics.ReportAnythingAnalyticsState
)
	local request: AbuseReportRequest = {
		tags = {
			ENTRY_POINT = {
				valueList = {
					{ data = "in-experience" },
				},
			},

			SUBMITTER_USER_ID = {
				valueList = {
					{ data = tostring(formData.localUserId) },
				},
			},

			REPORTED_ABUSE_CATEGORY = {
				valueList = {
					{ data = formData.abuseReason },
				},
			},

			PLACE_ID = {
				valueList = {
					{ data = tostring(formData.placeId) },
				},
			},

			REPORTER_COMMENT = {
				valueList = {
					{ data = formData.abuseComment },
				},
			},

			REPORTED_ABUSE_VECTOR = {
				valueList = {
					{ data = "place" },
				},
			},

			IN_EXP_MENU_ENTRY_POINT = {
				valueList = {
					{ data = formData.menuEntryPoint },
				},
			},

			VARIANT = {
				valueList = {
					{ data = formData.variant or Constants.Variant.CS },
				},
			},
		},
	}

	local _, selectedAds = interpretAnnotations(raState)
	addRAStateToRequest(raState, analyticsState, request)

	if #selectedAds > 0 and GetFFlagReportAnythingEnableAdReport() then
		request.tags.REPORT_TARGET_ADS = {
			valueList = {
				{ data = HttpService:JSONEncode(transformIdentifiedAds(selectedAds)) },
			},
		}
	end

	return HttpService:JSONEncode(request)
end

export type OtherFormData = {
	localUserId: number,
	abuseComment: string,
	abuseReason: string,
	formSelectedAbuserUserId: number?,
	menuEntryPoint: string,
	variant: string?,
}
local buildOtherReportRequest = function(
	formData: OtherFormData,
	raState: Types.ReportAnythingState,
	analyticsState: ReportAnythingAnalytics.ReportAnythingAnalyticsState
): AbuseReportRequest | string
	local request: AbuseReportRequest = {
		tags = {
			ENTRY_POINT = {
				valueList = {
					{ data = "in-experience" },
				},
			},

			SUBMITTER_USER_ID = {
				valueList = {
					{ data = tostring(formData.localUserId) },
				},
			},

			REPORTED_ABUSE_CATEGORY = {
				valueList = {
					{ data = formData.abuseReason },
				},
			},

			REPORTER_COMMENT = {
				valueList = {
					{ data = formData.abuseComment },
				},
			},

			REPORTED_ABUSE_VECTOR = {
				valueList = {
					{
						data = "avatar",
					},
				},
			},

			IN_EXP_MENU_ENTRY_POINT = {
				valueList = {
					{ data = formData.menuEntryPoint },
				},
			},

			VARIANT = {
				valueList = {
					{ data = formData.variant or Constants.Variant.Unknown },
				},
			},
		},
	}

	local selectedAbusers, _ = interpretAnnotations(raState)
	addRAStateToRequest(raState, analyticsState, request)

	if #selectedAbusers > 0 then
		local allegedAbuserId = tostring(selectedAbusers[1].UserId)
		local selectedAbuserIds = {}
		for _, player in ipairs(selectedAbusers) do
			selectedAbuserIds[#selectedAbuserIds + 1] = tostring(player.UserId)
		end

		if GetFFlagGetHumanoidDescription() then
			local humanoidDescription, outputMessage =
				getHumanoidDescriptionWithFallback(selectedAbusers[1].UserId, raState)

			request.tags.REPORT_TARGET_HUMANOID_DESCRIPTION = {
				valueList = {
					{ data = HttpService:JSONEncode(humanoidDescription) },
				},
			}

			request.tags.REPORT_TARGET_HUMANOID_DESCRIPTION_STATUS = {
				valueList = {
					{ data = outputMessage },
				},
			}

			local abuserHumanoidDescriptions = {}
			for _, player in ipairs(selectedAbusers) do
				humanoidDescription, outputMessage = getHumanoidDescriptionWithFallback(player.UserId, raState)

				abuserHumanoidDescriptions[#abuserHumanoidDescriptions + 1] = {
					humanoidDescription = humanoidDescription,
					outputMessage = outputMessage,
				}
			end

			request.tags.RA_ALL_ANNOTATED_HUMANOID_DESCRIPTIONS = {
				valueList = {
					{ data = HttpService:JSONEncode(abuserHumanoidDescriptions) },
				},
			}
		end

		request.tags.REPORT_TARGET_USER_ID = {
			valueList = {
				{ data = tostring(allegedAbuserId) },
			},
		}
		request.tags.RA_ALL_ANNOTATED_USER_IDS = {
			valueList = {
				{ data = HttpService:JSONEncode(selectedAbuserIds) },
			},
		}
	elseif formData.formSelectedAbuserUserId then
		-- if the reporter did not go through the annotation flow and instead
		-- chose the abuser from the regular form dropdown.
		-- or: Went through annotation flow but did not have any annotations
		-- that found a user.

		if GetFFlagGetHumanoidDescription() then
			local humanoidDescription, outputMessage =
				getHumanoidDescriptionWithFallback(formData.formSelectedAbuserUserId, raState)

			request.tags.REPORT_TARGET_HUMANOID_DESCRIPTION = {
				valueList = {
					{ data = HttpService:JSONEncode(humanoidDescription) },
				},
			}

			request.tags.REPORT_TARGET_HUMANOID_DESCRIPTION_STATUS = {
				valueList = {
					{ data = outputMessage },
				},
			}
		end

		request.tags.REPORT_TARGET_USER_ID = {
			valueList = {
				{ data = tostring(formData.formSelectedAbuserUserId) },
			},
		}
	end

	if game:GetEngineFeature("WHAM2165") then
		return request
	else
		return HttpService:JSONEncode(request)
	end
end

return {
	buildExperienceReportRequest = buildExperienceReportRequest,
	buildOtherReportRequest = buildOtherReportRequest,
	interpretAnnotations = interpretAnnotations,
	Constants = Constants,
}
