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
       46 GETUPVAL                         R1 3
       47 CALL                             R1 0 1
       48 JUMPIFNOT                        R1 ; [+13]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K4 ["enum"]
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
       55 GETTABLEKS                       R2 R2 K15 ["DefaultTransitionWhen"]
       57 GETIMPORT                        R3 K17 [Enum.AnimationNodeTransitionWhen.Finished]
       59 CALL                             R1 2 1
       60 SETTABLEKS                       R1 R0 K18 ["When"]
       62 RETURN                           R0 1

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
       13 JUMPIFNOT                        R2 ; [+35]
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
       35 GETUPVAL                         R2 1
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+11]
       38 GETTABLEKS                       R2 R1 K10 ["When"]
       40 JUMPIFEQKNIL                     R2 ; [+8]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       45 LOADK                            R3 K11 ["DefaultTransitionWhen"]
       46 GETTABLEKS                       R4 R1 K10 ["When"]
       48 CALL                             R2 2 0
       49 RETURN                           R0 0

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
       14 DUPTABLE                         R4 K9 [{["WaitForTrigger"] = False}]
       15 SETTABLEKS                       R4 R3 K4 ["Default"]
       17 GETUPVAL                         R5 2
       18 CALL                             R5 0 1
       19 JUMPIFNOT                        R5 ; [+9]
       20 NEWTABLE                         R4 0 4
       22 LOADK                            R5 K10 ["WaitFor"]
       23 LOADK                            R6 K11 ["Duration"]
       24 LOADK                            R7 K12 ["Curve"]
       25 LOADK                            R8 K13 ["When"]
       26 SETLIST                          R4 R5 4 [1]
       28 JUMP                             ; [+7]
       29 NEWTABLE                         R4 0 3
       31 LOADK                            R5 K10 ["WaitFor"]
       32 LOADK                            R6 K11 ["Duration"]
       33 LOADK                            R7 K12 ["Curve"]
       34 SETLIST                          R4 R5 3 [1]
       36 SETTABLEKS                       R4 R3 K5 ["TransitionFields"]
       38 CALL                             R2 1 1
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R3 R3 K14 ["useMemo"]
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U2
       47 NEWTABLE                         R5 0 4
       49 GETTABLEKS                       R6 R0 K15 ["PropertyLookup"]
       51 GETTABLEKS                       R6 R6 K16 ["DefaultWaitFor"]
       53 GETTABLEKS                       R7 R0 K15 ["PropertyLookup"]
       55 GETTABLEKS                       R7 R7 K17 ["DefaultTransitionDuration"]
       57 GETTABLEKS                       R8 R0 K15 ["PropertyLookup"]
       59 GETTABLEKS                       R8 R8 K18 ["DefaultTransitionCurve"]
       61 GETTABLEKS                       R9 R0 K15 ["PropertyLookup"]
       63 GETTABLEKS                       R9 R9 K19 ["DefaultTransitionWhen"]
       65 SETLIST                          R5 R6 4 [1]
       67 CALL                             R3 2 1
       68 GETUPVAL                         R4 3
       69 GETTABLEKS                       R4 R4 K20 ["useCallback"]
       71 NEWCLOSURE                       R5 P1
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U2
       74 NEWTABLE                         R6 0 1
       76 GETTABLEKS                       R7 R0 K21 ["OnPropertyChanged"]
       78 SETLIST                          R6 R7 1 [1]
       80 CALL                             R4 2 1
       81 GETUPVAL                         R5 6
       82 GETTABLEKS                       R5 R5 K22 ["CompositorNodeUtils"]
       84 GETTABLEKS                       R5 R5 K23 ["createPropertyHelpers"]
       86 MOVE                             R6 R0
       87 CALL                             R5 1 1
       88 DUPTABLE                         R6 K28 [{"Property_State", "Property_LoopCount", "Property_DefaultTransition", "InputPanel"}]
       89 GETTABLEKS                       R7 R5 K29 ["nextProperty"]
       91 DUPTABLE                         R8 K41 [{["Name"] = "State", ["Label"] = "State", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["IsDisabled"] = True, ["HidePin"] = True}]
       92 GETTABLEKS                       R10 R0 K42 ["StateLookup"]
       94 GETTABLEKS                       R9 R10 K31 ["State"]
       96 SETTABLEKS                       R9 R8 K35 ["Value"]
       98 CALL                             R7 1 1
       99 SETTABLEKS                       R7 R6 K24 ["Property_State"]
      101 GETTABLEKS                       R7 R5 K29 ["nextProperty"]
      103 DUPTABLE                         R8 K50 [{["Name"] = "LoopCount", ["Label"] = "Loop Count", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 0, ["Step"], ["Precision"], ["ExtraProps"]}]
      104 GETTABLEKS                       R10 R0 K15 ["PropertyLookup"]
      106 GETTABLEKS                       R9 R10 K43 ["LoopCount"]
      108 SETTABLEKS                       R9 R8 K35 ["Value"]
      110 GETUPVAL                         R9 5
      111 GETTABLEKS                       R9 R9 K51 ["NUMBER_STEP"]
      113 GETTABLEKS                       R9 R9 K52 ["Integer"]
      115 SETTABLEKS                       R9 R8 K47 ["Step"]
      117 GETUPVAL                         R9 5
      118 GETTABLEKS                       R9 R9 K53 ["NUMBER_PRECISION"]
      120 GETTABLEKS                       R9 R9 K52 ["Integer"]
      122 SETTABLEKS                       R9 R8 K48 ["Precision"]
      124 DUPTABLE                         R9 K56 [{["FormatAsString"], ["Minimum"] = 0}]
      125 NEWCLOSURE                       R10 P2
      126 CAPTURE                          VAL R1
      127 SETTABLEKS                       R10 R9 K54 ["FormatAsString"]
      129 SETTABLEKS                       R9 R8 K49 ["ExtraProps"]
      131 CALL                             R7 1 1
      132 SETTABLEKS                       R7 R6 K25 ["Property_LoopCount"]
      134 GETTABLEKS                       R7 R5 K29 ["nextProperty"]
      136 DUPTABLE                         R8 K60 [{["Name"] = "DefaultTransition", ["Label"], ["Type"] = "Transition", ["Value"], ["HidePin"] = True, ["ExtraProps"], ["OnChanged"]}]
      137 GETUPVAL                         R10 7
      138 JUMPIFNOT                        R10 ; [+8]
      139 LOADK                            R11 K61 ["Common"]
      140 LOADK                            R12 K62 ["AnimationEditor"]
      141 LOADK                            R13 K63 ["Properties"]
      142 LOADK                            R14 K57 ["DefaultTransition"]
      143 NAMECALL                         R9 R1 K64 ["getExternalText"]
      145 CALL                             R9 5 1
      146 JUMP                             ; [+1]
      147 LOADK                            R9 K65 ["Default Transition"]
      148 SETTABLEKS                       R9 R8 K32 ["Label"]
      150 SETTABLEKS                       R3 R8 K35 ["Value"]
      152 DUPTABLE                         R9 K69 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
      153 GETUPVAL                         R10 8
      154 SETTABLEKS                       R10 R9 K66 ["TransitionBuilder"]
      156 SETTABLEKS                       R9 R8 K49 ["ExtraProps"]
      158 SETTABLEKS                       R4 R8 K59 ["OnChanged"]
      160 CALL                             R7 1 1
      161 SETTABLEKS                       R7 R6 K26 ["Property_DefaultTransition"]
      163 GETTABLEKS                       R7 R2 K70 ["makePropertyChild"]
      165 MOVE                             R8 R0
      166 MOVE                             R9 R5
      167 DUPTABLE                         R10 K73 [{"inputBuilder", "inputBuilderProps"}]
      168 GETUPVAL                         R11 9
      169 SETTABLEKS                       R11 R10 K71 ["inputBuilder"]
      171 DUPTABLE                         R11 K74 [{"DefaultTransition"}]
      172 SETTABLEKS                       R3 R11 K57 ["DefaultTransition"]
      174 SETTABLEKS                       R11 R10 K72 ["inputBuilderProps"]
      176 CALL                             R7 3 1
      177 SETTABLEKS                       R7 R6 K27 ["InputPanel"]
      179 GETUPVAL                         R7 3
      180 GETTABLEKS                       R7 R7 K75 ["createElement"]
      182 GETUPVAL                         R8 6
      183 GETTABLEKS                       R8 R8 K76 ["CompositorNode"]
      185 GETTABLEKS                       R9 R5 K77 ["nodeProps"]
      187 DUPTABLE                         R10 K80 [{"ContextToolbar", "OutputPin"}]
      188 GETTABLEKS                       R11 R5 K81 ["spotlightButton"]
      190 CALL                             R11 0 1
      191 SETTABLEKS                       R11 R10 K78 ["ContextToolbar"]
      193 GETTABLEKS                       R11 R5 K82 ["outputPin"]
      195 CALL                             R11 0 1
      196 SETTABLEKS                       R11 R10 K79 ["OutputPin"]
      198 CALL                             R9 1 1
      199 MOVE                             R10 R6
      200 CALL                             R7 3 -1
      201 RETURN                           R7 -1

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
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["FFlagAnimGraphUI_ImprovedTranslations"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["NodeView"]
       41 GETTABLEKS                       R6 R6 K15 ["CompositorNodeInput"]
       43 GETTABLEKS                       R6 R6 K16 ["InputPanelTypes"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K11 ["Parent"]
       50 GETTABLEKS                       R7 R7 K17 ["NodeGraphing"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Parent"]
       57 GETTABLEKS                       R8 R8 K18 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K13 ["Components"]
       64 GETTABLEKS                       R9 R9 K14 ["NodeView"]
       66 GETTABLEKS                       R9 R9 K15 ["CompositorNodeInput"]
       68 GETTABLEKS                       R9 R9 K19 ["SequenceInput"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K13 ["Components"]
       75 GETTABLEKS                       R10 R10 K14 ["NodeView"]
       77 GETTABLEKS                       R10 R10 K20 ["CompositorNodeTransition"]
       79 GETTABLEKS                       R10 R10 K21 ["SequenceTransition"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K13 ["Components"]
       86 GETTABLEKS                       R11 R11 K14 ["NodeView"]
       88 GETTABLEKS                       R11 R11 K22 ["CompositorNodes"]
       90 GETTABLEKS                       R11 R11 K23 ["useInputPanelHelper"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K9 ["Flags"]
       97 GETTABLEKS                       R12 R12 K24 ["getEngineFeatureAnimGraphTransitionBeforeFinish"]
       99 CALL                             R11 1 1
      100 DUPCLOSURE                       R12 K25 [PROTO_3]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R8
      111 RETURN                           R12 1
