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
       18 DUPTABLE                         R4 K7 [{["tag"] = "col gap-medium align-x-center auto-xy padding-large bg-surface-100"}]
       19 DUPTABLE                         R5 K10 [{"Image", "Text"}]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K4 ["createElement"]
       23 GETUPVAL                         R7 3
       24 DUPTABLE                         R8 K15 [{["tag"] = "bg-shift-100", ["Image"], ["Size"], ["LayoutOrder"] = 1}]
       25 SETTABLEKS                       R1 R8 K8 ["Image"]
       27 GETIMPORT                        R9 K18 [UDim2.fromOffset]
       29 LOADN                            R10 150
       30 LOADN                            R11 150
       31 CALL                             R9 2 1
       32 SETTABLEKS                       R9 R8 K12 ["Size"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K8 ["Image"]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K4 ["createElement"]
       40 GETUPVAL                         R7 4
       41 DUPTABLE                         R8 K22 [{["tag"] = "text-caption-small", ["Text"], ["AutomaticSize"], ["LayoutOrder"] = 2}]
       42 SETTABLEKS                       R1 R8 K9 ["Text"]
       44 GETIMPORT                        R9 K25 [Enum.AutomaticSize.XY]
       46 SETTABLEKS                       R9 R8 K20 ["AutomaticSize"]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K9 ["Text"]
       51 CALL                             R2 3 -1
       52 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Image"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Utility"]
       44 GETTABLEKS                       R8 R8 K14 ["getRbxThumb"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Enums"]
       51 GETTABLEKS                       R9 R9 K16 ["ThumbnailType"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K15 ["Enums"]
       58 GETTABLEKS                       R10 R10 K17 ["ThumbnailSize"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K15 ["Enums"]
       65 GETTABLEKS                       R11 R11 K18 ["ControlState"]
       67 CALL                             R10 1 1
       68 DUPTABLE                         R11 K24 [{["summary"] = "getRbxThumb", ["name"] = "Configurable image with getRbxThumb", ["story"], ["controls"]}]
       69 DUPCLOSURE                       R12 K25 [PROTO_0]
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R6
       75 SETTABLEKS                       R12 R11 K22 ["story"]
       77 DUPTABLE                         R12 K30 [{["type"], ["id"] = 1, ["size"]}]
       78 GETTABLEKS                       R13 R3 K31 ["values"]
       80 MOVE                             R14 R8
       81 CALL                             R13 1 1
       82 SETTABLEKS                       R13 R12 K26 ["type"]
       84 NEWTABLE                         R13 0 4
       86 GETTABLEKS                       R14 R9 K32 ["Medium"]
       88 GETTABLEKS                       R15 R9 K33 ["Large"]
       90 GETTABLEKS                       R16 R9 K34 ["XLarge"]
       92 GETTABLEKS                       R17 R9 K35 ["Small"]
       94 SETLIST                          R13 R14 4 [1]
       96 SETTABLEKS                       R13 R12 K29 ["size"]
       98 SETTABLEKS                       R12 R11 K23 ["controls"]
      100 RETURN                           R11 1
