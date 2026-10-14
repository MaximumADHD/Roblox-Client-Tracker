PROTO_0:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETIMPORT                        R1 K3 [require]
        4 GETUPVAL                         R2 0
        5 CALL                             R0 2 2
        6 JUMPIF                           R0 ; [+21]
        7 GETIMPORT                        R2 K5 [error]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K6 ["new"]
       12 LOADK                            R4 K7 ["Failed to load the Luau config file %s\n  %s"]
       13 GETUPVAL                         R7 0
       14 FASTCALL1                        TOSTRING R7 ; [+2]
       15 GETIMPORT                        R6 K9 [tostring]
       17 CALL                             R6 1 1
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R8 R1
       20 GETIMPORT                        R7 K9 [tostring]
       22 CALL                             R7 1 1
       23 NAMECALL                         R4 R4 K10 ["format"]
       25 CALL                             R4 3 -1
       26 CALL                             R3 -1 -1
       27 CALL                             R2 -1 0
       28 MOVE                             R2 R1
       29 FASTCALL1                        TYPEOF R2 ; [+3]
       30 MOVE                             R4 R2
       31 GETIMPORT                        R3 K12 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFNOTEQKS                    R3 K13 ["function"] ; [+11]
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R3 R3 K14 ["resolve"]
       39 MOVE                             R4 R2
       40 CALL                             R4 0 -1
       41 CALL                             R3 -1 1
       42 NAMECALL                         R3 R3 K15 ["expect"]
       44 CALL                             R3 1 1
       45 MOVE                             R2 R3
       46 GETTABLEKS                       R3 R2 K16 ["rootDir"]
       48 JUMPIFNOT                        R3 ; [+8]
       49 GETTABLEKS                       R4 R2 K16 ["rootDir"]
       51 FASTCALL1                        TYPEOF R4 ; [+2]
       52 GETIMPORT                        R3 K12 [typeof]
       54 CALL                             R3 1 1
       55 JUMPIFEQKS                       R3 K17 ["Instance"] ; [+6]
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R3 R3 K18 ["Parent"]
       60 SETTABLEKS                       R3 R2 K16 ["rootDir"]
       62 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R1 R1 K1 ["andThen"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Promise"]
       18 CALL                             R3 1 1
       19 NEWTABLE                         R4 1 0
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R0 K8 ["JestTypes"]
       25 CALL                             R5 1 1
       26 DUPCLOSURE                       R6 K9 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R6 R4 K10 ["default"]
       31 RETURN                           R4 1
