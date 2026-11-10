PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancelExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 GETIMPORT                        R4 K3 [Vector2.new]
       13 LOADN                            R5 520
       14 LOADN                            R6 400
       15 CALL                             R4 2 1
       16 LOADB                            R5 1
       17 JUMPIFEQKS                       R3 K4 ["Main"] ; [+3]
       19 JUMPIFNOTEQKS                    R3 K5 ["Export"] ; [+17]
       21 GETIMPORT                        R6 K3 [Vector2.new]
       23 LOADN                            R7 520
       24 LOADN                            R8 250
       25 CALL                             R6 2 1
       26 MOVE                             R4 R6
       27 GETUPVAL                         R6 3
       28 CALL                             R6 0 1
       29 JUMPIFNOT                        R6 ; [+6]
       30 GETIMPORT                        R6 K3 [Vector2.new]
       32 LOADN                            R7 520
       33 LOADN                            R8 290
       34 CALL                             R6 2 1
       35 MOVE                             R4 R6
       36 LOADB                            R5 0
       37 GETUPVAL                         R6 4
       38 GETTABLEKS                       R6 R6 K6 ["createElement"]
       40 GETUPVAL                         R7 5
       41 DUPTABLE                         R8 K16 [{["Enabled"], ["Modal"] = True, ["Resizable"], ["Title"], ["ZIndexBehavior"], ["MinSize"], ["Size"], ["OnClose"]}]
       42 GETTABLEKS                       R9 R0 K7 ["Enabled"]
       44 SETTABLEKS                       R9 R8 K7 ["Enabled"]
       46 SETTABLEKS                       R5 R8 K10 ["Resizable"]
       48 LOADK                            R11 K17 ["Window"]
       49 LOADK                            R12 K11 ["Title"]
       50 NAMECALL                         R9 R1 K18 ["getText"]
       52 CALL                             R9 3 1
       53 SETTABLEKS                       R9 R8 K11 ["Title"]
       55 GETIMPORT                        R9 K21 [Enum.ZIndexBehavior.Sibling]
       57 SETTABLEKS                       R9 R8 K12 ["ZIndexBehavior"]
       59 SETTABLEKS                       R4 R8 K13 ["MinSize"]
       61 SETTABLEKS                       R4 R8 K14 ["Size"]
       63 NEWCLOSURE                       R9 P0
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R9 R8 K15 ["OnClose"]
       67 DUPTABLE                         R9 K23 [{"MainProvider"}]
       68 GETUPVAL                         R10 4
       69 GETTABLEKS                       R10 R10 K6 ["createElement"]
       71 GETUPVAL                         R11 6
       72 DUPTABLE                         R12 K25 [{"theme"}]
       73 GETUPVAL                         R13 7
       74 CALL                             R13 0 1
       75 SETTABLEKS                       R13 R12 K24 ["theme"]
       77 DUPTABLE                         R13 K27 [{"view"}]
       78 GETUPVAL                         R14 4
       79 GETTABLEKS                       R14 R14 K6 ["createElement"]
       81 GETUPVAL                         R15 8
       82 GETTABLEKS                       R15 R15 K28 ["View"]
       84 DUPTABLE                         R16 K31 [{["tag"] = "size-full"}]
       85 DUPTABLE                         R17 K33 [{"DialogView"}]
       86 GETUPVAL                         R18 4
       87 GETTABLEKS                       R18 R18 K6 ["createElement"]
       89 GETUPVAL                         R19 9
       90 NEWTABLE                         R20 0 0
       92 CALL                             R18 2 1
       93 SETTABLEKS                       R18 R17 K32 ["DialogView"]
       95 CALL                             R14 3 1
       96 SETTABLEKS                       R14 R13 K26 ["view"]
       98 CALL                             R10 3 1
       99 SETTABLEKS                       R10 R9 K22 ["MainProvider"]
      101 CALL                             R6 3 -1
      102 RETURN                           R6 -1

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
       39 GETTABLEKS                       R6 R2 K13 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K14 ["Localization"]
       43 GETTABLEKS                       R8 R2 K15 ["UI"]
       45 GETTABLEKS                       R8 R8 K16 ["Dialog"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K17 ["Src"]
       51 GETTABLEKS                       R10 R10 K18 ["Controllers"]
       53 GETTABLEKS                       R10 R10 K19 ["ExportController"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K17 ["Src"]
       60 GETTABLEKS                       R11 R11 K11 ["Components"]
       62 GETTABLEKS                       R11 R11 K20 ["ExportView"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K17 ["Src"]
       69 GETTABLEKS                       R12 R12 K21 ["Util"]
       71 GETTABLEKS                       R12 R12 K22 ["getStudioTheme"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R13 R0 K17 ["Src"]
       78 GETTABLEKS                       R13 R13 K23 ["Hooks"]
       80 GETTABLEKS                       R13 R13 K24 ["useViewState"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R14 R0 K17 ["Src"]
       87 GETTABLEKS                       R14 R14 K25 ["Flags"]
       89 GETTABLEKS                       R14 R14 K26 ["getFFlagCreateAttachmentsOnAssetDm"]
       91 CALL                             R13 1 1
       92 DUPCLOSURE                       R14 K27 [PROTO_1]
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R10
      103 RETURN                           R14 1
