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
       16 DUPTABLE                         R7 K13 [{["Name"], ["Label"], ["Weight"], ["LayoutOrder"] = 1}]
       17 GETTABLEKS                       R8 R0 K14 ["Input"]
       19 GETTABLEKS                       R8 R8 K9 ["Name"]
       21 SETTABLEKS                       R8 R7 K9 ["Name"]
       23 GETTABLEKS                       R8 R0 K14 ["Input"]
       25 GETTABLEKS                       R8 R8 K9 ["Name"]
       27 SETTABLEKS                       R8 R7 K10 ["Label"]
       29 GETTABLEKS                       R8 R0 K14 ["Input"]
       31 GETTABLEKS                       R8 R8 K11 ["Weight"]
       33 SETTABLEKS                       R8 R7 K11 ["Weight"]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K6 ["InputLabelWeight"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K0 ["createElement"]
       41 LOADK                            R6 K15 ["Folder"]
       42 NEWTABLE                         R7 0 0
       44 DUPTABLE                         R8 K17 [{"RenderedPinInput"}]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K0 ["createElement"]
       48 GETUPVAL                         R10 3
       49 GETTABLEKS                       R10 R10 K18 ["RenderedCompositorPin"]
       51 DUPTABLE                         R11 K27 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["selected"], ["debugDisplayName"]}]
       52 GETIMPORT                        R12 K30 [UDim2.fromOffset]
       54 GETUPVAL                         R14 4
       55 CALL                             R14 0 1
       56 JUMPIFNOT                        R14 ; [+2]
       57 LOADN                            R13 -21
       58 JUMP                             ; [+1]
       59 LOADN                            R13 -9
       60 LOADN                            R14 14
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K19 ["Position"]
       64 GETUPVAL                         R12 3
       65 GETTABLEKS                       R12 R12 K31 ["DEFAULT_PIN_DATA_TYPE"]
       67 SETTABLEKS                       R12 R11 K21 ["pinDataType"]
       69 GETTABLEKS                       R12 R0 K32 ["NodeId"]
       71 SETTABLEKS                       R12 R11 K22 ["pinNodeId"]
       73 GETTABLEKS                       R12 R0 K14 ["Input"]
       75 GETTABLEKS                       R12 R12 K9 ["Name"]
       77 SETTABLEKS                       R12 R11 K23 ["pinName"]
       79 GETTABLEKS                       R12 R0 K14 ["Input"]
       81 GETTABLEKS                       R12 R12 K33 ["Value"]
       83 SETTABLEKS                       R12 R11 K24 ["pinValue"]
       85 GETTABLEKS                       R12 R0 K34 ["IsSelected"]
       87 SETTABLEKS                       R12 R11 K25 ["selected"]
       89 GETTABLEKS                       R12 R0 K14 ["Input"]
       91 GETTABLEKS                       R12 R12 K9 ["Name"]
       93 SETTABLEKS                       R12 R11 K26 ["debugDisplayName"]
       95 CALL                             R9 2 1
       96 SETTABLEKS                       R9 R8 K16 ["RenderedPinInput"]
       98 CALL                             R5 3 1
       99 SETTABLEKS                       R5 R4 K7 ["PinChildren"]
      101 CALL                             R1 3 -1
      102 RETURN                           R1 -1

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
       50 GETTABLEKS                       R6 R4 K15 ["getFFlagAnimGraphUIPinOffset"]
       52 DUPCLOSURE                       R7 K16 [PROTO_0]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 RETURN                           R7 1
