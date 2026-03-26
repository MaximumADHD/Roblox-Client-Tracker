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
       46 DUPTABLE                         R5 K15 [{"Property_PhaseSync", "Property_Position", "Blend1DMap", "InputPanel"}]
       47 GETTABLEKS                       R6 R3 K16 ["nextProperty"]
       49 DUPTABLE                         R7 K22 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
       50 LOADK                            R8 K23 ["PhaseSync"]
       51 SETTABLEKS                       R8 R7 K17 ["Name"]
       53 LOADK                            R8 K24 ["Phase Sync"]
       54 SETTABLEKS                       R8 R7 K18 ["Label"]
       56 LOADK                            R8 K25 ["Enum.AnimationNodePhaseSync"]
       57 SETTABLEKS                       R8 R7 K19 ["Type"]
       59 GETTABLEKS                       R9 R0 K10 ["PropertyLookup"]
       61 GETTABLEKS                       R8 R9 K23 ["PhaseSync"]
       63 SETTABLEKS                       R8 R7 K20 ["Value"]
       65 GETIMPORT                        R8 K29 [Enum.AnimationNodePhaseSync.Synced]
       67 SETTABLEKS                       R8 R7 K21 ["DefaultValue"]
       69 CALL                             R6 1 1
       70 SETTABLEKS                       R6 R5 K11 ["Property_PhaseSync"]
       72 GETTABLEKS                       R6 R3 K16 ["nextProperty"]
       74 DUPTABLE                         R7 K32 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
       75 LOADK                            R8 K3 ["Position"]
       76 SETTABLEKS                       R8 R7 K17 ["Name"]
       78 LOADK                            R8 K3 ["Position"]
       79 SETTABLEKS                       R8 R7 K18 ["Label"]
       81 LOADK                            R8 K33 ["Number"]
       82 SETTABLEKS                       R8 R7 K19 ["Type"]
       84 GETTABLEKS                       R9 R0 K10 ["PropertyLookup"]
       86 GETTABLEKS                       R8 R9 K3 ["Position"]
       88 SETTABLEKS                       R8 R7 K20 ["Value"]
       90 LOADN                            R8 0
       91 SETTABLEKS                       R8 R7 K1 ["Default"]
       93 LOADK                            R8 K34 [0.1]
       94 SETTABLEKS                       R8 R7 K30 ["Step"]
       96 LOADN                            R8 2
       97 SETTABLEKS                       R8 R7 K31 ["Precision"]
       99 CALL                             R6 1 1
      100 SETTABLEKS                       R6 R5 K12 ["Property_Position"]
      102 GETUPVAL                         R7 1
      103 GETTABLEKS                       R6 R7 K35 ["createElement"]
      105 GETUPVAL                         R7 4
      106 DUPTABLE                         R8 K39 [{"LayoutOrder", "OnPinDragged", "Position", "Pins"}]
      107 GETTABLEKS                       R9 R3 K40 ["nextOrder"]
      109 CALL                             R9 0 1
      110 SETTABLEKS                       R9 R8 K36 ["LayoutOrder"]
      112 SETTABLEKS                       R4 R8 K37 ["OnPinDragged"]
      114 GETTABLEKS                       R11 R0 K10 ["PropertyLookup"]
      116 GETTABLEKS                       R10 R11 K3 ["Position"]
      118 ORK                              R9 R10 K41 [0]
      119 SETTABLEKS                       R9 R8 K3 ["Position"]
      121 SETTABLEKS                       R2 R8 K38 ["Pins"]
      123 CALL                             R6 2 1
      124 SETTABLEKS                       R6 R5 K13 ["Blend1DMap"]
      126 GETTABLEKS                       R6 R3 K42 ["nextInputPanel"]
      128 DUPTABLE                         R7 K50 [{"InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      129 GETUPVAL                         R8 5
      130 SETTABLEKS                       R8 R7 K43 ["InputBuilder"]
      132 NEWTABLE                         R8 0 0
      134 SETTABLEKS                       R8 R7 K44 ["InputBuilderProps"]
      136 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      138 GETTABLEKS                       R8 R9 K51 ["id"]
      140 SETTABLEKS                       R8 R7 K45 ["NodeId"]
      142 GETTABLEKS                       R8 R1 K6 ["inputs"]
      144 SETTABLEKS                       R8 R7 K46 ["Inputs"]
      146 GETTABLEKS                       R8 R1 K52 ["newInputDefaultValue"]
      148 SETTABLEKS                       R8 R7 K47 ["NewInputDefaultValue"]
      150 GETTABLEKS                       R8 R1 K53 ["onInputChanged"]
      152 SETTABLEKS                       R8 R7 K48 ["OnInputChanged"]
      154 GETTABLEKS                       R8 R1 K54 ["onInputReordered"]
      156 SETTABLEKS                       R8 R7 K49 ["OnInputReordered"]
      158 CALL                             R6 1 1
      159 SETTABLEKS                       R6 R5 K14 ["InputPanel"]
      161 GETUPVAL                         R7 1
      162 GETTABLEKS                       R6 R7 K35 ["createElement"]
      164 GETUPVAL                         R7 6
      165 GETTABLEKS                       R8 R3 K55 ["nodeProps"]
      167 DUPTABLE                         R9 K57 [{"OutputPin"}]
      168 GETTABLEKS                       R10 R3 K58 ["outputPin"]
      170 CALL                             R10 0 1
      171 SETTABLEKS                       R10 R9 K56 ["OutputPin"]
      173 CALL                             R8 1 1
      174 MOVE                             R9 R5
      175 CALL                             R6 3 -1
      176 RETURN                           R6 -1

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
