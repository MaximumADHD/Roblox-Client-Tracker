PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+58]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["View"]
       11 DUPTABLE                         R4 K5 [{["tag"] = "align-x-center size-full-0"}]
       12 DUPTABLE                         R5 K7 [{"Button"}]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K1 ["createElement"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K6 ["Button"]
       19 DUPTABLE                         R8 K14 [{"text", "variant", "onActivated", "isDisabled", "size", "testId"}]
       20 GETTABLEKS                       R9 R1 K15 ["Label"]
       22 SETTABLEKS                       R9 R8 K8 ["text"]
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R9 R9 K16 ["Enums"]
       27 GETTABLEKS                       R9 R9 K17 ["ButtonVariant"]
       29 GETTABLEKS                       R9 R9 K18 ["Emphasis"]
       31 SETTABLEKS                       R9 R8 K9 ["variant"]
       33 GETTABLEKS                       R9 R1 K19 ["OnClick"]
       35 SETTABLEKS                       R9 R8 K10 ["onActivated"]
       37 GETTABLEKS                       R9 R0 K20 ["Disabled"]
       39 SETTABLEKS                       R9 R8 K11 ["isDisabled"]
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R9 R9 K16 ["Enums"]
       44 GETTABLEKS                       R9 R9 K21 ["InputSize"]
       46 GETTABLEKS                       R9 R9 K22 ["Small"]
       48 SETTABLEKS                       R9 R8 K12 ["size"]
       50 LOADK                            R9 K23 ["button-%*"]
       51 GETTABLEKS                       R11 R1 K15 ["Label"]
       53 NAMECALL                         R9 R9 K24 ["format"]
       55 CALL                             R9 2 1
       56 SETTABLEKS                       R9 R8 K13 ["testId"]
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R5 K6 ["Button"]
       61 CALL                             R2 3 -1
       62 RETURN                           R2 -1
       63 GETUPVAL                         R2 1
       64 GETTABLEKS                       R2 R2 K1 ["createElement"]
       66 GETUPVAL                         R3 3
       67 DUPTABLE                         R4 K29 [{"Disabled", "OnClick", "Size", "Style", "Text", "TextXAlignment"}]
       68 GETTABLEKS                       R5 R0 K20 ["Disabled"]
       70 SETTABLEKS                       R5 R4 K20 ["Disabled"]
       72 GETTABLEKS                       R5 R1 K19 ["OnClick"]
       74 SETTABLEKS                       R5 R4 K19 ["OnClick"]
       76 GETIMPORT                        R5 K32 [UDim2.new]
       78 LOADN                            R6 1
       79 LOADN                            R7 0
       80 LOADN                            R8 0
       81 LOADN                            R9 32
       82 CALL                             R5 4 1
       83 SETTABLEKS                       R5 R4 K25 ["Size"]
       85 GETTABLEKS                       R6 R0 K20 ["Disabled"]
       87 JUMPIFNOT                        R6 ; [+2]
       88 LOADNIL                          R5
       89 JUMP                             ; [+1]
       90 LOADK                            R5 K33 ["PrimaryBrand"]
       91 SETTABLEKS                       R5 R4 K26 ["Style"]
       93 GETTABLEKS                       R5 R1 K15 ["Label"]
       95 SETTABLEKS                       R5 R4 K27 ["Text"]
       97 GETIMPORT                        R5 K36 [Enum.TextXAlignment.Center]
       99 SETTABLEKS                       R5 R4 K28 ["TextXAlignment"]
      101 CALL                             R2 2 -1
      102 RETURN                           R2 -1

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
