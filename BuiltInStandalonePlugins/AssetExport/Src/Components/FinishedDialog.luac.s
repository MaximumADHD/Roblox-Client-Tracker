PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K10 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
        9 LOADB                            R5 1
       10 SETTABLEKS                       R5 R4 K2 ["Enabled"]
       12 LOADB                            R5 1
       13 SETTABLEKS                       R5 R4 K3 ["Modal"]
       15 LOADB                            R5 0
       16 SETTABLEKS                       R5 R4 K4 ["Resizable"]
       18 LOADK                            R5 K11 ["Export Complete"]
       19 SETTABLEKS                       R5 R4 K5 ["Title"]
       21 GETIMPORT                        R5 K14 [Enum.ZIndexBehavior.Sibling]
       23 SETTABLEKS                       R5 R4 K6 ["ZIndexBehavior"]
       25 GETIMPORT                        R5 K17 [Vector2.new]
       27 LOADN                            R6 8
       28 LOADN                            R7 150
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K7 ["MinSize"]
       32 GETIMPORT                        R5 K17 [Vector2.new]
       34 LOADN                            R6 8
       35 LOADN                            R7 150
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K8 ["Size"]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R5 R4 K9 ["OnClose"]
       43 DUPTABLE                         R5 K19 [{"MainProvider"}]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K1 ["createElement"]
       47 GETUPVAL                         R7 3
       48 DUPTABLE                         R8 K21 [{"theme"}]
       49 GETUPVAL                         R9 4
       50 CALL                             R9 0 1
       51 SETTABLEKS                       R9 R8 K20 ["theme"]
       53 DUPTABLE                         R9 K23 [{"DialogView"}]
       54 GETUPVAL                         R10 1
       55 GETTABLEKS                       R10 R10 K1 ["createElement"]
       57 GETUPVAL                         R11 5
       58 NEWTABLE                         R12 0 0
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R9 K22 ["DialogView"]
       63 CALL                             R6 3 1
       64 SETTABLEKS                       R6 R5 K18 ["MainProvider"]
       66 CALL                             R2 3 -1
       67 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R4 K11 ["FoundationProviderAdapter"]
       32 GETTABLEKS                       R5 R2 K12 ["UI"]
       34 GETTABLEKS                       R5 R5 K13 ["Dialog"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K14 ["Src"]
       40 GETTABLEKS                       R7 R7 K15 ["Controllers"]
       42 GETTABLEKS                       R7 R7 K16 ["ExportController"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["Src"]
       49 GETTABLEKS                       R8 R8 K10 ["Components"]
       51 GETTABLEKS                       R8 R8 K17 ["FinishedView"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K14 ["Src"]
       58 GETTABLEKS                       R9 R9 K18 ["Util"]
       60 GETTABLEKS                       R9 R9 K19 ["getStudioTheme"]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K20 [PROTO_1]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 RETURN                           R9 1
