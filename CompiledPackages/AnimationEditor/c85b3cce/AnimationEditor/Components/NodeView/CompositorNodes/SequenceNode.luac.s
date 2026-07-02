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
       14 DUPTABLE                         R4 K9 [{["WaitForTrigger"] = False}]
       15 SETTABLEKS                       R4 R3 K4 ["Default"]
       17 NEWTABLE                         R4 0 3
       19 LOADK                            R5 K10 ["WaitFor"]
       20 LOADK                            R6 K11 ["Duration"]
       21 LOADK                            R7 K12 ["Curve"]
       22 SETLIST                          R4 R5 3 [1]
       24 SETTABLEKS                       R4 R3 K5 ["TransitionFields"]
       26 CALL                             R2 1 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K13 ["useMemo"]
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U4
       34 NEWTABLE                         R5 0 3
       36 GETTABLEKS                       R6 R0 K14 ["PropertyLookup"]
       38 GETTABLEKS                       R6 R6 K15 ["DefaultWaitFor"]
       40 GETTABLEKS                       R7 R0 K14 ["PropertyLookup"]
       42 GETTABLEKS                       R7 R7 K16 ["DefaultTransitionDuration"]
       44 GETTABLEKS                       R8 R0 K14 ["PropertyLookup"]
       46 GETTABLEKS                       R8 R8 K17 ["DefaultTransitionCurve"]
       48 SETLIST                          R5 R6 3 [1]
       50 CALL                             R3 2 1
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K18 ["useCallback"]
       54 NEWCLOSURE                       R5 P1
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R6 0 1
       58 GETTABLEKS                       R7 R0 K19 ["OnPropertyChanged"]
       60 SETLIST                          R6 R7 1 [1]
       62 CALL                             R4 2 1
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R5 R5 K20 ["CompositorNodeUtils"]
       66 GETTABLEKS                       R5 R5 K21 ["createPropertyHelpers"]
       68 MOVE                             R6 R0
       69 CALL                             R5 1 1
       70 DUPTABLE                         R6 K26 [{"Property_State", "Property_LoopCount", "Property_DefaultTransition", "InputPanel"}]
       71 GETTABLEKS                       R7 R5 K27 ["nextProperty"]
       73 DUPTABLE                         R8 K39 [{["Name"] = "State", ["Label"] = "State", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["IsDisabled"] = True, ["HidePin"] = True}]
       74 GETTABLEKS                       R10 R0 K40 ["StateLookup"]
       76 GETTABLEKS                       R9 R10 K29 ["State"]
       78 SETTABLEKS                       R9 R8 K33 ["Value"]
       80 CALL                             R7 1 1
       81 SETTABLEKS                       R7 R6 K22 ["Property_State"]
       83 GETTABLEKS                       R7 R5 K27 ["nextProperty"]
       85 DUPTABLE                         R8 K48 [{["Name"] = "LoopCount", ["Label"] = "Loop Count", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 0, ["Step"], ["Precision"], ["ExtraProps"]}]
       86 GETTABLEKS                       R10 R0 K14 ["PropertyLookup"]
       88 GETTABLEKS                       R9 R10 K41 ["LoopCount"]
       90 SETTABLEKS                       R9 R8 K33 ["Value"]
       92 GETUPVAL                         R10 6
       93 CALL                             R10 0 1
       94 JUMPIFNOT                        R10 ; [+6]
       95 GETUPVAL                         R9 4
       96 GETTABLEKS                       R9 R9 K49 ["NUMBER_STEP"]
       98 GETTABLEKS                       R9 R9 K50 ["Integer"]
      100 JUMPIF                           R9 ; [+1]
      101 LOADK                            R9 K51 [0.05]
      102 SETTABLEKS                       R9 R8 K45 ["Step"]
      104 GETUPVAL                         R9 4
      105 GETTABLEKS                       R9 R9 K52 ["NUMBER_PRECISION"]
      107 GETTABLEKS                       R9 R9 K50 ["Integer"]
      109 SETTABLEKS                       R9 R8 K46 ["Precision"]
      111 GETUPVAL                         R10 7
      112 CALL                             R10 0 1
      113 JUMPIFNOT                        R10 ; [+6]
      114 DUPTABLE                         R9 K55 [{["FormatAsString"], ["Minimum"] = 0}]
      115 NEWCLOSURE                       R10 P2
      116 CAPTURE                          VAL R1
      117 SETTABLEKS                       R10 R9 K53 ["FormatAsString"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R9
      121 SETTABLEKS                       R9 R8 K47 ["ExtraProps"]
      123 CALL                             R7 1 1
      124 SETTABLEKS                       R7 R6 K23 ["Property_LoopCount"]
      126 GETTABLEKS                       R7 R5 K27 ["nextProperty"]
      128 DUPTABLE                         R8 K60 [{["Name"] = "DefaultTransition", ["Label"] = "Default Transition", ["Type"] = "Transition", ["Value"], ["ExtraProps"], ["OnChanged"]}]
      129 SETTABLEKS                       R3 R8 K33 ["Value"]
      131 DUPTABLE                         R9 K64 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
      132 GETUPVAL                         R10 8
      133 SETTABLEKS                       R10 R9 K61 ["TransitionBuilder"]
      135 SETTABLEKS                       R9 R8 K47 ["ExtraProps"]
      137 SETTABLEKS                       R4 R8 K59 ["OnChanged"]
      139 CALL                             R7 1 1
      140 SETTABLEKS                       R7 R6 K24 ["Property_DefaultTransition"]
      142 GETTABLEKS                       R7 R2 K65 ["makePropertyChild"]
      144 MOVE                             R8 R0
      145 MOVE                             R9 R5
      146 DUPTABLE                         R10 K68 [{"inputBuilder", "inputBuilderProps"}]
      147 GETUPVAL                         R11 9
      148 SETTABLEKS                       R11 R10 K66 ["inputBuilder"]
      150 DUPTABLE                         R11 K69 [{"DefaultTransition"}]
      151 SETTABLEKS                       R3 R11 K56 ["DefaultTransition"]
      153 SETTABLEKS                       R11 R10 K67 ["inputBuilderProps"]
      155 CALL                             R7 3 1
      156 SETTABLEKS                       R7 R6 K25 ["InputPanel"]
      158 GETUPVAL                         R7 2
      159 GETTABLEKS                       R7 R7 K70 ["createElement"]
      161 GETUPVAL                         R8 5
      162 GETTABLEKS                       R8 R8 K71 ["CompositorNode"]
      164 GETTABLEKS                       R9 R5 K72 ["nodeProps"]
      166 DUPTABLE                         R10 K75 [{"ContextToolbar", "OutputPin"}]
      167 GETUPVAL                         R12 10
      168 CALL                             R12 0 1
      169 JUMPIFNOT                        R12 ; [+4]
      170 GETTABLEKS                       R11 R5 K76 ["spotlightButton"]
      172 CALL                             R11 0 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R11
      175 SETTABLEKS                       R11 R10 K73 ["ContextToolbar"]
      177 GETTABLEKS                       R11 R5 K77 ["outputPin"]
      179 CALL                             R11 0 1
      180 SETTABLEKS                       R11 R10 K74 ["OutputPin"]
      182 CALL                             R9 1 1
      183 MOVE                             R10 R6
      184 CALL                             R7 3 -1
      185 RETURN                           R7 -1

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
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K22 ["Flags"]
      104 GETTABLEKS                       R13 R13 K25 ["getFFlagAnimGraphUI_SpotlightNodes"]
      106 CALL                             R12 1 1
      107 DUPCLOSURE                       R13 K26 [PROTO_3]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R12
      119 RETURN                           R13 1
