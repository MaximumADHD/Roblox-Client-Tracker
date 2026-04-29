PROTO_0:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R2 K1 [_G]
        3 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R1 0
        7 LOADK                            R2 K3 ["warn"]
        8 MOVE                             R3 R0
        9 NEWTABLE                         R4 0 0
       11 GETVARARGS                       R5 -1
       12 SETLIST                          R4 R5 -1 [1]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R2 K1 [_G]
        3 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R1 0
        7 LOADK                            R2 K3 ["error"]
        8 MOVE                             R3 R0
        9 NEWTABLE                         R4 0 0
       11 GETVARARGS                       R5 -1
       12 SETLIST                          R4 R5 -1 [1]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R4 K1 [_G]
        2 GETTABLEKS                       R3 R4 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+50]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K3 ["ReactDebugCurrentFrame"]
        8 GETTABLEKS                       R4 R3 K4 ["getStackAddendum"]
       10 CALL                             R4 0 1
       11 JUMPIFEQKS                       R4 K5 [""] ; [+18]
       13 MOVE                             R5 R1
       14 LOADK                            R6 K6 ["%s"]
       15 CONCAT                           R1 R5 R6
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K7 ["slice"]
       19 MOVE                             R6 R2
       20 LOADN                            R7 1
       21 CALL                             R5 2 1
       22 MOVE                             R2 R5
       23 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       25 MOVE                             R6 R2
       26 MOVE                             R7 R4
       27 GETIMPORT                        R5 K10 [table.insert]
       29 CALL                             R5 2 0
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R5 R6 K11 ["map"]
       33 MOVE                             R6 R2
       34 GETIMPORT                        R7 K13 [tostring]
       36 CALL                             R5 2 1
       37 LOADN                            R8 1
       38 LOADK                            R10 K14 ["Warning: "]
       39 MOVE                             R11 R1
       40 CONCAT                           R9 R10 R11
       41 FASTCALL3                        TABLE_INSERT R5 R8 R9
       43 MOVE                             R7 R5
       44 GETIMPORT                        R6 K10 [table.insert]
       46 CALL                             R6 3 0
       47 GETUPVAL                         R7 2
       48 GETTABLE                         R6 R7 R0
       49 FASTCALL1                        TABLE_UNPACK R5 ; [+3]
       50 MOVE                             R8 R5
       51 GETIMPORT                        R7 K16 [unpack]
       53 CALL                             R7 1 -1
       54 CALL                             R6 -1 0
       55 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["console"]
       14 GETTABLEKS                       R3 R1 K7 ["Array"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETIMPORT                        R7 K1 [script]
       20 GETTABLEKS                       R6 R7 K2 ["Parent"]
       22 GETTABLEKS                       R5 R6 K8 ["ReactSharedInternals"]
       24 CALL                             R4 1 1
       25 LOADNIL                          R5
       26 NEWTABLE                         R6 2 0
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          REF R5
       30 SETTABLEKS                       R7 R6 K9 ["warn"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          REF R5
       34 SETTABLEKS                       R7 R6 K10 ["error"]
       36 DUPCLOSURE                       R5 K11 [PROTO_2]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 CLOSEUPVALS                      R5
       41 RETURN                           R6 1
