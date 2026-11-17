PROTO_0:
        0 LOADK                            R1 K0 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=%*&format=png&size=256x256"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["data"]
        5 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K10 [{["id"] = 1, ["universeId"] = 555, ["name"] = "Backyardigans", ["description"] = "Description1"}]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K0 ["data"]
        8 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 DUPTABLE                         R1 K3 [{"universe"}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K2 ["universe"]
        5 SETTABLEKS                       R1 R0 K0 ["data"]
        7 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 DUPTABLE                         R1 K3 [{"universe"}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K2 ["universe"]
        5 SETTABLEKS                       R1 R0 K0 ["data"]
        7 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K5 [{["id"] = 123, ["activeUsers"]}]
        4 NEWTABLE                         R3 0 1
        6 DUPTABLE                         R4 K7 [{["id"] = 100}]
        7 SETLIST                          R3 R4 1 [1]
        9 SETTABLEKS                       R3 R2 K4 ["activeUsers"]
       11 SETLIST                          R1 R2 1 [1]
       13 SETTABLEKS                       R1 R0 K0 ["data"]
       15 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"eligibilityByCreator"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K6 [{["userIsEligible"] = True, ["displayText"] = "Eligible"}]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K0 ["eligibilityByCreator"]
        8 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"ageRecommendationDetailsByUniverse"}]
        1 NEWTABLE                         R2 0 2
        3 DUPTABLE                         R3 K5 [{["ageRecommendationDetails"], ["universeId"] = 456}]
        4 DUPTABLE                         R4 K7 [{"ageRecommendationSummary"}]
        5 DUPTABLE                         R5 K9 [{"ageRecommendation"}]
        6 DUPTABLE                         R6 K12 [{["minimumAge"] = 13}]
        7 SETTABLEKS                       R6 R5 K8 ["ageRecommendation"]
        9 SETTABLEKS                       R5 R4 K6 ["ageRecommendationSummary"]
       11 SETTABLEKS                       R4 R3 K2 ["ageRecommendationDetails"]
       13 DUPTABLE                         R4 K14 [{["ageRecommendationDetails"], ["universeId"] = 789}]
       14 DUPTABLE                         R5 K7 [{"ageRecommendationSummary"}]
       15 DUPTABLE                         R6 K9 [{"ageRecommendation"}]
       16 DUPTABLE                         R7 K16 [{["minimumAge"] = 18}]
       17 SETTABLEKS                       R7 R6 K8 ["ageRecommendation"]
       19 SETTABLEKS                       R6 R5 K6 ["ageRecommendationSummary"]
       21 SETTABLEKS                       R5 R4 K2 ["ageRecommendationDetails"]
       23 SETLIST                          R2 R3 2 [1]
       25 SETTABLEKS                       R2 R1 K0 ["ageRecommendationDetailsByUniverse"]
       27 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K6 [{["targetId"] = 100, ["imageUrl"] = "UserCDNImage1"}]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K0 ["data"]
        8 RETURN                           R0 1

