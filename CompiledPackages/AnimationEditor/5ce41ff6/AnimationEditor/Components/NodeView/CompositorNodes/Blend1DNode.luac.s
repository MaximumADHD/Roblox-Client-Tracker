PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Value"]
        2 GETTABLEKS                       R1 R2 K1 ["Position"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["map"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["inputs"]
        6 DUPCLOSURE                       R2 K2 [PROTO_0]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+13]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["OnPropertyChanged"]
        5 JUMPIFEQKNIL                     R2 ; [+8]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["OnPropertyChanged"]
       10 LOADK                            R3 K2 ["Position"]
       11 GETTABLEKS                       R4 R1 K3 ["X"]
       13 CALL                             R2 2 0
       14 LOADN                            R2 0
       15 JUMPIFNOTLT                      R2 R0 ; [+11]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K4 ["onInputChanged"]
       20 MOVE                             R3 R0
       21 DUPTABLE                         R4 K5 [{"Position"}]
       22 GETTABLEKS                       R5 R1 K3 ["X"]
       24 SETTABLEKS                       R5 R4 K2 ["Position"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"GraphPayload", "Default"}]
        2 GETTABLEKS                       R3 R0 K0 ["GraphPayload"]
        4 SETTABLEKS                       R3 R2 K0 ["GraphPayload"]
        6 DUPTABLE                         R3 K4 [{"Position"}]
        7 LOADN                            R4 0
        8 SETTABLEKS                       R4 R3 K3 ["Position"]
       10 SETTABLEKS                       R3 R2 K1 ["Default"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K5 ["useMemo"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R4 0 1
       21 GETTABLEKS                       R5 R1 K6 ["inputs"]
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R3 R4 K7 ["createPropertyHelpers"]
       29 MOVE                             R4 R0
       30 CALL                             R3 1 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K8 ["useCallback"]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 NEWTABLE                         R6 0 2
       39 GETTABLEKS                       R7 R0 K9 ["OnPropertyChanged"]
       41 GETTABLEKS                       R8 R0 K10 ["PropertyLookup"]
       43 SETLIST                          R6 R7 2 [1]
       45 CALL                             R4 2 1
       46 DUPTABLE                         R5 K14 [{"Property_Position", "Blend1DMap", "Input"}]
       47 GETTABLEKS                       R6 R3 K15 ["nextProperty"]
       49 DUPTABLE                         R7 K20 [{"Name", "Label", "Type", "Value", "Default"}]
       50 LOADK                            R8 K3 ["Position"]
       51 SETTABLEKS                       R8 R7 K16 ["Name"]
       53 LOADK                            R8 K3 ["Position"]
       54 SETTABLEKS                       R8 R7 K17 ["Label"]
       56 LOADK                            R8 K21 ["Number"]
       57 SETTABLEKS                       R8 R7 K18 ["Type"]
       59 GETTABLEKS                       R9 R0 K10 ["PropertyLookup"]
       61 GETTABLEKS                       R8 R9 K3 ["Position"]
       63 SETTABLEKS                       R8 R7 K19 ["Value"]
       65 LOADN                            R8 0
       66 SETTABLEKS                       R8 R7 K1 ["Default"]
       68 CALL                             R6 1 1
       69 SETTABLEKS                       R6 R5 K11 ["Property_Position"]
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R6 R7 K22 ["createElement"]
       74 GETUPVAL                         R7 4
       75 DUPTABLE                         R8 K26 [{"LayoutOrder", "OnPinDragged", "Position", "Pins"}]
       76 GETTABLEKS                       R9 R3 K27 ["nextOrder"]
       78 CALL                             R9 0 1
       79 SETTABLEKS                       R9 R8 K23 ["LayoutOrder"]
       81 SETTABLEKS                       R4 R8 K24 ["OnPinDragged"]
       83 GETTABLEKS                       R11 R0 K10 ["PropertyLookup"]
       85 GETTABLEKS                       R10 R11 K3 ["Position"]
       87 ORK                              R9 R10 K28 [0]
       88 SETTABLEKS                       R9 R8 K3 ["Position"]
       90 SETTABLEKS                       R2 R8 K25 ["Pins"]
       92 CALL                             R6 2 1
       93 SETTABLEKS                       R6 R5 K12 ["Blend1DMap"]
       95 GETTABLEKS                       R6 R3 K29 ["nextInputPanel"]
       97 DUPTABLE                         R7 K37 [{"InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
       98 GETUPVAL                         R8 5
       99 SETTABLEKS                       R8 R7 K30 ["InputBuilder"]
      101 NEWTABLE                         R8 0 0
      103 SETTABLEKS                       R8 R7 K31 ["InputBuilderProps"]
      105 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      107 GETTABLEKS                       R8 R9 K38 ["id"]
      109 SETTABLEKS                       R8 R7 K32 ["NodeId"]
      111 GETTABLEKS                       R8 R1 K6 ["inputs"]
      113 SETTABLEKS                       R8 R7 K33 ["Inputs"]
      115 GETTABLEKS                       R8 R1 K39 ["newInputDefaultValue"]
      117 SETTABLEKS                       R8 R7 K34 ["NewInputDefaultValue"]
      119 GETTABLEKS                       R8 R1 K40 ["onInputChanged"]
      121 SETTABLEKS                       R8 R7 K35 ["OnInputChanged"]
      123 GETTABLEKS                       R8 R1 K41 ["onInputReordered"]
      125 SETTABLEKS                       R8 R7 K36 ["OnInputReordered"]
      127 CALL                             R6 1 1
      128 SETTABLEKS                       R6 R5 K13 ["Input"]
      130 GETUPVAL                         R7 1
      131 GETTABLEKS                       R6 R7 K22 ["createElement"]
      133 GETUPVAL                         R7 6
      134 GETTABLEKS                       R8 R3 K42 ["nodeProps"]
      136 DUPTABLE                         R9 K44 [{"OutputPin"}]
      137 GETTABLEKS                       R10 R3 K45 ["outputPin"]
      139 CALL                             R10 0 1
      140 SETTABLEKS                       R10 R9 K43 ["OutputPin"]
      142 CALL                             R8 1 1
      143 MOVE                             R9 R5
      144 CALL                             R6 3 -1
      145 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Components"]
       11 GETTABLEKS                       R4 R5 K7 ["NodeView"]
       13 GETTABLEKS                       R3 R4 K8 ["CompositorNodeInput"]
       15 GETTABLEKS                       R2 R3 K9 ["Blend1DInput"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Components"]
       22 GETTABLEKS                       R5 R6 K7 ["NodeView"]
       24 GETTABLEKS                       R4 R5 K10 ["CompositorNodeProperty"]
       26 GETTABLEKS                       R3 R4 K11 ["Blend1DMap"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Components"]
       33 GETTABLEKS                       R6 R7 K7 ["NodeView"]
       35 GETTABLEKS                       R5 R6 K12 ["CompositorNodes"]
       37 GETTABLEKS                       R4 R5 K13 ["CompositorNode"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R7 R0 K14 ["Util"]
       44 GETTABLEKS                       R6 R7 K15 ["Nodes"]
       46 GETTABLEKS                       R5 R6 K16 ["CompositorNodeUtils"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R7 R0 K17 ["Parent"]
       53 GETTABLEKS                       R6 R7 K18 ["Dash"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R10 K7 ["NodeView"]
       62 GETTABLEKS                       R8 R9 K8 ["CompositorNodeInput"]
       64 GETTABLEKS                       R7 R8 K19 ["InputPanelTypes"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R9 R0 K17 ["Parent"]
       71 GETTABLEKS                       R8 R9 K20 ["React"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R12 R0 K6 ["Components"]
       78 GETTABLEKS                       R11 R12 K7 ["NodeView"]
       80 GETTABLEKS                       R10 R11 K12 ["CompositorNodes"]
       82 GETTABLEKS                       R9 R10 K21 ["useInputPanelHelper"]
       84 CALL                             R8 1 1
       85 DUPCLOSURE                       R9 K22 [PROTO_3]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R3
       93 RETURN                           R9 1
