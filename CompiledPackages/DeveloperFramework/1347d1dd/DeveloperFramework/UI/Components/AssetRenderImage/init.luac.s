PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["Instance"] ; [+2]
        7 RETURN                           R0 1
        8 LOADK                            R3 K3 ["Decal"]
        9 NAMECALL                         R1 R0 K4 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+5]
       13 LOADK                            R3 K5 ["Texture"]
       14 NAMECALL                         R1 R0 K4 ["IsA"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+3]
       18 GETTABLEKS                       R1 R0 K5 ["Texture"]
       20 RETURN                           R1 1
       21 LOADK                            R3 K6 ["Sky"]
       22 NAMECALL                         R1 R0 K4 ["IsA"]
       24 CALL                             R1 2 1
       25 JUMPIFNOT                        R1 ; [+3]
       26 GETTABLEKS                       R1 R0 K7 ["SkyboxFt"]
       28 RETURN                           R1 1
       29 GETIMPORT                        R1 K9 [error]
       31 LOADK                            R2 K10 ["Unsupported Instance type"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["Instance"] ; [+4]
        7 GETIMPORT                        R1 K6 [Enum.ScaleType.Fit]
        9 RETURN                           R1 1
       10 LOADK                            R3 K7 ["Sky"]
       11 NAMECALL                         R1 R0 K8 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+3]
       15 GETIMPORT                        R1 K10 [Enum.ScaleType.Crop]
       17 RETURN                           R1 1
       18 GETIMPORT                        R1 K6 [Enum.ScaleType.Fit]
       20 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Position"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 JUMPIF                           R3 ; [+7]
        7 GETIMPORT                        R3 K5 [UDim2.new]
        9 LOADN                            R4 1
       10 LOADN                            R5 0
       11 LOADN                            R6 1
       12 LOADN                            R7 0
       13 CALL                             R3 4 1
       14 GETTABLEKS                       R4 R1 K6 ["Image"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K7 ["createElement"]
       19 GETUPVAL                         R6 1
       20 DUPTABLE                         R7 K9 [{"Position", "Size", "Background"}]
       21 SETTABLEKS                       R2 R7 K1 ["Position"]
       23 SETTABLEKS                       R3 R7 K2 ["Size"]
       25 GETUPVAL                         R8 2
       26 SETTABLEKS                       R8 R7 K8 ["Background"]
       28 DUPTABLE                         R8 K10 [{"Image"}]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R9 R10 K7 ["createElement"]
       32 GETUPVAL                         R10 3
       33 DUPTABLE                         R11 K12 [{"Style"}]
       34 DUPTABLE                         R12 K14 [{"ScaleType", "Image"}]
       35 FASTCALL1                        TYPEOF R4 ; [+3]
       36 MOVE                             R15 R4
       37 GETIMPORT                        R14 K16 [typeof]
       39 CALL                             R14 1 1
       40 JUMPIFEQKS                       R14 K17 ["Instance"] ; [+4]
       42 GETIMPORT                        R13 K20 [Enum.ScaleType.Fit]
       44 JUMP                             ; [+11]
       45 LOADK                            R16 K21 ["Sky"]
       46 NAMECALL                         R14 R4 K22 ["IsA"]
       48 CALL                             R14 2 1
       49 JUMPIFNOT                        R14 ; [+3]
       50 GETIMPORT                        R13 K24 [Enum.ScaleType.Crop]
       52 JUMP                             ; [+3]
       53 GETIMPORT                        R13 K20 [Enum.ScaleType.Fit]
       55 JUMP                             ; [0]
       56 SETTABLEKS                       R13 R12 K13 ["ScaleType"]
       58 GETUPVAL                         R13 4
       59 MOVE                             R14 R4
       60 CALL                             R13 1 1
       61 SETTABLEKS                       R13 R12 K6 ["Image"]
       63 SETTABLEKS                       R12 R11 K11 ["Style"]
       65 CALL                             R9 2 1
       66 SETTABLEKS                       R9 R8 K6 ["Image"]
       68 CALL                             R5 3 -1
       69 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R7 R0 K2 ["UI"]
       29 GETTABLEKS                       R6 R7 K10 ["Components"]
       31 GETTABLEKS                       R5 R6 K11 ["Container"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R8 R0 K2 ["UI"]
       38 GETTABLEKS                       R7 R8 K10 ["Components"]
       40 GETTABLEKS                       R6 R7 K12 ["Image"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R9 R0 K2 ["UI"]
       47 GETTABLEKS                       R8 R9 K10 ["Components"]
       49 GETTABLEKS                       R7 R8 K13 ["Box"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R9 R0 K14 ["Util"]
       56 GETTABLEKS                       R8 R9 K15 ["Typecheck"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R1 K16 ["PureComponent"]
       61 LOADK                            R10 K17 ["AssetRenderImage"]
       62 NAMECALL                         R8 R8 K18 ["extend"]
       64 CALL                             R8 2 1
       65 GETTABLEKS                       R9 R7 K19 ["wrap"]
       67 MOVE                             R10 R8
       68 GETIMPORT                        R11 K1 [script]
       70 CALL                             R9 2 0
       71 DUPCLOSURE                       R9 K20 [PROTO_0]
       72 DUPCLOSURE                       R10 K21 [PROTO_1]
       73 DUPCLOSURE                       R11 K22 [PROTO_2]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R9
       79 SETTABLEKS                       R11 R8 K23 ["render"]
       81 MOVE                             R11 R3
       82 DUPTABLE                         R12 K25 [{"Stylizer"}]
       83 GETTABLEKS                       R13 R2 K24 ["Stylizer"]
       85 SETTABLEKS                       R13 R12 K24 ["Stylizer"]
       87 CALL                             R11 1 1
       88 MOVE                             R12 R8
       89 CALL                             R11 1 1
       90 MOVE                             R8 R11
       91 RETURN                           R8 1
