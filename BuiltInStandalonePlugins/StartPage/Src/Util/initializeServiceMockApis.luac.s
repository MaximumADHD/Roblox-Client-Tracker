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
        6 DUPTABLE                         R6 K14 [{"created", "creatorName", "creatorTargetId", "creatorType", "id", "isActive", "isArchived", "name", "privacyType", "audiences", "rootPlaceId", "updated"}]
        7 LOADK                            R7 K15 ["2013-11-01T08:47:14.07Z"]
        8 SETTABLEKS                       R7 R6 K2 ["created"]
       10 LOADK                            R7 K16 ["Ben"]
       11 SETTABLEKS                       R7 R6 K3 ["creatorName"]
       13 LOADK                            R7 K17 [998796]
       14 SETTABLEKS                       R7 R6 K4 ["creatorTargetId"]
       16 LOADK                            R7 K18 ["Group"]
       17 SETTABLEKS                       R7 R6 K5 ["creatorType"]
       19 LOADN                            R7 43
       20 SETTABLEKS                       R7 R6 K6 ["id"]
       22 LOADB                            R7 1
       23 SETTABLEKS                       R7 R6 K7 ["isActive"]
       25 LOADB                            R7 0
       26 SETTABLEKS                       R7 R6 K8 ["isArchived"]
       28 LOADK                            R7 K19 ["Backyardigans"]
       29 SETTABLEKS                       R7 R6 K9 ["name"]
       31 LOADK                            R7 K20 ["Public"]
       32 SETTABLEKS                       R7 R6 K10 ["privacyType"]
       34 NEWTABLE                         R7 0 1
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K20 ["Public"]
       39 SETLIST                          R7 R8 1 [1]
       41 SETTABLEKS                       R7 R6 K11 ["audiences"]
       43 LOADN                            R7 101
       44 SETTABLEKS                       R7 R6 K12 ["rootPlaceId"]
       46 LOADK                            R7 K21 ["2023-05-02T22:03:01.107Z"]
       47 SETTABLEKS                       R7 R6 K13 ["updated"]
       49 JUMPIFNOTEQKS                    R0 K22 ["ArchivePage"] ; [+3]
       51 LOADK                            R5 K23 ["Archive"]
       52 LOADB                            R4 1
       53 JUMPIFNOT                        R1 ; [+2]
       54 NEWTABLE                         R6 0 0
       56 GETIMPORT                        R7 K25 [require]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K26 ["Src"]
       61 GETTABLEKS                       R8 R8 K27 ["SharedFlags"]
       63 GETTABLEKS                       R8 R8 K28 ["getFFlagLuaStartPageCoreContentStatus"]
       65 CALL                             R7 1 1
       66 CALL                             R7 0 1
       67 JUMPIFNOT                        R7 ; [+2]
       68 LOADK                            R8 K29 ["&needsAssetOptions=true"]
       69 JUMP                             ; [+1]
       70 LOADK                            R8 K30 [""]
       71 LOADK                            R10 K31 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=Team&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       72 MOVE                             R12 R4
       73 MOVE                             R13 R5
       74 MOVE                             R14 R8
       75 NAMECALL                         R10 R10 K32 ["format"]
       77 CALL                             R10 4 1
       78 MOVE                             R9 R10
       79 LOADK                            R11 K33 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=54321&searchKey=%*&sortOrder=Desc&search=&creatorType=User&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       80 MOVE                             R13 R4
       81 MOVE                             R14 R5
       82 MOVE                             R15 R8
       83 NAMECALL                         R11 R11 K32 ["format"]
       85 CALL                             R11 4 1
       86 MOVE                             R10 R11
       87 LOADK                            R12 K34 ["https://apis.roblox.com/universes/v1/search?isTemplates=false&isArchived=%*&creatorTargetId=999&searchKey=%*&sortOrder=Desc&search=&creatorType=Group&pageSize=30&sortParam=LastUpdated&surface=StudioStartPage&PageIndex=0%*"]
       88 MOVE                             R14 R4
       89 MOVE                             R15 R5
       90 MOVE                             R16 R8
       91 NAMECALL                         R12 R12 K32 ["format"]
       93 CALL                             R12 4 1
       94 MOVE                             R11 R12
       95 GETTABLEKS                       R12 R3 K35 ["composeUrl"]
       97 GETUPVAL                         R13 3
       98 GETTABLEKS                       R13 R13 K36 ["KNOWLEDGE_FEEDS_URL"]
      100 GETTABLEKS                       R13 R13 K37 ["Prefix"]
      102 GETUPVAL                         R14 3
      103 GETTABLEKS                       R14 R14 K36 ["KNOWLEDGE_FEEDS_URL"]
      105 GETTABLEKS                       R14 R14 K38 ["Url"]
      107 CALL                             R14 0 -1
      108 CALL                             R12 -1 1
      109 DUPTABLE                         R13 K41 [{"limit", "SortOrder"}]
      110 LOADN                            R14 50
      111 SETTABLEKS                       R14 R13 K39 ["limit"]
      113 LOADK                            R14 K42 ["Asc"]
      114 SETTABLEKS                       R14 R13 K40 ["SortOrder"]
      116 GETTABLEKS                       R14 R3 K35 ["composeUrl"]
      118 GETUPVAL                         R15 3
      119 GETTABLEKS                       R15 R15 K43 ["PLACES_SEARCH_URL"]
      121 GETTABLEKS                       R15 R15 K37 ["Prefix"]
      123 GETUPVAL                         R16 3
      124 GETTABLEKS                       R16 R16 K43 ["PLACES_SEARCH_URL"]
      126 GETTABLEKS                       R16 R16 K38 ["Url"]
      128 LOADN                            R17 43
      129 CALL                             R16 1 1
      130 MOVE                             R17 R13
      131 CALL                             R14 3 1
      132 DUPCLOSURE                       R15 K44 [PROTO_0]
      133 GETTABLEKS                       R16 R3 K35 ["composeUrl"]
      135 GETUPVAL                         R17 3
      136 GETTABLEKS                       R17 R17 K45 ["MULTI_CREATOR_ELIGIBILITY"]
      138 GETTABLEKS                       R17 R17 K37 ["Prefix"]
      140 GETUPVAL                         R18 3
      141 GETTABLEKS                       R18 R18 K45 ["MULTI_CREATOR_ELIGIBILITY"]
      143 GETTABLEKS                       R18 R18 K38 ["Url"]
      145 CALL                             R18 0 -1
      146 CALL                             R16 -1 1
      147 GETTABLEKS                       R17 R3 K35 ["composeUrl"]
      149 GETUPVAL                         R18 3
      150 GETTABLEKS                       R18 R18 K46 ["MULTI_AGE_RECOMMENDATION"]
      152 GETTABLEKS                       R18 R18 K37 ["Prefix"]
      154 GETUPVAL                         R19 3
      155 GETTABLEKS                       R19 R19 K46 ["MULTI_AGE_RECOMMENDATION"]
      157 GETTABLEKS                       R19 R19 K38 ["Url"]
      159 CALL                             R19 0 -1
      160 CALL                             R17 -1 1
      161 GETTABLEKS                       R21 R3 K35 ["composeUrl"]
      163 GETUPVAL                         R22 3
      164 GETTABLEKS                       R22 R22 K47 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      166 GETTABLEKS                       R22 R22 K37 ["Prefix"]
      168 GETUPVAL                         R23 3
      169 GETTABLEKS                       R23 R23 K47 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      171 GETTABLEKS                       R23 R23 K38 ["Url"]
      173 CALL                             R23 0 -1
      174 CALL                             R21 -1 1
      175 MOVE                             R19 R21
      176 LOADK                            R20 K48 ["?maxUsers=10&ids=555"]
      177 CONCAT                           R18 R19 R20
      178 DUPTABLE                         R19 K52 [{"userIds", "size", "format", "isCircular"}]
      179 NEWTABLE                         R20 0 1
      181 LOADN                            R21 100
      182 SETLIST                          R20 R21 1 [1]
      184 SETTABLEKS                       R20 R19 K49 ["userIds"]
      186 LOADK                            R20 K53 ["48x48"]
      187 SETTABLEKS                       R20 R19 K50 ["size"]
      189 LOADK                            R20 K54 ["png"]
      190 SETTABLEKS                       R20 R19 K32 ["format"]
      192 LOADB                            R20 1
      193 SETTABLEKS                       R20 R19 K51 ["isCircular"]
      195 GETTABLEKS                       R20 R3 K35 ["composeUrl"]
      197 GETUPVAL                         R21 3
      198 GETTABLEKS                       R21 R21 K55 ["AVATAR_ICON_URL"]
      200 GETTABLEKS                       R21 R21 K37 ["Prefix"]
      202 GETUPVAL                         R22 3
      203 GETTABLEKS                       R22 R22 K55 ["AVATAR_ICON_URL"]
      205 GETTABLEKS                       R22 R22 K38 ["Url"]
      207 CALL                             R22 0 1
      208 MOVE                             R23 R19
      209 CALL                             R20 3 1
      210 GETTABLEKS                       R21 R3 K35 ["composeUrl"]
      212 GETUPVAL                         R22 3
      213 GETTABLEKS                       R22 R22 K56 ["PLACE_SAFETY_STATUS_URL"]
      215 GETTABLEKS                       R22 R22 K37 ["Prefix"]
      217 GETUPVAL                         R23 3
      218 GETTABLEKS                       R23 R23 K56 ["PLACE_SAFETY_STATUS_URL"]
      220 GETTABLEKS                       R23 R23 K38 ["Url"]
      222 LOADN                            R24 101
      223 CALL                             R23 1 -1
      224 CALL                             R21 -1 1
      225 GETTABLEKS                       R22 R3 K35 ["composeUrl"]
      227 GETUPVAL                         R23 3
      228 GETTABLEKS                       R23 R23 K57 ["MULTI_TEAM_CREATE_STATUS"]
      230 GETTABLEKS                       R23 R23 K37 ["Prefix"]
      232 GETUPVAL                         R24 3
      233 GETTABLEKS                       R24 R24 K57 ["MULTI_TEAM_CREATE_STATUS"]
      235 GETTABLEKS                       R24 R24 K38 ["Url"]
      237 CALL                             R24 0 -1
      238 CALL                             R22 -1 1
      239 MOVE                             R24 R22
      240 LOADK                            R25 K58 ["?ids=555&"]
      241 CONCAT                           R23 R24 R25
      242 NEWTABLE                         R24 32 0
      244 DUPCLOSURE                       R25 K59 [PROTO_1]
      245 SETTABLE                         R25 R24 R14
      246 DUPTABLE                         R25 K61 [{"data"}]
      247 NEWTABLE                         R26 0 1
      249 DUPTABLE                         R27 K65 [{"gameTemplateType", "hasTutorials", "universe"}]
      250 LOADK                            R28 K66 ["All"]
      251 SETTABLEKS                       R28 R27 K62 ["gameTemplateType"]
      253 LOADB                            R28 0
      254 SETTABLEKS                       R28 R27 K63 ["hasTutorials"]
      256 SETTABLEKS                       R6 R27 K64 ["universe"]
      258 SETLIST                          R26 R27 1 [1]
      260 SETTABLEKS                       R26 R25 K60 ["data"]
      262 SETTABLEKS                       R25 R24 K67 ["https://develop.roblox.com/v1/gametemplates?searchKey=Templates&pageSize=30&search=All&isTemplates=true"]
      264 NEWCLOSURE                       R25 P2
      265 CAPTURE                          REF R6
      266 SETTABLE                         R25 R24 R10
      267 NEWCLOSURE                       R25 P3
      268 CAPTURE                          REF R6
      269 SETTABLE                         R25 R24 R9
      270 DUPTABLE                         R25 K69 [{"groups"}]
      271 NEWTABLE                         R26 0 1
      273 DUPTABLE                         R27 K70 [{"id", "name"}]
      274 LOADN                            R28 231
      275 SETTABLEKS                       R28 R27 K6 ["id"]
      277 LOADK                            R28 K71 ["Example"]
      278 SETTABLEKS                       R28 R27 K9 ["name"]
      280 SETLIST                          R26 R27 1 [1]
      282 SETTABLEKS                       R26 R25 K68 ["groups"]
      284 SETTABLEKS                       R25 R24 K72 ["https://apis.roblox.com/creator-home-api/v1/groups?surface=StudioStartPage"]
      286 DUPCLOSURE                       R25 K73 [PROTO_4]
      287 SETTABLE                         R25 R24 R18
      288 LOADK                            R25 K74 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Autogenerated&format=png&size=256x256"]
      289 DUPTABLE                         R26 K61 [{"data"}]
      290 NEWTABLE                         R27 0 1
      292 DUPTABLE                         R28 K77 [{"targetId", "imageUrl"}]
      293 LOADN                            R29 123
      294 SETTABLEKS                       R29 R28 K75 ["targetId"]
      296 LOADK                            R29 K78 ["http://example.com/image/123"]
      297 SETTABLEKS                       R29 R28 K76 ["imageUrl"]
      299 SETLIST                          R27 R28 1 [1]
      301 SETTABLEKS                       R27 R26 K60 ["data"]
      303 SETTABLE                         R26 R24 R25
      304 LOADK                            R25 K79 ["https://thumbnails.roblox.com//v1/games/icons?universeIds=555&returnPolicy=Placeholder&format=png&size=256x256"]
      305 DUPTABLE                         R26 K61 [{"data"}]
      306 NEWTABLE                         R27 0 1
      308 DUPTABLE                         R28 K77 [{"targetId", "imageUrl"}]
      309 LOADN                            R29 123
      310 SETTABLEKS                       R29 R28 K75 ["targetId"]
      312 LOADK                            R29 K78 ["http://example.com/image/123"]
      313 SETTABLEKS                       R29 R28 K76 ["imageUrl"]
      315 SETLIST                          R27 R28 1 [1]
      317 SETTABLEKS                       R27 R26 K60 ["data"]
      319 SETTABLE                         R26 R24 R25
      320 DUPCLOSURE                       R25 K80 [PROTO_5]
      321 SETTABLE                         R25 R24 R16
      322 DUPTABLE                         R25 K61 [{"data"}]
      323 DUPTABLE                         R26 K81 [{"universe"}]
      324 SETTABLEKS                       R6 R26 K64 ["universe"]
      326 SETTABLEKS                       R26 R25 K60 ["data"]
      328 SETTABLE                         R25 R24 R11
      329 DUPCLOSURE                       R25 K82 [PROTO_6]
      330 SETTABLE                         R25 R24 R17
      331 DUPCLOSURE                       R25 K83 [PROTO_7]
      332 SETTABLE                         R25 R24 R20
      333 DUPCLOSURE                       R25 K84 [PROTO_8]
      334 SETTABLE                         R25 R24 R12
      335 NEWCLOSURE                       R25 P9
      336 CAPTURE                          VAL R2
      337 SETTABLEKS                       R25 R24 K85 ["https://apis.roblox.com/creator-home-api/v1/users/54321/homepage/banner/experience-unrated"]
      339 NEWCLOSURE                       R25 P10
      340 CAPTURE                          VAL R2
      341 SETTABLEKS                       R25 R24 K86 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioBanner&nameSpace=studio/CollaborationSettings"]
      343 NEWCLOSURE                       R25 P11
      344 CAPTURE                          VAL R2
      345 SETTABLEKS                       R25 R24 K87 ["https://apis.roblox.com/access-management/v1/upsell-feature-access?featureName=ShouldShowStudioAgeReverificationRequiredBanner&nameSpace=studio/CollaborationSettings"]
      347 GETTABLEKS                       R25 R3 K35 ["composeUrl"]
      349 GETUPVAL                         R26 3
      350 GETTABLEKS                       R26 R26 K88 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      352 GETTABLEKS                       R26 R26 K37 ["Prefix"]
      354 GETUPVAL                         R27 3
      355 GETTABLEKS                       R27 R27 K88 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      357 GETTABLEKS                       R27 R27 K38 ["Url"]
      359 CALL                             R27 0 -1
      360 CALL                             R25 -1 1
      361 DUPCLOSURE                       R26 K89 [PROTO_12]
      362 SETTABLE                         R26 R24 R25
      363 GETTABLEKS                       R25 R3 K35 ["composeUrl"]
      365 GETUPVAL                         R26 3
      366 GETTABLEKS                       R26 R26 K90 ["MULTI_RELEASE_STATUSES"]
      368 GETTABLEKS                       R26 R26 K37 ["Prefix"]
      370 GETUPVAL                         R27 3
      371 GETTABLEKS                       R27 R27 K90 ["MULTI_RELEASE_STATUSES"]
      373 GETTABLEKS                       R27 R27 K38 ["Url"]
      375 CALL                             R27 0 -1
      376 CALL                             R25 -1 1
      377 DUPCLOSURE                       R26 K91 [PROTO_13]
      378 SETTABLE                         R26 R24 R25
      379 DUPTABLE                         R25 K93 [{"placeSafetyStatus"}]
      380 DUPTABLE                         R26 K95 [{"userPlayabilityRestrictions"}]
      381 LOADK                            R27 K96 ["None"]
      382 SETTABLEKS                       R27 R26 K94 ["userPlayabilityRestrictions"]
      384 SETTABLEKS                       R26 R25 K92 ["placeSafetyStatus"]
      386 SETTABLE                         R25 R24 R21
      387 DUPTABLE                         R25 K61 [{"data"}]
      388 NEWTABLE                         R26 0 1
      390 DUPTABLE                         R27 K98 [{"id", "isEnabled"}]
      391 LOADN                            R28 43
      392 SETTABLEKS                       R28 R27 K6 ["id"]
      394 LOADB                            R28 0
      395 SETTABLEKS                       R28 R27 K97 ["isEnabled"]
      397 SETLIST                          R26 R27 1 [1]
      399 SETTABLEKS                       R26 R25 K60 ["data"]
      401 SETTABLE                         R25 R24 R23
      402 GETUPVAL                         R25 4
      403 GETTABLEKS                       R25 R25 K99 ["mock"]
      405 MOVE                             R26 R24
      406 CALL                             R25 1 0
      407 GETUPVAL                         R25 4
      408 GETTABLEKS                       R25 R25 K100 ["StudioService"]
      410 GETTABLEKS                       R25 R25 K101 ["GetUserId"]
      412 GETTABLEKS                       R26 R25 K102 ["mockReturnValue"]
      414 LOADK                            R27 K103 [54321]
      415 CALL                             R26 1 0
      416 GETUPVAL                         R26 4
      417 GETTABLEKS                       R26 R26 K104 ["StartPageManager"]
      419 GETTABLEKS                       R26 R26 K105 ["getRecentAPIGamesFromRegistry"]
      421 GETUPVAL                         R27 4
      422 GETTABLEKS                       R27 R27 K104 ["StartPageManager"]
      424 GETTABLEKS                       R27 R27 K106 ["getLocalGamesFromRegistry"]
      426 GETTABLEKS                       R28 R26 K102 ["mockReturnValue"]
      428 NEWTABLE                         R29 0 0
      430 CALL                             R28 1 0
      431 GETTABLEKS                       R28 R27 K102 ["mockReturnValue"]
      433 NEWTABLE                         R29 0 1
      435 DUPTABLE                         R30 K113 [{"FilePath", "Name", "Updated", "PrivacyType", "NoLoadableImage", "LastViewed"}]
      436 LOADK                            R31 K114 ["Documents/TestPlace3.rbxl"]
      437 SETTABLEKS                       R31 R30 K107 ["FilePath"]
      439 LOADK                            R31 K115 ["TestPlace3.rbxl"]
      440 SETTABLEKS                       R31 R30 K108 ["Name"]
      442 LOADK                            R31 K116 ["UpdatedTime3"]
      443 SETTABLEKS                       R31 R30 K109 ["Updated"]
      445 LOADK                            R31 K117 ["Private"]
      446 SETTABLEKS                       R31 R30 K110 ["PrivacyType"]
      448 LOADB                            R31 1
      449 SETTABLEKS                       R31 R30 K111 ["NoLoadableImage"]
      451 LOADK                            R31 K118 ["ViewedTime3"]
      452 SETTABLEKS                       R31 R30 K112 ["LastViewed"]
      454 SETLIST                          R29 R30 1 [1]
      456 CALL                             R28 1 0
      457 GETUPVAL                         R28 4
      458 GETTABLEKS                       R28 R28 K104 ["StartPageManager"]
      460 GETTABLEKS                       R28 R28 K119 ["getDaysSinceFirstUserLogin"]
      462 GETUPVAL                         R29 4
      463 GETTABLEKS                       R29 R29 K104 ["StartPageManager"]
      465 GETTABLEKS                       R29 R29 K120 ["isTutorialBannerClosed"]
      467 GETTABLEKS                       R30 R28 K102 ["mockReturnValue"]
      469 LOADN                            R31 0
      470 CALL                             R30 1 0
      471 GETTABLEKS                       R30 R29 K102 ["mockReturnValue"]
      473 LOADB                            R31 0
      474 CALL                             R30 1 0
      475 CLOSEUPVALS                      R6
      476 RETURN                           R0 0

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
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 SETGLOBAL                        R6 K18 ["initializeServiceMockApis"]
       53 GETGLOBAL                        R6 K18 ["initializeServiceMockApis"]
       55 RETURN                           R6 1
