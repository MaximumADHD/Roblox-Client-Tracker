PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Duration", "Curve"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["number"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K4 ["PropertyLookup"]
        7 GETTABLEKS                       R2 R2 K5 ["DefaultTransitionDuration"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K6 ["DEFAULT_TRANSITION"]
       12 GETTABLEKS                       R3 R3 K0 ["Duration"]
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K0 ["Duration"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K7 ["enum"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["PropertyLookup"]
       23 GETTABLEKS                       R2 R2 K8 ["DefaultTransitionCurve"]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K6 ["DEFAULT_TRANSITION"]
       28 GETTABLEKS                       R3 R3 K1 ["Curve"]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K1 ["Curve"]
       33 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["newValue. must be a random sequence transition"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       13 JUMPIFNOT                        R2 ; [+14]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       17 LOADK                            R3 K4 ["DefaultTransitionDuration"]
       18 GETTABLEKS                       R4 R1 K5 ["Duration"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       24 LOADK                            R3 K6 ["DefaultTransitionCurve"]
       25 GETTABLEKS                       R4 R1 K7 ["Curve"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"GraphPayload", "Default", "TransitionFields"}]
        2 GETTABLEKS                       R3 R0 K0 ["GraphPayload"]
        4 SETTABLEKS                       R3 R2 K0 ["GraphPayload"]
        6 DUPTABLE                         R3 K5 [{"Weight"}]
        7 LOADN                            R4 1
        8 SETTABLEKS                       R4 R3 K4 ["Weight"]
       10 SETTABLEKS                       R3 R2 K1 ["Default"]
       12 NEWTABLE                         R3 0 2
       14 LOADK                            R4 K6 ["Duration"]
       15 LOADK                            R5 K7 ["Curve"]
       16 SETLIST                          R3 R4 2 [1]
       18 SETTABLEKS                       R3 R2 K2 ["TransitionFields"]
       20 CALL                             R1 1 1
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K8 ["useMemo"]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 NEWTABLE                         R4 0 2
       30 GETTABLEKS                       R5 R0 K9 ["PropertyLookup"]
       32 GETTABLEKS                       R5 R5 K10 ["DefaultTransitionDuration"]
       34 GETTABLEKS                       R6 R0 K9 ["PropertyLookup"]
       36 GETTABLEKS                       R6 R6 K11 ["DefaultTransitionCurve"]
       38 SETLIST                          R4 R5 2 [1]
       40 CALL                             R2 2 1
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K12 ["useCallback"]
       44 NEWCLOSURE                       R4 P1
       45 CAPTURE                          VAL R0
       46 NEWTABLE                         R5 0 1
       48 GETTABLEKS                       R6 R0 K13 ["OnPropertyChanged"]
       50 SETLIST                          R5 R6 1 [1]
       52 CALL                             R3 2 1
       53 GETUPVAL                         R4 4
       54 GETTABLEKS                       R4 R4 K14 ["CompositorNodeUtils"]
       56 GETTABLEKS                       R4 R4 K15 ["createPropertyHelpers"]
       58 MOVE                             R5 R0
       59 CALL                             R4 1 1
       60 DUPTABLE                         R5 K21 [{"Property_State", "Property_Playcount", "Property_Seed", "Property_DefaultTransition", "InputPanel"}]
       61 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
       63 DUPTABLE                         R7 K30 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       64 LOADK                            R8 K31 ["State"]
       65 SETTABLEKS                       R8 R7 K23 ["Name"]
       67 LOADK                            R8 K31 ["State"]
       68 SETTABLEKS                       R8 R7 K24 ["Label"]
       70 LOADK                            R8 K32 ["String"]
       71 SETTABLEKS                       R8 R7 K25 ["Type"]
       73 GETTABLEKS                       R9 R0 K33 ["StateLookup"]
       75 GETTABLEKS                       R8 R9 K31 ["State"]
       77 SETTABLEKS                       R8 R7 K26 ["Value"]
       79 LOADK                            R8 K34 [""]
       80 SETTABLEKS                       R8 R7 K27 ["DefaultValue"]
       82 LOADB                            R8 1
       83 SETTABLEKS                       R8 R7 K28 ["IsDisabled"]
       85 LOADB                            R8 1
       86 SETTABLEKS                       R8 R7 K29 ["HidePin"]
       88 CALL                             R6 1 1
       89 SETTABLEKS                       R6 R5 K16 ["Property_State"]
       91 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
       93 DUPTABLE                         R7 K37 [{"Name", "Label", "Type", "Value", "DefaultValue", "Precision", "Step"}]
       94 LOADK                            R8 K38 ["PlayCount"]
       95 SETTABLEKS                       R8 R7 K23 ["Name"]
       97 LOADK                            R8 K39 ["Play Count"]
       98 SETTABLEKS                       R8 R7 K24 ["Label"]
      100 LOADK                            R8 K40 ["Number"]
      101 SETTABLEKS                       R8 R7 K25 ["Type"]
      103 GETTABLEKS                       R9 R0 K9 ["PropertyLookup"]
      105 GETTABLEKS                       R8 R9 K38 ["PlayCount"]
      107 SETTABLEKS                       R8 R7 K26 ["Value"]
      109 LOADN                            R8 0
      110 SETTABLEKS                       R8 R7 K27 ["DefaultValue"]
      112 GETUPVAL                         R8 3
      113 GETTABLEKS                       R8 R8 K41 ["NUMBER_PRECISION"]
      115 GETTABLEKS                       R8 R8 K42 ["Integer"]
      117 SETTABLEKS                       R8 R7 K35 ["Precision"]
      119 GETUPVAL                         R9 5
      120 CALL                             R9 0 1
      121 JUMPIFNOT                        R9 ; [+6]
      122 GETUPVAL                         R8 3
      123 GETTABLEKS                       R8 R8 K43 ["NUMBER_STEP"]
      125 GETTABLEKS                       R8 R8 K42 ["Integer"]
      127 JUMPIF                           R8 ; [+1]
      128 LOADK                            R8 K44 [0.05]
      129 SETTABLEKS                       R8 R7 K36 ["Step"]
      131 CALL                             R6 1 1
      132 SETTABLEKS                       R6 R5 K17 ["Property_Playcount"]
      134 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
      136 DUPTABLE                         R7 K37 [{"Name", "Label", "Type", "Value", "DefaultValue", "Precision", "Step"}]
      137 LOADK                            R8 K45 ["Seed"]
      138 SETTABLEKS                       R8 R7 K23 ["Name"]
      140 LOADK                            R8 K45 ["Seed"]
      141 SETTABLEKS                       R8 R7 K24 ["Label"]
      143 LOADK                            R8 K40 ["Number"]
      144 SETTABLEKS                       R8 R7 K25 ["Type"]
      146 GETTABLEKS                       R9 R0 K9 ["PropertyLookup"]
      148 GETTABLEKS                       R8 R9 K45 ["Seed"]
      150 SETTABLEKS                       R8 R7 K26 ["Value"]
      152 LOADN                            R8 255
      153 SETTABLEKS                       R8 R7 K27 ["DefaultValue"]
      155 GETUPVAL                         R8 3
      156 GETTABLEKS                       R8 R8 K41 ["NUMBER_PRECISION"]
      158 GETTABLEKS                       R8 R8 K42 ["Integer"]
      160 SETTABLEKS                       R8 R7 K35 ["Precision"]
      162 GETUPVAL                         R9 5
      163 CALL                             R9 0 1
      164 JUMPIFNOT                        R9 ; [+6]
      165 GETUPVAL                         R8 3
      166 GETTABLEKS                       R8 R8 K43 ["NUMBER_STEP"]
      168 GETTABLEKS                       R8 R8 K42 ["Integer"]
      170 JUMPIF                           R8 ; [+1]
      171 LOADK                            R8 K44 [0.05]
      172 SETTABLEKS                       R8 R7 K36 ["Step"]
      174 CALL                             R6 1 1
      175 SETTABLEKS                       R6 R5 K18 ["Property_Seed"]
      177 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
      179 DUPTABLE                         R7 K48 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      180 LOADK                            R8 K49 ["DefaultTransition"]
      181 SETTABLEKS                       R8 R7 K23 ["Name"]
      183 LOADK                            R8 K50 ["Default Transition"]
      184 SETTABLEKS                       R8 R7 K24 ["Label"]
      186 LOADK                            R8 K51 ["Transition"]
      187 SETTABLEKS                       R8 R7 K25 ["Type"]
      189 SETTABLEKS                       R2 R7 K26 ["Value"]
      191 DUPTABLE                         R8 K55 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      192 GETUPVAL                         R9 6
      193 SETTABLEKS                       R9 R8 K52 ["TransitionBuilder"]
      195 LOADB                            R9 0
      196 SETTABLEKS                       R9 R8 K53 ["AllowReset"]
      198 LOADB                            R9 1
      199 SETTABLEKS                       R9 R8 K54 ["HideWeight"]
      201 SETTABLEKS                       R8 R7 K46 ["ExtraProps"]
      203 SETTABLEKS                       R3 R7 K47 ["OnChanged"]
      205 CALL                             R6 1 1
      206 SETTABLEKS                       R6 R5 K19 ["Property_DefaultTransition"]
      208 GETTABLEKS                       R6 R1 K56 ["makePropertyChild"]
      210 MOVE                             R7 R0
      211 MOVE                             R8 R4
      212 DUPTABLE                         R9 K59 [{"inputBuilder", "inputBuilderProps"}]
      213 GETUPVAL                         R10 7
      214 SETTABLEKS                       R10 R9 K57 ["inputBuilder"]
      216 DUPTABLE                         R10 K60 [{"DefaultTransition"}]
      217 SETTABLEKS                       R2 R10 K49 ["DefaultTransition"]
      219 SETTABLEKS                       R10 R9 K58 ["inputBuilderProps"]
      221 CALL                             R6 3 1
      222 SETTABLEKS                       R6 R5 K20 ["InputPanel"]
      224 GETUPVAL                         R6 1
      225 GETTABLEKS                       R6 R6 K61 ["createElement"]
      227 GETUPVAL                         R7 4
      228 GETTABLEKS                       R7 R7 K62 ["CompositorNode"]
      230 GETTABLEKS                       R8 R4 K63 ["nodeProps"]
      232 DUPTABLE                         R9 K65 [{"OutputPin"}]
      233 GETTABLEKS                       R10 R4 K66 ["outputPin"]
      235 CALL                             R10 0 1
      236 SETTABLEKS                       R10 R9 K64 ["OutputPin"]
      238 CALL                             R8 1 1
      239 MOVE                             R9 R5
      240 CALL                             R6 3 -1
      241 RETURN                           R6 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["ExpectType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K11 ["CompositorNodeInput"]
       29 GETTABLEKS                       R4 R4 K12 ["InputPanelTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["NodeGraphing"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Components"]
       43 GETTABLEKS                       R6 R6 K10 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K11 ["CompositorNodeInput"]
       47 GETTABLEKS                       R6 R6 K15 ["RandomSequenceInput"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K9 ["Components"]
       54 GETTABLEKS                       R7 R7 K10 ["NodeView"]
       56 GETTABLEKS                       R7 R7 K16 ["CompositorNodeTransition"]
       58 GETTABLEKS                       R7 R7 K17 ["RandomSequenceTransition"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K13 ["Parent"]
       65 GETTABLEKS                       R8 R8 K18 ["React"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K9 ["Components"]
       72 GETTABLEKS                       R9 R9 K10 ["NodeView"]
       74 GETTABLEKS                       R9 R9 K19 ["CompositorNodes"]
       76 GETTABLEKS                       R9 R9 K20 ["useInputPanelHelper"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K21 ["Flags"]
       83 GETTABLEKS                       R10 R10 K22 ["getFFlagAnimGraphFloatStep003"]
       85 CALL                             R9 1 1
       86 DUPCLOSURE                       R10 K23 [PROTO_2]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R5
       95 RETURN                           R10 1
