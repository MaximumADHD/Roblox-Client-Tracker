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
       31 DUPTABLE                         R8 K19 [{["Name"], [2], ["Weight"], ["HideWeight"], ["OnRename"], ["LayoutOrder"] = 1}]
       32 GETTABLEKS                       R9 R0 K20 ["Input"]
       34 GETTABLEKS                       R9 R9 K14 ["Name"]
       36 SETTABLEKS                       R9 R8 K14 ["Name"]
       38 GETTABLEKS                       R9 R0 K0 ["Label"]
       40 SETTABLEKS                       R9 R8 K0 ["Label"]
       42 GETTABLEKS                       R9 R0 K20 ["Input"]
       44 GETTABLEKS                       R9 R9 K15 ["Weight"]
       46 SETTABLEKS                       R9 R8 K15 ["Weight"]
       48 GETTABLEKS                       R9 R0 K16 ["HideWeight"]
       50 SETTABLEKS                       R9 R8 K16 ["HideWeight"]
       52 GETTABLEKS                       R9 R0 K17 ["OnRename"]
       54 SETTABLEKS                       R9 R8 K17 ["OnRename"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K11 ["InputLabelWeight"]
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R6 R6 K5 ["createElement"]
       62 LOADK                            R7 K21 ["Folder"]
       63 NEWTABLE                         R8 0 0
       65 DUPTABLE                         R9 K23 [{"RenderedPinInput"}]
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K5 ["createElement"]
       69 GETUPVAL                         R11 4
       70 GETTABLEKS                       R11 R11 K24 ["RenderedCompositorPin"]
       72 DUPTABLE                         R12 K33 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinInputId"], ["pinValue"], ["debugDisplayName"]}]
       73 GETIMPORT                        R13 K36 [UDim2.fromOffset]
       75 GETUPVAL                         R15 5
       76 CALL                             R15 0 1
       77 JUMPIFNOT                        R15 ; [+2]
       78 LOADN                            R14 -21
       79 JUMP                             ; [+1]
       80 LOADN                            R14 -9
       81 LOADN                            R15 14
       82 CALL                             R13 2 1
       83 SETTABLEKS                       R13 R12 K25 ["Position"]
       85 GETUPVAL                         R13 4
       86 GETTABLEKS                       R13 R13 K37 ["DEFAULT_PIN_DATA_TYPE"]
       88 SETTABLEKS                       R13 R12 K27 ["pinDataType"]
       90 GETTABLEKS                       R13 R0 K38 ["NodeId"]
       92 SETTABLEKS                       R13 R12 K28 ["pinNodeId"]
       94 GETTABLEKS                       R13 R0 K20 ["Input"]
       96 GETTABLEKS                       R13 R13 K14 ["Name"]
       98 SETTABLEKS                       R13 R12 K29 ["pinName"]
      100 GETTABLEKS                       R13 R0 K20 ["Input"]
      102 GETTABLEKS                       R13 R13 K39 ["InputId"]
      104 SETTABLEKS                       R13 R12 K30 ["pinInputId"]
      106 GETTABLEKS                       R13 R0 K20 ["Input"]
      108 GETTABLEKS                       R13 R13 K40 ["Value"]
      110 SETTABLEKS                       R13 R12 K31 ["pinValue"]
      112 SETTABLEKS                       R1 R12 K32 ["debugDisplayName"]
      114 CALL                             R10 2 1
      115 SETTABLEKS                       R10 R9 K22 ["RenderedPinInput"]
      117 CALL                             R6 3 1
      118 SETTABLEKS                       R6 R5 K12 ["PinChildren"]
      120 CALL                             R2 3 -1
      121 RETURN                           R2 -1

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
