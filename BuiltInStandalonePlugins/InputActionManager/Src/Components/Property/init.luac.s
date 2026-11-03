PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["context"]
        3 JUMPIFNOT                        R0 ; [+18]
        4 NEWTABLE                         R0 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["property"]
        9 GETUPVAL                         R2 2
       10 SETTABLE                         R2 R0 R1
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K2 ["updateContext"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["context"]
       17 GETTABLEKS                       R2 R2 K3 ["uuid"]
       19 MOVE                             R3 R0
       20 CALL                             R1 2 0
       21 JUMP                             ; [+21]
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K4 ["binding"]
       25 JUMPIFNOT                        R0 ; [+17]
       26 NEWTABLE                         R0 1 0
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K1 ["property"]
       31 GETUPVAL                         R2 2
       32 SETTABLE                         R2 R0 R1
       33 GETUPVAL                         R1 3
       34 GETTABLEKS                       R1 R1 K5 ["updateBinding"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K4 ["binding"]
       39 GETTABLEKS                       R2 R2 K3 ["uuid"]
       41 MOVE                             R3 R0
       42 CALL                             R1 2 0
       43 GETUPVAL                         R0 0
       44 GETTABLEKS                       R0 R0 K6 ["onClose"]
       46 CALL                             R0 0 0
       47 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R5 R0 K2 ["menuOption"]
       17 GETTABLE                         R3 R4 R5
       18 LOADK                            R6 K3 ["Unsupported menu option: %*"]
       19 GETTABLEKS                       R8 R0 K2 ["menuOption"]
       21 NAMECALL                         R6 R6 K4 ["format"]
       23 CALL                             R6 2 1
       24 FASTCALL2                        ASSERT R3 R6 ; [+4]
       26 MOVE                             R5 R3
       27 GETIMPORT                        R4 K6 [assert]
       29 CALL                             R4 2 0
       30 GETTABLEKS                       R4 R0 K7 ["context"]
       32 JUMPIF                           R4 ; [+2]
       33 GETTABLEKS                       R4 R0 K8 ["binding"]
       35 FASTCALL2K                       ASSERT R4 K9 ; [+5]
       37 MOVE                             R6 R4
       38 LOADK                            R7 K9 ["Property requires a context or binding"]
       39 GETIMPORT                        R5 K6 [assert]
       41 CALL                             R5 2 0
       42 GETUPVAL                         R5 4
       43 GETTABLEKS                       R5 R5 K10 ["useStagnatingState"]
       45 GETTABLEKS                       R7 R3 K11 ["property"]
       47 GETTABLE                         R6 R4 R7
       48 NEWTABLE                         R7 0 1
       50 GETTABLEKS                       R9 R3 K11 ["property"]
       52 GETTABLE                         R8 R4 R9
       53 SETLIST                          R7 R8 1 [1]
       55 CALL                             R5 2 2
       56 LOADNIL                          R7
       57 GETUPVAL                         R8 5
       58 CALL                             R8 0 1
       59 JUMPIFNOT                        R8 ; [+20]
       60 GETTABLEKS                       R8 R0 K2 ["menuOption"]
       62 GETUPVAL                         R9 6
       63 GETTABLEKS                       R9 R9 K12 ["BINDING_RELEASED_THRESHOLD"]
       65 JUMPIFNOTEQ                      R8 R9 ; [+14]
       67 GETTABLEKS                       R8 R0 K8 ["binding"]
       69 JUMPIFNOT                        R8 ; [+10]
       70 GETTABLEKS                       R8 R0 K8 ["binding"]
       72 GETTABLEKS                       R8 R8 K13 ["pressedThreshold"]
       74 JUMPIFNOTLT                      R8 R5 ; [+5]
       76 GETTABLEKS                       R8 R0 K8 ["binding"]
       78 GETTABLEKS                       R7 R8 K13 ["pressedThreshold"]
       80 GETUPVAL                         R8 7
       81 CALL                             R8 0 1
       82 GETUPVAL                         R9 4
       83 GETTABLEKS                       R9 R9 K14 ["useEventCallback"]
       85 NEWCLOSURE                       R10 P0
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R1
       90 CALL                             R9 1 1
       91 GETTABLEKS                       R10 R3 K15 ["editor"]
       93 GETUPVAL                         R11 4
       94 GETTABLEKS                       R11 R11 K16 ["createNextOrder"]
       96 CALL                             R11 0 1
       97 GETUPVAL                         R12 0
       98 GETTABLEKS                       R12 R12 K17 ["createElement"]
      100 GETUPVAL                         R13 8
      101 GETTABLEKS                       R13 R13 K18 ["Root"]
      103 DUPTABLE                         R14 K20 [{"isOpen"}]
      104 GETTABLEKS                       R16 R0 K2 ["menuOption"]
      106 JUMPIFNOTEQKNIL                  R16 ; [+2]
      108 LOADB                            R15 0 +1
      109 LOADB                            R15 1
      110 SETTABLEKS                       R15 R14 K19 ["isOpen"]
      112 DUPTABLE                         R15 K23 [{"Anchor", "Editor"}]
      113 GETUPVAL                         R16 0
      114 GETTABLEKS                       R16 R16 K17 ["createElement"]
      116 GETUPVAL                         R17 8
      117 GETTABLEKS                       R17 R17 K21 ["Anchor"]
      119 DUPTABLE                         R18 K25 [{"anchorRef"}]
      120 GETTABLEKS                       R19 R0 K24 ["anchorRef"]
      122 SETTABLEKS                       R19 R18 K24 ["anchorRef"]
      124 CALL                             R16 2 1
      125 SETTABLEKS                       R16 R15 K21 ["Anchor"]
      127 GETUPVAL                         R16 0
      128 GETTABLEKS                       R16 R16 K17 ["createElement"]
      130 GETUPVAL                         R17 8
      131 GETTABLEKS                       R17 R17 K26 ["Content"]
      133 DUPTABLE                         R18 K36 [{["align"], ["backgroundStyle"], ["hasArrow"] = False, ["isFocusable"] = True, ["onPressedOutside"], ["radius"], ["side"]}]
      134 GETUPVAL                         R19 9
      135 GETTABLEKS                       R19 R19 K37 ["Start"]
      137 SETTABLEKS                       R19 R18 K27 ["align"]
      139 GETTABLEKS                       R19 R8 K38 ["Color"]
      141 GETTABLEKS                       R19 R19 K39 ["Surface"]
      143 GETTABLEKS                       R19 R19 K40 ["Surface_200"]
      145 SETTABLEKS                       R19 R18 K28 ["backgroundStyle"]
      147 SETTABLEKS                       R9 R18 K33 ["onPressedOutside"]
      149 GETUPVAL                         R19 10
      150 GETTABLEKS                       R19 R19 K41 ["Medium"]
      152 SETTABLEKS                       R19 R18 K34 ["radius"]
      154 DUPTABLE                         R19 K44 [{"position", "offset"}]
      155 GETUPVAL                         R20 11
      156 GETTABLEKS                       R20 R20 K45 ["Right"]
      158 SETTABLEKS                       R20 R19 K42 ["position"]
      160 GETTABLEKS                       R20 R8 K46 ["Padding"]
      162 GETTABLEKS                       R20 R20 K47 ["Small"]
      164 SETTABLEKS                       R20 R19 K43 ["offset"]
      166 SETTABLEKS                       R19 R18 K35 ["side"]
      168 DUPTABLE                         R19 K48 [{"Content"}]
      169 GETUPVAL                         R20 0
      170 GETTABLEKS                       R20 R20 K17 ["createElement"]
      172 GETUPVAL                         R21 12
      173 DUPTABLE                         R22 K52 [{["tag"] = "col gap-small padding-small auto-xy stroke-standard stroke-default radius-medium", ["testId"]}]
      174 LOADK                            R23 K53 ["%*-property-editor"]
      175 GETTABLEKS                       R25 R0 K2 ["menuOption"]
      177 NAMECALL                         R23 R23 K4 ["format"]
      179 CALL                             R23 2 1
      180 SETTABLEKS                       R23 R22 K51 ["testId"]
      182 DUPTABLE                         R23 K55 [{"Label", "Editor"}]
      183 GETUPVAL                         R24 0
      184 GETTABLEKS                       R24 R24 K17 ["createElement"]
      186 GETUPVAL                         R25 13
      187 DUPTABLE                         R26 K59 [{["LayoutOrder"], ["tag"] = "auto-xy text-label-medium", ["Text"]}]
      188 MOVE                             R27 R11
      189 CALL                             R27 0 1
      190 SETTABLEKS                       R27 R26 K56 ["LayoutOrder"]
      192 LOADK                            R29 K60 ["Menu"]
      193 GETTABLEKS                       R30 R3 K61 ["localization"]
      195 NAMECALL                         R27 R2 K62 ["getText"]
      197 CALL                             R27 3 1
      198 SETTABLEKS                       R27 R26 K58 ["Text"]
      200 CALL                             R24 2 1
      201 SETTABLEKS                       R24 R23 K54 ["Label"]
      203 MOVE                             R24 R10
      204 JUMPIFNOT                        R24 ; [+26]
      205 GETUPVAL                         R24 0
      206 GETTABLEKS                       R24 R24 K17 ["createElement"]
      208 MOVE                             R25 R10
      209 DUPTABLE                         R26 K66 [{"LayoutOrder", "menuOption", "onChanged", "onCommit", "value"}]
      210 MOVE                             R27 R11
      211 CALL                             R27 0 1
      212 SETTABLEKS                       R27 R26 K56 ["LayoutOrder"]
      214 GETTABLEKS                       R27 R0 K2 ["menuOption"]
      216 SETTABLEKS                       R27 R26 K2 ["menuOption"]
      218 SETTABLEKS                       R6 R26 K63 ["onChanged"]
      220 SETTABLEKS                       R9 R26 K64 ["onCommit"]
      222 GETUPVAL                         R28 5
      223 CALL                             R28 0 1
      224 JUMPIFNOT                        R28 ; [+2]
      225 OR                               R27 R7 R5
      226 JUMP                             ; [+1]
      227 MOVE                             R27 R5
      228 SETTABLEKS                       R27 R26 K65 ["value"]
      230 CALL                             R24 2 1
      231 SETTABLEKS                       R24 R23 K22 ["Editor"]
      233 CALL                             R20 3 1
      234 SETTABLEKS                       R20 R19 K26 ["Content"]
      236 CALL                             R16 3 1
      237 SETTABLEKS                       R16 R15 K22 ["Editor"]
      239 CALL                             R12 3 -1
      240 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Src"]
       43 GETTABLEKS                       R7 R7 K11 ["Contexts"]
       45 GETTABLEKS                       R7 R7 K14 ["InputConfiguration"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K13 ["Src"]
       52 GETTABLEKS                       R8 R8 K15 ["Types"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R9 R0 K13 ["Src"]
       59 GETTABLEKS                       R9 R9 K16 ["Util"]
       61 GETTABLEKS                       R9 R9 K17 ["Constants"]
       63 GETTABLEKS                       R9 R9 K18 ["MenuIdentifiers"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETIMPORT                        R10 K1 [script]
       70 GETTABLEKS                       R10 R10 K19 ["CurveProperty"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K5 [require]
       75 GETIMPORT                        R11 K1 [script]
       77 GETTABLEKS                       R11 R11 K20 ["ImageProperty"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K5 [require]
       82 GETIMPORT                        R12 K1 [script]
       84 GETTABLEKS                       R12 R12 K21 ["StringProperty"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K5 [require]
       89 GETIMPORT                        R13 K1 [script]
       91 GETTABLEKS                       R13 R13 K22 ["NumberProperty"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K5 [require]
       96 GETIMPORT                        R14 K1 [script]
       98 GETTABLEKS                       R14 R14 K23 ["SliderProperty"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K5 [require]
      103 GETIMPORT                        R15 K1 [script]
      105 GETTABLEKS                       R15 R15 K24 ["Vector2ScaleProperty"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K5 [require]
      110 GETIMPORT                        R16 K1 [script]
      112 GETTABLEKS                       R16 R16 K25 ["Vector3ScaleProperty"]
      114 CALL                             R15 1 1
      115 GETTABLEKS                       R16 R1 K26 ["Popover"]
      117 GETTABLEKS                       R17 R1 K27 ["Enums"]
      119 GETTABLEKS                       R17 R17 K28 ["PopoverAlign"]
      121 GETTABLEKS                       R18 R1 K27 ["Enums"]
      123 GETTABLEKS                       R18 R18 K29 ["PopoverSide"]
      125 GETTABLEKS                       R19 R1 K27 ["Enums"]
      127 GETTABLEKS                       R19 R19 K30 ["Radius"]
      129 GETTABLEKS                       R20 R1 K31 ["Text"]
      131 GETTABLEKS                       R21 R1 K32 ["Hooks"]
      133 GETTABLEKS                       R21 R21 K33 ["useTokens"]
      135 GETTABLEKS                       R22 R1 K34 ["View"]
      137 GETIMPORT                        R23 K5 [require]
      139 GETTABLEKS                       R24 R0 K13 ["Src"]
      141 GETTABLEKS                       R24 R24 K35 ["Flags"]
      143 GETTABLEKS                       R24 R24 K36 ["getFFlagIAMResetPropertyEditorsOnPropertyChange"]
      145 CALL                             R23 1 1
      146 NEWTABLE                         R24 16 0
      148 GETTABLEKS                       R25 R8 K37 ["BINDING_PRESSED_THRESHOLD"]
      150 DUPTABLE                         R26 K43 [{["property"] = "pressedThreshold", ["localization"] = "PressedThreshold", ["editor"]}]
      151 SETTABLEKS                       R13 R26 K42 ["editor"]
      153 SETTABLE                         R26 R24 R25
      154 GETTABLEKS                       R25 R8 K44 ["BINDING_RELEASED_THRESHOLD"]
      156 DUPTABLE                         R26 K47 [{["property"] = "releasedThreshold", ["localization"] = "ReleasedThreshold", ["editor"]}]
      157 SETTABLEKS                       R13 R26 K42 ["editor"]
      159 SETTABLE                         R26 R24 R25
      160 GETTABLEKS                       R25 R8 K48 ["BINDING_CLAMP_MAGNITUDE_TO_ONE"]
      162 DUPTABLE                         R26 K51 [{["property"] = "clampMagnitudeToOne", ["localization"] = "ClampMagnitudeToOne", ["editor"]}]
      163 SETTABLEKS                       R12 R26 K42 ["editor"]
      165 SETTABLE                         R26 R24 R25
      166 GETTABLEKS                       R25 R8 K52 ["BINDING_DISPLAY_NAME"]
      168 DUPTABLE                         R26 K55 [{["property"] = "displayName", ["localization"] = "DisplayName", ["editor"]}]
      169 SETTABLEKS                       R11 R26 K42 ["editor"]
      171 SETTABLE                         R26 R24 R25
      172 GETTABLEKS                       R25 R8 K56 ["BINDING_DISPLAY_IMAGE"]
      174 DUPTABLE                         R26 K59 [{["property"] = "displayImage", ["localization"] = "DisplayImage", ["editor"]}]
      175 SETTABLEKS                       R10 R26 K42 ["editor"]
      177 SETTABLE                         R26 R24 R25
      178 GETTABLEKS                       R25 R8 K60 ["BINDING_RESPONSE_CURVE"]
      180 DUPTABLE                         R26 K63 [{["property"] = "responseCurve", ["localization"] = "ResponseCurve", ["editor"]}]
      181 SETTABLEKS                       R9 R26 K42 ["editor"]
      183 SETTABLE                         R26 R24 R25
      184 GETTABLEKS                       R25 R8 K64 ["BINDING_SCALE"]
      186 DUPTABLE                         R26 K67 [{["property"] = "scale", ["localization"] = "Scale", ["editor"]}]
      187 SETTABLEKS                       R12 R26 K42 ["editor"]
      189 SETTABLE                         R26 R24 R25
      190 GETTABLEKS                       R25 R8 K68 ["BINDING_VECTOR2_SCALE"]
      192 DUPTABLE                         R26 K71 [{["property"] = "vector2Scale", ["localization"] = "Vector2Scale", ["editor"]}]
      193 SETTABLEKS                       R14 R26 K42 ["editor"]
      195 SETTABLE                         R26 R24 R25
      196 GETTABLEKS                       R25 R8 K72 ["BINDING_VECTOR3_SCALE"]
      198 DUPTABLE                         R26 K75 [{["property"] = "vector3Scale", ["localization"] = "Vector3Scale", ["editor"]}]
      199 SETTABLEKS                       R15 R26 K42 ["editor"]
      201 SETTABLE                         R26 R24 R25
      202 GETTABLEKS                       R25 R8 K76 ["PRIORITY"]
      204 DUPTABLE                         R26 K79 [{["property"] = "priority", ["localization"] = "Priority", ["editor"]}]
      205 SETTABLEKS                       R12 R26 K42 ["editor"]
      207 SETTABLE                         R26 R24 R25
      208 GETTABLEKS                       R25 R8 K80 ["SCRIPTABLE_RENAME"]
      210 DUPTABLE                         R26 K83 [{["property"] = "name", ["localization"] = "Name", ["editor"]}]
      211 SETTABLEKS                       R11 R26 K42 ["editor"]
      213 SETTABLE                         R26 R24 R25
      214 DUPCLOSURE                       R25 K84 [PROTO_1]
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R5
      218 CAPTURE                          VAL R24
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R23
      221 CAPTURE                          VAL R8
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R16
      224 CAPTURE                          VAL R17
      225 CAPTURE                          VAL R19
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R20
      229 RETURN                           R25 1
