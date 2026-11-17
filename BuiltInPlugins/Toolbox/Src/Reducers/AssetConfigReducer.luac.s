PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETTABLEKS                       R2 R0 K0 ["type"]
        6 JUMPIFNOT                        R2 ; [+8]
        7 GETIMPORT                        R1 K3 [Enum.CreatorType]
        9 GETTABLEKS                       R3 R0 K0 ["type"]
       11 NAMECALL                         R1 R1 K4 ["FromName"]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1
       17 GETIMPORT                        R2 K3 [Enum.CreatorType]
       19 GETTABLEKS                       R3 R0 K0 ["type"]
       21 GETTABLE                         R1 R2 R3
       22 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 GETTABLEKS                       R4 R1 K2 ["storeData"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetId"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetId"]
        9 SETTABLEKS                       R5 R4 K2 ["assetId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetTypeEnum"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetTypeEnum"]
        9 SETTABLEKS                       R5 R4 K2 ["assetTypeEnum"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetTypeValidationSucceeded"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetTypeValidationSucceeded"]
        9 SETTABLEKS                       R5 R4 K2 ["assetTypeValidationSucceeded"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"currentScreen"}]
        7 GETTABLEKS                       R5 R1 K2 ["currentScreen"]
        9 SETTABLEKS                       R5 R4 K2 ["currentScreen"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"nonBlockingDependencyIssues"}]
        7 GETTABLEKS                       R5 R1 K2 ["nonBlockingDependencyIssues"]
        9 SETTABLEKS                       R5 R4 K2 ["nonBlockingDependencyIssues"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 GETTABLEKS                       R4 R0 K2 ["screenConfigs"]
        7 GETTABLEKS                       R5 R1 K3 ["screen"]
        9 GETTABLE                         R3 R4 R5
       10 NEWTABLE                         R4 1 0
       12 GETTABLEKS                       R5 R1 K4 ["variable"]
       14 GETTABLEKS                       R6 R1 K5 ["value"]
       16 SETTABLE                         R6 R4 R5
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
       21 GETTABLEKS                       R3 R3 K1 ["join"]
       23 GETTABLEKS                       R4 R0 K2 ["screenConfigs"]
       25 NEWTABLE                         R5 1 0
       27 GETTABLEKS                       R6 R1 K3 ["screen"]
       29 SETTABLE                         R2 R5 R6
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K0 ["Dictionary"]
       34 GETTABLEKS                       R4 R4 K1 ["join"]
       36 MOVE                             R5 R0
       37 DUPTABLE                         R6 K6 [{"screenConfigs"}]
       38 SETTABLEKS                       R3 R6 K2 ["screenConfigs"]
       40 CALL                             R4 2 -1
       41 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"versionHistory"}]
        7 GETTABLEKS                       R5 R1 K2 ["versionHistory"]
        9 SETTABLEKS                       R5 R4 K2 ["versionHistory"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"packageDescriptions"}]
        7 GETTABLEKS                       R5 R1 K2 ["packageDescriptions"]
        9 SETTABLEKS                       R5 R4 K2 ["packageDescriptions"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        7 GETTABLEKS                       R2 R2 K1 ["join"]
        9 MOVE                             R3 R0
       10 DUPTABLE                         R4 K3 [{"versionHistoryWithDescriptions"}]
       11 GETTABLEKS                       R5 R1 K2 ["versionHistoryWithDescriptions"]
       13 SETTABLEKS                       R5 R4 K2 ["versionHistoryWithDescriptions"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetConfigData"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetConfigData"]
        9 SETTABLEKS                       R5 R4 K2 ["assetConfigData"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetConfigData"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["assetConfigData"]
       14 JUMPIF                           R6 ; [+2]
       15 NEWTABLE                         R6 0 0
       17 GETTABLEKS                       R7 R1 K2 ["assetConfigData"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K2 ["assetConfigData"]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["setting"]
        2 GETTABLEKS                       R3 R1 K1 ["value"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Dictionary"]
        7 GETTABLEKS                       R4 R4 K3 ["join"]
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K5 [{"changed"}]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K2 ["Dictionary"]
       14 GETTABLEKS                       R7 R7 K3 ["join"]
       16 GETTABLEKS                       R8 R0 K4 ["changed"]
       18 JUMPIF                           R8 ; [+2]
       19 NEWTABLE                         R8 0 0
       21 NEWTABLE                         R9 1 0
       23 SETTABLE                         R3 R9 R2
       24 CALL                             R7 2 1
       25 SETTABLEKS                       R7 R6 K4 ["changed"]
       27 CALL                             R4 2 -1
       28 RETURN                           R4 -1

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["setting"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{"changed"}]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K1 ["Dictionary"]
       12 GETTABLEKS                       R6 R6 K2 ["join"]
       14 GETTABLEKS                       R7 R0 K3 ["changed"]
       16 JUMPIF                           R7 ; [+2]
       17 NEWTABLE                         R7 0 0
       19 NEWTABLE                         R8 1 0
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K5 ["None"]
       24 SETTABLE                         R9 R8 R2
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K3 ["changed"]
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetGroupData"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetGroupData"]
        9 SETTABLEKS                       R5 R4 K2 ["assetGroupData"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"networkError", "networkErrorAction"}]
        7 GETTABLEKS                       R5 R1 K5 ["response"]
        9 SETTABLEKS                       R5 R4 K2 ["networkError"]
       11 GETTABLEKS                       R5 R1 K3 ["networkErrorAction"]
       13 SETTABLEKS                       R5 R4 K3 ["networkErrorAction"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"progressPercentage", "progressTitle", "progressText"}]
        7 GETTABLEKS                       R5 R1 K2 ["progressPercentage"]
        9 SETTABLEKS                       R5 R4 K2 ["progressPercentage"]
       11 GETTABLEKS                       R5 R1 K3 ["progressTitle"]
       13 SETTABLEKS                       R5 R4 K3 ["progressTitle"]
       15 GETTABLEKS                       R5 R1 K4 ["progressText"]
       17 SETTABLEKS                       R5 R4 K4 ["progressText"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["uploadSucceeded"]
        2 JUMPIFNOTEQKB                    R2 FALSE ; [+9]
        4 GETTABLEKS                       R2 R1 K0 ["uploadSucceeded"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["None"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 RETURN                           R0 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       15 GETTABLEKS                       R2 R2 K3 ["join"]
       17 MOVE                             R3 R0
       18 DUPTABLE                         R4 K4 [{"uploadSucceeded"}]
       19 GETTABLEKS                       R5 R1 K0 ["uploadSucceeded"]
       21 SETTABLEKS                       R5 R4 K0 ["uploadSucceeded"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"validateAnimationSucceeded"}]
        7 GETTABLEKS                       R5 R1 K2 ["validateAnimationSucceeded"]
        9 SETTABLEKS                       R5 R4 K2 ["validateAnimationSucceeded"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"currentTab"}]
        7 GETTABLEKS                       R5 R1 K4 ["tabItem"]
        9 SETTABLEKS                       R5 R4 K2 ["currentTab"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"resultsArray", "fetchedAll"}]
        7 GETTABLEKS                       R5 R1 K2 ["resultsArray"]
        9 SETTABLEKS                       R5 R4 K2 ["resultsArray"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["None"]
       14 SETTABLEKS                       R5 R4 K3 ["fetchedAll"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"resultsArray", "fetchedAll"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K5 ["List"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["resultsArray"]
       14 JUMPIF                           R6 ; [+2]
       15 NEWTABLE                         R6 0 0
       17 GETTABLEKS                       R7 R1 K2 ["resultsArray"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K2 ["resultsArray"]
       22 GETTABLEKS                       R5 R1 K3 ["fetchedAll"]
       24 SETTABLEKS                       R5 R4 K3 ["fetchedAll"]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"manageableGroups"}]
        7 GETTABLEKS                       R5 R1 K2 ["manageableGroups"]
        9 SETTABLEKS                       R5 R4 K2 ["manageableGroups"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isVerifiedCreator"}]
        7 GETTABLEKS                       R5 R1 K2 ["isVerifiedCreator"]
        9 SETTABLEKS                       R5 R4 K2 ["isVerifiedCreator"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"loadingPage"}]
        7 GETTABLEKS                       R5 R1 K2 ["loadingPage"]
        9 SETTABLEKS                       R5 R4 K2 ["loadingPage"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"currentPage"}]
        7 GETTABLEKS                       R5 R1 K2 ["currentPage"]
        9 SETTABLEKS                       R5 R4 K2 ["currentPage"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"overrideCursor"}]
        7 GETTABLEKS                       R5 R1 K2 ["overrideCursor"]
        9 SETTABLEKS                       R5 R4 K2 ["overrideCursor"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"thumbnailStatus"}]
        7 GETTABLEKS                       R5 R1 K2 ["thumbnailStatus"]
        9 SETTABLEKS                       R5 R4 K2 ["thumbnailStatus"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 NEWTABLE                         R4 1 0
        8 GETTABLEKS                       R5 R1 K2 ["groupMetadata"]
       10 GETTABLEKS                       R5 R5 K3 ["Id"]
       12 DUPTABLE                         R6 K5 [{"name", "groupMetadata"}]
       13 GETTABLEKS                       R7 R1 K2 ["groupMetadata"]
       15 GETTABLEKS                       R7 R7 K6 ["Name"]
       17 SETTABLEKS                       R7 R6 K4 ["name"]
       19 GETTABLEKS                       R7 R1 K2 ["groupMetadata"]
       21 SETTABLEKS                       R7 R6 K2 ["groupMetadata"]
       23 SETTABLE                         R6 R4 R5
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_30:
        0 GETTABLEKS                       R3 R0 K0 ["assetConfigData"]
        2 GETTABLEKS                       R3 R3 K1 ["Creator"]
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+15]
        7 JUMPIFNOT                        R3 ; [+12]
        8 GETTABLEKS                       R4 R3 K2 ["type"]
       10 JUMPIFNOT                        R4 ; [+9]
       11 GETIMPORT                        R4 K5 [Enum.CreatorType]
       13 GETTABLEKS                       R6 R3 K2 ["type"]
       15 NAMECALL                         R4 R4 K6 ["FromName"]
       17 CALL                             R4 2 1
       18 MOVE                             R2 R4
       19 JUMP                             ; [+7]
       20 LOADNIL                          R2
       21 JUMP                             ; [+5]
       22 GETIMPORT                        R4 K5 [Enum.CreatorType]
       24 GETTABLEKS                       R5 R3 K2 ["type"]
       26 GETTABLE                         R2 R4 R5
       27 GETIMPORT                        R3 K8 [Enum.CreatorType.User]
       29 JUMPIFEQ                         R2 R3 ; [+2]
       31 RETURN                           R0 1
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K9 ["Dictionary"]
       35 GETTABLEKS                       R2 R2 K10 ["join"]
       37 MOVE                             R3 R0
       38 DUPTABLE                         R4 K11 [{"assetConfigData"}]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K9 ["Dictionary"]
       42 GETTABLEKS                       R5 R5 K10 ["join"]
       44 GETTABLEKS                       R6 R0 K0 ["assetConfigData"]
       46 DUPTABLE                         R7 K12 [{"Creator"}]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K9 ["Dictionary"]
       50 GETTABLEKS                       R8 R8 K10 ["join"]
       52 GETTABLEKS                       R9 R0 K0 ["assetConfigData"]
       54 GETTABLEKS                       R9 R9 K1 ["Creator"]
       56 DUPTABLE                         R10 K14 [{"username"}]
       57 GETTABLEKS                       R11 R1 K15 ["ownerUsername"]
       59 SETTABLEKS                       R11 R10 K13 ["username"]
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K1 ["Creator"]
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R4 K0 ["assetConfigData"]
       67 CALL                             R2 2 -1
       68 RETURN                           R2 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"localUserFriends"}]
        7 GETTABLEKS                       R6 R1 K4 ["success"]
        9 JUMPIFNOT                        R6 ; [+3]
       10 GETTABLEKS                       R5 R1 K5 ["friends"]
       12 JUMPIF                           R5 ; [+2]
       13 NEWTABLE                         R5 0 0
       15 SETTABLEKS                       R5 R4 K2 ["localUserFriends"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"localUserGroups"}]
        7 GETTABLEKS                       R6 R1 K4 ["success"]
        9 JUMPIFNOT                        R6 ; [+3]
       10 GETTABLEKS                       R5 R1 K5 ["groups"]
       12 JUMPIF                           R5 ; [+2]
       13 NEWTABLE                         R5 0 0
       15 SETTABLEKS                       R5 R4 K2 ["localUserGroups"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"localUserFriends"}]
        7 GETUPVAL                         R5 1
        8 SETTABLEKS                       R5 R4 K2 ["localUserFriends"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"localUserGroups"}]
        7 GETUPVAL                         R5 1
        8 SETTABLEKS                       R5 R4 K2 ["localUserGroups"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"searchText"}]
        7 GETTABLEKS                       R5 R1 K4 ["text"]
        9 SETTABLEKS                       R5 R4 K2 ["searchText"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_36:
        0 GETTABLEKS                       R2 R0 K0 ["originalCollaborators"]
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
        6 GETTABLEKS                       R2 R2 K2 ["join"]
        8 MOVE                             R3 R0
        9 DUPTABLE                         R4 K4 [{"collaborators"}]
       10 GETTABLEKS                       R5 R1 K3 ["collaborators"]
       12 SETTABLEKS                       R5 R4 K3 ["collaborators"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
       19 GETTABLEKS                       R2 R2 K2 ["join"]
       21 MOVE                             R3 R0
       22 DUPTABLE                         R4 K5 [{"originalCollaborators", "collaborators"}]
       23 GETTABLEKS                       R5 R1 K3 ["collaborators"]
       25 SETTABLEKS                       R5 R4 K0 ["originalCollaborators"]
       27 GETTABLEKS                       R5 R1 K3 ["collaborators"]
       29 SETTABLEKS                       R5 R4 K3 ["collaborators"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isPackageAsset"}]
        7 GETTABLEKS                       R5 R1 K2 ["isPackageAsset"]
        9 SETTABLEKS                       R5 R4 K2 ["isPackageAsset"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_38:
        0 GETTABLEKS                       R3 R0 K0 ["assetConfigData"]
        2 GETTABLEKS                       R3 R3 K1 ["Creator"]
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+15]
        7 JUMPIFNOT                        R3 ; [+12]
        8 GETTABLEKS                       R4 R3 K2 ["type"]
       10 JUMPIFNOT                        R4 ; [+9]
       11 GETIMPORT                        R4 K5 [Enum.CreatorType]
       13 GETTABLEKS                       R6 R3 K2 ["type"]
       15 NAMECALL                         R4 R4 K6 ["FromName"]
       17 CALL                             R4 2 1
       18 MOVE                             R2 R4
       19 JUMP                             ; [+7]
       20 LOADNIL                          R2
       21 JUMP                             ; [+5]
       22 GETIMPORT                        R4 K5 [Enum.CreatorType]
       24 GETTABLEKS                       R5 R3 K2 ["type"]
       26 GETTABLE                         R2 R4 R5
       27 GETIMPORT                        R3 K8 [Enum.CreatorType.Group]
       29 JUMPIFEQ                         R2 R3 ; [+2]
       31 RETURN                           R0 1
       32 GETTABLEKS                       R2 R0 K0 ["assetConfigData"]
       34 GETTABLEKS                       R2 R2 K1 ["Creator"]
       36 GETTABLEKS                       R2 R2 K9 ["targetId"]
       38 GETIMPORT                        R3 K11 [pairs]
       40 GETTABLEKS                       R4 R1 K12 ["groupRoleInfo"]
       42 CALL                             R3 1 3
       43 FORGPREP_NEXT                    R3
       44 GETIMPORT                        R8 K11 [pairs]
       46 GETTABLE                         R9 R0 R2
       47 GETTABLEKS                       R9 R9 K13 ["groupMetadata"]
       49 GETTABLEKS                       R9 R9 K14 ["Roles"]
       51 CALL                             R8 1 3
       52 FORGPREP_NEXT                    R8
       53 GETTABLEKS                       R13 R7 K15 ["name"]
       55 GETTABLEKS                       R14 R12 K16 ["Name"]
       57 JUMPIFNOTEQ                      R13 R14 ; [+19]
       59 GETUPVAL                         R13 1
       60 GETTABLEKS                       R13 R13 K17 ["Dictionary"]
       62 GETTABLEKS                       R13 R13 K18 ["join"]
       64 MOVE                             R14 R12
       65 DUPTABLE                         R15 K20 [{"Id"}]
       66 GETTABLEKS                       R16 R7 K21 ["id"]
       68 SETTABLEKS                       R16 R15 K19 ["Id"]
       70 CALL                             R13 2 1
       71 GETTABLE                         R14 R0 R2
       72 GETTABLEKS                       R14 R14 K13 ["groupMetadata"]
       74 GETTABLEKS                       R14 R14 K14 ["Roles"]
       76 SETTABLE                         R13 R14 R11
       77 FORGLOOP                         R8 2 ; [-25]
       79 FORGLOOP                         R3 2 ; [-36]
       81 RETURN                           R0 1

PROTO_39:
        0 GETTABLEKS                       R2 R0 K0 ["packagePermissions"]
        2 JUMPIF                           R2 ; [+4]
        3 NEWTABLE                         R2 0 0
        5 SETTABLEKS                       R2 R0 K0 ["packagePermissions"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
       10 GETTABLEKS                       R2 R2 K2 ["join"]
       12 GETTABLEKS                       R3 R0 K0 ["packagePermissions"]
       14 GETTABLEKS                       R4 R1 K0 ["packagePermissions"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R0 K0 ["packagePermissions"]
       19 RETURN                           R0 1

PROTO_40:
        0 GETTABLEKS                       R2 R1 K0 ["sentTime"]
        2 GETTABLEKS                       R4 R0 K2 ["latestTagSuggestionTime"]
        4 ORK                              R3 R4 K1 [0]
        5 JUMPIFNOTLT                      R2 R3 ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["Dictionary"]
       11 GETTABLEKS                       R2 R2 K4 ["join"]
       13 MOVE                             R3 R0
       14 DUPTABLE                         R4 K7 [{"tagSuggestions", "latestTagSuggestionTime", "latestTagSearchQuery"}]
       15 GETTABLEKS                       R5 R1 K8 ["suggestions"]
       17 SETTABLEKS                       R5 R4 K5 ["tagSuggestions"]
       19 GETTABLEKS                       R5 R1 K0 ["sentTime"]
       21 SETTABLEKS                       R5 R4 K2 ["latestTagSuggestionTime"]
       23 GETTABLEKS                       R5 R1 K9 ["prefix"]
       25 SETTABLEKS                       R5 R4 K6 ["latestTagSearchQuery"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"tabErrors"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["tabErrors"]
       14 JUMPIF                           R6 ; [+2]
       15 NEWTABLE                         R6 0 0
       17 NEWTABLE                         R7 1 0
       19 GETTABLEKS                       R8 R1 K4 ["tabName"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K0 ["Dictionary"]
       24 GETTABLEKS                       R9 R9 K1 ["join"]
       26 GETTABLEKS                       R11 R0 K2 ["tabErrors"]
       28 JUMPIFNOT                        R11 ; [+6]
       29 GETTABLEKS                       R11 R0 K2 ["tabErrors"]
       31 GETTABLEKS                       R12 R1 K4 ["tabName"]
       33 GETTABLE                         R10 R11 R12
       34 JUMPIF                           R10 ; [+2]
       35 NEWTABLE                         R10 0 0
       37 NEWTABLE                         R11 1 0
       39 GETTABLEKS                       R12 R1 K5 ["fieldName"]
       41 GETTABLEKS                       R13 R1 K6 ["hasError"]
       43 SETTABLE                         R13 R11 R12
       44 CALL                             R9 2 1
       45 SETTABLE                         R9 R7 R8
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K2 ["tabErrors"]
       49 CALL                             R2 2 -1
       50 RETURN                           R2 -1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"isUploadFeeEnabled", "uploadFee", "canAffordUploadFee"}]
        7 GETTABLEKS                       R5 R1 K2 ["isUploadFeeEnabled"]
        9 SETTABLEKS                       R5 R4 K2 ["isUploadFeeEnabled"]
       11 GETTABLEKS                       R5 R1 K3 ["uploadFee"]
       13 SETTABLEKS                       R5 R4 K3 ["uploadFee"]
       15 GETTABLEKS                       R5 R1 K4 ["canAffordUploadFee"]
       17 SETTABLEKS                       R5 R4 K4 ["canAffordUploadFee"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"hasPublishingPreferences"}]
        7 GETTABLEKS                       R5 R1 K2 ["hasPublishingPreferences"]
        9 SETTABLEKS                       R5 R4 K2 ["hasPublishingPreferences"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"hasPublishingFeePreview", "publishingFeePreview"}]
        7 GETTABLEKS                       R5 R1 K2 ["hasPublishingFeePreview"]
        9 SETTABLEKS                       R5 R4 K2 ["hasPublishingFeePreview"]
       11 GETTABLEKS                       R5 R1 K3 ["publishingFeePreview"]
       13 SETTABLEKS                       R5 R4 K3 ["publishingFeePreview"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"specialAttributes", "hasMetadataPermission"}]
        7 GETTABLEKS                       R5 R1 K2 ["specialAttributes"]
        9 SETTABLEKS                       R5 R4 K2 ["specialAttributes"]
       11 GETTABLEKS                       R5 R1 K3 ["hasMetadataPermission"]
       13 SETTABLEKS                       R5 R4 K3 ["hasMetadataPermission"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetTypeAgents"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetTypeAgents"]
        9 SETTABLEKS                       R5 R4 K2 ["assetTypeAgents"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"descendantPermissions"}]
        7 GETTABLEKS                       R5 R1 K4 ["permission"]
        9 SETTABLEKS                       R5 R4 K2 ["descendantPermissions"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"rollingAssetPermissionRequests"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["rollingAssetPermissionRequests"]
       14 DUPTABLE                         R7 K5 [{"inProgress"}]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K6 ["List"]
       18 GETTABLEKS                       R8 R8 K7 ["removeValue"]
       20 GETTABLEKS                       R9 R0 K2 ["rollingAssetPermissionRequests"]
       22 GETTABLEKS                       R9 R9 K4 ["inProgress"]
       24 GETTABLEKS                       R10 R1 K8 ["id"]
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K4 ["inProgress"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K2 ["rollingAssetPermissionRequests"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"rollingAssetPermissionRequests"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["rollingAssetPermissionRequests"]
       14 DUPTABLE                         R7 K6 [{"inProgress", "queued"}]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K7 ["List"]
       18 GETTABLEKS                       R8 R8 K1 ["join"]
       20 GETTABLEKS                       R9 R0 K2 ["rollingAssetPermissionRequests"]
       22 GETTABLEKS                       R9 R9 K4 ["inProgress"]
       24 NEWTABLE                         R10 0 1
       26 GETTABLEKS                       R11 R1 K8 ["id"]
       28 SETLIST                          R10 R11 1 [1]
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R7 K4 ["inProgress"]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K7 ["List"]
       36 GETTABLEKS                       R8 R8 K9 ["removeValue"]
       38 GETTABLEKS                       R9 R0 K2 ["rollingAssetPermissionRequests"]
       40 GETTABLEKS                       R9 R9 K5 ["queued"]
       42 GETTABLEKS                       R10 R1 K8 ["id"]
       44 CALL                             R8 2 1
       45 SETTABLEKS                       R8 R7 K5 ["queued"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K2 ["rollingAssetPermissionRequests"]
       50 CALL                             R2 2 -1
       51 RETURN                           R2 -1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"rollingAssetPermissionRequests"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["rollingAssetPermissionRequests"]
       14 DUPTABLE                         R7 K5 [{"queued"}]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K6 ["List"]
       18 GETTABLEKS                       R8 R8 K1 ["join"]
       20 GETTABLEKS                       R9 R0 K2 ["rollingAssetPermissionRequests"]
       22 GETTABLEKS                       R9 R9 K4 ["queued"]
       24 NEWTABLE                         R10 0 1
       26 GETTABLEKS                       R11 R1 K7 ["id"]
       28 SETLIST                          R10 R11 1 [1]
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R7 K4 ["queued"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K2 ["rollingAssetPermissionRequests"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"publishingRequirements"}]
        7 GETTABLEKS                       R5 R1 K2 ["publishingRequirements"]
        9 SETTABLEKS                       R5 R4 K2 ["publishingRequirements"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetMediaIds"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetMediaIds"]
        9 SETTABLEKS                       R5 R4 K2 ["assetMediaIds"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_53:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetMediaMetadataArray"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetMediaMetadataArray"]
        9 SETTABLEKS                       R5 R4 K2 ["assetMediaMetadataArray"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_54:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R1 K0 ["assetId"]
        4 GETTABLEKS                       R4 R1 K1 ["fiatProduct"]
        6 SETTABLE                         R4 R2 R3
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
       10 GETTABLEKS                       R3 R3 K3 ["join"]
       12 MOVE                             R4 R0
       13 DUPTABLE                         R5 K5 [{"idToFiatProductMap"}]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K2 ["Dictionary"]
       17 GETTABLEKS                       R6 R6 K3 ["join"]
       19 GETTABLEKS                       R7 R0 K4 ["idToFiatProductMap"]
       21 MOVE                             R8 R2
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K4 ["idToFiatProductMap"]
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

PROTO_55:
        0 GETTABLEKS                       R2 R1 K0 ["sellerStatusData"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"sellerStatusData"}]
        9 SETTABLEKS                       R2 R5 K0 ["sellerStatusData"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_56:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"allowedGroupsForUpload"}]
        7 GETTABLEKS                       R5 R1 K2 ["allowedGroupsForUpload"]
        9 SETTABLEKS                       R5 R4 K2 ["allowedGroupsForUpload"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_57:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETTABLEKS                       R2 R0 K0 ["avatarItemDependencyStatus"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Cancelled"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+2]
       10 RETURN                           R0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       14 GETTABLEKS                       R2 R2 K3 ["join"]
       16 MOVE                             R3 R0
       17 DUPTABLE                         R4 K9 [{["isAvatarItemDialogFlowEnabled"] = True, ["avatarItemDialogButtonEnabled"] = False, ["privateAvatarAssetIds"]}]
       18 NEWTABLE                         R5 0 0
       20 SETTABLEKS                       R5 R4 K8 ["privateAvatarAssetIds"]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

PROTO_58:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+46]
        3 GETTABLEKS                       R2 R0 K0 ["avatarItemDependencyStatus"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Cancelled"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+2]
       10 RETURN                           R0 1
       11 GETTABLEKS                       R2 R0 K0 ["avatarItemDependencyStatus"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["Checking"]
       16 JUMPIFNOTEQ                      R2 R3 ; [+32]
       18 GETTABLEKS                       R2 R1 K3 ["success"]
       20 JUMPIFNOT                        R2 ; [+28]
       21 GETTABLEKS                       R3 R1 K4 ["privateAvatarAssetIds"]
       23 LENGTH                           R2 R3
       24 JUMPIFNOTEQKN                    R2 K5 [0] ; [+24]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K6 ["Dictionary"]
       29 GETTABLEKS                       R2 R2 K7 ["join"]
       31 MOVE                             R3 R0
       32 DUPTABLE                         R4 K13 [{[1], ["avatarItemDialogType"], ["isAvatarItemDialogFlowEnabled"] = False, ["privateAvatarAssetIds"], ["avatarItemDialogButtonEnabled"] = True}]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K14 ["Ready"]
       36 SETTABLEKS                       R5 R4 K0 ["avatarItemDependencyStatus"]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K15 ["Disabled"]
       41 SETTABLEKS                       R5 R4 K8 ["avatarItemDialogType"]
       43 NEWTABLE                         R5 0 0
       45 SETTABLEKS                       R5 R4 K4 ["privateAvatarAssetIds"]
       47 CALL                             R2 2 -1
       48 RETURN                           R2 -1
       49 LOADNIL                          R2
       50 GETTABLEKS                       R3 R1 K3 ["success"]
       52 JUMPIF                           R3 ; [+4]
       53 GETUPVAL                         R3 3
       54 GETTABLEKS                       R2 R3 K16 ["Error"]
       56 JUMP                             ; [+12]
       57 GETTABLEKS                       R4 R1 K4 ["privateAvatarAssetIds"]
       59 LENGTH                           R3 R4
       60 JUMPIFNOTEQKN                    R3 K5 [0] ; [+5]
       62 GETUPVAL                         R3 3
       63 GETTABLEKS                       R2 R3 K17 ["RobuxSpend"]
       65 JUMP                             ; [+3]
       66 GETUPVAL                         R3 3
       67 GETTABLEKS                       R2 R3 K18 ["AssetPrivacy"]
       69 GETUPVAL                         R3 2
       70 GETTABLEKS                       R3 R3 K6 ["Dictionary"]
       72 GETTABLEKS                       R3 R3 K7 ["join"]
       74 MOVE                             R4 R0
       75 DUPTABLE                         R5 K19 [{["avatarItemDialogType"], ["privateAvatarAssetIds"], ["avatarItemDialogButtonEnabled"] = True}]
       76 SETTABLEKS                       R2 R5 K8 ["avatarItemDialogType"]
       78 GETTABLEKS                       R6 R1 K4 ["privateAvatarAssetIds"]
       80 SETTABLEKS                       R6 R5 K4 ["privateAvatarAssetIds"]
       82 CALL                             R3 2 -1
       83 RETURN                           R3 -1

PROTO_59:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{["isAvatarItemDialogFlowEnabled"] = False, ["avatarItemDialogType"]}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K6 ["Disabled"]
       10 SETTABLEKS                       R5 R4 K4 ["avatarItemDialogType"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_60:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+29]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        6 GETTABLEKS                       R2 R2 K1 ["join"]
        8 MOVE                             R3 R0
        9 DUPTABLE                         R4 K6 [{["isAvatarItemDialogFlowEnabled"] = False, ["avatarItemDialogType"], ["avatarItemDependencyStatus"]}]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K7 ["Disabled"]
       13 SETTABLEKS                       R5 R4 K4 ["avatarItemDialogType"]
       15 GETTABLEKS                       R6 R0 K5 ["avatarItemDependencyStatus"]
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R7 R7 K8 ["Checking"]
       20 JUMPIFNOTEQ                      R6 R7 ; [+5]
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K9 ["Cancelled"]
       25 JUMP                             ; [+2]
       26 GETTABLEKS                       R5 R0 K5 ["avatarItemDependencyStatus"]
       28 SETTABLEKS                       R5 R4 K5 ["avatarItemDependencyStatus"]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
       35 GETTABLEKS                       R2 R2 K1 ["join"]
       37 MOVE                             R3 R0
       38 DUPTABLE                         R4 K10 [{["isAvatarItemDialogFlowEnabled"] = False, ["avatarItemDialogType"]}]
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K7 ["Disabled"]
       42 SETTABLEKS                       R5 R4 K4 ["avatarItemDialogType"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

PROTO_61:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        7 GETTABLEKS                       R2 R2 K1 ["join"]
        9 MOVE                             R3 R0
       10 DUPTABLE                         R4 K13 [{["avatarItemDependencyStatus"], ["avatarItemDependencyCheckId"], ["isAvatarItemDialogFlowEnabled"] = True, ["avatarItemDialogType"], ["avatarItemDialogButtonEnabled"] = False, ["draftAvatarAssets"], ["privateAvatarAssetIds"], ["avatarItemDependencyAssetIds"], ["avatarItemDependencyFailure"]}]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K14 ["Checking"]
       14 SETTABLEKS                       R5 R4 K2 ["avatarItemDependencyStatus"]
       16 GETTABLEKS                       R7 R0 K3 ["avatarItemDependencyCheckId"]
       18 ORK                              R6 R7 K16 [0]
       19 ADDK                             R5 R6 K15 [1]
       20 SETTABLEKS                       R5 R4 K3 ["avatarItemDependencyCheckId"]
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K17 ["Disabled"]
       25 SETTABLEKS                       R5 R4 K6 ["avatarItemDialogType"]
       27 NEWTABLE                         R5 0 0
       29 SETTABLEKS                       R5 R4 K9 ["draftAvatarAssets"]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K10 ["privateAvatarAssetIds"]
       35 NEWTABLE                         R5 0 0
       37 SETTABLEKS                       R5 R4 K11 ["avatarItemDependencyAssetIds"]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K18 ["None"]
       42 SETTABLEKS                       R5 R4 K12 ["avatarItemDependencyFailure"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

PROTO_62:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["avatarItemDependencyStatus"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Checking"]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 RETURN                           R0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       14 GETTABLEKS                       R2 R2 K3 ["join"]
       16 MOVE                             R3 R0
       17 DUPTABLE                         R4 K10 [{["avatarItemDialogType"], ["draftAvatarAssets"], ["privateAvatarAssetIds"], ["avatarItemDependencyAssetIds"], ["avatarItemDialogButtonEnabled"] = True}]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K11 ["PublishAndMakeOpenUse"]
       21 SETTABLEKS                       R5 R4 K4 ["avatarItemDialogType"]
       23 GETTABLEKS                       R5 R1 K5 ["draftAvatarAssets"]
       25 SETTABLEKS                       R5 R4 K5 ["draftAvatarAssets"]
       27 GETTABLEKS                       R5 R1 K6 ["privateAvatarAssetIds"]
       29 SETTABLEKS                       R5 R4 K6 ["privateAvatarAssetIds"]
       31 GETTABLEKS                       R5 R1 K7 ["avatarItemDependencyAssetIds"]
       33 SETTABLEKS                       R5 R4 K7 ["avatarItemDependencyAssetIds"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_63:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["avatarItemDependencyStatus"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Checking"]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 RETURN                           R0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       14 GETTABLEKS                       R2 R2 K3 ["join"]
       16 MOVE                             R3 R0
       17 DUPTABLE                         R4 K8 [{["avatarItemDialogType"], ["avatarItemDependencyFailure"], ["avatarItemDialogButtonEnabled"] = True}]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K9 ["Error"]
       21 SETTABLEKS                       R5 R4 K4 ["avatarItemDialogType"]
       23 GETTABLEKS                       R5 R1 K10 ["failure"]
       25 SETTABLEKS                       R5 R4 K5 ["avatarItemDependencyFailure"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_64:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["avatarItemDependencyStatus"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Checking"]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 RETURN                           R0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       14 GETTABLEKS                       R2 R2 K3 ["join"]
       16 MOVE                             R3 R0
       17 DUPTABLE                         R4 K7 [{["avatarItemDialogType"], ["avatarItemDialogButtonEnabled"] = False}]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K8 ["PublishAndMakeOpenUseInProgress"]
       21 SETTABLEKS                       R5 R4 K4 ["avatarItemDialogType"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R4 K9 ["Util"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["PagedRequestCursor"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R4 K11 ["Keys"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R6 R6 K12 ["LoadingInProgress"]
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R4 K13 ["AssetConfigConstants"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R0 K8 ["Src"]
       44 GETTABLEKS                       R8 R8 K14 ["Actions"]
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R8 K15 ["SetAssetId"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R8 K16 ["SetUploadAssetType"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R8 K17 ["SetUploadAssetValidationStatus"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R8 K18 ["SetVersionHistoryData"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R8 K19 ["SetPackageDescriptions"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R15 R8 K20 ["SetVersionHistoryWithDescriptions"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K5 [require]
       78 GETTABLEKS                       R16 R8 K21 ["SetAssetConfigData"]
       80 CALL                             R15 1 1
       81 GETIMPORT                        R16 K5 [require]
       83 GETTABLEKS                       R17 R8 K22 ["SetCurrentScreen"]
       85 CALL                             R16 1 1
       86 GETIMPORT                        R17 K5 [require]
       88 GETTABLEKS                       R18 R8 K23 ["SetScreenConfig"]
       90 CALL                             R17 1 1
       91 GETIMPORT                        R18 K5 [require]
       93 GETTABLEKS                       R19 R8 K24 ["AddChange"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R20 R8 K25 ["ClearChange"]
      100 CALL                             R19 1 1
      101 GETIMPORT                        R20 K5 [require]
      103 GETTABLEKS                       R21 R8 K26 ["SetAssetGroupData"]
      105 CALL                             R20 1 1
      106 GETIMPORT                        R21 K5 [require]
      108 GETTABLEKS                       R22 R8 K27 ["UploadResult"]
      110 CALL                             R21 1 1
      111 GETIMPORT                        R22 K5 [require]
      113 GETTABLEKS                       R23 R8 K28 ["ValidateAnimationResult"]
      115 CALL                             R22 1 1
      116 GETIMPORT                        R23 K5 [require]
      118 GETTABLEKS                       R24 R8 K29 ["NetworkError"]
      120 CALL                             R23 1 1
      121 GETIMPORT                        R24 K5 [require]
      123 GETTABLEKS                       R25 R8 K30 ["SetAssetConfigTab"]
      125 CALL                             R24 1 1
      126 GETIMPORT                        R25 K5 [require]
      128 GETTABLEKS                       R26 R8 K31 ["SetOverrideAssets"]
      130 CALL                             R25 1 1
      131 GETIMPORT                        R26 K5 [require]
      133 GETTABLEKS                       R27 R8 K32 ["SetAssetConfigManageableGroups"]
      135 CALL                             R26 1 1
      136 GETIMPORT                        R27 K5 [require]
      138 GETTABLEKS                       R28 R8 K33 ["SetIsVerifiedCreator"]
      140 CALL                             R27 1 1
      141 GETIMPORT                        R28 K5 [require]
      143 GETTABLEKS                       R29 R8 K34 ["SetLoadingPage"]
      145 CALL                             R28 1 1
      146 GETIMPORT                        R29 K5 [require]
      148 GETTABLEKS                       R30 R8 K35 ["UpdateOverrideAssetData"]
      150 CALL                             R29 1 1
      151 GETIMPORT                        R30 K5 [require]
      153 GETTABLEKS                       R31 R8 K36 ["SetCurrentPage"]
      155 CALL                             R30 1 1
      156 GETIMPORT                        R31 K5 [require]
      158 GETTABLEKS                       R32 R8 K37 ["SetOverrideCursor"]
      160 CALL                             R31 1 1
      161 GETIMPORT                        R32 K5 [require]
      163 GETTABLEKS                       R33 R8 K38 ["SetAssetConfigThumbnailStatus"]
      165 CALL                             R32 1 1
      166 GETIMPORT                        R33 K5 [require]
      168 GETTABLEKS                       R34 R8 K39 ["SetGroupMetadata"]
      170 CALL                             R33 1 1
      171 GETIMPORT                        R34 K5 [require]
      173 GETTABLEKS                       R35 R8 K40 ["SetOwnerUsername"]
      175 CALL                             R34 1 1
      176 GETIMPORT                        R35 K5 [require]
      178 GETTABLEKS                       R36 R8 K41 ["CollaboratorSearchActions"]
      180 CALL                             R35 1 1
      181 GETIMPORT                        R36 K5 [require]
      183 GETTABLEKS                       R37 R8 K42 ["SetCollaborators"]
      185 CALL                             R36 1 1
      186 GETIMPORT                        R37 K5 [require]
      188 GETTABLEKS                       R38 R8 K43 ["SetIsPackage"]
      190 CALL                             R37 1 1
      191 GETIMPORT                        R38 K5 [require]
      193 GETTABLEKS                       R39 R8 K44 ["UpdateAssetConfigData"]
      195 CALL                             R38 1 1
      196 GETIMPORT                        R39 K5 [require]
      198 GETTABLEKS                       R40 R8 K45 ["UpdateAssetConfigStore"]
      200 CALL                             R39 1 1
      201 GETIMPORT                        R40 K5 [require]
      203 GETTABLEKS                       R41 R8 K46 ["SetGroupRoleInfo"]
      205 CALL                             R40 1 1
      206 GETIMPORT                        R41 K5 [require]
      208 GETTABLEKS                       R42 R8 K47 ["SetPackagePermission"]
      210 CALL                             R41 1 1
      211 GETIMPORT                        R42 K5 [require]
      213 GETTABLEKS                       R43 R8 K48 ["SetTagSuggestions"]
      215 CALL                             R42 1 1
      216 GETIMPORT                        R43 K5 [require]
      218 GETTABLEKS                       R44 R8 K49 ["SetFieldError"]
      220 CALL                             R43 1 1
      221 GETIMPORT                        R44 K5 [require]
      223 GETTABLEKS                       R45 R8 K50 ["SetUploadFee"]
      225 CALL                             R44 1 1
      226 GETIMPORT                        R45 K5 [require]
      228 GETTABLEKS                       R46 R8 K51 ["PublishingPreferencesReceived"]
      230 CALL                             R45 1 1
      231 GETIMPORT                        R46 K5 [require]
      233 GETTABLEKS                       R47 R8 K52 ["PublishingFeePreviewReceived"]
      235 CALL                             R46 1 1
      236 GETIMPORT                        R47 K5 [require]
      238 GETTABLEKS                       R48 R8 K53 ["SetSpecialAttributes"]
      240 CALL                             R47 1 1
      241 GETIMPORT                        R48 K5 [require]
      243 GETTABLEKS                       R49 R8 K54 ["SetAssetConfigAssetTypeAgents"]
      245 CALL                             R48 1 1
      246 GETIMPORT                        R49 K5 [require]
      248 GETTABLEKS                       R50 R8 K55 ["SetDescendantPermissions"]
      250 CALL                             R49 1 1
      251 GETIMPORT                        R50 K5 [require]
      253 GETTABLEKS                       R51 R8 K56 ["ResolveAssetPermissionsRollingRequest"]
      255 CALL                             R50 1 1
      256 GETIMPORT                        R51 K5 [require]
      258 GETTABLEKS                       R52 R8 K57 ["StartInProgressAssetPermissionsRollingRequest"]
      260 CALL                             R51 1 1
      261 GETIMPORT                        R52 K5 [require]
      263 GETTABLEKS                       R53 R8 K58 ["QueueAssetPermissionsRollingRequest"]
      265 CALL                             R52 1 1
      266 GETIMPORT                        R53 K5 [require]
      268 GETTABLEKS                       R54 R8 K59 ["SetPublishingRequirements"]
      270 CALL                             R53 1 1
      271 GETIMPORT                        R54 K5 [require]
      273 GETTABLEKS                       R55 R8 K60 ["SetAssetMediaIds"]
      275 CALL                             R54 1 1
      276 GETIMPORT                        R55 K5 [require]
      278 GETTABLEKS                       R56 R8 K61 ["SetAssetMediaMetadataArray"]
      280 CALL                             R55 1 1
      281 GETIMPORT                        R56 K5 [require]
      283 GETTABLEKS                       R57 R8 K62 ["SetProgressBarInfo"]
      285 CALL                             R56 1 1
      286 GETIMPORT                        R57 K5 [require]
      288 GETTABLEKS                       R58 R8 K63 ["SetFiatProduct"]
      290 CALL                             R57 1 1
      291 GETIMPORT                        R58 K5 [require]
      293 GETTABLEKS                       R59 R0 K8 ["Src"]
      295 GETTABLEKS                       R59 R59 K14 ["Actions"]
      297 GETTABLEKS                       R59 R59 K64 ["SetSellerStatus"]
      299 CALL                             R58 1 1
      300 GETIMPORT                        R59 K5 [require]
      302 GETTABLEKS                       R60 R0 K8 ["Src"]
      304 GETTABLEKS                       R60 R60 K14 ["Actions"]
      306 GETTABLEKS                       R60 R60 K65 ["AllowedGroupsForUploadReceived"]
      308 CALL                             R59 1 1
      309 GETIMPORT                        R60 K5 [require]
      311 GETTABLEKS                       R61 R0 K8 ["Src"]
      313 GETTABLEKS                       R61 R61 K14 ["Actions"]
      315 GETTABLEKS                       R61 R61 K66 ["AvatarAssetPrivacyCheckStarted"]
      317 CALL                             R60 1 1
      318 GETIMPORT                        R61 K5 [require]
      320 GETTABLEKS                       R62 R0 K8 ["Src"]
      322 GETTABLEKS                       R62 R62 K14 ["Actions"]
      324 GETTABLEKS                       R62 R62 K67 ["AvatarAssetPrivacyCheckReceived"]
      326 CALL                             R61 1 1
      327 GETIMPORT                        R62 K5 [require]
      329 GETTABLEKS                       R63 R0 K8 ["Src"]
      331 GETTABLEKS                       R63 R63 K14 ["Actions"]
      333 GETTABLEKS                       R63 R63 K68 ["AvatarItemDialogUploadConfirmed"]
      335 CALL                             R62 1 1
      336 GETIMPORT                        R63 K5 [require]
      338 GETTABLEKS                       R64 R0 K8 ["Src"]
      340 GETTABLEKS                       R64 R64 K14 ["Actions"]
      342 GETTABLEKS                       R64 R64 K69 ["AvatarItemDialogCancelled"]
      344 CALL                             R63 1 1
      345 GETIMPORT                        R64 K5 [require]
      347 GETTABLEKS                       R65 R0 K8 ["Src"]
      349 GETTABLEKS                       R65 R65 K14 ["Actions"]
      351 GETTABLEKS                       R65 R65 K70 ["AvatarItemDependencyCheckStarted"]
      353 CALL                             R64 1 1
      354 GETIMPORT                        R65 K5 [require]
      356 GETTABLEKS                       R66 R0 K8 ["Src"]
      358 GETTABLEKS                       R66 R66 K14 ["Actions"]
      360 GETTABLEKS                       R66 R66 K71 ["AvatarItemDependencyActionsReceived"]
      362 CALL                             R65 1 1
      363 GETIMPORT                        R66 K5 [require]
      365 GETTABLEKS                       R67 R0 K8 ["Src"]
      367 GETTABLEKS                       R67 R67 K14 ["Actions"]
      369 GETTABLEKS                       R67 R67 K72 ["AvatarItemDependencyActionsStarted"]
      371 CALL                             R66 1 1
      372 GETIMPORT                        R67 K5 [require]
      374 GETTABLEKS                       R68 R0 K8 ["Src"]
      376 GETTABLEKS                       R68 R68 K14 ["Actions"]
      378 GETTABLEKS                       R68 R68 K73 ["AvatarItemDependencyActionFailed"]
      380 CALL                             R67 1 1
      381 GETIMPORT                        R68 K5 [require]
      383 GETTABLEKS                       R69 R0 K8 ["Src"]
      385 GETTABLEKS                       R69 R69 K14 ["Actions"]
      387 GETTABLEKS                       R69 R69 K74 ["SetNonBlockingDependencyIssues"]
      389 CALL                             R68 1 1
      390 GETIMPORT                        R69 K5 [require]
      392 GETTABLEKS                       R70 R0 K8 ["Src"]
      394 GETTABLEKS                       R70 R70 K75 ["Types"]
      396 GETTABLEKS                       R70 R70 K76 ["MarketplaceFiatServiceTypes"]
      398 CALL                             R69 1 1
      399 GETIMPORT                        R70 K5 [require]
      401 GETTABLEKS                       R71 R0 K8 ["Src"]
      403 GETTABLEKS                       R71 R71 K75 ["Types"]
      405 GETTABLEKS                       R71 R71 K77 ["AvatarItemDialog"]
      407 CALL                             R70 1 1
      408 GETIMPORT                        R71 K5 [require]
      410 GETTABLEKS                       R72 R0 K8 ["Src"]
      412 GETTABLEKS                       R72 R72 K75 ["Types"]
      414 GETTABLEKS                       R72 R72 K78 ["AvatarItemDependencyStatus"]
      416 CALL                             R71 1 1
      417 GETIMPORT                        R72 K5 [require]
      419 GETTABLEKS                       R73 R0 K8 ["Src"]
      421 GETTABLEKS                       R73 R73 K79 ["Flags"]
      423 GETTABLEKS                       R73 R73 K80 ["getFFlagToolboxAvatarItemPublishDraftDependencies"]
      425 CALL                             R72 1 1
      426 MOVE                             R73 R72
      427 CALL                             R73 0 1
      428 GETIMPORT                        R74 K5 [require]
      430 GETTABLEKS                       R75 R0 K8 ["Src"]
      432 GETTABLEKS                       R75 R75 K9 ["Util"]
      434 GETTABLEKS                       R75 R75 K81 ["SharedFlags"]
      436 GETTABLEKS                       R75 R75 K82 ["getFFlagToolboxAssetConfigOnboardingLink"]
      438 CALL                             R74 1 1
      439 GETIMPORT                        R75 K5 [require]
      441 GETTABLEKS                       R76 R0 K8 ["Src"]
      443 GETTABLEKS                       R76 R76 K79 ["Flags"]
      445 GETTABLEKS                       R76 R76 K83 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      447 CALL                             R75 1 1
      448 GETIMPORT                        R76 K5 [require]
      450 GETTABLEKS                       R77 R0 K8 ["Src"]
      452 GETTABLEKS                       R77 R77 K9 ["Util"]
      454 GETTABLEKS                       R77 R77 K81 ["SharedFlags"]
      456 GETTABLEKS                       R77 R77 K84 ["getFFlagToolboxModelCreationWarningWindow"]
      458 CALL                             R76 1 1
      459 GETIMPORT                        R77 K5 [require]
      461 GETTABLEKS                       R78 R0 K8 ["Src"]
      463 GETTABLEKS                       R78 R78 K79 ["Flags"]
      465 GETTABLEKS                       R78 R78 K85 ["getFFlagToolboxExperienceCreatorTypeMarketplaceAssetConfig"]
      467 CALL                             R77 1 1
      468 DUPCLOSURE                       R78 K86 [PROTO_0]
      469 CAPTURE                          VAL R77
      470 GETTABLEKS                       R79 R3 K87 ["createReducer"]
      472 NEWTABLE                         R80 128 0
      474 NEWTABLE                         R81 0 0
      476 SETTABLEKS                       R81 R80 K88 ["assetConfigData"]
      478 NEWTABLE                         R81 0 0
      480 SETTABLEKS                       R81 R80 K89 ["assetGroupData"]
      482 NEWTABLE                         R81 0 0
      484 SETTABLEKS                       R81 R80 K90 ["idToFiatProductMap"]
      486 LOADNIL                          R81
      487 SETTABLEKS                       R81 R80 K91 ["versionHistory"]
      489 NEWTABLE                         R81 0 0
      491 SETTABLEKS                       R81 R80 K92 ["packageDescriptions"]
      493 LOADNIL                          R81
      494 SETTABLEKS                       R81 R80 K93 ["versionHistoryWithDescriptions"]
      496 NEWTABLE                         R81 0 0
      498 SETTABLEKS                       R81 R80 K94 ["changed"]
      500 LOADNIL                          R81
      501 SETTABLEKS                       R81 R80 K95 ["assetId"]
      503 LOADNIL                          R81
      504 SETTABLEKS                       R81 R80 K96 ["thumbnailStatus"]
      506 LOADNIL                          R81
      507 SETTABLEKS                       R81 R80 K97 ["instances"]
      509 LOADNIL                          R81
      510 SETTABLEKS                       R81 R80 K98 ["sourceInstances"]
      512 GETTABLEKS                       R81 R7 K99 ["FLOW_TYPE"]
      514 GETTABLEKS                       R81 R81 K100 ["UPLOAD_FLOW"]
      516 SETTABLEKS                       R81 R80 K101 ["screenFlowType"]
      518 LOADNIL                          R81
      519 SETTABLEKS                       R81 R80 K102 ["assetTypeEnum"]
      521 LOADNIL                          R81
      522 SETTABLEKS                       R81 R80 K103 ["assetSubType"]
      524 LOADNIL                          R81
      525 SETTABLEKS                       R81 R80 K104 ["assetTypeValidationSucceeded"]
      527 LOADNIL                          R81
      528 SETTABLEKS                       R81 R80 K105 ["currentScreen"]
      530 NEWTABLE                         R81 0 0
      532 SETTABLEKS                       R81 R80 K106 ["screenConfigs"]
      534 NEWTABLE                         R81 0 0
      536 SETTABLEKS                       R81 R80 K107 ["allowedAssetTypesForRelease"]
      538 NEWTABLE                         R81 0 0
      540 SETTABLEKS                       R81 R80 K108 ["allowedAssetTypesForUpload"]
      542 NEWTABLE                         R81 0 0
      544 SETTABLEKS                       R81 R80 K109 ["allowedBundleTypeSettings"]
      546 LOADB                            R81 1
      547 SETTABLEKS                       R81 R80 K110 ["canAffordUploadFee"]
      549 LOADN                            R81 0
      550 SETTABLEKS                       R81 R80 K111 ["uploadFee"]
      552 LOADB                            R81 0
      553 SETTABLEKS                       R81 R80 K112 ["hasPublishingPreferences"]
      555 LOADB                            R81 0
      556 SETTABLEKS                       R81 R80 K113 ["hasPublishingFeePreview"]
      558 LOADN                            R81 0
      559 SETTABLEKS                       R81 R80 K114 ["publishingFeePreview"]
      561 NEWTABLE                         R81 0 0
      563 SETTABLEKS                       R81 R80 K115 ["specialAttributes"]
      565 LOADB                            R81 0
      566 SETTABLEKS                       R81 R80 K116 ["hasMetadataPermission"]
      568 LOADNIL                          R81
      569 SETTABLEKS                       R81 R80 K117 ["currentTab"]
      571 NEWTABLE                         R81 0 0
      573 SETTABLEKS                       R81 R80 K118 ["resultsArray"]
      575 NEWTABLE                         R81 0 0
      577 SETTABLEKS                       R81 R80 K119 ["manageableGroups"]
      579 NEWTABLE                         R81 0 0
      581 SETTABLEKS                       R81 R80 K120 ["assetTypeAgents"]
      583 LOADB                            R81 1
      584 SETTABLEKS                       R81 R80 K121 ["isVerifiedCreator"]
      586 LOADNIL                          R81
      587 SETTABLEKS                       R81 R80 K122 ["networkError"]
      589 LOADNIL                          R81
      590 SETTABLEKS                       R81 R80 K123 ["networkErrorAction"]
      592 LOADN                            R81 0
      593 SETTABLEKS                       R81 R80 K124 ["progressPercentage"]
      595 LOADNIL                          R81
      596 SETTABLEKS                       R81 R80 K125 ["progressTitle"]
      598 LOADNIL                          R81
      599 SETTABLEKS                       R81 R80 K126 ["progressText"]
      601 NEWTABLE                         R81 0 0
      603 SETTABLEKS                       R81 R80 K127 ["networkTable"]
      605 LOADB                            R81 0
      606 SETTABLEKS                       R81 R80 K128 ["fetchedAll"]
      608 LOADN                            R81 0
      609 SETTABLEKS                       R81 R80 K129 ["loadingPage"]
      611 LOADN                            R81 1
      612 SETTABLEKS                       R81 R80 K130 ["currentPage"]
      614 GETTABLEKS                       R81 R5 K131 ["createDefaultCursor"]
      616 CALL                             R81 0 1
      617 SETTABLEKS                       R81 R80 K132 ["overrideCursor"]
      619 NEWTABLE                         R81 0 0
      621 SETTABLEKS                       R81 R80 K133 ["groupMetadata"]
      623 LOADNIL                          R81
      624 SETTABLEKS                       R81 R80 K134 ["localUserFriends"]
      626 LOADK                            R81 K135 [""]
      627 SETTABLEKS                       R81 R80 K136 ["searchText"]
      629 LOADB                            R81 0
      630 SETTABLEKS                       R81 R80 K137 ["success"]
      632 NEWTABLE                         R81 0 0
      634 SETTABLEKS                       R81 R80 K138 ["collaborators"]
      636 LOADB                            R81 0
      637 SETTABLEKS                       R81 R80 K139 ["isPackageAsset"]
      639 NEWTABLE                         R81 0 0
      641 SETTABLEKS                       R81 R80 K140 ["packagePermissions"]
      643 NEWTABLE                         R81 0 0
      645 SETTABLEKS                       R81 R80 K141 ["descendantPermissions"]
      647 LOADNIL                          R81
      648 SETTABLEKS                       R81 R80 K142 ["iconFile"]
      650 LOADNIL                          R81
      651 SETTABLEKS                       R81 R80 K143 ["deleteLocal"]
      653 LOADB                            R81 1
      654 SETTABLEKS                       R81 R80 K144 ["animationSectionValid"]
      656 NEWTABLE                         R81 0 0
      658 SETTABLEKS                       R81 R80 K145 ["tagSuggestions"]
      660 LOADN                            R81 0
      661 SETTABLEKS                       R81 R80 K146 ["latestTagSuggestionTime"]
      663 LOADK                            R81 K135 [""]
      664 SETTABLEKS                       R81 R80 K147 ["latestTagSearchQuery"]
      666 NEWTABLE                         R81 0 0
      668 SETTABLEKS                       R81 R80 K148 ["publishingRequirements"]
      670 MOVE                             R82 R74
      671 CALL                             R82 0 1
      672 JUMPIFNOT                        R82 ; [+3]
      673 NEWTABLE                         R81 0 0
      675 JUMP                             ; [+1]
      676 LOADNIL                          R81
      677 SETTABLEKS                       R81 R80 K149 ["sellerStatusData"]
      679 LOADB                            R81 0
      680 SETTABLEKS                       R81 R80 K150 ["groupBundlesUploadEnabledForUser"]
      682 NEWTABLE                         R81 0 0
      684 SETTABLEKS                       R81 R80 K151 ["allowedGroupsForUpload"]
      686 NEWTABLE                         R81 0 0
      688 SETTABLEKS                       R81 R80 K152 ["privateAvatarAssetIds"]
      690 LOADB                            R81 0
      691 SETTABLEKS                       R81 R80 K153 ["isAvatarItemDialogFlowEnabled"]
      693 LOADB                            R81 1
      694 SETTABLEKS                       R81 R80 K154 ["avatarItemDialogButtonEnabled"]
      696 GETTABLEKS                       R81 R70 K155 ["Disabled"]
      698 SETTABLEKS                       R81 R80 K156 ["avatarItemDialogType"]
      700 JUMPIFNOT                        R73 ; [+3]
      701 GETTABLEKS                       R81 R71 K157 ["NotChecked"]
      703 JUMP                             ; [+1]
      704 LOADNIL                          R81
      705 SETTABLEKS                       R81 R80 K158 ["avatarItemDependencyStatus"]
      707 JUMPIFNOT                        R73 ; [+2]
      708 LOADN                            R81 0
      709 JUMP                             ; [+1]
      710 LOADNIL                          R81
      711 SETTABLEKS                       R81 R80 K159 ["avatarItemDependencyCheckId"]
      713 JUMPIFNOT                        R73 ; [+3]
      714 NEWTABLE                         R81 0 0
      716 JUMP                             ; [+1]
      717 LOADNIL                          R81
      718 SETTABLEKS                       R81 R80 K160 ["draftAvatarAssets"]
      720 JUMPIFNOT                        R73 ; [+3]
      721 NEWTABLE                         R81 0 0
      723 JUMP                             ; [+1]
      724 LOADNIL                          R81
      725 SETTABLEKS                       R81 R80 K161 ["avatarItemDependencyAssetIds"]
      727 LOADNIL                          R81
      728 SETTABLEKS                       R81 R80 K162 ["nonBlockingDependencyIssues"]
      730 NEWTABLE                         R81 64 0
      732 GETTABLEKS                       R82 R39 K163 ["name"]
      734 DUPCLOSURE                       R83 K164 [PROTO_1]
      735 CAPTURE                          VAL R2
      736 SETTABLE                         R83 R81 R82
      737 GETTABLEKS                       R82 R9 K163 ["name"]
      739 DUPCLOSURE                       R83 K165 [PROTO_2]
      740 CAPTURE                          VAL R2
      741 SETTABLE                         R83 R81 R82
      742 GETTABLEKS                       R82 R10 K163 ["name"]
      744 DUPCLOSURE                       R83 K166 [PROTO_3]
      745 CAPTURE                          VAL R2
      746 SETTABLE                         R83 R81 R82
      747 GETTABLEKS                       R82 R11 K163 ["name"]
      749 DUPCLOSURE                       R83 K167 [PROTO_4]
      750 CAPTURE                          VAL R2
      751 SETTABLE                         R83 R81 R82
      752 GETTABLEKS                       R82 R16 K163 ["name"]
      754 DUPCLOSURE                       R83 K168 [PROTO_5]
      755 CAPTURE                          VAL R2
      756 SETTABLE                         R83 R81 R82
      757 GETTABLEKS                       R82 R68 K163 ["name"]
      759 MOVE                             R84 R76
      760 CALL                             R84 0 1
      761 JUMPIFNOT                        R84 ; [+3]
      762 DUPCLOSURE                       R83 K169 [PROTO_6]
      763 CAPTURE                          VAL R2
      764 JUMP                             ; [+1]
      765 LOADNIL                          R83
      766 SETTABLE                         R83 R81 R82
      767 GETTABLEKS                       R82 R17 K163 ["name"]
      769 DUPCLOSURE                       R83 K170 [PROTO_7]
      770 CAPTURE                          VAL R2
      771 SETTABLE                         R83 R81 R82
      772 GETTABLEKS                       R82 R12 K163 ["name"]
      774 DUPCLOSURE                       R83 K171 [PROTO_8]
      775 CAPTURE                          VAL R2
      776 SETTABLE                         R83 R81 R82
      777 GETTABLEKS                       R82 R13 K163 ["name"]
      779 DUPCLOSURE                       R83 K172 [PROTO_9]
      780 CAPTURE                          VAL R2
      781 SETTABLE                         R83 R81 R82
      782 GETTABLEKS                       R82 R14 K163 ["name"]
      784 DUPCLOSURE                       R83 K173 [PROTO_10]
      785 CAPTURE                          VAL R75
      786 CAPTURE                          VAL R2
      787 SETTABLE                         R83 R81 R82
      788 GETTABLEKS                       R82 R15 K163 ["name"]
      790 DUPCLOSURE                       R83 K174 [PROTO_11]
      791 CAPTURE                          VAL R2
      792 SETTABLE                         R83 R81 R82
      793 GETTABLEKS                       R82 R38 K163 ["name"]
      795 DUPCLOSURE                       R83 K175 [PROTO_12]
      796 CAPTURE                          VAL R2
      797 SETTABLE                         R83 R81 R82
      798 GETTABLEKS                       R82 R18 K163 ["name"]
      800 DUPCLOSURE                       R83 K176 [PROTO_13]
      801 CAPTURE                          VAL R2
      802 SETTABLE                         R83 R81 R82
      803 GETTABLEKS                       R82 R19 K163 ["name"]
      805 DUPCLOSURE                       R83 K177 [PROTO_14]
      806 CAPTURE                          VAL R2
      807 SETTABLE                         R83 R81 R82
      808 GETTABLEKS                       R82 R20 K163 ["name"]
      810 DUPCLOSURE                       R83 K178 [PROTO_15]
      811 CAPTURE                          VAL R2
      812 SETTABLE                         R83 R81 R82
      813 GETTABLEKS                       R82 R23 K163 ["name"]
      815 DUPCLOSURE                       R83 K179 [PROTO_16]
      816 CAPTURE                          VAL R2
      817 SETTABLE                         R83 R81 R82
      818 GETTABLEKS                       R82 R56 K163 ["name"]
      820 DUPCLOSURE                       R83 K180 [PROTO_17]
      821 CAPTURE                          VAL R2
      822 SETTABLE                         R83 R81 R82
      823 GETTABLEKS                       R82 R21 K163 ["name"]
      825 DUPCLOSURE                       R83 K181 [PROTO_18]
      826 CAPTURE                          VAL R2
      827 SETTABLE                         R83 R81 R82
      828 GETTABLEKS                       R82 R22 K163 ["name"]
      830 DUPCLOSURE                       R83 K182 [PROTO_19]
      831 CAPTURE                          VAL R2
      832 SETTABLE                         R83 R81 R82
      833 GETTABLEKS                       R82 R24 K163 ["name"]
      835 DUPCLOSURE                       R83 K183 [PROTO_20]
      836 CAPTURE                          VAL R2
      837 SETTABLE                         R83 R81 R82
      838 GETTABLEKS                       R82 R25 K163 ["name"]
      840 DUPCLOSURE                       R83 K184 [PROTO_21]
      841 CAPTURE                          VAL R2
      842 SETTABLE                         R83 R81 R82
      843 GETTABLEKS                       R82 R29 K163 ["name"]
      845 DUPCLOSURE                       R83 K185 [PROTO_22]
      846 CAPTURE                          VAL R2
      847 SETTABLE                         R83 R81 R82
      848 GETTABLEKS                       R82 R26 K163 ["name"]
      850 DUPCLOSURE                       R83 K186 [PROTO_23]
      851 CAPTURE                          VAL R2
      852 SETTABLE                         R83 R81 R82
      853 GETTABLEKS                       R82 R27 K163 ["name"]
      855 DUPCLOSURE                       R83 K187 [PROTO_24]
      856 CAPTURE                          VAL R2
      857 SETTABLE                         R83 R81 R82
      858 GETTABLEKS                       R82 R28 K163 ["name"]
      860 DUPCLOSURE                       R83 K188 [PROTO_25]
      861 CAPTURE                          VAL R2
      862 SETTABLE                         R83 R81 R82
      863 GETTABLEKS                       R82 R30 K163 ["name"]
      865 DUPCLOSURE                       R83 K189 [PROTO_26]
      866 CAPTURE                          VAL R2
      867 SETTABLE                         R83 R81 R82
      868 GETTABLEKS                       R82 R31 K163 ["name"]
      870 DUPCLOSURE                       R83 K190 [PROTO_27]
      871 CAPTURE                          VAL R2
      872 SETTABLE                         R83 R81 R82
      873 GETTABLEKS                       R82 R32 K163 ["name"]
      875 DUPCLOSURE                       R83 K191 [PROTO_28]
      876 CAPTURE                          VAL R2
      877 SETTABLE                         R83 R81 R82
      878 GETTABLEKS                       R82 R33 K163 ["name"]
      880 DUPCLOSURE                       R83 K192 [PROTO_29]
      881 CAPTURE                          VAL R2
      882 SETTABLE                         R83 R81 R82
      883 GETTABLEKS                       R82 R34 K163 ["name"]
      885 DUPCLOSURE                       R83 K193 [PROTO_30]
      886 CAPTURE                          VAL R77
      887 CAPTURE                          VAL R2
      888 SETTABLE                         R83 R81 R82
      889 GETTABLEKS                       R82 R35 K194 ["LoadedLocalUserFriends"]
      891 GETTABLEKS                       R82 R82 K163 ["name"]
      893 DUPCLOSURE                       R83 K195 [PROTO_31]
      894 CAPTURE                          VAL R2
      895 SETTABLE                         R83 R81 R82
      896 GETTABLEKS                       R82 R35 K196 ["LoadedLocalUserGroups"]
      898 GETTABLEKS                       R82 R82 K163 ["name"]
      900 DUPCLOSURE                       R83 K197 [PROTO_32]
      901 CAPTURE                          VAL R2
      902 SETTABLE                         R83 R81 R82
      903 GETTABLEKS                       R82 R35 K198 ["LoadingLocalUserFriends"]
      905 GETTABLEKS                       R82 R82 K163 ["name"]
      907 DUPCLOSURE                       R83 K199 [PROTO_33]
      908 CAPTURE                          VAL R2
      909 CAPTURE                          VAL R6
      910 SETTABLE                         R83 R81 R82
      911 GETTABLEKS                       R82 R35 K200 ["LoadingLocalUserGroups"]
      913 GETTABLEKS                       R82 R82 K163 ["name"]
      915 DUPCLOSURE                       R83 K201 [PROTO_34]
      916 CAPTURE                          VAL R2
      917 CAPTURE                          VAL R6
      918 SETTABLE                         R83 R81 R82
      919 GETTABLEKS                       R82 R35 K202 ["SearchTextChanged"]
      921 GETTABLEKS                       R82 R82 K163 ["name"]
      923 DUPCLOSURE                       R83 K203 [PROTO_35]
      924 CAPTURE                          VAL R2
      925 SETTABLE                         R83 R81 R82
      926 GETTABLEKS                       R82 R36 K163 ["name"]
      928 DUPCLOSURE                       R83 K204 [PROTO_36]
      929 CAPTURE                          VAL R2
      930 SETTABLE                         R83 R81 R82
      931 GETTABLEKS                       R82 R37 K163 ["name"]
      933 DUPCLOSURE                       R83 K205 [PROTO_37]
      934 CAPTURE                          VAL R2
      935 SETTABLE                         R83 R81 R82
      936 GETTABLEKS                       R82 R40 K163 ["name"]
      938 DUPCLOSURE                       R83 K206 [PROTO_38]
      939 CAPTURE                          VAL R77
      940 CAPTURE                          VAL R2
      941 SETTABLE                         R83 R81 R82
      942 GETTABLEKS                       R82 R41 K163 ["name"]
      944 DUPCLOSURE                       R83 K207 [PROTO_39]
      945 CAPTURE                          VAL R2
      946 SETTABLE                         R83 R81 R82
      947 GETTABLEKS                       R82 R42 K163 ["name"]
      949 DUPCLOSURE                       R83 K208 [PROTO_40]
      950 CAPTURE                          VAL R2
      951 SETTABLE                         R83 R81 R82
      952 GETTABLEKS                       R82 R43 K163 ["name"]
      954 DUPCLOSURE                       R83 K209 [PROTO_41]
      955 CAPTURE                          VAL R2
      956 SETTABLE                         R83 R81 R82
      957 GETTABLEKS                       R82 R44 K163 ["name"]
      959 DUPCLOSURE                       R83 K210 [PROTO_42]
      960 CAPTURE                          VAL R2
      961 SETTABLE                         R83 R81 R82
      962 GETTABLEKS                       R82 R45 K163 ["name"]
      964 DUPCLOSURE                       R83 K211 [PROTO_43]
      965 CAPTURE                          VAL R2
      966 SETTABLE                         R83 R81 R82
      967 GETTABLEKS                       R82 R46 K163 ["name"]
      969 DUPCLOSURE                       R83 K212 [PROTO_44]
      970 CAPTURE                          VAL R2
      971 SETTABLE                         R83 R81 R82
      972 GETTABLEKS                       R82 R47 K163 ["name"]
      974 DUPCLOSURE                       R83 K213 [PROTO_45]
      975 CAPTURE                          VAL R2
      976 SETTABLE                         R83 R81 R82
      977 GETTABLEKS                       R82 R48 K163 ["name"]
      979 DUPCLOSURE                       R83 K214 [PROTO_46]
      980 CAPTURE                          VAL R2
      981 SETTABLE                         R83 R81 R82
      982 GETTABLEKS                       R82 R49 K163 ["name"]
      984 DUPCLOSURE                       R83 K215 [PROTO_47]
      985 CAPTURE                          VAL R2
      986 SETTABLE                         R83 R81 R82
      987 GETTABLEKS                       R82 R50 K163 ["name"]
      989 DUPCLOSURE                       R83 K216 [PROTO_48]
      990 CAPTURE                          VAL R2
      991 SETTABLE                         R83 R81 R82
      992 GETTABLEKS                       R82 R51 K163 ["name"]
      994 DUPCLOSURE                       R83 K217 [PROTO_49]
      995 CAPTURE                          VAL R2
      996 SETTABLE                         R83 R81 R82
      997 GETTABLEKS                       R82 R52 K163 ["name"]
      999 DUPCLOSURE                       R83 K218 [PROTO_50]
     1000 CAPTURE                          VAL R2
     1001 SETTABLE                         R83 R81 R82
     1002 GETTABLEKS                       R82 R53 K163 ["name"]
     1004 DUPCLOSURE                       R83 K219 [PROTO_51]
     1005 CAPTURE                          VAL R2
     1006 SETTABLE                         R83 R81 R82
     1007 GETTABLEKS                       R82 R54 K163 ["name"]
     1009 DUPCLOSURE                       R83 K220 [PROTO_52]
     1010 CAPTURE                          VAL R2
     1011 SETTABLE                         R83 R81 R82
     1012 GETTABLEKS                       R82 R55 K163 ["name"]
     1014 DUPCLOSURE                       R83 K221 [PROTO_53]
     1015 CAPTURE                          VAL R2
     1016 SETTABLE                         R83 R81 R82
     1017 GETTABLEKS                       R82 R57 K163 ["name"]
     1019 DUPCLOSURE                       R83 K222 [PROTO_54]
     1020 CAPTURE                          VAL R2
     1021 SETTABLE                         R83 R81 R82
     1022 GETTABLEKS                       R82 R58 K163 ["name"]
     1024 MOVE                             R84 R74
     1025 CALL                             R84 0 1
     1026 JUMPIFNOT                        R84 ; [+3]
     1027 DUPCLOSURE                       R83 K223 [PROTO_55]
     1028 CAPTURE                          VAL R2
     1029 JUMP                             ; [+1]
     1030 LOADNIL                          R83
     1031 SETTABLE                         R83 R81 R82
     1032 GETTABLEKS                       R82 R59 K163 ["name"]
     1034 DUPCLOSURE                       R83 K224 [PROTO_56]
     1035 CAPTURE                          VAL R2
     1036 SETTABLE                         R83 R81 R82
     1037 GETTABLEKS                       R82 R60 K163 ["name"]
     1039 DUPCLOSURE                       R83 K225 [PROTO_57]
     1040 CAPTURE                          VAL R72
     1041 CAPTURE                          VAL R71
     1042 CAPTURE                          VAL R2
     1043 SETTABLE                         R83 R81 R82
     1044 GETTABLEKS                       R82 R61 K163 ["name"]
     1046 DUPCLOSURE                       R83 K226 [PROTO_58]
     1047 CAPTURE                          VAL R72
     1048 CAPTURE                          VAL R71
     1049 CAPTURE                          VAL R2
     1050 CAPTURE                          VAL R70
     1051 SETTABLE                         R83 R81 R82
     1052 GETTABLEKS                       R82 R62 K163 ["name"]
     1054 DUPCLOSURE                       R83 K227 [PROTO_59]
     1055 CAPTURE                          VAL R2
     1056 CAPTURE                          VAL R70
     1057 SETTABLE                         R83 R81 R82
     1058 GETTABLEKS                       R82 R63 K163 ["name"]
     1060 DUPCLOSURE                       R83 K228 [PROTO_60]
     1061 CAPTURE                          VAL R72
     1062 CAPTURE                          VAL R2
     1063 CAPTURE                          VAL R70
     1064 CAPTURE                          VAL R71
     1065 SETTABLE                         R83 R81 R82
     1066 GETTABLEKS                       R82 R64 K163 ["name"]
     1068 DUPCLOSURE                       R83 K229 [PROTO_61]
     1069 CAPTURE                          VAL R72
     1070 CAPTURE                          VAL R2
     1071 CAPTURE                          VAL R71
     1072 CAPTURE                          VAL R70
     1073 SETTABLE                         R83 R81 R82
     1074 GETTABLEKS                       R82 R65 K163 ["name"]
     1076 DUPCLOSURE                       R83 K230 [PROTO_62]
     1077 CAPTURE                          VAL R72
     1078 CAPTURE                          VAL R71
     1079 CAPTURE                          VAL R2
     1080 CAPTURE                          VAL R70
     1081 SETTABLE                         R83 R81 R82
     1082 GETTABLEKS                       R82 R67 K163 ["name"]
     1084 DUPCLOSURE                       R83 K231 [PROTO_63]
     1085 CAPTURE                          VAL R72
     1086 CAPTURE                          VAL R71
     1087 CAPTURE                          VAL R2
     1088 CAPTURE                          VAL R70
     1089 SETTABLE                         R83 R81 R82
     1090 GETTABLEKS                       R82 R66 K163 ["name"]
     1092 DUPCLOSURE                       R83 K232 [PROTO_64]
     1093 CAPTURE                          VAL R72
     1094 CAPTURE                          VAL R71
     1095 CAPTURE                          VAL R2
     1096 CAPTURE                          VAL R70
     1097 SETTABLE                         R83 R81 R82
     1098 CALL                             R79 2 -1
     1099 RETURN                           R79 -1
