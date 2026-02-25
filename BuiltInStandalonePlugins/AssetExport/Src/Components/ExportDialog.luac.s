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
       15 JUMPIFNOTEQKS                    R2 K5 ["Export"] ; [+17]
       17 GETIMPORT                        R5 K3 [Vector2.new]
       19 LOADN                            R6 8
       20 LOADN                            R7 250
       21 CALL                             R5 2 1
       22 MOVE                             R3 R5
       23 GETUPVAL                         R5 2
       24 CALL                             R5 0 1
       25 JUMPIFNOT                        R5 ; [+6]
       26 GETIMPORT                        R5 K3 [Vector2.new]
       28 LOADN                            R6 8
       29 LOADN                            R7 34
       30 CALL                             R5 2 1
       31 MOVE                             R3 R5
       32 LOADB                            R4 0
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R5 R6 K0 ["use"]
       36 CALL                             R5 0 1
       37 NAMECALL                         R5 R5 K6 ["get"]
       39 CALL                             R5 1 1
       40 GETUPVAL                         R7 4
       41 GETTABLEKS                       R6 R7 K7 ["useRef"]
       43 LOADNIL                          R7
       44 CALL                             R6 1 1
       45 GETUPVAL                         R7 5
       46 CALL                             R7 0 1
       47 GETUPVAL                         R9 4
       48 GETTABLEKS                       R8 R9 K8 ["createElement"]
       50 GETUPVAL                         R9 6
       51 DUPTABLE                         R10 K17 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
       52 GETTABLEKS                       R11 R0 K9 ["Enabled"]
       54 SETTABLEKS                       R11 R10 K9 ["Enabled"]
       56 LOADB                            R11 1
       57 SETTABLEKS                       R11 R10 K10 ["Modal"]
       59 SETTABLEKS                       R4 R10 K11 ["Resizable"]
       61 LOADK                            R11 K18 ["Export Gltf"]
       62 SETTABLEKS                       R11 R10 K12 ["Title"]
       64 GETIMPORT                        R11 K21 [Enum.ZIndexBehavior.Sibling]
       66 SETTABLEKS                       R11 R10 K13 ["ZIndexBehavior"]
       68 SETTABLEKS                       R3 R10 K14 ["MinSize"]
       70 SETTABLEKS                       R3 R10 K15 ["Size"]
       72 NEWCLOSURE                       R11 P0
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R11 R10 K16 ["OnClose"]
       76 DUPTABLE                         R11 K23 [{"MainProvider"}]
       77 GETUPVAL                         R13 4
       78 GETTABLEKS                       R12 R13 K8 ["createElement"]
       80 JUMPIFNOT                        R7 ; [+2]
       81 GETUPVAL                         R13 7
       82 JUMP                             ; [+1]
       83 GETUPVAL                         R13 8
       84 DUPTABLE                         R14 K25 [{"theme"}]
       85 GETUPVAL                         R15 9
       86 CALL                             R15 0 1
       87 SETTABLEKS                       R15 R14 K24 ["theme"]
       89 DUPTABLE                         R15 K27 [{"view"}]
       90 GETUPVAL                         R17 4
       91 GETTABLEKS                       R16 R17 K8 ["createElement"]
       93 GETUPVAL                         R18 10
       94 GETTABLEKS                       R17 R18 K28 ["View"]
       96 DUPTABLE                         R18 K31 [{"tag", "ref"}]
       97 LOADK                            R19 K32 ["size-full"]
       98 SETTABLEKS                       R19 R18 K29 ["tag"]
      100 SETTABLEKS                       R6 R18 K30 ["ref"]
      102 DUPTABLE                         R19 K34 [{"overlayProvider"}]
      103 GETUPVAL                         R21 4
      104 GETTABLEKS                       R20 R21 K8 ["createElement"]
      106 GETUPVAL                         R21 11
      107 DUPTABLE                         R22 K36 [{"gui"}]
      108 GETTABLEKS                       R23 R6 K37 ["current"]
      110 SETTABLEKS                       R23 R22 K35 ["gui"]
      112 DUPTABLE                         R23 K40 [{"DialogView", "StyleLink"}]
      113 GETUPVAL                         R25 4
      114 GETTABLEKS                       R24 R25 K8 ["createElement"]
      116 GETUPVAL                         R25 12
      117 NEWTABLE                         R26 0 0
      119 CALL                             R24 2 1
      120 SETTABLEKS                       R24 R23 K38 ["DialogView"]
      122 JUMPIF                           R7 ; [+9]
      123 GETUPVAL                         R25 4
      124 GETTABLEKS                       R24 R25 K8 ["createElement"]
      126 LOADK                            R25 K39 ["StyleLink"]
      127 DUPTABLE                         R26 K42 [{"StyleSheet"}]
      128 SETTABLEKS                       R5 R26 K41 ["StyleSheet"]
      130 CALL                             R24 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R24
      133 SETTABLEKS                       R24 R23 K39 ["StyleLink"]
      135 CALL                             R20 3 1
      136 SETTABLEKS                       R20 R19 K33 ["overlayProvider"]
      138 CALL                             R16 3 1
      139 SETTABLEKS                       R16 R15 K26 ["view"]
      141 CALL                             R12 3 1
      142 SETTABLEKS                       R12 R11 K22 ["MainProvider"]
      144 CALL                             R8 3 -1
      145 RETURN                           R8 -1

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
       96 GETIMPORT                        R16 K5 [require]
       98 GETTABLEKS                       R19 R0 K17 ["Src"]
      100 GETTABLEKS                       R18 R19 K27 ["Flags"]
      102 GETTABLEKS                       R17 R18 K29 ["getFFlagCreateAttachmentsOnAssetDm"]
      104 CALL                             R16 1 1
      105 DUPCLOSURE                       R17 K30 [PROTO_1]
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R12
      119 RETURN                           R17 1
