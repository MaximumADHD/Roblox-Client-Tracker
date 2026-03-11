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
       34 GETTABLEKS                       R5 R6 K6 ["useRef"]
       36 LOADNIL                          R6
       37 CALL                             R5 1 1
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R6 R7 K7 ["createElement"]
       41 GETUPVAL                         R7 4
       42 DUPTABLE                         R8 K16 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
       43 GETTABLEKS                       R9 R0 K8 ["Enabled"]
       45 SETTABLEKS                       R9 R8 K8 ["Enabled"]
       47 LOADB                            R9 1
       48 SETTABLEKS                       R9 R8 K9 ["Modal"]
       50 SETTABLEKS                       R4 R8 K10 ["Resizable"]
       52 LOADK                            R9 K17 ["Export Gltf"]
       53 SETTABLEKS                       R9 R8 K11 ["Title"]
       55 GETIMPORT                        R9 K20 [Enum.ZIndexBehavior.Sibling]
       57 SETTABLEKS                       R9 R8 K12 ["ZIndexBehavior"]
       59 SETTABLEKS                       R3 R8 K13 ["MinSize"]
       61 SETTABLEKS                       R3 R8 K14 ["Size"]
       63 NEWCLOSURE                       R9 P0
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R9 R8 K15 ["OnClose"]
       67 DUPTABLE                         R9 K22 [{"MainProvider"}]
       68 GETUPVAL                         R11 3
       69 GETTABLEKS                       R10 R11 K7 ["createElement"]
       71 GETUPVAL                         R11 5
       72 DUPTABLE                         R12 K24 [{"theme"}]
       73 GETUPVAL                         R13 6
       74 CALL                             R13 0 1
       75 SETTABLEKS                       R13 R12 K23 ["theme"]
       77 DUPTABLE                         R13 K26 [{"view"}]
       78 GETUPVAL                         R15 3
       79 GETTABLEKS                       R14 R15 K7 ["createElement"]
       81 GETUPVAL                         R16 7
       82 GETTABLEKS                       R15 R16 K27 ["View"]
       84 DUPTABLE                         R16 K30 [{"tag", "ref"}]
       85 LOADK                            R17 K31 ["size-full"]
       86 SETTABLEKS                       R17 R16 K28 ["tag"]
       88 SETTABLEKS                       R5 R16 K29 ["ref"]
       90 DUPTABLE                         R17 K33 [{"overlayProvider"}]
       91 GETUPVAL                         R19 3
       92 GETTABLEKS                       R18 R19 K7 ["createElement"]
       94 GETUPVAL                         R19 8
       95 DUPTABLE                         R20 K35 [{"gui"}]
       96 GETTABLEKS                       R21 R5 K36 ["current"]
       98 SETTABLEKS                       R21 R20 K34 ["gui"]
      100 DUPTABLE                         R21 K38 [{"DialogView"}]
      101 GETUPVAL                         R23 3
      102 GETTABLEKS                       R22 R23 K7 ["createElement"]
      104 GETUPVAL                         R23 9
      105 NEWTABLE                         R24 0 0
      107 CALL                             R22 2 1
      108 SETTABLEKS                       R22 R21 K37 ["DialogView"]
      110 CALL                             R18 3 1
      111 SETTABLEKS                       R18 R17 K32 ["overlayProvider"]
      113 CALL                             R14 3 1
      114 SETTABLEKS                       R14 R13 K25 ["view"]
      116 CALL                             R10 3 1
      117 SETTABLEKS                       R10 R9 K21 ["MainProvider"]
      119 CALL                             R6 3 -1
      120 RETURN                           R6 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R4 K11 ["Components"]
       37 GETTABLEKS                       R5 R6 K12 ["FoundationProviderAdapter"]
       39 GETTABLEKS                       R6 R3 K13 ["OverlayProvider"]
       41 GETTABLEKS                       R8 R2 K14 ["UI"]
       43 GETTABLEKS                       R7 R8 K15 ["Dialog"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R11 R0 K16 ["Src"]
       49 GETTABLEKS                       R10 R11 K17 ["Controllers"]
       51 GETTABLEKS                       R9 R10 K18 ["ExportController"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R12 R0 K16 ["Src"]
       58 GETTABLEKS                       R11 R12 K11 ["Components"]
       60 GETTABLEKS                       R10 R11 K19 ["ExportView"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R13 R0 K16 ["Src"]
       67 GETTABLEKS                       R12 R13 K20 ["Util"]
       69 GETTABLEKS                       R11 R12 K21 ["getStudioTheme"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R14 R0 K16 ["Src"]
       76 GETTABLEKS                       R13 R14 K22 ["Hooks"]
       78 GETTABLEKS                       R12 R13 K23 ["useViewState"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R15 R0 K16 ["Src"]
       85 GETTABLEKS                       R14 R15 K24 ["Flags"]
       87 GETTABLEKS                       R13 R14 K25 ["getFFlagCreateAttachmentsOnAssetDm"]
       89 CALL                             R12 1 1
       90 DUPCLOSURE                       R13 K26 [PROTO_1]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R9
      101 RETURN                           R13 1
