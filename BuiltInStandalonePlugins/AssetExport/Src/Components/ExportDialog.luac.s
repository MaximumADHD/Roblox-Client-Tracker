PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancelExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETIMPORT                        R3 K3 [Vector2.new]
        9 LOADN                            R4 8
       10 LOADN                            R5 144
       11 CALL                             R3 2 1
       12 LOADB                            R4 1
       13 JUMPIFEQKS                       R2 K4 ["Main"] ; [+3]
       15 JUMPIFNOTEQKS                    R2 K5 ["Export"] ; [+8]
       17 GETIMPORT                        R5 K3 [Vector2.new]
       19 LOADN                            R6 8
       20 LOADN                            R7 250
       21 CALL                             R5 2 1
       22 MOVE                             R3 R5
       23 LOADB                            R4 0
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K0 ["use"]
       27 CALL                             R5 0 1
       28 NAMECALL                         R5 R5 K6 ["get"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R6 R7 K7 ["useRef"]
       34 LOADNIL                          R7
       35 CALL                             R6 1 1
       36 GETUPVAL                         R7 4
       37 CALL                             R7 0 1
       38 GETUPVAL                         R9 3
       39 GETTABLEKS                       R8 R9 K8 ["createElement"]
       41 GETUPVAL                         R9 5
       42 DUPTABLE                         R10 K17 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
       43 GETTABLEKS                       R11 R0 K9 ["Enabled"]
       45 SETTABLEKS                       R11 R10 K9 ["Enabled"]
       47 LOADB                            R11 1
       48 SETTABLEKS                       R11 R10 K10 ["Modal"]
       50 SETTABLEKS                       R4 R10 K11 ["Resizable"]
       52 LOADK                            R11 K18 ["Export Gltf"]
       53 SETTABLEKS                       R11 R10 K12 ["Title"]
       55 GETIMPORT                        R11 K21 [Enum.ZIndexBehavior.Sibling]
       57 SETTABLEKS                       R11 R10 K13 ["ZIndexBehavior"]
       59 SETTABLEKS                       R3 R10 K14 ["MinSize"]
       61 SETTABLEKS                       R3 R10 K15 ["Size"]
       63 NEWCLOSURE                       R11 P0
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R11 R10 K16 ["OnClose"]
       67 NEWTABLE                         R11 0 1
       69 GETUPVAL                         R13 3
       70 GETTABLEKS                       R12 R13 K8 ["createElement"]
       72 JUMPIFNOT                        R7 ; [+2]
       73 GETUPVAL                         R13 6
       74 JUMP                             ; [+1]
       75 GETUPVAL                         R13 7
       76 DUPTABLE                         R14 K23 [{"theme"}]
       77 GETUPVAL                         R15 8
       78 CALL                             R15 0 1
       79 SETTABLEKS                       R15 R14 K22 ["theme"]
       81 DUPTABLE                         R15 K25 [{"view"}]
       82 GETUPVAL                         R17 3
       83 GETTABLEKS                       R16 R17 K8 ["createElement"]
       85 GETUPVAL                         R18 9
       86 GETTABLEKS                       R17 R18 K26 ["View"]
       88 DUPTABLE                         R18 K29 [{"tag", "ref"}]
       89 LOADK                            R19 K30 ["size-full"]
       90 SETTABLEKS                       R19 R18 K27 ["tag"]
       92 SETTABLEKS                       R6 R18 K28 ["ref"]
       94 DUPTABLE                         R19 K32 [{"overlayProvider"}]
       95 GETUPVAL                         R21 3
       96 GETTABLEKS                       R20 R21 K8 ["createElement"]
       98 GETUPVAL                         R21 10
       99 DUPTABLE                         R22 K34 [{"gui"}]
      100 GETTABLEKS                       R23 R6 K35 ["current"]
      102 SETTABLEKS                       R23 R22 K33 ["gui"]
      104 DUPTABLE                         R23 K38 [{"DialogView", "StyleLink"}]
      105 GETUPVAL                         R25 3
      106 GETTABLEKS                       R24 R25 K8 ["createElement"]
      108 GETUPVAL                         R25 11
      109 NEWTABLE                         R26 0 0
      111 CALL                             R24 2 1
      112 SETTABLEKS                       R24 R23 K36 ["DialogView"]
      114 JUMPIF                           R7 ; [+9]
      115 GETUPVAL                         R25 3
      116 GETTABLEKS                       R24 R25 K8 ["createElement"]
      118 LOADK                            R25 K37 ["StyleLink"]
      119 DUPTABLE                         R26 K40 [{"StyleSheet"}]
      120 SETTABLEKS                       R5 R26 K39 ["StyleSheet"]
      122 CALL                             R24 2 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R24
      125 SETTABLEKS                       R24 R23 K37 ["StyleLink"]
      127 CALL                             R20 3 1
      128 SETTABLEKS                       R20 R19 K31 ["overlayProvider"]
      130 CALL                             R16 3 1
      131 SETTABLEKS                       R16 R15 K24 ["view"]
      133 CALL                             R12 3 -1
      134 SETLIST                          R11 R12 -1 [1]
      136 CALL                             R8 3 -1
      137 RETURN                           R8 -1

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
       41 GETTABLEKS                       R7 R3 K14 ["OverlayProvider"]
       43 GETTABLEKS                       R9 R2 K15 ["UI"]
       45 GETTABLEKS                       R8 R9 K16 ["Dialog"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R12 R0 K17 ["Src"]
       51 GETTABLEKS                       R11 R12 K18 ["Controllers"]
       53 GETTABLEKS                       R10 R11 K19 ["ExportController"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R10 R2 K20 ["ContextServices"]
       58 GETTABLEKS                       R11 R10 K21 ["Design"]
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R15 R0 K17 ["Src"]
       64 GETTABLEKS                       R14 R15 K12 ["Components"]
       66 GETTABLEKS                       R13 R14 K22 ["ExportView"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R16 R0 K17 ["Src"]
       73 GETTABLEKS                       R15 R16 K23 ["Util"]
       75 GETTABLEKS                       R14 R15 K24 ["getStudioTheme"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K5 [require]
       80 GETTABLEKS                       R17 R0 K17 ["Src"]
       82 GETTABLEKS                       R16 R17 K25 ["Hooks"]
       84 GETTABLEKS                       R15 R16 K26 ["useViewState"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K5 [require]
       89 GETTABLEKS                       R18 R0 K17 ["Src"]
       91 GETTABLEKS                       R17 R18 K27 ["Flags"]
       93 GETTABLEKS                       R16 R17 K28 ["getFFlagFoundationDisableStylingPolyfill"]
       95 CALL                             R15 1 1
       96 DUPCLOSURE                       R16 K29 [PROTO_1]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R12
      109 RETURN                           R16 1
