PROTO_0:
        0 DUPTABLE                         R0 K3 [{"WaitFor", "Duration", "Curve"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["enum"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
        7 GETTABLEKS                       R2 R2 K6 ["DefaultWaitFor"]
        9 GETIMPORT                        R3 K10 [Enum.AnimationNodeWaitFor.Finished]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K0 ["WaitFor"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K11 ["number"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
       20 GETTABLEKS                       R2 R2 K12 ["DefaultTransitionDuration"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K13 ["DEFAULT_TRANSITION"]
       25 GETTABLEKS                       R3 R3 K1 ["Duration"]
       27 CALL                             R1 2 1
       28 SETTABLEKS                       R1 R0 K1 ["Duration"]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K4 ["enum"]
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
       36 GETTABLEKS                       R2 R2 K14 ["DefaultTransitionCurve"]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K13 ["DEFAULT_TRANSITION"]
       41 GETTABLEKS                       R3 R3 K2 ["Curve"]
       43 CALL                             R1 2 1
       44 SETTABLEKS                       R1 R0 K2 ["Curve"]
       46 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Bad newValue"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       13 JUMPIFNOT                        R2 ; [+21]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       17 LOADK                            R3 K4 ["DefaultWaitFor"]
       18 GETTABLEKS                       R4 R1 K5 ["WaitFor"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       24 LOADK                            R3 K6 ["DefaultTransitionDuration"]
       25 GETTABLEKS                       R4 R1 K7 ["Duration"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       31 LOADK                            R3 K8 ["DefaultTransitionCurve"]
       32 GETTABLEKS                       R4 R1 K9 ["Curve"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"GraphPayload", "Default", "TransitionFields"}]
        2 GETTABLEKS                       R3 R0 K0 ["GraphPayload"]
        4 SETTABLEKS                       R3 R2 K0 ["GraphPayload"]
        6 DUPTABLE                         R3 K5 [{"WaitForTrigger"}]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K4 ["WaitForTrigger"]
       10 SETTABLEKS                       R3 R2 K1 ["Default"]
       12 NEWTABLE                         R3 0 3
       14 LOADK                            R4 K6 ["WaitFor"]
       15 LOADK                            R5 K7 ["Duration"]
       16 LOADK                            R6 K8 ["Curve"]
       17 SETLIST                          R3 R4 3 [1]
       19 SETTABLEKS                       R3 R2 K2 ["TransitionFields"]
       21 CALL                             R1 1 1
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K9 ["useMemo"]
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U3
       29 NEWTABLE                         R4 0 3
       31 GETTABLEKS                       R5 R0 K10 ["PropertyLookup"]
       33 GETTABLEKS                       R5 R5 K11 ["DefaultWaitFor"]
       35 GETTABLEKS                       R6 R0 K10 ["PropertyLookup"]
       37 GETTABLEKS                       R6 R6 K12 ["DefaultTransitionDuration"]
       39 GETTABLEKS                       R7 R0 K10 ["PropertyLookup"]
       41 GETTABLEKS                       R7 R7 K13 ["DefaultTransitionCurve"]
       43 SETLIST                          R4 R5 3 [1]
       45 CALL                             R2 2 1
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K14 ["useCallback"]
       49 NEWCLOSURE                       R4 P1
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R5 0 1
       53 GETTABLEKS                       R6 R0 K15 ["OnPropertyChanged"]
       55 SETLIST                          R5 R6 1 [1]
       57 CALL                             R3 2 1
       58 GETUPVAL                         R4 4
       59 GETTABLEKS                       R4 R4 K16 ["CompositorNodeUtils"]
       61 GETTABLEKS                       R4 R4 K17 ["createPropertyHelpers"]
       63 MOVE                             R5 R0
       64 CALL                             R4 1 1
       65 DUPTABLE                         R5 K22 [{"Property_State", "Property_LoopCount", "Property_DefaultTransition", "InputPanel"}]
       66 GETTABLEKS                       R6 R4 K23 ["nextProperty"]
       68 DUPTABLE                         R7 K31 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       69 LOADK                            R8 K32 ["State"]
       70 SETTABLEKS                       R8 R7 K24 ["Name"]
       72 LOADK                            R8 K32 ["State"]
       73 SETTABLEKS                       R8 R7 K25 ["Label"]
       75 LOADK                            R8 K33 ["String"]
       76 SETTABLEKS                       R8 R7 K26 ["Type"]
       78 GETTABLEKS                       R9 R0 K34 ["StateLookup"]
       80 GETTABLEKS                       R8 R9 K32 ["State"]
       82 SETTABLEKS                       R8 R7 K27 ["Value"]
       84 LOADK                            R8 K35 [""]
       85 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
       87 LOADB                            R8 1
       88 SETTABLEKS                       R8 R7 K29 ["IsDisabled"]
       90 LOADB                            R8 1
       91 SETTABLEKS                       R8 R7 K30 ["HidePin"]
       93 CALL                             R6 1 1
       94 SETTABLEKS                       R6 R5 K18 ["Property_State"]
       96 GETTABLEKS                       R6 R4 K23 ["nextProperty"]
       98 DUPTABLE                         R7 K38 [{"Name", "Label", "Type", "Value", "DefaultValue", "Step", "Precision"}]
       99 LOADK                            R8 K39 ["LoopCount"]
      100 SETTABLEKS                       R8 R7 K24 ["Name"]
      102 LOADK                            R8 K40 ["Loop Count"]
      103 SETTABLEKS                       R8 R7 K25 ["Label"]
      105 LOADK                            R8 K41 ["Number"]
      106 SETTABLEKS                       R8 R7 K26 ["Type"]
      108 GETTABLEKS                       R9 R0 K10 ["PropertyLookup"]
      110 GETTABLEKS                       R8 R9 K39 ["LoopCount"]
      112 SETTABLEKS                       R8 R7 K27 ["Value"]
      114 LOADN                            R8 0
      115 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
      117 GETUPVAL                         R9 5
      118 CALL                             R9 0 1
      119 JUMPIFNOT                        R9 ; [+6]
      120 GETUPVAL                         R8 3
      121 GETTABLEKS                       R8 R8 K42 ["NUMBER_STEP"]
      123 GETTABLEKS                       R8 R8 K43 ["Integer"]
      125 JUMPIF                           R8 ; [+1]
      126 LOADK                            R8 K44 [0.05]
      127 SETTABLEKS                       R8 R7 K36 ["Step"]
      129 GETUPVAL                         R8 3
      130 GETTABLEKS                       R8 R8 K45 ["NUMBER_PRECISION"]
      132 GETTABLEKS                       R8 R8 K43 ["Integer"]
      134 SETTABLEKS                       R8 R7 K37 ["Precision"]
      136 CALL                             R6 1 1
      137 SETTABLEKS                       R6 R5 K19 ["Property_LoopCount"]
      139 GETTABLEKS                       R6 R4 K23 ["nextProperty"]
      141 DUPTABLE                         R7 K48 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      142 LOADK                            R8 K49 ["DefaultTransition"]
      143 SETTABLEKS                       R8 R7 K24 ["Name"]
      145 LOADK                            R8 K50 ["Default Transition"]
      146 SETTABLEKS                       R8 R7 K25 ["Label"]
      148 LOADK                            R8 K51 ["Transition"]
      149 SETTABLEKS                       R8 R7 K26 ["Type"]
      151 SETTABLEKS                       R2 R7 K27 ["Value"]
      153 DUPTABLE                         R8 K55 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      154 GETUPVAL                         R9 6
      155 SETTABLEKS                       R9 R8 K52 ["TransitionBuilder"]
      157 LOADB                            R9 0
      158 SETTABLEKS                       R9 R8 K53 ["AllowReset"]
      160 LOADB                            R9 1
      161 SETTABLEKS                       R9 R8 K54 ["HideWeight"]
      163 SETTABLEKS                       R8 R7 K46 ["ExtraProps"]
      165 SETTABLEKS                       R3 R7 K47 ["OnChanged"]
      167 CALL                             R6 1 1
      168 SETTABLEKS                       R6 R5 K20 ["Property_DefaultTransition"]
      170 GETTABLEKS                       R6 R1 K56 ["makePropertyChild"]
      172 MOVE                             R7 R0
      173 MOVE                             R8 R4
      174 DUPTABLE                         R9 K59 [{"inputBuilder", "inputBuilderProps"}]
      175 GETUPVAL                         R10 7
      176 SETTABLEKS                       R10 R9 K57 ["inputBuilder"]
      178 DUPTABLE                         R10 K60 [{"DefaultTransition"}]
      179 SETTABLEKS                       R2 R10 K49 ["DefaultTransition"]
      181 SETTABLEKS                       R10 R9 K58 ["inputBuilderProps"]
      183 CALL                             R6 3 1
      184 SETTABLEKS                       R6 R5 K21 ["InputPanel"]
      186 GETUPVAL                         R6 1
      187 GETTABLEKS                       R6 R6 K61 ["createElement"]
      189 GETUPVAL                         R7 4
      190 GETTABLEKS                       R7 R7 K62 ["CompositorNode"]
      192 GETTABLEKS                       R8 R4 K63 ["nodeProps"]
      194 DUPTABLE                         R9 K65 [{"OutputPin"}]
      195 GETTABLEKS                       R10 R4 K66 ["outputPin"]
      197 CALL                             R10 0 1
      198 SETTABLEKS                       R10 R9 K64 ["OutputPin"]
      200 CALL                             R8 1 1
      201 MOVE                             R9 R5
      202 CALL                             R6 3 -1
      203 RETURN                           R6 -1

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
       41 GETTABLEKS                       R6 R0 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Components"]
       50 GETTABLEKS                       R7 R7 K10 ["NodeView"]
       52 GETTABLEKS                       R7 R7 K11 ["CompositorNodeInput"]
       54 GETTABLEKS                       R7 R7 K16 ["SequenceInput"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Components"]
       61 GETTABLEKS                       R8 R8 K10 ["NodeView"]
       63 GETTABLEKS                       R8 R8 K17 ["CompositorNodeTransition"]
       65 GETTABLEKS                       R8 R8 K18 ["SequenceTransition"]
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
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R6
       95 RETURN                           R10 1
