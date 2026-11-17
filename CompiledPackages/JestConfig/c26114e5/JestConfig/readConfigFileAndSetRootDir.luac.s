PROTO_0:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 FASTPCALL                        pcall 2 ; [+2]
        4 GETIMPORT                        R0 K3 [pcall]
        6 CALL                             R0 2 2
        7 JUMPIF                           R0 ; [+21]
        8 GETIMPORT                        R2 K5 [error]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K6 ["new"]
       13 LOADK                            R4 K7 ["Failed to load the Luau config file %s\n  %s"]
       14 GETUPVAL                         R7 0
       15 FASTCALL1                        TOSTRING R7 ; [+2]
       16 GETIMPORT                        R6 K9 [tostring]
       18 CALL                             R6 1 1
       19 FASTCALL1                        TOSTRING R1 ; [+3]
       20 MOVE                             R8 R1
       21 GETIMPORT                        R7 K9 [tostring]
       23 CALL                             R7 1 1
       24 NAMECALL                         R4 R4 K10 ["format"]
       26 CALL                             R4 3 -1
       27 CALL                             R3 -1 -1
       28 CALL                             R2 -1 0
       29 MOVE                             R2 R1
       30 FASTCALL1                        TYPEOF R2 ; [+3]
       31 MOVE                             R4 R2
       32 GETIMPORT                        R3 K12 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFNOTEQKS                    R3 K13 ["function"] ; [+11]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K14 ["resolve"]
       40 MOVE                             R4 R2
       41 CALL                             R4 0 -1
       42 CALL                             R3 -1 1
       43 NAMECALL                         R3 R3 K15 ["expect"]
       45 CALL                             R3 1 1
       46 MOVE                             R2 R3
       47 GETTABLEKS                       R3 R2 K16 ["rootDir"]
       49 JUMPIFNOT                        R3 ; [+8]
       50 GETTABLEKS                       R4 R2 K16 ["rootDir"]
       52 FASTCALL1                        TYPEOF R4 ; [+2]
       53 GETIMPORT                        R3 K12 [typeof]
       55 CALL                             R3 1 1
       56 JUMPIFEQKS                       R3 K17 ["Instance"] ; [+6]
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R3 R3 K18 ["Parent"]
       61 SETTABLEKS                       R3 R2 K16 ["rootDir"]
       63 RETURN                           R2 1

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
