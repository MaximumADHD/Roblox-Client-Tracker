PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["controls"]
        3 GETTABLEKS                       R2 R2 K1 ["type"]
        5 GETTABLEKS                       R3 R0 K0 ["controls"]
        7 GETTABLEKS                       R3 R3 K2 ["id"]
        9 GETTABLEKS                       R4 R0 K0 ["controls"]
       11 GETTABLEKS                       R4 R4 K3 ["size"]
       13 CALL                             R1 3 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K4 ["createElement"]
       17 GETUPVAL                         R3 2
       18 DUPTABLE                         R4 K6 [{"tag"}]
       19 LOADK                            R5 K7 ["col gap-medium align-x-center auto-xy padding-large bg-surface-100"]
       20 SETTABLEKS                       R5 R4 K5 ["tag"]
       22 DUPTABLE                         R5 K10 [{"Image", "Text"}]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K4 ["createElement"]
       26 GETUPVAL                         R7 3
       27 DUPTABLE                         R8 K13 [{"tag", "Image", "Size", "LayoutOrder"}]
       28 LOADK                            R9 K14 ["bg-shift-100"]
       29 SETTABLEKS                       R9 R8 K5 ["tag"]
       31 SETTABLEKS                       R1 R8 K8 ["Image"]
       33 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       35 LOADN                            R10 150
       36 LOADN                            R11 150
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K11 ["Size"]
       40 LOADN                            R9 1
       41 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K8 ["Image"]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K4 ["createElement"]
       49 GETUPVAL                         R7 4
       50 DUPTABLE                         R8 K19 [{"tag", "Text", "AutomaticSize", "LayoutOrder"}]
       51 LOADK                            R9 K20 ["text-caption-small"]
       52 SETTABLEKS                       R9 R8 K5 ["tag"]
       54 SETTABLEKS                       R1 R8 K9 ["Text"]
       56 GETIMPORT                        R9 K23 [Enum.AutomaticSize.XY]
       58 SETTABLEKS                       R9 R8 K18 ["AutomaticSize"]
       60 LOADN                            R9 2
       61 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       63 CALL                             R6 2 1
       64 SETTABLEKS                       R6 R5 K9 ["Text"]
       66 CALL                             R2 3 -1
       67 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Image"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["ThumbnailSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K13 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["ThumbnailType"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Utility"]
       58 GETTABLEKS                       R10 R10 K17 ["getRbxThumb"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K13 ["Enums"]
       65 GETTABLEKS                       R11 R11 K18 ["ControlState"]
       67 CALL                             R10 1 1
       68 DUPTABLE                         R11 K23 [{"summary", "name", "story", "controls"}]
       69 LOADK                            R12 K17 ["getRbxThumb"]
       70 SETTABLEKS                       R12 R11 K19 ["summary"]
       72 LOADK                            R12 K24 ["Configurable image with getRbxThumb"]
       73 SETTABLEKS                       R12 R11 K20 ["name"]
       75 DUPCLOSURE                       R12 K25 [PROTO_0]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R5
       81 SETTABLEKS                       R12 R11 K21 ["story"]
       83 DUPTABLE                         R12 K29 [{"type", "id", "size"}]
       84 GETTABLEKS                       R13 R2 K30 ["values"]
       86 MOVE                             R14 R8
       87 CALL                             R13 1 1
       88 SETTABLEKS                       R13 R12 K26 ["type"]
       90 LOADN                            R13 1
       91 SETTABLEKS                       R13 R12 K27 ["id"]
       93 NEWTABLE                         R13 0 4
       95 GETTABLEKS                       R14 R7 K31 ["Medium"]
       97 GETTABLEKS                       R15 R7 K32 ["Large"]
       99 GETTABLEKS                       R16 R7 K33 ["XLarge"]
      101 GETTABLEKS                       R17 R7 K34 ["Small"]
      103 SETLIST                          R13 R14 4 [1]
      105 SETTABLEKS                       R13 R12 K28 ["size"]
      107 SETTABLEKS                       R12 R11 K22 ["controls"]
      109 RETURN                           R11 1
