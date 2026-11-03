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
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K7 [{["isAvatarItemDialogFlowEnabled"] = True, ["avatarItemDialogButtonEnabled"] = False, ["privateAvatarAssetIds"]}]
        7 NEWTABLE                         R5 0 0
        9 SETTABLEKS                       R5 R4 K6 ["privateAvatarAssetIds"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_58:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["success"]
        3 JUMPIF                           R3 ; [+4]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["Error"]
        7 JUMP                             ; [+12]
        8 GETTABLEKS                       R4 R1 K2 ["privateAvatarAssetIds"]
       10 LENGTH                           R3 R4
       11 JUMPIFNOTEQKN                    R3 K3 [0] ; [+5]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K4 ["RobuxSpend"]
       16 JUMP                             ; [+3]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K5 ["AssetPrivacy"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K6 ["Dictionary"]
       23 GETTABLEKS                       R3 R3 K7 ["join"]
       25 MOVE                             R4 R0
       26 DUPTABLE                         R5 K11 [{["avatarItemDialogType"], ["privateAvatarAssetIds"], ["avatarItemDialogButtonEnabled"] = True}]
       27 SETTABLEKS                       R2 R5 K8 ["avatarItemDialogType"]
       29 GETTABLEKS                       R6 R1 K2 ["privateAvatarAssetIds"]
       31 SETTABLEKS                       R6 R5 K2 ["privateAvatarAssetIds"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

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
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{["isAvatarItemDialogFlowEnabled"] = False, ["avatarItemDialogType"]}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K6 ["Disabled"]
       10 SETTABLEKS                       R5 R4 K4 ["avatarItemDialogType"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

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
      351 GETTABLEKS                       R65 R65 K70 ["SetNonBlockingDependencyIssues"]
      353 CALL                             R64 1 1
      354 GETIMPORT                        R65 K5 [require]
      356 GETTABLEKS                       R66 R0 K8 ["Src"]
      358 GETTABLEKS                       R66 R66 K71 ["Types"]
      360 GETTABLEKS                       R66 R66 K72 ["MarketplaceFiatServiceTypes"]
      362 CALL                             R65 1 1
      363 GETIMPORT                        R66 K5 [require]
      365 GETTABLEKS                       R67 R0 K8 ["Src"]
      367 GETTABLEKS                       R67 R67 K71 ["Types"]
      369 GETTABLEKS                       R67 R67 K73 ["AvatarItemDialog"]
      371 CALL                             R66 1 1
      372 GETIMPORT                        R67 K5 [require]
      374 GETTABLEKS                       R68 R0 K8 ["Src"]
      376 GETTABLEKS                       R68 R68 K9 ["Util"]
      378 GETTABLEKS                       R68 R68 K74 ["SharedFlags"]
      380 GETTABLEKS                       R68 R68 K75 ["getFFlagToolboxAssetConfigOnboardingLink"]
      382 CALL                             R67 1 1
      383 GETIMPORT                        R68 K5 [require]
      385 GETTABLEKS                       R69 R0 K8 ["Src"]
      387 GETTABLEKS                       R69 R69 K76 ["Flags"]
      389 GETTABLEKS                       R69 R69 K77 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      391 CALL                             R68 1 1
      392 GETIMPORT                        R69 K5 [require]
      394 GETTABLEKS                       R70 R0 K8 ["Src"]
      396 GETTABLEKS                       R70 R70 K9 ["Util"]
      398 GETTABLEKS                       R70 R70 K74 ["SharedFlags"]
      400 GETTABLEKS                       R70 R70 K78 ["getFFlagToolboxModelCreationWarningWindow"]
      402 CALL                             R69 1 1
      403 GETIMPORT                        R70 K5 [require]
      405 GETTABLEKS                       R71 R0 K8 ["Src"]
      407 GETTABLEKS                       R71 R71 K76 ["Flags"]
      409 GETTABLEKS                       R71 R71 K79 ["getFFlagToolboxExperienceCreatorTypeMarketplaceAssetConfig"]
      411 CALL                             R70 1 1
      412 DUPCLOSURE                       R71 K80 [PROTO_0]
      413 CAPTURE                          VAL R70
      414 GETTABLEKS                       R72 R3 K81 ["createReducer"]
      416 NEWTABLE                         R73 128 0
      418 NEWTABLE                         R74 0 0
      420 SETTABLEKS                       R74 R73 K82 ["assetConfigData"]
      422 NEWTABLE                         R74 0 0
      424 SETTABLEKS                       R74 R73 K83 ["assetGroupData"]
      426 NEWTABLE                         R74 0 0
      428 SETTABLEKS                       R74 R73 K84 ["idToFiatProductMap"]
      430 LOADNIL                          R74
      431 SETTABLEKS                       R74 R73 K85 ["versionHistory"]
      433 NEWTABLE                         R74 0 0
      435 SETTABLEKS                       R74 R73 K86 ["packageDescriptions"]
      437 LOADNIL                          R74
      438 SETTABLEKS                       R74 R73 K87 ["versionHistoryWithDescriptions"]
      440 NEWTABLE                         R74 0 0
      442 SETTABLEKS                       R74 R73 K88 ["changed"]
      444 LOADNIL                          R74
      445 SETTABLEKS                       R74 R73 K89 ["assetId"]
      447 LOADNIL                          R74
      448 SETTABLEKS                       R74 R73 K90 ["thumbnailStatus"]
      450 LOADNIL                          R74
      451 SETTABLEKS                       R74 R73 K91 ["instances"]
      453 LOADNIL                          R74
      454 SETTABLEKS                       R74 R73 K92 ["sourceInstances"]
      456 GETTABLEKS                       R74 R7 K93 ["FLOW_TYPE"]
      458 GETTABLEKS                       R74 R74 K94 ["UPLOAD_FLOW"]
      460 SETTABLEKS                       R74 R73 K95 ["screenFlowType"]
      462 LOADNIL                          R74
      463 SETTABLEKS                       R74 R73 K96 ["assetTypeEnum"]
      465 LOADNIL                          R74
      466 SETTABLEKS                       R74 R73 K97 ["assetSubType"]
      468 LOADNIL                          R74
      469 SETTABLEKS                       R74 R73 K98 ["assetTypeValidationSucceeded"]
      471 LOADNIL                          R74
      472 SETTABLEKS                       R74 R73 K99 ["currentScreen"]
      474 NEWTABLE                         R74 0 0
      476 SETTABLEKS                       R74 R73 K100 ["screenConfigs"]
      478 NEWTABLE                         R74 0 0
      480 SETTABLEKS                       R74 R73 K101 ["allowedAssetTypesForRelease"]
      482 NEWTABLE                         R74 0 0
      484 SETTABLEKS                       R74 R73 K102 ["allowedAssetTypesForUpload"]
      486 NEWTABLE                         R74 0 0
      488 SETTABLEKS                       R74 R73 K103 ["allowedBundleTypeSettings"]
      490 LOADB                            R74 1
      491 SETTABLEKS                       R74 R73 K104 ["canAffordUploadFee"]
      493 LOADN                            R74 0
      494 SETTABLEKS                       R74 R73 K105 ["uploadFee"]
      496 LOADB                            R74 0
      497 SETTABLEKS                       R74 R73 K106 ["hasPublishingPreferences"]
      499 LOADB                            R74 0
      500 SETTABLEKS                       R74 R73 K107 ["hasPublishingFeePreview"]
      502 LOADN                            R74 0
      503 SETTABLEKS                       R74 R73 K108 ["publishingFeePreview"]
      505 NEWTABLE                         R74 0 0
      507 SETTABLEKS                       R74 R73 K109 ["specialAttributes"]
      509 LOADB                            R74 0
      510 SETTABLEKS                       R74 R73 K110 ["hasMetadataPermission"]
      512 LOADNIL                          R74
      513 SETTABLEKS                       R74 R73 K111 ["currentTab"]
      515 NEWTABLE                         R74 0 0
      517 SETTABLEKS                       R74 R73 K112 ["resultsArray"]
      519 NEWTABLE                         R74 0 0
      521 SETTABLEKS                       R74 R73 K113 ["manageableGroups"]
      523 NEWTABLE                         R74 0 0
      525 SETTABLEKS                       R74 R73 K114 ["assetTypeAgents"]
      527 LOADB                            R74 1
      528 SETTABLEKS                       R74 R73 K115 ["isVerifiedCreator"]
      530 LOADNIL                          R74
      531 SETTABLEKS                       R74 R73 K116 ["networkError"]
      533 LOADNIL                          R74
      534 SETTABLEKS                       R74 R73 K117 ["networkErrorAction"]
      536 LOADN                            R74 0
      537 SETTABLEKS                       R74 R73 K118 ["progressPercentage"]
      539 LOADNIL                          R74
      540 SETTABLEKS                       R74 R73 K119 ["progressTitle"]
      542 LOADNIL                          R74
      543 SETTABLEKS                       R74 R73 K120 ["progressText"]
      545 NEWTABLE                         R74 0 0
      547 SETTABLEKS                       R74 R73 K121 ["networkTable"]
      549 LOADB                            R74 0
      550 SETTABLEKS                       R74 R73 K122 ["fetchedAll"]
      552 LOADN                            R74 0
      553 SETTABLEKS                       R74 R73 K123 ["loadingPage"]
      555 LOADN                            R74 1
      556 SETTABLEKS                       R74 R73 K124 ["currentPage"]
      558 GETTABLEKS                       R74 R5 K125 ["createDefaultCursor"]
      560 CALL                             R74 0 1
      561 SETTABLEKS                       R74 R73 K126 ["overrideCursor"]
      563 NEWTABLE                         R74 0 0
      565 SETTABLEKS                       R74 R73 K127 ["groupMetadata"]
      567 LOADNIL                          R74
      568 SETTABLEKS                       R74 R73 K128 ["localUserFriends"]
      570 LOADK                            R74 K129 [""]
      571 SETTABLEKS                       R74 R73 K130 ["searchText"]
      573 LOADB                            R74 0
      574 SETTABLEKS                       R74 R73 K131 ["success"]
      576 NEWTABLE                         R74 0 0
      578 SETTABLEKS                       R74 R73 K132 ["collaborators"]
      580 LOADB                            R74 0
      581 SETTABLEKS                       R74 R73 K133 ["isPackageAsset"]
      583 NEWTABLE                         R74 0 0
      585 SETTABLEKS                       R74 R73 K134 ["packagePermissions"]
      587 NEWTABLE                         R74 0 0
      589 SETTABLEKS                       R74 R73 K135 ["descendantPermissions"]
      591 LOADNIL                          R74
      592 SETTABLEKS                       R74 R73 K136 ["iconFile"]
      594 LOADNIL                          R74
      595 SETTABLEKS                       R74 R73 K137 ["deleteLocal"]
      597 LOADB                            R74 1
      598 SETTABLEKS                       R74 R73 K138 ["animationSectionValid"]
      600 NEWTABLE                         R74 0 0
      602 SETTABLEKS                       R74 R73 K139 ["tagSuggestions"]
      604 LOADN                            R74 0
      605 SETTABLEKS                       R74 R73 K140 ["latestTagSuggestionTime"]
      607 LOADK                            R74 K129 [""]
      608 SETTABLEKS                       R74 R73 K141 ["latestTagSearchQuery"]
      610 NEWTABLE                         R74 0 0
      612 SETTABLEKS                       R74 R73 K142 ["publishingRequirements"]
      614 MOVE                             R75 R67
      615 CALL                             R75 0 1
      616 JUMPIFNOT                        R75 ; [+3]
      617 NEWTABLE                         R74 0 0
      619 JUMP                             ; [+1]
      620 LOADNIL                          R74
      621 SETTABLEKS                       R74 R73 K143 ["sellerStatusData"]
      623 LOADB                            R74 0
      624 SETTABLEKS                       R74 R73 K144 ["groupBundlesUploadEnabledForUser"]
      626 NEWTABLE                         R74 0 0
      628 SETTABLEKS                       R74 R73 K145 ["allowedGroupsForUpload"]
      630 NEWTABLE                         R74 0 0
      632 SETTABLEKS                       R74 R73 K146 ["privateAvatarAssetIds"]
      634 LOADB                            R74 0
      635 SETTABLEKS                       R74 R73 K147 ["isAvatarItemDialogFlowEnabled"]
      637 LOADB                            R74 1
      638 SETTABLEKS                       R74 R73 K148 ["avatarItemDialogButtonEnabled"]
      640 GETTABLEKS                       R74 R66 K149 ["Disabled"]
      642 SETTABLEKS                       R74 R73 K150 ["avatarItemDialogType"]
      644 LOADNIL                          R74
      645 SETTABLEKS                       R74 R73 K151 ["nonBlockingDependencyIssues"]
      647 NEWTABLE                         R74 64 0
      649 GETTABLEKS                       R75 R39 K152 ["name"]
      651 DUPCLOSURE                       R76 K153 [PROTO_1]
      652 CAPTURE                          VAL R2
      653 SETTABLE                         R76 R74 R75
      654 GETTABLEKS                       R75 R9 K152 ["name"]
      656 DUPCLOSURE                       R76 K154 [PROTO_2]
      657 CAPTURE                          VAL R2
      658 SETTABLE                         R76 R74 R75
      659 GETTABLEKS                       R75 R10 K152 ["name"]
      661 DUPCLOSURE                       R76 K155 [PROTO_3]
      662 CAPTURE                          VAL R2
      663 SETTABLE                         R76 R74 R75
      664 GETTABLEKS                       R75 R11 K152 ["name"]
      666 DUPCLOSURE                       R76 K156 [PROTO_4]
      667 CAPTURE                          VAL R2
      668 SETTABLE                         R76 R74 R75
      669 GETTABLEKS                       R75 R16 K152 ["name"]
      671 DUPCLOSURE                       R76 K157 [PROTO_5]
      672 CAPTURE                          VAL R2
      673 SETTABLE                         R76 R74 R75
      674 GETTABLEKS                       R75 R64 K152 ["name"]
      676 MOVE                             R77 R69
      677 CALL                             R77 0 1
      678 JUMPIFNOT                        R77 ; [+3]
      679 DUPCLOSURE                       R76 K158 [PROTO_6]
      680 CAPTURE                          VAL R2
      681 JUMP                             ; [+1]
      682 LOADNIL                          R76
      683 SETTABLE                         R76 R74 R75
      684 GETTABLEKS                       R75 R17 K152 ["name"]
      686 DUPCLOSURE                       R76 K159 [PROTO_7]
      687 CAPTURE                          VAL R2
      688 SETTABLE                         R76 R74 R75
      689 GETTABLEKS                       R75 R12 K152 ["name"]
      691 DUPCLOSURE                       R76 K160 [PROTO_8]
      692 CAPTURE                          VAL R2
      693 SETTABLE                         R76 R74 R75
      694 GETTABLEKS                       R75 R13 K152 ["name"]
      696 DUPCLOSURE                       R76 K161 [PROTO_9]
      697 CAPTURE                          VAL R2
      698 SETTABLE                         R76 R74 R75
      699 GETTABLEKS                       R75 R14 K152 ["name"]
      701 DUPCLOSURE                       R76 K162 [PROTO_10]
      702 CAPTURE                          VAL R68
      703 CAPTURE                          VAL R2
      704 SETTABLE                         R76 R74 R75
      705 GETTABLEKS                       R75 R15 K152 ["name"]
      707 DUPCLOSURE                       R76 K163 [PROTO_11]
      708 CAPTURE                          VAL R2
      709 SETTABLE                         R76 R74 R75
      710 GETTABLEKS                       R75 R38 K152 ["name"]
      712 DUPCLOSURE                       R76 K164 [PROTO_12]
      713 CAPTURE                          VAL R2
      714 SETTABLE                         R76 R74 R75
      715 GETTABLEKS                       R75 R18 K152 ["name"]
      717 DUPCLOSURE                       R76 K165 [PROTO_13]
      718 CAPTURE                          VAL R2
      719 SETTABLE                         R76 R74 R75
      720 GETTABLEKS                       R75 R19 K152 ["name"]
      722 DUPCLOSURE                       R76 K166 [PROTO_14]
      723 CAPTURE                          VAL R2
      724 SETTABLE                         R76 R74 R75
      725 GETTABLEKS                       R75 R20 K152 ["name"]
      727 DUPCLOSURE                       R76 K167 [PROTO_15]
      728 CAPTURE                          VAL R2
      729 SETTABLE                         R76 R74 R75
      730 GETTABLEKS                       R75 R23 K152 ["name"]
      732 DUPCLOSURE                       R76 K168 [PROTO_16]
      733 CAPTURE                          VAL R2
      734 SETTABLE                         R76 R74 R75
      735 GETTABLEKS                       R75 R56 K152 ["name"]
      737 DUPCLOSURE                       R76 K169 [PROTO_17]
      738 CAPTURE                          VAL R2
      739 SETTABLE                         R76 R74 R75
      740 GETTABLEKS                       R75 R21 K152 ["name"]
      742 DUPCLOSURE                       R76 K170 [PROTO_18]
      743 CAPTURE                          VAL R2
      744 SETTABLE                         R76 R74 R75
      745 GETTABLEKS                       R75 R22 K152 ["name"]
      747 DUPCLOSURE                       R76 K171 [PROTO_19]
      748 CAPTURE                          VAL R2
      749 SETTABLE                         R76 R74 R75
      750 GETTABLEKS                       R75 R24 K152 ["name"]
      752 DUPCLOSURE                       R76 K172 [PROTO_20]
      753 CAPTURE                          VAL R2
      754 SETTABLE                         R76 R74 R75
      755 GETTABLEKS                       R75 R25 K152 ["name"]
      757 DUPCLOSURE                       R76 K173 [PROTO_21]
      758 CAPTURE                          VAL R2
      759 SETTABLE                         R76 R74 R75
      760 GETTABLEKS                       R75 R29 K152 ["name"]
      762 DUPCLOSURE                       R76 K174 [PROTO_22]
      763 CAPTURE                          VAL R2
      764 SETTABLE                         R76 R74 R75
      765 GETTABLEKS                       R75 R26 K152 ["name"]
      767 DUPCLOSURE                       R76 K175 [PROTO_23]
      768 CAPTURE                          VAL R2
      769 SETTABLE                         R76 R74 R75
      770 GETTABLEKS                       R75 R27 K152 ["name"]
      772 DUPCLOSURE                       R76 K176 [PROTO_24]
      773 CAPTURE                          VAL R2
      774 SETTABLE                         R76 R74 R75
      775 GETTABLEKS                       R75 R28 K152 ["name"]
      777 DUPCLOSURE                       R76 K177 [PROTO_25]
      778 CAPTURE                          VAL R2
      779 SETTABLE                         R76 R74 R75
      780 GETTABLEKS                       R75 R30 K152 ["name"]
      782 DUPCLOSURE                       R76 K178 [PROTO_26]
      783 CAPTURE                          VAL R2
      784 SETTABLE                         R76 R74 R75
      785 GETTABLEKS                       R75 R31 K152 ["name"]
      787 DUPCLOSURE                       R76 K179 [PROTO_27]
      788 CAPTURE                          VAL R2
      789 SETTABLE                         R76 R74 R75
      790 GETTABLEKS                       R75 R32 K152 ["name"]
      792 DUPCLOSURE                       R76 K180 [PROTO_28]
      793 CAPTURE                          VAL R2
      794 SETTABLE                         R76 R74 R75
      795 GETTABLEKS                       R75 R33 K152 ["name"]
      797 DUPCLOSURE                       R76 K181 [PROTO_29]
      798 CAPTURE                          VAL R2
      799 SETTABLE                         R76 R74 R75
      800 GETTABLEKS                       R75 R34 K152 ["name"]
      802 DUPCLOSURE                       R76 K182 [PROTO_30]
      803 CAPTURE                          VAL R70
      804 CAPTURE                          VAL R2
      805 SETTABLE                         R76 R74 R75
      806 GETTABLEKS                       R75 R35 K183 ["LoadedLocalUserFriends"]
      808 GETTABLEKS                       R75 R75 K152 ["name"]
      810 DUPCLOSURE                       R76 K184 [PROTO_31]
      811 CAPTURE                          VAL R2
      812 SETTABLE                         R76 R74 R75
      813 GETTABLEKS                       R75 R35 K185 ["LoadedLocalUserGroups"]
      815 GETTABLEKS                       R75 R75 K152 ["name"]
      817 DUPCLOSURE                       R76 K186 [PROTO_32]
      818 CAPTURE                          VAL R2
      819 SETTABLE                         R76 R74 R75
      820 GETTABLEKS                       R75 R35 K187 ["LoadingLocalUserFriends"]
      822 GETTABLEKS                       R75 R75 K152 ["name"]
      824 DUPCLOSURE                       R76 K188 [PROTO_33]
      825 CAPTURE                          VAL R2
      826 CAPTURE                          VAL R6
      827 SETTABLE                         R76 R74 R75
      828 GETTABLEKS                       R75 R35 K189 ["LoadingLocalUserGroups"]
      830 GETTABLEKS                       R75 R75 K152 ["name"]
      832 DUPCLOSURE                       R76 K190 [PROTO_34]
      833 CAPTURE                          VAL R2
      834 CAPTURE                          VAL R6
      835 SETTABLE                         R76 R74 R75
      836 GETTABLEKS                       R75 R35 K191 ["SearchTextChanged"]
      838 GETTABLEKS                       R75 R75 K152 ["name"]
      840 DUPCLOSURE                       R76 K192 [PROTO_35]
      841 CAPTURE                          VAL R2
      842 SETTABLE                         R76 R74 R75
      843 GETTABLEKS                       R75 R36 K152 ["name"]
      845 DUPCLOSURE                       R76 K193 [PROTO_36]
      846 CAPTURE                          VAL R2
      847 SETTABLE                         R76 R74 R75
      848 GETTABLEKS                       R75 R37 K152 ["name"]
      850 DUPCLOSURE                       R76 K194 [PROTO_37]
      851 CAPTURE                          VAL R2
      852 SETTABLE                         R76 R74 R75
      853 GETTABLEKS                       R75 R40 K152 ["name"]
      855 DUPCLOSURE                       R76 K195 [PROTO_38]
      856 CAPTURE                          VAL R70
      857 CAPTURE                          VAL R2
      858 SETTABLE                         R76 R74 R75
      859 GETTABLEKS                       R75 R41 K152 ["name"]
      861 DUPCLOSURE                       R76 K196 [PROTO_39]
      862 CAPTURE                          VAL R2
      863 SETTABLE                         R76 R74 R75
      864 GETTABLEKS                       R75 R42 K152 ["name"]
      866 DUPCLOSURE                       R76 K197 [PROTO_40]
      867 CAPTURE                          VAL R2
      868 SETTABLE                         R76 R74 R75
      869 GETTABLEKS                       R75 R43 K152 ["name"]
      871 DUPCLOSURE                       R76 K198 [PROTO_41]
      872 CAPTURE                          VAL R2
      873 SETTABLE                         R76 R74 R75
      874 GETTABLEKS                       R75 R44 K152 ["name"]
      876 DUPCLOSURE                       R76 K199 [PROTO_42]
      877 CAPTURE                          VAL R2
      878 SETTABLE                         R76 R74 R75
      879 GETTABLEKS                       R75 R45 K152 ["name"]
      881 DUPCLOSURE                       R76 K200 [PROTO_43]
      882 CAPTURE                          VAL R2
      883 SETTABLE                         R76 R74 R75
      884 GETTABLEKS                       R75 R46 K152 ["name"]
      886 DUPCLOSURE                       R76 K201 [PROTO_44]
      887 CAPTURE                          VAL R2
      888 SETTABLE                         R76 R74 R75
      889 GETTABLEKS                       R75 R47 K152 ["name"]
      891 DUPCLOSURE                       R76 K202 [PROTO_45]
      892 CAPTURE                          VAL R2
      893 SETTABLE                         R76 R74 R75
      894 GETTABLEKS                       R75 R48 K152 ["name"]
      896 DUPCLOSURE                       R76 K203 [PROTO_46]
      897 CAPTURE                          VAL R2
      898 SETTABLE                         R76 R74 R75
      899 GETTABLEKS                       R75 R49 K152 ["name"]
      901 DUPCLOSURE                       R76 K204 [PROTO_47]
      902 CAPTURE                          VAL R2
      903 SETTABLE                         R76 R74 R75
      904 GETTABLEKS                       R75 R50 K152 ["name"]
      906 DUPCLOSURE                       R76 K205 [PROTO_48]
      907 CAPTURE                          VAL R2
      908 SETTABLE                         R76 R74 R75
      909 GETTABLEKS                       R75 R51 K152 ["name"]
      911 DUPCLOSURE                       R76 K206 [PROTO_49]
      912 CAPTURE                          VAL R2
      913 SETTABLE                         R76 R74 R75
      914 GETTABLEKS                       R75 R52 K152 ["name"]
      916 DUPCLOSURE                       R76 K207 [PROTO_50]
      917 CAPTURE                          VAL R2
      918 SETTABLE                         R76 R74 R75
      919 GETTABLEKS                       R75 R53 K152 ["name"]
      921 DUPCLOSURE                       R76 K208 [PROTO_51]
      922 CAPTURE                          VAL R2
      923 SETTABLE                         R76 R74 R75
      924 GETTABLEKS                       R75 R54 K152 ["name"]
      926 DUPCLOSURE                       R76 K209 [PROTO_52]
      927 CAPTURE                          VAL R2
      928 SETTABLE                         R76 R74 R75
      929 GETTABLEKS                       R75 R55 K152 ["name"]
      931 DUPCLOSURE                       R76 K210 [PROTO_53]
      932 CAPTURE                          VAL R2
      933 SETTABLE                         R76 R74 R75
      934 GETTABLEKS                       R75 R57 K152 ["name"]
      936 DUPCLOSURE                       R76 K211 [PROTO_54]
      937 CAPTURE                          VAL R2
      938 SETTABLE                         R76 R74 R75
      939 GETTABLEKS                       R75 R58 K152 ["name"]
      941 MOVE                             R77 R67
      942 CALL                             R77 0 1
      943 JUMPIFNOT                        R77 ; [+3]
      944 DUPCLOSURE                       R76 K212 [PROTO_55]
      945 CAPTURE                          VAL R2
      946 JUMP                             ; [+1]
      947 LOADNIL                          R76
      948 SETTABLE                         R76 R74 R75
      949 GETTABLEKS                       R75 R59 K152 ["name"]
      951 DUPCLOSURE                       R76 K213 [PROTO_56]
      952 CAPTURE                          VAL R2
      953 SETTABLE                         R76 R74 R75
      954 GETTABLEKS                       R75 R60 K152 ["name"]
      956 DUPCLOSURE                       R76 K214 [PROTO_57]
      957 CAPTURE                          VAL R2
      958 SETTABLE                         R76 R74 R75
      959 GETTABLEKS                       R75 R61 K152 ["name"]
      961 DUPCLOSURE                       R76 K215 [PROTO_58]
      962 CAPTURE                          VAL R66
      963 CAPTURE                          VAL R2
      964 SETTABLE                         R76 R74 R75
      965 GETTABLEKS                       R75 R62 K152 ["name"]
      967 DUPCLOSURE                       R76 K216 [PROTO_59]
      968 CAPTURE                          VAL R2
      969 CAPTURE                          VAL R66
      970 SETTABLE                         R76 R74 R75
      971 GETTABLEKS                       R75 R63 K152 ["name"]
      973 DUPCLOSURE                       R76 K217 [PROTO_60]
      974 CAPTURE                          VAL R2
      975 CAPTURE                          VAL R66
      976 SETTABLE                         R76 R74 R75
      977 CALL                             R72 2 -1
      978 RETURN                           R72 -1
