PROTO_0:
        0 LOADK                            R0 K0 ["universes/v1/search"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["doc-site/v2/feeds?surfaceType=StudioStart"]
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R0 K0 ["v1/gametemplates"]
        1 RETURN                           R0 1

PROTO_3:
        0 LOADK                            R2 K0 ["v2/universes/%*/places"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R0 K0 ["v1/user/groups/canmanage"]
        1 RETURN                           R0 1

PROTO_5:
        0 LOADK                            R2 K0 ["creator-home-api/v1/groups?surface=%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R0 K0 ["/v1/games/icons"]
        1 RETURN                           R0 1

PROTO_7:
        0 LOADK                            R0 K0 ["/v1/places/gameicons"]
        1 RETURN                           R0 1

PROTO_8:
        0 LOADK                            R0 K0 ["teamcreate/v1/MultiGetUniversesActiveSessionMembers"]
        1 RETURN                           R0 1

PROTO_9:
        0 LOADK                            R0 K0 ["team-create-service/v1/GetCanCollaborate"]
        1 RETURN                           R0 1

PROTO_10:
        0 LOADK                            R0 K0 ["team-create-service/v1/MultiUniverseGetCanCollaborate"]
        1 RETURN                           R0 1

PROTO_11:
        0 LOADK                            R0 K0 ["v1/users/avatar-headshot"]
        1 RETURN                           R0 1

PROTO_12:
        0 LOADK                            R0 K0 ["experience-guidelines-service/v1beta1/multi-age-recommendation"]
        1 RETURN                           R0 1

PROTO_13:
        0 LOADK                            R0 K0 ["experience-guidelines-service/v1beta1/multi-creator-eligibility"]
        1 RETURN                           R0 1

PROTO_14:
        0 LOADK                            R0 K0 ["v1/universes/multiget/teamcreate"]
        1 RETURN                           R0 1

PROTO_15:
        0 LOADK                            R2 K0 ["v1/universes/%*/activate"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_16:
        0 LOADK                            R2 K0 ["v1/universes/%*/deactivate"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_17:
        0 LOADK                            R2 K0 ["v1/universes/%*/configuration"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_18:
        0 LOADK                            R0 K0 ["v1/universes/multiget"]
        1 RETURN                           R0 1

PROTO_19:
        0 LOADK                            R2 K0 ["v1/universes/%*/teamcreate/memberships"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_20:
        0 LOADK                            R0 K0 ["v1/team-create-preemptive"]
        1 RETURN                           R0 1

PROTO_21:
        0 LOADK                            R2 K0 ["v1/universes/%*/teamcreate"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_22:
        0 LOADK                            R0 K0 ["v1/games/multiget-place-details"]
        1 RETURN                           R0 1

PROTO_23:
        0 LOADK                            R0 K0 ["studio-test-templates-service/v1/test-templates"]
        1 RETURN                           R0 1

PROTO_24:
        0 LOADK                            R2 K0 ["creator-home-api/v1/users/%*/homepage/banner/experience-unrated"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_25:
        0 LOADK                            R3 K0 ["access-management/v1/upsell-feature-access?featureName=%*&nameSpace=%*"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_26:
        0 LOADK                            R0 K0 ["core-content/v1/universe-eligibility/batch"]
        1 RETURN                           R0 1

PROTO_27:
        0 LOADK                            R0 K0 ["experience-releases/v1beta1/experience_releases_api/multi_release_statuses"]
        1 RETURN                           R0 1

PROTO_28:
        0 LOADK                            R2 K0 ["content-safety/v1/places/%*/safety-status"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_29:
        0 LOADK                            R0 K0 ["team-create-service/v1/AreUniversesImpacted"]
        1 RETURN                           R0 1

PROTO_30:
        0 LOADK                            R2 K0 ["v1/universes/%*/places"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_31:
        0 LOADK                            R0 K0 ["universes/v1/universes/create"]
        1 RETURN                           R0 1

PROTO_32:
        0 LOADK                            R2 K0 ["v2/universes/%*/configuration"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_33:
        0 LOADK                            R2 K0 ["universes/v1/user/universes/%*/places"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

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
       14 GETTABLEKS                       R2 R1 K8 ["RobloxAPI"]
       16 GETTABLEKS                       R2 R2 K9 ["Url"]
       18 GETTABLEKS                       R3 R2 K10 ["new"]
       20 CALL                             R3 0 1
       21 NEWTABLE                         R4 64 0
       23 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
       24 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
       26 SETTABLEKS                       R6 R5 K11 ["Prefix"]
       28 DUPCLOSURE                       R6 K14 [PROTO_0]
       29 SETTABLEKS                       R6 R5 K9 ["Url"]
       31 SETTABLEKS                       R5 R4 K15 ["EXPERIENCES_SEARCH_URL"]
       33 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
       34 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
       36 SETTABLEKS                       R6 R5 K11 ["Prefix"]
       38 DUPCLOSURE                       R6 K16 [PROTO_1]
       39 SETTABLEKS                       R6 R5 K9 ["Url"]
       41 SETTABLEKS                       R5 R4 K17 ["KNOWLEDGE_FEEDS_URL"]
       43 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
       44 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
       46 SETTABLEKS                       R6 R5 K11 ["Prefix"]
       48 DUPCLOSURE                       R6 K19 [PROTO_2]
       49 SETTABLEKS                       R6 R5 K9 ["Url"]
       51 SETTABLEKS                       R5 R4 K20 ["TEMPLATES_SEARCH_URL"]
       53 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
       54 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
       56 SETTABLEKS                       R6 R5 K11 ["Prefix"]
       58 DUPCLOSURE                       R6 K21 [PROTO_3]
       59 SETTABLEKS                       R6 R5 K9 ["Url"]
       61 SETTABLEKS                       R5 R4 K22 ["PLACES_SEARCH_URL"]
       63 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
       64 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
       66 SETTABLEKS                       R6 R5 K11 ["Prefix"]
       68 DUPCLOSURE                       R6 K23 [PROTO_4]
       69 SETTABLEKS                       R6 R5 K9 ["Url"]
       71 SETTABLEKS                       R5 R4 K24 ["GROUPS_SEARCH_URL"]
       73 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
       74 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
       76 SETTABLEKS                       R6 R5 K11 ["Prefix"]
       78 DUPCLOSURE                       R6 K25 [PROTO_5]
       79 SETTABLEKS                       R6 R5 K9 ["Url"]
       81 SETTABLEKS                       R5 R4 K26 ["CREATOR_GROUPS_SEARCH_URL"]
       83 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
       84 GETTABLEKS                       R6 R3 K27 ["THUMBNAILS_URL"]
       86 SETTABLEKS                       R6 R5 K11 ["Prefix"]
       88 DUPCLOSURE                       R6 K28 [PROTO_6]
       89 SETTABLEKS                       R6 R5 K9 ["Url"]
       91 SETTABLEKS                       R5 R4 K29 ["EXPERIENCES_ICON_URL"]
       93 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
       94 GETTABLEKS                       R6 R3 K27 ["THUMBNAILS_URL"]
       96 SETTABLEKS                       R6 R5 K11 ["Prefix"]
       98 DUPCLOSURE                       R6 K30 [PROTO_7]
       99 SETTABLEKS                       R6 R5 K9 ["Url"]
      101 SETTABLEKS                       R5 R4 K31 ["PLACES_ICON_URL"]
      103 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      104 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      106 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      108 DUPCLOSURE                       R6 K32 [PROTO_8]
      109 SETTABLEKS                       R6 R5 K9 ["Url"]
      111 SETTABLEKS                       R5 R4 K33 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
      113 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      114 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      116 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      118 DUPCLOSURE                       R6 K34 [PROTO_9]
      119 SETTABLEKS                       R6 R5 K9 ["Url"]
      121 SETTABLEKS                       R5 R4 K35 ["TEAM_CREATE_CAN_COLLABORATE_URL"]
      123 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      124 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      126 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      128 DUPCLOSURE                       R6 K36 [PROTO_10]
      129 SETTABLEKS                       R6 R5 K9 ["Url"]
      131 SETTABLEKS                       R5 R4 K37 ["TEAM_CREATE_MULTI_CAN_COLLABORATE_URL"]
      133 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      134 GETTABLEKS                       R6 R3 K27 ["THUMBNAILS_URL"]
      136 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      138 DUPCLOSURE                       R6 K38 [PROTO_11]
      139 SETTABLEKS                       R6 R5 K9 ["Url"]
      141 SETTABLEKS                       R5 R4 K39 ["AVATAR_ICON_URL"]
      143 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      144 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      146 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      148 DUPCLOSURE                       R6 K40 [PROTO_12]
      149 SETTABLEKS                       R6 R5 K9 ["Url"]
      151 SETTABLEKS                       R5 R4 K41 ["MULTI_AGE_RECOMMENDATION"]
      153 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      154 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      156 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      158 DUPCLOSURE                       R6 K42 [PROTO_13]
      159 SETTABLEKS                       R6 R5 K9 ["Url"]
      161 SETTABLEKS                       R5 R4 K43 ["MULTI_CREATOR_ELIGIBILITY"]
      163 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      164 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
      166 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      168 DUPCLOSURE                       R6 K44 [PROTO_14]
      169 SETTABLEKS                       R6 R5 K9 ["Url"]
      171 SETTABLEKS                       R5 R4 K45 ["MULTI_TEAM_CREATE_STATUS"]
      173 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      174 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
      176 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      178 DUPCLOSURE                       R6 K46 [PROTO_15]
      179 SETTABLEKS                       R6 R5 K9 ["Url"]
      181 SETTABLEKS                       R5 R4 K47 ["ACTIVATE_UNIVERSE"]
      183 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      184 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
      186 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      188 DUPCLOSURE                       R6 K48 [PROTO_16]
      189 SETTABLEKS                       R6 R5 K9 ["Url"]
      191 SETTABLEKS                       R5 R4 K49 ["DEACTIVATE_UNIVERSE"]
      193 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      194 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
      196 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      198 DUPCLOSURE                       R6 K50 [PROTO_17]
      199 SETTABLEKS                       R6 R5 K9 ["Url"]
      201 SETTABLEKS                       R5 R4 K51 ["UNIVERSE_CONFIGURATION"]
      203 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      204 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
      206 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      208 DUPCLOSURE                       R6 K52 [PROTO_18]
      209 SETTABLEKS                       R6 R5 K9 ["Url"]
      211 SETTABLEKS                       R5 R4 K53 ["UNIVERSE_DATA"]
      213 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      214 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
      216 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      218 DUPCLOSURE                       R6 K54 [PROTO_19]
      219 SETTABLEKS                       R6 R5 K9 ["Url"]
      221 SETTABLEKS                       R5 R4 K55 ["TEAMCREATE_MEMBERSHIPS"]
      223 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      224 GETTABLEKS                       R6 R3 K56 ["GAME_JOIN_URL"]
      226 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      228 DUPCLOSURE                       R6 K57 [PROTO_20]
      229 SETTABLEKS                       R6 R5 K9 ["Url"]
      231 SETTABLEKS                       R5 R4 K58 ["TEAMCREATE_PRELAUNCH"]
      233 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      234 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
      236 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      238 DUPCLOSURE                       R6 K59 [PROTO_21]
      239 SETTABLEKS                       R6 R5 K9 ["Url"]
      241 SETTABLEKS                       R5 R4 K60 ["TEAMCREATE_CHANGE_ENABLED"]
      243 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      244 GETTABLEKS                       R6 R3 K61 ["GAMES_URL"]
      246 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      248 DUPCLOSURE                       R6 K62 [PROTO_22]
      249 SETTABLEKS                       R6 R5 K9 ["Url"]
      251 SETTABLEKS                       R5 R4 K63 ["MULTIGET_PLACES"]
      253 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      254 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      256 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      258 DUPCLOSURE                       R6 K64 [PROTO_23]
      259 SETTABLEKS                       R6 R5 K9 ["Url"]
      261 SETTABLEKS                       R5 R4 K65 ["TEST_TEMPLATES"]
      263 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      264 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      266 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      268 DUPCLOSURE                       R6 K66 [PROTO_24]
      269 SETTABLEKS                       R6 R5 K9 ["Url"]
      271 SETTABLEKS                       R5 R4 K67 ["HOMEPAGE_BANNER_EXPERIENCE_UNRATED_URL"]
      273 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      274 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      276 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      278 DUPCLOSURE                       R6 K68 [PROTO_25]
      279 SETTABLEKS                       R6 R5 K9 ["Url"]
      281 SETTABLEKS                       R5 R4 K69 ["AMP_FEATURE_ACCESS_URL"]
      283 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      284 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      286 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      288 DUPCLOSURE                       R6 K70 [PROTO_26]
      289 SETTABLEKS                       R6 R5 K9 ["Url"]
      291 SETTABLEKS                       R5 R4 K71 ["CORE_CONTENT_BATCH_PUBLISH_ELIGIBILITY"]
      293 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      294 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      296 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      298 DUPCLOSURE                       R6 K72 [PROTO_27]
      299 SETTABLEKS                       R6 R5 K9 ["Url"]
      301 SETTABLEKS                       R5 R4 K73 ["MULTI_RELEASE_STATUSES"]
      303 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      304 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      306 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      308 DUPCLOSURE                       R6 K74 [PROTO_28]
      309 SETTABLEKS                       R6 R5 K9 ["Url"]
      311 SETTABLEKS                       R5 R4 K75 ["PLACE_SAFETY_STATUS_URL"]
      313 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      314 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      316 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      318 DUPCLOSURE                       R6 K76 [PROTO_29]
      319 SETTABLEKS                       R6 R5 K9 ["Url"]
      321 SETTABLEKS                       R5 R4 K77 ["ARE_UNIVERSES_IMPACTED"]
      323 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      324 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
      326 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      328 DUPCLOSURE                       R6 K78 [PROTO_30]
      329 SETTABLEKS                       R6 R5 K9 ["Url"]
      331 SETTABLEKS                       R5 R4 K79 ["UNIVERSE_PLACES"]
      333 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      334 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      336 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      338 DUPCLOSURE                       R6 K80 [PROTO_31]
      339 SETTABLEKS                       R6 R5 K9 ["Url"]
      341 SETTABLEKS                       R5 R4 K81 ["CREATE_UNIVERSE"]
      343 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      344 GETTABLEKS                       R6 R3 K18 ["DEVELOP_URL"]
      346 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      348 DUPCLOSURE                       R6 K82 [PROTO_32]
      349 SETTABLEKS                       R6 R5 K9 ["Url"]
      351 SETTABLEKS                       R5 R4 K83 ["UNIVERSE_CONFIGURATION_V2"]
      353 DUPTABLE                         R5 K12 [{"Prefix", "Url"}]
      354 GETTABLEKS                       R6 R3 K13 ["APIS_URL"]
      356 SETTABLEKS                       R6 R5 K11 ["Prefix"]
      358 DUPCLOSURE                       R6 K84 [PROTO_33]
      359 SETTABLEKS                       R6 R5 K9 ["Url"]
      361 SETTABLEKS                       R5 R4 K85 ["COPY_PLACE_TO_UNIVERSE"]
      363 RETURN                           R4 1
