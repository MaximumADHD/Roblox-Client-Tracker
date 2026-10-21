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
       35 LOADK                            R9 K31 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=999&searchKey=%*&sortOrder=Desc&search=&creatorType=Group&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0&needsAssetOptions=true&needsReachStatus=true"]
       36 MOVE                             R11 R4
       37 MOVE                             R12 R5
       38 NAMECALL                         R9 R9 K29 ["format"]
       40 CALL                             R9 3 1
       41 GETTABLEKS                       R13 R3 K32 ["composeUrl"]
       43 GETUPVAL                         R14 2
       44 GETTABLEKS                       R14 R14 K33 ["EXPERIENCES_SEARCH_URL"]
       46 GETTABLEKS                       R14 R14 K34 ["Prefix"]
       48 GETUPVAL                         R15 2
       49 GETTABLEKS                       R15 R15 K33 ["EXPERIENCES_SEARCH_URL"]
       51 GETTABLEKS                       R15 R15 K35 ["Url"]
       53 CALL                             R15 0 1
       54 DUPTABLE                         R16 K47 [{["search"] = "", ["creatorType"] = "User", ["creatorTargetId"] = "54321", ["isArchived"] = False, ["isTemplates"] = False, ["sortParam"] = "LastUpdated", ["sortOrder"] = "Desc", ["pageSize"] = 10}]
       55 CALL                             R13 3 1
       56 MOVE                             R11 R13
       57 LOADK                            R12 K48 ["&surface=StudioStartPage&PageIndex=0&needsAssetOptions=true&needsReachStatus=true"]
       58 CONCAT                           R10 R11 R12
       59 GETTABLEKS                       R11 R3 K32 ["composeUrl"]
       61 GETUPVAL                         R12 2
       62 GETTABLEKS                       R12 R12 K49 ["KNOWLEDGE_FEEDS_URL"]
       64 GETTABLEKS                       R12 R12 K34 ["Prefix"]
       66 GETUPVAL                         R13 2
       67 GETTABLEKS                       R13 R13 K49 ["KNOWLEDGE_FEEDS_URL"]
       69 GETTABLEKS                       R13 R13 K35 ["Url"]
       71 CALL                             R13 0 -1
       72 CALL                             R11 -1 1
       73 DUPTABLE                         R12 K54 [{["limit"] = 50, ["SortOrder"] = "Asc"}]
       74 GETTABLEKS                       R13 R3 K32 ["composeUrl"]
       76 GETUPVAL                         R14 2
       77 GETTABLEKS                       R14 R14 K55 ["PLACES_SEARCH_URL"]
       79 GETTABLEKS                       R14 R14 K34 ["Prefix"]
       81 GETUPVAL                         R15 2
       82 GETTABLEKS                       R15 R15 K55 ["PLACES_SEARCH_URL"]
       84 GETTABLEKS                       R15 R15 K35 ["Url"]
       86 LOADN                            R16 555
       87 CALL                             R15 1 1
       88 MOVE                             R16 R12
       89 CALL                             R13 3 1
       90 DUPCLOSURE                       R14 K56 [PROTO_0]
       91 GETTABLEKS                       R15 R3 K32 ["composeUrl"]
       93 GETUPVAL                         R16 2
       94 GETTABLEKS                       R16 R16 K57 ["MULTI_CREATOR_ELIGIBILITY"]
       96 GETTABLEKS                       R16 R16 K34 ["Prefix"]
       98 GETUPVAL                         R17 2
       99 GETTABLEKS                       R17 R17 K57 ["MULTI_CREATOR_ELIGIBILITY"]
      101 GETTABLEKS                       R17 R17 K35 ["Url"]
      103 CALL                             R17 0 -1
      104 CALL                             R15 -1 1
      105 GETTABLEKS                       R16 R3 K32 ["composeUrl"]
      107 GETUPVAL                         R17 2
      108 GETTABLEKS                       R17 R17 K58 ["MULTI_AGE_RECOMMENDATION"]
      110 GETTABLEKS                       R17 R17 K34 ["Prefix"]
      112 GETUPVAL                         R18 2
      113 GETTABLEKS                       R18 R18 K58 ["MULTI_AGE_RECOMMENDATION"]
      115 GETTABLEKS                       R18 R18 K35 ["Url"]
      117 CALL                             R18 0 -1
      118 CALL                             R16 -1 1
      119 GETTABLEKS                       R20 R3 K32 ["composeUrl"]
      121 GETUPVAL                         R21 2
      122 GETTABLEKS                       R21 R21 K59 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      124 GETTABLEKS                       R21 R21 K34 ["Prefix"]
      126 GETUPVAL                         R22 2
      127 GETTABLEKS                       R22 R22 K59 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      129 GETTABLEKS                       R22 R22 K35 ["Url"]
      131 CALL                             R22 0 -1
      132 CALL                             R20 -1 1
      133 MOVE                             R18 R20
      134 LOADK                            R19 K60 ["?maxUsers=10&ids=555"]
      135 CONCAT                           R17 R18 R19
      136 DUPTABLE                         R18 K66 [{["userIds"], ["size"] = "48x48", ["format"] = "png", ["isCircular"] = True}]
      137 NEWTABLE                         R19 0 1
      139 LOADN                            R20 100
      140 SETLIST                          R19 R20 1 [1]
      142 SETTABLEKS                       R19 R18 K61 ["userIds"]
      144 GETTABLEKS                       R19 R3 K32 ["composeUrl"]
      146 GETUPVAL                         R20 2
      147 GETTABLEKS                       R20 R20 K67 ["AVATAR_ICON_URL"]
      149 GETTABLEKS                       R20 R20 K34 ["Prefix"]
      151 GETUPVAL                         R21 2
      152 GETTABLEKS                       R21 R21 K67 ["AVATAR_ICON_URL"]
      154 GETTABLEKS                       R21 R21 K35 ["Url"]
      156 CALL                             R21 0 1
      157 MOVE                             R22 R18
      158 CALL                             R19 3 1
      159 GETTABLEKS                       R20 R3 K32 ["composeUrl"]
      161 GETUPVAL                         R21 2
      162 GETTABLEKS                       R21 R21 K68 ["PLACE_SAFETY_STATUS_URL"]
      164 GETTABLEKS                       R21 R21 K34 ["Prefix"]
      166 GETUPVAL                         R22 2
      167 GETTABLEKS                       R22 R22 K68 ["PLACE_SAFETY_STATUS_URL"]
      169 GETTABLEKS                       R22 R22 K35 ["Url"]
      171 LOADN                            R23 101
      172 CALL                             R22 1 -1
      173 CALL                             R20 -1 1
      174 GETTABLEKS                       R21 R3 K32 ["composeUrl"]
      176 GETUPVAL                         R22 2
      177 GETTABLEKS                       R22 R22 K69 ["MULTI_TEAM_CREATE_STATUS"]
      179 GETTABLEKS                       R22 R22 K34 ["Prefix"]
      181 GETUPVAL                         R23 2
      182 GETTABLEKS                       R23 R23 K69 ["MULTI_TEAM_CREATE_STATUS"]
      184 GETTABLEKS                       R23 R23 K35 ["Url"]
      186 CALL                             R23 0 -1
      187 CALL                             R21 -1 1
      188 MOVE                             R23 R21
      189 LOADK                            R24 K70 ["?ids=555&"]
      190 CONCAT                           R22 R23 R24
      191 NEWTABLE                         R23 32 0
      193 DUPCLOSURE                       R24 K71 [PROTO_1]
      194 SETTABLE                         R24 R23 R10
      195 DUPCLOSURE                       R24 K72 [PROTO_2]
      196 SETTABLE                         R24 R23 R13
      197 DUPTABLE                         R24 K74 [{"data"}]
      198 NEWTABLE                         R25 0 1
      200 DUPTABLE                         R26 K79 [{["gameTemplateType"] = "All", ["hasTutorials"] = False, ["universe"]}]
      201 SETTABLEKS                       R6 R26 K78 ["universe"]
      203 SETLIST                          R25 R26 1 [1]
      205 SETTABLEKS                       R25 R24 K73 ["data"]
      207 SETTABLEKS                       R24 R23 K80 ["https://develop.roblox.com/v1/gametemplates?searchKey=Templates&pageSize=30&search=All&isTemplates=true"]
      209 NEWCLOSURE                       R24 P3
      210 CAPTURE                          REF R6
      211 SETTABLE                         R24 R23 R8
      212 NEWCLOSURE                       R24 P4
      213 CAPTURE                          REF R6
      214 SETTABLE                         R24 R23 R7
      215 DUPTABLE                         R24 K82 [{"groups"}]
      216 NEWTABLE                         R25 0 1
      218 DUPTABLE                         R26 K85 [{["id"] = 999, ["name"] = "Example"}]
      219 SETLIST                          R25 R26 1 [1]
      221 SETTABLEKS                       R25 R24 K81 ["groups"]
      223 SETTABLEKS                       R24 R23 K86 ["https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage"]
      225 DUPCLOSURE                       R24 K87 [PROTO_5]
      226 SETTABLE                         R24 R23 R17
      227 LOADK                            R24 K88 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Autogenerated&format=png&size=256x256"]
      228 DUPTABLE                         R25 K74 [{"data"}]
      229 NEWTABLE                         R26 0 1
      231 DUPTABLE                         R27 K93 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      232 SETLIST                          R26 R27 1 [1]
      234 SETTABLEKS                       R26 R25 K73 ["data"]
      236 SETTABLE                         R25 R23 R24
      237 LOADK                            R24 K94 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Placeholder&format=png&size=256x256"]
      238 DUPTABLE                         R25 K74 [{"data"}]
      239 NEWTABLE                         R26 0 1
      241 DUPTABLE                         R27 K93 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      242 SETLIST                          R26 R27 1 [1]
      244 SETTABLEKS                       R26 R25 K73 ["data"]
      246 SETTABLE                         R25 R23 R24
      247 DUPCLOSURE                       R24 K95 [PROTO_6]
      248 SETTABLE                         R24 R23 R15
      249 DUPTABLE                         R24 K74 [{"data"}]
      250 DUPTABLE                         R25 K96 [{"universe"}]
      251 SETTABLEKS                       R6 R25 K78 ["universe"]
      253 SETTABLEKS                       R25 R24 K73 ["data"]
      255 SETTABLE                         R24 R23 R9
      256 DUPCLOSURE                       R24 K97 [PROTO_7]
      257 SETTABLE                         R24 R23 R16
      258 DUPCLOSURE                       R24 K98 [PROTO_8]
      259 SETTABLE                         R24 R23 R19
      260 DUPCLOSURE                       R24 K99 [PROTO_9]
      261 SETTABLE                         R24 R23 R11
      262 NEWCLOSURE                       R24 P10
      263 CAPTURE                          VAL R2
      264 SETTABLEKS                       R24 R23 K100 ["https://apis.roblox.com/creator-home-api/v1/users/54321/homepage/banner/experience-unrated"]
      266 NEWCLOSURE                       R24 P11
      267 CAPTURE                          VAL R2
      268 SETTABLEKS                       R24 R23 K101 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioBanner&nameSpace=studio/CollaborationSettings"]
      270 NEWCLOSURE                       R24 P12
      271 CAPTURE                          VAL R2
      272 SETTABLEKS                       R24 R23 K102 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioAgeReverificationRequiredBanner&nameSpace=studio/CollaborationSettings"]
      274 GETTABLEKS                       R24 R3 K32 ["composeUrl"]
      276 GETUPVAL                         R25 2
      277 GETTABLEKS                       R25 R25 K103 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      279 GETTABLEKS                       R25 R25 K34 ["Prefix"]
      281 GETUPVAL                         R26 2
      282 GETTABLEKS                       R26 R26 K103 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      284 GETTABLEKS                       R26 R26 K35 ["Url"]
      286 CALL                             R26 0 -1
      287 CALL                             R24 -1 1
      288 DUPCLOSURE                       R25 K104 [PROTO_13]
      289 SETTABLE                         R25 R23 R24
      290 GETTABLEKS                       R24 R3 K32 ["composeUrl"]
      292 GETUPVAL                         R25 2
      293 GETTABLEKS                       R25 R25 K105 ["CORE_CONTENT_UNIVERSE_CHIP_STATUS"]
      295 GETTABLEKS                       R25 R25 K34 ["Prefix"]
      297 GETUPVAL                         R26 2
      298 GETTABLEKS                       R26 R26 K105 ["CORE_CONTENT_UNIVERSE_CHIP_STATUS"]
      300 GETTABLEKS                       R26 R26 K35 ["Url"]
      302 LOADN                            R27 555
      303 CALL                             R26 1 -1
      304 CALL                             R24 -1 1
      305 DUPTABLE                         R25 K114 [{["chipStatus"] = "AllAges", ["iconName"] = "icon-filled-globe-detailed", ["translatedStatus"] = "All ages", ["variant"] = "Standard"}]
      306 SETTABLE                         R25 R23 R24
      307 DUPTABLE                         R24 K116 [{"placeSafetyStatus"}]
      308 DUPTABLE                         R25 K119 [{["userPlayabilityRestrictions"] = "None"}]
      309 SETTABLEKS                       R25 R24 K115 ["placeSafetyStatus"]
      311 SETTABLE                         R24 R23 R20
      312 DUPTABLE                         R24 K74 [{"data"}]
      313 NEWTABLE                         R25 0 1
      315 DUPTABLE                         R26 K121 [{["id"] = 555, ["isEnabled"] = False}]
      316 SETLIST                          R25 R26 1 [1]
      318 SETTABLEKS                       R25 R24 K73 ["data"]
      320 SETTABLE                         R24 R23 R22
      321 GETUPVAL                         R24 3
      322 GETTABLEKS                       R24 R24 K122 ["mock"]
      324 MOVE                             R25 R23
      325 CALL                             R24 1 0
      326 GETUPVAL                         R24 3
      327 GETTABLEKS                       R24 R24 K123 ["StudioService"]
      329 GETTABLEKS                       R24 R24 K124 ["GetUserId"]
      331 GETTABLEKS                       R25 R24 K125 ["mockReturnValue"]
      333 LOADK                            R26 K126 [54321]
      334 CALL                             R25 1 0
      335 GETUPVAL                         R25 3
      336 GETTABLEKS                       R25 R25 K127 ["StartPageManager"]
      338 GETTABLEKS                       R25 R25 K128 ["getRecentAPIGamesFromRegistry"]
      340 GETUPVAL                         R26 3
      341 GETTABLEKS                       R26 R26 K127 ["StartPageManager"]
      343 GETTABLEKS                       R26 R26 K129 ["getLocalGamesFromRegistry"]
      345 GETTABLEKS                       R27 R25 K125 ["mockReturnValue"]
      347 NEWTABLE                         R28 0 0
      349 CALL                             R27 1 0
      350 GETTABLEKS                       R27 R26 K125 ["mockReturnValue"]
      352 NEWTABLE                         R28 0 1
      354 DUPTABLE                         R29 K141 [{["FilePath"] = "Documents/TestPlace3.rbxl", ["Name"] = "TestPlace3.rbxl", ["Updated"] = "UpdatedTime3", ["PrivacyType"] = "Private", ["NoLoadableImage"] = True, ["LastViewed"] = "ViewedTime3"}]
      355 SETLIST                          R28 R29 1 [1]
      357 CALL                             R27 1 0
      358 GETUPVAL                         R27 3
      359 GETTABLEKS                       R27 R27 K127 ["StartPageManager"]
      361 GETTABLEKS                       R27 R27 K142 ["getDaysSinceFirstUserLogin"]
      363 GETUPVAL                         R28 3
      364 GETTABLEKS                       R28 R28 K127 ["StartPageManager"]
      366 GETTABLEKS                       R28 R28 K143 ["isTutorialBannerClosed"]
      368 GETTABLEKS                       R29 R27 K125 ["mockReturnValue"]
      370 LOADN                            R30 0
      371 CALL                             R29 1 0
      372 GETTABLEKS                       R29 R28 K125 ["mockReturnValue"]
      374 LOADB                            R30 0
      375 CALL                             R29 1 0
      376 CLOSEUPVALS                      R6
      377 RETURN                           R0 0

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
