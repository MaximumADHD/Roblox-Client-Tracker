PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 GETTABLEKS                       R4 R1 K2 ["storeData"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetId"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetId"]
        9 SETTABLEKS                       R5 R4 K2 ["assetId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetTypeEnum"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetTypeEnum"]
        9 SETTABLEKS                       R5 R4 K2 ["assetTypeEnum"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetTypeValidationSucceeded"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetTypeValidationSucceeded"]
        9 SETTABLEKS                       R5 R4 K2 ["assetTypeValidationSucceeded"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"currentScreen"}]
        7 GETTABLEKS                       R5 R1 K2 ["currentScreen"]
        9 SETTABLEKS                       R5 R4 K2 ["currentScreen"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"nonBlockingDependencyIssues"}]
        7 GETTABLEKS                       R5 R1 K2 ["nonBlockingDependencyIssues"]
        9 SETTABLEKS                       R5 R4 K2 ["nonBlockingDependencyIssues"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"versionHistory"}]
        7 GETTABLEKS                       R5 R1 K2 ["versionHistory"]
        9 SETTABLEKS                       R5 R4 K2 ["versionHistory"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"packageDescriptions"}]
        7 GETTABLEKS                       R5 R1 K2 ["packageDescriptions"]
        9 SETTABLEKS                       R5 R4 K2 ["packageDescriptions"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetConfigData"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetConfigData"]
        9 SETTABLEKS                       R5 R4 K2 ["assetConfigData"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetGroupData"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetGroupData"]
        9 SETTABLEKS                       R5 R4 K2 ["assetGroupData"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"validateAnimationSucceeded"}]
        7 GETTABLEKS                       R5 R1 K2 ["validateAnimationSucceeded"]
        9 SETTABLEKS                       R5 R4 K2 ["validateAnimationSucceeded"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"currentTab"}]
        7 GETTABLEKS                       R5 R1 K4 ["tabItem"]
        9 SETTABLEKS                       R5 R4 K2 ["currentTab"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"manageableGroups"}]
        7 GETTABLEKS                       R5 R1 K2 ["manageableGroups"]
        9 SETTABLEKS                       R5 R4 K2 ["manageableGroups"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isVerifiedCreator"}]
        7 GETTABLEKS                       R5 R1 K2 ["isVerifiedCreator"]
        9 SETTABLEKS                       R5 R4 K2 ["isVerifiedCreator"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"loadingPage"}]
        7 GETTABLEKS                       R5 R1 K2 ["loadingPage"]
        9 SETTABLEKS                       R5 R4 K2 ["loadingPage"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"currentPage"}]
        7 GETTABLEKS                       R5 R1 K2 ["currentPage"]
        9 SETTABLEKS                       R5 R4 K2 ["currentPage"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"overrideCursor"}]
        7 GETTABLEKS                       R5 R1 K2 ["overrideCursor"]
        9 SETTABLEKS                       R5 R4 K2 ["overrideCursor"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"thumbnailStatus"}]
        7 GETTABLEKS                       R5 R1 K2 ["thumbnailStatus"]
        9 SETTABLEKS                       R5 R4 K2 ["thumbnailStatus"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_28:
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

PROTO_29:
        0 GETIMPORT                        R3 K2 [Enum.CreatorType]
        2 GETTABLEKS                       R4 R0 K3 ["assetConfigData"]
        4 GETTABLEKS                       R4 R4 K4 ["Creator"]
        6 GETTABLEKS                       R4 R4 K5 ["type"]
        8 GETTABLE                         R2 R3 R4
        9 GETIMPORT                        R3 K7 [Enum.CreatorType.User]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 RETURN                           R0 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K8 ["Dictionary"]
       17 GETTABLEKS                       R2 R2 K9 ["join"]
       19 MOVE                             R3 R0
       20 DUPTABLE                         R4 K10 [{"assetConfigData"}]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K8 ["Dictionary"]
       24 GETTABLEKS                       R5 R5 K9 ["join"]
       26 GETTABLEKS                       R6 R0 K3 ["assetConfigData"]
       28 DUPTABLE                         R7 K11 [{"Creator"}]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K8 ["Dictionary"]
       32 GETTABLEKS                       R8 R8 K9 ["join"]
       34 GETTABLEKS                       R9 R0 K3 ["assetConfigData"]
       36 GETTABLEKS                       R9 R9 K4 ["Creator"]
       38 DUPTABLE                         R10 K13 [{"username"}]
       39 GETTABLEKS                       R11 R1 K14 ["ownerUsername"]
       41 SETTABLEKS                       R11 R10 K12 ["username"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K4 ["Creator"]
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K3 ["assetConfigData"]
       49 CALL                             R2 2 -1
       50 RETURN                           R2 -1

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"localUserFriends"}]
        7 GETUPVAL                         R5 1
        8 SETTABLEKS                       R5 R4 K2 ["localUserFriends"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"localUserGroups"}]
        7 GETUPVAL                         R5 1
        8 SETTABLEKS                       R5 R4 K2 ["localUserGroups"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"searchText"}]
        7 GETTABLEKS                       R5 R1 K4 ["text"]
        9 SETTABLEKS                       R5 R4 K2 ["searchText"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isPackageAsset"}]
        7 GETTABLEKS                       R5 R1 K2 ["isPackageAsset"]
        9 SETTABLEKS                       R5 R4 K2 ["isPackageAsset"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_37:
        0 GETIMPORT                        R3 K2 [Enum.CreatorType]
        2 GETTABLEKS                       R4 R0 K3 ["assetConfigData"]
        4 GETTABLEKS                       R4 R4 K4 ["Creator"]
        6 GETTABLEKS                       R4 R4 K5 ["type"]
        8 GETTABLE                         R2 R3 R4
        9 GETIMPORT                        R3 K7 [Enum.CreatorType.Group]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 RETURN                           R0 1
       14 GETTABLEKS                       R2 R0 K3 ["assetConfigData"]
       16 GETTABLEKS                       R2 R2 K4 ["Creator"]
       18 GETTABLEKS                       R2 R2 K8 ["targetId"]
       20 GETIMPORT                        R3 K10 [pairs]
       22 GETTABLEKS                       R4 R1 K11 ["groupRoleInfo"]
       24 CALL                             R3 1 3
       25 FORGPREP_NEXT                    R3
       26 GETIMPORT                        R8 K10 [pairs]
       28 GETTABLE                         R9 R0 R2
       29 GETTABLEKS                       R9 R9 K12 ["groupMetadata"]
       31 GETTABLEKS                       R9 R9 K13 ["Roles"]
       33 CALL                             R8 1 3
       34 FORGPREP_NEXT                    R8
       35 GETTABLEKS                       R13 R7 K14 ["name"]
       37 GETTABLEKS                       R14 R12 K15 ["Name"]
       39 JUMPIFNOTEQ                      R13 R14 ; [+19]
       41 GETUPVAL                         R13 0
       42 GETTABLEKS                       R13 R13 K16 ["Dictionary"]
       44 GETTABLEKS                       R13 R13 K17 ["join"]
       46 MOVE                             R14 R12
       47 DUPTABLE                         R15 K19 [{"Id"}]
       48 GETTABLEKS                       R16 R7 K20 ["id"]
       50 SETTABLEKS                       R16 R15 K18 ["Id"]
       52 CALL                             R13 2 1
       53 GETTABLE                         R14 R0 R2
       54 GETTABLEKS                       R14 R14 K12 ["groupMetadata"]
       56 GETTABLEKS                       R14 R14 K13 ["Roles"]
       58 SETTABLE                         R13 R14 R11
       59 FORGLOOP                         R8 2 ; [-25]
       61 FORGLOOP                         R3 2 ; [-36]
       63 RETURN                           R0 1

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"hasPublishingPreferences"}]
        7 GETTABLEKS                       R5 R1 K2 ["hasPublishingPreferences"]
        9 SETTABLEKS                       R5 R4 K2 ["hasPublishingPreferences"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_43:
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

PROTO_44:
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

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetTypeAgents"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetTypeAgents"]
        9 SETTABLEKS                       R5 R4 K2 ["assetTypeAgents"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"descendantPermissions"}]
        7 GETTABLEKS                       R5 R1 K4 ["permission"]
        9 SETTABLEKS                       R5 R4 K2 ["descendantPermissions"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_47:
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

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"publishingRequirements"}]
        7 GETTABLEKS                       R5 R1 K2 ["publishingRequirements"]
        9 SETTABLEKS                       R5 R4 K2 ["publishingRequirements"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetMediaIds"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetMediaIds"]
        9 SETTABLEKS                       R5 R4 K2 ["assetMediaIds"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetMediaMetadataArray"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetMediaMetadataArray"]
        9 SETTABLEKS                       R5 R4 K2 ["assetMediaMetadataArray"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_53:
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

PROTO_54:
        0 GETTABLEKS                       R2 R1 K0 ["sellerStatusData"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"sellerStatusData"}]
        9 SETTABLEKS                       R2 R5 K0 ["sellerStatusData"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"allowedGroupsForUpload"}]
        7 GETTABLEKS                       R5 R1 K2 ["allowedGroupsForUpload"]
        9 SETTABLEKS                       R5 R4 K2 ["allowedGroupsForUpload"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_56:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K7 [{["isAvatarItemDialogFlowEnabled"] = True, ["avatarItemDialogButtonEnabled"] = False, ["privateAvatarAssetIds"]}]
        7 NEWTABLE                         R5 0 0
        9 SETTABLEKS                       R5 R4 K6 ["privateAvatarAssetIds"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_57:
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

PROTO_58:
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
      389 GETTABLEKS                       R69 R69 K77 ["getFFlagCheckAvatarAssetPrivacy"]
      391 CALL                             R68 1 1
      392 GETIMPORT                        R69 K5 [require]
      394 GETTABLEKS                       R70 R0 K8 ["Src"]
      396 GETTABLEKS                       R70 R70 K76 ["Flags"]
      398 GETTABLEKS                       R70 R70 K78 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      400 CALL                             R69 1 1
      401 GETIMPORT                        R70 K5 [require]
      403 GETTABLEKS                       R71 R0 K8 ["Src"]
      405 GETTABLEKS                       R71 R71 K9 ["Util"]
      407 GETTABLEKS                       R71 R71 K74 ["SharedFlags"]
      409 GETTABLEKS                       R71 R71 K79 ["getFFlagToolboxModelCreationWarningWindow"]
      411 CALL                             R70 1 1
      412 GETTABLEKS                       R71 R3 K80 ["createReducer"]
      414 NEWTABLE                         R72 128 0
      416 NEWTABLE                         R73 0 0
      418 SETTABLEKS                       R73 R72 K81 ["assetConfigData"]
      420 NEWTABLE                         R73 0 0
      422 SETTABLEKS                       R73 R72 K82 ["assetGroupData"]
      424 NEWTABLE                         R73 0 0
      426 SETTABLEKS                       R73 R72 K83 ["idToFiatProductMap"]
      428 LOADNIL                          R73
      429 SETTABLEKS                       R73 R72 K84 ["versionHistory"]
      431 NEWTABLE                         R73 0 0
      433 SETTABLEKS                       R73 R72 K85 ["packageDescriptions"]
      435 LOADNIL                          R73
      436 SETTABLEKS                       R73 R72 K86 ["versionHistoryWithDescriptions"]
      438 NEWTABLE                         R73 0 0
      440 SETTABLEKS                       R73 R72 K87 ["changed"]
      442 LOADNIL                          R73
      443 SETTABLEKS                       R73 R72 K88 ["assetId"]
      445 LOADNIL                          R73
      446 SETTABLEKS                       R73 R72 K89 ["thumbnailStatus"]
      448 LOADNIL                          R73
      449 SETTABLEKS                       R73 R72 K90 ["instances"]
      451 LOADNIL                          R73
      452 SETTABLEKS                       R73 R72 K91 ["sourceInstances"]
      454 GETTABLEKS                       R73 R7 K92 ["FLOW_TYPE"]
      456 GETTABLEKS                       R73 R73 K93 ["UPLOAD_FLOW"]
      458 SETTABLEKS                       R73 R72 K94 ["screenFlowType"]
      460 LOADNIL                          R73
      461 SETTABLEKS                       R73 R72 K95 ["assetTypeEnum"]
      463 LOADNIL                          R73
      464 SETTABLEKS                       R73 R72 K96 ["assetSubType"]
      466 LOADNIL                          R73
      467 SETTABLEKS                       R73 R72 K97 ["assetTypeValidationSucceeded"]
      469 LOADNIL                          R73
      470 SETTABLEKS                       R73 R72 K98 ["currentScreen"]
      472 NEWTABLE                         R73 0 0
      474 SETTABLEKS                       R73 R72 K99 ["screenConfigs"]
      476 NEWTABLE                         R73 0 0
      478 SETTABLEKS                       R73 R72 K100 ["allowedAssetTypesForRelease"]
      480 NEWTABLE                         R73 0 0
      482 SETTABLEKS                       R73 R72 K101 ["allowedAssetTypesForUpload"]
      484 NEWTABLE                         R73 0 0
      486 SETTABLEKS                       R73 R72 K102 ["allowedBundleTypeSettings"]
      488 LOADB                            R73 1
      489 SETTABLEKS                       R73 R72 K103 ["canAffordUploadFee"]
      491 LOADN                            R73 0
      492 SETTABLEKS                       R73 R72 K104 ["uploadFee"]
      494 LOADB                            R73 0
      495 SETTABLEKS                       R73 R72 K105 ["hasPublishingPreferences"]
      497 LOADB                            R73 0
      498 SETTABLEKS                       R73 R72 K106 ["hasPublishingFeePreview"]
      500 LOADN                            R73 0
      501 SETTABLEKS                       R73 R72 K107 ["publishingFeePreview"]
      503 NEWTABLE                         R73 0 0
      505 SETTABLEKS                       R73 R72 K108 ["specialAttributes"]
      507 LOADB                            R73 0
      508 SETTABLEKS                       R73 R72 K109 ["hasMetadataPermission"]
      510 LOADNIL                          R73
      511 SETTABLEKS                       R73 R72 K110 ["currentTab"]
      513 NEWTABLE                         R73 0 0
      515 SETTABLEKS                       R73 R72 K111 ["resultsArray"]
      517 NEWTABLE                         R73 0 0
      519 SETTABLEKS                       R73 R72 K112 ["manageableGroups"]
      521 NEWTABLE                         R73 0 0
      523 SETTABLEKS                       R73 R72 K113 ["assetTypeAgents"]
      525 LOADB                            R73 1
      526 SETTABLEKS                       R73 R72 K114 ["isVerifiedCreator"]
      528 LOADNIL                          R73
      529 SETTABLEKS                       R73 R72 K115 ["networkError"]
      531 LOADNIL                          R73
      532 SETTABLEKS                       R73 R72 K116 ["networkErrorAction"]
      534 LOADN                            R73 0
      535 SETTABLEKS                       R73 R72 K117 ["progressPercentage"]
      537 LOADNIL                          R73
      538 SETTABLEKS                       R73 R72 K118 ["progressTitle"]
      540 LOADNIL                          R73
      541 SETTABLEKS                       R73 R72 K119 ["progressText"]
      543 NEWTABLE                         R73 0 0
      545 SETTABLEKS                       R73 R72 K120 ["networkTable"]
      547 LOADB                            R73 0
      548 SETTABLEKS                       R73 R72 K121 ["fetchedAll"]
      550 LOADN                            R73 0
      551 SETTABLEKS                       R73 R72 K122 ["loadingPage"]
      553 LOADN                            R73 1
      554 SETTABLEKS                       R73 R72 K123 ["currentPage"]
      556 GETTABLEKS                       R73 R5 K124 ["createDefaultCursor"]
      558 CALL                             R73 0 1
      559 SETTABLEKS                       R73 R72 K125 ["overrideCursor"]
      561 NEWTABLE                         R73 0 0
      563 SETTABLEKS                       R73 R72 K126 ["groupMetadata"]
      565 LOADNIL                          R73
      566 SETTABLEKS                       R73 R72 K127 ["localUserFriends"]
      568 LOADK                            R73 K128 [""]
      569 SETTABLEKS                       R73 R72 K129 ["searchText"]
      571 LOADB                            R73 0
      572 SETTABLEKS                       R73 R72 K130 ["success"]
      574 NEWTABLE                         R73 0 0
      576 SETTABLEKS                       R73 R72 K131 ["collaborators"]
      578 LOADB                            R73 0
      579 SETTABLEKS                       R73 R72 K132 ["isPackageAsset"]
      581 NEWTABLE                         R73 0 0
      583 SETTABLEKS                       R73 R72 K133 ["packagePermissions"]
      585 NEWTABLE                         R73 0 0
      587 SETTABLEKS                       R73 R72 K134 ["descendantPermissions"]
      589 LOADNIL                          R73
      590 SETTABLEKS                       R73 R72 K135 ["iconFile"]
      592 LOADNIL                          R73
      593 SETTABLEKS                       R73 R72 K136 ["deleteLocal"]
      595 LOADB                            R73 1
      596 SETTABLEKS                       R73 R72 K137 ["animationSectionValid"]
      598 NEWTABLE                         R73 0 0
      600 SETTABLEKS                       R73 R72 K138 ["tagSuggestions"]
      602 LOADN                            R73 0
      603 SETTABLEKS                       R73 R72 K139 ["latestTagSuggestionTime"]
      605 LOADK                            R73 K128 [""]
      606 SETTABLEKS                       R73 R72 K140 ["latestTagSearchQuery"]
      608 NEWTABLE                         R73 0 0
      610 SETTABLEKS                       R73 R72 K141 ["publishingRequirements"]
      612 MOVE                             R74 R67
      613 CALL                             R74 0 1
      614 JUMPIFNOT                        R74 ; [+3]
      615 NEWTABLE                         R73 0 0
      617 JUMP                             ; [+1]
      618 LOADNIL                          R73
      619 SETTABLEKS                       R73 R72 K142 ["sellerStatusData"]
      621 LOADB                            R73 0
      622 SETTABLEKS                       R73 R72 K143 ["groupBundlesUploadEnabledForUser"]
      624 NEWTABLE                         R73 0 0
      626 SETTABLEKS                       R73 R72 K144 ["allowedGroupsForUpload"]
      628 MOVE                             R74 R68
      629 CALL                             R74 0 1
      630 JUMPIFNOT                        R74 ; [+3]
      631 NEWTABLE                         R73 0 0
      633 JUMP                             ; [+1]
      634 LOADNIL                          R73
      635 SETTABLEKS                       R73 R72 K145 ["privateAvatarAssetIds"]
      637 MOVE                             R74 R68
      638 CALL                             R74 0 1
      639 JUMPIFNOT                        R74 ; [+2]
      640 LOADB                            R73 0
      641 JUMP                             ; [+1]
      642 LOADNIL                          R73
      643 SETTABLEKS                       R73 R72 K146 ["isAvatarItemDialogFlowEnabled"]
      645 MOVE                             R74 R68
      646 CALL                             R74 0 1
      647 JUMPIFNOT                        R74 ; [+2]
      648 LOADB                            R73 1
      649 JUMP                             ; [+1]
      650 LOADNIL                          R73
      651 SETTABLEKS                       R73 R72 K147 ["avatarItemDialogButtonEnabled"]
      653 MOVE                             R74 R68
      654 CALL                             R74 0 1
      655 JUMPIFNOT                        R74 ; [+3]
      656 GETTABLEKS                       R73 R66 K148 ["Disabled"]
      658 JUMP                             ; [+1]
      659 LOADNIL                          R73
      660 SETTABLEKS                       R73 R72 K149 ["avatarItemDialogType"]
      662 LOADNIL                          R73
      663 SETTABLEKS                       R73 R72 K150 ["nonBlockingDependencyIssues"]
      665 NEWTABLE                         R73 64 0
      667 GETTABLEKS                       R74 R39 K151 ["name"]
      669 DUPCLOSURE                       R75 K152 [PROTO_0]
      670 CAPTURE                          VAL R2
      671 SETTABLE                         R75 R73 R74
      672 GETTABLEKS                       R74 R9 K151 ["name"]
      674 DUPCLOSURE                       R75 K153 [PROTO_1]
      675 CAPTURE                          VAL R2
      676 SETTABLE                         R75 R73 R74
      677 GETTABLEKS                       R74 R10 K151 ["name"]
      679 DUPCLOSURE                       R75 K154 [PROTO_2]
      680 CAPTURE                          VAL R2
      681 SETTABLE                         R75 R73 R74
      682 GETTABLEKS                       R74 R11 K151 ["name"]
      684 DUPCLOSURE                       R75 K155 [PROTO_3]
      685 CAPTURE                          VAL R2
      686 SETTABLE                         R75 R73 R74
      687 GETTABLEKS                       R74 R16 K151 ["name"]
      689 DUPCLOSURE                       R75 K156 [PROTO_4]
      690 CAPTURE                          VAL R2
      691 SETTABLE                         R75 R73 R74
      692 GETTABLEKS                       R74 R64 K151 ["name"]
      694 MOVE                             R76 R70
      695 CALL                             R76 0 1
      696 JUMPIFNOT                        R76 ; [+3]
      697 DUPCLOSURE                       R75 K157 [PROTO_5]
      698 CAPTURE                          VAL R2
      699 JUMP                             ; [+1]
      700 LOADNIL                          R75
      701 SETTABLE                         R75 R73 R74
      702 GETTABLEKS                       R74 R17 K151 ["name"]
      704 DUPCLOSURE                       R75 K158 [PROTO_6]
      705 CAPTURE                          VAL R2
      706 SETTABLE                         R75 R73 R74
      707 GETTABLEKS                       R74 R12 K151 ["name"]
      709 DUPCLOSURE                       R75 K159 [PROTO_7]
      710 CAPTURE                          VAL R2
      711 SETTABLE                         R75 R73 R74
      712 GETTABLEKS                       R74 R13 K151 ["name"]
      714 DUPCLOSURE                       R75 K160 [PROTO_8]
      715 CAPTURE                          VAL R2
      716 SETTABLE                         R75 R73 R74
      717 GETTABLEKS                       R74 R14 K151 ["name"]
      719 DUPCLOSURE                       R75 K161 [PROTO_9]
      720 CAPTURE                          VAL R69
      721 CAPTURE                          VAL R2
      722 SETTABLE                         R75 R73 R74
      723 GETTABLEKS                       R74 R15 K151 ["name"]
      725 DUPCLOSURE                       R75 K162 [PROTO_10]
      726 CAPTURE                          VAL R2
      727 SETTABLE                         R75 R73 R74
      728 GETTABLEKS                       R74 R38 K151 ["name"]
      730 DUPCLOSURE                       R75 K163 [PROTO_11]
      731 CAPTURE                          VAL R2
      732 SETTABLE                         R75 R73 R74
      733 GETTABLEKS                       R74 R18 K151 ["name"]
      735 DUPCLOSURE                       R75 K164 [PROTO_12]
      736 CAPTURE                          VAL R2
      737 SETTABLE                         R75 R73 R74
      738 GETTABLEKS                       R74 R19 K151 ["name"]
      740 DUPCLOSURE                       R75 K165 [PROTO_13]
      741 CAPTURE                          VAL R2
      742 SETTABLE                         R75 R73 R74
      743 GETTABLEKS                       R74 R20 K151 ["name"]
      745 DUPCLOSURE                       R75 K166 [PROTO_14]
      746 CAPTURE                          VAL R2
      747 SETTABLE                         R75 R73 R74
      748 GETTABLEKS                       R74 R23 K151 ["name"]
      750 DUPCLOSURE                       R75 K167 [PROTO_15]
      751 CAPTURE                          VAL R2
      752 SETTABLE                         R75 R73 R74
      753 GETTABLEKS                       R74 R56 K151 ["name"]
      755 DUPCLOSURE                       R75 K168 [PROTO_16]
      756 CAPTURE                          VAL R2
      757 SETTABLE                         R75 R73 R74
      758 GETTABLEKS                       R74 R21 K151 ["name"]
      760 DUPCLOSURE                       R75 K169 [PROTO_17]
      761 CAPTURE                          VAL R2
      762 SETTABLE                         R75 R73 R74
      763 GETTABLEKS                       R74 R22 K151 ["name"]
      765 DUPCLOSURE                       R75 K170 [PROTO_18]
      766 CAPTURE                          VAL R2
      767 SETTABLE                         R75 R73 R74
      768 GETTABLEKS                       R74 R24 K151 ["name"]
      770 DUPCLOSURE                       R75 K171 [PROTO_19]
      771 CAPTURE                          VAL R2
      772 SETTABLE                         R75 R73 R74
      773 GETTABLEKS                       R74 R25 K151 ["name"]
      775 DUPCLOSURE                       R75 K172 [PROTO_20]
      776 CAPTURE                          VAL R2
      777 SETTABLE                         R75 R73 R74
      778 GETTABLEKS                       R74 R29 K151 ["name"]
      780 DUPCLOSURE                       R75 K173 [PROTO_21]
      781 CAPTURE                          VAL R2
      782 SETTABLE                         R75 R73 R74
      783 GETTABLEKS                       R74 R26 K151 ["name"]
      785 DUPCLOSURE                       R75 K174 [PROTO_22]
      786 CAPTURE                          VAL R2
      787 SETTABLE                         R75 R73 R74
      788 GETTABLEKS                       R74 R27 K151 ["name"]
      790 DUPCLOSURE                       R75 K175 [PROTO_23]
      791 CAPTURE                          VAL R2
      792 SETTABLE                         R75 R73 R74
      793 GETTABLEKS                       R74 R28 K151 ["name"]
      795 DUPCLOSURE                       R75 K176 [PROTO_24]
      796 CAPTURE                          VAL R2
      797 SETTABLE                         R75 R73 R74
      798 GETTABLEKS                       R74 R30 K151 ["name"]
      800 DUPCLOSURE                       R75 K177 [PROTO_25]
      801 CAPTURE                          VAL R2
      802 SETTABLE                         R75 R73 R74
      803 GETTABLEKS                       R74 R31 K151 ["name"]
      805 DUPCLOSURE                       R75 K178 [PROTO_26]
      806 CAPTURE                          VAL R2
      807 SETTABLE                         R75 R73 R74
      808 GETTABLEKS                       R74 R32 K151 ["name"]
      810 DUPCLOSURE                       R75 K179 [PROTO_27]
      811 CAPTURE                          VAL R2
      812 SETTABLE                         R75 R73 R74
      813 GETTABLEKS                       R74 R33 K151 ["name"]
      815 DUPCLOSURE                       R75 K180 [PROTO_28]
      816 CAPTURE                          VAL R2
      817 SETTABLE                         R75 R73 R74
      818 GETTABLEKS                       R74 R34 K151 ["name"]
      820 DUPCLOSURE                       R75 K181 [PROTO_29]
      821 CAPTURE                          VAL R2
      822 SETTABLE                         R75 R73 R74
      823 GETTABLEKS                       R74 R35 K182 ["LoadedLocalUserFriends"]
      825 GETTABLEKS                       R74 R74 K151 ["name"]
      827 DUPCLOSURE                       R75 K183 [PROTO_30]
      828 CAPTURE                          VAL R2
      829 SETTABLE                         R75 R73 R74
      830 GETTABLEKS                       R74 R35 K184 ["LoadedLocalUserGroups"]
      832 GETTABLEKS                       R74 R74 K151 ["name"]
      834 DUPCLOSURE                       R75 K185 [PROTO_31]
      835 CAPTURE                          VAL R2
      836 SETTABLE                         R75 R73 R74
      837 GETTABLEKS                       R74 R35 K186 ["LoadingLocalUserFriends"]
      839 GETTABLEKS                       R74 R74 K151 ["name"]
      841 DUPCLOSURE                       R75 K187 [PROTO_32]
      842 CAPTURE                          VAL R2
      843 CAPTURE                          VAL R6
      844 SETTABLE                         R75 R73 R74
      845 GETTABLEKS                       R74 R35 K188 ["LoadingLocalUserGroups"]
      847 GETTABLEKS                       R74 R74 K151 ["name"]
      849 DUPCLOSURE                       R75 K189 [PROTO_33]
      850 CAPTURE                          VAL R2
      851 CAPTURE                          VAL R6
      852 SETTABLE                         R75 R73 R74
      853 GETTABLEKS                       R74 R35 K190 ["SearchTextChanged"]
      855 GETTABLEKS                       R74 R74 K151 ["name"]
      857 DUPCLOSURE                       R75 K191 [PROTO_34]
      858 CAPTURE                          VAL R2
      859 SETTABLE                         R75 R73 R74
      860 GETTABLEKS                       R74 R36 K151 ["name"]
      862 DUPCLOSURE                       R75 K192 [PROTO_35]
      863 CAPTURE                          VAL R2
      864 SETTABLE                         R75 R73 R74
      865 GETTABLEKS                       R74 R37 K151 ["name"]
      867 DUPCLOSURE                       R75 K193 [PROTO_36]
      868 CAPTURE                          VAL R2
      869 SETTABLE                         R75 R73 R74
      870 GETTABLEKS                       R74 R40 K151 ["name"]
      872 DUPCLOSURE                       R75 K194 [PROTO_37]
      873 CAPTURE                          VAL R2
      874 SETTABLE                         R75 R73 R74
      875 GETTABLEKS                       R74 R41 K151 ["name"]
      877 DUPCLOSURE                       R75 K195 [PROTO_38]
      878 CAPTURE                          VAL R2
      879 SETTABLE                         R75 R73 R74
      880 GETTABLEKS                       R74 R42 K151 ["name"]
      882 DUPCLOSURE                       R75 K196 [PROTO_39]
      883 CAPTURE                          VAL R2
      884 SETTABLE                         R75 R73 R74
      885 GETTABLEKS                       R74 R43 K151 ["name"]
      887 DUPCLOSURE                       R75 K197 [PROTO_40]
      888 CAPTURE                          VAL R2
      889 SETTABLE                         R75 R73 R74
      890 GETTABLEKS                       R74 R44 K151 ["name"]
      892 DUPCLOSURE                       R75 K198 [PROTO_41]
      893 CAPTURE                          VAL R2
      894 SETTABLE                         R75 R73 R74
      895 GETTABLEKS                       R74 R45 K151 ["name"]
      897 DUPCLOSURE                       R75 K199 [PROTO_42]
      898 CAPTURE                          VAL R2
      899 SETTABLE                         R75 R73 R74
      900 GETTABLEKS                       R74 R46 K151 ["name"]
      902 DUPCLOSURE                       R75 K200 [PROTO_43]
      903 CAPTURE                          VAL R2
      904 SETTABLE                         R75 R73 R74
      905 GETTABLEKS                       R74 R47 K151 ["name"]
      907 DUPCLOSURE                       R75 K201 [PROTO_44]
      908 CAPTURE                          VAL R2
      909 SETTABLE                         R75 R73 R74
      910 GETTABLEKS                       R74 R48 K151 ["name"]
      912 DUPCLOSURE                       R75 K202 [PROTO_45]
      913 CAPTURE                          VAL R2
      914 SETTABLE                         R75 R73 R74
      915 GETTABLEKS                       R74 R49 K151 ["name"]
      917 DUPCLOSURE                       R75 K203 [PROTO_46]
      918 CAPTURE                          VAL R2
      919 SETTABLE                         R75 R73 R74
      920 GETTABLEKS                       R74 R50 K151 ["name"]
      922 DUPCLOSURE                       R75 K204 [PROTO_47]
      923 CAPTURE                          VAL R2
      924 SETTABLE                         R75 R73 R74
      925 GETTABLEKS                       R74 R51 K151 ["name"]
      927 DUPCLOSURE                       R75 K205 [PROTO_48]
      928 CAPTURE                          VAL R2
      929 SETTABLE                         R75 R73 R74
      930 GETTABLEKS                       R74 R52 K151 ["name"]
      932 DUPCLOSURE                       R75 K206 [PROTO_49]
      933 CAPTURE                          VAL R2
      934 SETTABLE                         R75 R73 R74
      935 GETTABLEKS                       R74 R53 K151 ["name"]
      937 DUPCLOSURE                       R75 K207 [PROTO_50]
      938 CAPTURE                          VAL R2
      939 SETTABLE                         R75 R73 R74
      940 GETTABLEKS                       R74 R54 K151 ["name"]
      942 DUPCLOSURE                       R75 K208 [PROTO_51]
      943 CAPTURE                          VAL R2
      944 SETTABLE                         R75 R73 R74
      945 GETTABLEKS                       R74 R55 K151 ["name"]
      947 DUPCLOSURE                       R75 K209 [PROTO_52]
      948 CAPTURE                          VAL R2
      949 SETTABLE                         R75 R73 R74
      950 GETTABLEKS                       R74 R57 K151 ["name"]
      952 DUPCLOSURE                       R75 K210 [PROTO_53]
      953 CAPTURE                          VAL R2
      954 SETTABLE                         R75 R73 R74
      955 GETTABLEKS                       R74 R58 K151 ["name"]
      957 MOVE                             R76 R67
      958 CALL                             R76 0 1
      959 JUMPIFNOT                        R76 ; [+3]
      960 DUPCLOSURE                       R75 K211 [PROTO_54]
      961 CAPTURE                          VAL R2
      962 JUMP                             ; [+1]
      963 LOADNIL                          R75
      964 SETTABLE                         R75 R73 R74
      965 GETTABLEKS                       R74 R59 K151 ["name"]
      967 DUPCLOSURE                       R75 K212 [PROTO_55]
      968 CAPTURE                          VAL R2
      969 SETTABLE                         R75 R73 R74
      970 GETTABLEKS                       R74 R60 K151 ["name"]
      972 MOVE                             R76 R68
      973 CALL                             R76 0 1
      974 JUMPIFNOT                        R76 ; [+3]
      975 DUPCLOSURE                       R75 K213 [PROTO_56]
      976 CAPTURE                          VAL R2
      977 JUMP                             ; [+1]
      978 LOADNIL                          R75
      979 SETTABLE                         R75 R73 R74
      980 GETTABLEKS                       R74 R61 K151 ["name"]
      982 MOVE                             R76 R68
      983 CALL                             R76 0 1
      984 JUMPIFNOT                        R76 ; [+4]
      985 DUPCLOSURE                       R75 K214 [PROTO_57]
      986 CAPTURE                          VAL R66
      987 CAPTURE                          VAL R2
      988 JUMP                             ; [+1]
      989 LOADNIL                          R75
      990 SETTABLE                         R75 R73 R74
      991 GETTABLEKS                       R74 R62 K151 ["name"]
      993 MOVE                             R76 R68
      994 CALL                             R76 0 1
      995 JUMPIFNOT                        R76 ; [+4]
      996 DUPCLOSURE                       R75 K215 [PROTO_58]
      997 CAPTURE                          VAL R2
      998 CAPTURE                          VAL R66
      999 JUMP                             ; [+1]
     1000 LOADNIL                          R75
     1001 SETTABLE                         R75 R73 R74
     1002 GETTABLEKS                       R74 R63 K151 ["name"]
     1004 MOVE                             R76 R68
     1005 CALL                             R76 0 1
     1006 JUMPIFNOT                        R76 ; [+4]
     1007 DUPCLOSURE                       R75 K216 [PROTO_59]
     1008 CAPTURE                          VAL R2
     1009 CAPTURE                          VAL R66
     1010 JUMP                             ; [+1]
     1011 LOADNIL                          R75
     1012 SETTABLE                         R75 R73 R74
     1013 CALL                             R71 2 -1
     1014 RETURN                           R71 -1
