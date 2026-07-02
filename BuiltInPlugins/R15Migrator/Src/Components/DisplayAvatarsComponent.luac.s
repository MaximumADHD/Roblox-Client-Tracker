PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Model1"]
        4 GETTABLEKS                       R3 R1 K2 ["Model2"]
        6 GETTABLEKS                       R4 R1 K3 ["Animation1"]
        8 GETTABLEKS                       R5 R1 K4 ["Animation2"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETTABLEKS                       R7 R1 K6 ["Loaded"]
       14 GETTABLEKS                       R8 R6 K7 ["PreviewWindowSize"]
       16 GETTABLEKS                       R9 R6 K8 ["PreviewWindowPosition"]
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K9 ["createElement"]
       21 GETUPVAL                         R11 1
       22 NEWTABLE                         R12 0 0
       24 DUPTABLE                         R13 K13 [{"OriginalPreview", "Arrow", "SuggestedPreview"}]
       25 GETUPVAL                         R14 0
       26 GETTABLEKS                       R14 R14 K9 ["createElement"]
       28 GETUPVAL                         R15 2
       29 DUPTABLE                         R16 K19 [{["Size"], ["Model"], ["AnimationId"], ["Loaded"], ["Label"] = "R6"}]
       30 SETTABLEKS                       R8 R16 K14 ["Size"]
       32 SETTABLEKS                       R2 R16 K15 ["Model"]
       34 SETTABLEKS                       R4 R16 K16 ["AnimationId"]
       36 SETTABLEKS                       R7 R16 K6 ["Loaded"]
       38 CALL                             R14 2 1
       39 SETTABLEKS                       R14 R13 K10 ["OriginalPreview"]
       41 GETUPVAL                         R14 0
       42 GETTABLEKS                       R14 R14 K9 ["createElement"]
       44 GETUPVAL                         R15 3
       45 DUPTABLE                         R16 K25 [{"Size", "Position", "Image", "ImageRectSize", "ImageRectOffset", "ImageColor3"}]
       46 GETTABLEKS                       R17 R6 K11 ["Arrow"]
       48 GETTABLEKS                       R17 R17 K14 ["Size"]
       50 SETTABLEKS                       R17 R16 K14 ["Size"]
       52 GETTABLEKS                       R17 R6 K11 ["Arrow"]
       54 GETTABLEKS                       R17 R17 K20 ["Position"]
       56 SETTABLEKS                       R17 R16 K20 ["Position"]
       58 GETTABLEKS                       R17 R6 K11 ["Arrow"]
       60 GETTABLEKS                       R17 R17 K21 ["Image"]
       62 SETTABLEKS                       R17 R16 K21 ["Image"]
       64 GETTABLEKS                       R17 R6 K11 ["Arrow"]
       66 GETTABLEKS                       R17 R17 K22 ["ImageRectSize"]
       68 SETTABLEKS                       R17 R16 K22 ["ImageRectSize"]
       70 GETTABLEKS                       R17 R6 K11 ["Arrow"]
       72 GETTABLEKS                       R17 R17 K26 ["Offset"]
       74 SETTABLEKS                       R17 R16 K23 ["ImageRectOffset"]
       76 GETTABLEKS                       R17 R6 K11 ["Arrow"]
       78 GETTABLEKS                       R17 R17 K27 ["Color"]
       80 SETTABLEKS                       R17 R16 K24 ["ImageColor3"]
       82 CALL                             R14 2 1
       83 SETTABLEKS                       R14 R13 K11 ["Arrow"]
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R14 R14 K9 ["createElement"]
       88 GETUPVAL                         R15 2
       89 DUPTABLE                         R16 K29 [{["Size"], ["Position"], ["Model"], ["AnimationId"], ["Loaded"], ["Label"] = "R15"}]
       90 SETTABLEKS                       R8 R16 K14 ["Size"]
       92 SETTABLEKS                       R9 R16 K20 ["Position"]
       94 SETTABLEKS                       R3 R16 K15 ["Model"]
       96 SETTABLEKS                       R5 R16 K16 ["AnimationId"]
       98 SETTABLEKS                       R7 R16 K6 ["Loaded"]
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K12 ["SuggestedPreview"]
      103 CALL                             R10 3 -1
      104 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R2 K10 ["Style"]
       25 GETTABLEKS                       R4 R4 K11 ["Stylizer"]
       27 GETTABLEKS                       R5 R2 K12 ["UI"]
       29 GETTABLEKS                       R6 R5 K13 ["Pane"]
       31 GETTABLEKS                       R7 R5 K14 ["Image"]
       33 GETIMPORT                        R8 K1 [script]
       35 GETTABLEKS                       R8 R8 K15 ["Parent"]
       37 GETIMPORT                        R9 K5 [require]
       39 GETTABLEKS                       R10 R8 K16 ["PreviewModelComponent"]
       41 CALL                             R9 1 1
       42 GETTABLEKS                       R10 R1 K17 ["PureComponent"]
       44 LOADK                            R12 K18 ["DisplayAvatarsComponent"]
       45 NAMECALL                         R10 R10 K19 ["extend"]
       47 CALL                             R10 2 1
       48 DUPCLOSURE                       R11 K20 [PROTO_0]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R7
       53 SETTABLEKS                       R11 R10 K21 ["render"]
       55 GETTABLEKS                       R11 R3 K22 ["withContext"]
       57 DUPTABLE                         R12 K23 [{"Stylizer"}]
       58 SETTABLEKS                       R4 R12 K11 ["Stylizer"]
       60 CALL                             R11 1 1
       61 MOVE                             R12 R10
       62 CALL                             R11 1 1
       63 MOVE                             R10 R11
       64 RETURN                           R10 1
