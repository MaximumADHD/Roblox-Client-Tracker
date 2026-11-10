PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{["tag"] = "row flex-x-between align-y-center gap-small size-full-700 auto-y padding-x-small", ["LayoutOrder"]}]
        7 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       11 DUPTABLE                         R4 K8 [{"InputLabelWeight", "PinChildren"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K14 [{["Name"], ["Label"], ["Weight"], ["OnRename"], ["LayoutOrder"] = 1}]
       17 GETTABLEKS                       R8 R0 K15 ["Input"]
       19 GETTABLEKS                       R8 R8 K9 ["Name"]
       21 SETTABLEKS                       R8 R7 K9 ["Name"]
       23 GETTABLEKS                       R8 R0 K15 ["Input"]
       25 GETTABLEKS                       R8 R8 K9 ["Name"]
       27 SETTABLEKS                       R8 R7 K10 ["Label"]
       29 GETTABLEKS                       R8 R0 K15 ["Input"]
       31 GETTABLEKS                       R8 R8 K11 ["Weight"]
       33 SETTABLEKS                       R8 R7 K11 ["Weight"]
       35 GETTABLEKS                       R8 R0 K12 ["OnRename"]
       37 SETTABLEKS                       R8 R7 K12 ["OnRename"]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K6 ["InputLabelWeight"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K0 ["createElement"]
       45 LOADK                            R6 K16 ["Folder"]
       46 NEWTABLE                         R7 0 0
       48 DUPTABLE                         R8 K18 [{"RenderedPinInput"}]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K0 ["createElement"]
       52 GETUPVAL                         R10 3
       53 GETTABLEKS                       R10 R10 K19 ["RenderedCompositorPin"]
       55 DUPTABLE                         R11 K29 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinInputId"], ["pinValue"], ["selected"], ["debugDisplayName"]}]
       56 GETIMPORT                        R12 K32 [UDim2.fromOffset]
       58 LOADN                            R13 -21
       59 LOADN                            R14 14
       60 CALL                             R12 2 1
       61 SETTABLEKS                       R12 R11 K20 ["Position"]
       63 GETUPVAL                         R12 3
       64 GETTABLEKS                       R12 R12 K33 ["DEFAULT_PIN_DATA_TYPE"]
       66 SETTABLEKS                       R12 R11 K22 ["pinDataType"]
       68 GETTABLEKS                       R12 R0 K34 ["NodeId"]
       70 SETTABLEKS                       R12 R11 K23 ["pinNodeId"]
       72 GETTABLEKS                       R12 R0 K15 ["Input"]
       74 GETTABLEKS                       R12 R12 K9 ["Name"]
       76 SETTABLEKS                       R12 R11 K24 ["pinName"]
       78 GETTABLEKS                       R12 R0 K15 ["Input"]
       80 GETTABLEKS                       R12 R12 K35 ["InputId"]
       82 SETTABLEKS                       R12 R11 K25 ["pinInputId"]
       84 GETTABLEKS                       R12 R0 K15 ["Input"]
       86 GETTABLEKS                       R12 R12 K36 ["Value"]
       88 SETTABLEKS                       R12 R11 K26 ["pinValue"]
       90 GETTABLEKS                       R12 R0 K37 ["IsSelected"]
       92 SETTABLEKS                       R12 R11 K27 ["selected"]
       94 GETTABLEKS                       R12 R0 K15 ["Input"]
       96 GETTABLEKS                       R12 R12 K9 ["Name"]
       98 SETTABLEKS                       R12 R11 K28 ["debugDisplayName"]
      100 CALL                             R9 2 1
      101 SETTABLEKS                       R9 R8 K17 ["RenderedPinInput"]
      103 CALL                             R5 3 1
      104 SETTABLEKS                       R5 R4 K7 ["PinChildren"]
      106 CALL                             R1 3 -1
      107 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R3 K10 ["CompositorNodeInput"]
       22 GETTABLEKS                       R3 R3 K11 ["InputLabelWeight"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Components"]
       29 GETTABLEKS                       R4 R4 K9 ["NodeView"]
       31 GETTABLEKS                       R4 R4 K10 ["CompositorNodeInput"]
       33 GETTABLEKS                       R4 R4 K12 ["InputPanelTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Parent"]
       40 GETTABLEKS                       R5 R5 K13 ["NodeGraphing"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Parent"]
       47 GETTABLEKS                       R6 R6 K14 ["React"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_0]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 RETURN                           R6 1
