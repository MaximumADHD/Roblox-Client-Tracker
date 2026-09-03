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
      412 GETIMPORT                        R71 K5 [require]
      414 GETTABLEKS                       R72 R0 K8 ["Src"]
      416 GETTABLEKS                       R72 R72 K76 ["Flags"]
      418 GETTABLEKS                       R72 R72 K80 ["getFFlagEnableUploadingAvatarAnimations"]
      420 CALL                             R71 1 1
      421 GETTABLEKS                       R72 R3 K81 ["createReducer"]
      423 NEWTABLE                         R73 128 0
      425 NEWTABLE                         R74 0 0
      427 SETTABLEKS                       R74 R73 K82 ["assetConfigData"]
      429 NEWTABLE                         R74 0 0
      431 SETTABLEKS                       R74 R73 K83 ["assetGroupData"]
      433 NEWTABLE                         R74 0 0
      435 SETTABLEKS                       R74 R73 K84 ["idToFiatProductMap"]
      437 LOADNIL                          R74
      438 SETTABLEKS                       R74 R73 K85 ["versionHistory"]
      440 NEWTABLE                         R74 0 0
      442 SETTABLEKS                       R74 R73 K86 ["packageDescriptions"]
      444 LOADNIL                          R74
      445 SETTABLEKS                       R74 R73 K87 ["versionHistoryWithDescriptions"]
      447 NEWTABLE                         R74 0 0
      449 SETTABLEKS                       R74 R73 K88 ["changed"]
      451 LOADNIL                          R74
      452 SETTABLEKS                       R74 R73 K89 ["assetId"]
      454 LOADNIL                          R74
      455 SETTABLEKS                       R74 R73 K90 ["thumbnailStatus"]
      457 LOADNIL                          R74
      458 SETTABLEKS                       R74 R73 K91 ["instances"]
      460 LOADNIL                          R74
      461 SETTABLEKS                       R74 R73 K92 ["sourceInstances"]
      463 GETTABLEKS                       R74 R7 K93 ["FLOW_TYPE"]
      465 GETTABLEKS                       R74 R74 K94 ["UPLOAD_FLOW"]
      467 SETTABLEKS                       R74 R73 K95 ["screenFlowType"]
      469 LOADNIL                          R74
      470 SETTABLEKS                       R74 R73 K96 ["assetTypeEnum"]
      472 LOADNIL                          R74
      473 SETTABLEKS                       R74 R73 K97 ["assetSubType"]
      475 LOADNIL                          R74
      476 SETTABLEKS                       R74 R73 K98 ["assetTypeValidationSucceeded"]
      478 LOADNIL                          R74
      479 SETTABLEKS                       R74 R73 K99 ["currentScreen"]
      481 NEWTABLE                         R74 0 0
      483 SETTABLEKS                       R74 R73 K100 ["screenConfigs"]
      485 NEWTABLE                         R74 0 0
      487 SETTABLEKS                       R74 R73 K101 ["allowedAssetTypesForRelease"]
      489 NEWTABLE                         R74 0 0
      491 SETTABLEKS                       R74 R73 K102 ["allowedAssetTypesForUpload"]
      493 NEWTABLE                         R74 0 0
      495 SETTABLEKS                       R74 R73 K103 ["allowedBundleTypeSettings"]
      497 LOADB                            R74 1
      498 SETTABLEKS                       R74 R73 K104 ["canAffordUploadFee"]
      500 LOADN                            R74 0
      501 SETTABLEKS                       R74 R73 K105 ["uploadFee"]
      503 LOADB                            R74 0
      504 SETTABLEKS                       R74 R73 K106 ["hasPublishingPreferences"]
      506 LOADB                            R74 0
      507 SETTABLEKS                       R74 R73 K107 ["hasPublishingFeePreview"]
      509 LOADN                            R74 0
      510 SETTABLEKS                       R74 R73 K108 ["publishingFeePreview"]
      512 NEWTABLE                         R74 0 0
      514 SETTABLEKS                       R74 R73 K109 ["specialAttributes"]
      516 LOADB                            R74 0
      517 SETTABLEKS                       R74 R73 K110 ["hasMetadataPermission"]
      519 LOADNIL                          R74
      520 SETTABLEKS                       R74 R73 K111 ["currentTab"]
      522 NEWTABLE                         R74 0 0
      524 SETTABLEKS                       R74 R73 K112 ["resultsArray"]
      526 NEWTABLE                         R74 0 0
      528 SETTABLEKS                       R74 R73 K113 ["manageableGroups"]
      530 NEWTABLE                         R74 0 0
      532 SETTABLEKS                       R74 R73 K114 ["assetTypeAgents"]
      534 LOADB                            R74 1
      535 SETTABLEKS                       R74 R73 K115 ["isVerifiedCreator"]
      537 LOADNIL                          R74
      538 SETTABLEKS                       R74 R73 K116 ["networkError"]
      540 LOADNIL                          R74
      541 SETTABLEKS                       R74 R73 K117 ["networkErrorAction"]
      543 LOADN                            R74 0
      544 SETTABLEKS                       R74 R73 K118 ["progressPercentage"]
      546 LOADNIL                          R74
      547 SETTABLEKS                       R74 R73 K119 ["progressTitle"]
      549 LOADNIL                          R74
      550 SETTABLEKS                       R74 R73 K120 ["progressText"]
      552 NEWTABLE                         R74 0 0
      554 SETTABLEKS                       R74 R73 K121 ["networkTable"]
      556 LOADB                            R74 0
      557 SETTABLEKS                       R74 R73 K122 ["fetchedAll"]
      559 LOADN                            R74 0
      560 SETTABLEKS                       R74 R73 K123 ["loadingPage"]
      562 LOADN                            R74 1
      563 SETTABLEKS                       R74 R73 K124 ["currentPage"]
      565 GETTABLEKS                       R74 R5 K125 ["createDefaultCursor"]
      567 CALL                             R74 0 1
      568 SETTABLEKS                       R74 R73 K126 ["overrideCursor"]
      570 NEWTABLE                         R74 0 0
      572 SETTABLEKS                       R74 R73 K127 ["groupMetadata"]
      574 LOADNIL                          R74
      575 SETTABLEKS                       R74 R73 K128 ["localUserFriends"]
      577 LOADK                            R74 K129 [""]
      578 SETTABLEKS                       R74 R73 K130 ["searchText"]
      580 LOADB                            R74 0
      581 SETTABLEKS                       R74 R73 K131 ["success"]
      583 NEWTABLE                         R74 0 0
      585 SETTABLEKS                       R74 R73 K132 ["collaborators"]
      587 LOADB                            R74 0
      588 SETTABLEKS                       R74 R73 K133 ["isPackageAsset"]
      590 NEWTABLE                         R74 0 0
      592 SETTABLEKS                       R74 R73 K134 ["packagePermissions"]
      594 NEWTABLE                         R74 0 0
      596 SETTABLEKS                       R74 R73 K135 ["descendantPermissions"]
      598 LOADNIL                          R74
      599 SETTABLEKS                       R74 R73 K136 ["iconFile"]
      601 LOADNIL                          R74
      602 SETTABLEKS                       R74 R73 K137 ["deleteLocal"]
      604 MOVE                             R75 R71
      605 CALL                             R75 0 1
      606 JUMPIFNOT                        R75 ; [+2]
      607 LOADB                            R74 1
      608 JUMP                             ; [+1]
      609 LOADNIL                          R74
      610 SETTABLEKS                       R74 R73 K138 ["animationSectionValid"]
      612 NEWTABLE                         R74 0 0
      614 SETTABLEKS                       R74 R73 K139 ["tagSuggestions"]
      616 LOADN                            R74 0
      617 SETTABLEKS                       R74 R73 K140 ["latestTagSuggestionTime"]
      619 LOADK                            R74 K129 [""]
      620 SETTABLEKS                       R74 R73 K141 ["latestTagSearchQuery"]
      622 NEWTABLE                         R74 0 0
      624 SETTABLEKS                       R74 R73 K142 ["publishingRequirements"]
      626 MOVE                             R75 R67
      627 CALL                             R75 0 1
      628 JUMPIFNOT                        R75 ; [+3]
      629 NEWTABLE                         R74 0 0
      631 JUMP                             ; [+1]
      632 LOADNIL                          R74
      633 SETTABLEKS                       R74 R73 K143 ["sellerStatusData"]
      635 LOADB                            R74 0
      636 SETTABLEKS                       R74 R73 K144 ["groupBundlesUploadEnabledForUser"]
      638 NEWTABLE                         R74 0 0
      640 SETTABLEKS                       R74 R73 K145 ["allowedGroupsForUpload"]
      642 MOVE                             R75 R68
      643 CALL                             R75 0 1
      644 JUMPIFNOT                        R75 ; [+3]
      645 NEWTABLE                         R74 0 0
      647 JUMP                             ; [+1]
      648 LOADNIL                          R74
      649 SETTABLEKS                       R74 R73 K146 ["privateAvatarAssetIds"]
      651 MOVE                             R75 R68
      652 CALL                             R75 0 1
      653 JUMPIFNOT                        R75 ; [+2]
      654 LOADB                            R74 0
      655 JUMP                             ; [+1]
      656 LOADNIL                          R74
      657 SETTABLEKS                       R74 R73 K147 ["isAvatarItemDialogFlowEnabled"]
      659 MOVE                             R75 R68
      660 CALL                             R75 0 1
      661 JUMPIFNOT                        R75 ; [+2]
      662 LOADB                            R74 1
      663 JUMP                             ; [+1]
      664 LOADNIL                          R74
      665 SETTABLEKS                       R74 R73 K148 ["avatarItemDialogButtonEnabled"]
      667 MOVE                             R75 R68
      668 CALL                             R75 0 1
      669 JUMPIFNOT                        R75 ; [+3]
      670 GETTABLEKS                       R74 R66 K149 ["Disabled"]
      672 JUMP                             ; [+1]
      673 LOADNIL                          R74
      674 SETTABLEKS                       R74 R73 K150 ["avatarItemDialogType"]
      676 LOADNIL                          R74
      677 SETTABLEKS                       R74 R73 K151 ["nonBlockingDependencyIssues"]
      679 NEWTABLE                         R74 64 0
      681 GETTABLEKS                       R75 R39 K152 ["name"]
      683 DUPCLOSURE                       R76 K153 [PROTO_0]
      684 CAPTURE                          VAL R2
      685 SETTABLE                         R76 R74 R75
      686 GETTABLEKS                       R75 R9 K152 ["name"]
      688 DUPCLOSURE                       R76 K154 [PROTO_1]
      689 CAPTURE                          VAL R2
      690 SETTABLE                         R76 R74 R75
      691 GETTABLEKS                       R75 R10 K152 ["name"]
      693 DUPCLOSURE                       R76 K155 [PROTO_2]
      694 CAPTURE                          VAL R2
      695 SETTABLE                         R76 R74 R75
      696 GETTABLEKS                       R75 R11 K152 ["name"]
      698 DUPCLOSURE                       R76 K156 [PROTO_3]
      699 CAPTURE                          VAL R2
      700 SETTABLE                         R76 R74 R75
      701 GETTABLEKS                       R75 R16 K152 ["name"]
      703 DUPCLOSURE                       R76 K157 [PROTO_4]
      704 CAPTURE                          VAL R2
      705 SETTABLE                         R76 R74 R75
      706 GETTABLEKS                       R75 R64 K152 ["name"]
      708 MOVE                             R77 R70
      709 CALL                             R77 0 1
      710 JUMPIFNOT                        R77 ; [+3]
      711 DUPCLOSURE                       R76 K158 [PROTO_5]
      712 CAPTURE                          VAL R2
      713 JUMP                             ; [+1]
      714 LOADNIL                          R76
      715 SETTABLE                         R76 R74 R75
      716 GETTABLEKS                       R75 R17 K152 ["name"]
      718 DUPCLOSURE                       R76 K159 [PROTO_6]
      719 CAPTURE                          VAL R2
      720 SETTABLE                         R76 R74 R75
      721 GETTABLEKS                       R75 R12 K152 ["name"]
      723 DUPCLOSURE                       R76 K160 [PROTO_7]
      724 CAPTURE                          VAL R2
      725 SETTABLE                         R76 R74 R75
      726 GETTABLEKS                       R75 R13 K152 ["name"]
      728 DUPCLOSURE                       R76 K161 [PROTO_8]
      729 CAPTURE                          VAL R2
      730 SETTABLE                         R76 R74 R75
      731 GETTABLEKS                       R75 R14 K152 ["name"]
      733 DUPCLOSURE                       R76 K162 [PROTO_9]
      734 CAPTURE                          VAL R69
      735 CAPTURE                          VAL R2
      736 SETTABLE                         R76 R74 R75
      737 GETTABLEKS                       R75 R15 K152 ["name"]
      739 DUPCLOSURE                       R76 K163 [PROTO_10]
      740 CAPTURE                          VAL R2
      741 SETTABLE                         R76 R74 R75
      742 GETTABLEKS                       R75 R38 K152 ["name"]
      744 DUPCLOSURE                       R76 K164 [PROTO_11]
      745 CAPTURE                          VAL R2
      746 SETTABLE                         R76 R74 R75
      747 GETTABLEKS                       R75 R18 K152 ["name"]
      749 DUPCLOSURE                       R76 K165 [PROTO_12]
      750 CAPTURE                          VAL R2
      751 SETTABLE                         R76 R74 R75
      752 GETTABLEKS                       R75 R19 K152 ["name"]
      754 DUPCLOSURE                       R76 K166 [PROTO_13]
      755 CAPTURE                          VAL R2
      756 SETTABLE                         R76 R74 R75
      757 GETTABLEKS                       R75 R20 K152 ["name"]
      759 DUPCLOSURE                       R76 K167 [PROTO_14]
      760 CAPTURE                          VAL R2
      761 SETTABLE                         R76 R74 R75
      762 GETTABLEKS                       R75 R23 K152 ["name"]
      764 DUPCLOSURE                       R76 K168 [PROTO_15]
      765 CAPTURE                          VAL R2
      766 SETTABLE                         R76 R74 R75
      767 GETTABLEKS                       R75 R56 K152 ["name"]
      769 DUPCLOSURE                       R76 K169 [PROTO_16]
      770 CAPTURE                          VAL R2
      771 SETTABLE                         R76 R74 R75
      772 GETTABLEKS                       R75 R21 K152 ["name"]
      774 DUPCLOSURE                       R76 K170 [PROTO_17]
      775 CAPTURE                          VAL R2
      776 SETTABLE                         R76 R74 R75
      777 GETTABLEKS                       R75 R22 K152 ["name"]
      779 DUPCLOSURE                       R76 K171 [PROTO_18]
      780 CAPTURE                          VAL R2
      781 SETTABLE                         R76 R74 R75
      782 GETTABLEKS                       R75 R24 K152 ["name"]
      784 DUPCLOSURE                       R76 K172 [PROTO_19]
      785 CAPTURE                          VAL R2
      786 SETTABLE                         R76 R74 R75
      787 GETTABLEKS                       R75 R25 K152 ["name"]
      789 DUPCLOSURE                       R76 K173 [PROTO_20]
      790 CAPTURE                          VAL R2
      791 SETTABLE                         R76 R74 R75
      792 GETTABLEKS                       R75 R29 K152 ["name"]
      794 DUPCLOSURE                       R76 K174 [PROTO_21]
      795 CAPTURE                          VAL R2
      796 SETTABLE                         R76 R74 R75
      797 GETTABLEKS                       R75 R26 K152 ["name"]
      799 DUPCLOSURE                       R76 K175 [PROTO_22]
      800 CAPTURE                          VAL R2
      801 SETTABLE                         R76 R74 R75
      802 GETTABLEKS                       R75 R27 K152 ["name"]
      804 DUPCLOSURE                       R76 K176 [PROTO_23]
      805 CAPTURE                          VAL R2
      806 SETTABLE                         R76 R74 R75
      807 GETTABLEKS                       R75 R28 K152 ["name"]
      809 DUPCLOSURE                       R76 K177 [PROTO_24]
      810 CAPTURE                          VAL R2
      811 SETTABLE                         R76 R74 R75
      812 GETTABLEKS                       R75 R30 K152 ["name"]
      814 DUPCLOSURE                       R76 K178 [PROTO_25]
      815 CAPTURE                          VAL R2
      816 SETTABLE                         R76 R74 R75
      817 GETTABLEKS                       R75 R31 K152 ["name"]
      819 DUPCLOSURE                       R76 K179 [PROTO_26]
      820 CAPTURE                          VAL R2
      821 SETTABLE                         R76 R74 R75
      822 GETTABLEKS                       R75 R32 K152 ["name"]
      824 DUPCLOSURE                       R76 K180 [PROTO_27]
      825 CAPTURE                          VAL R2
      826 SETTABLE                         R76 R74 R75
      827 GETTABLEKS                       R75 R33 K152 ["name"]
      829 DUPCLOSURE                       R76 K181 [PROTO_28]
      830 CAPTURE                          VAL R2
      831 SETTABLE                         R76 R74 R75
      832 GETTABLEKS                       R75 R34 K152 ["name"]
      834 DUPCLOSURE                       R76 K182 [PROTO_29]
      835 CAPTURE                          VAL R2
      836 SETTABLE                         R76 R74 R75
      837 GETTABLEKS                       R75 R35 K183 ["LoadedLocalUserFriends"]
      839 GETTABLEKS                       R75 R75 K152 ["name"]
      841 DUPCLOSURE                       R76 K184 [PROTO_30]
      842 CAPTURE                          VAL R2
      843 SETTABLE                         R76 R74 R75
      844 GETTABLEKS                       R75 R35 K185 ["LoadedLocalUserGroups"]
      846 GETTABLEKS                       R75 R75 K152 ["name"]
      848 DUPCLOSURE                       R76 K186 [PROTO_31]
      849 CAPTURE                          VAL R2
      850 SETTABLE                         R76 R74 R75
      851 GETTABLEKS                       R75 R35 K187 ["LoadingLocalUserFriends"]
      853 GETTABLEKS                       R75 R75 K152 ["name"]
      855 DUPCLOSURE                       R76 K188 [PROTO_32]
      856 CAPTURE                          VAL R2
      857 CAPTURE                          VAL R6
      858 SETTABLE                         R76 R74 R75
      859 GETTABLEKS                       R75 R35 K189 ["LoadingLocalUserGroups"]
      861 GETTABLEKS                       R75 R75 K152 ["name"]
      863 DUPCLOSURE                       R76 K190 [PROTO_33]
      864 CAPTURE                          VAL R2
      865 CAPTURE                          VAL R6
      866 SETTABLE                         R76 R74 R75
      867 GETTABLEKS                       R75 R35 K191 ["SearchTextChanged"]
      869 GETTABLEKS                       R75 R75 K152 ["name"]
      871 DUPCLOSURE                       R76 K192 [PROTO_34]
      872 CAPTURE                          VAL R2
      873 SETTABLE                         R76 R74 R75
      874 GETTABLEKS                       R75 R36 K152 ["name"]
      876 DUPCLOSURE                       R76 K193 [PROTO_35]
      877 CAPTURE                          VAL R2
      878 SETTABLE                         R76 R74 R75
      879 GETTABLEKS                       R75 R37 K152 ["name"]
      881 DUPCLOSURE                       R76 K194 [PROTO_36]
      882 CAPTURE                          VAL R2
      883 SETTABLE                         R76 R74 R75
      884 GETTABLEKS                       R75 R40 K152 ["name"]
      886 DUPCLOSURE                       R76 K195 [PROTO_37]
      887 CAPTURE                          VAL R2
      888 SETTABLE                         R76 R74 R75
      889 GETTABLEKS                       R75 R41 K152 ["name"]
      891 DUPCLOSURE                       R76 K196 [PROTO_38]
      892 CAPTURE                          VAL R2
      893 SETTABLE                         R76 R74 R75
      894 GETTABLEKS                       R75 R42 K152 ["name"]
      896 DUPCLOSURE                       R76 K197 [PROTO_39]
      897 CAPTURE                          VAL R2
      898 SETTABLE                         R76 R74 R75
      899 GETTABLEKS                       R75 R43 K152 ["name"]
      901 DUPCLOSURE                       R76 K198 [PROTO_40]
      902 CAPTURE                          VAL R2
      903 SETTABLE                         R76 R74 R75
      904 GETTABLEKS                       R75 R44 K152 ["name"]
      906 DUPCLOSURE                       R76 K199 [PROTO_41]
      907 CAPTURE                          VAL R2
      908 SETTABLE                         R76 R74 R75
      909 GETTABLEKS                       R75 R45 K152 ["name"]
      911 DUPCLOSURE                       R76 K200 [PROTO_42]
      912 CAPTURE                          VAL R2
      913 SETTABLE                         R76 R74 R75
      914 GETTABLEKS                       R75 R46 K152 ["name"]
      916 DUPCLOSURE                       R76 K201 [PROTO_43]
      917 CAPTURE                          VAL R2
      918 SETTABLE                         R76 R74 R75
      919 GETTABLEKS                       R75 R47 K152 ["name"]
      921 DUPCLOSURE                       R76 K202 [PROTO_44]
      922 CAPTURE                          VAL R2
      923 SETTABLE                         R76 R74 R75
      924 GETTABLEKS                       R75 R48 K152 ["name"]
      926 DUPCLOSURE                       R76 K203 [PROTO_45]
      927 CAPTURE                          VAL R2
      928 SETTABLE                         R76 R74 R75
      929 GETTABLEKS                       R75 R49 K152 ["name"]
      931 DUPCLOSURE                       R76 K204 [PROTO_46]
      932 CAPTURE                          VAL R2
      933 SETTABLE                         R76 R74 R75
      934 GETTABLEKS                       R75 R50 K152 ["name"]
      936 DUPCLOSURE                       R76 K205 [PROTO_47]
      937 CAPTURE                          VAL R2
      938 SETTABLE                         R76 R74 R75
      939 GETTABLEKS                       R75 R51 K152 ["name"]
      941 DUPCLOSURE                       R76 K206 [PROTO_48]
      942 CAPTURE                          VAL R2
      943 SETTABLE                         R76 R74 R75
      944 GETTABLEKS                       R75 R52 K152 ["name"]
      946 DUPCLOSURE                       R76 K207 [PROTO_49]
      947 CAPTURE                          VAL R2
      948 SETTABLE                         R76 R74 R75
      949 GETTABLEKS                       R75 R53 K152 ["name"]
      951 DUPCLOSURE                       R76 K208 [PROTO_50]
      952 CAPTURE                          VAL R2
      953 SETTABLE                         R76 R74 R75
      954 GETTABLEKS                       R75 R54 K152 ["name"]
      956 DUPCLOSURE                       R76 K209 [PROTO_51]
      957 CAPTURE                          VAL R2
      958 SETTABLE                         R76 R74 R75
      959 GETTABLEKS                       R75 R55 K152 ["name"]
      961 DUPCLOSURE                       R76 K210 [PROTO_52]
      962 CAPTURE                          VAL R2
      963 SETTABLE                         R76 R74 R75
      964 GETTABLEKS                       R75 R57 K152 ["name"]
      966 DUPCLOSURE                       R76 K211 [PROTO_53]
      967 CAPTURE                          VAL R2
      968 SETTABLE                         R76 R74 R75
      969 GETTABLEKS                       R75 R58 K152 ["name"]
      971 MOVE                             R77 R67
      972 CALL                             R77 0 1
      973 JUMPIFNOT                        R77 ; [+3]
      974 DUPCLOSURE                       R76 K212 [PROTO_54]
      975 CAPTURE                          VAL R2
      976 JUMP                             ; [+1]
      977 LOADNIL                          R76
      978 SETTABLE                         R76 R74 R75
      979 GETTABLEKS                       R75 R59 K152 ["name"]
      981 DUPCLOSURE                       R76 K213 [PROTO_55]
      982 CAPTURE                          VAL R2
      983 SETTABLE                         R76 R74 R75
      984 GETTABLEKS                       R75 R60 K152 ["name"]
      986 MOVE                             R77 R68
      987 CALL                             R77 0 1
      988 JUMPIFNOT                        R77 ; [+3]
      989 DUPCLOSURE                       R76 K214 [PROTO_56]
      990 CAPTURE                          VAL R2
      991 JUMP                             ; [+1]
      992 LOADNIL                          R76
      993 SETTABLE                         R76 R74 R75
      994 GETTABLEKS                       R75 R61 K152 ["name"]
      996 MOVE                             R77 R68
      997 CALL                             R77 0 1
      998 JUMPIFNOT                        R77 ; [+4]
      999 DUPCLOSURE                       R76 K215 [PROTO_57]
     1000 CAPTURE                          VAL R66
     1001 CAPTURE                          VAL R2
     1002 JUMP                             ; [+1]
     1003 LOADNIL                          R76
     1004 SETTABLE                         R76 R74 R75
     1005 GETTABLEKS                       R75 R62 K152 ["name"]
     1007 MOVE                             R77 R68
     1008 CALL                             R77 0 1
     1009 JUMPIFNOT                        R77 ; [+4]
     1010 DUPCLOSURE                       R76 K216 [PROTO_58]
     1011 CAPTURE                          VAL R2
     1012 CAPTURE                          VAL R66
     1013 JUMP                             ; [+1]
     1014 LOADNIL                          R76
     1015 SETTABLE                         R76 R74 R75
     1016 GETTABLEKS                       R75 R63 K152 ["name"]
     1018 MOVE                             R77 R68
     1019 CALL                             R77 0 1
     1020 JUMPIFNOT                        R77 ; [+4]
     1021 DUPCLOSURE                       R76 K217 [PROTO_59]
     1022 CAPTURE                          VAL R2
     1023 CAPTURE                          VAL R66
     1024 JUMP                             ; [+1]
     1025 LOADNIL                          R76
     1026 SETTABLE                         R76 R74 R75
     1027 CALL                             R72 2 -1
     1028 RETURN                           R72 -1
