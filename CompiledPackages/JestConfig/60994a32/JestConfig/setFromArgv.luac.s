PROTO_0:
        0 LOADB                            R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R0
        3 JUMPIFEQKNIL                     R2 ; [+11]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K0 ["indexOf"]
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 JUMPIFEQKN                       R2 K1 [-1] ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["json"] ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 SETTABLEKS                       R2 R0 K1 ["useStderr"]
        6 RETURN                           R0 1
        7 JUMPIFNOTEQKS                    R1 K2 ["config"] ; [+2]
        9 RETURN                           R0 1
       10 JUMPIFNOTEQKS                    R1 K3 ["globals"] ; [+14]
       12 GETUPVAL                         R3 0
       13 GETTABLE                         R2 R3 R1
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 JUMPIFNOT                        R3 ; [+10]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K4 ["parse"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 SETTABLE                         R3 R0 R1
       24 RETURN                           R0 1
       25 GETUPVAL                         R3 0
       26 GETTABLE                         R2 R3 R1
       27 SETTABLE                         R2 R0 R1
       28 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["reduce"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["filter"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["keys"]
        9 MOVE                             R5 R1
       10 CALL                             R4 1 1
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U2
       15 CALL                             R3 2 1
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 NEWTABLE                         R5 0 0
       22 CALL                             R2 3 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K3 ["assign"]
       26 NEWTABLE                         R4 0 0
       28 MOVE                             R5 R0
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R8 R1 K4 ["config"]
       32 CALL                             R7 1 1
       33 JUMPIFNOT                        R7 ; [+7]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R6 R7 K5 ["parse"]
       37 GETTABLEKS                       R7 R1 K4 ["config"]
       39 CALL                             R6 1 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R6
       42 MOVE                             R7 R2
       43 CALL                             R3 4 -1
       44 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Object"]
       16 NEWTABLE                         R4 1 0
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K8 ["JestTypes"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R7 K4 [require]
       25 GETIMPORT                        R10 K1 [script]
       27 GETTABLEKS                       R9 R10 K2 ["Parent"]
       29 GETTABLEKS                       R8 R9 K9 ["utils"]
       31 CALL                             R7 1 1
       32 GETTABLEKS                       R6 R7 K10 ["isJSONString"]
       34 GETIMPORT                        R7 K4 [require]
       36 GETTABLEKS                       R8 R0 K11 ["RobloxShared"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R8 R7 K12 ["nodeUtils"]
       41 GETTABLEKS                       R9 R8 K13 ["JSON"]
       43 NEWTABLE                         R10 0 5
       45 LOADK                            R11 K14 ["_"]
       46 LOADK                            R12 K15 ["$0"]
       47 LOADK                            R13 K16 ["h"]
       48 LOADK                            R14 K17 ["help"]
       49 LOADK                            R15 K18 ["config"]
       50 SETLIST                          R10 R11 5 [1]
       52 DUPCLOSURE                       R11 K19 [PROTO_2]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R9
       58 SETTABLEKS                       R11 R4 K20 ["default"]
       60 RETURN                           R4 1
