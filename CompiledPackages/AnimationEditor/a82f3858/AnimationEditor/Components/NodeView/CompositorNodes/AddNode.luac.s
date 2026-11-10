PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K3 ["PropertyLookup"]
        8 GETTABLEKS                       R1 R2 K2 ["Weight"]
       10 ORK                              R0 R1 K1 [1]
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K4 ["isPropertyParameterized"]
       15 GETUPVAL                         R1 3
       16 LOADK                            R2 K2 ["Weight"]
       17 CALL                             R0 2 2
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K5 ["parameterOverrides"]
       22 GETTABLE                         R2 R3 R1
       23 JUMPIF                           R2 ; [+7]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K3 ["PropertyLookup"]
       27 GETTABLEKS                       R2 R3 K2 ["Weight"]
       29 JUMPIF                           R2 ; [+1]
       30 LOADN                            R2 1
       31 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R3 1
        4 LOADK                            R4 K1 ["Weight"]
        5 CALL                             R2 2 2
        6 JUMPIFNOT                        R2 ; [+9]
        7 JUMPIFNOT                        R3 ; [+8]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["setParameterOverrideValue"]
       11 MOVE                             R5 R3
       12 GETTABLEKS                       R6 R1 K3 ["X"]
       14 CALL                             R4 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K4 ["OnPropertyChanged"]
       19 JUMPIFEQKNIL                     R4 ; [+8]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K4 ["OnPropertyChanged"]
       24 LOADK                            R5 K1 ["Weight"]
       25 GETTABLEKS                       R6 R1 K3 ["X"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CompositorNodeUtils"]
        3 GETTABLEKS                       R1 R1 K1 ["createPropertyHelpers"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useContext"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["ParameterOverrideContext"]
       13 GETTABLEKS                       R3 R3 K4 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["useContext"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K5 ["GraphContext"]
       22 GETTABLEKS                       R4 R4 K4 ["Context"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R6 0 2
       33 GETTABLEKS                       R7 R3 K7 ["observeNodePropsById"]
       35 GETTABLEKS                       R8 R0 K8 ["GraphPayload"]
       37 GETTABLEKS                       R8 R8 K9 ["id"]
       39 SETLIST                          R6 R7 2 [1]
       41 CALL                             R4 2 1
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R5 R5 K10 ["useSignalState"]
       45 MOVE                             R6 R4
       46 CALL                             R5 1 1
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R2
       56 NEWTABLE                         R8 0 3
       58 MOVE                             R9 R5
       59 GETTABLEKS                       R10 R2 K11 ["parameterOverrides"]
       61 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
       63 GETTABLEKS                       R11 R12 K12 ["Weight"]
       65 SETLIST                          R8 R9 3 [1]
       67 CALL                             R6 2 1
       68 GETUPVAL                         R7 1
       69 GETTABLEKS                       R7 R7 K14 ["useCallback"]
       71 NEWCLOSURE                       R8 P2
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R0
       76 NEWTABLE                         R9 0 4
       78 MOVE                             R10 R5
       79 GETTABLEKS                       R11 R0 K15 ["OnPropertyChanged"]
       81 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
       83 GETTABLEKS                       R13 R2 K16 ["setParameterOverrideValue"]
       85 SETLIST                          R9 R10 4 [1]
       87 CALL                             R7 2 1
       88 DUPTABLE                         R8 K21 [{"Property_Weight", "WeightSlider", "Input_Base", "Input_Additive"}]
       89 GETTABLEKS                       R9 R1 K22 ["nextProperty"]
       91 DUPTABLE                         R10 K29 [{["Name"] = "Weight", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1}]
       92 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
       94 GETTABLEKS                       R11 R12 K12 ["Weight"]
       96 SETTABLEKS                       R11 R10 K26 ["Value"]
       98 CALL                             R9 1 1
       99 SETTABLEKS                       R9 R8 K17 ["Property_Weight"]
      101 GETUPVAL                         R9 1
      102 GETTABLEKS                       R9 R9 K30 ["createElement"]
      104 GETUPVAL                         R10 4
      105 DUPTABLE                         R11 K37 [{["LayoutOrder"], ["OnPinDragged"], ["Position"], ["HidePins"] = True, ["Pins"]}]
      106 GETTABLEKS                       R12 R1 K38 ["nextOrder"]
      108 CALL                             R12 0 1
      109 SETTABLEKS                       R12 R11 K31 ["LayoutOrder"]
      111 SETTABLEKS                       R7 R11 K32 ["OnPinDragged"]
      113 SETTABLEKS                       R6 R11 K33 ["Position"]
      115 NEWTABLE                         R12 0 2
      117 LOADN                            R13 0
      118 LOADN                            R14 1
      119 SETLIST                          R12 R13 2 [1]
      121 SETTABLEKS                       R12 R11 K36 ["Pins"]
      123 CALL                             R9 2 1
      124 SETTABLEKS                       R9 R8 K18 ["WeightSlider"]
      126 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      128 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      129 DUPTABLE                         R11 K44 [{["Name"] = "Base", ["Weight"]}]
      130 SUBRK                            R12 K28 [1] R6
      131 SETTABLEKS                       R12 R11 K12 ["Weight"]
      133 SETTABLEKS                       R11 R10 K40 ["Input"]
      135 GETUPVAL                         R11 5
      136 SETTABLEKS                       R11 R10 K41 ["Builder"]
      138 CALL                             R9 1 1
      139 SETTABLEKS                       R9 R8 K19 ["Input_Base"]
      141 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      143 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      144 DUPTABLE                         R11 K46 [{["Name"] = "Additive", ["Weight"]}]
      145 SETTABLEKS                       R6 R11 K12 ["Weight"]
      147 SETTABLEKS                       R11 R10 K40 ["Input"]
      149 GETUPVAL                         R11 5
      150 SETTABLEKS                       R11 R10 K41 ["Builder"]
      152 CALL                             R9 1 1
      153 SETTABLEKS                       R9 R8 K20 ["Input_Additive"]
      155 GETUPVAL                         R9 1
      156 GETTABLEKS                       R9 R9 K30 ["createElement"]
      158 GETUPVAL                         R10 0
      159 GETTABLEKS                       R10 R10 K47 ["CompositorNode"]
      161 GETTABLEKS                       R11 R1 K48 ["nodeProps"]
      163 DUPTABLE                         R12 K51 [{"ContextToolbar", "OutputPin"}]
      164 GETTABLEKS                       R13 R1 K52 ["spotlightButton"]
      166 CALL                             R13 0 1
      167 SETTABLEKS                       R13 R12 K49 ["ContextToolbar"]
      169 GETTABLEKS                       R13 R1 K53 ["outputPin"]
      171 CALL                             R13 0 1
      172 SETTABLEKS                       R13 R12 K50 ["OutputPin"]
      174 CALL                             R11 1 1
      175 MOVE                             R12 R8
      176 CALL                             R9 3 -1
      177 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["SignalsReact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K12 ["CompositorNodeProperty"]
       36 GETTABLEKS                       R5 R5 K13 ["Blend1DMap"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Components"]
       43 GETTABLEKS                       R6 R6 K11 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K12 ["CompositorNodeProperty"]
       47 GETTABLEKS                       R6 R6 K14 ["PropertyUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K10 ["Components"]
       54 GETTABLEKS                       R7 R7 K11 ["NodeView"]
       56 GETTABLEKS                       R7 R7 K15 ["CompositorNodeInput"]
       58 GETTABLEKS                       R7 R7 K16 ["SimpleInput"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K17 [PROTO_3]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R6
       68 RETURN                           R7 1
