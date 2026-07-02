PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancelImport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 NAMECALL                         R3 R3 K1 ["get"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K2 ["useRef"]
       18 LOADNIL                          R5
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K3 ["createElement"]
       23 GETUPVAL                         R6 4
       24 DUPTABLE                         R7 K14 [{["Enabled"], ["Modal"] = True, ["Resizable"] = False, ["Title"], ["ZIndexBehavior"], ["MinSize"], ["Size"], ["OnClose"]}]
       25 GETTABLEKS                       R8 R0 K15 ["enabled"]
       27 SETTABLEKS                       R8 R7 K4 ["Enabled"]
       29 LOADK                            R10 K16 ["Plugin"]
       30 LOADK                            R11 K17 ["Import"]
       31 NAMECALL                         R8 R2 K18 ["getText"]
       33 CALL                             R8 3 1
       34 SETTABLEKS                       R8 R7 K9 ["Title"]
       36 GETIMPORT                        R8 K21 [Enum.ZIndexBehavior.Sibling]
       38 SETTABLEKS                       R8 R7 K10 ["ZIndexBehavior"]
       40 GETTABLEKS                       R8 R0 K22 ["size"]
       42 SETTABLEKS                       R8 R7 K11 ["MinSize"]
       44 GETTABLEKS                       R8 R0 K22 ["size"]
       46 SETTABLEKS                       R8 R7 K12 ["Size"]
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R8 R7 K13 ["OnClose"]
       52 NEWTABLE                         R8 0 1
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R9 R9 K3 ["createElement"]
       57 GETUPVAL                         R10 5
       58 DUPTABLE                         R11 K24 [{"theme"}]
       59 GETUPVAL                         R12 6
       60 CALL                             R12 0 1
       61 SETTABLEKS                       R12 R11 K23 ["theme"]
       63 DUPTABLE                         R12 K26 [{"view"}]
       64 GETUPVAL                         R13 3
       65 GETTABLEKS                       R13 R13 K3 ["createElement"]
       67 GETUPVAL                         R14 7
       68 GETTABLEKS                       R14 R14 K27 ["View"]
       70 DUPTABLE                         R15 K31 [{["tag"] = "size-full", ["ref"]}]
       71 SETTABLEKS                       R4 R15 K30 ["ref"]
       73 NEWTABLE                         R16 0 1
       75 GETUPVAL                         R17 8
       76 GETTABLEKS                       R18 R0 K32 ["children"]
       78 DUPTABLE                         R19 K34 [{"stylelink"}]
       79 GETUPVAL                         R20 3
       80 GETTABLEKS                       R20 R20 K3 ["createElement"]
       82 LOADK                            R21 K35 ["StyleLink"]
       83 DUPTABLE                         R22 K37 [{"StyleSheet"}]
       84 SETTABLEKS                       R3 R22 K36 ["StyleSheet"]
       86 CALL                             R20 2 1
       87 SETTABLEKS                       R20 R19 K33 ["stylelink"]
       89 CALL                             R17 2 -1
       90 SETLIST                          R16 R17 -1 [1]
       92 CALL                             R13 3 1
       93 SETTABLEKS                       R13 R12 K25 ["view"]
       95 CALL                             R9 3 -1
       96 SETLIST                          R8 R9 -1 [1]
       98 CALL                             R5 3 -1
       99 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
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
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Components"]
       37 GETTABLEKS                       R5 R5 K12 ["FoundationProviderAdapter"]
       39 GETTABLEKS                       R6 R2 K13 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K14 ["Design"]
       43 GETTABLEKS                       R8 R6 K15 ["Localization"]
       45 GETTABLEKS                       R9 R2 K16 ["UI"]
       47 GETTABLEKS                       R9 R9 K17 ["Dialog"]
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R11 R0 K18 ["Src"]
       53 GETTABLEKS                       R11 R11 K19 ["Controllers"]
       55 GETTABLEKS                       R11 R11 K20 ["SingleMeshController"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R0 K18 ["Src"]
       62 GETTABLEKS                       R12 R12 K21 ["Utility"]
       64 GETTABLEKS                       R12 R12 K22 ["getStudioTheme"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R0 K6 ["Packages"]
       71 GETTABLEKS                       R13 R13 K23 ["Dash"]
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
