PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Label"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["NEW_INPUT"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+3]
        7 LOADK                            R1 K2 ["<New Input>"]
        8 JUMP                             ; [+6]
        9 GETTABLEKS                       R2 R0 K0 ["Label"]
       11 FASTCALL1                        TOSTRING R2 ; [+2]
       12 GETIMPORT                        R1 K4 [tostring]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["createElement"]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K6 ["View"]
       21 DUPTABLE                         R4 K10 [{["tag"] = "row flex-x-between align-y-center gap-small size-full-700 auto-y padding-x-small", ["LayoutOrder"]}]
       22 GETTABLEKS                       R5 R0 K9 ["LayoutOrder"]
       24 SETTABLEKS                       R5 R4 K9 ["LayoutOrder"]
       26 DUPTABLE                         R5 K13 [{"InputLabelWeight", "PinChildren"}]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K5 ["createElement"]
       30 GETUPVAL                         R7 3
       31 DUPTABLE                         R8 K18 [{["Name"], [2], ["Weight"], ["HideWeight"], ["LayoutOrder"] = 1}]
       32 GETTABLEKS                       R9 R0 K19 ["Input"]
       34 GETTABLEKS                       R9 R9 K14 ["Name"]
       36 SETTABLEKS                       R9 R8 K14 ["Name"]
       38 GETTABLEKS                       R9 R0 K0 ["Label"]
       40 SETTABLEKS                       R9 R8 K0 ["Label"]
       42 GETTABLEKS                       R9 R0 K19 ["Input"]
       44 GETTABLEKS                       R9 R9 K15 ["Weight"]
       46 SETTABLEKS                       R9 R8 K15 ["Weight"]
       48 GETTABLEKS                       R9 R0 K16 ["HideWeight"]
       50 SETTABLEKS                       R9 R8 K16 ["HideWeight"]
       52 CALL                             R6 2 1
       53 SETTABLEKS                       R6 R5 K11 ["InputLabelWeight"]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K5 ["createElement"]
       58 LOADK                            R7 K20 ["Folder"]
       59 NEWTABLE                         R8 0 0
       61 DUPTABLE                         R9 K22 [{"RenderedPinInput"}]
       62 GETUPVAL                         R10 1
       63 GETTABLEKS                       R10 R10 K5 ["createElement"]
       65 GETUPVAL                         R11 4
       66 GETTABLEKS                       R11 R11 K23 ["RenderedCompositorPin"]
       68 DUPTABLE                         R12 K31 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["debugDisplayName"]}]
       69 GETIMPORT                        R13 K34 [UDim2.fromOffset]
       71 GETUPVAL                         R15 5
       72 CALL                             R15 0 1
       73 JUMPIFNOT                        R15 ; [+2]
       74 LOADN                            R14 -21
       75 JUMP                             ; [+1]
       76 LOADN                            R14 -9
       77 LOADN                            R15 14
       78 CALL                             R13 2 1
       79 SETTABLEKS                       R13 R12 K24 ["Position"]
       81 GETUPVAL                         R13 4
       82 GETTABLEKS                       R13 R13 K35 ["DEFAULT_PIN_DATA_TYPE"]
       84 SETTABLEKS                       R13 R12 K26 ["pinDataType"]
       86 GETTABLEKS                       R13 R0 K36 ["NodeId"]
       88 SETTABLEKS                       R13 R12 K27 ["pinNodeId"]
       90 GETTABLEKS                       R13 R0 K19 ["Input"]
       92 GETTABLEKS                       R13 R13 K14 ["Name"]
       94 SETTABLEKS                       R13 R12 K28 ["pinName"]
       96 GETTABLEKS                       R13 R0 K19 ["Input"]
       98 GETTABLEKS                       R13 R13 K37 ["Value"]
      100 SETTABLEKS                       R13 R12 K29 ["pinValue"]
      102 SETTABLEKS                       R1 R12 K30 ["debugDisplayName"]
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K21 ["RenderedPinInput"]
      107 CALL                             R6 3 1
      108 SETTABLEKS                       R6 R5 K12 ["PinChildren"]
      110 CALL                             R2 3 -1
      111 RETURN                           R2 -1

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
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Parent"]
       54 GETTABLEKS                       R7 R7 K15 ["Symbol"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R4 K16 ["getFFlagAnimGraphUIPinOffset"]
       59 DUPCLOSURE                       R8 K17 [PROTO_0]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R7
       66 RETURN                           R8 1
