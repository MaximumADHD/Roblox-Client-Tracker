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
        1 GETTABLEKS                       R0 R0 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["Weight"]
        5 CALL                             R0 2 2
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["parameterOverrides"]
       10 GETTABLE                         R2 R3 R1
       11 JUMPIF                           R2 ; [+7]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K3 ["PropertyLookup"]
       15 GETTABLEKS                       R2 R3 K1 ["Weight"]
       17 JUMPIF                           R2 ; [+1]
       18 LOADN                            R2 1
       19 RETURN                           R2 1

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
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R8 0 3
       57 MOVE                             R9 R5
       58 GETTABLEKS                       R10 R2 K11 ["parameterOverrides"]
       60 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
       62 GETTABLEKS                       R11 R12 K12 ["Weight"]
       64 SETLIST                          R8 R9 3 [1]
       66 CALL                             R6 2 1
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K14 ["useCallback"]
       70 NEWCLOSURE                       R8 P2
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R0
       75 NEWTABLE                         R9 0 4
       77 MOVE                             R10 R5
       78 GETTABLEKS                       R11 R0 K15 ["OnPropertyChanged"]
       80 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
       82 GETTABLEKS                       R13 R2 K16 ["setParameterOverrideValue"]
       84 SETLIST                          R9 R10 4 [1]
       86 CALL                             R7 2 1
       87 DUPTABLE                         R8 K21 [{"Property_Weight", "WeightSlider", "Input_A", "Input_B"}]
       88 GETTABLEKS                       R9 R1 K22 ["nextProperty"]
       90 DUPTABLE                         R10 K29 [{["Name"] = "Weight", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1}]
       91 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
       93 GETTABLEKS                       R11 R12 K12 ["Weight"]
       95 SETTABLEKS                       R11 R10 K26 ["Value"]
       97 CALL                             R9 1 1
       98 SETTABLEKS                       R9 R8 K17 ["Property_Weight"]
      100 GETUPVAL                         R9 1
      101 GETTABLEKS                       R9 R9 K30 ["createElement"]
      103 GETUPVAL                         R10 4
      104 DUPTABLE                         R11 K37 [{["LayoutOrder"], ["OnPinDragged"], ["Position"], ["HidePins"] = True, ["Pins"]}]
      105 GETTABLEKS                       R12 R1 K38 ["nextOrder"]
      107 CALL                             R12 0 1
      108 SETTABLEKS                       R12 R11 K31 ["LayoutOrder"]
      110 SETTABLEKS                       R7 R11 K32 ["OnPinDragged"]
      112 SETTABLEKS                       R6 R11 K33 ["Position"]
      114 NEWTABLE                         R12 0 2
      116 LOADN                            R13 0
      117 LOADN                            R14 1
      118 SETLIST                          R12 R13 2 [1]
      120 SETTABLEKS                       R12 R11 K36 ["Pins"]
      122 CALL                             R9 2 1
      123 SETTABLEKS                       R9 R8 K18 ["WeightSlider"]
      125 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      127 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      128 DUPTABLE                         R11 K44 [{["Name"] = "A"}]
      129 SETTABLEKS                       R11 R10 K40 ["Input"]
      131 GETUPVAL                         R11 5
      132 SETTABLEKS                       R11 R10 K41 ["Builder"]
      134 CALL                             R9 1 1
      135 SETTABLEKS                       R9 R8 K19 ["Input_A"]
      137 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      139 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      140 DUPTABLE                         R11 K46 [{["Name"] = "B"}]
      141 SETTABLEKS                       R11 R10 K40 ["Input"]
      143 GETUPVAL                         R11 5
      144 SETTABLEKS                       R11 R10 K41 ["Builder"]
      146 CALL                             R9 1 1
      147 SETTABLEKS                       R9 R8 K20 ["Input_B"]
      149 GETUPVAL                         R9 1
      150 GETTABLEKS                       R9 R9 K30 ["createElement"]
      152 GETUPVAL                         R10 0
      153 GETTABLEKS                       R10 R10 K47 ["CompositorNode"]
      155 GETTABLEKS                       R11 R1 K48 ["nodeProps"]
      157 DUPTABLE                         R12 K51 [{"ContextToolbar", "OutputPin"}]
      158 GETUPVAL                         R14 6
      159 CALL                             R14 0 1
      160 JUMPIFNOT                        R14 ; [+4]
      161 GETTABLEKS                       R13 R1 K52 ["spotlightButton"]
      163 CALL                             R13 0 1
      164 JUMP                             ; [+1]
      165 LOADNIL                          R13
      166 SETTABLEKS                       R13 R12 K49 ["ContextToolbar"]
      168 GETTABLEKS                       R13 R1 K53 ["outputPin"]
      170 CALL                             R13 0 1
      171 SETTABLEKS                       R13 R12 K50 ["OutputPin"]
      173 CALL                             R11 1 1
      174 MOVE                             R12 R8
      175 CALL                             R9 3 -1
      176 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeProperty"]
       15 GETTABLEKS                       R2 R2 K9 ["Blend1DMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["NodeGraphing"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K7 ["NodeView"]
       31 GETTABLEKS                       R4 R4 K8 ["CompositorNodeProperty"]
       33 GETTABLEKS                       R4 R4 K12 ["PropertyUtils"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K10 ["Parent"]
       40 GETTABLEKS                       R5 R5 K13 ["React"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K10 ["Parent"]
       47 GETTABLEKS                       R6 R6 K14 ["SignalsReact"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Components"]
       54 GETTABLEKS                       R7 R7 K7 ["NodeView"]
       56 GETTABLEKS                       R7 R7 K15 ["CompositorNodeInput"]
       58 GETTABLEKS                       R7 R7 K16 ["SimpleInput"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K17 ["Flags"]
       65 GETTABLEKS                       R8 R8 K18 ["getFFlagAnimGraphUI_SpotlightNodes"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K19 [PROTO_3]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R7
       76 RETURN                           R8 1
