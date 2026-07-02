PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancelExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETIMPORT                        R3 K3 [Vector2.new]
        9 LOADN                            R4 520
       10 LOADN                            R5 400
       11 CALL                             R3 2 1
       12 LOADB                            R4 1
       13 JUMPIFEQKS                       R2 K4 ["Main"] ; [+3]
       15 JUMPIFNOTEQKS                    R2 K5 ["Export"] ; [+17]
       17 GETIMPORT                        R5 K3 [Vector2.new]
       19 LOADN                            R6 520
       20 LOADN                            R7 250
       21 CALL                             R5 2 1
       22 MOVE                             R3 R5
       23 GETUPVAL                         R5 2
       24 CALL                             R5 0 1
       25 JUMPIFNOT                        R5 ; [+6]
       26 GETIMPORT                        R5 K3 [Vector2.new]
       28 LOADN                            R6 520
       29 LOADN                            R7 290
       30 CALL                             R5 2 1
       31 MOVE                             R3 R5
       32 LOADB                            R4 0
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K6 ["useRef"]
       36 LOADNIL                          R6
       37 CALL                             R5 1 1
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K7 ["createElement"]
       41 GETUPVAL                         R7 4
       42 DUPTABLE                         R8 K18 [{["Enabled"], ["Modal"] = True, ["Resizable"], ["Title"] = "Export Gltf", ["ZIndexBehavior"], ["MinSize"], ["Size"], ["OnClose"]}]
       43 GETTABLEKS                       R9 R0 K8 ["Enabled"]
       45 SETTABLEKS                       R9 R8 K8 ["Enabled"]
       47 SETTABLEKS                       R4 R8 K11 ["Resizable"]
       49 GETIMPORT                        R9 K21 [Enum.ZIndexBehavior.Sibling]
       51 SETTABLEKS                       R9 R8 K14 ["ZIndexBehavior"]
       53 SETTABLEKS                       R3 R8 K15 ["MinSize"]
       55 SETTABLEKS                       R3 R8 K16 ["Size"]
       57 NEWCLOSURE                       R9 P0
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R9 R8 K17 ["OnClose"]
       61 DUPTABLE                         R9 K23 [{"MainProvider"}]
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R10 R10 K7 ["createElement"]
       65 GETUPVAL                         R11 5
       66 DUPTABLE                         R12 K25 [{"theme"}]
       67 GETUPVAL                         R13 6
       68 CALL                             R13 0 1
       69 SETTABLEKS                       R13 R12 K24 ["theme"]
       71 DUPTABLE                         R13 K27 [{"view"}]
       72 GETUPVAL                         R14 3
       73 GETTABLEKS                       R14 R14 K7 ["createElement"]
       75 GETUPVAL                         R15 7
       76 GETTABLEKS                       R15 R15 K28 ["View"]
       78 DUPTABLE                         R16 K32 [{["tag"] = "size-full", ["ref"]}]
       79 SETTABLEKS                       R5 R16 K31 ["ref"]
       81 DUPTABLE                         R17 K34 [{"overlayProvider"}]
       82 GETUPVAL                         R18 3
       83 GETTABLEKS                       R18 R18 K7 ["createElement"]
       85 GETUPVAL                         R19 8
       86 DUPTABLE                         R20 K36 [{"gui"}]
       87 GETTABLEKS                       R21 R5 K37 ["current"]
       89 SETTABLEKS                       R21 R20 K35 ["gui"]
       91 DUPTABLE                         R21 K39 [{"DialogView"}]
       92 GETUPVAL                         R22 3
       93 GETTABLEKS                       R22 R22 K7 ["createElement"]
       95 GETUPVAL                         R23 9
       96 NEWTABLE                         R24 0 0
       98 CALL                             R22 2 1
       99 SETTABLEKS                       R22 R21 K38 ["DialogView"]
      101 CALL                             R18 3 1
      102 SETTABLEKS                       R18 R17 K33 ["overlayProvider"]
      104 CALL                             R14 3 1
      105 SETTABLEKS                       R14 R13 K26 ["view"]
      107 CALL                             R10 3 1
      108 SETTABLEKS                       R10 R9 K22 ["MainProvider"]
      110 CALL                             R6 3 -1
      111 RETURN                           R6 -1

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
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Components"]
       37 GETTABLEKS                       R5 R5 K12 ["FoundationProviderAdapter"]
       39 GETTABLEKS                       R6 R3 K13 ["OverlayProvider"]
       41 GETTABLEKS                       R7 R2 K14 ["UI"]
       43 GETTABLEKS                       R7 R7 K15 ["Dialog"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K16 ["Src"]
       49 GETTABLEKS                       R9 R9 K17 ["Controllers"]
       51 GETTABLEKS                       R9 R9 K18 ["ExportController"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Src"]
       58 GETTABLEKS                       R10 R10 K11 ["Components"]
       60 GETTABLEKS                       R10 R10 K19 ["ExportView"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Src"]
       67 GETTABLEKS                       R11 R11 K20 ["Util"]
       69 GETTABLEKS                       R11 R11 K21 ["getStudioTheme"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K16 ["Src"]
       76 GETTABLEKS                       R12 R12 K22 ["Hooks"]
       78 GETTABLEKS                       R12 R12 K23 ["useViewState"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K16 ["Src"]
       85 GETTABLEKS                       R13 R13 K24 ["Flags"]
       87 GETTABLEKS                       R13 R13 K25 ["getFFlagCreateAttachmentsOnAssetDm"]
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
