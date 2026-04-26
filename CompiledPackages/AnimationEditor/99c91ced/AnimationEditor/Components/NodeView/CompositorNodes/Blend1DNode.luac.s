PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Value"]
        2 GETTABLEKS                       R1 R2 K1 ["Position"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["map"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["inputs"]
        6 DUPCLOSURE                       R2 K2 [PROTO_1]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setParameterOverrideValueAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K1 ["X"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+29]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["isPropertyParameterized"]
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K2 ["Position"]
        7 CALL                             R2 2 2
        8 JUMPIFNOT                        R2 ; [+9]
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETIMPORT                        R4 K5 [task.spawn]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R1
       16 CALL                             R4 1 0
       17 JUMP                             ; [+12]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K6 ["OnPropertyChanged"]
       21 JUMPIFEQKNIL                     R4 ; [+8]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K6 ["OnPropertyChanged"]
       26 LOADK                            R5 K2 ["Position"]
       27 GETTABLEKS                       R6 R1 K7 ["X"]
       29 CALL                             R4 2 0
       30 LOADN                            R2 0
       31 JUMPIFNOTLT                      R2 R0 ; [+11]
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R2 R3 K8 ["onInputChanged"]
       36 MOVE                             R3 R0
       37 DUPTABLE                         R4 K9 [{"Position"}]
       38 GETTABLEKS                       R5 R1 K7 ["X"]
       40 SETTABLEKS                       R5 R4 K2 ["Position"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["Position"]
        5 CALL                             R0 2 2
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["parameterOverrides"]
       10 GETTABLE                         R2 R3 R1
       11 JUMPIF                           R2 ; [+7]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K3 ["PropertyLookup"]
       15 GETTABLEKS                       R2 R3 K1 ["Position"]
       17 JUMPIF                           R2 ; [+1]
       18 LOADN                            R2 0
       19 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 DUPTABLE                         R4 K4 [{"GraphPayload", "Default"}]
       16 GETTABLEKS                       R5 R0 K2 ["GraphPayload"]
       18 SETTABLEKS                       R5 R4 K2 ["GraphPayload"]
       20 DUPTABLE                         R5 K6 [{"Position"}]
       21 LOADN                            R6 0
       22 SETTABLEKS                       R6 R5 K5 ["Position"]
       24 SETTABLEKS                       R5 R4 K3 ["Default"]
       26 CALL                             R3 1 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K7 ["useMemo"]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R6 0 2
       35 GETTABLEKS                       R7 R2 K8 ["observeNodePropsById"]
       37 GETTABLEKS                       R9 R0 K2 ["GraphPayload"]
       39 GETTABLEKS                       R8 R9 K9 ["id"]
       41 SETLIST                          R6 R7 2 [1]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R5 R6 K10 ["useSignalState"]
       47 MOVE                             R6 R4
       48 CALL                             R5 1 1
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R6 R7 K7 ["useMemo"]
       52 NEWCLOSURE                       R7 P1
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R3
       55 NEWTABLE                         R8 0 1
       57 GETTABLEKS                       R9 R3 K11 ["inputs"]
       59 SETLIST                          R8 R9 1 [1]
       61 CALL                             R6 2 1
       62 GETUPVAL                         R8 6
       63 GETTABLEKS                       R7 R8 K12 ["createPropertyHelpers"]
       65 MOVE                             R8 R0
       66 CALL                             R7 1 1
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R8 R9 K13 ["useCallback"]
       70 NEWCLOSURE                       R9 P2
       71 CAPTURE                          UPVAL U7
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R3
       76 NEWTABLE                         R10 0 4
       78 MOVE                             R11 R5
       79 GETTABLEKS                       R12 R0 K14 ["OnPropertyChanged"]
       81 GETTABLEKS                       R13 R0 K15 ["PropertyLookup"]
       83 GETTABLEKS                       R14 R1 K16 ["setParameterOverrideValueAsync"]
       85 SETLIST                          R10 R11 4 [1]
       87 CALL                             R8 2 1
       88 GETUPVAL                         R10 0
       89 GETTABLEKS                       R9 R10 K7 ["useMemo"]
       91 NEWCLOSURE                       R10 P3
       92 CAPTURE                          UPVAL U7
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R0
       96 NEWTABLE                         R11 0 3
       98 MOVE                             R12 R5
       99 GETTABLEKS                       R13 R1 K17 ["parameterOverrides"]
      101 GETTABLEKS                       R15 R0 K15 ["PropertyLookup"]
      103 GETTABLEKS                       R14 R15 K5 ["Position"]
      105 SETLIST                          R11 R12 3 [1]
      107 CALL                             R9 2 1
      108 DUPTABLE                         R10 K22 [{"Property_PhaseSync", "Property_Position", "Blend1DMap", "InputPanel"}]
      109 GETTABLEKS                       R11 R7 K23 ["nextProperty"]
      111 DUPTABLE                         R12 K29 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
      112 LOADK                            R13 K30 ["PhaseSync"]
      113 SETTABLEKS                       R13 R12 K24 ["Name"]
      115 LOADK                            R13 K31 ["Phase Sync"]
      116 SETTABLEKS                       R13 R12 K25 ["Label"]
      118 LOADK                            R13 K32 ["Enum.AnimationNodePhaseSync"]
      119 SETTABLEKS                       R13 R12 K26 ["Type"]
      121 GETTABLEKS                       R14 R0 K15 ["PropertyLookup"]
      123 GETTABLEKS                       R13 R14 K30 ["PhaseSync"]
      125 SETTABLEKS                       R13 R12 K27 ["Value"]
      127 GETIMPORT                        R13 K36 [Enum.AnimationNodePhaseSync.Synced]
      129 SETTABLEKS                       R13 R12 K28 ["DefaultValue"]
      131 CALL                             R11 1 1
      132 SETTABLEKS                       R11 R10 K18 ["Property_PhaseSync"]
      134 GETTABLEKS                       R11 R7 K23 ["nextProperty"]
      136 DUPTABLE                         R12 K39 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      137 LOADK                            R13 K5 ["Position"]
      138 SETTABLEKS                       R13 R12 K24 ["Name"]
      140 LOADK                            R13 K5 ["Position"]
      141 SETTABLEKS                       R13 R12 K25 ["Label"]
      143 LOADK                            R13 K40 ["Number"]
      144 SETTABLEKS                       R13 R12 K26 ["Type"]
      146 GETTABLEKS                       R14 R0 K15 ["PropertyLookup"]
      148 GETTABLEKS                       R13 R14 K5 ["Position"]
      150 SETTABLEKS                       R13 R12 K27 ["Value"]
      152 LOADN                            R13 0
      153 SETTABLEKS                       R13 R12 K3 ["Default"]
      155 GETUPVAL                         R14 8
      156 CALL                             R14 0 1
      157 JUMPIFNOT                        R14 ; [+2]
      158 LOADNIL                          R13
      159 JUMP                             ; [+1]
      160 LOADK                            R13 K41 [0.1]
      161 SETTABLEKS                       R13 R12 K37 ["Step"]
      163 GETUPVAL                         R14 8
      164 CALL                             R14 0 1
      165 JUMPIFNOT                        R14 ; [+2]
      166 LOADNIL                          R13
      167 JUMP                             ; [+5]
      168 GETUPVAL                         R15 9
      169 GETTABLEKS                       R14 R15 K42 ["NUMBER_PRECISION"]
      171 GETTABLEKS                       R13 R14 K43 ["Float"]
      173 SETTABLEKS                       R13 R12 K38 ["Precision"]
      175 CALL                             R11 1 1
      176 SETTABLEKS                       R11 R10 K19 ["Property_Position"]
      178 GETUPVAL                         R12 0
      179 GETTABLEKS                       R11 R12 K44 ["createElement"]
      181 GETUPVAL                         R12 10
      182 DUPTABLE                         R13 K48 [{"LayoutOrder", "OnPinDragged", "Position", "Pins"}]
      183 GETTABLEKS                       R14 R7 K49 ["nextOrder"]
      185 CALL                             R14 0 1
      186 SETTABLEKS                       R14 R13 K45 ["LayoutOrder"]
      188 SETTABLEKS                       R8 R13 K46 ["OnPinDragged"]
      190 SETTABLEKS                       R9 R13 K5 ["Position"]
      192 SETTABLEKS                       R6 R13 K47 ["Pins"]
      194 CALL                             R11 2 1
      195 SETTABLEKS                       R11 R10 K20 ["Blend1DMap"]
      197 GETTABLEKS                       R11 R7 K50 ["nextInputPanel"]
      199 DUPTABLE                         R12 K58 [{"InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      200 GETUPVAL                         R13 11
      201 SETTABLEKS                       R13 R12 K51 ["InputBuilder"]
      203 NEWTABLE                         R13 0 0
      205 SETTABLEKS                       R13 R12 K52 ["InputBuilderProps"]
      207 GETTABLEKS                       R14 R0 K2 ["GraphPayload"]
      209 GETTABLEKS                       R13 R14 K9 ["id"]
      211 SETTABLEKS                       R13 R12 K53 ["NodeId"]
      213 GETTABLEKS                       R13 R3 K11 ["inputs"]
      215 SETTABLEKS                       R13 R12 K54 ["Inputs"]
      217 GETTABLEKS                       R13 R3 K59 ["newInputDefaultValue"]
      219 SETTABLEKS                       R13 R12 K55 ["NewInputDefaultValue"]
      221 GETTABLEKS                       R13 R3 K60 ["onInputChanged"]
      223 SETTABLEKS                       R13 R12 K56 ["OnInputChanged"]
      225 GETTABLEKS                       R13 R3 K61 ["onInputReordered"]
      227 SETTABLEKS                       R13 R12 K57 ["OnInputReordered"]
      229 CALL                             R11 1 1
      230 SETTABLEKS                       R11 R10 K21 ["InputPanel"]
      232 GETUPVAL                         R12 0
      233 GETTABLEKS                       R11 R12 K44 ["createElement"]
      235 GETUPVAL                         R12 12
      236 GETTABLEKS                       R13 R7 K62 ["nodeProps"]
      238 DUPTABLE                         R14 K64 [{"OutputPin"}]
      239 GETTABLEKS                       R15 R7 K65 ["outputPin"]
      241 CALL                             R15 0 1
      242 SETTABLEKS                       R15 R14 K63 ["OutputPin"]
      244 CALL                             R13 1 1
      245 MOVE                             R14 R10
      246 CALL                             R11 3 -1
      247 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["SignalsReact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K10 ["Components"]
       32 GETTABLEKS                       R7 R8 K11 ["NodeView"]
       34 GETTABLEKS                       R6 R7 K12 ["CompositorNodeInput"]
       36 GETTABLEKS                       R5 R6 K13 ["Blend1DInput"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R9 R0 K10 ["Components"]
       43 GETTABLEKS                       R8 R9 K11 ["NodeView"]
       45 GETTABLEKS                       R7 R8 K14 ["CompositorNodeProperty"]
       47 GETTABLEKS                       R6 R7 K15 ["Blend1DMap"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R10 R0 K10 ["Components"]
       54 GETTABLEKS                       R9 R10 K11 ["NodeView"]
       56 GETTABLEKS                       R8 R9 K16 ["CompositorNodes"]
       58 GETTABLEKS                       R7 R8 K17 ["CompositorNode"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R10 R0 K18 ["Util"]
       65 GETTABLEKS                       R9 R10 K19 ["Nodes"]
       67 GETTABLEKS                       R8 R9 K20 ["CompositorNodeUtils"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R10 R0 K18 ["Util"]
       74 GETTABLEKS                       R9 R10 K21 ["Constants"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Components"]
       81 GETTABLEKS                       R12 R13 K11 ["NodeView"]
       83 GETTABLEKS                       R11 R12 K12 ["CompositorNodeInput"]
       85 GETTABLEKS                       R10 R11 K22 ["InputPanelTypes"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R12 R0 K23 ["Contexts"]
       92 GETTABLEKS                       R11 R12 K24 ["NativeGraphContext"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R13 R0 K23 ["Contexts"]
       99 GETTABLEKS                       R12 R13 K25 ["ParameterOverrideContext"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R16 R0 K10 ["Components"]
      106 GETTABLEKS                       R15 R16 K11 ["NodeView"]
      108 GETTABLEKS                       R14 R15 K14 ["CompositorNodeProperty"]
      110 GETTABLEKS                       R13 R14 K26 ["PropertyUtils"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R17 R0 K10 ["Components"]
      117 GETTABLEKS                       R16 R17 K11 ["NodeView"]
      119 GETTABLEKS                       R15 R16 K16 ["CompositorNodes"]
      121 GETTABLEKS                       R14 R15 K27 ["useInputPanelHelper"]
      123 CALL                             R13 1 1
      124 GETIMPORT                        R14 K5 [require]
      126 GETTABLEKS                       R16 R0 K28 ["Flags"]
      128 GETTABLEKS                       R15 R16 K29 ["getFFlagAnimGraphFloatStep003"]
      130 CALL                             R14 1 1
      131 DUPCLOSURE                       R15 K30 [PROTO_6]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R6
      145 RETURN                           R15 1
