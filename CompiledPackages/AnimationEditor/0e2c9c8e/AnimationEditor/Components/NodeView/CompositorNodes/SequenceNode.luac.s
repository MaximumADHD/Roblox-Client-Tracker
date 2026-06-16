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
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+10]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K1 ["Common"]
        4 LOADK                            R4 K2 ["AnimationEditor"]
        5 LOADK                            R5 K3 ["Property"]
        6 LOADK                            R6 K4 ["Infinity"]
        7 NAMECALL                         R1 R1 K5 ["getExternalText"]
        9 CALL                             R1 5 -1
       10 RETURN                           R1 -1
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K7 [tostring]
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 GETTABLEKS                       R1 R1 K2 ["use"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 1
        9 DUPTABLE                         R3 K6 [{"GraphPayload", "Default", "TransitionFields"}]
       10 GETTABLEKS                       R4 R0 K3 ["GraphPayload"]
       12 SETTABLEKS                       R4 R3 K3 ["GraphPayload"]
       14 DUPTABLE                         R4 K8 [{"WaitForTrigger"}]
       15 LOADB                            R5 0
       16 SETTABLEKS                       R5 R4 K7 ["WaitForTrigger"]
       18 SETTABLEKS                       R4 R3 K4 ["Default"]
       20 NEWTABLE                         R4 0 3
       22 LOADK                            R5 K9 ["WaitFor"]
       23 LOADK                            R6 K10 ["Duration"]
       24 LOADK                            R7 K11 ["Curve"]
       25 SETLIST                          R4 R5 3 [1]
       27 SETTABLEKS                       R4 R3 K5 ["TransitionFields"]
       29 CALL                             R2 1 1
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K12 ["useMemo"]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U4
       37 NEWTABLE                         R5 0 3
       39 GETTABLEKS                       R6 R0 K13 ["PropertyLookup"]
       41 GETTABLEKS                       R6 R6 K14 ["DefaultWaitFor"]
       43 GETTABLEKS                       R7 R0 K13 ["PropertyLookup"]
       45 GETTABLEKS                       R7 R7 K15 ["DefaultTransitionDuration"]
       47 GETTABLEKS                       R8 R0 K13 ["PropertyLookup"]
       49 GETTABLEKS                       R8 R8 K16 ["DefaultTransitionCurve"]
       51 SETLIST                          R5 R6 3 [1]
       53 CALL                             R3 2 1
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R4 R4 K17 ["useCallback"]
       57 NEWCLOSURE                       R5 P1
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R6 0 1
       61 GETTABLEKS                       R7 R0 K18 ["OnPropertyChanged"]
       63 SETLIST                          R6 R7 1 [1]
       65 CALL                             R4 2 1
       66 GETUPVAL                         R5 5
       67 GETTABLEKS                       R5 R5 K19 ["CompositorNodeUtils"]
       69 GETTABLEKS                       R5 R5 K20 ["createPropertyHelpers"]
       71 MOVE                             R6 R0
       72 CALL                             R5 1 1
       73 DUPTABLE                         R6 K25 [{"Property_State", "Property_LoopCount", "Property_DefaultTransition", "InputPanel"}]
       74 GETTABLEKS                       R7 R5 K26 ["nextProperty"]
       76 DUPTABLE                         R8 K34 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       77 LOADK                            R9 K35 ["State"]
       78 SETTABLEKS                       R9 R8 K27 ["Name"]
       80 LOADK                            R9 K35 ["State"]
       81 SETTABLEKS                       R9 R8 K28 ["Label"]
       83 LOADK                            R9 K36 ["String"]
       84 SETTABLEKS                       R9 R8 K29 ["Type"]
       86 GETTABLEKS                       R10 R0 K37 ["StateLookup"]
       88 GETTABLEKS                       R9 R10 K35 ["State"]
       90 SETTABLEKS                       R9 R8 K30 ["Value"]
       92 LOADK                            R9 K38 [""]
       93 SETTABLEKS                       R9 R8 K31 ["DefaultValue"]
       95 LOADB                            R9 1
       96 SETTABLEKS                       R9 R8 K32 ["IsDisabled"]
       98 LOADB                            R9 1
       99 SETTABLEKS                       R9 R8 K33 ["HidePin"]
      101 CALL                             R7 1 1
      102 SETTABLEKS                       R7 R6 K21 ["Property_State"]
      104 GETTABLEKS                       R7 R5 K26 ["nextProperty"]
      106 DUPTABLE                         R8 K42 [{"Name", "Label", "Type", "Value", "DefaultValue", "Step", "Precision", "ExtraProps"}]
      107 LOADK                            R9 K43 ["LoopCount"]
      108 SETTABLEKS                       R9 R8 K27 ["Name"]
      110 LOADK                            R9 K44 ["Loop Count"]
      111 SETTABLEKS                       R9 R8 K28 ["Label"]
      113 LOADK                            R9 K45 ["Number"]
      114 SETTABLEKS                       R9 R8 K29 ["Type"]
      116 GETTABLEKS                       R10 R0 K13 ["PropertyLookup"]
      118 GETTABLEKS                       R9 R10 K43 ["LoopCount"]
      120 SETTABLEKS                       R9 R8 K30 ["Value"]
      122 LOADN                            R9 0
      123 SETTABLEKS                       R9 R8 K31 ["DefaultValue"]
      125 GETUPVAL                         R10 6
      126 CALL                             R10 0 1
      127 JUMPIFNOT                        R10 ; [+6]
      128 GETUPVAL                         R9 4
      129 GETTABLEKS                       R9 R9 K46 ["NUMBER_STEP"]
      131 GETTABLEKS                       R9 R9 K47 ["Integer"]
      133 JUMPIF                           R9 ; [+1]
      134 LOADK                            R9 K48 [0.05]
      135 SETTABLEKS                       R9 R8 K39 ["Step"]
      137 GETUPVAL                         R9 4
      138 GETTABLEKS                       R9 R9 K49 ["NUMBER_PRECISION"]
      140 GETTABLEKS                       R9 R9 K47 ["Integer"]
      142 SETTABLEKS                       R9 R8 K40 ["Precision"]
      144 GETUPVAL                         R10 7
      145 CALL                             R10 0 1
      146 JUMPIFNOT                        R10 ; [+9]
      147 DUPTABLE                         R9 K52 [{"FormatAsString", "Minimum"}]
      148 NEWCLOSURE                       R10 P2
      149 CAPTURE                          VAL R1
      150 SETTABLEKS                       R10 R9 K50 ["FormatAsString"]
      152 LOADN                            R10 0
      153 SETTABLEKS                       R10 R9 K51 ["Minimum"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R9
      157 SETTABLEKS                       R9 R8 K41 ["ExtraProps"]
      159 CALL                             R7 1 1
      160 SETTABLEKS                       R7 R6 K22 ["Property_LoopCount"]
      162 GETTABLEKS                       R7 R5 K26 ["nextProperty"]
      164 DUPTABLE                         R8 K54 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      165 LOADK                            R9 K55 ["DefaultTransition"]
      166 SETTABLEKS                       R9 R8 K27 ["Name"]
      168 LOADK                            R9 K56 ["Default Transition"]
      169 SETTABLEKS                       R9 R8 K28 ["Label"]
      171 LOADK                            R9 K57 ["Transition"]
      172 SETTABLEKS                       R9 R8 K29 ["Type"]
      174 SETTABLEKS                       R3 R8 K30 ["Value"]
      176 DUPTABLE                         R9 K61 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      177 GETUPVAL                         R10 8
      178 SETTABLEKS                       R10 R9 K58 ["TransitionBuilder"]
      180 LOADB                            R10 0
      181 SETTABLEKS                       R10 R9 K59 ["AllowReset"]
      183 LOADB                            R10 1
      184 SETTABLEKS                       R10 R9 K60 ["HideWeight"]
      186 SETTABLEKS                       R9 R8 K41 ["ExtraProps"]
      188 SETTABLEKS                       R4 R8 K53 ["OnChanged"]
      190 CALL                             R7 1 1
      191 SETTABLEKS                       R7 R6 K23 ["Property_DefaultTransition"]
      193 GETTABLEKS                       R7 R2 K62 ["makePropertyChild"]
      195 MOVE                             R8 R0
      196 MOVE                             R9 R5
      197 DUPTABLE                         R10 K65 [{"inputBuilder", "inputBuilderProps"}]
      198 GETUPVAL                         R11 9
      199 SETTABLEKS                       R11 R10 K63 ["inputBuilder"]
      201 DUPTABLE                         R11 K66 [{"DefaultTransition"}]
      202 SETTABLEKS                       R3 R11 K55 ["DefaultTransition"]
      204 SETTABLEKS                       R11 R10 K64 ["inputBuilderProps"]
      206 CALL                             R7 3 1
      207 SETTABLEKS                       R7 R6 K24 ["InputPanel"]
      209 GETUPVAL                         R7 2
      210 GETTABLEKS                       R7 R7 K67 ["createElement"]
      212 GETUPVAL                         R8 5
      213 GETTABLEKS                       R8 R8 K68 ["CompositorNode"]
      215 GETTABLEKS                       R9 R5 K69 ["nodeProps"]
      217 DUPTABLE                         R10 K71 [{"OutputPin"}]
      218 GETTABLEKS                       R11 R5 K72 ["outputPin"]
      220 CALL                             R11 0 1
      221 SETTABLEKS                       R11 R10 K70 ["OutputPin"]
      223 CALL                             R9 1 1
      224 MOVE                             R10 R6
      225 CALL                             R7 3 -1
      226 RETURN                           R7 -1

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
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeInput"]
       36 GETTABLEKS                       R5 R5 K14 ["InputPanelTypes"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["NodeGraphing"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Parent"]
       50 GETTABLEKS                       R7 R7 K16 ["React"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Components"]
       57 GETTABLEKS                       R8 R8 K12 ["NodeView"]
       59 GETTABLEKS                       R8 R8 K13 ["CompositorNodeInput"]
       61 GETTABLEKS                       R8 R8 K17 ["SequenceInput"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K11 ["Components"]
       68 GETTABLEKS                       R9 R9 K12 ["NodeView"]
       70 GETTABLEKS                       R9 R9 K18 ["CompositorNodeTransition"]
       72 GETTABLEKS                       R9 R9 K19 ["SequenceTransition"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K11 ["Components"]
       79 GETTABLEKS                       R10 R10 K12 ["NodeView"]
       81 GETTABLEKS                       R10 R10 K20 ["CompositorNodes"]
       83 GETTABLEKS                       R10 R10 K21 ["useInputPanelHelper"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K22 ["Flags"]
       90 GETTABLEKS                       R11 R11 K23 ["getFFlagAnimGraphFloatStep003"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K22 ["Flags"]
       97 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphUIInfinityRandom"]
       99 CALL                             R11 1 1
      100 DUPCLOSURE                       R12 K25 [PROTO_3]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R7
      111 RETURN                           R12 1
