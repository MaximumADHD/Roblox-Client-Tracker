PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R1 R1 K1 ["Position"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["inputs"]
        6 DUPCLOSURE                       R2 K2 [PROTO_1]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["inputs"]
        6 DUPCLOSURE                       R2 K2 [PROTO_3]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+29]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["isPropertyParameterized"]
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K2 ["Position"]
        7 CALL                             R2 2 2
        8 JUMPIFNOT                        R2 ; [+9]
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["setParameterOverrideValue"]
       13 MOVE                             R5 R3
       14 GETTABLEKS                       R6 R1 K4 ["X"]
       16 CALL                             R4 2 0
       17 JUMP                             ; [+12]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K5 ["OnPropertyChanged"]
       21 JUMPIFEQKNIL                     R4 ; [+8]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K5 ["OnPropertyChanged"]
       26 LOADK                            R5 K2 ["Position"]
       27 GETTABLEKS                       R6 R1 K4 ["X"]
       29 CALL                             R4 2 0
       30 LOADN                            R2 0
       31 JUMPIFNOTLT                      R2 R0 ; [+11]
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K6 ["onInputChanged"]
       36 MOVE                             R3 R0
       37 DUPTABLE                         R4 K7 [{"Position"}]
       38 GETTABLEKS                       R5 R1 K4 ["X"]
       40 SETTABLEKS                       R5 R4 K2 ["Position"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["Position"]
        5 CALL                             R0 2 2
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["parameterOverrides"]
       10 GETTABLE                         R2 R3 R1
       11 JUMPIF                           R2 ; [+7]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K3 ["PropertyLookup"]
       15 GETTABLEKS                       R2 R3 K1 ["Position"]
       17 JUMPIF                           R2 ; [+1]
       18 LOADN                            R2 0
       19 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ParameterOverrideContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["GraphContext"]
       15 GETTABLEKS                       R3 R3 K2 ["Context"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 2
       19 DUPTABLE                         R4 K6 [{"GraphPayload", "Default"}]
       20 GETTABLEKS                       R5 R0 K4 ["GraphPayload"]
       22 SETTABLEKS                       R5 R4 K4 ["GraphPayload"]
       24 DUPTABLE                         R5 K9 [{["Position"] = 0}]
       25 SETTABLEKS                       R5 R4 K5 ["Default"]
       27 CALL                             R3 1 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K10 ["useMemo"]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R6 0 2
       36 GETTABLEKS                       R7 R2 K11 ["observeNodePropsById"]
       38 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       40 GETTABLEKS                       R8 R8 K12 ["id"]
       42 SETLIST                          R6 R7 2 [1]
       44 CALL                             R4 2 1
       45 GETUPVAL                         R5 3
       46 GETTABLEKS                       R5 R5 K13 ["useSignalState"]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 1
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       53 NEWCLOSURE                       R7 P1
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R3
       56 NEWTABLE                         R8 0 1
       58 GETTABLEKS                       R9 R3 K14 ["inputs"]
       60 SETLIST                          R8 R9 1 [1]
       62 CALL                             R6 2 1
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       66 NEWCLOSURE                       R8 P2
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R3
       69 NEWTABLE                         R9 0 1
       71 GETTABLEKS                       R10 R3 K14 ["inputs"]
       73 SETLIST                          R9 R10 1 [1]
       75 CALL                             R7 2 1
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R8 R8 K15 ["CompositorNodeUtils"]
       79 GETTABLEKS                       R8 R8 K16 ["createPropertyHelpers"]
       81 MOVE                             R9 R0
       82 CALL                             R8 1 1
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K17 ["useCallback"]
       86 NEWCLOSURE                       R10 P3
       87 CAPTURE                          UPVAL U5
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R3
       92 NEWTABLE                         R11 0 4
       94 MOVE                             R12 R5
       95 GETTABLEKS                       R13 R0 K18 ["OnPropertyChanged"]
       97 GETTABLEKS                       R14 R0 K19 ["PropertyLookup"]
       99 GETTABLEKS                       R15 R1 K20 ["setParameterOverrideValue"]
      101 SETLIST                          R11 R12 4 [1]
      103 CALL                             R9 2 1
      104 GETUPVAL                         R10 0
      105 GETTABLEKS                       R10 R10 K10 ["useMemo"]
      107 NEWCLOSURE                       R11 P4
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R0
      112 NEWTABLE                         R12 0 3
      114 MOVE                             R13 R5
      115 GETTABLEKS                       R14 R1 K21 ["parameterOverrides"]
      117 GETTABLEKS                       R16 R0 K19 ["PropertyLookup"]
      119 GETTABLEKS                       R15 R16 K7 ["Position"]
      121 SETLIST                          R12 R13 3 [1]
      123 CALL                             R10 2 1
      124 DUPTABLE                         R11 K26 [{"Property_PhaseSync", "Property_Position", "Blend1DMap", "InputPanel"}]
      125 GETTABLEKS                       R12 R8 K27 ["nextProperty"]
      127 DUPTABLE                         R13 K36 [{["Name"] = "PhaseSync", ["Label"] = "Phase Sync", ["Type"] = "Enum.AnimationNodePhaseSync", ["Value"], ["DefaultValue"]}]
      128 GETTABLEKS                       R15 R0 K19 ["PropertyLookup"]
      130 GETTABLEKS                       R14 R15 K29 ["PhaseSync"]
      132 SETTABLEKS                       R14 R13 K34 ["Value"]
      134 GETIMPORT                        R14 K40 [Enum.AnimationNodePhaseSync.Synced]
      136 SETTABLEKS                       R14 R13 K35 ["DefaultValue"]
      138 CALL                             R12 1 1
      139 SETTABLEKS                       R12 R11 K22 ["Property_PhaseSync"]
      141 GETTABLEKS                       R12 R8 K27 ["nextProperty"]
      143 DUPTABLE                         R13 K44 [{["Name"] = "Position", ["Label"] = "Position", ["Type"] = "Number", ["Value"], ["Default"] = 0, ["Step"], ["Precision"]}]
      144 GETTABLEKS                       R15 R0 K19 ["PropertyLookup"]
      146 GETTABLEKS                       R14 R15 K7 ["Position"]
      148 SETTABLEKS                       R14 R13 K34 ["Value"]
      150 GETUPVAL                         R15 6
      151 CALL                             R15 0 1
      152 JUMPIFNOT                        R15 ; [+2]
      153 LOADNIL                          R14
      154 JUMP                             ; [+1]
      155 LOADK                            R14 K45 [0.1]
      156 SETTABLEKS                       R14 R13 K42 ["Step"]
      158 GETUPVAL                         R15 6
      159 CALL                             R15 0 1
      160 JUMPIFNOT                        R15 ; [+2]
      161 LOADNIL                          R14
      162 JUMP                             ; [+5]
      163 GETUPVAL                         R14 7
      164 GETTABLEKS                       R14 R14 K46 ["NUMBER_PRECISION"]
      166 GETTABLEKS                       R14 R14 K47 ["Float"]
      168 SETTABLEKS                       R14 R13 K43 ["Precision"]
      170 CALL                             R12 1 1
      171 SETTABLEKS                       R12 R11 K23 ["Property_Position"]
      173 GETUPVAL                         R12 0
      174 GETTABLEKS                       R12 R12 K48 ["createElement"]
      176 GETUPVAL                         R13 8
      177 DUPTABLE                         R14 K53 [{"LayoutOrder", "OnPinDragged", "PinLabels", "Position", "Pins"}]
      178 GETTABLEKS                       R15 R8 K54 ["nextOrder"]
      180 CALL                             R15 0 1
      181 SETTABLEKS                       R15 R14 K49 ["LayoutOrder"]
      183 SETTABLEKS                       R9 R14 K50 ["OnPinDragged"]
      185 GETUPVAL                         R16 9
      186 CALL                             R16 0 1
      187 JUMPIFNOT                        R16 ; [+2]
      188 MOVE                             R15 R7
      189 JUMP                             ; [+1]
      190 LOADNIL                          R15
      191 SETTABLEKS                       R15 R14 K51 ["PinLabels"]
      193 SETTABLEKS                       R10 R14 K7 ["Position"]
      195 SETTABLEKS                       R6 R14 K52 ["Pins"]
      197 CALL                             R12 2 1
      198 SETTABLEKS                       R12 R11 K24 ["Blend1DMap"]
      200 GETTABLEKS                       R12 R3 K55 ["makePropertyChild"]
      202 MOVE                             R13 R0
      203 MOVE                             R14 R8
      204 DUPTABLE                         R15 K58 [{"inputBuilder", "inputBuilderProps"}]
      205 GETUPVAL                         R16 10
      206 SETTABLEKS                       R16 R15 K56 ["inputBuilder"]
      208 NEWTABLE                         R16 0 0
      210 SETTABLEKS                       R16 R15 K57 ["inputBuilderProps"]
      212 CALL                             R12 3 1
      213 SETTABLEKS                       R12 R11 K25 ["InputPanel"]
      215 GETUPVAL                         R12 0
      216 GETTABLEKS                       R12 R12 K48 ["createElement"]
      218 GETUPVAL                         R13 1
      219 GETTABLEKS                       R13 R13 K59 ["CompositorNode"]
      221 GETTABLEKS                       R14 R8 K60 ["nodeProps"]
      223 DUPTABLE                         R15 K63 [{"ContextToolbar", "OutputPin"}]
      224 GETUPVAL                         R17 11
      225 CALL                             R17 0 1
      226 JUMPIFNOT                        R17 ; [+4]
      227 GETTABLEKS                       R16 R8 K64 ["spotlightButton"]
      229 CALL                             R16 0 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R16
      232 SETTABLEKS                       R16 R15 K61 ["ContextToolbar"]
      234 GETTABLEKS                       R16 R8 K65 ["outputPin"]
      236 CALL                             R16 0 1
      237 SETTABLEKS                       R16 R15 K62 ["OutputPin"]
      239 CALL                             R14 1 1
      240 MOVE                             R15 R11
      241 CALL                             R12 3 -1
      242 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["SignalsReact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["NodeView"]
       41 GETTABLEKS                       R6 R6 K13 ["CompositorNodeInput"]
       43 GETTABLEKS                       R6 R6 K14 ["Blend1DInput"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K11 ["Components"]
       50 GETTABLEKS                       R7 R7 K12 ["NodeView"]
       52 GETTABLEKS                       R7 R7 K15 ["CompositorNodeProperty"]
       54 GETTABLEKS                       R7 R7 K16 ["Blend1DMap"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K17 ["Util"]
       61 GETTABLEKS                       R8 R8 K18 ["Constants"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K11 ["Components"]
       68 GETTABLEKS                       R9 R9 K12 ["NodeView"]
       70 GETTABLEKS                       R9 R9 K13 ["CompositorNodeInput"]
       72 GETTABLEKS                       R9 R9 K19 ["InputPanelTypes"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K11 ["Components"]
       79 GETTABLEKS                       R10 R10 K12 ["NodeView"]
       81 GETTABLEKS                       R10 R10 K15 ["CompositorNodeProperty"]
       83 GETTABLEKS                       R10 R10 K20 ["PropertyUtils"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K11 ["Components"]
       90 GETTABLEKS                       R11 R11 K12 ["NodeView"]
       92 GETTABLEKS                       R11 R11 K21 ["CompositorNodes"]
       94 GETTABLEKS                       R11 R11 K22 ["useInputPanelHelper"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K23 ["Flags"]
      101 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphFloatStep003"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K23 ["Flags"]
      108 GETTABLEKS                       R13 R13 K25 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K23 ["Flags"]
      115 GETTABLEKS                       R14 R14 K26 ["getFFlagAnimGraphUI_SpotlightNodes"]
      117 CALL                             R13 1 1
      118 DUPCLOSURE                       R14 K27 [PROTO_7]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R13
      131 RETURN                           R14 1
