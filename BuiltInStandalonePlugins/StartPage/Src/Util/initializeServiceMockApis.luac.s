PROTO_0:
        0 LOADK                            R2 K0 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=%*&format=png&size=256x256"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K6 [{"id", "universeId", "name", "description"}]
        4 LOADN                            R3 1
        5 SETTABLEKS                       R3 R2 K2 ["id"]
        7 LOADN                            R3 43
        8 SETTABLEKS                       R3 R2 K3 ["universeId"]
       10 LOADK                            R3 K7 ["Backyardigans"]
       11 SETTABLEKS                       R3 R2 K4 ["name"]
       13 LOADK                            R3 K8 ["Description1"]
       14 SETTABLEKS                       R3 R2 K5 ["description"]
       16 SETLIST                          R1 R2 1 [1]
       18 SETTABLEKS                       R1 R0 K0 ["data"]
       20 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 DUPTABLE                         R1 K3 [{"universe"}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K2 ["universe"]
        5 SETTABLEKS                       R1 R0 K0 ["data"]
        7 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 DUPTABLE                         R1 K3 [{"universe"}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K2 ["universe"]
        5 SETTABLEKS                       R1 R0 K0 ["data"]
        7 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K4 [{"id", "activeUsers"}]
        4 LOADN                            R3 123
        5 SETTABLEKS                       R3 R2 K2 ["id"]
        7 NEWTABLE                         R3 0 1
        9 DUPTABLE                         R4 K5 [{"id"}]
       10 LOADN                            R5 100
       11 SETTABLEKS                       R5 R4 K2 ["id"]
       13 SETLIST                          R3 R4 1 [1]
       15 SETTABLEKS                       R3 R2 K3 ["activeUsers"]
       17 SETLIST                          R1 R2 1 [1]
       19 SETTABLEKS                       R1 R0 K0 ["data"]
       21 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"eligibilityByCreator"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K4 [{"userIsEligible", "displayText"}]
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K2 ["userIsEligible"]
        7 LOADK                            R3 K5 ["Eligible"]
        8 SETTABLEKS                       R3 R2 K3 ["displayText"]
       10 SETLIST                          R1 R2 1 [1]
       12 SETTABLEKS                       R1 R0 K0 ["eligibilityByCreator"]
       14 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"ageRecommendationDetailsByUniverse"}]
        1 NEWTABLE                         R2 0 2
        3 DUPTABLE                         R3 K4 [{"ageRecommendationDetails", "universeId"}]
        4 DUPTABLE                         R4 K6 [{"ageRecommendationSummary"}]
        5 DUPTABLE                         R5 K8 [{"ageRecommendation"}]
        6 DUPTABLE                         R6 K10 [{"minimumAge"}]
        7 LOADN                            R7 13
        8 SETTABLEKS                       R7 R6 K9 ["minimumAge"]
       10 SETTABLEKS                       R6 R5 K7 ["ageRecommendation"]
       12 SETTABLEKS                       R5 R4 K5 ["ageRecommendationSummary"]
       14 SETTABLEKS                       R4 R3 K2 ["ageRecommendationDetails"]
       16 LOADN                            R4 200
       17 SETTABLEKS                       R4 R3 K3 ["universeId"]
       19 DUPTABLE                         R4 K4 [{"ageRecommendationDetails", "universeId"}]
       20 DUPTABLE                         R5 K6 [{"ageRecommendationSummary"}]
       21 DUPTABLE                         R6 K8 [{"ageRecommendation"}]
       22 DUPTABLE                         R7 K10 [{"minimumAge"}]
       23 LOADN                            R8 18
       24 SETTABLEKS                       R8 R7 K9 ["minimumAge"]
       26 SETTABLEKS                       R7 R6 K7 ["ageRecommendation"]
       28 SETTABLEKS                       R6 R5 K5 ["ageRecommendationSummary"]
       30 SETTABLEKS                       R5 R4 K2 ["ageRecommendationDetails"]
       32 LOADN                            R5 21
       33 SETTABLEKS                       R5 R4 K3 ["universeId"]
       35 SETLIST                          R2 R3 2 [1]
       37 SETTABLEKS                       R2 R1 K0 ["ageRecommendationDetailsByUniverse"]
       39 RETURN                           R1 1

