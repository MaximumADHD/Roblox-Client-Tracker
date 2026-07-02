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
       94 GETUPVAL                         R10 6
       95 CALL                             R10 0 1
       96 JUMPIFNOT                        R10 ; [+6]
       97 GETUPVAL                         R9 4
       98 GETTABLEKS                       R9 R9 K50 ["NUMBER_STEP"]
      100 GETTABLEKS                       R9 R9 K49 ["Integer"]
      102 JUMPIF                           R9 ; [+1]
      103 LOADK                            R9 K51 [0.05]
      104 SETTABLEKS                       R9 R8 K45 ["Step"]
      106 GETUPVAL                         R10 7
      107 CALL                             R10 0 1
      108 JUMPIFNOT                        R10 ; [+6]
      109 DUPTABLE                         R9 K54 [{["FormatAsString"], ["Minimum"] = 0}]
      110 NEWCLOSURE                       R10 P2
      111 CAPTURE                          VAL R1
      112 SETTABLEKS                       R10 R9 K52 ["FormatAsString"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R9
      116 SETTABLEKS                       R9 R8 K46 ["ExtraProps"]
      118 CALL                             R7 1 1
      119 SETTABLEKS                       R7 R6 K21 ["Property_Playcount"]
      121 GETTABLEKS                       R7 R5 K26 ["nextProperty"]
      123 DUPTABLE                         R8 K57 [{["Name"] = "Seed", ["Label"] = "Seed", ["Type"] = "Number", ["Value"], ["DefaultValue"] = -1, ["Precision"], ["Step"], ["ExtraProps"]}]
      124 GETTABLEKS                       R10 R0 K13 ["PropertyLookup"]
      126 GETTABLEKS                       R9 R10 K55 ["Seed"]
      128 SETTABLEKS                       R9 R8 K32 ["Value"]
      130 GETUPVAL                         R9 4
      131 GETTABLEKS                       R9 R9 K48 ["NUMBER_PRECISION"]
      133 GETTABLEKS                       R9 R9 K49 ["Integer"]
      135 SETTABLEKS                       R9 R8 K44 ["Precision"]
      137 GETUPVAL                         R10 6
      138 CALL                             R10 0 1
      139 JUMPIFNOT                        R10 ; [+6]
      140 GETUPVAL                         R9 4
      141 GETTABLEKS                       R9 R9 K50 ["NUMBER_STEP"]
      143 GETTABLEKS                       R9 R9 K49 ["Integer"]
      145 JUMPIF                           R9 ; [+1]
      146 LOADK                            R9 K51 [0.05]
      147 SETTABLEKS                       R9 R8 K45 ["Step"]
      149 GETUPVAL                         R10 7
      150 CALL                             R10 0 1
      151 JUMPIFNOT                        R10 ; [+6]
      152 DUPTABLE                         R9 K58 [{"FormatAsString"}]
      153 NEWCLOSURE                       R10 P3
      154 CAPTURE                          VAL R1
      155 SETTABLEKS                       R10 R9 K52 ["FormatAsString"]
      157 JUMP                             ; [+1]
      158 LOADNIL                          R9
      159 SETTABLEKS                       R9 R8 K46 ["ExtraProps"]
      161 CALL                             R7 1 1
      162 SETTABLEKS                       R7 R6 K22 ["Property_Seed"]
      164 GETTABLEKS                       R7 R5 K26 ["nextProperty"]
      166 DUPTABLE                         R8 K63 [{["Name"] = "DefaultTransition", ["Label"] = "Default Transition", ["Type"] = "Transition", ["Value"], ["ExtraProps"], ["OnChanged"]}]
      167 SETTABLEKS                       R3 R8 K32 ["Value"]
      169 DUPTABLE                         R9 K68 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
      170 GETUPVAL                         R10 8
      171 SETTABLEKS                       R10 R9 K64 ["TransitionBuilder"]
      173 SETTABLEKS                       R9 R8 K46 ["ExtraProps"]
      175 SETTABLEKS                       R4 R8 K62 ["OnChanged"]
      177 CALL                             R7 1 1
      178 SETTABLEKS                       R7 R6 K23 ["Property_DefaultTransition"]
      180 GETTABLEKS                       R7 R2 K69 ["makePropertyChild"]
      182 MOVE                             R8 R0
      183 MOVE                             R9 R5
      184 DUPTABLE                         R10 K72 [{"inputBuilder", "inputBuilderProps"}]
      185 GETUPVAL                         R11 9
      186 SETTABLEKS                       R11 R10 K70 ["inputBuilder"]
      188 DUPTABLE                         R11 K73 [{"DefaultTransition"}]
      189 SETTABLEKS                       R3 R11 K59 ["DefaultTransition"]
      191 SETTABLEKS                       R11 R10 K71 ["inputBuilderProps"]
      193 CALL                             R7 3 1
      194 SETTABLEKS                       R7 R6 K24 ["InputPanel"]
      196 GETUPVAL                         R7 2
      197 GETTABLEKS                       R7 R7 K74 ["createElement"]
      199 GETUPVAL                         R8 5
      200 GETTABLEKS                       R8 R8 K75 ["CompositorNode"]
      202 GETTABLEKS                       R9 R5 K76 ["nodeProps"]
      204 DUPTABLE                         R10 K79 [{"ContextToolbar", "OutputPin"}]
      205 GETUPVAL                         R12 10
      206 CALL                             R12 0 1
      207 JUMPIFNOT                        R12 ; [+4]
      208 GETTABLEKS                       R11 R5 K80 ["spotlightButton"]
      210 CALL                             R11 0 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R11
      213 SETTABLEKS                       R11 R10 K77 ["ContextToolbar"]
      215 GETTABLEKS                       R11 R5 K81 ["outputPin"]
      217 CALL                             R11 0 1
      218 SETTABLEKS                       R11 R10 K78 ["OutputPin"]
      220 CALL                             R9 1 1
      221 MOVE                             R10 R6
      222 CALL                             R7 3 -1
      223 RETURN                           R7 -1

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
      107 DUPCLOSURE                       R13 K26 [PROTO_4]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R12
      119 RETURN                           R13 1
