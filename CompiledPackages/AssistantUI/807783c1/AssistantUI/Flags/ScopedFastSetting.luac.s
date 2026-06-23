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
        4 MOVE                             R4 R2
        5 MOVE                             R5 R1
        6 CALL                             R3 2 1
        7 GETUPVAL                         R5 1
        8 GETTABLE                         R4 R5 R2
        9 JUMPIFNOTEQKNIL                  R4 ; [+3]
       11 GETUPVAL                         R4 1
       12 SETTABLE                         R3 R4 R2
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FastSetting"]
       13 CALL                             R1 1 1
       14 LOADK                            R4 K8 ["Packages"]
       15 NAMECALL                         R2 R0 K3 ["FindFirstAncestor"]
       17 CALL                             R2 2 1
       18 GETTABLEKS                       R2 R2 K9 ["Dev"]
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K10 ["JestGlobals"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 4 0
       27 GETIMPORT                        R5 K12 [game]
       29 GETTABLEKS                       R5 R5 K13 ["GetFastFlag"]
       31 SETTABLEKS                       R5 R4 K14 ["boolean"]
       33 GETIMPORT                        R5 K12 [game]
       35 GETTABLEKS                       R5 R5 K15 ["GetFastInt"]
       37 SETTABLEKS                       R5 R4 K16 ["number"]
       39 GETIMPORT                        R5 K12 [game]
       41 GETTABLEKS                       R5 R5 K17 ["GetFastString"]
       43 SETTABLEKS                       R5 R4 K18 ["string"]
       45 NEWTABLE                         R5 4 0
       47 GETIMPORT                        R6 K12 [game]
       49 GETTABLEKS                       R6 R6 K19 ["SetFastFlagForTesting"]
       51 SETTABLEKS                       R6 R5 K14 ["boolean"]
       53 GETIMPORT                        R6 K12 [game]
       55 GETTABLEKS                       R6 R6 K20 ["SetFastIntForTesting"]
       57 SETTABLEKS                       R6 R5 K16 ["number"]
       59 GETIMPORT                        R6 K12 [game]
       61 GETTABLEKS                       R6 R6 K21 ["SetFastStringForTesting"]
       63 SETTABLEKS                       R6 R5 K18 ["string"]
       65 NEWTABLE                         R6 0 0
       67 DUPCLOSURE                       R7 K22 [PROTO_0]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 GETTABLEKS                       R8 R3 K23 ["afterEach"]
       72 DUPCLOSURE                       R9 K24 [PROTO_1]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 CALL                             R8 1 0
       76 DUPCLOSURE                       R8 K25 [PROTO_2]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R6
       79 DUPTABLE                         R9 K29 [{"ScopedFastFlagSetting", "ScopedFastIntSetting", "ScopedFastStringSetting"}]
       80 SETTABLEKS                       R8 R9 K26 ["ScopedFastFlagSetting"]
       82 SETTABLEKS                       R8 R9 K27 ["ScopedFastIntSetting"]
       84 SETTABLEKS                       R8 R9 K28 ["ScopedFastStringSetting"]
       86 RETURN                           R9 1
