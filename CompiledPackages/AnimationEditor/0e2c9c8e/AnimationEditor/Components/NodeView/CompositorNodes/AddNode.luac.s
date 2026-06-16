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
       87 GETUPVAL                         R9 4
       88 CALL                             R9 0 1
       89 JUMPIFNOT                        R9 ; [+115]
       90 DUPTABLE                         R8 K21 [{"Property_Weight", "WeightSlider", "Input_Base", "Input_Additive"}]
       91 GETTABLEKS                       R9 R1 K22 ["nextProperty"]
       93 DUPTABLE                         R10 K29 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
       94 LOADK                            R11 K12 ["Weight"]
       95 SETTABLEKS                       R11 R10 K23 ["Name"]
       97 LOADK                            R11 K30 ["Number"]
       98 SETTABLEKS                       R11 R10 K24 ["Type"]
      100 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
      102 GETTABLEKS                       R11 R12 K12 ["Weight"]
      104 SETTABLEKS                       R11 R10 K25 ["Value"]
      106 LOADN                            R11 1
      107 SETTABLEKS                       R11 R10 K26 ["DefaultValue"]
      109 GETUPVAL                         R12 5
      110 CALL                             R12 0 1
      111 JUMPIFNOT                        R12 ; [+2]
      112 LOADNIL                          R11
      113 JUMP                             ; [+1]
      114 LOADK                            R11 K31 [0.1]
      115 SETTABLEKS                       R11 R10 K27 ["Step"]
      117 GETUPVAL                         R12 5
      118 CALL                             R12 0 1
      119 JUMPIFNOT                        R12 ; [+2]
      120 LOADNIL                          R11
      121 JUMP                             ; [+5]
      122 GETUPVAL                         R11 6
      123 GETTABLEKS                       R11 R11 K32 ["NUMBER_PRECISION"]
      125 GETTABLEKS                       R11 R11 K33 ["Float"]
      127 SETTABLEKS                       R11 R10 K28 ["Precision"]
      129 CALL                             R9 1 1
      130 SETTABLEKS                       R9 R8 K17 ["Property_Weight"]
      132 GETUPVAL                         R9 1
      133 GETTABLEKS                       R9 R9 K34 ["createElement"]
      135 GETUPVAL                         R10 7
      136 DUPTABLE                         R11 K40 [{"LayoutOrder", "OnPinDragged", "Position", "HidePins", "Pins"}]
      137 GETTABLEKS                       R12 R1 K41 ["nextOrder"]
      139 CALL                             R12 0 1
      140 SETTABLEKS                       R12 R11 K35 ["LayoutOrder"]
      142 SETTABLEKS                       R7 R11 K36 ["OnPinDragged"]
      144 SETTABLEKS                       R6 R11 K37 ["Position"]
      146 LOADB                            R12 1
      147 SETTABLEKS                       R12 R11 K38 ["HidePins"]
      149 NEWTABLE                         R12 0 2
      151 LOADN                            R13 0
      152 LOADN                            R14 1
      153 SETLIST                          R12 R13 2 [1]
      155 SETTABLEKS                       R12 R11 K39 ["Pins"]
      157 CALL                             R9 2 1
      158 SETTABLEKS                       R9 R8 K18 ["WeightSlider"]
      160 GETTABLEKS                       R9 R1 K42 ["nextInput"]
      162 DUPTABLE                         R10 K45 [{"Input", "Builder"}]
      163 DUPTABLE                         R11 K46 [{"Name", "Weight"}]
      164 LOADK                            R12 K47 ["Base"]
      165 SETTABLEKS                       R12 R11 K23 ["Name"]
      167 GETUPVAL                         R13 8
      168 JUMPIFNOT                        R13 ; [+2]
      169 SUBRK                            R12 R48 K6 ["useMemo"]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R12
      172 SETTABLEKS                       R12 R11 K12 ["Weight"]
      174 SETTABLEKS                       R11 R10 K43 ["Input"]
      176 GETUPVAL                         R11 9
      177 SETTABLEKS                       R11 R10 K44 ["Builder"]
      179 CALL                             R9 1 1
      180 SETTABLEKS                       R9 R8 K19 ["Input_Base"]
      182 GETTABLEKS                       R9 R1 K42 ["nextInput"]
      184 DUPTABLE                         R10 K45 [{"Input", "Builder"}]
      185 DUPTABLE                         R11 K46 [{"Name", "Weight"}]
      186 LOADK                            R12 K49 ["Additive"]
      187 SETTABLEKS                       R12 R11 K23 ["Name"]
      189 GETUPVAL                         R13 8
      190 JUMPIFNOT                        R13 ; [+2]
      191 MOVE                             R12 R6
      192 JUMP                             ; [+1]
      193 LOADNIL                          R12
      194 SETTABLEKS                       R12 R11 K12 ["Weight"]
      196 SETTABLEKS                       R11 R10 K43 ["Input"]
      198 GETUPVAL                         R11 9
      199 SETTABLEKS                       R11 R10 K44 ["Builder"]
      201 CALL                             R9 1 1
      202 SETTABLEKS                       R9 R8 K20 ["Input_Additive"]
      204 JUMP                             ; [+72]
      205 DUPTABLE                         R8 K50 [{"Input_Base", "Input_Additive", "Property_Weight"}]
      206 GETTABLEKS                       R9 R1 K42 ["nextInput"]
      208 DUPTABLE                         R10 K45 [{"Input", "Builder"}]
      209 DUPTABLE                         R11 K51 [{"Name"}]
      210 LOADK                            R12 K47 ["Base"]
      211 SETTABLEKS                       R12 R11 K23 ["Name"]
      213 SETTABLEKS                       R11 R10 K43 ["Input"]
      215 GETUPVAL                         R11 9
      216 SETTABLEKS                       R11 R10 K44 ["Builder"]
      218 CALL                             R9 1 1
      219 SETTABLEKS                       R9 R8 K19 ["Input_Base"]
      221 GETTABLEKS                       R9 R1 K42 ["nextInput"]
      223 DUPTABLE                         R10 K45 [{"Input", "Builder"}]
      224 DUPTABLE                         R11 K51 [{"Name"}]
      225 LOADK                            R12 K49 ["Additive"]
      226 SETTABLEKS                       R12 R11 K23 ["Name"]
      228 SETTABLEKS                       R11 R10 K43 ["Input"]
      230 GETUPVAL                         R11 9
      231 SETTABLEKS                       R11 R10 K44 ["Builder"]
      233 CALL                             R9 1 1
      234 SETTABLEKS                       R9 R8 K20 ["Input_Additive"]
      236 GETTABLEKS                       R9 R1 K22 ["nextProperty"]
      238 DUPTABLE                         R10 K29 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
      239 LOADK                            R11 K12 ["Weight"]
      240 SETTABLEKS                       R11 R10 K23 ["Name"]
      242 LOADK                            R11 K30 ["Number"]
      243 SETTABLEKS                       R11 R10 K24 ["Type"]
      245 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
      247 GETTABLEKS                       R11 R12 K12 ["Weight"]
      249 SETTABLEKS                       R11 R10 K25 ["Value"]
      251 LOADN                            R11 1
      252 SETTABLEKS                       R11 R10 K26 ["DefaultValue"]
      254 GETUPVAL                         R12 5
      255 CALL                             R12 0 1
      256 JUMPIFNOT                        R12 ; [+2]
      257 LOADNIL                          R11
      258 JUMP                             ; [+1]
      259 LOADK                            R11 K31 [0.1]
      260 SETTABLEKS                       R11 R10 K27 ["Step"]
      262 GETUPVAL                         R12 5
      263 CALL                             R12 0 1
      264 JUMPIFNOT                        R12 ; [+2]
      265 LOADNIL                          R11
      266 JUMP                             ; [+5]
      267 GETUPVAL                         R11 6
      268 GETTABLEKS                       R11 R11 K32 ["NUMBER_PRECISION"]
      270 GETTABLEKS                       R11 R11 K33 ["Float"]
      272 SETTABLEKS                       R11 R10 K28 ["Precision"]
      274 CALL                             R9 1 1
      275 SETTABLEKS                       R9 R8 K17 ["Property_Weight"]
      277 GETUPVAL                         R9 1
      278 GETTABLEKS                       R9 R9 K34 ["createElement"]
      280 GETUPVAL                         R10 0
      281 GETTABLEKS                       R10 R10 K52 ["CompositorNode"]
      283 GETTABLEKS                       R11 R1 K53 ["nodeProps"]
      285 DUPTABLE                         R12 K55 [{"OutputPin"}]
      286 GETTABLEKS                       R13 R1 K56 ["outputPin"]
      288 CALL                             R13 0 1
      289 SETTABLEKS                       R13 R12 K54 ["OutputPin"]
      291 CALL                             R11 1 1
      292 MOVE                             R12 R8
      293 CALL                             R9 3 -1
      294 RETURN                           R9 -1

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
       48 GETTABLEKS                       R7 R0 K10 ["Components"]
       50 GETTABLEKS                       R7 R7 K11 ["NodeView"]
       52 GETTABLEKS                       R7 R7 K12 ["CompositorNodeProperty"]
       54 GETTABLEKS                       R7 R7 K16 ["PropertyUtils"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K10 ["Components"]
       61 GETTABLEKS                       R8 R8 K11 ["NodeView"]
       63 GETTABLEKS                       R8 R8 K17 ["CompositorNodeInput"]
       65 GETTABLEKS                       R8 R8 K18 ["SimpleInput"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K19 ["Flags"]
       72 GETTABLEKS                       R9 R9 K20 ["getFFlagAnimGraphFloatStep003"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K19 ["Flags"]
       79 GETTABLEKS                       R10 R10 K21 ["getFFlagAnimGraphUIWeightSlider"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K23 [game]
       84 LOADK                            R12 K24 ["AnimGraphUI_AddNodeWeightDisplay"]
       85 LOADB                            R13 0
       86 NAMECALL                         R10 R10 K25 ["DefineFastFlag"]
       88 CALL                             R10 3 1
       89 DUPCLOSURE                       R11 K26 [PROTO_3]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R7
      100 RETURN                           R11 1
