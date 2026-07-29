PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["DisplayName"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+16]
        5 GETTABLEKS                       R2 R0 K1 ["Label"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["NEW_INPUT"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+3]
       12 LOADK                            R1 K3 ["<New Input>"]
       13 JUMP                             ; [+7]
       14 GETTABLEKS                       R3 R0 K1 ["Label"]
       16 FASTCALL1                        TOSTRING R3 ; [+2]
       17 GETIMPORT                        R2 K5 [tostring]
       19 CALL                             R2 1 1
       20 MOVE                             R1 R2
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K6 ["createElement"]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K7 ["View"]
       27 DUPTABLE                         R4 K11 [{["tag"] = "row flex-x-between align-y-center gap-small size-full-700 auto-y padding-x-small", ["LayoutOrder"]}]
       28 GETTABLEKS                       R5 R0 K10 ["LayoutOrder"]
       30 SETTABLEKS                       R5 R4 K10 ["LayoutOrder"]
       32 DUPTABLE                         R5 K14 [{"InputLabelWeight", "PinChildren"}]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K6 ["createElement"]
       36 GETUPVAL                         R7 4
       37 DUPTABLE                         R8 K19 [{["Name"], ["Label"], ["Weight"], ["HideWeight"], ["LayoutOrder"] = 1}]
       38 GETUPVAL                         R10 0
       39 CALL                             R10 0 1
       40 JUMPIFNOT                        R10 ; [+5]
       41 GETTABLEKS                       R9 R0 K20 ["Input"]
       43 GETTABLEKS                       R9 R9 K15 ["Name"]
       45 JUMP                             ; [+7]
       46 GETTABLEKS                       R9 R0 K0 ["DisplayName"]
       48 JUMPIF                           R9 ; [+4]
       49 GETTABLEKS                       R9 R0 K20 ["Input"]
       51 GETTABLEKS                       R9 R9 K15 ["Name"]
       53 SETTABLEKS                       R9 R8 K15 ["Name"]
       55 GETUPVAL                         R10 0
       56 CALL                             R10 0 1
       57 JUMPIFNOT                        R10 ; [+3]
       58 GETTABLEKS                       R9 R0 K1 ["Label"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R9
       62 SETTABLEKS                       R9 R8 K1 ["Label"]
       64 GETTABLEKS                       R9 R0 K20 ["Input"]
       66 GETTABLEKS                       R9 R9 K16 ["Weight"]
       68 SETTABLEKS                       R9 R8 K16 ["Weight"]
       70 GETTABLEKS                       R9 R0 K17 ["HideWeight"]
       72 SETTABLEKS                       R9 R8 K17 ["HideWeight"]
       74 CALL                             R6 2 1
       75 SETTABLEKS                       R6 R5 K12 ["InputLabelWeight"]
       77 GETUPVAL                         R6 2
       78 GETTABLEKS                       R6 R6 K6 ["createElement"]
       80 LOADK                            R7 K21 ["Folder"]
       81 NEWTABLE                         R8 0 0
       83 DUPTABLE                         R9 K23 [{"RenderedPinInput"}]
       84 GETUPVAL                         R10 2
       85 GETTABLEKS                       R10 R10 K6 ["createElement"]
       87 GETUPVAL                         R11 5
       88 GETTABLEKS                       R11 R11 K24 ["RenderedCompositorPin"]
       90 DUPTABLE                         R12 K32 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["debugDisplayName"]}]
       91 GETIMPORT                        R13 K35 [UDim2.fromOffset]
       93 GETUPVAL                         R15 6
       94 CALL                             R15 0 1
       95 JUMPIFNOT                        R15 ; [+2]
       96 LOADN                            R14 -21
       97 JUMP                             ; [+1]
       98 LOADN                            R14 -9
       99 LOADN                            R15 14
      100 CALL                             R13 2 1
      101 SETTABLEKS                       R13 R12 K25 ["Position"]
      103 GETUPVAL                         R13 5
      104 GETTABLEKS                       R13 R13 K36 ["DEFAULT_PIN_DATA_TYPE"]
      106 SETTABLEKS                       R13 R12 K27 ["pinDataType"]
      108 GETTABLEKS                       R13 R0 K37 ["NodeId"]
      110 SETTABLEKS                       R13 R12 K28 ["pinNodeId"]
      112 GETTABLEKS                       R13 R0 K20 ["Input"]
      114 GETTABLEKS                       R13 R13 K15 ["Name"]
      116 SETTABLEKS                       R13 R12 K29 ["pinName"]
      118 GETTABLEKS                       R13 R0 K20 ["Input"]
      120 GETTABLEKS                       R13 R13 K38 ["Value"]
      122 SETTABLEKS                       R13 R12 K30 ["pinValue"]
      124 SETTABLEKS                       R1 R12 K31 ["debugDisplayName"]
      126 CALL                             R10 2 1
      127 SETTABLEKS                       R10 R9 K22 ["RenderedPinInput"]
      129 CALL                             R6 3 1
      130 SETTABLEKS                       R6 R5 K13 ["PinChildren"]
      132 CALL                             R2 3 -1
      133 RETURN                           R2 -1

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
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K16 ["Flags"]
       61 GETTABLEKS                       R8 R8 K17 ["getFFlagAnimGraphUIDuplicateNodeNames"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R4 K18 ["getFFlagAnimGraphUIPinOffset"]
       66 DUPCLOSURE                       R9 K19 [PROTO_0]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R8
       74 RETURN                           R9 1