PROTO_9:
        0 DUPTABLE                         R0 K2 [{"feedItems", "meta"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K13 [{["feedType"] = "Article", ["id"] = "potato beans", ["titleKey"] = "MockTemplateName", ["title"] = "MockTemplateName", ["thumbnails"], ["url"] = "https://www.youtube.com/playlist?list=PLMneGxZNs3ZawdQ3Y5bjCRHM75fDJydv9"}]
        4 DUPTABLE                         R3 K15 [{"default"}]
        5 DUPTABLE                         R4 K17 [{["url"] = "/image.png"}]
        6 SETTABLEKS                       R4 R3 K14 ["default"]
        8 SETTABLEKS                       R3 R2 K10 ["thumbnails"]
       10 SETLIST                          R1 R2 1 [1]
       12 SETTABLEKS                       R1 R0 K0 ["feedItems"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K1 ["meta"]
       18 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 DUPTABLE                         R0 K1 [{"universeIds"}]
        5 NEWTABLE                         R1 0 2
        7 LOADK                            R2 K2 [123456]
        8 LOADK                            R3 K3 [789012]
        9 SETLIST                          R1 R2 2 [1]
       11 SETTABLEKS                       R1 R0 K0 ["universeIds"]
       13 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 DUPTABLE                         R0 K9 [{[1] = "ShouldShowStudioBanner", ["access"] = "Granted", ["recourse"] = , ["recourses"] = , ["v2Recourses"] = , ["shouldPrompt"] = }]
        5 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 DUPTABLE                         R0 K9 [{[1] = "ShouldShowStudioAgeReverificationRequiredBanner", ["access"] = "Granted", ["recourse"] = , ["recourses"] = , ["v2Recourses"] = , ["shouldPrompt"] = }]
        5 RETURN                           R0 1

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"universeEligibilities"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["universeEligibilities"]
        5 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 LOADB                            R4 0
        5 LOADK                            R5 K1 ["Experiences"]
        6 DUPTABLE                         R6 K25 [{["created"] = "2013-11-01T08:47:14.07Z", ["creatorName"] = "Ben", ["creatorTargetId"] = 998796, ["creatorType"] = "Group", ["id"] = 555, ["isActive"] = True, ["isArchived"] = False, ["name"] = "Backyardigans", ["privacyType"] = "Public", ["audiences"], ["rootPlaceId"] = 101, ["updated"] = "2023-05-02T22:03:01.107Z"}]
        7 NEWTABLE                         R7 0 1
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K19 ["Public"]
       12 SETLIST                          R7 R8 1 [1]
       14 SETTABLEKS                       R7 R6 K20 ["audiences"]
       16 JUMPIFNOTEQKS                    R0 K26 ["ArchivePage"] ; [+3]
       18 LOADK                            R5 K27 ["Archive"]
       19 LOADB                            R4 1
       20 JUMPIFNOT                        R1 ; [+2]
       21 NEWTABLE                         R6 0 0
       23 LOADK                            R7 K28 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=Team&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0&needsAssetOptions=true&needsReachStatus=true"]
       24 MOVE                             R9 R4
       25 MOVE                             R10 R5
       26 NAMECALL                         R7 R7 K29 ["format"]
       28 CALL                             R7 3 1
       29 LOADK                            R8 K30 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=User&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0&needsAssetOptions=true&needsReachStatus=true"]
       30 MOVE                             R10 R4
       31 MOVE                             R11 R5
       32 NAMECALL                         R8 R8 K29 ["format"]
       34 CALL                             R8 3 1
       35 LOADK                            R9 K31 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=999&searchKey=%*&sortOrder=Desc&search=&sortParam=LastUpdated&pageSize=30&creatorType=Group&surface=StudioStartPage&PageIndex=0&needsAssetOptions=true&needsReachStatus=true"]
       36 MOVE                             R11 R4
       37 MOVE                             R12 R5
       38 NAMECALL                         R9 R9 K29 ["format"]
       40 CALL                             R9 3 1
       41 GETTABLEKS                       R11 R3 K32 ["composeUrl"]
       43 GETUPVAL                         R12 2
       44 GETTABLEKS                       R12 R12 K33 ["EXPERIENCES_SEARCH_URL"]
       46 GETTABLEKS                       R12 R12 K34 ["Prefix"]
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R13 R13 K33 ["EXPERIENCES_SEARCH_URL"]
       51 GETTABLEKS                       R13 R13 K35 ["Url"]
       53 CALL                             R13 0 1
       54 DUPTABLE                         R14 K47 [{["search"] = "", ["creatorType"] = "User", ["creatorTargetId"] = "54321", ["isArchived"] = False, ["isTemplates"] = False, ["sortParam"] = "LastUpdated", ["sortOrder"] = "Desc", ["pageSize"] = 10}]
       55 CALL                             R11 3 1
       56 LOADK                            R12 K48 ["&surface=StudioStartPage&PageIndex=0&needsAssetOptions=true&needsReachStatus=true"]
       57 CONCAT                           R10 R11 R12
       58 GETTABLEKS                       R11 R3 K32 ["composeUrl"]
       60 GETUPVAL                         R12 2
       61 GETTABLEKS                       R12 R12 K49 ["KNOWLEDGE_FEEDS_URL"]
       63 GETTABLEKS                       R12 R12 K34 ["Prefix"]
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R13 R13 K49 ["KNOWLEDGE_FEEDS_URL"]
       68 GETTABLEKS                       R13 R13 K35 ["Url"]
       70 CALL                             R13 0 -1
       71 CALL                             R11 -1 1
       72 DUPTABLE                         R12 K54 [{["limit"] = 50, ["SortOrder"] = "Asc"}]
       73 GETTABLEKS                       R13 R3 K32 ["composeUrl"]
       75 GETUPVAL                         R14 2
       76 GETTABLEKS                       R14 R14 K55 ["PLACES_SEARCH_URL"]
       78 GETTABLEKS                       R14 R14 K34 ["Prefix"]
       80 GETUPVAL                         R15 2
       81 GETTABLEKS                       R15 R15 K55 ["PLACES_SEARCH_URL"]
       83 GETTABLEKS                       R15 R15 K35 ["Url"]
       85 LOADN                            R16 555
       86 CALL                             R15 1 1
       87 MOVE                             R16 R12
       88 CALL                             R13 3 1
       89 DUPCLOSURE                       R14 K56 [PROTO_0]
       90 GETTABLEKS                       R15 R3 K32 ["composeUrl"]
       92 GETUPVAL                         R16 2
       93 GETTABLEKS                       R16 R16 K57 ["MULTI_CREATOR_ELIGIBILITY"]
       95 GETTABLEKS                       R16 R16 K34 ["Prefix"]
       97 GETUPVAL                         R17 2
       98 GETTABLEKS                       R17 R17 K57 ["MULTI_CREATOR_ELIGIBILITY"]
      100 GETTABLEKS                       R17 R17 K35 ["Url"]
      102 CALL                             R17 0 -1
      103 CALL                             R15 -1 1
      104 GETTABLEKS                       R16 R3 K32 ["composeUrl"]
      106 GETUPVAL                         R17 2
      107 GETTABLEKS                       R17 R17 K58 ["MULTI_AGE_RECOMMENDATION"]
      109 GETTABLEKS                       R17 R17 K34 ["Prefix"]
      111 GETUPVAL                         R18 2
      112 GETTABLEKS                       R18 R18 K58 ["MULTI_AGE_RECOMMENDATION"]
      114 GETTABLEKS                       R18 R18 K35 ["Url"]
      116 CALL                             R18 0 -1
      117 CALL                             R16 -1 1
      118 GETTABLEKS                       R18 R3 K32 ["composeUrl"]
      120 GETUPVAL                         R19 2
      121 GETTABLEKS                       R19 R19 K59 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      123 GETTABLEKS                       R19 R19 K34 ["Prefix"]
      125 GETUPVAL                         R20 2
      126 GETTABLEKS                       R20 R20 K59 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      128 GETTABLEKS                       R20 R20 K35 ["Url"]
      130 CALL                             R20 0 -1
      131 CALL                             R18 -1 1
      132 LOADK                            R19 K60 ["?maxUsers=10&ids=555"]
      133 CONCAT                           R17 R18 R19
      134 DUPTABLE                         R18 K66 [{["userIds"], ["size"] = "48x48", ["format"] = "png", ["isCircular"] = True}]
      135 NEWTABLE                         R19 0 1
      137 LOADN                            R20 100
      138 SETLIST                          R19 R20 1 [1]
      140 SETTABLEKS                       R19 R18 K61 ["userIds"]
      142 GETTABLEKS                       R19 R3 K32 ["composeUrl"]
      144 GETUPVAL                         R20 2
      145 GETTABLEKS                       R20 R20 K67 ["AVATAR_ICON_URL"]
      147 GETTABLEKS                       R20 R20 K34 ["Prefix"]
      149 GETUPVAL                         R21 2
      150 GETTABLEKS                       R21 R21 K67 ["AVATAR_ICON_URL"]
      152 GETTABLEKS                       R21 R21 K35 ["Url"]
      154 CALL                             R21 0 1
      155 MOVE                             R22 R18
      156 CALL                             R19 3 1
      157 GETTABLEKS                       R20 R3 K32 ["composeUrl"]
      159 GETUPVAL                         R21 2
      160 GETTABLEKS                       R21 R21 K68 ["PLACE_SAFETY_STATUS_URL"]
      162 GETTABLEKS                       R21 R21 K34 ["Prefix"]
      164 GETUPVAL                         R22 2
      165 GETTABLEKS                       R22 R22 K68 ["PLACE_SAFETY_STATUS_URL"]
      167 GETTABLEKS                       R22 R22 K35 ["Url"]
      169 LOADN                            R23 101
      170 CALL                             R22 1 -1
      171 CALL                             R20 -1 1
      172 GETTABLEKS                       R21 R3 K32 ["composeUrl"]
      174 GETUPVAL                         R22 2
      175 GETTABLEKS                       R22 R22 K69 ["MULTI_TEAM_CREATE_STATUS"]
      177 GETTABLEKS                       R22 R22 K34 ["Prefix"]
      179 GETUPVAL                         R23 2
      180 GETTABLEKS                       R23 R23 K69 ["MULTI_TEAM_CREATE_STATUS"]
      182 GETTABLEKS                       R23 R23 K35 ["Url"]
      184 CALL                             R23 0 -1
      185 CALL                             R21 -1 1
      186 MOVE                             R23 R21
      187 LOADK                            R24 K70 ["?ids=555&"]
      188 CONCAT                           R22 R23 R24
      189 NEWTABLE                         R23 32 0
      191 DUPCLOSURE                       R24 K71 [PROTO_1]
      192 SETTABLE                         R24 R23 R10
      193 DUPCLOSURE                       R24 K72 [PROTO_2]
      194 SETTABLE                         R24 R23 R13
      195 DUPTABLE                         R24 K74 [{"data"}]
      196 NEWTABLE                         R25 0 1
      198 DUPTABLE                         R26 K79 [{["gameTemplateType"] = "All", ["hasTutorials"] = False, ["universe"]}]
      199 SETTABLEKS                       R6 R26 K78 ["universe"]
      201 SETLIST                          R25 R26 1 [1]
      203 SETTABLEKS                       R25 R24 K73 ["data"]
      205 SETTABLEKS                       R24 R23 K80 ["https://develop.roblox.com/v1/gametemplates?searchKey=Templates&pageSize=30&search=All&isTemplates=true"]
      207 NEWCLOSURE                       R24 P3
      208 CAPTURE                          REF R6
      209 SETTABLE                         R24 R23 R8
      210 NEWCLOSURE                       R24 P4
      211 CAPTURE                          REF R6
      212 SETTABLE                         R24 R23 R7
      213 DUPTABLE                         R24 K82 [{"groups"}]
      214 NEWTABLE                         R25 0 1
      216 DUPTABLE                         R26 K85 [{["id"] = 999, ["name"] = "Example"}]
      217 SETLIST                          R25 R26 1 [1]
      219 SETTABLEKS                       R25 R24 K81 ["groups"]
      221 SETTABLEKS                       R24 R23 K86 ["https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage"]
      223 DUPCLOSURE                       R24 K87 [PROTO_5]
      224 SETTABLE                         R24 R23 R17
      225 LOADK                            R24 K88 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Autogenerated&format=png&size=256x256"]
      226 DUPTABLE                         R25 K74 [{"data"}]
      227 NEWTABLE                         R26 0 1
      229 DUPTABLE                         R27 K93 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      230 SETLIST                          R26 R27 1 [1]
      232 SETTABLEKS                       R26 R25 K73 ["data"]
      234 SETTABLE                         R25 R23 R24
      235 LOADK                            R24 K94 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Placeholder&format=png&size=256x256"]
      236 DUPTABLE                         R25 K74 [{"data"}]
      237 NEWTABLE                         R26 0 1
      239 DUPTABLE                         R27 K93 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      240 SETLIST                          R26 R27 1 [1]
      242 SETTABLEKS                       R26 R25 K73 ["data"]
      244 SETTABLE                         R25 R23 R24
      245 DUPCLOSURE                       R24 K95 [PROTO_6]
      246 SETTABLE                         R24 R23 R15
      247 DUPTABLE                         R24 K74 [{"data"}]
      248 DUPTABLE                         R25 K96 [{"universe"}]
      249 SETTABLEKS                       R6 R25 K78 ["universe"]
      251 SETTABLEKS                       R25 R24 K73 ["data"]
      253 SETTABLE                         R24 R23 R9
      254 DUPCLOSURE                       R24 K97 [PROTO_7]
      255 SETTABLE                         R24 R23 R16
      256 DUPCLOSURE                       R24 K98 [PROTO_8]
      257 SETTABLE                         R24 R23 R19
      258 DUPCLOSURE                       R24 K99 [PROTO_9]
      259 SETTABLE                         R24 R23 R11
      260 NEWCLOSURE                       R24 P10
      261 CAPTURE                          VAL R2
      262 SETTABLEKS                       R24 R23 K100 ["https://apis.roblox.com/creator-home-api/v1/users/54321/homepage/banner/experience-unrated"]
      264 NEWCLOSURE                       R24 P11
      265 CAPTURE                          VAL R2
      266 SETTABLEKS                       R24 R23 K101 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioBanner&nameSpace=studio/CollaborationSettings"]
      268 NEWCLOSURE                       R24 P12
      269 CAPTURE                          VAL R2
      270 SETTABLEKS                       R24 R23 K102 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioAgeReverificationRequiredBanner&nameSpace=studio/CollaborationSettings"]
      272 GETTABLEKS                       R24 R3 K32 ["composeUrl"]
      274 GETUPVAL                         R25 2
      275 GETTABLEKS                       R25 R25 K103 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      277 GETTABLEKS                       R25 R25 K34 ["Prefix"]
      279 GETUPVAL                         R26 2
      280 GETTABLEKS                       R26 R26 K103 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      282 GETTABLEKS                       R26 R26 K35 ["Url"]
      284 CALL                             R26 0 -1
      285 CALL                             R24 -1 1
      286 DUPCLOSURE                       R25 K104 [PROTO_13]
      287 SETTABLE                         R25 R23 R24
      288 GETTABLEKS                       R24 R3 K32 ["composeUrl"]
      290 GETUPVAL                         R25 2
      291 GETTABLEKS                       R25 R25 K105 ["CORE_CONTENT_UNIVERSE_CHIP_STATUS"]
      293 GETTABLEKS                       R25 R25 K34 ["Prefix"]
      295 GETUPVAL                         R26 2
      296 GETTABLEKS                       R26 R26 K105 ["CORE_CONTENT_UNIVERSE_CHIP_STATUS"]
      298 GETTABLEKS                       R26 R26 K35 ["Url"]
      300 LOADN                            R27 555
      301 CALL                             R26 1 -1
      302 CALL                             R24 -1 1
      303 DUPTABLE                         R25 K114 [{["chipStatus"] = "AllAges", ["iconName"] = "icon-filled-globe-detailed", ["translatedStatus"] = "All ages", ["variant"] = "Standard"}]
      304 SETTABLE                         R25 R23 R24
      305 DUPTABLE                         R24 K116 [{"placeSafetyStatus"}]
      306 DUPTABLE                         R25 K119 [{["userPlayabilityRestrictions"] = "None"}]
      307 SETTABLEKS                       R25 R24 K115 ["placeSafetyStatus"]
      309 SETTABLE                         R24 R23 R20
      310 DUPTABLE                         R24 K74 [{"data"}]
      311 NEWTABLE                         R25 0 1
      313 DUPTABLE                         R26 K121 [{["id"] = 555, ["isEnabled"] = False}]
      314 SETLIST                          R25 R26 1 [1]
      316 SETTABLEKS                       R25 R24 K73 ["data"]
      318 SETTABLE                         R24 R23 R22
      319 GETUPVAL                         R24 3
      320 GETTABLEKS                       R24 R24 K122 ["mock"]
      322 MOVE                             R25 R23
      323 CALL                             R24 1 0
      324 GETUPVAL                         R24 3
      325 GETTABLEKS                       R24 R24 K123 ["StudioService"]
      327 GETTABLEKS                       R24 R24 K124 ["GetUserId"]
      329 GETTABLEKS                       R25 R24 K125 ["mockReturnValue"]
      331 LOADK                            R26 K126 [54321]
      332 CALL                             R25 1 0
      333 GETUPVAL                         R25 3
      334 GETTABLEKS                       R25 R25 K127 ["StartPageManager"]
      336 GETTABLEKS                       R25 R25 K128 ["getRecentAPIGamesFromRegistry"]
      338 GETUPVAL                         R26 3
      339 GETTABLEKS                       R26 R26 K127 ["StartPageManager"]
      341 GETTABLEKS                       R26 R26 K129 ["getLocalGamesFromRegistry"]
      343 GETTABLEKS                       R27 R25 K125 ["mockReturnValue"]
      345 NEWTABLE                         R28 0 0
      347 CALL                             R27 1 0
      348 GETTABLEKS                       R27 R26 K125 ["mockReturnValue"]
      350 NEWTABLE                         R28 0 1
      352 DUPTABLE                         R29 K141 [{["FilePath"] = "Documents/TestPlace3.rbxl", ["Name"] = "TestPlace3.rbxl", ["Updated"] = "UpdatedTime3", ["PrivacyType"] = "Private", ["NoLoadableImage"] = True, ["LastViewed"] = "ViewedTime3"}]
      353 SETLIST                          R28 R29 1 [1]
      355 CALL                             R27 1 0
      356 GETUPVAL                         R27 3
      357 GETTABLEKS                       R27 R27 K127 ["StartPageManager"]
      359 GETTABLEKS                       R27 R27 K142 ["getDaysSinceFirstUserLogin"]
      361 GETUPVAL                         R28 3
      362 GETTABLEKS                       R28 R28 K127 ["StartPageManager"]
      364 GETTABLEKS                       R28 R28 K143 ["isTutorialBannerClosed"]
      366 GETTABLEKS                       R29 R27 K125 ["mockReturnValue"]
      368 LOADN                            R30 0
      369 CALL                             R29 1 0
      370 GETTABLEKS                       R29 R28 K125 ["mockReturnValue"]
      372 LOADB                            R30 0
      373 CALL                             R29 1 0
      374 CLOSEUPVALS                      R6
      375 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Network"]
       20 GETTABLEKS                       R3 R3 K10 ["Urls"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["Services"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Constants"]
       38 GETTABLEKS                       R5 R5 K14 ["Audience"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K15 ["RobloxAPI"]
       43 GETTABLEKS                       R5 R5 K16 ["Url"]
       45 DUPCLOSURE                       R6 K17 [PROTO_14]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 SETGLOBAL                        R6 K18 ["initializeServiceMockApis"]
       52 GETGLOBAL                        R6 K18 ["initializeServiceMockApis"]
       54 RETURN                           R6 1
