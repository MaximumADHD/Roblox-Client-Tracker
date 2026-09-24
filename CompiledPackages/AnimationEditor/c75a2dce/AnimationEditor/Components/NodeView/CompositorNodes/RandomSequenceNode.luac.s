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
       33 GETUPVAL                         R1 3
       34 CALL                             R1 0 1
       35 JUMPIFNOT                        R1 ; [+13]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K7 ["enum"]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K4 ["PropertyLookup"]
       42 GETTABLEKS                       R2 R2 K9 ["DefaultTransitionWhen"]
       44 GETIMPORT                        R3 K13 [Enum.AnimationNodeTransitionWhen.Finished]
       46 CALL                             R1 2 1
       47 SETTABLEKS                       R1 R0 K14 ["When"]
       49 RETURN                           R0 1

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
       13 JUMPIFNOT                        R2 ; [+28]
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
       28 GETUPVAL                         R2 1
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+11]
       31 GETTABLEKS                       R2 R1 K8 ["When"]
       33 JUMPIFEQKNIL                     R2 ; [+8]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       38 LOADK                            R3 K9 ["DefaultTransitionWhen"]
       39 GETTABLEKS                       R4 R1 K8 ["When"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

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
       17 GETUPVAL                         R5 2
       18 CALL                             R5 0 1
       19 JUMPIFNOT                        R5 ; [+8]
       20 NEWTABLE                         R4 0 3
       22 LOADK                            R5 K10 ["Duration"]
       23 LOADK                            R6 K11 ["Curve"]
       24 LOADK                            R7 K12 ["When"]
       25 SETLIST                          R4 R5 3 [1]
       27 JUMP                             ; [+6]
       28 NEWTABLE                         R4 0 2
       30 LOADK                            R5 K10 ["Duration"]
       31 LOADK                            R6 K11 ["Curve"]
       32 SETLIST                          R4 R5 2 [1]
       34 SETTABLEKS                       R4 R3 K5 ["TransitionFields"]
       36 CALL                             R2 1 1
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R3 R3 K13 ["useMemo"]
       40 NEWCLOSURE                       R4 P0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U2
       45 NEWTABLE                         R5 0 3
       47 GETTABLEKS                       R6 R0 K14 ["PropertyLookup"]
       49 GETTABLEKS                       R6 R6 K15 ["DefaultTransitionDuration"]
       51 GETTABLEKS                       R7 R0 K14 ["PropertyLookup"]
       53 GETTABLEKS                       R7 R7 K16 ["DefaultTransitionCurve"]
       55 GETTABLEKS                       R8 R0 K14 ["PropertyLookup"]
       57 GETTABLEKS                       R8 R8 K17 ["DefaultTransitionWhen"]
       59 SETLIST                          R5 R6 3 [1]
       61 CALL                             R3 2 1
       62 GETUPVAL                         R4 3
       63 GETTABLEKS                       R4 R4 K18 ["useCallback"]
       65 NEWCLOSURE                       R5 P1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U2
       68 NEWTABLE                         R6 0 1
       70 GETTABLEKS                       R7 R0 K19 ["OnPropertyChanged"]
       72 SETLIST                          R6 R7 1 [1]
       74 CALL                             R4 2 1
       75 GETUPVAL                         R5 6
       76 GETTABLEKS                       R5 R5 K20 ["CompositorNodeUtils"]
       78 GETTABLEKS                       R5 R5 K21 ["createPropertyHelpers"]
       80 MOVE                             R6 R0
       81 CALL                             R5 1 1
       82 DUPTABLE                         R6 K27 [{"Property_State", "Property_Playcount", "Property_Seed", "Property_DefaultTransition", "InputPanel"}]
       83 GETTABLEKS                       R7 R5 K28 ["nextProperty"]
       85 DUPTABLE                         R8 K40 [{["Name"] = "State", ["Label"] = "State", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["IsDisabled"] = True, ["HidePin"] = True}]
       86 GETTABLEKS                       R10 R0 K41 ["StateLookup"]
       88 GETTABLEKS                       R9 R10 K30 ["State"]
       90 SETTABLEKS                       R9 R8 K34 ["Value"]
       92 CALL                             R7 1 1
       93 SETTABLEKS                       R7 R6 K22 ["Property_State"]
       95 GETTABLEKS                       R7 R5 K28 ["nextProperty"]
       97 DUPTABLE                         R8 K49 [{["Name"] = "PlayCount", ["Label"] = "Play Count", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 0, ["Precision"], ["Step"], ["ExtraProps"]}]
       98 GETTABLEKS                       R10 R0 K14 ["PropertyLookup"]
      100 GETTABLEKS                       R9 R10 K42 ["PlayCount"]
      102 SETTABLEKS                       R9 R8 K34 ["Value"]
      104 GETUPVAL                         R9 5
      105 GETTABLEKS                       R9 R9 K50 ["NUMBER_PRECISION"]
      107 GETTABLEKS                       R9 R9 K51 ["Integer"]
      109 SETTABLEKS                       R9 R8 K46 ["Precision"]
      111 GETUPVAL                         R9 5
      112 GETTABLEKS                       R9 R9 K52 ["NUMBER_STEP"]
      114 GETTABLEKS                       R9 R9 K51 ["Integer"]
      116 SETTABLEKS                       R9 R8 K47 ["Step"]
      118 DUPTABLE                         R9 K55 [{["FormatAsString"], ["Minimum"] = 0}]
      119 NEWCLOSURE                       R10 P2
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R10 R9 K53 ["FormatAsString"]
      123 SETTABLEKS                       R9 R8 K48 ["ExtraProps"]
      125 CALL                             R7 1 1
      126 SETTABLEKS                       R7 R6 K23 ["Property_Playcount"]
      128 GETTABLEKS                       R7 R5 K28 ["nextProperty"]
      130 DUPTABLE                         R8 K58 [{["Name"] = "Seed", ["Label"] = "Seed", ["Type"] = "Number", ["Value"], ["DefaultValue"] = -1, ["Precision"], ["Step"], ["ExtraProps"]}]
      131 GETTABLEKS                       R10 R0 K14 ["PropertyLookup"]
      133 GETTABLEKS                       R9 R10 K56 ["Seed"]
      135 SETTABLEKS                       R9 R8 K34 ["Value"]
      137 GETUPVAL                         R9 5
      138 GETTABLEKS                       R9 R9 K50 ["NUMBER_PRECISION"]
      140 GETTABLEKS                       R9 R9 K51 ["Integer"]
      142 SETTABLEKS                       R9 R8 K46 ["Precision"]
      144 GETUPVAL                         R9 5
      145 GETTABLEKS                       R9 R9 K52 ["NUMBER_STEP"]
      147 GETTABLEKS                       R9 R9 K51 ["Integer"]
      149 SETTABLEKS                       R9 R8 K47 ["Step"]
      151 DUPTABLE                         R9 K59 [{"FormatAsString"}]
      152 NEWCLOSURE                       R10 P3
      153 CAPTURE                          VAL R1
      154 SETTABLEKS                       R10 R9 K53 ["FormatAsString"]
      156 SETTABLEKS                       R9 R8 K48 ["ExtraProps"]
      158 CALL                             R7 1 1
      159 SETTABLEKS                       R7 R6 K24 ["Property_Seed"]
      161 GETTABLEKS                       R7 R5 K28 ["nextProperty"]
      163 DUPTABLE                         R8 K63 [{["Name"] = "DefaultTransition", ["Label"], ["Type"] = "Transition", ["Value"], ["HidePin"] = True, ["ExtraProps"], ["OnChanged"]}]
      164 GETUPVAL                         R10 7
      165 JUMPIFNOT                        R10 ; [+8]
      166 LOADK                            R11 K64 ["Common"]
      167 LOADK                            R12 K65 ["AnimationEditor"]
      168 LOADK                            R13 K66 ["Properties"]
      169 LOADK                            R14 K60 ["DefaultTransition"]
      170 NAMECALL                         R9 R1 K67 ["getExternalText"]
      172 CALL                             R9 5 1
      173 JUMP                             ; [+1]
      174 LOADK                            R9 K68 ["Default Transition"]
      175 SETTABLEKS                       R9 R8 K31 ["Label"]
      177 SETTABLEKS                       R3 R8 K34 ["Value"]
      179 DUPTABLE                         R9 K73 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
      180 GETUPVAL                         R10 8
      181 SETTABLEKS                       R10 R9 K69 ["TransitionBuilder"]
      183 SETTABLEKS                       R9 R8 K48 ["ExtraProps"]
      185 SETTABLEKS                       R4 R8 K62 ["OnChanged"]
      187 CALL                             R7 1 1
      188 SETTABLEKS                       R7 R6 K25 ["Property_DefaultTransition"]
      190 GETTABLEKS                       R7 R2 K74 ["makePropertyChild"]
      192 MOVE                             R8 R0
      193 MOVE                             R9 R5
      194 DUPTABLE                         R10 K77 [{"inputBuilder", "inputBuilderProps"}]
      195 GETUPVAL                         R11 9
      196 SETTABLEKS                       R11 R10 K75 ["inputBuilder"]
      198 DUPTABLE                         R11 K78 [{"DefaultTransition"}]
      199 SETTABLEKS                       R3 R11 K60 ["DefaultTransition"]
      201 SETTABLEKS                       R11 R10 K76 ["inputBuilderProps"]
      203 CALL                             R7 3 1
      204 SETTABLEKS                       R7 R6 K26 ["InputPanel"]
      206 GETUPVAL                         R7 3
      207 GETTABLEKS                       R7 R7 K79 ["createElement"]
      209 GETUPVAL                         R8 6
      210 GETTABLEKS                       R8 R8 K80 ["CompositorNode"]
      212 GETTABLEKS                       R9 R5 K81 ["nodeProps"]
      214 DUPTABLE                         R10 K84 [{"ContextToolbar", "OutputPin"}]
      215 GETTABLEKS                       R11 R5 K85 ["spotlightButton"]
      217 CALL                             R11 0 1
      218 SETTABLEKS                       R11 R10 K82 ["ContextToolbar"]
      220 GETTABLEKS                       R11 R5 K86 ["outputPin"]
      222 CALL                             R11 0 1
      223 SETTABLEKS                       R11 R10 K83 ["OutputPin"]
      225 CALL                             R9 1 1
      226 MOVE                             R10 R6
      227 CALL                             R7 3 -1
      228 RETURN                           R7 -1

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
       55 GETTABLEKS                       R8 R0 K13 ["Components"]
       57 GETTABLEKS                       R8 R8 K14 ["NodeView"]
       59 GETTABLEKS                       R8 R8 K15 ["CompositorNodeInput"]
       61 GETTABLEKS                       R8 R8 K18 ["RandomSequenceInput"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K13 ["Components"]
       68 GETTABLEKS                       R9 R9 K14 ["NodeView"]
       70 GETTABLEKS                       R9 R9 K19 ["CompositorNodeTransition"]
       72 GETTABLEKS                       R9 R9 K20 ["RandomSequenceTransition"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K11 ["Parent"]
       79 GETTABLEKS                       R10 R10 K21 ["React"]
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
      100 DUPCLOSURE                       R12 K25 [PROTO_4]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R7
      111 RETURN                           R12 1
