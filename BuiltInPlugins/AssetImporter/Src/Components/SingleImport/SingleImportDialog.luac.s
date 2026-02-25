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
       20 GETUPVAL                         R5 4
       21 CALL                             R5 0 1
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R6 R7 K3 ["createElement"]
       25 GETUPVAL                         R7 5
       26 DUPTABLE                         R8 K12 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
       27 GETTABLEKS                       R9 R0 K13 ["enabled"]
       29 SETTABLEKS                       R9 R8 K4 ["Enabled"]
       31 LOADB                            R9 1
       32 SETTABLEKS                       R9 R8 K5 ["Modal"]
       34 LOADB                            R9 0
       35 SETTABLEKS                       R9 R8 K6 ["Resizable"]
       37 LOADK                            R11 K14 ["Plugin"]
       38 LOADK                            R12 K15 ["Import"]
       39 NAMECALL                         R9 R2 K16 ["getText"]
       41 CALL                             R9 3 1
       42 SETTABLEKS                       R9 R8 K7 ["Title"]
       44 GETIMPORT                        R9 K19 [Enum.ZIndexBehavior.Sibling]
       46 SETTABLEKS                       R9 R8 K8 ["ZIndexBehavior"]
       48 GETIMPORT                        R9 K22 [Vector2.new]
       50 LOADN                            R10 164
       51 LOADN                            R11 135
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K9 ["MinSize"]
       55 GETIMPORT                        R9 K22 [Vector2.new]
       57 LOADN                            R10 164
       58 LOADN                            R11 135
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K10 ["Size"]
       62 NEWCLOSURE                       R9 P0
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R9 R8 K11 ["OnClose"]
       66 NEWTABLE                         R9 0 1
       68 GETUPVAL                         R11 3
       69 GETTABLEKS                       R10 R11 K3 ["createElement"]
       71 JUMPIFNOT                        R5 ; [+2]
       72 GETUPVAL                         R11 6
       73 JUMP                             ; [+1]
       74 GETUPVAL                         R11 7
       75 DUPTABLE                         R12 K24 [{"theme"}]
       76 GETUPVAL                         R13 8
       77 CALL                             R13 0 1
       78 SETTABLEKS                       R13 R12 K23 ["theme"]
       80 DUPTABLE                         R13 K26 [{"view"}]
       81 GETUPVAL                         R15 3
       82 GETTABLEKS                       R14 R15 K3 ["createElement"]
       84 GETUPVAL                         R16 9
       85 GETTABLEKS                       R15 R16 K27 ["View"]
       87 DUPTABLE                         R16 K30 [{"tag", "ref"}]
       88 LOADK                            R17 K31 ["size-full"]
       89 SETTABLEKS                       R17 R16 K28 ["tag"]
       91 SETTABLEKS                       R4 R16 K29 ["ref"]
       93 NEWTABLE                         R17 0 1
       95 GETUPVAL                         R18 10
       96 GETTABLEKS                       R19 R0 K32 ["children"]
       98 DUPTABLE                         R20 K34 [{"stylelink"}]
       99 GETUPVAL                         R22 3
      100 GETTABLEKS                       R21 R22 K3 ["createElement"]
      102 LOADK                            R22 K35 ["StyleLink"]
      103 DUPTABLE                         R23 K37 [{"StyleSheet"}]
      104 SETTABLEKS                       R3 R23 K36 ["StyleSheet"]
      106 CALL                             R21 2 1
      107 SETTABLEKS                       R21 R20 K33 ["stylelink"]
      109 CALL                             R18 2 -1
      110 SETLIST                          R17 R18 -1 [1]
      112 CALL                             R14 3 1
      113 SETTABLEKS                       R14 R13 K25 ["view"]
      115 CALL                             R10 3 -1
      116 SETLIST                          R9 R10 -1 [1]
      118 CALL                             R6 3 -1
      119 RETURN                           R6 -1

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
       28 GETTABLEKS                       R4 R3 K10 ["FoundationProvider"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Packages"]
       34 GETTABLEKS                       R6 R7 K11 ["StudioFoundation"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R7 R5 K12 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["FoundationProviderAdapter"]
       41 GETTABLEKS                       R7 R2 K14 ["ContextServices"]
       43 GETTABLEKS                       R8 R7 K15 ["Design"]
       45 GETTABLEKS                       R9 R7 K16 ["Localization"]
       47 GETTABLEKS                       R11 R2 K17 ["UI"]
       49 GETTABLEKS                       R10 R11 K18 ["Dialog"]
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R14 R0 K19 ["Src"]
       55 GETTABLEKS                       R13 R14 K20 ["Controllers"]
       57 GETTABLEKS                       R12 R13 K21 ["SingleMeshController"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R15 R0 K19 ["Src"]
       64 GETTABLEKS                       R14 R15 K22 ["Utility"]
       66 GETTABLEKS                       R13 R14 K23 ["getStudioTheme"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R15 R0 K6 ["Packages"]
       73 GETTABLEKS                       R14 R15 K24 ["Dash"]
       75 CALL                             R13 1 1
       76 GETTABLEKS                       R14 R13 K25 ["join"]
       78 GETIMPORT                        R15 K5 [require]
       80 GETTABLEKS                       R18 R0 K19 ["Src"]
       82 GETTABLEKS                       R17 R18 K26 ["Flags"]
       84 GETTABLEKS                       R16 R17 K27 ["getFFlagFoundationDisableStylingPolyfill"]
       86 CALL                             R15 1 1
       87 DUPCLOSURE                       R16 K28 [PROTO_1]
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R14
       99 RETURN                           R16 1
