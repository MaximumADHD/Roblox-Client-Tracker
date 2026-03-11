PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancelImport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 NAMECALL                         R3 R3 K1 ["get"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K2 ["useRef"]
       18 LOADNIL                          R5
       19 CALL                             R4 1 1
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R5 R6 K3 ["createElement"]
       23 GETUPVAL                         R6 4
       24 DUPTABLE                         R7 K12 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
       25 GETTABLEKS                       R8 R0 K13 ["enabled"]
       27 SETTABLEKS                       R8 R7 K4 ["Enabled"]
       29 LOADB                            R8 1
       30 SETTABLEKS                       R8 R7 K5 ["Modal"]
       32 LOADB                            R8 0
       33 SETTABLEKS                       R8 R7 K6 ["Resizable"]
       35 LOADK                            R10 K14 ["Plugin"]
       36 LOADK                            R11 K15 ["Import"]
       37 NAMECALL                         R8 R2 K16 ["getText"]
       39 CALL                             R8 3 1
       40 SETTABLEKS                       R8 R7 K7 ["Title"]
       42 GETIMPORT                        R8 K19 [Enum.ZIndexBehavior.Sibling]
       44 SETTABLEKS                       R8 R7 K8 ["ZIndexBehavior"]
       46 GETIMPORT                        R8 K22 [Vector2.new]
       48 LOADN                            R9 164
       49 LOADN                            R10 135
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K9 ["MinSize"]
       53 GETIMPORT                        R8 K22 [Vector2.new]
       55 LOADN                            R9 164
       56 LOADN                            R10 135
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K10 ["Size"]
       60 NEWCLOSURE                       R8 P0
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R8 R7 K11 ["OnClose"]
       64 NEWTABLE                         R8 0 1
       66 GETUPVAL                         R10 3
       67 GETTABLEKS                       R9 R10 K3 ["createElement"]
       69 GETUPVAL                         R10 5
       70 DUPTABLE                         R11 K24 [{"theme"}]
       71 GETUPVAL                         R12 6
       72 CALL                             R12 0 1
       73 SETTABLEKS                       R12 R11 K23 ["theme"]
       75 DUPTABLE                         R12 K26 [{"view"}]
       76 GETUPVAL                         R14 3
       77 GETTABLEKS                       R13 R14 K3 ["createElement"]
       79 GETUPVAL                         R15 7
       80 GETTABLEKS                       R14 R15 K27 ["View"]
       82 DUPTABLE                         R15 K30 [{"tag", "ref"}]
       83 LOADK                            R16 K31 ["size-full"]
       84 SETTABLEKS                       R16 R15 K28 ["tag"]
       86 SETTABLEKS                       R4 R15 K29 ["ref"]
       88 NEWTABLE                         R16 0 1
       90 GETUPVAL                         R17 8
       91 GETTABLEKS                       R18 R0 K32 ["children"]
       93 DUPTABLE                         R19 K34 [{"stylelink"}]
       94 GETUPVAL                         R21 3
       95 GETTABLEKS                       R20 R21 K3 ["createElement"]
       97 LOADK                            R21 K35 ["StyleLink"]
       98 DUPTABLE                         R22 K37 [{"StyleSheet"}]
       99 SETTABLEKS                       R3 R22 K36 ["StyleSheet"]
      101 CALL                             R20 2 1
      102 SETTABLEKS                       R20 R19 K33 ["stylelink"]
      104 CALL                             R17 2 -1
      105 SETLIST                          R16 R17 -1 [1]
      107 CALL                             R13 3 1
      108 SETTABLEKS                       R13 R12 K25 ["view"]
      110 CALL                             R9 3 -1
      111 SETLIST                          R8 R9 -1 [1]
      113 CALL                             R5 3 -1
      114 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R4 K11 ["Components"]
       37 GETTABLEKS                       R5 R6 K12 ["FoundationProviderAdapter"]
       39 GETTABLEKS                       R6 R2 K13 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K14 ["Design"]
       43 GETTABLEKS                       R8 R6 K15 ["Localization"]
       45 GETTABLEKS                       R10 R2 K16 ["UI"]
       47 GETTABLEKS                       R9 R10 K17 ["Dialog"]
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R13 R0 K18 ["Src"]
       53 GETTABLEKS                       R12 R13 K19 ["Controllers"]
       55 GETTABLEKS                       R11 R12 K20 ["SingleMeshController"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R14 R0 K18 ["Src"]
       62 GETTABLEKS                       R13 R14 K21 ["Utility"]
       64 GETTABLEKS                       R12 R13 K22 ["getStudioTheme"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R14 R0 K6 ["Packages"]
       71 GETTABLEKS                       R13 R14 K23 ["Dash"]
       73 CALL                             R12 1 1
       74 GETTABLEKS                       R13 R12 K24 ["join"]
       76 DUPCLOSURE                       R14 K25 [PROTO_1]
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R13
       86 RETURN                           R14 1
