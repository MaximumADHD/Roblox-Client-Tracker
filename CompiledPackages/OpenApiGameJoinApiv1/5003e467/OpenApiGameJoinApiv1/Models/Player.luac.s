MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./MatchmakingAttributeValue"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K1 [require]
       13 LOADK                            R4 K5 ["./PlayerDeviceType"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K1 [require]
       17 LOADK                            R5 K6 ["./PlayerGeoposition"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R1 K7 ["object"]
       21 DUPTABLE                         R6 K26 [{"Id", "Age", "GeoPosition", "LanguageId", "SupportedLanguageId", "IpAddress", "RoleSetIds", "BlockedPlayerIds", "PolicyCountryId", "IsUserVoiceChatEnabled", "IsUserAvatarVideoEnabled", "MatchmakingUserCommunitySamplingId", "Signals", "DeviceType", "MatchmakingPlayerAttributesData", "TextChatBucketsBitmask", "AgeBandsBucketsBitmask", "BotScore"}]
       22 GETTABLEKS                       R7 R1 K27 ["Integer"]
       24 SETTABLEKS                       R7 R6 K8 ["Id"]
       26 GETTABLEKS                       R7 R1 K28 ["Number"]
       28 SETTABLEKS                       R7 R6 K9 ["Age"]
       30 SETTABLEKS                       R4 R6 K10 ["GeoPosition"]
       32 GETTABLEKS                       R7 R1 K29 ["Int32"]
       34 SETTABLEKS                       R7 R6 K11 ["LanguageId"]
       36 GETTABLEKS                       R7 R1 K29 ["Int32"]
       38 SETTABLEKS                       R7 R6 K12 ["SupportedLanguageId"]
       40 GETTABLEKS                       R7 R1 K30 ["String"]
       42 SETTABLEKS                       R7 R6 K13 ["IpAddress"]
       44 GETTABLEKS                       R7 R1 K31 ["arrayOf"]
       46 GETTABLEKS                       R8 R1 K29 ["Int32"]
       48 CALL                             R7 1 1
       49 SETTABLEKS                       R7 R6 K14 ["RoleSetIds"]
       51 GETTABLEKS                       R7 R1 K31 ["arrayOf"]
       53 GETTABLEKS                       R8 R1 K27 ["Integer"]
       55 CALL                             R7 1 1
       56 SETTABLEKS                       R7 R6 K15 ["BlockedPlayerIds"]
       58 GETTABLEKS                       R7 R1 K29 ["Int32"]
       60 SETTABLEKS                       R7 R6 K16 ["PolicyCountryId"]
       62 GETTABLEKS                       R7 R1 K32 ["Boolean"]
       64 SETTABLEKS                       R7 R6 K17 ["IsUserVoiceChatEnabled"]
       66 GETTABLEKS                       R7 R1 K32 ["Boolean"]
       68 SETTABLEKS                       R7 R6 K18 ["IsUserAvatarVideoEnabled"]
       70 GETTABLEKS                       R7 R1 K29 ["Int32"]
       72 SETTABLEKS                       R7 R6 K19 ["MatchmakingUserCommunitySamplingId"]
       74 GETTABLEKS                       R7 R1 K33 ["dictOf"]
       76 GETTABLEKS                       R8 R1 K28 ["Number"]
       78 CALL                             R7 1 1
       79 SETTABLEKS                       R7 R6 K20 ["Signals"]
       81 SETTABLEKS                       R3 R6 K21 ["DeviceType"]
       83 GETTABLEKS                       R7 R1 K33 ["dictOf"]
       85 MOVE                             R8 R2
       86 CALL                             R7 1 1
       87 SETTABLEKS                       R7 R6 K22 ["MatchmakingPlayerAttributesData"]
       89 GETTABLEKS                       R7 R1 K29 ["Int32"]
       91 SETTABLEKS                       R7 R6 K23 ["TextChatBucketsBitmask"]
       93 GETTABLEKS                       R7 R1 K29 ["Int32"]
       95 SETTABLEKS                       R7 R6 K24 ["AgeBandsBucketsBitmask"]
       97 GETTABLEKS                       R7 R1 K28 ["Number"]
       99 SETTABLEKS                       R7 R6 K25 ["BotScore"]
      101 CALL                             R5 1 -1
      102 RETURN                           R5 -1
