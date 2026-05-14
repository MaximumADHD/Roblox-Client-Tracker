PROTO_0:
        0 DUPTABLE                         R2 K3 [{"DropdownLabel", "Key", "Query"}]
        1 GETTABLEKS                       R3 R1 K4 ["name"]
        3 SETTABLEKS                       R3 R2 K0 ["DropdownLabel"]
        5 GETTABLEKS                       R3 R1 K5 ["id"]
        7 SETTABLEKS                       R3 R2 K1 ["Key"]
        9 DUPTABLE                         R3 K7 [{"creatorTargetId"}]
       10 GETTABLEKS                       R4 R1 K5 ["id"]
       12 SETTABLEKS                       R4 R3 K6 ["creatorTargetId"]
       14 SETTABLEKS                       R3 R2 K2 ["Query"]
       16 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["DropdownLabel"]
        2 GETTABLEKS                       R4 R1 K0 ["DropdownLabel"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["groups"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R1 K0 ["groups"]
       10 DUPCLOSURE                       R4 K1 [PROTO_0]
       11 CALL                             R2 2 1
       12 GETIMPORT                        R3 K4 [table.sort]
       14 MOVE                             R4 R2
       15 DUPCLOSURE                       R5 K5 [PROTO_1]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R2
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverGroups experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["composeUrl"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CREATOR_GROUPS_SEARCH_URL"]
        6 GETTABLEKS                       R2 R2 K2 ["Prefix"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["CREATOR_GROUPS_SEARCH_URL"]
       11 GETTABLEKS                       R3 R3 K3 ["Url"]
       13 LOADK                            R4 K4 ["StudioStartPage"]
       14 CALL                             R3 1 -1
       15 CALL                             R1 -1 1
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R4 2
       18 MOVE                             R6 R1
       19 NAMECALL                         R4 R4 K5 ["get"]
       21 CALL                             R4 2 -1
       22 NAMECALL                         R2 R2 K6 ["parseJson"]
       24 CALL                             R2 -1 1
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R0
       29 NAMECALL                         R3 R2 K7 ["andThen"]
       31 CALL                             R3 2 1
       32 DUPCLOSURE                       R5 K8 [PROTO_3]
       33 NAMECALL                         R3 R3 K9 ["catch"]
       35 CALL                             R3 2 0
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Types"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R0 K6 ["Src"]
       35 GETTABLEKS                       R5 R5 K12 ["Models"]
       37 GETTABLEKS                       R5 R5 K13 ["ApiArrayResponseGroupModel"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R0 K6 ["Src"]
       44 GETTABLEKS                       R6 R6 K14 ["Network"]
       46 GETTABLEKS                       R6 R6 K15 ["Urls"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R7 R0 K6 ["Src"]
       53 GETTABLEKS                       R7 R7 K16 ["Util"]
       55 GETTABLEKS                       R7 R7 K17 ["Services"]
       57 CALL                             R6 1 1
       58 GETTABLEKS                       R6 R6 K18 ["Networking"]
       60 GETIMPORT                        R7 K5 [require]
       62 GETTABLEKS                       R8 R0 K6 ["Src"]
       64 GETTABLEKS                       R8 R8 K16 ["Util"]
       66 GETTABLEKS                       R8 R8 K19 ["createResponseValidator"]
       68 CALL                             R7 1 1
       69 GETTABLEKS                       R8 R2 K20 ["RobloxAPI"]
       71 GETTABLEKS                       R8 R8 K21 ["Url"]
       73 GETTABLEKS                       R9 R6 K22 ["new"]
       75 DUPTABLE                         R10 K25 [{"isInternal", "loggingLevel"}]
       76 LOADB                            R11 1
       77 SETTABLEKS                       R11 R10 K23 ["isInternal"]
       79 SETTABLEKS                       R1 R10 K24 ["loggingLevel"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K9 ["Packages"]
       86 GETTABLEKS                       R11 R11 K26 ["Dash"]
       88 CALL                             R10 1 1
       89 GETTABLEKS                       R11 R10 K27 ["collectArray"]
       91 MOVE                             R12 R7
       92 GETTABLEKS                       R13 R4 K28 ["validate"]
       94 CALL                             R12 1 1
       95 GETTABLEKS                       R13 R8 K22 ["new"]
       97 CALL                             R13 0 1
       98 DUPCLOSURE                       R14 K29 [PROTO_4]
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R11
      104 RETURN                           R14 1
