PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R4 1
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R6 R1
       10 GETIMPORT                        R5 K1 [typeof]
       12 CALL                             R5 1 1
       13 GETTABLE                         R3 R4 R5
       14 JUMPIFNOT                        R2 ; [+35]
       15 JUMPIFNOT                        R3 ; [+34]
       16 GETIMPORT                        R4 K3 [pcall]
       18 MOVE                             R5 R2
       19 GETIMPORT                        R6 K5 [game]
       21 MOVE                             R7 R0
       22 CALL                             R4 3 2
       23 JUMPIF                           R4 ; [+8]
       24 GETIMPORT                        R6 K7 [warn]
       26 MOVE                             R7 R5
       27 CALL                             R6 1 0
       28 GETIMPORT                        R6 K9 [error]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 0
       32 GETIMPORT                        R6 K3 [pcall]
       34 MOVE                             R7 R3
       35 GETIMPORT                        R8 K5 [game]
       37 MOVE                             R9 R0
       38 MOVE                             R10 R1
       39 CALL                             R6 4 2
       40 JUMPIF                           R6 ; [+8]
       41 GETIMPORT                        R8 K7 [warn]
       43 MOVE                             R9 R7
       44 CALL                             R8 1 0
       45 GETIMPORT                        R8 K9 [error]
       47 MOVE                             R9 R7
       48 CALL                             R8 1 0
       49 RETURN                           R5 1
       50 GETIMPORT                        R4 K9 [error]
       52 LOADK                            R6 K10 ["Unsupported flag type for %*: %*"]
       53 MOVE                             R8 R0
       54 FASTCALL1                        TYPEOF R1 ; [+3]
       55 MOVE                             R10 R1
       56 GETIMPORT                        R9 K1 [typeof]
       58 CALL                             R9 1 1
       59 NAMECALL                         R6 R6 K11 ["format"]
       61 CALL                             R6 3 1
       62 MOVE                             R5 R6
       63 CALL                             R4 1 0
       64 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R3
        6 MOVE                             R7 R4
        7 CALL                             R5 2 0
        8 FORGLOOP                         R0 2 ; [-5]
       10 GETIMPORT                        R0 K2 [table.clear]
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R2
        6 MOVE                             R6 R1
        7 CALL                             R4 2 1
        8 SETTABLE                         R4 R3 R2
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Packages"]
       11 GETTABLEKS                       R3 R4 K7 ["Dev"]
       13 GETTABLEKS                       R2 R3 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 GETIMPORT                        R4 K10 [game]
       20 GETTABLEKS                       R3 R4 K11 ["GetFastFlag"]
       22 SETTABLEKS                       R3 R2 K12 ["boolean"]
       24 GETIMPORT                        R4 K10 [game]
       26 GETTABLEKS                       R3 R4 K13 ["GetFastInt"]
       28 SETTABLEKS                       R3 R2 K14 ["number"]
       30 GETIMPORT                        R4 K10 [game]
       32 GETTABLEKS                       R3 R4 K15 ["GetFastString"]
       34 SETTABLEKS                       R3 R2 K16 ["string"]
       36 NEWTABLE                         R3 4 0
       38 GETIMPORT                        R5 K10 [game]
       40 GETTABLEKS                       R4 R5 K17 ["SetFastFlagForTesting"]
       42 SETTABLEKS                       R4 R3 K12 ["boolean"]
       44 GETIMPORT                        R5 K10 [game]
       46 GETTABLEKS                       R4 R5 K18 ["SetFastIntForTesting"]
       48 SETTABLEKS                       R4 R3 K14 ["number"]
       50 GETIMPORT                        R5 K10 [game]
       52 GETTABLEKS                       R4 R5 K19 ["SetFastStringForTesting"]
       54 SETTABLEKS                       R4 R3 K16 ["string"]
       56 NEWTABLE                         R4 0 0
       58 DUPCLOSURE                       R5 K20 [PROTO_0]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 GETTABLEKS                       R6 R1 K21 ["afterEach"]
       63 DUPCLOSURE                       R7 K22 [PROTO_1]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 CALL                             R6 1 0
       67 DUPCLOSURE                       R6 K23 [PROTO_2]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 DUPTABLE                         R7 K27 [{"ScopedFastFlagSetting", "ScopedFastIntSetting", "ScopedFastStringSetting"}]
       71 SETTABLEKS                       R6 R7 K24 ["ScopedFastFlagSetting"]
       73 SETTABLEKS                       R6 R7 K25 ["ScopedFastIntSetting"]
       75 SETTABLEKS                       R6 R7 K26 ["ScopedFastStringSetting"]
       77 RETURN                           R7 1