PROTO_7:
        0 DUPTABLE                         R0 K1 [{"data"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K4 [{"targetId", "imageUrl"}]
        4 LOADN                            R3 100
        5 SETTABLEKS                       R3 R2 K2 ["targetId"]
        7 LOADK                            R3 K5 ["UserCDNImage1"]
        8 SETTABLEKS                       R3 R2 K3 ["imageUrl"]
       10 SETLIST                          R1 R2 1 [1]
       12 SETTABLEKS                       R1 R0 K0 ["data"]
       14 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R0 K2 [{"feedItems", "meta"}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K9 [{"feedType", "id", "titleKey", "title", "thumbnails", "url"}]
        4 LOADK                            R3 K10 ["Article"]
        5 SETTABLEKS                       R3 R2 K3 ["feedType"]
        7 LOADK                            R3 K11 ["potato beans"]
        8 SETTABLEKS                       R3 R2 K4 ["id"]
       10 LOADK                            R3 K12 ["MockTemplateName"]
       11 SETTABLEKS                       R3 R2 K5 ["titleKey"]
       13 LOADK                            R3 K12 ["MockTemplateName"]
       14 SETTABLEKS                       R3 R2 K6 ["title"]
       16 DUPTABLE                         R3 K14 [{"default"}]
       17 DUPTABLE                         R4 K15 [{"url"}]
       18 LOADK                            R5 K16 ["/image.png"]
       19 SETTABLEKS                       R5 R4 K8 ["url"]
       21 SETTABLEKS                       R4 R3 K13 ["default"]
       23 SETTABLEKS                       R3 R2 K7 ["thumbnails"]
       25 LOADK                            R3 K17 ["https://www.youtube.com/playlist?list=PLMneGxZNs3ZawdQ3Y5bjCRHM75fDJydv9"]
       26 SETTABLEKS                       R3 R2 K8 ["url"]
       28 SETLIST                          R1 R2 1 [1]
       30 SETTABLEKS                       R1 R0 K0 ["feedItems"]
       32 NEWTABLE                         R1 0 0
       34 SETTABLEKS                       R1 R0 K1 ["meta"]
       36 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 DUPTABLE                         R0 K6 [{"featureName", "access", "recourse", "recourses", "v2Recourses", "shouldPrompt"}]
        5 LOADK                            R1 K7 ["ShouldShowStudioBanner"]
        6 SETTABLEKS                       R1 R0 K0 ["featureName"]
        8 LOADK                            R1 K8 ["Granted"]
        9 SETTABLEKS                       R1 R0 K1 ["access"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["recourse"]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K3 ["recourses"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K4 ["v2Recourses"]
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K5 ["shouldPrompt"]
       23 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 DUPTABLE                         R0 K6 [{"featureName", "access", "recourse", "recourses", "v2Recourses", "shouldPrompt"}]
        5 LOADK                            R1 K7 ["ShouldShowStudioAgeReverificationRequiredBanner"]
        6 SETTABLEKS                       R1 R0 K0 ["featureName"]
        8 LOADK                            R1 K8 ["Granted"]
        9 SETTABLEKS                       R1 R0 K1 ["access"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["recourse"]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K3 ["recourses"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K4 ["v2Recourses"]
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K5 ["shouldPrompt"]
       23 RETURN                           R0 1

PROTO_12:
        0 DUPTABLE                         R0 K1 [{"universeEligibilities"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["universeEligibilities"]
        5 RETURN                           R0 1

PROTO_13:
        0 DUPTABLE                         R0 K2 [{"universeIds", "releaseTypes"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["universeIds"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["releaseTypes"]
        9 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 LOADB                            R4 0
        5 LOADK                            R5 K1 ["Experiences"]
        6 DUPTABLE                         R6 K13 [{"created", "creatorName", "creatorTargetId", "creatorType", "id", "isActive", "isArchived", "name", "privacyType", "rootPlaceId", "updated"}]
        7 LOADK                            R7 K14 ["2013-11-01T08:47:14.07Z"]
        8 SETTABLEKS                       R7 R6 K2 ["created"]
       10 LOADK                            R7 K15 ["Ben"]
       11 SETTABLEKS                       R7 R6 K3 ["creatorName"]
       13 LOADK                            R7 K16 [998796]
       14 SETTABLEKS                       R7 R6 K4 ["creatorTargetId"]
       16 LOADK                            R7 K17 ["Group"]
       17 SETTABLEKS                       R7 R6 K5 ["creatorType"]
       19 LOADN                            R7 43
       20 SETTABLEKS                       R7 R6 K6 ["id"]
       22 LOADB                            R7 1
       23 SETTABLEKS                       R7 R6 K7 ["isActive"]
       25 LOADB                            R7 0
       26 SETTABLEKS                       R7 R6 K8 ["isArchived"]
       28 LOADK                            R7 K18 ["Backyardigans"]
       29 SETTABLEKS                       R7 R6 K9 ["name"]
       31 LOADK                            R7 K19 ["Public"]
       32 SETTABLEKS                       R7 R6 K10 ["privacyType"]
       34 LOADN                            R7 101
       35 SETTABLEKS                       R7 R6 K11 ["rootPlaceId"]
       37 LOADK                            R7 K20 ["2023-05-02T22:03:01.107Z"]
       38 SETTABLEKS                       R7 R6 K12 ["updated"]
       40 JUMPIFNOTEQKS                    R0 K21 ["ArchivePage"] ; [+3]
       42 LOADK                            R5 K22 ["Archive"]
       43 LOADB                            R4 1
       44 JUMPIFNOT                        R1 ; [+2]
       45 NEWTABLE                         R6 0 0
       47 GETIMPORT                        R7 K24 [require]
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R8 R8 K25 ["Src"]
       52 GETTABLEKS                       R8 R8 K26 ["SharedFlags"]
       54 GETTABLEKS                       R8 R8 K27 ["getFFlagLuaStartPageCoreContentStatus"]
       56 CALL                             R7 1 1
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+2]
       59 LOADK                            R8 K28 ["&needsAssetOptions=true"]
       60 JUMP                             ; [+1]
       61 LOADK                            R8 K29 [""]
       62 LOADK                            R10 K30 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=Team&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       63 MOVE                             R12 R4
       64 MOVE                             R13 R5
       65 MOVE                             R14 R8
       66 NAMECALL                         R10 R10 K31 ["format"]
       68 CALL                             R10 4 1
       69 MOVE                             R9 R10
       70 LOADK                            R11 K32 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=User&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       71 MOVE                             R13 R4
       72 MOVE                             R14 R5
       73 MOVE                             R15 R8
       74 NAMECALL                         R11 R11 K31 ["format"]
       76 CALL                             R11 4 1
       77 MOVE                             R10 R11
       78 LOADK                            R12 K33 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=999&searchKey=%*&sortOrder=Desc&search=&creatorType=Group&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       79 MOVE                             R14 R4
       80 MOVE                             R15 R5
       81 MOVE                             R16 R8
       82 NAMECALL                         R12 R12 K31 ["format"]
       84 CALL                             R12 4 1
       85 MOVE                             R11 R12
       86 GETTABLEKS                       R12 R3 K34 ["composeUrl"]
       88 GETUPVAL                         R13 2
       89 GETTABLEKS                       R13 R13 K35 ["KNOWLEDGE_FEEDS_URL"]
       91 GETTABLEKS                       R13 R13 K36 ["Prefix"]
       93 GETUPVAL                         R14 2
       94 GETTABLEKS                       R14 R14 K35 ["KNOWLEDGE_FEEDS_URL"]
       96 GETTABLEKS                       R14 R14 K37 ["Url"]
       98 CALL                             R14 0 -1
       99 CALL                             R12 -1 1
      100 DUPTABLE                         R13 K40 [{"limit", "SortOrder"}]
      101 LOADN                            R14 50
      102 SETTABLEKS                       R14 R13 K38 ["limit"]
      104 LOADK                            R14 K41 ["Asc"]
      105 SETTABLEKS                       R14 R13 K39 ["SortOrder"]
      107 GETTABLEKS                       R14 R3 K34 ["composeUrl"]
      109 GETUPVAL                         R15 2
      110 GETTABLEKS                       R15 R15 K42 ["PLACES_SEARCH_URL"]
      112 GETTABLEKS                       R15 R15 K36 ["Prefix"]
      114 GETUPVAL                         R16 2
      115 GETTABLEKS                       R16 R16 K42 ["PLACES_SEARCH_URL"]
      117 GETTABLEKS                       R16 R16 K37 ["Url"]
      119 LOADN                            R17 43
      120 CALL                             R16 1 1
      121 MOVE                             R17 R13
      122 CALL                             R14 3 1
      123 DUPCLOSURE                       R15 K43 [PROTO_0]
      124 GETTABLEKS                       R16 R3 K34 ["composeUrl"]
      126 GETUPVAL                         R17 2
      127 GETTABLEKS                       R17 R17 K44 ["MULTI_CREATOR_ELIGIBILITY"]
      129 GETTABLEKS                       R17 R17 K36 ["Prefix"]
      131 GETUPVAL                         R18 2
      132 GETTABLEKS                       R18 R18 K44 ["MULTI_CREATOR_ELIGIBILITY"]
      134 GETTABLEKS                       R18 R18 K37 ["Url"]
      136 CALL                             R18 0 -1
      137 CALL                             R16 -1 1
      138 GETTABLEKS                       R17 R3 K34 ["composeUrl"]
      140 GETUPVAL                         R18 2
      141 GETTABLEKS                       R18 R18 K45 ["MULTI_AGE_RECOMMENDATION"]
      143 GETTABLEKS                       R18 R18 K36 ["Prefix"]
      145 GETUPVAL                         R19 2
      146 GETTABLEKS                       R19 R19 K45 ["MULTI_AGE_RECOMMENDATION"]
      148 GETTABLEKS                       R19 R19 K37 ["Url"]
      150 CALL                             R19 0 -1
      151 CALL                             R17 -1 1
      152 GETTABLEKS                       R21 R3 K34 ["composeUrl"]
      154 GETUPVAL                         R22 2
      155 GETTABLEKS                       R22 R22 K46 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      157 GETTABLEKS                       R22 R22 K36 ["Prefix"]
      159 GETUPVAL                         R23 2
      160 GETTABLEKS                       R23 R23 K46 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      162 GETTABLEKS                       R23 R23 K37 ["Url"]
      164 CALL                             R23 0 -1
      165 CALL                             R21 -1 1
      166 MOVE                             R19 R21
      167 LOADK                            R20 K47 ["?maxUsers=10&ids=555"]
      168 CONCAT                           R18 R19 R20
      169 DUPTABLE                         R19 K51 [{"userIds", "size", "format", "isCircular"}]
      170 NEWTABLE                         R20 0 1
      172 LOADN                            R21 100
      173 SETLIST                          R20 R21 1 [1]
      175 SETTABLEKS                       R20 R19 K48 ["userIds"]
      177 LOADK                            R20 K52 ["48x48"]
      178 SETTABLEKS                       R20 R19 K49 ["size"]
      180 LOADK                            R20 K53 ["png"]
      181 SETTABLEKS                       R20 R19 K31 ["format"]
      183 LOADB                            R20 1
      184 SETTABLEKS                       R20 R19 K50 ["isCircular"]
      186 GETTABLEKS                       R20 R3 K34 ["composeUrl"]
      188 GETUPVAL                         R21 2
      189 GETTABLEKS                       R21 R21 K54 ["AVATAR_ICON_URL"]
      191 GETTABLEKS                       R21 R21 K36 ["Prefix"]
      193 GETUPVAL                         R22 2
      194 GETTABLEKS                       R22 R22 K54 ["AVATAR_ICON_URL"]
      196 GETTABLEKS                       R22 R22 K37 ["Url"]
      198 CALL                             R22 0 1
      199 MOVE                             R23 R19
      200 CALL                             R20 3 1
      201 GETTABLEKS                       R21 R3 K34 ["composeUrl"]
      203 GETUPVAL                         R22 2
      204 GETTABLEKS                       R22 R22 K55 ["PLACE_SAFETY_STATUS_URL"]
      206 GETTABLEKS                       R22 R22 K36 ["Prefix"]
      208 GETUPVAL                         R23 2
      209 GETTABLEKS                       R23 R23 K55 ["PLACE_SAFETY_STATUS_URL"]
      211 GETTABLEKS                       R23 R23 K37 ["Url"]
      213 LOADN                            R24 101
      214 CALL                             R23 1 -1
      215 CALL                             R21 -1 1
      216 GETTABLEKS                       R22 R3 K34 ["composeUrl"]
      218 GETUPVAL                         R23 2
      219 GETTABLEKS                       R23 R23 K56 ["MULTI_TEAM_CREATE_STATUS"]
      221 GETTABLEKS                       R23 R23 K36 ["Prefix"]
      223 GETUPVAL                         R24 2
      224 GETTABLEKS                       R24 R24 K56 ["MULTI_TEAM_CREATE_STATUS"]
      226 GETTABLEKS                       R24 R24 K37 ["Url"]
      228 CALL                             R24 0 -1
      229 CALL                             R22 -1 1
      230 MOVE                             R24 R22
      231 LOADK                            R25 K57 ["?ids=555&"]
      232 CONCAT                           R23 R24 R25
      233 NEWTABLE                         R24 32 0
      235 DUPCLOSURE                       R25 K58 [PROTO_1]
      236 SETTABLE                         R25 R24 R14
      237 DUPTABLE                         R25 K60 [{"data"}]
      238 NEWTABLE                         R26 0 1
      240 DUPTABLE                         R27 K64 [{"gameTemplateType", "hasTutorials", "universe"}]
      241 LOADK                            R28 K65 ["All"]
      242 SETTABLEKS                       R28 R27 K61 ["gameTemplateType"]
      244 LOADB                            R28 0
      245 SETTABLEKS                       R28 R27 K62 ["hasTutorials"]
      247 SETTABLEKS                       R6 R27 K63 ["universe"]
      249 SETLIST                          R26 R27 1 [1]
      251 SETTABLEKS                       R26 R25 K59 ["data"]
      253 SETTABLEKS                       R25 R24 K66 ["https://develop.roblox.com/v1/gametemplates?searchKey=Templates&pageSize=30&search=All&isTemplates=true"]
      255 NEWCLOSURE                       R25 P2
      256 CAPTURE                          REF R6
      257 SETTABLE                         R25 R24 R10
      258 NEWCLOSURE                       R25 P3
      259 CAPTURE                          REF R6
      260 SETTABLE                         R25 R24 R9
      261 DUPTABLE                         R25 K68 [{"groups"}]
      262 NEWTABLE                         R26 0 1
      264 DUPTABLE                         R27 K69 [{"id", "name"}]
      265 LOADN                            R28 231
      266 SETTABLEKS                       R28 R27 K6 ["id"]
      268 LOADK                            R28 K70 ["Example"]
      269 SETTABLEKS                       R28 R27 K9 ["name"]
      271 SETLIST                          R26 R27 1 [1]
      273 SETTABLEKS                       R26 R25 K67 ["groups"]
      275 SETTABLEKS                       R25 R24 K71 ["https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage"]
      277 DUPCLOSURE                       R25 K72 [PROTO_4]
      278 SETTABLE                         R25 R24 R18
      279 LOADK                            R25 K73 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Autogenerated&format=png&size=256x256"]
      280 DUPTABLE                         R26 K60 [{"data"}]
      281 NEWTABLE                         R27 0 1
      283 DUPTABLE                         R28 K76 [{"targetId", "imageUrl"}]
      284 LOADN                            R29 123
      285 SETTABLEKS                       R29 R28 K74 ["targetId"]
      287 LOADK                            R29 K77 ["http://example.com/image/123"]
      288 SETTABLEKS                       R29 R28 K75 ["imageUrl"]
      290 SETLIST                          R27 R28 1 [1]
      292 SETTABLEKS                       R27 R26 K59 ["data"]
      294 SETTABLE                         R26 R24 R25
      295 LOADK                            R25 K78 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Placeholder&format=png&size=256x256"]
      296 DUPTABLE                         R26 K60 [{"data"}]
      297 NEWTABLE                         R27 0 1
      299 DUPTABLE                         R28 K76 [{"targetId", "imageUrl"}]
      300 LOADN                            R29 123
      301 SETTABLEKS                       R29 R28 K74 ["targetId"]
      303 LOADK                            R29 K77 ["http://example.com/image/123"]
      304 SETTABLEKS                       R29 R28 K75 ["imageUrl"]
      306 SETLIST                          R27 R28 1 [1]
      308 SETTABLEKS                       R27 R26 K59 ["data"]
      310 SETTABLE                         R26 R24 R25
      311 DUPCLOSURE                       R25 K79 [PROTO_5]
      312 SETTABLE                         R25 R24 R16
      313 DUPTABLE                         R25 K60 [{"data"}]
      314 DUPTABLE                         R26 K80 [{"universe"}]
      315 SETTABLEKS                       R6 R26 K63 ["universe"]
      317 SETTABLEKS                       R26 R25 K59 ["data"]
      319 SETTABLE                         R25 R24 R11
      320 DUPCLOSURE                       R25 K81 [PROTO_6]
      321 SETTABLE                         R25 R24 R17
      322 DUPCLOSURE                       R25 K82 [PROTO_7]
      323 SETTABLE                         R25 R24 R20
      324 DUPCLOSURE                       R25 K83 [PROTO_8]
      325 SETTABLE                         R25 R24 R12
      326 NEWCLOSURE                       R25 P9
      327 CAPTURE                          VAL R2
      328 SETTABLEKS                       R25 R24 K84 ["https://apis.roblox.com/creator-home-api/v1/users/54321/homepage/banner/experience-unrated"]
      330 NEWCLOSURE                       R25 P10
      331 CAPTURE                          VAL R2
      332 SETTABLEKS                       R25 R24 K85 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioBanner&nameSpace=studio/CollaborationSettings"]
      334 NEWCLOSURE                       R25 P11
      335 CAPTURE                          VAL R2
      336 SETTABLEKS                       R25 R24 K86 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioAgeReverificationRequiredBanner&nameSpace=studio/CollaborationSettings"]
      338 GETTABLEKS                       R25 R3 K34 ["composeUrl"]
      340 GETUPVAL                         R26 2
      341 GETTABLEKS                       R26 R26 K87 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      343 GETTABLEKS                       R26 R26 K36 ["Prefix"]
      345 GETUPVAL                         R27 2
      346 GETTABLEKS                       R27 R27 K87 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      348 GETTABLEKS                       R27 R27 K37 ["Url"]
      350 CALL                             R27 0 -1
      351 CALL                             R25 -1 1
      352 DUPCLOSURE                       R26 K88 [PROTO_12]
      353 SETTABLE                         R26 R24 R25
      354 GETTABLEKS                       R25 R3 K34 ["composeUrl"]
      356 GETUPVAL                         R26 2
      357 GETTABLEKS                       R26 R26 K89 ["MULTI_RELEASE_STATUSES"]
      359 GETTABLEKS                       R26 R26 K36 ["Prefix"]
      361 GETUPVAL                         R27 2
      362 GETTABLEKS                       R27 R27 K89 ["MULTI_RELEASE_STATUSES"]
      364 GETTABLEKS                       R27 R27 K37 ["Url"]
      366 CALL                             R27 0 -1
      367 CALL                             R25 -1 1
      368 DUPCLOSURE                       R26 K90 [PROTO_13]
      369 SETTABLE                         R26 R24 R25
      370 DUPTABLE                         R25 K92 [{"placeSafetyStatus"}]
      371 DUPTABLE                         R26 K94 [{"userPlayabilityRestrictions"}]
      372 LOADK                            R27 K95 ["None"]
      373 SETTABLEKS                       R27 R26 K93 ["userPlayabilityRestrictions"]
      375 SETTABLEKS                       R26 R25 K91 ["placeSafetyStatus"]
      377 SETTABLE                         R25 R24 R21
      378 DUPTABLE                         R25 K60 [{"data"}]
      379 NEWTABLE                         R26 0 1
      381 DUPTABLE                         R27 K97 [{"id", "isEnabled"}]
      382 LOADN                            R28 43
      383 SETTABLEKS                       R28 R27 K6 ["id"]
      385 LOADB                            R28 0
      386 SETTABLEKS                       R28 R27 K96 ["isEnabled"]
      388 SETLIST                          R26 R27 1 [1]
      390 SETTABLEKS                       R26 R25 K59 ["data"]
      392 SETTABLE                         R25 R24 R23
      393 GETUPVAL                         R25 3
      394 GETTABLEKS                       R25 R25 K98 ["mock"]
      396 MOVE                             R26 R24
      397 CALL                             R25 1 0
      398 GETUPVAL                         R25 3
      399 GETTABLEKS                       R25 R25 K99 ["StudioService"]
      401 GETTABLEKS                       R25 R25 K100 ["GetUserId"]
      403 GETTABLEKS                       R26 R25 K101 ["mockReturnValue"]
      405 LOADK                            R27 K102 [54321]
      406 CALL                             R26 1 0
      407 GETUPVAL                         R26 3
      408 GETTABLEKS                       R26 R26 K103 ["StartPageManager"]
      410 GETTABLEKS                       R26 R26 K104 ["getRecentAPIGamesFromRegistry"]
      412 GETUPVAL                         R27 3
      413 GETTABLEKS                       R27 R27 K103 ["StartPageManager"]
      415 GETTABLEKS                       R27 R27 K105 ["getLocalGamesFromRegistry"]
      417 GETTABLEKS                       R28 R26 K101 ["mockReturnValue"]
      419 NEWTABLE                         R29 0 0
      421 CALL                             R28 1 0
      422 GETTABLEKS                       R28 R27 K101 ["mockReturnValue"]
      424 NEWTABLE                         R29 0 1
      426 DUPTABLE                         R30 K112 [{"FilePath", "Name", "Updated", "PrivacyType", "NoLoadableImage", "LastViewed"}]
      427 LOADK                            R31 K113 ["Documents/TestPlace3.rbxl"]
      428 SETTABLEKS                       R31 R30 K106 ["FilePath"]
      430 LOADK                            R31 K114 ["TestPlace3.rbxl"]
      431 SETTABLEKS                       R31 R30 K107 ["Name"]
      433 LOADK                            R31 K115 ["UpdatedTime3"]
      434 SETTABLEKS                       R31 R30 K108 ["Updated"]
      436 LOADK                            R31 K116 ["Private"]
      437 SETTABLEKS                       R31 R30 K109 ["PrivacyType"]
      439 LOADB                            R31 1
      440 SETTABLEKS                       R31 R30 K110 ["NoLoadableImage"]
      442 LOADK                            R31 K117 ["ViewedTime3"]
      443 SETTABLEKS                       R31 R30 K111 ["LastViewed"]
      445 SETLIST                          R29 R30 1 [1]
      447 CALL                             R28 1 0
      448 GETUPVAL                         R28 3
      449 GETTABLEKS                       R28 R28 K103 ["StartPageManager"]
      451 GETTABLEKS                       R28 R28 K118 ["getDaysSinceFirstUserLogin"]
      453 GETUPVAL                         R29 3
      454 GETTABLEKS                       R29 R29 K103 ["StartPageManager"]
      456 GETTABLEKS                       R29 R29 K119 ["isTutorialBannerClosed"]
      458 GETTABLEKS                       R30 R28 K101 ["mockReturnValue"]
      460 LOADN                            R31 0
      461 CALL                             R30 1 0
      462 GETTABLEKS                       R30 R29 K101 ["mockReturnValue"]
      464 LOADB                            R31 0
      465 CALL                             R30 1 0
      466 CLOSEUPVALS                      R6
      467 RETURN                           R0 0

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
       32 GETTABLEKS                       R4 R1 K13 ["RobloxAPI"]
       34 GETTABLEKS                       R4 R4 K14 ["Url"]
       36 DUPCLOSURE                       R5 K15 [PROTO_14]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 SETGLOBAL                        R5 K16 ["initializeServiceMockApis"]
       43 GETGLOBAL                        R5 K16 ["initializeServiceMockApis"]
       45 RETURN                           R5 1
