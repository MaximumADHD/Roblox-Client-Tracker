PROTO_0:
        0 DUPTABLE                         R0 K3 [{[1] = 1231, ["profileInsights"]}]
        1 NEWTABLE                         R1 0 1
        3 DUPTABLE                         R2 K7 [{["accountCreationDateInsight"], ["insightCase"] = 6}]
        4 DUPTABLE                         R3 K9 [{"accountCreatedDateTime"}]
        5 DUPTABLE                         R4 K14 [{["seconds"] = 1155662952, ["nanos"] = 653000000}]
        6 SETTABLEKS                       R4 R3 K8 ["accountCreatedDateTime"]
        8 SETTABLEKS                       R3 R2 K4 ["accountCreationDateInsight"]
       10 SETLIST                          R1 R2 1 [1]
       12 SETTABLEKS                       R1 R0 K2 ["profileInsights"]
       14 DUPTABLE                         R1 K16 [{[1] = 7174425967, ["profileInsights"]}]
       15 NEWTABLE                         R2 0 2
       17 DUPTABLE                         R3 K19 [{["friendshipAgeInsight"], ["insightCase"] = 4}]
       18 DUPTABLE                         R4 K21 [{"friendsSinceDateTime"}]
       19 DUPTABLE                         R5 K24 [{["seconds"] = 1771548448, ["nanos"] = 231000000}]
       20 SETTABLEKS                       R5 R4 K20 ["friendsSinceDateTime"]
       22 SETTABLEKS                       R4 R3 K17 ["friendshipAgeInsight"]
       24 DUPTABLE                         R4 K7 [{["accountCreationDateInsight"], ["insightCase"] = 6}]
       25 DUPTABLE                         R5 K9 [{"accountCreatedDateTime"}]
       26 DUPTABLE                         R6 K27 [{["seconds"] = 1722982228, ["nanos"] = 838000000}]
       27 SETTABLEKS                       R6 R5 K8 ["accountCreatedDateTime"]
       29 SETTABLEKS                       R5 R4 K4 ["accountCreationDateInsight"]
       31 SETLIST                          R2 R3 2 [1]
       33 SETTABLEKS                       R2 R1 K2 ["profileInsights"]
       35 DUPTABLE                         R2 K19 [{["friendshipAgeInsight"], ["insightCase"] = 4}]
       36 DUPTABLE                         R3 K21 [{"friendsSinceDateTime"}]
       37 DUPTABLE                         R4 K30 [{["seconds"] = 1662584455, ["nanos"] = 978000000}]
       38 SETTABLEKS                       R4 R3 K20 ["friendsSinceDateTime"]
       40 SETTABLEKS                       R3 R2 K17 ["friendshipAgeInsight"]
       42 DUPTABLE                         R3 K33 [{["mutualFriendInsight"], ["insightCase"] = 1}]
       43 DUPTABLE                         R4 K35 [{"mutualFriends"}]
       44 NEWTABLE                         R5 8 0
       46 DUPTABLE                         R6 K39 [{["username"] = "twberg", ["displayName"] = "twberg"}]
       47 SETTABLEKS                       R6 R5 K40 ["33067469"]
       49 DUPTABLE                         R6 K42 [{["username"] = "bluestann", ["displayName"] = "bluestann"}]
       50 SETTABLEKS                       R6 R5 K43 ["1253904492"]
       52 DUPTABLE                         R6 K45 [{["username"] = "brienneofthetarth", ["displayName"] = "brienneofthetarth"}]
       53 SETTABLEKS                       R6 R5 K46 ["2269377844"]
       55 DUPTABLE                         R6 K48 [{["username"] = "yipiokay", ["displayName"] = "yipiokay"}]
       56 SETTABLEKS                       R6 R5 K49 ["2842306303"]
       58 DUPTABLE                         R6 K51 [{["username"] = "desserts_yumyum", ["displayName"] = "desserts_yumyum"}]
       59 SETTABLEKS                       R6 R5 K52 ["2852766467"]
       61 DUPTABLE                         R6 K55 [{["username"] = "wingedbreadsticks", ["displayName"] = "wingedbreadsticks666"}]
       62 SETTABLEKS                       R6 R5 K56 ["3706781386"]
       64 DUPTABLE                         R6 K58 [{["username"] = "vreddym", ["displayName"] = "vreddym"}]
       65 SETTABLEKS                       R6 R5 K59 ["4687564904"]
       67 SETTABLEKS                       R5 R4 K34 ["mutualFriends"]
       69 SETTABLEKS                       R4 R3 K31 ["mutualFriendInsight"]
       71 DUPTABLE                         R4 K7 [{["accountCreationDateInsight"], ["insightCase"] = 6}]
       72 DUPTABLE                         R5 K9 [{"accountCreatedDateTime"}]
       73 DUPTABLE                         R6 K62 [{["seconds"] = 1554917336, ["nanos"] = 530000000}]
       74 SETTABLEKS                       R6 R5 K8 ["accountCreatedDateTime"]
       76 SETTABLEKS                       R5 R4 K4 ["accountCreationDateInsight"]
       78 DUPTABLE                         R5 K64 [{[1] = 1035331768, ["profileInsights"]}]
       79 NEWTABLE                         R6 0 3
       81 MOVE                             R7 R2
       82 MOVE                             R8 R3
       83 MOVE                             R9 R4
       84 SETLIST                          R6 R7 3 [1]
       86 SETTABLEKS                       R6 R5 K2 ["profileInsights"]
       88 DUPTABLE                         R6 K66 [{"userInsights"}]
       89 NEWTABLE                         R7 0 3
       91 MOVE                             R8 R0
       92 MOVE                             R9 R1
       93 MOVE                             R10 R5
       94 SETLIST                          R7 R8 3 [1]
       96 SETTABLEKS                       R7 R6 K65 ["userInsights"]
       98 RETURN                           R6 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [math.random]
        2 LOADN                            R2 1
        3 LOADN                            R3 100
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["failureRate"]
        8 JUMPIFLE                         R1 R2 ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["latencySec"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["latencySec"]
        7 LOADN                            R1 0
        8 JUMPIFNOTLT                      R1 R0 ; [+7]
       10 GETIMPORT                        R0 K3 [task.wait]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["latencySec"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R2 K6 [{"postProfileInsightsResponse", "postSendRequestToNewParentResponse", "postSendRequestToAllParentsResponse", "getUniverseConfigurationResponse", "networkFailure", "networkDelay"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K0 ["postProfileInsightsResponse"]
        7 DUPTABLE                         R3 K11 [{["sessionId"] = "mock-session-id", ["lockedUntil"] = }]
        8 SETTABLEKS                       R3 R2 K1 ["postSendRequestToNewParentResponse"]
       10 DUPTABLE                         R3 K13 [{["sessionId"] = "mock-all-parents-session-id", ["lockedUntil"] = }]
       11 SETTABLEKS                       R3 R2 K2 ["postSendRequestToAllParentsResponse"]
       13 DUPTABLE                         R3 K16 [{["name"] = "MockUniverse"}]
       14 SETTABLEKS                       R3 R2 K3 ["getUniverseConfigurationResponse"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K4 ["networkFailure"]
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K5 ["networkDelay"]
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Contexts"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["NetworkContext"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 MOVE                             R4 R3
       18 CALL                             R4 0 1
       19 DUPTABLE                         R5 K13 [{["latencySec"] = 0, ["failureRate"] = 0}]
       20 DUPCLOSURE                       R6 K14 [PROTO_3]
       21 CAPTURE                          VAL R5
       22 CAPTURE                          VAL R4
       23 RETURN                           R6 1
