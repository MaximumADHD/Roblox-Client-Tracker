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
        0 JUMPIFNOTEQKN                    R0 K0 [-1] ; [+10]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K1 ["Common"]
        4 LOADK                            R4 K2 ["AnimationEditor"]
        5 LOADK                            R5 K3 ["Property"]
        6 LOADK                            R6 K4 ["Random"]
        7 NAMECALL                         R1 R1 K5 ["getExternalText"]
        9 CALL                             R1 5 -1
       10 RETURN                           R1 -1
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K7 [tostring]
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 GETTABLEKS                       R1 R1 K2 ["use"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 1
        9 DUPTABLE                         R3 K6 [{"GraphPayload", "Default", "TransitionFields"}]
       10 GETTABLEKS                       R4 R0 K3 ["GraphPayload"]
       12 SETTABLEKS                       R4 R3 K3 ["GraphPayload"]
       14 DUPTABLE                         R4 K9 [{["Weight"] = 1}]
       15 SETTABLEKS                       R4 R3 K4 ["Default"]
       17 NEWTABLE                         R4 0 2
       19 LOADK                            R5 K10 ["Duration"]
       20 LOADK                            R6 K11 ["Curve"]
       21 SETLIST                          R4 R5 2 [1]
       23 SETTABLEKS                       R4 R3 K5 ["TransitionFields"]
       25 CALL                             R2 1 1
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K12 ["useMemo"]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U4
       33 NEWTABLE                         R5 0 2
       35 GETTABLEKS                       R6 R0 K13 ["PropertyLookup"]
       37 GETTABLEKS                       R6 R6 K14 ["DefaultTransitionDuration"]
       39 GETTABLEKS                       R7 R0 K13 ["PropertyLookup"]
       41 GETTABLEKS                       R7 R7 K15 ["DefaultTransitionCurve"]
       43 SETLIST                          R5 R6 2 [1]
       45 CALL                             R3 2 1
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R4 R4 K16 ["useCallback"]
       49 NEWCLOSURE                       R5 P1
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R6 0 1
       53 GETTABLEKS                       R7 R0 K17 ["OnPropertyChanged"]
       55 SETLIST                          R6 R7 1 [1]
       57 CALL                             R4 2 1
       58 GETUPVAL                         R5 5
       59 GETTABLEKS                       R5 R5 K18 ["CompositorNodeUtils"]
       61 GETTABLEKS                       R5 R5 K19 ["createPropertyHelpers"]
       63 MOVE                             R6 R0
       64 CALL                             R5 1 1
       65 DUPTABLE                         R6 K25 [{"Property_State", "Property_Playcount", "Property_Seed", "Property_DefaultTransition", "InputPanel"}]
       66 GETTABLEKS                       R7 R5 K26 ["nextProperty"]
       68 DUPTABLE                         R8 K38 [{["Name"] = "State", ["Label"] = "State", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["IsDisabled"] = True, ["HidePin"] = True}]
       69 GETTABLEKS                       R10 R0 K39 ["StateLookup"]
       71 GETTABLEKS                       R9 R10 K28 ["State"]
       73 SETTABLEKS                       R9 R8 K32 ["Value"]
       75 CALL                             R7 1 1
       76 SETTABLEKS                       R7 R6 K20 ["Property_State"]
       78 GETTABLEKS                       R7 R5 K26 ["nextProperty"]
       80 DUPTABLE                         R8 K47 [{["Name"] = "PlayCount", ["Label"] = "Play Count", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 0, ["Precision"], ["Step"], ["ExtraProps"]}]
       81 GETTABLEKS                       R10 R0 K13 ["PropertyLookup"]
       83 GETTABLEKS                       R9 R10 K40 ["PlayCount"]
       85 SETTABLEKS                       R9 R8 K32 ["Value"]
       87 GETUPVAL                         R9 4
       88 GETTABLEKS                       R9 R9 K48 ["NUMBER_PRECISION"]
       90 GETTABLEKS                       R9 R9 K49 ["Integer"]
       92 SETTABLEKS                       R9 R8 K44 ["Precision"]
       94 GETUPVAL                         R9 4
       95 GETTABLEKS                       R9 R9 K50 ["NUMBER_STEP"]
       97 GETTABLEKS                       R9 R9 K49 ["Integer"]
       99 SETTABLEKS                       R9 R8 K45 ["Step"]
      101 GETUPVAL                         R10 6
      102 CALL                             R10 0 1
      103 JUMPIFNOT                        R10 ; [+6]
      104 DUPTABLE                         R9 K53 [{["FormatAsString"], ["Minimum"] = 0}]
      105 NEWCLOSURE                       R10 P2
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R10 R9 K51 ["FormatAsString"]
      109 JUMP                             ; [+1]
      110 LOADNIL                          R9
      111 SETTABLEKS                       R9 R8 K46 ["ExtraProps"]
      113 CALL                             R7 1 1
      114 SETTABLEKS                       R7 R6 K21 ["Property_Playcount"]
      116 GETTABLEKS                       R7 R5 K26 ["nextProperty"]
      118 DUPTABLE                         R8 K56 [{["Name"] = "Seed", ["Label"] = "Seed", ["Type"] = "Number", ["Value"], ["DefaultValue"] = -1, ["Precision"], ["Step"], ["ExtraProps"]}]
      119 GETTABLEKS                       R10 R0 K13 ["PropertyLookup"]
      121 GETTABLEKS                       R9 R10 K54 ["Seed"]
      123 SETTABLEKS                       R9 R8 K32 ["Value"]
      125 GETUPVAL                         R9 4
      126 GETTABLEKS                       R9 R9 K48 ["NUMBER_PRECISION"]
      128 GETTABLEKS                       R9 R9 K49 ["Integer"]
      130 SETTABLEKS                       R9 R8 K44 ["Precision"]
      132 GETUPVAL                         R9 4
      133 GETTABLEKS                       R9 R9 K50 ["NUMBER_STEP"]
      135 GETTABLEKS                       R9 R9 K49 ["Integer"]
      137 SETTABLEKS                       R9 R8 K45 ["Step"]
      139 GETUPVAL                         R10 6
      140 CALL                             R10 0 1
      141 JUMPIFNOT                        R10 ; [+6]
      142 DUPTABLE                         R9 K57 [{"FormatAsString"}]
      143 NEWCLOSURE                       R10 P3
      144 CAPTURE                          VAL R1
      145 SETTABLEKS                       R10 R9 K51 ["FormatAsString"]
      147 JUMP                             ; [+1]
      148 LOADNIL                          R9
      149 SETTABLEKS                       R9 R8 K46 ["ExtraProps"]
      151 CALL                             R7 1 1
      152 SETTABLEKS                       R7 R6 K22 ["Property_Seed"]
      154 GETTABLEKS                       R7 R5 K26 ["nextProperty"]
      156 DUPTABLE                         R8 K62 [{["Name"] = "DefaultTransition", ["Label"] = "Default Transition", ["Type"] = "Transition", ["Value"], ["ExtraProps"], ["OnChanged"]}]
      157 SETTABLEKS                       R3 R8 K32 ["Value"]
      159 DUPTABLE                         R9 K67 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
      160 GETUPVAL                         R10 7
      161 SETTABLEKS                       R10 R9 K63 ["TransitionBuilder"]
      163 SETTABLEKS                       R9 R8 K46 ["ExtraProps"]
      165 SETTABLEKS                       R4 R8 K61 ["OnChanged"]
      167 CALL                             R7 1 1
      168 SETTABLEKS                       R7 R6 K23 ["Property_DefaultTransition"]
      170 GETTABLEKS                       R7 R2 K68 ["makePropertyChild"]
      172 MOVE                             R8 R0
      173 MOVE                             R9 R5
      174 DUPTABLE                         R10 K71 [{"inputBuilder", "inputBuilderProps"}]
      175 GETUPVAL                         R11 8
      176 SETTABLEKS                       R11 R10 K69 ["inputBuilder"]
      178 DUPTABLE                         R11 K72 [{"DefaultTransition"}]
      179 SETTABLEKS                       R3 R11 K58 ["DefaultTransition"]
      181 SETTABLEKS                       R11 R10 K70 ["inputBuilderProps"]
      183 CALL                             R7 3 1
      184 SETTABLEKS                       R7 R6 K24 ["InputPanel"]
      186 GETUPVAL                         R7 2
      187 GETTABLEKS                       R7 R7 K73 ["createElement"]
      189 GETUPVAL                         R8 5
      190 GETTABLEKS                       R8 R8 K74 ["CompositorNode"]
      192 GETTABLEKS                       R9 R5 K75 ["nodeProps"]
      194 DUPTABLE                         R10 K78 [{"ContextToolbar", "OutputPin"}]
      195 GETUPVAL                         R12 9
      196 CALL                             R12 0 1
      197 JUMPIFNOT                        R12 ; [+4]
      198 GETTABLEKS                       R11 R5 K79 ["spotlightButton"]
      200 CALL                             R11 0 1
      201 JUMP                             ; [+1]
      202 LOADNIL                          R11
      203 SETTABLEKS                       R11 R10 K76 ["ContextToolbar"]
      205 GETTABLEKS                       R11 R5 K80 ["outputPin"]
      207 CALL                             R11 0 1
      208 SETTABLEKS                       R11 R10 K77 ["OutputPin"]
      210 CALL                             R9 1 1
      211 MOVE                             R10 R6
      212 CALL                             R7 3 -1
      213 RETURN                           R7 -1

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
       48 GETTABLEKS                       R7 R0 K11 ["Components"]
       50 GETTABLEKS                       R7 R7 K12 ["NodeView"]
       52 GETTABLEKS                       R7 R7 K13 ["CompositorNodeInput"]
       54 GETTABLEKS                       R7 R7 K16 ["RandomSequenceInput"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K11 ["Components"]
       61 GETTABLEKS                       R8 R8 K12 ["NodeView"]
       63 GETTABLEKS                       R8 R8 K17 ["CompositorNodeTransition"]
       65 GETTABLEKS                       R8 R8 K18 ["RandomSequenceTransition"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K9 ["Parent"]
       72 GETTABLEKS                       R9 R9 K19 ["React"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K11 ["Components"]
       79 GETTABLEKS                       R10 R10 K12 ["NodeView"]
       81 GETTABLEKS                       R10 R10 K20 ["CompositorNodes"]
       83 GETTABLEKS                       R10 R10 K21 ["useInputPanelHelper"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K22 ["Flags"]
       90 GETTABLEKS                       R11 R11 K23 ["getFFlagAnimGraphUIInfinityRandom"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K22 ["Flags"]
       97 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphUI_SpotlightNodes"]
       99 CALL                             R11 1 1
      100 DUPCLOSURE                       R12 K25 [PROTO_4]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R11
      111 RETURN                           R12 1
