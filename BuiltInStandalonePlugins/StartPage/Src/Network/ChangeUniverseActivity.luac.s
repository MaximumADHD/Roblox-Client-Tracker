PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"Id", "PrivacyType"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Id"]
        5 GETUPVAL                         R4 2
        6 JUMPIFNOTEQKS                    R4 K3 ["Private"] ; [+3]
        8 LOADK                            R3 K4 ["Public"]
        9 JUMP                             ; [+1]
       10 LOADK                            R3 K3 ["Private"]
       11 SETTABLEKS                       R3 R2 K1 ["PrivacyType"]
       13 NAMECALL                         R0 R0 K5 ["upsertItem"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 LOADNIL                          R3
        5 JUMPIFNOTEQKS                    R1 K1 ["Private"] ; [+18]
        7 GETTABLEKS                       R4 R2 K2 ["composeUrl"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["ACTIVATE_UNIVERSE"]
       12 GETTABLEKS                       R5 R5 K4 ["Prefix"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K3 ["ACTIVATE_UNIVERSE"]
       17 GETTABLEKS                       R6 R6 K5 ["Url"]
       19 MOVE                             R7 R0
       20 CALL                             R6 1 -1
       21 CALL                             R4 -1 1
       22 MOVE                             R3 R4
       23 JUMP                             ; [+16]
       24 GETTABLEKS                       R4 R2 K2 ["composeUrl"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K6 ["DEACTIVATE_UNIVERSE"]
       29 GETTABLEKS                       R5 R5 K4 ["Prefix"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K6 ["DEACTIVATE_UNIVERSE"]
       34 GETTABLEKS                       R6 R6 K5 ["Url"]
       36 MOVE                             R7 R0
       37 CALL                             R6 1 -1
       38 CALL                             R4 -1 1
       39 MOVE                             R3 R4
       40 GETUPVAL                         R4 2
       41 MOVE                             R6 R3
       42 LOADK                            R7 K7 [""]
       43 NAMECALL                         R4 R4 K8 ["post"]
       45 CALL                             R4 3 1
       46 NEWCLOSURE                       R6 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R1
       50 NAMECALL                         R4 R4 K9 ["andThen"]
       52 CALL                             R4 2 0
       53 RETURN                           R0 0

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
       19 GETTABLEKS                       R3 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R3 K9 ["Types"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K10 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["Framework"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R0 K6 ["Src"]
       35 GETTABLEKS                       R5 R5 K12 ["Network"]
       37 GETTABLEKS                       R5 R5 K13 ["Urls"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R0 K6 ["Src"]
       44 GETTABLEKS                       R6 R6 K14 ["Util"]
       46 GETTABLEKS                       R6 R6 K15 ["Services"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R5 R5 K16 ["Networking"]
       51 GETTABLEKS                       R6 R3 K17 ["RobloxAPI"]
       53 GETTABLEKS                       R6 R6 K18 ["Url"]
       55 GETTABLEKS                       R7 R5 K19 ["new"]
       57 DUPTABLE                         R8 K22 [{"isInternal", "loggingLevel"}]
       58 LOADB                            R9 1
       59 SETTABLEKS                       R9 R8 K20 ["isInternal"]
       61 SETTABLEKS                       R1 R8 K21 ["loggingLevel"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Src"]
       68 GETTABLEKS                       R9 R9 K12 ["Network"]
       70 GETTABLEKS                       R9 R9 K23 ["GameCache"]
       72 CALL                             R8 1 1
       73 DUPCLOSURE                       R9 K24 [PROTO_1]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 RETURN                           R9 1
