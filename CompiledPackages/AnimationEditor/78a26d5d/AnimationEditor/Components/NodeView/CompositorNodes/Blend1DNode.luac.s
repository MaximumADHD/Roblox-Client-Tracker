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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setParameterOverrideValueAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K1 ["X"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+31]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["isPropertyParameterized"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["GraphPayload"]
        8 LOADK                            R4 K3 ["Position"]
        9 CALL                             R2 2 2
       10 JUMPIFNOT                        R2 ; [+9]
       11 JUMPIFNOT                        R3 ; [+8]
       12 GETIMPORT                        R4 K6 [task.spawn]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R1
       18 CALL                             R4 1 0
       19 JUMP                             ; [+12]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K7 ["OnPropertyChanged"]
       23 JUMPIFEQKNIL                     R4 ; [+8]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K7 ["OnPropertyChanged"]
       28 LOADK                            R5 K3 ["Position"]
       29 GETTABLEKS                       R6 R1 K8 ["X"]
       31 CALL                             R4 2 0
       32 LOADN                            R2 0
       33 JUMPIFNOTLT                      R2 R0 ; [+11]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R2 R3 K9 ["onInputChanged"]
       38 MOVE                             R3 R0
       39 DUPTABLE                         R4 K10 [{"Position"}]
       40 GETTABLEKS                       R5 R1 K8 ["X"]
       42 SETTABLEKS                       R5 R4 K3 ["Position"]
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["GraphPayload"]
        6 LOADK                            R2 K2 ["Position"]
        7 CALL                             R0 2 2
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K3 ["parameterOverrides"]
       12 GETTABLE                         R2 R3 R1
       13 JUMPIF                           R2 ; [+7]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K4 ["PropertyLookup"]
       17 GETTABLEKS                       R2 R3 K2 ["Position"]
       19 JUMPIF                           R2 ; [+1]
       20 LOADN                            R2 0
       21 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K4 [{"GraphPayload", "Default"}]
        9 GETTABLEKS                       R4 R0 K2 ["GraphPayload"]
       11 SETTABLEKS                       R4 R3 K2 ["GraphPayload"]
       13 DUPTABLE                         R4 K6 [{"Position"}]
       14 LOADN                            R5 0
       15 SETTABLEKS                       R5 R4 K5 ["Position"]
       17 SETTABLEKS                       R4 R3 K3 ["Default"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K7 ["useMemo"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R2 K8 ["inputs"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R4 R5 K9 ["createPropertyHelpers"]
       36 MOVE                             R5 R0
       37 CALL                             R4 1 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K10 ["useCallback"]
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R7 0 3
       48 GETTABLEKS                       R8 R0 K11 ["OnPropertyChanged"]
       50 GETTABLEKS                       R9 R0 K12 ["PropertyLookup"]
       52 GETTABLEKS                       R10 R1 K13 ["setParameterOverrideValueAsync"]
       54 SETLIST                          R7 R8 3 [1]
       56 CALL                             R5 2 1
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R6 R7 K7 ["useMemo"]
       60 NEWCLOSURE                       R7 P2
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R1
       64 NEWTABLE                         R8 0 3
       66 GETTABLEKS                       R9 R0 K2 ["GraphPayload"]
       68 GETTABLEKS                       R10 R1 K14 ["parameterOverrides"]
       70 GETTABLEKS                       R12 R0 K12 ["PropertyLookup"]
       72 GETTABLEKS                       R11 R12 K5 ["Position"]
       74 SETLIST                          R8 R9 3 [1]
       76 CALL                             R6 2 1
       77 DUPTABLE                         R7 K19 [{"Property_PhaseSync", "Property_Position", "Blend1DMap", "InputPanel"}]
       78 GETTABLEKS                       R8 R4 K20 ["nextProperty"]
       80 DUPTABLE                         R9 K26 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
       81 LOADK                            R10 K27 ["PhaseSync"]
       82 SETTABLEKS                       R10 R9 K21 ["Name"]
       84 LOADK                            R10 K28 ["Phase Sync"]
       85 SETTABLEKS                       R10 R9 K22 ["Label"]
       87 LOADK                            R10 K29 ["Enum.AnimationNodePhaseSync"]
       88 SETTABLEKS                       R10 R9 K23 ["Type"]
       90 GETTABLEKS                       R11 R0 K12 ["PropertyLookup"]
       92 GETTABLEKS                       R10 R11 K27 ["PhaseSync"]
       94 SETTABLEKS                       R10 R9 K24 ["Value"]
       96 GETIMPORT                        R10 K33 [Enum.AnimationNodePhaseSync.Synced]
       98 SETTABLEKS                       R10 R9 K25 ["DefaultValue"]
      100 CALL                             R8 1 1
      101 SETTABLEKS                       R8 R7 K15 ["Property_PhaseSync"]
      103 GETTABLEKS                       R8 R4 K20 ["nextProperty"]
      105 DUPTABLE                         R9 K36 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      106 LOADK                            R10 K5 ["Position"]
      107 SETTABLEKS                       R10 R9 K21 ["Name"]
      109 LOADK                            R10 K5 ["Position"]
      110 SETTABLEKS                       R10 R9 K22 ["Label"]
      112 LOADK                            R10 K37 ["Number"]
      113 SETTABLEKS                       R10 R9 K23 ["Type"]
      115 GETTABLEKS                       R11 R0 K12 ["PropertyLookup"]
      117 GETTABLEKS                       R10 R11 K5 ["Position"]
      119 SETTABLEKS                       R10 R9 K24 ["Value"]
      121 LOADN                            R10 0
      122 SETTABLEKS                       R10 R9 K3 ["Default"]
      124 LOADK                            R10 K38 [0.1]
      125 SETTABLEKS                       R10 R9 K34 ["Step"]
      127 LOADN                            R10 2
      128 SETTABLEKS                       R10 R9 K35 ["Precision"]
      130 CALL                             R8 1 1
      131 SETTABLEKS                       R8 R7 K16 ["Property_Position"]
      133 GETUPVAL                         R9 0
      134 GETTABLEKS                       R8 R9 K39 ["createElement"]
      136 GETUPVAL                         R9 6
      137 DUPTABLE                         R10 K43 [{"LayoutOrder", "OnPinDragged", "Position", "Pins"}]
      138 GETTABLEKS                       R11 R4 K44 ["nextOrder"]
      140 CALL                             R11 0 1
      141 SETTABLEKS                       R11 R10 K40 ["LayoutOrder"]
      143 SETTABLEKS                       R5 R10 K41 ["OnPinDragged"]
      145 SETTABLEKS                       R6 R10 K5 ["Position"]
      147 SETTABLEKS                       R3 R10 K42 ["Pins"]
      149 CALL                             R8 2 1
      150 SETTABLEKS                       R8 R7 K17 ["Blend1DMap"]
      152 GETTABLEKS                       R8 R4 K45 ["nextInputPanel"]
      154 DUPTABLE                         R9 K53 [{"InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      155 GETUPVAL                         R10 7
      156 SETTABLEKS                       R10 R9 K46 ["InputBuilder"]
      158 NEWTABLE                         R10 0 0
      160 SETTABLEKS                       R10 R9 K47 ["InputBuilderProps"]
      162 GETTABLEKS                       R11 R0 K2 ["GraphPayload"]
      164 GETTABLEKS                       R10 R11 K54 ["id"]
      166 SETTABLEKS                       R10 R9 K48 ["NodeId"]
      168 GETTABLEKS                       R10 R2 K8 ["inputs"]
      170 SETTABLEKS                       R10 R9 K49 ["Inputs"]
      172 GETTABLEKS                       R10 R2 K55 ["newInputDefaultValue"]
      174 SETTABLEKS                       R10 R9 K50 ["NewInputDefaultValue"]
      176 GETTABLEKS                       R10 R2 K56 ["onInputChanged"]
      178 SETTABLEKS                       R10 R9 K51 ["OnInputChanged"]
      180 GETTABLEKS                       R10 R2 K57 ["onInputReordered"]
      182 SETTABLEKS                       R10 R9 K52 ["OnInputReordered"]
      184 CALL                             R8 1 1
      185 SETTABLEKS                       R8 R7 K18 ["InputPanel"]
      187 GETUPVAL                         R9 0
      188 GETTABLEKS                       R8 R9 K39 ["createElement"]
      190 GETUPVAL                         R9 8
      191 GETTABLEKS                       R10 R4 K58 ["nodeProps"]
      193 DUPTABLE                         R11 K60 [{"OutputPin"}]
      194 GETTABLEKS                       R12 R4 K61 ["outputPin"]
      196 CALL                             R12 0 1
      197 SETTABLEKS                       R12 R11 K59 ["OutputPin"]
      199 CALL                             R10 1 1
      200 MOVE                             R11 R7
      201 CALL                             R8 3 -1
      202 RETURN                           R8 -1

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
       69 GETTABLEKS                       R9 R0 K20 ["Contexts"]
       71 GETTABLEKS                       R8 R9 K21 ["ParameterOverrideContext"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R12 R0 K6 ["Components"]
       78 GETTABLEKS                       R11 R12 K7 ["NodeView"]
       80 GETTABLEKS                       R10 R11 K10 ["CompositorNodeProperty"]
       82 GETTABLEKS                       R9 R10 K22 ["PropertyUtils"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K5 [require]
       87 GETTABLEKS                       R11 R0 K17 ["Parent"]
       89 GETTABLEKS                       R10 R11 K23 ["React"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R14 R0 K6 ["Components"]
       96 GETTABLEKS                       R13 R14 K7 ["NodeView"]
       98 GETTABLEKS                       R12 R13 K12 ["CompositorNodes"]
      100 GETTABLEKS                       R11 R12 K24 ["useInputPanelHelper"]
      102 CALL                             R10 1 1
      103 DUPCLOSURE                       R11 K25 [PROTO_5]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R3
      113 RETURN                           R11 1
