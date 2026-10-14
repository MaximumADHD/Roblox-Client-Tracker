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
        0 DUPTABLE                         R0 K2 [{"universeIds", "releaseTypes"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["universeIds"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["releaseTypes"]
        9 RETURN                           R0 1

PROTO_15:
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
       23 GETIMPORT                        R7 K29 [require]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K30 ["Src"]
       28 GETTABLEKS                       R8 R8 K31 ["SharedFlags"]
       30 GETTABLEKS                       R8 R8 K32 ["getFFlagLuaStartPageCoreContentStatus"]
       32 CALL                             R7 1 1
       33 CALL                             R7 0 1
       34 GETIMPORT                        R8 K29 [require]
       36 GETUPVAL                         R9 2
       37 GETTABLEKS                       R9 R9 K30 ["Src"]
       39 GETTABLEKS                       R9 R9 K31 ["SharedFlags"]
       41 GETTABLEKS                       R9 R9 K33 ["getFFlagLuaStartPageReachStatus"]
       43 CALL                             R8 1 1
       44 CALL                             R8 0 1
       45 JUMPIFNOT                        R7 ; [+2]
       46 LOADK                            R10 K34 ["&needsAssetOptions=true"]
       47 JUMP                             ; [+1]
       48 LOADK                            R10 K35 [""]
       49 JUMPIFNOT                        R8 ; [+2]
       50 LOADK                            R11 K36 ["&needsReachStatus=true"]
       51 JUMP                             ; [+1]
       52 LOADK                            R11 K35 [""]
       53 CONCAT                           R9 R10 R11
       54 LOADK                            R10 K37 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=Team&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       55 MOVE                             R12 R4
       56 MOVE                             R13 R5
       57 MOVE                             R14 R9
       58 NAMECALL                         R10 R10 K38 ["format"]
       60 CALL                             R10 4 1
       61 LOADK                            R11 K39 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=User&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       62 MOVE                             R13 R4
       63 MOVE                             R14 R5
       64 MOVE                             R15 R9
       65 NAMECALL                         R11 R11 K38 ["format"]
       67 CALL                             R11 4 1
       68 LOADK                            R12 K40 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=999&searchKey=%*&sortOrder=Desc&search=&creatorType=Group&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       69 MOVE                             R14 R4
       70 MOVE                             R15 R5
       71 MOVE                             R16 R9
       72 NAMECALL                         R12 R12 K38 ["format"]
       74 CALL                             R12 4 1
       75 GETTABLEKS                       R16 R3 K41 ["composeUrl"]
       77 GETUPVAL                         R17 3
       78 GETTABLEKS                       R17 R17 K42 ["EXPERIENCES_SEARCH_URL"]
       80 GETTABLEKS                       R17 R17 K43 ["Prefix"]
       82 GETUPVAL                         R18 3
       83 GETTABLEKS                       R18 R18 K42 ["EXPERIENCES_SEARCH_URL"]
       85 GETTABLEKS                       R18 R18 K44 ["Url"]
       87 CALL                             R18 0 1
       88 DUPTABLE                         R19 K55 [{["search"] = "", ["creatorType"] = "User", ["creatorTargetId"] = "54321", ["isArchived"] = False, ["isTemplates"] = False, ["sortParam"] = "LastUpdated", ["sortOrder"] = "Desc", ["pageSize"] = 10}]
       89 CALL                             R16 3 1
       90 MOVE                             R14 R16
       91 LOADK                            R15 K56 ["&surface=StudioStartPage&PageIndex=0%*"]
       92 MOVE                             R17 R9
       93 NAMECALL                         R15 R15 K38 ["format"]
       95 CALL                             R15 2 1
       96 CONCAT                           R13 R14 R15
       97 GETTABLEKS                       R14 R3 K41 ["composeUrl"]
       99 GETUPVAL                         R15 3
      100 GETTABLEKS                       R15 R15 K57 ["KNOWLEDGE_FEEDS_URL"]
      102 GETTABLEKS                       R15 R15 K43 ["Prefix"]
      104 GETUPVAL                         R16 3
      105 GETTABLEKS                       R16 R16 K57 ["KNOWLEDGE_FEEDS_URL"]
      107 GETTABLEKS                       R16 R16 K44 ["Url"]
      109 CALL                             R16 0 -1
      110 CALL                             R14 -1 1
      111 DUPTABLE                         R15 K62 [{["limit"] = 50, ["SortOrder"] = "Asc"}]
      112 GETTABLEKS                       R16 R3 K41 ["composeUrl"]
      114 GETUPVAL                         R17 3
      115 GETTABLEKS                       R17 R17 K63 ["PLACES_SEARCH_URL"]
      117 GETTABLEKS                       R17 R17 K43 ["Prefix"]
      119 GETUPVAL                         R18 3
      120 GETTABLEKS                       R18 R18 K63 ["PLACES_SEARCH_URL"]
      122 GETTABLEKS                       R18 R18 K44 ["Url"]
      124 LOADN                            R19 555
      125 CALL                             R18 1 1
      126 MOVE                             R19 R15
      127 CALL                             R16 3 1
      128 DUPCLOSURE                       R17 K64 [PROTO_0]
      129 GETTABLEKS                       R18 R3 K41 ["composeUrl"]
      131 GETUPVAL                         R19 3
      132 GETTABLEKS                       R19 R19 K65 ["MULTI_CREATOR_ELIGIBILITY"]
      134 GETTABLEKS                       R19 R19 K43 ["Prefix"]
      136 GETUPVAL                         R20 3
      137 GETTABLEKS                       R20 R20 K65 ["MULTI_CREATOR_ELIGIBILITY"]
      139 GETTABLEKS                       R20 R20 K44 ["Url"]
      141 CALL                             R20 0 -1
      142 CALL                             R18 -1 1
      143 GETTABLEKS                       R19 R3 K41 ["composeUrl"]
      145 GETUPVAL                         R20 3
      146 GETTABLEKS                       R20 R20 K66 ["MULTI_AGE_RECOMMENDATION"]
      148 GETTABLEKS                       R20 R20 K43 ["Prefix"]
      150 GETUPVAL                         R21 3
      151 GETTABLEKS                       R21 R21 K66 ["MULTI_AGE_RECOMMENDATION"]
      153 GETTABLEKS                       R21 R21 K44 ["Url"]
      155 CALL                             R21 0 -1
      156 CALL                             R19 -1 1
      157 GETTABLEKS                       R23 R3 K41 ["composeUrl"]
      159 GETUPVAL                         R24 3
      160 GETTABLEKS                       R24 R24 K67 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      162 GETTABLEKS                       R24 R24 K43 ["Prefix"]
      164 GETUPVAL                         R25 3
      165 GETTABLEKS                       R25 R25 K67 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      167 GETTABLEKS                       R25 R25 K44 ["Url"]
      169 CALL                             R25 0 -1
      170 CALL                             R23 -1 1
      171 MOVE                             R21 R23
      172 LOADK                            R22 K68 ["?maxUsers=10&ids=555"]
      173 CONCAT                           R20 R21 R22
      174 DUPTABLE                         R21 K74 [{["userIds"], ["size"] = "48x48", ["format"] = "png", ["isCircular"] = True}]
      175 NEWTABLE                         R22 0 1
      177 LOADN                            R23 100
      178 SETLIST                          R22 R23 1 [1]
      180 SETTABLEKS                       R22 R21 K69 ["userIds"]
      182 GETTABLEKS                       R22 R3 K41 ["composeUrl"]
      184 GETUPVAL                         R23 3
      185 GETTABLEKS                       R23 R23 K75 ["AVATAR_ICON_URL"]
      187 GETTABLEKS                       R23 R23 K43 ["Prefix"]
      189 GETUPVAL                         R24 3
      190 GETTABLEKS                       R24 R24 K75 ["AVATAR_ICON_URL"]
      192 GETTABLEKS                       R24 R24 K44 ["Url"]
      194 CALL                             R24 0 1
      195 MOVE                             R25 R21
      196 CALL                             R22 3 1
      197 GETTABLEKS                       R23 R3 K41 ["composeUrl"]
      199 GETUPVAL                         R24 3
      200 GETTABLEKS                       R24 R24 K76 ["PLACE_SAFETY_STATUS_URL"]
      202 GETTABLEKS                       R24 R24 K43 ["Prefix"]
      204 GETUPVAL                         R25 3
      205 GETTABLEKS                       R25 R25 K76 ["PLACE_SAFETY_STATUS_URL"]
      207 GETTABLEKS                       R25 R25 K44 ["Url"]
      209 LOADN                            R26 101
      210 CALL                             R25 1 -1
      211 CALL                             R23 -1 1
      212 GETTABLEKS                       R24 R3 K41 ["composeUrl"]
      214 GETUPVAL                         R25 3
      215 GETTABLEKS                       R25 R25 K77 ["MULTI_TEAM_CREATE_STATUS"]
      217 GETTABLEKS                       R25 R25 K43 ["Prefix"]
      219 GETUPVAL                         R26 3
      220 GETTABLEKS                       R26 R26 K77 ["MULTI_TEAM_CREATE_STATUS"]
      222 GETTABLEKS                       R26 R26 K44 ["Url"]
      224 CALL                             R26 0 -1
      225 CALL                             R24 -1 1
      226 MOVE                             R26 R24
      227 LOADK                            R27 K78 ["?ids=555&"]
      228 CONCAT                           R25 R26 R27
      229 NEWTABLE                         R26 32 0
      231 DUPCLOSURE                       R27 K79 [PROTO_1]
      232 SETTABLE                         R27 R26 R13
      233 DUPCLOSURE                       R27 K80 [PROTO_2]
      234 SETTABLE                         R27 R26 R16
      235 DUPTABLE                         R27 K82 [{"data"}]
      236 NEWTABLE                         R28 0 1
      238 DUPTABLE                         R29 K87 [{["gameTemplateType"] = "All", ["hasTutorials"] = False, ["universe"]}]
      239 SETTABLEKS                       R6 R29 K86 ["universe"]
      241 SETLIST                          R28 R29 1 [1]
      243 SETTABLEKS                       R28 R27 K81 ["data"]
      245 SETTABLEKS                       R27 R26 K88 ["https://develop.roblox.com/v1/gametemplates?searchKey=Templates&pageSize=30&search=All&isTemplates=true"]
      247 NEWCLOSURE                       R27 P3
      248 CAPTURE                          REF R6
      249 SETTABLE                         R27 R26 R11
      250 NEWCLOSURE                       R27 P4
      251 CAPTURE                          REF R6
      252 SETTABLE                         R27 R26 R10
      253 DUPTABLE                         R27 K90 [{"groups"}]
      254 NEWTABLE                         R28 0 1
      256 DUPTABLE                         R29 K93 [{["id"] = 999, ["name"] = "Example"}]
      257 SETLIST                          R28 R29 1 [1]
      259 SETTABLEKS                       R28 R27 K89 ["groups"]
      261 SETTABLEKS                       R27 R26 K94 ["https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage"]
      263 DUPCLOSURE                       R27 K95 [PROTO_5]
      264 SETTABLE                         R27 R26 R20
      265 LOADK                            R27 K96 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Autogenerated&format=png&size=256x256"]
      266 DUPTABLE                         R28 K82 [{"data"}]
      267 NEWTABLE                         R29 0 1
      269 DUPTABLE                         R30 K101 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      270 SETLIST                          R29 R30 1 [1]
      272 SETTABLEKS                       R29 R28 K81 ["data"]
      274 SETTABLE                         R28 R26 R27
      275 LOADK                            R27 K102 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Placeholder&format=png&size=256x256"]
      276 DUPTABLE                         R28 K82 [{"data"}]
      277 NEWTABLE                         R29 0 1
      279 DUPTABLE                         R30 K101 [{["targetId"] = 123, ["imageUrl"] = "http://example.com/image/123"}]
      280 SETLIST                          R29 R30 1 [1]
      282 SETTABLEKS                       R29 R28 K81 ["data"]
      284 SETTABLE                         R28 R26 R27
      285 DUPCLOSURE                       R27 K103 [PROTO_6]
      286 SETTABLE                         R27 R26 R18
      287 DUPTABLE                         R27 K82 [{"data"}]
      288 DUPTABLE                         R28 K104 [{"universe"}]
      289 SETTABLEKS                       R6 R28 K86 ["universe"]
      291 SETTABLEKS                       R28 R27 K81 ["data"]
      293 SETTABLE                         R27 R26 R12
      294 DUPCLOSURE                       R27 K105 [PROTO_7]
      295 SETTABLE                         R27 R26 R19
      296 DUPCLOSURE                       R27 K106 [PROTO_8]
      297 SETTABLE                         R27 R26 R22
      298 DUPCLOSURE                       R27 K107 [PROTO_9]
      299 SETTABLE                         R27 R26 R14
      300 NEWCLOSURE                       R27 P10
      301 CAPTURE                          VAL R2
      302 SETTABLEKS                       R27 R26 K108 ["https://apis.roblox.com/creator-home-api/v1/users/54321/homepage/banner/experience-unrated"]
      304 NEWCLOSURE                       R27 P11
      305 CAPTURE                          VAL R2
      306 SETTABLEKS                       R27 R26 K109 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioBanner&nameSpace=studio/CollaborationSettings"]
      308 NEWCLOSURE                       R27 P12
      309 CAPTURE                          VAL R2
      310 SETTABLEKS                       R27 R26 K110 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioAgeReverificationRequiredBanner&nameSpace=studio/CollaborationSettings"]
      312 GETTABLEKS                       R27 R3 K41 ["composeUrl"]
      314 GETUPVAL                         R28 3
      315 GETTABLEKS                       R28 R28 K111 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      317 GETTABLEKS                       R28 R28 K43 ["Prefix"]
      319 GETUPVAL                         R29 3
      320 GETTABLEKS                       R29 R29 K111 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      322 GETTABLEKS                       R29 R29 K44 ["Url"]
      324 CALL                             R29 0 -1
      325 CALL                             R27 -1 1
      326 DUPCLOSURE                       R28 K112 [PROTO_13]
      327 SETTABLE                         R28 R26 R27
      328 GETTABLEKS                       R27 R3 K41 ["composeUrl"]
      330 GETUPVAL                         R28 3
      331 GETTABLEKS                       R28 R28 K113 ["MULTI_RELEASE_STATUSES"]
      333 GETTABLEKS                       R28 R28 K43 ["Prefix"]
      335 GETUPVAL                         R29 3
      336 GETTABLEKS                       R29 R29 K113 ["MULTI_RELEASE_STATUSES"]
      338 GETTABLEKS                       R29 R29 K44 ["Url"]
      340 CALL                             R29 0 -1
      341 CALL                             R27 -1 1
      342 DUPCLOSURE                       R28 K114 [PROTO_14]
      343 SETTABLE                         R28 R26 R27
      344 GETTABLEKS                       R27 R3 K41 ["composeUrl"]
      346 GETUPVAL                         R28 3
      347 GETTABLEKS                       R28 R28 K115 ["CORE_CONTENT_UNIVERSE_CHIP_STATUS"]
      349 GETTABLEKS                       R28 R28 K43 ["Prefix"]
      351 GETUPVAL                         R29 3
      352 GETTABLEKS                       R29 R29 K115 ["CORE_CONTENT_UNIVERSE_CHIP_STATUS"]
      354 GETTABLEKS                       R29 R29 K44 ["Url"]
      356 LOADN                            R30 555
      357 CALL                             R29 1 -1
      358 CALL                             R27 -1 1
      359 DUPTABLE                         R28 K124 [{["chipStatus"] = "AllAges", ["iconName"] = "icon-filled-globe-detailed", ["translatedStatus"] = "All ages", ["variant"] = "Standard"}]
      360 SETTABLE                         R28 R26 R27
      361 DUPTABLE                         R27 K126 [{"placeSafetyStatus"}]
      362 DUPTABLE                         R28 K129 [{["userPlayabilityRestrictions"] = "None"}]
      363 SETTABLEKS                       R28 R27 K125 ["placeSafetyStatus"]
      365 SETTABLE                         R27 R26 R23
      366 DUPTABLE                         R27 K82 [{"data"}]
      367 NEWTABLE                         R28 0 1
      369 DUPTABLE                         R29 K131 [{["id"] = 555, ["isEnabled"] = False}]
      370 SETLIST                          R28 R29 1 [1]
      372 SETTABLEKS                       R28 R27 K81 ["data"]
      374 SETTABLE                         R27 R26 R25
      375 GETUPVAL                         R27 4
      376 GETTABLEKS                       R27 R27 K132 ["mock"]
      378 MOVE                             R28 R26
      379 CALL                             R27 1 0
      380 GETUPVAL                         R27 4
      381 GETTABLEKS                       R27 R27 K133 ["StudioService"]
      383 GETTABLEKS                       R27 R27 K134 ["GetUserId"]
      385 GETTABLEKS                       R28 R27 K135 ["mockReturnValue"]
      387 LOADK                            R29 K136 [54321]
      388 CALL                             R28 1 0
      389 GETUPVAL                         R28 4
      390 GETTABLEKS                       R28 R28 K137 ["StartPageManager"]
      392 GETTABLEKS                       R28 R28 K138 ["getRecentAPIGamesFromRegistry"]
      394 GETUPVAL                         R29 4
      395 GETTABLEKS                       R29 R29 K137 ["StartPageManager"]
      397 GETTABLEKS                       R29 R29 K139 ["getLocalGamesFromRegistry"]
      399 GETTABLEKS                       R30 R28 K135 ["mockReturnValue"]
      401 NEWTABLE                         R31 0 0
      403 CALL                             R30 1 0
      404 GETTABLEKS                       R30 R29 K135 ["mockReturnValue"]
      406 NEWTABLE                         R31 0 1
      408 DUPTABLE                         R32 K151 [{["FilePath"] = "Documents/TestPlace3.rbxl", ["Name"] = "TestPlace3.rbxl", ["Updated"] = "UpdatedTime3", ["PrivacyType"] = "Private", ["NoLoadableImage"] = True, ["LastViewed"] = "ViewedTime3"}]
      409 SETLIST                          R31 R32 1 [1]
      411 CALL                             R30 1 0
      412 GETUPVAL                         R30 4
      413 GETTABLEKS                       R30 R30 K137 ["StartPageManager"]
      415 GETTABLEKS                       R30 R30 K152 ["getDaysSinceFirstUserLogin"]
      417 GETUPVAL                         R31 4
      418 GETTABLEKS                       R31 R31 K137 ["StartPageManager"]
      420 GETTABLEKS                       R31 R31 K153 ["isTutorialBannerClosed"]
      422 GETTABLEKS                       R32 R30 K135 ["mockReturnValue"]
      424 LOADN                            R33 0
      425 CALL                             R32 1 0
      426 GETTABLEKS                       R32 R31 K135 ["mockReturnValue"]
      428 LOADB                            R33 0
      429 CALL                             R32 1 0
      430 CLOSEUPVALS                      R6
      431 RETURN                           R0 0

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
       45 DUPCLOSURE                       R6 K17 [PROTO_15]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 SETGLOBAL                        R6 K18 ["initializeServiceMockApis"]
       53 GETGLOBAL                        R6 K18 ["initializeServiceMockApis"]
       55 RETURN                           R6 1
