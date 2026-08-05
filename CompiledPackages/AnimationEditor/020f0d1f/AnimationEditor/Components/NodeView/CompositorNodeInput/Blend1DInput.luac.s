PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+17]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["join"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["Input"]
       14 GETTABLEKS                       R3 R3 K3 ["Value"]
       16 DUPTABLE                         R4 K5 [{"Position"}]
       17 SETTABLEKS                       R0 R4 K4 ["Position"]
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 NEWTABLE                         R4 0 2
       12 GETTABLEKS                       R5 R0 K2 ["OnChanged"]
       14 GETTABLEKS                       R6 R0 K3 ["Input"]
       16 SETLIST                          R4 R5 2 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["createElement"]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K5 ["View"]
       25 DUPTABLE                         R5 K9 [{["tag"] = "row flex-x-fill align-y-center gap-small size-full-700 auto-y padding-x-small", ["LayoutOrder"]}]
       26 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       28 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       30 DUPTABLE                         R6 K13 [{"InputLabelWeight", "Position", "PinChildren"}]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K4 ["createElement"]
       34 GETUPVAL                         R8 4
       35 DUPTABLE                         R9 K20 [{"Name", "Label", "Weight", "LayoutOrder", "OnDelete", "IsHovered", "HasDuplicateName"}]
       36 GETTABLEKS                       R10 R0 K3 ["Input"]
       38 GETTABLEKS                       R10 R10 K14 ["Name"]
       40 SETTABLEKS                       R10 R9 K14 ["Name"]
       42 GETTABLEKS                       R10 R0 K3 ["Input"]
       44 GETTABLEKS                       R10 R10 K21 ["ConnectedNodeName"]
       46 SETTABLEKS                       R10 R9 K15 ["Label"]
       48 GETTABLEKS                       R10 R0 K3 ["Input"]
       50 GETTABLEKS                       R10 R10 K16 ["Weight"]
       52 SETTABLEKS                       R10 R9 K16 ["Weight"]
       54 MOVE                             R10 R1
       55 CALL                             R10 0 1
       56 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       58 GETTABLEKS                       R10 R0 K17 ["OnDelete"]
       60 SETTABLEKS                       R10 R9 K17 ["OnDelete"]
       62 GETTABLEKS                       R10 R0 K18 ["IsHovered"]
       64 SETTABLEKS                       R10 R9 K18 ["IsHovered"]
       66 GETTABLEKS                       R10 R0 K19 ["HasDuplicateName"]
       68 SETTABLEKS                       R10 R9 K19 ["HasDuplicateName"]
       70 CALL                             R7 2 1
       71 SETTABLEKS                       R7 R6 K10 ["InputLabelWeight"]
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K4 ["createElement"]
       76 GETUPVAL                         R8 3
       77 GETTABLEKS                       R8 R8 K22 ["NumberInput"]
       79 DUPTABLE                         R9 K33 [{["size"], ["label"] = "", ["value"], ["step"] = 0.005, ["LayoutOrder"], ["precision"], ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
       80 GETUPVAL                         R10 3
       81 GETTABLEKS                       R10 R10 K34 ["Enums"]
       83 GETTABLEKS                       R10 R10 K35 ["InputSize"]
       85 GETTABLEKS                       R10 R10 K36 ["XSmall"]
       87 SETTABLEKS                       R10 R9 K23 ["size"]
       89 GETTABLEKS                       R10 R0 K3 ["Input"]
       91 GETTABLEKS                       R10 R10 K37 ["Value"]
       93 GETTABLEKS                       R10 R10 K11 ["Position"]
       95 SETTABLEKS                       R10 R9 K26 ["value"]
       97 MOVE                             R10 R1
       98 CALL                             R10 0 1
       99 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      101 GETUPVAL                         R10 5
      102 GETTABLEKS                       R10 R10 K38 ["NUMBER_PRECISION"]
      104 GETTABLEKS                       R10 R10 K39 ["Float"]
      106 SETTABLEKS                       R10 R9 K29 ["precision"]
      108 SETTABLEKS                       R2 R9 K30 ["onChanged"]
      110 GETUPVAL                         R10 3
      111 GETTABLEKS                       R10 R10 K34 ["Enums"]
      113 GETTABLEKS                       R10 R10 K40 ["NumberInputControlsVariant"]
      115 GETTABLEKS                       R10 R10 K41 ["None"]
      117 SETTABLEKS                       R10 R9 K31 ["controlsVariant"]
      119 GETUPVAL                         R10 6
      120 GETTABLEKS                       R10 R10 K42 ["On"]
      122 SETTABLEKS                       R10 R9 K32 ["scrubBehavior"]
      124 CALL                             R7 2 1
      125 SETTABLEKS                       R7 R6 K11 ["Position"]
      127 GETUPVAL                         R7 1
      128 GETTABLEKS                       R7 R7 K4 ["createElement"]
      130 LOADK                            R8 K43 ["Folder"]
      131 NEWTABLE                         R9 0 0
      133 DUPTABLE                         R10 K45 [{"RenderedPinInput"}]
      134 GETUPVAL                         R11 1
      135 GETTABLEKS                       R11 R11 K4 ["createElement"]
      137 GETUPVAL                         R12 7
      138 GETTABLEKS                       R12 R12 K46 ["RenderedCompositorPin"]
      140 DUPTABLE                         R13 K53 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["selected"]}]
      141 GETIMPORT                        R14 K56 [UDim2.fromOffset]
      143 GETUPVAL                         R16 8
      144 CALL                             R16 0 1
      145 JUMPIFNOT                        R16 ; [+2]
      146 LOADN                            R15 -21
      147 JUMP                             ; [+1]
      148 LOADN                            R15 -9
      149 LOADN                            R16 14
      150 CALL                             R14 2 1
      151 SETTABLEKS                       R14 R13 K11 ["Position"]
      153 GETUPVAL                         R14 7
      154 GETTABLEKS                       R14 R14 K57 ["DEFAULT_PIN_DATA_TYPE"]
      156 SETTABLEKS                       R14 R13 K48 ["pinDataType"]
      158 GETTABLEKS                       R14 R0 K58 ["NodeId"]
      160 SETTABLEKS                       R14 R13 K49 ["pinNodeId"]
      162 GETTABLEKS                       R14 R0 K3 ["Input"]
      164 GETTABLEKS                       R14 R14 K14 ["Name"]
      166 SETTABLEKS                       R14 R13 K50 ["pinName"]
      168 GETTABLEKS                       R14 R0 K3 ["Input"]
      170 GETTABLEKS                       R14 R14 K37 ["Value"]
      172 SETTABLEKS                       R14 R13 K51 ["pinValue"]
      174 GETTABLEKS                       R14 R0 K59 ["IsSelected"]
      176 SETTABLEKS                       R14 R13 K52 ["selected"]
      178 CALL                             R11 2 1
      179 SETTABLEKS                       R11 R10 K44 ["RenderedPinInput"]
      181 CALL                             R7 3 1
      182 SETTABLEKS                       R7 R6 K12 ["PinChildren"]
      184 CALL                             R3 3 -1
      185 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeInput"]
       36 GETTABLEKS                       R5 R5 K14 ["InputLabelWeight"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K12 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K13 ["CompositorNodeInput"]
       47 GETTABLEKS                       R6 R6 K15 ["InputPanelTypes"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["NodeGraphing"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K8 ["Parent"]
       61 GETTABLEKS                       R8 R8 K17 ["React"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K8 ["Parent"]
       68 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R3 K19 ["Enums"]
       73 GETTABLEKS                       R9 R9 K20 ["ScrubBehavior"]
       75 GETTABLEKS                       R10 R6 K21 ["getFFlagAnimGraphUIPinOffset"]
       77 DUPCLOSURE                       R11 K22 [PROTO_1]
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R10
       87 RETURN                           R11 1
