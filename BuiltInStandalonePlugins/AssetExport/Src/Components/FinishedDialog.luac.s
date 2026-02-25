PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 NAMECALL                         R2 R2 K1 ["get"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K2 ["createElement"]
       16 GETUPVAL                         R5 4
       17 DUPTABLE                         R6 K11 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
       18 LOADB                            R7 1
       19 SETTABLEKS                       R7 R6 K3 ["Enabled"]
       21 LOADB                            R7 1
       22 SETTABLEKS                       R7 R6 K4 ["Modal"]
       24 LOADB                            R7 0
       25 SETTABLEKS                       R7 R6 K5 ["Resizable"]
       27 LOADK                            R7 K12 ["Export Complete"]
       28 SETTABLEKS                       R7 R6 K6 ["Title"]
       30 GETIMPORT                        R7 K15 [Enum.ZIndexBehavior.Sibling]
       32 SETTABLEKS                       R7 R6 K7 ["ZIndexBehavior"]
       34 GETIMPORT                        R7 K18 [Vector2.new]
       36 LOADN                            R8 8
       37 LOADN                            R9 150
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K8 ["MinSize"]
       41 GETIMPORT                        R7 K18 [Vector2.new]
       43 LOADN                            R8 8
       44 LOADN                            R9 150
       45 CALL                             R7 2 1
       46 SETTABLEKS                       R7 R6 K9 ["Size"]
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R7 R6 K10 ["OnClose"]
       52 NEWTABLE                         R7 0 1
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R8 R9 K2 ["createElement"]
       57 JUMPIFNOT                        R3 ; [+2]
       58 GETUPVAL                         R9 5
       59 JUMP                             ; [+1]
       60 GETUPVAL                         R9 6
       61 DUPTABLE                         R10 K20 [{"theme"}]
       62 GETUPVAL                         R11 7
       63 CALL                             R11 0 1
       64 SETTABLEKS                       R11 R10 K19 ["theme"]
       66 DUPTABLE                         R11 K23 [{"DialogView", "StyleLink"}]
       67 GETUPVAL                         R13 3
       68 GETTABLEKS                       R12 R13 K2 ["createElement"]
       70 GETUPVAL                         R13 8
       71 NEWTABLE                         R14 0 0
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K21 ["DialogView"]
       76 JUMPIF                           R3 ; [+9]
       77 GETUPVAL                         R13 3
       78 GETTABLEKS                       R12 R13 K2 ["createElement"]
       80 LOADK                            R13 K22 ["StyleLink"]
       81 DUPTABLE                         R14 K25 [{"StyleSheet"}]
       82 SETTABLEKS                       R2 R14 K24 ["StyleSheet"]
       84 CALL                             R12 2 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R12
       87 SETTABLEKS                       R12 R11 K22 ["StyleLink"]
       89 CALL                             R8 3 -1
       90 SETLIST                          R7 R8 -1 [1]
       92 CALL                             R4 3 -1
       93 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["FoundationProvider"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Packages"]
       34 GETTABLEKS                       R6 R7 K11 ["StudioFoundation"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R7 R5 K12 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["FoundationProviderAdapter"]
       41 GETTABLEKS                       R8 R2 K14 ["UI"]
       43 GETTABLEKS                       R7 R8 K15 ["Dialog"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R11 R0 K16 ["Src"]
       49 GETTABLEKS                       R10 R11 K17 ["Controllers"]
       51 GETTABLEKS                       R9 R10 K18 ["ExportController"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R2 K19 ["ContextServices"]
       56 GETTABLEKS                       R10 R9 K20 ["Design"]
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R14 R0 K16 ["Src"]
       62 GETTABLEKS                       R13 R14 K12 ["Components"]
       64 GETTABLEKS                       R12 R13 K21 ["FinishedView"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R15 R0 K16 ["Src"]
       71 GETTABLEKS                       R14 R15 K22 ["Util"]
       73 GETTABLEKS                       R13 R14 K23 ["getStudioTheme"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R16 R0 K16 ["Src"]
       80 GETTABLEKS                       R15 R16 K24 ["Flags"]
       82 GETTABLEKS                       R14 R15 K25 ["getFFlagFoundationDisableStylingPolyfill"]
       84 CALL                             R13 1 1
       85 DUPCLOSURE                       R14 K26 [PROTO_1]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R11
       95 RETURN                           R14 1
