PROTO_0:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R0
        3 ORK                              R1 R2 K0 [100]
        4 RETURN                           R1 1
        5 LOADN                            R1 100
        6 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R2 2 0
        2 SETTABLEKS                       R0 R2 K0 ["_logTag"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R5 R1
        7 ORK                              R3 R4 K1 [100]
        8 JUMP                             ; [+1]
        9 LOADN                            R3 100
       10 SETTABLEKS                       R3 R2 K2 ["_minSeverity"]
       12 GETUPVAL                         R5 1
       13 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       15 MOVE                             R4 R2
       16 GETIMPORT                        R3 K4 [setmetatable]
       18 CALL                             R3 2 0
       19 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+4]
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R4 R1
        3 ORK                              R2 R3 K0 [100]
        4 JUMP                             ; [+1]
        5 LOADN                            R2 100
        6 SETTABLEKS                       R2 R0 K1 ["_minSeverity"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 GETTABLEKS                       R4 R0 K0 ["_minSeverity"]
        4 JUMPIFLE                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 2
        4 JUMPIFNOTLE                      R1 R0 ; [+8]
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R2 4
        8 GETUPVAL                         R3 5
        9 NAMECALL                         R0 R0 K0 ["Warn"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R2 4
       15 GETUPVAL                         R3 5
       16 NAMECALL                         R0 R0 K1 ["Info"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R4 ; [+3]
        1 GETTABLEKS                       R5 R4 K0 ["force"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R5
        5 JUMPIF                           R5 ; [+6]
        6 MOVE                             R8 R1
        7 NAMECALL                         R6 R0 K1 ["isEnabledFor"]
        9 CALL                             R6 2 1
       10 JUMPIF                           R6 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R7 R0 K2 ["_logTag"]
       14 JUMPIFNOT                        R7 ; [+5]
       15 GETTABLEKS                       R7 R0 K2 ["_logTag"]
       17 LOADK                            R8 K3 [" "]
       18 CONCAT                           R6 R7 R8
       19 JUMP                             ; [+1]
       20 LOADK                            R6 K4 [""]
       21 LOADK                            R7 K5 ["%*[%*] %*"]
       22 MOVE                             R9 R6
       23 GETIMPORT                        R10 K8 [string.upper]
       25 MOVE                             R11 R1
       26 CALL                             R10 1 1
       27 MOVE                             R11 R2
       28 NAMECALL                         R7 R7 K9 ["format"]
       30 CALL                             R7 4 1
       31 MOVE                             R8 R3
       32 JUMPIF                           R8 ; [+2]
       33 NEWTABLE                         R8 0 0
       35 GETIMPORT                        R9 K11 [pcall]
       37 NEWCLOSURE                       R10 P0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R8
       44 CALL                             R9 1 0
       45 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["Debug"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 NAMECALL                         R4 R0 K1 ["_emit"]
        8 CALL                             R4 5 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["Info"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 NAMECALL                         R4 R0 K1 ["_emit"]
        8 CALL                             R4 5 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["Warning"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 NAMECALL                         R4 R0 K1 ["_emit"]
        8 CALL                             R4 5 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["Error"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 NAMECALL                         R4 R0 K1 ["_emit"]
        8 CALL                             R4 5 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["Critical"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 NAMECALL                         R4 R0 K1 ["_emit"]
        8 CALL                             R4 5 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LogService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 16 0
        9 SETTABLEKS                       R1 R1 K4 ["__index"]
       11 DUPTABLE                         R2 K10 [{["Debug"] = "Debug", ["Info"] = "Info", ["Warning"] = "Warning", ["Error"] = "Error", ["Critical"] = "Critical"}]
       12 NEWTABLE                         R3 8 0
       14 GETTABLEKS                       R4 R2 K5 ["Debug"]
       16 LOADN                            R5 10
       17 SETTABLE                         R5 R3 R4
       18 GETTABLEKS                       R4 R2 K6 ["Info"]
       20 LOADN                            R5 20
       21 SETTABLE                         R5 R3 R4
       22 GETTABLEKS                       R4 R2 K7 ["Warning"]
       24 LOADN                            R5 30
       25 SETTABLE                         R5 R3 R4
       26 GETTABLEKS                       R4 R2 K8 ["Error"]
       28 LOADN                            R5 40
       29 SETTABLE                         R5 R3 R4
       30 GETTABLEKS                       R4 R2 K9 ["Critical"]
       32 LOADN                            R5 50
       33 SETTABLE                         R5 R3 R4
       34 GETTABLEKS                       R5 R2 K7 ["Warning"]
       36 GETTABLE                         R4 R3 R5
       37 DUPCLOSURE                       R5 K11 [PROTO_0]
       38 CAPTURE                          VAL R3
       39 DUPCLOSURE                       R6 K12 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R6 R1 K13 ["new"]
       44 DUPCLOSURE                       R6 K14 [PROTO_2]
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R6 R1 K15 ["setMinLevel"]
       48 DUPCLOSURE                       R6 K16 [PROTO_3]
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R6 R1 K17 ["isEnabledFor"]
       52 DUPCLOSURE                       R6 K18 [PROTO_5]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R6 R1 K19 ["_emit"]
       58 DUPCLOSURE                       R6 K20 [PROTO_6]
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R6 R1 K21 ["debug"]
       62 DUPCLOSURE                       R6 K22 [PROTO_7]
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R6 R1 K23 ["info"]
       66 DUPCLOSURE                       R6 K24 [PROTO_8]
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R6 R1 K25 ["warning"]
       70 DUPCLOSURE                       R6 K26 [PROTO_9]
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R6 R1 K27 ["error"]
       74 DUPCLOSURE                       R6 K28 [PROTO_10]
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R6 R1 K29 ["critical"]
       78 SETTABLEKS                       R2 R1 K30 ["Level"]
       80 RETURN                           R1 1
