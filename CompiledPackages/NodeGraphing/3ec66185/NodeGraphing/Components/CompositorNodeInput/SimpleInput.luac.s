PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{["tag"] = "flex-x-between align-y-center gap-small size-full-700 auto-y padding-x-small", ["LayoutOrder"]}]
        7 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       11 DUPTABLE                         R4 K8 [{"InputLabel", "PinChildren"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K9 ["Text"]
       18 DUPTABLE                         R7 K12 [{["tag"] = "fill size-full-0 auto-y text-body-small text-align-x-left content-emphasis", ["Text"], ["TextTruncate"]}]
       19 GETTABLEKS                       R8 R0 K13 ["DisplayName"]
       21 JUMPIF                           R8 ; [+4]
       22 GETTABLEKS                       R8 R0 K14 ["Input"]
       24 GETTABLEKS                       R8 R8 K15 ["Name"]
       26 SETTABLEKS                       R8 R7 K9 ["Text"]
       28 GETIMPORT                        R8 K18 [Enum.TextTruncate.SplitWord]
       30 SETTABLEKS                       R8 R7 K11 ["TextTruncate"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K6 ["InputLabel"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K0 ["createElement"]
       38 LOADK                            R6 K19 ["Folder"]
       39 NEWTABLE                         R7 0 0
       41 DUPTABLE                         R8 K21 [{"RenderedPinInput"}]
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K0 ["createElement"]
       45 GETUPVAL                         R10 2
       46 DUPTABLE                         R11 K29 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["debugDisplayName"]}]
       47 GETIMPORT                        R12 K32 [UDim2.fromOffset]
       49 LOADN                            R13 -9
       50 LOADN                            R14 14
       51 CALL                             R12 2 1
       52 SETTABLEKS                       R12 R11 K22 ["Position"]
       54 GETUPVAL                         R12 3
       55 GETTABLEKS                       R12 R12 K33 ["DEFAULT_PIN_DATA_TYPE"]
       57 SETTABLEKS                       R12 R11 K24 ["pinDataType"]
       59 GETTABLEKS                       R12 R0 K34 ["NodeId"]
       61 SETTABLEKS                       R12 R11 K25 ["pinNodeId"]
       63 GETTABLEKS                       R12 R0 K14 ["Input"]
       65 GETTABLEKS                       R12 R12 K15 ["Name"]
       67 SETTABLEKS                       R12 R11 K26 ["pinName"]
       69 GETTABLEKS                       R12 R0 K14 ["Input"]
       71 GETTABLEKS                       R12 R12 K35 ["Value"]
       73 SETTABLEKS                       R12 R11 K27 ["pinValue"]
       75 GETTABLEKS                       R12 R0 K13 ["DisplayName"]
       77 SETTABLEKS                       R12 R11 K28 ["debugDisplayName"]
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K20 ["RenderedPinInput"]
       82 CALL                             R5 3 1
       83 SETTABLEKS                       R5 R4 K7 ["PinChildren"]
       85 CALL                             R1 3 -1
       86 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["CompositorNodeInput"]
       25 GETTABLEKS                       R4 R4 K11 ["InputTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K7 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["CompositorNodes"]
       41 GETTABLEKS                       R6 R6 K14 ["RenderedCompositorPin"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 RETURN                           R6 1
