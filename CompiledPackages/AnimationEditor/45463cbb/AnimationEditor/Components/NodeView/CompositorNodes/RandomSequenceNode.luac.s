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
       14 DUPTABLE                         R4 K8 [{"Weight"}]
       15 LOADN                            R5 1
       16 SETTABLEKS                       R5 R4 K7 ["Weight"]
       18 SETTABLEKS                       R4 R3 K4 ["Default"]
       20 NEWTABLE                         R4 0 2
       22 LOADK                            R5 K9 ["Duration"]
       23 LOADK                            R6 K10 ["Curve"]
       24 SETLIST                          R4 R5 2 [1]
       26 SETTABLEKS                       R4 R3 K5 ["TransitionFields"]
       28 CALL                             R2 1 1
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K11 ["useMemo"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U4
       36 NEWTABLE                         R5 0 2
       38 GETTABLEKS                       R6 R0 K12 ["PropertyLookup"]
       40 GETTABLEKS                       R6 R6 K13 ["DefaultTransitionDuration"]
       42 GETTABLEKS                       R7 R0 K12 ["PropertyLookup"]
       44 GETTABLEKS                       R7 R7 K14 ["DefaultTransitionCurve"]
       46 SETLIST                          R5 R6 2 [1]
       48 CALL                             R3 2 1
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K15 ["useCallback"]
       52 NEWCLOSURE                       R5 P1
       53 CAPTURE                          VAL R0
       54 NEWTABLE                         R6 0 1
       56 GETTABLEKS                       R7 R0 K16 ["OnPropertyChanged"]
       58 SETLIST                          R6 R7 1 [1]
       60 CALL                             R4 2 1
       61 GETUPVAL                         R5 5
       62 GETTABLEKS                       R5 R5 K17 ["CompositorNodeUtils"]
       64 GETTABLEKS                       R5 R5 K18 ["createPropertyHelpers"]
       66 MOVE                             R6 R0
       67 CALL                             R5 1 1
       68 DUPTABLE                         R6 K24 [{"Property_State", "Property_Playcount", "Property_Seed", "Property_DefaultTransition", "InputPanel"}]
       69 GETTABLEKS                       R7 R5 K25 ["nextProperty"]
       71 DUPTABLE                         R8 K33 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       72 LOADK                            R9 K34 ["State"]
       73 SETTABLEKS                       R9 R8 K26 ["Name"]
       75 LOADK                            R9 K34 ["State"]
       76 SETTABLEKS                       R9 R8 K27 ["Label"]
       78 LOADK                            R9 K35 ["String"]
       79 SETTABLEKS                       R9 R8 K28 ["Type"]
       81 GETTABLEKS                       R10 R0 K36 ["StateLookup"]
       83 GETTABLEKS                       R9 R10 K34 ["State"]
       85 SETTABLEKS                       R9 R8 K29 ["Value"]
       87 LOADK                            R9 K37 [""]
       88 SETTABLEKS                       R9 R8 K30 ["DefaultValue"]
       90 LOADB                            R9 1
       91 SETTABLEKS                       R9 R8 K31 ["IsDisabled"]
       93 LOADB                            R9 1
       94 SETTABLEKS                       R9 R8 K32 ["HidePin"]
       96 CALL                             R7 1 1
       97 SETTABLEKS                       R7 R6 K19 ["Property_State"]
       99 GETTABLEKS                       R7 R5 K25 ["nextProperty"]
      101 DUPTABLE                         R8 K41 [{"Name", "Label", "Type", "Value", "DefaultValue", "Precision", "Step", "ExtraProps"}]
      102 LOADK                            R9 K42 ["PlayCount"]
      103 SETTABLEKS                       R9 R8 K26 ["Name"]
      105 LOADK                            R9 K43 ["Play Count"]
      106 SETTABLEKS                       R9 R8 K27 ["Label"]
      108 LOADK                            R9 K44 ["Number"]
      109 SETTABLEKS                       R9 R8 K28 ["Type"]
      111 GETTABLEKS                       R10 R0 K12 ["PropertyLookup"]
      113 GETTABLEKS                       R9 R10 K42 ["PlayCount"]
      115 SETTABLEKS                       R9 R8 K29 ["Value"]
      117 LOADN                            R9 0
      118 SETTABLEKS                       R9 R8 K30 ["DefaultValue"]
      120 GETUPVAL                         R9 4
      121 GETTABLEKS                       R9 R9 K45 ["NUMBER_PRECISION"]
      123 GETTABLEKS                       R9 R9 K46 ["Integer"]
      125 SETTABLEKS                       R9 R8 K38 ["Precision"]
      127 GETUPVAL                         R10 6
      128 CALL                             R10 0 1
      129 JUMPIFNOT                        R10 ; [+6]
      130 GETUPVAL                         R9 4
      131 GETTABLEKS                       R9 R9 K47 ["NUMBER_STEP"]
      133 GETTABLEKS                       R9 R9 K46 ["Integer"]
      135 JUMPIF                           R9 ; [+1]
      136 LOADK                            R9 K48 [0.05]
      137 SETTABLEKS                       R9 R8 K39 ["Step"]
      139 GETUPVAL                         R10 7
      140 CALL                             R10 0 1
      141 JUMPIFNOT                        R10 ; [+9]
      142 DUPTABLE                         R9 K51 [{"FormatAsString", "Minimum"}]
      143 NEWCLOSURE                       R10 P2
      144 CAPTURE                          VAL R1
      145 SETTABLEKS                       R10 R9 K49 ["FormatAsString"]
      147 LOADN                            R10 0
      148 SETTABLEKS                       R10 R9 K50 ["Minimum"]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R9
      152 SETTABLEKS                       R9 R8 K40 ["ExtraProps"]
      154 CALL                             R7 1 1
      155 SETTABLEKS                       R7 R6 K20 ["Property_Playcount"]
      157 GETTABLEKS                       R7 R5 K25 ["nextProperty"]
      159 DUPTABLE                         R8 K41 [{"Name", "Label", "Type", "Value", "DefaultValue", "Precision", "Step", "ExtraProps"}]
      160 LOADK                            R9 K52 ["Seed"]
      161 SETTABLEKS                       R9 R8 K26 ["Name"]
      163 LOADK                            R9 K52 ["Seed"]
      164 SETTABLEKS                       R9 R8 K27 ["Label"]
      166 LOADK                            R9 K44 ["Number"]
      167 SETTABLEKS                       R9 R8 K28 ["Type"]
      169 GETTABLEKS                       R10 R0 K12 ["PropertyLookup"]
      171 GETTABLEKS                       R9 R10 K52 ["Seed"]
      173 SETTABLEKS                       R9 R8 K29 ["Value"]
      175 LOADN                            R9 255
      176 SETTABLEKS                       R9 R8 K30 ["DefaultValue"]
      178 GETUPVAL                         R9 4
      179 GETTABLEKS                       R9 R9 K45 ["NUMBER_PRECISION"]
      181 GETTABLEKS                       R9 R9 K46 ["Integer"]
      183 SETTABLEKS                       R9 R8 K38 ["Precision"]
      185 GETUPVAL                         R10 6
      186 CALL                             R10 0 1
      187 JUMPIFNOT                        R10 ; [+6]
      188 GETUPVAL                         R9 4
      189 GETTABLEKS                       R9 R9 K47 ["NUMBER_STEP"]
      191 GETTABLEKS                       R9 R9 K46 ["Integer"]
      193 JUMPIF                           R9 ; [+1]
      194 LOADK                            R9 K48 [0.05]
      195 SETTABLEKS                       R9 R8 K39 ["Step"]
      197 GETUPVAL                         R10 7
      198 CALL                             R10 0 1
      199 JUMPIFNOT                        R10 ; [+6]
      200 DUPTABLE                         R9 K53 [{"FormatAsString"}]
      201 NEWCLOSURE                       R10 P3
      202 CAPTURE                          VAL R1
      203 SETTABLEKS                       R10 R9 K49 ["FormatAsString"]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R9
      207 SETTABLEKS                       R9 R8 K40 ["ExtraProps"]
      209 CALL                             R7 1 1
      210 SETTABLEKS                       R7 R6 K21 ["Property_Seed"]
      212 GETTABLEKS                       R7 R5 K25 ["nextProperty"]
      214 DUPTABLE                         R8 K55 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      215 LOADK                            R9 K56 ["DefaultTransition"]
      216 SETTABLEKS                       R9 R8 K26 ["Name"]
      218 LOADK                            R9 K57 ["Default Transition"]
      219 SETTABLEKS                       R9 R8 K27 ["Label"]
      221 LOADK                            R9 K58 ["Transition"]
      222 SETTABLEKS                       R9 R8 K28 ["Type"]
      224 SETTABLEKS                       R3 R8 K29 ["Value"]
      226 DUPTABLE                         R9 K62 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      227 GETUPVAL                         R10 8
      228 SETTABLEKS                       R10 R9 K59 ["TransitionBuilder"]
      230 LOADB                            R10 0
      231 SETTABLEKS                       R10 R9 K60 ["AllowReset"]
      233 LOADB                            R10 1
      234 SETTABLEKS                       R10 R9 K61 ["HideWeight"]
      236 SETTABLEKS                       R9 R8 K40 ["ExtraProps"]
      238 SETTABLEKS                       R4 R8 K54 ["OnChanged"]
      240 CALL                             R7 1 1
      241 SETTABLEKS                       R7 R6 K22 ["Property_DefaultTransition"]
      243 GETTABLEKS                       R7 R2 K63 ["makePropertyChild"]
      245 MOVE                             R8 R0
      246 MOVE                             R9 R5
      247 DUPTABLE                         R10 K66 [{"inputBuilder", "inputBuilderProps"}]
      248 GETUPVAL                         R11 9
      249 SETTABLEKS                       R11 R10 K64 ["inputBuilder"]
      251 DUPTABLE                         R11 K67 [{"DefaultTransition"}]
      252 SETTABLEKS                       R3 R11 K56 ["DefaultTransition"]
      254 SETTABLEKS                       R11 R10 K65 ["inputBuilderProps"]
      256 CALL                             R7 3 1
      257 SETTABLEKS                       R7 R6 K23 ["InputPanel"]
      259 GETUPVAL                         R7 2
      260 GETTABLEKS                       R7 R7 K68 ["createElement"]
      262 GETUPVAL                         R8 5
      263 GETTABLEKS                       R8 R8 K69 ["CompositorNode"]
      265 GETTABLEKS                       R9 R5 K70 ["nodeProps"]
      267 DUPTABLE                         R10 K72 [{"OutputPin"}]
      268 GETTABLEKS                       R11 R5 K73 ["outputPin"]
      270 CALL                             R11 0 1
      271 SETTABLEKS                       R11 R10 K71 ["OutputPin"]
      273 CALL                             R9 1 1
      274 MOVE                             R10 R6
      275 CALL                             R7 3 -1
      276 RETURN                           R7 -1

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
      100 DUPCLOSURE                       R12 K25 [PROTO_4]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R6
      111 RETURN                           R12 1
