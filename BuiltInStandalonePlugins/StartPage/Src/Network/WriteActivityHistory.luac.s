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
       32 LOADK                            R4 K9 ["[WriteActivityHistory] request failed: %*"]
       33 MOVE                             R6 R1
       34 NAMECALL                         R4 R4 K10 ["format"]
       36 CALL                             R4 2 1
       37 MOVE                             R3 R4
       38 CALL                             R2 1 0
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K11 ["reject"]
       42 MOVE                             R3 R0
       43 CALL                             R2 1 -1
       44 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        3 LOADK                            R6 K0 ["FFlagStartPageEscapeHatchActivityHistory is not enabled"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["resolve"]
       10 CALL                             R4 0 1
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 NAMECALL                         R4 R4 K4 ["andThen"]
       23 CALL                             R4 2 1
       24 DUPCLOSURE                       R6 K5 [PROTO_2]
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U1
       27 NAMECALL                         R4 R4 K6 ["catch"]
       29 CALL                             R4 2 -1
       30 RETURN                           R4 -1

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
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K6 ["Src"]
       57 GETTABLEKS                       R7 R7 K7 ["SharedFlags"]
       59 GETTABLEKS                       R7 R7 K17 ["getFFlagStartPageEscapeHatchActivityHistory"]
       61 CALL                             R6 1 1
       62 CALL                             R6 0 1
       63 GETTABLEKS                       R7 R2 K18 ["RobloxAPI"]
       65 GETTABLEKS                       R7 R7 K19 ["Url"]
       67 GETTABLEKS                       R8 R5 K20 ["new"]
       69 DUPTABLE                         R9 K24 [{["isInternal"] = True, ["loggingLevel"]}]
       70 SETTABLEKS                       R1 R9 K23 ["loggingLevel"]
       72 CALL                             R8 1 1
       73 NEWTABLE                         R9 1 0
       75 LOADK                            R10 K25 ["application/json"]
       76 SETTABLEKS                       R10 R9 K26 ["Content-Type"]
       78 GETIMPORT                        R10 K28 [game]
       80 LOADK                            R12 K29 ["HttpService"]
       81 NAMECALL                         R10 R10 K30 ["GetService"]
       83 CALL                             R10 2 1
       84 DUPCLOSURE                       R11 K31 [PROTO_3]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 RETURN                           R11 1
