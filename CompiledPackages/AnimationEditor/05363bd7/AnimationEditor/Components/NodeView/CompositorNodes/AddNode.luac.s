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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setParameterOverrideValueAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["X"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R3 1
        4 LOADK                            R4 K1 ["Weight"]
        5 CALL                             R2 2 2
        6 JUMPIFNOT                        R2 ; [+9]
        7 JUMPIFNOT                        R3 ; [+8]
        8 GETIMPORT                        R4 K4 [task.spawn]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 CALL                             R4 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K5 ["OnPropertyChanged"]
       19 JUMPIFEQKNIL                     R4 ; [+8]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K5 ["OnPropertyChanged"]
       24 LOADK                            R5 K1 ["Weight"]
       25 GETTABLEKS                       R6 R1 K6 ["X"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CompositorNodeUtils"]
        3 GETTABLEKS                       R1 R1 K1 ["createPropertyHelpers"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K2 ["useContext"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["GraphContext"]
       20 GETTABLEKS                       R4 R4 K3 ["Context"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R6 0 2
       31 GETTABLEKS                       R7 R3 K6 ["observeNodePropsById"]
       33 GETTABLEKS                       R8 R0 K7 ["GraphPayload"]
       35 GETTABLEKS                       R8 R8 K8 ["id"]
       37 SETLIST                          R6 R7 2 [1]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R5 R5 K9 ["useSignalState"]
       43 MOVE                             R6 R4
       44 CALL                             R5 1 1
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R8 0 3
       55 MOVE                             R9 R5
       56 GETTABLEKS                       R10 R2 K10 ["parameterOverrides"]
       58 GETTABLEKS                       R12 R0 K12 ["PropertyLookup"]
       60 GETTABLEKS                       R11 R12 K11 ["Weight"]
       62 SETLIST                          R8 R9 3 [1]
       64 CALL                             R6 2 1
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K13 ["useCallback"]
       68 NEWCLOSURE                       R8 P2
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R0
       73 NEWTABLE                         R9 0 4
       75 MOVE                             R10 R5
       76 GETTABLEKS                       R11 R0 K14 ["OnPropertyChanged"]
       78 GETTABLEKS                       R12 R0 K12 ["PropertyLookup"]
       80 GETTABLEKS                       R13 R2 K15 ["setParameterOverrideValueAsync"]
       82 SETLIST                          R9 R10 4 [1]
       84 CALL                             R7 2 1
       85 GETUPVAL                         R9 5
       86 CALL                             R9 0 1
       87 JUMPIFNOT                        R9 ; [+101]
       88 DUPTABLE                         R8 K20 [{"Property_Weight", "WeightSlider", "Input_Base", "Input_Additive"}]
       89 GETTABLEKS                       R9 R1 K21 ["nextProperty"]
       91 DUPTABLE                         R10 K28 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
       92 LOADK                            R11 K11 ["Weight"]
       93 SETTABLEKS                       R11 R10 K22 ["Name"]
       95 LOADK                            R11 K29 ["Number"]
       96 SETTABLEKS                       R11 R10 K23 ["Type"]
       98 GETTABLEKS                       R12 R0 K12 ["PropertyLookup"]
      100 GETTABLEKS                       R11 R12 K11 ["Weight"]
      102 SETTABLEKS                       R11 R10 K24 ["Value"]
      104 LOADN                            R11 1
      105 SETTABLEKS                       R11 R10 K25 ["DefaultValue"]
      107 GETUPVAL                         R12 6
      108 CALL                             R12 0 1
      109 JUMPIFNOT                        R12 ; [+2]
      110 LOADNIL                          R11
      111 JUMP                             ; [+1]
      112 LOADK                            R11 K30 [0.1]
      113 SETTABLEKS                       R11 R10 K26 ["Step"]
      115 GETUPVAL                         R12 6
      116 CALL                             R12 0 1
      117 JUMPIFNOT                        R12 ; [+2]
      118 LOADNIL                          R11
      119 JUMP                             ; [+5]
      120 GETUPVAL                         R11 7
      121 GETTABLEKS                       R11 R11 K31 ["NUMBER_PRECISION"]
      123 GETTABLEKS                       R11 R11 K32 ["Float"]
      125 SETTABLEKS                       R11 R10 K27 ["Precision"]
      127 CALL                             R9 1 1
      128 SETTABLEKS                       R9 R8 K16 ["Property_Weight"]
      130 GETUPVAL                         R9 1
      131 GETTABLEKS                       R9 R9 K33 ["createElement"]
      133 GETUPVAL                         R10 8
      134 DUPTABLE                         R11 K39 [{"LayoutOrder", "OnPinDragged", "Position", "HidePins", "Pins"}]
      135 GETTABLEKS                       R12 R1 K40 ["nextOrder"]
      137 CALL                             R12 0 1
      138 SETTABLEKS                       R12 R11 K34 ["LayoutOrder"]
      140 SETTABLEKS                       R7 R11 K35 ["OnPinDragged"]
      142 SETTABLEKS                       R6 R11 K36 ["Position"]
      144 LOADB                            R12 1
      145 SETTABLEKS                       R12 R11 K37 ["HidePins"]
      147 NEWTABLE                         R12 0 2
      149 LOADN                            R13 0
      150 LOADN                            R14 1
      151 SETLIST                          R12 R13 2 [1]
      153 SETTABLEKS                       R12 R11 K38 ["Pins"]
      155 CALL                             R9 2 1
      156 SETTABLEKS                       R9 R8 K17 ["WeightSlider"]
      158 GETTABLEKS                       R9 R1 K41 ["nextInput"]
      160 DUPTABLE                         R10 K44 [{"Input", "Builder"}]
      161 DUPTABLE                         R11 K45 [{"Name"}]
      162 LOADK                            R12 K46 ["Base"]
      163 SETTABLEKS                       R12 R11 K22 ["Name"]
      165 SETTABLEKS                       R11 R10 K42 ["Input"]
      167 GETUPVAL                         R11 9
      168 SETTABLEKS                       R11 R10 K43 ["Builder"]
      170 CALL                             R9 1 1
      171 SETTABLEKS                       R9 R8 K18 ["Input_Base"]
      173 GETTABLEKS                       R9 R1 K41 ["nextInput"]
      175 DUPTABLE                         R10 K44 [{"Input", "Builder"}]
      176 DUPTABLE                         R11 K45 [{"Name"}]
      177 LOADK                            R12 K47 ["Additive"]
      178 SETTABLEKS                       R12 R11 K22 ["Name"]
      180 SETTABLEKS                       R11 R10 K42 ["Input"]
      182 GETUPVAL                         R11 9
      183 SETTABLEKS                       R11 R10 K43 ["Builder"]
      185 CALL                             R9 1 1
      186 SETTABLEKS                       R9 R8 K19 ["Input_Additive"]
      188 JUMP                             ; [+72]
      189 DUPTABLE                         R8 K48 [{"Input_Base", "Input_Additive", "Property_Weight"}]
      190 GETTABLEKS                       R9 R1 K41 ["nextInput"]
      192 DUPTABLE                         R10 K44 [{"Input", "Builder"}]
      193 DUPTABLE                         R11 K45 [{"Name"}]
      194 LOADK                            R12 K46 ["Base"]
      195 SETTABLEKS                       R12 R11 K22 ["Name"]
      197 SETTABLEKS                       R11 R10 K42 ["Input"]
      199 GETUPVAL                         R11 9
      200 SETTABLEKS                       R11 R10 K43 ["Builder"]
      202 CALL                             R9 1 1
      203 SETTABLEKS                       R9 R8 K18 ["Input_Base"]
      205 GETTABLEKS                       R9 R1 K41 ["nextInput"]
      207 DUPTABLE                         R10 K44 [{"Input", "Builder"}]
      208 DUPTABLE                         R11 K45 [{"Name"}]
      209 LOADK                            R12 K47 ["Additive"]
      210 SETTABLEKS                       R12 R11 K22 ["Name"]
      212 SETTABLEKS                       R11 R10 K42 ["Input"]
      214 GETUPVAL                         R11 9
      215 SETTABLEKS                       R11 R10 K43 ["Builder"]
      217 CALL                             R9 1 1
      218 SETTABLEKS                       R9 R8 K19 ["Input_Additive"]
      220 GETTABLEKS                       R9 R1 K21 ["nextProperty"]
      222 DUPTABLE                         R10 K28 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
      223 LOADK                            R11 K11 ["Weight"]
      224 SETTABLEKS                       R11 R10 K22 ["Name"]
      226 LOADK                            R11 K29 ["Number"]
      227 SETTABLEKS                       R11 R10 K23 ["Type"]
      229 GETTABLEKS                       R12 R0 K12 ["PropertyLookup"]
      231 GETTABLEKS                       R11 R12 K11 ["Weight"]
      233 SETTABLEKS                       R11 R10 K24 ["Value"]
      235 LOADN                            R11 1
      236 SETTABLEKS                       R11 R10 K25 ["DefaultValue"]
      238 GETUPVAL                         R12 6
      239 CALL                             R12 0 1
      240 JUMPIFNOT                        R12 ; [+2]
      241 LOADNIL                          R11
      242 JUMP                             ; [+1]
      243 LOADK                            R11 K30 [0.1]
      244 SETTABLEKS                       R11 R10 K26 ["Step"]
      246 GETUPVAL                         R12 6
      247 CALL                             R12 0 1
      248 JUMPIFNOT                        R12 ; [+2]
      249 LOADNIL                          R11
      250 JUMP                             ; [+5]
      251 GETUPVAL                         R11 7
      252 GETTABLEKS                       R11 R11 K31 ["NUMBER_PRECISION"]
      254 GETTABLEKS                       R11 R11 K32 ["Float"]
      256 SETTABLEKS                       R11 R10 K27 ["Precision"]
      258 CALL                             R9 1 1
      259 SETTABLEKS                       R9 R8 K16 ["Property_Weight"]
      261 GETUPVAL                         R9 1
      262 GETTABLEKS                       R9 R9 K33 ["createElement"]
      264 GETUPVAL                         R10 0
      265 GETTABLEKS                       R10 R10 K49 ["CompositorNode"]
      267 GETTABLEKS                       R11 R1 K50 ["nodeProps"]
      269 DUPTABLE                         R12 K52 [{"OutputPin"}]
      270 GETTABLEKS                       R13 R1 K53 ["outputPin"]
      272 CALL                             R13 0 1
      273 SETTABLEKS                       R13 R12 K51 ["OutputPin"]
      275 CALL                             R11 1 1
      276 MOVE                             R12 R8
      277 CALL                             R9 3 -1
      278 RETURN                           R9 -1

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
       41 GETTABLEKS                       R6 R0 K14 ["Util"]
       43 GETTABLEKS                       R6 R6 K15 ["Constants"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K17 ["ParameterOverrideContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Components"]
       57 GETTABLEKS                       R8 R8 K11 ["NodeView"]
       59 GETTABLEKS                       R8 R8 K12 ["CompositorNodeProperty"]
       61 GETTABLEKS                       R8 R8 K18 ["PropertyUtils"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K10 ["Components"]
       68 GETTABLEKS                       R9 R9 K11 ["NodeView"]
       70 GETTABLEKS                       R9 R9 K19 ["CompositorNodeInput"]
       72 GETTABLEKS                       R9 R9 K20 ["SimpleInput"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K21 ["Flags"]
       79 GETTABLEKS                       R10 R10 K22 ["getFFlagAnimGraphFloatStep003"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K21 ["Flags"]
       86 GETTABLEKS                       R11 R11 K23 ["getFFlagAnimGraphUIWeightSlider"]
       88 CALL                             R10 1 1
       89 DUPCLOSURE                       R11 K24 [PROTO_4]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R8
      100 RETURN                           R11 1
