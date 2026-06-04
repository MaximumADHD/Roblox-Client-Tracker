PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["warn"]
        7 MOVE                             R3 R0
        8 NEWTABLE                         R4 0 0
       10 GETVARARGS                       R5 -1
       11 SETLIST                          R4 R5 -1 [1]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["error"]
        7 MOVE                             R3 R0
        8 NEWTABLE                         R4 0 0
       10 GETVARARGS                       R5 -1
       11 SETLIST                          R4 R5 -1 [1]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["__DEV__"]
        3 JUMPIFNOT                        R3 ; [+50]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["ReactDebugCurrentFrame"]
        7 GETTABLEKS                       R4 R3 K2 ["getStackAddendum"]
        9 CALL                             R4 0 1
       10 JUMPIFEQKS                       R4 K3 [""] ; [+18]
       12 MOVE                             R5 R1
       13 LOADK                            R6 K4 ["%s"]
       14 CONCAT                           R1 R5 R6
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K5 ["slice"]
       18 MOVE                             R6 R2
       19 LOADN                            R7 1
       20 CALL                             R5 2 1
       21 MOVE                             R2 R5
       22 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 GETIMPORT                        R5 K8 [table.insert]
       28 CALL                             R5 2 0
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K9 ["map"]
       32 MOVE                             R6 R2
       33 GETIMPORT                        R7 K11 [tostring]
       35 CALL                             R5 2 1
       36 LOADN                            R8 1
       37 LOADK                            R10 K12 ["Warning: "]
       38 MOVE                             R11 R1
       39 CONCAT                           R9 R10 R11
       40 FASTCALL3                        TABLE_INSERT R5 R8 R9
       42 MOVE                             R7 R5
       43 GETIMPORT                        R6 K8 [table.insert]
       45 CALL                             R6 3 0
       46 GETUPVAL                         R7 3
       47 GETTABLE                         R6 R7 R0
       48 FASTCALL1                        TABLE_UNPACK R5 ; [+3]
       49 MOVE                             R8 R5
       50 GETIMPORT                        R7 K14 [unpack]
       52 CALL                             R7 1 -1
       53 CALL                             R6 -1 0
       54 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["console"]
       19 GETTABLEKS                       R4 R2 K8 ["Array"]
       21 GETIMPORT                        R5 K4 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R6 R6 K2 ["Parent"]
       27 GETTABLEKS                       R6 R6 K9 ["ReactSharedInternals"]
       29 CALL                             R5 1 1
       30 LOADNIL                          R6
       31 NEWTABLE                         R7 2 0
       33 NEWCLOSURE                       R8 P0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          REF R6
       36 SETTABLEKS                       R8 R7 K10 ["warn"]
       38 NEWCLOSURE                       R8 P1
       39 CAPTURE                          VAL R1
       40 CAPTURE                          REF R6
       41 SETTABLEKS                       R8 R7 K11 ["error"]
       43 DUPCLOSURE                       R6 K12 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 CLOSEUPVALS                      R6
       49 RETURN                           R7 1
