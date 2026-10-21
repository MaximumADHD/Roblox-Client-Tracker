PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["composeUrl"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["WRITE_ACTIVITY_HISTORY"]
        9 GETTABLEKS                       R2 R2 K3 ["Prefix"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["WRITE_ACTIVITY_HISTORY"]
       14 GETTABLEKS                       R3 R3 K4 ["Url"]
       16 CALL                             R3 0 -1
       17 CALL                             R1 -1 1
       18 DUPTABLE                         R2 K6 [{"events"}]
       19 NEWTABLE                         R3 0 1
       21 DUPTABLE                         R4 K11 [{"eventType", "universeId", "userid", "metadata"}]
       22 GETUPVAL                         R5 2
       23 SETTABLEKS                       R5 R4 K7 ["eventType"]
       25 GETUPVAL                         R5 3
       26 SETTABLEKS                       R5 R4 K8 ["universeId"]
       28 GETUPVAL                         R5 4
       29 SETTABLEKS                       R5 R4 K9 ["userid"]
       31 GETUPVAL                         R5 5
       32 GETUPVAL                         R7 6
       33 NAMECALL                         R5 R5 K12 ["JSONEncode"]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K10 ["metadata"]
       38 SETLIST                          R3 R4 1 [1]
       40 SETTABLEKS                       R3 R2 K5 ["events"]
       42 GETUPVAL                         R3 5
       43 MOVE                             R5 R2
       44 NAMECALL                         R3 R3 K12 ["JSONEncode"]
       46 CALL                             R3 2 1
       47 GETUPVAL                         R4 7
       48 GETUPVAL                         R6 7
       49 MOVE                             R8 R1
       50 MOVE                             R9 R3
       51 GETUPVAL                         R10 8
       52 NAMECALL                         R6 R6 K13 ["post"]
       54 CALL                             R6 4 -1
       55 NAMECALL                         R4 R4 K14 ["parseJson"]
       57 CALL                             R4 -1 -1
       58 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 LOADNIL                          R1
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+17]
        8 GETIMPORT                        R2 K4 [pcall]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R0
       13 CALL                             R2 1 2
       14 JUMPIFNOT                        R2 ; [+2]
       15 MOVE                             R1 R3
       16 JUMP                             ; [+13]
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R5 R0
       19 GETIMPORT                        R4 K6 [tostring]
       21 CALL                             R4 1 1
       22 MOVE                             R1 R4
       23 JUMP                             ; [+6]
       24 FASTCALL1                        TOSTRING R0 ; [+3]
       25 MOVE                             R3 R0
       26 GETIMPORT                        R2 K6 [tostring]
       28 CALL                             R2 1 1
       29 MOVE                             R1 R2
       30 GETIMPORT                        R2 K8 [warn]
       32 LOADK                            R3 K9 ["[WriteActivityHistory] request failed: %*"]
       33 MOVE                             R5 R1
       34 NAMECALL                         R3 R3 K10 ["format"]
       36 CALL                             R3 2 1
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K11 ["reject"]
       41 MOVE                             R3 R0
       42 CALL                             R2 1 -1
       43 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["resolve"]
        3 CALL                             R4 0 1
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 NAMECALL                         R4 R4 K1 ["andThen"]
       16 CALL                             R4 2 1
       17 DUPCLOSURE                       R6 K2 [PROTO_2]
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U0
       20 NAMECALL                         R4 R4 K3 ["catch"]
       22 CALL                             R4 2 -1
       23 RETURN                           R4 -1

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
       28 GETTABLEKS                       R4 R4 K11 ["Util"]
       30 GETTABLEKS                       R4 R4 K12 ["TypedPromise"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K13 ["Network"]
       39 GETTABLEKS                       R5 R5 K14 ["Urls"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K11 ["Util"]
       48 GETTABLEKS                       R6 R6 K15 ["Services"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R5 R5 K16 ["Networking"]
       53 GETTABLEKS                       R6 R2 K17 ["RobloxAPI"]
       55 GETTABLEKS                       R6 R6 K18 ["Url"]
       57 GETTABLEKS                       R7 R5 K19 ["new"]
       59 DUPTABLE                         R8 K23 [{["isInternal"] = True, ["loggingLevel"]}]
       60 SETTABLEKS                       R1 R8 K22 ["loggingLevel"]
       62 CALL                             R7 1 1
       63 NEWTABLE                         R8 1 0
       65 LOADK                            R9 K24 ["application/json"]
       66 SETTABLEKS                       R9 R8 K25 ["Content-Type"]
       68 GETIMPORT                        R9 K27 [game]
       70 LOADK                            R11 K28 ["HttpService"]
       71 NAMECALL                         R9 R9 K29 ["GetService"]
       73 CALL                             R9 2 1
       74 DUPCLOSURE                       R10 K30 [PROTO_3]
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 RETURN                           R10 1
