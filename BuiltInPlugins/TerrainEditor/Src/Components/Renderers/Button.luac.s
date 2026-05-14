PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+62]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["View"]
       11 DUPTABLE                         R4 K4 [{"tag"}]
       12 LOADK                            R5 K5 ["size-full-0 align-x-center"]
       13 SETTABLEKS                       R5 R4 K3 ["tag"]
       15 DUPTABLE                         R5 K7 [{"Button"}]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K1 ["createElement"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K6 ["Button"]
       22 DUPTABLE                         R8 K14 [{"text", "variant", "onActivated", "isDisabled", "size", "testId"}]
       23 GETTABLEKS                       R9 R1 K15 ["Label"]
       25 SETTABLEKS                       R9 R8 K8 ["text"]
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R9 R9 K16 ["Enums"]
       30 GETTABLEKS                       R9 R9 K17 ["ButtonVariant"]
       32 GETTABLEKS                       R9 R9 K18 ["Emphasis"]
       34 SETTABLEKS                       R9 R8 K9 ["variant"]
       36 GETTABLEKS                       R9 R1 K19 ["OnClick"]
       38 SETTABLEKS                       R9 R8 K10 ["onActivated"]
       40 GETTABLEKS                       R9 R0 K20 ["Disabled"]
       42 SETTABLEKS                       R9 R8 K11 ["isDisabled"]
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R9 R9 K16 ["Enums"]
       47 GETTABLEKS                       R9 R9 K21 ["InputSize"]
       49 GETTABLEKS                       R9 R9 K22 ["Small"]
       51 SETTABLEKS                       R9 R8 K12 ["size"]
       53 LOADK                            R10 K23 ["button-%*"]
       54 GETTABLEKS                       R12 R1 K15 ["Label"]
       56 NAMECALL                         R10 R10 K24 ["format"]
       58 CALL                             R10 2 1
       59 MOVE                             R9 R10
       60 SETTABLEKS                       R9 R8 K13 ["testId"]
       62 CALL                             R6 2 1
       63 SETTABLEKS                       R6 R5 K6 ["Button"]
       65 CALL                             R2 3 -1
       66 RETURN                           R2 -1
       67 GETUPVAL                         R2 1
       68 GETTABLEKS                       R2 R2 K1 ["createElement"]
       70 GETUPVAL                         R3 3
       71 DUPTABLE                         R4 K29 [{"Disabled", "OnClick", "Size", "Style", "Text", "TextXAlignment"}]
       72 GETTABLEKS                       R5 R0 K20 ["Disabled"]
       74 SETTABLEKS                       R5 R4 K20 ["Disabled"]
       76 GETTABLEKS                       R5 R1 K19 ["OnClick"]
       78 SETTABLEKS                       R5 R4 K19 ["OnClick"]
       80 GETIMPORT                        R5 K32 [UDim2.new]
       82 LOADN                            R6 1
       83 LOADN                            R7 0
       84 LOADN                            R8 0
       85 LOADN                            R9 32
       86 CALL                             R5 4 1
       87 SETTABLEKS                       R5 R4 K25 ["Size"]
       89 GETTABLEKS                       R6 R0 K20 ["Disabled"]
       91 JUMPIFNOT                        R6 ; [+2]
       92 LOADNIL                          R5
       93 JUMP                             ; [+1]
       94 LOADK                            R5 K33 ["PrimaryBrand"]
       95 SETTABLEKS                       R5 R4 K26 ["Style"]
       97 GETTABLEKS                       R5 R1 K15 ["Label"]
       99 SETTABLEKS                       R5 R4 K27 ["Text"]
      101 GETIMPORT                        R5 K36 [Enum.TextXAlignment.Center]
      103 SETTABLEKS                       R5 R4 K28 ["TextXAlignment"]
      105 CALL                             R2 2 -1
      106 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["UI"]
       30 GETTABLEKS                       R4 R4 K11 ["Button"]
       32 GETTABLEKS                       R5 R2 K10 ["UI"]
       34 GETTABLEKS                       R5 R5 K12 ["IconButton"]
       36 GETTABLEKS                       R6 R2 K13 ["Util"]
       38 GETTABLEKS                       R6 R6 K14 ["StyleModifier"]
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Src"]
       44 GETTABLEKS                       R8 R8 K16 ["Flags"]
       46 GETTABLEKS                       R8 R8 K17 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K18 [PROTO_0]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 RETURN                           R8 1
