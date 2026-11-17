MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./ClientHttpProbeLatencies"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K1 [require]
       13 LOADK                            R4 K5 ["./ClientUdpProbeLatencies"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K1 [require]
       17 LOADK                            R5 K6 ["./ExperimentSettings"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K1 [require]
       21 LOADK                            R6 K7 ["./FriendOfFriend"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K1 [require]
       25 LOADK                            R7 K8 ["./GameJoinMetadata"]
       26 CALL                             R6 1 1
       27 GETIMPORT                        R7 K1 [require]
       29 LOADK                            R8 K9 ["./MatchmakingFeatureData"]
       30 CALL                             R7 1 1
       31 GETIMPORT                        R8 K1 [require]
       33 LOADK                            R9 K10 ["./MatchmakingSpace"]
       34 CALL                             R8 1 1
       35 GETIMPORT                        R9 K1 [require]
       37 LOADK                            R10 K11 ["./Player"]
       38 CALL                             R9 1 1
       39 GETTABLEKS                       R10 R1 K12 ["object"]
       41 DUPTABLE                         R11 K31 [{"PreferredPlayerIds", "Players", "ExperimentSettings", "UserOrigin", "GameJoinMetadata", "AllowedPlaceVersions", "IsPlaceVoiceChatEnabled", "FriendOfFriends", "MatchmakingFeatureData", "MatchmakingSpace", "PlayerIdsBlockedByJoiningPlayers", "PlayerIdsBlockingJoiningPlayers", "PrioritizedPlayerIds", "PlacementPlayerIds", "ExperimentSettingsV2", "ClientUdpProbeLatencies", "ClientHttpProbeLatencies", "ForcedPop"}]
       42 GETTABLEKS                       R12 R1 K32 ["arrayOf"]
       44 GETTABLEKS                       R13 R1 K33 ["Integer"]
       46 CALL                             R12 1 1
       47 SETTABLEKS                       R12 R11 K13 ["PreferredPlayerIds"]
       49 GETTABLEKS                       R12 R1 K32 ["arrayOf"]
       51 MOVE                             R13 R9
       52 CALL                             R12 1 1
       53 SETTABLEKS                       R12 R11 K14 ["Players"]
       55 GETTABLEKS                       R12 R1 K34 ["String"]
       57 SETTABLEKS                       R12 R11 K15 ["ExperimentSettings"]
       59 GETTABLEKS                       R12 R1 K34 ["String"]
       61 SETTABLEKS                       R12 R11 K16 ["UserOrigin"]
       63 SETTABLEKS                       R6 R11 K17 ["GameJoinMetadata"]
       65 GETTABLEKS                       R12 R1 K32 ["arrayOf"]
       67 GETTABLEKS                       R13 R1 K35 ["Int32"]
       69 CALL                             R12 1 1
       70 SETTABLEKS                       R12 R11 K18 ["AllowedPlaceVersions"]
       72 GETTABLEKS                       R12 R1 K36 ["Boolean"]
       74 SETTABLEKS                       R12 R11 K19 ["IsPlaceVoiceChatEnabled"]
       76 GETTABLEKS                       R12 R1 K32 ["arrayOf"]
       78 MOVE                             R13 R5
       79 CALL                             R12 1 1
       80 SETTABLEKS                       R12 R11 K20 ["FriendOfFriends"]
       82 SETTABLEKS                       R7 R11 K21 ["MatchmakingFeatureData"]
       84 SETTABLEKS                       R8 R11 K22 ["MatchmakingSpace"]
       86 GETTABLEKS                       R12 R1 K32 ["arrayOf"]
       88 GETTABLEKS                       R13 R1 K33 ["Integer"]
       90 CALL                             R12 1 1
       91 SETTABLEKS                       R12 R11 K23 ["PlayerIdsBlockedByJoiningPlayers"]
       93 GETTABLEKS                       R12 R1 K32 ["arrayOf"]
       95 GETTABLEKS                       R13 R1 K33 ["Integer"]
       97 CALL                             R12 1 1
       98 SETTABLEKS                       R12 R11 K24 ["PlayerIdsBlockingJoiningPlayers"]
      100 GETTABLEKS                       R12 R1 K32 ["arrayOf"]
      102 GETTABLEKS                       R13 R1 K33 ["Integer"]
      104 CALL                             R12 1 1
      105 SETTABLEKS                       R12 R11 K25 ["PrioritizedPlayerIds"]
      107 GETTABLEKS                       R12 R1 K32 ["arrayOf"]
      109 GETTABLEKS                       R13 R1 K33 ["Integer"]
      111 CALL                             R12 1 1
      112 SETTABLEKS                       R12 R11 K26 ["PlacementPlayerIds"]
      114 SETTABLEKS                       R4 R11 K27 ["ExperimentSettingsV2"]
      116 SETTABLEKS                       R3 R11 K28 ["ClientUdpProbeLatencies"]
      118 SETTABLEKS                       R2 R11 K29 ["ClientHttpProbeLatencies"]
      120 GETTABLEKS                       R12 R1 K34 ["String"]
      122 SETTABLEKS                       R12 R11 K30 ["ForcedPop"]
      124 CALL                             R10 1 -1
      125 RETURN                           R10 -1
