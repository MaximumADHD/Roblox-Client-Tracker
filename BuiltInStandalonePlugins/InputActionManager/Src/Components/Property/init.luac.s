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
       56 GETUPVAL                         R7 5
       57 CALL                             R7 0 1
       58 GETUPVAL                         R8 4
       59 GETTABLEKS                       R8 R8 K12 ["useEventCallback"]
       61 NEWCLOSURE                       R9 P0
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R1
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R3 K13 ["editor"]
       69 GETUPVAL                         R10 4
       70 GETTABLEKS                       R10 R10 K14 ["createNextOrder"]
       72 CALL                             R10 0 1
       73 GETUPVAL                         R11 0
       74 GETTABLEKS                       R11 R11 K15 ["createElement"]
       76 GETUPVAL                         R12 6
       77 GETTABLEKS                       R12 R12 K16 ["Root"]
       79 DUPTABLE                         R13 K18 [{"isOpen"}]
       80 GETTABLEKS                       R15 R0 K2 ["menuOption"]
       82 JUMPIFNOTEQKNIL                  R15 ; [+2]
       84 LOADB                            R14 0 +1
       85 LOADB                            R14 1
       86 SETTABLEKS                       R14 R13 K17 ["isOpen"]
       88 DUPTABLE                         R14 K21 [{"Anchor", "Editor"}]
       89 GETUPVAL                         R15 0
       90 GETTABLEKS                       R15 R15 K15 ["createElement"]
       92 GETUPVAL                         R16 6
       93 GETTABLEKS                       R16 R16 K19 ["Anchor"]
       95 DUPTABLE                         R17 K23 [{"anchorRef"}]
       96 GETTABLEKS                       R18 R0 K22 ["anchorRef"]
       98 SETTABLEKS                       R18 R17 K22 ["anchorRef"]
      100 CALL                             R15 2 1
      101 SETTABLEKS                       R15 R14 K19 ["Anchor"]
      103 GETUPVAL                         R15 0
      104 GETTABLEKS                       R15 R15 K15 ["createElement"]
      106 GETUPVAL                         R16 6
      107 GETTABLEKS                       R16 R16 K24 ["Content"]
      109 DUPTABLE                         R17 K34 [{["align"], ["backgroundStyle"], ["hasArrow"] = False, ["isFocusable"] = True, ["onPressedOutside"], ["radius"], ["side"]}]
      110 GETUPVAL                         R18 7
      111 GETTABLEKS                       R18 R18 K35 ["Start"]
      113 SETTABLEKS                       R18 R17 K25 ["align"]
      115 GETTABLEKS                       R18 R7 K36 ["Color"]
      117 GETTABLEKS                       R18 R18 K37 ["Surface"]
      119 GETTABLEKS                       R18 R18 K38 ["Surface_200"]
      121 SETTABLEKS                       R18 R17 K26 ["backgroundStyle"]
      123 SETTABLEKS                       R8 R17 K31 ["onPressedOutside"]
      125 GETUPVAL                         R18 8
      126 GETTABLEKS                       R18 R18 K39 ["Medium"]
      128 SETTABLEKS                       R18 R17 K32 ["radius"]
      130 DUPTABLE                         R18 K42 [{"position", "offset"}]
      131 GETUPVAL                         R19 9
      132 GETTABLEKS                       R19 R19 K43 ["Right"]
      134 SETTABLEKS                       R19 R18 K40 ["position"]
      136 GETTABLEKS                       R19 R7 K44 ["Padding"]
      138 GETTABLEKS                       R19 R19 K45 ["Small"]
      140 SETTABLEKS                       R19 R18 K41 ["offset"]
      142 SETTABLEKS                       R18 R17 K33 ["side"]
      144 DUPTABLE                         R18 K46 [{"Content"}]
      145 GETUPVAL                         R19 0
      146 GETTABLEKS                       R19 R19 K15 ["createElement"]
      148 GETUPVAL                         R20 10
      149 DUPTABLE                         R21 K50 [{["tag"] = "col gap-small padding-small auto-xy stroke-standard stroke-default radius-medium", ["testId"]}]
      150 LOADK                            R22 K51 ["%*-property-editor"]
      151 GETTABLEKS                       R24 R0 K2 ["menuOption"]
      153 NAMECALL                         R22 R22 K4 ["format"]
      155 CALL                             R22 2 1
      156 SETTABLEKS                       R22 R21 K49 ["testId"]
      158 DUPTABLE                         R22 K53 [{"Label", "Editor"}]
      159 GETUPVAL                         R23 0
      160 GETTABLEKS                       R23 R23 K15 ["createElement"]
      162 GETUPVAL                         R24 11
      163 DUPTABLE                         R25 K57 [{["LayoutOrder"], ["tag"] = "auto-xy text-label-medium", ["Text"]}]
      164 MOVE                             R26 R10
      165 CALL                             R26 0 1
      166 SETTABLEKS                       R26 R25 K54 ["LayoutOrder"]
      168 LOADK                            R28 K58 ["Menu"]
      169 GETTABLEKS                       R29 R3 K59 ["localization"]
      171 NAMECALL                         R26 R2 K60 ["getText"]
      173 CALL                             R26 3 1
      174 SETTABLEKS                       R26 R25 K56 ["Text"]
      176 CALL                             R23 2 1
      177 SETTABLEKS                       R23 R22 K52 ["Label"]
      179 MOVE                             R23 R9
      180 JUMPIFNOT                        R23 ; [+20]
      181 GETUPVAL                         R23 0
      182 GETTABLEKS                       R23 R23 K15 ["createElement"]
      184 MOVE                             R24 R9
      185 DUPTABLE                         R25 K64 [{"LayoutOrder", "menuOption", "onChanged", "onCommit", "value"}]
      186 MOVE                             R26 R10
      187 CALL                             R26 0 1
      188 SETTABLEKS                       R26 R25 K54 ["LayoutOrder"]
      190 GETTABLEKS                       R26 R0 K2 ["menuOption"]
      192 SETTABLEKS                       R26 R25 K2 ["menuOption"]
      194 SETTABLEKS                       R6 R25 K61 ["onChanged"]
      196 SETTABLEKS                       R8 R25 K62 ["onCommit"]
      198 SETTABLEKS                       R5 R25 K63 ["value"]
      200 CALL                             R23 2 1
      201 SETTABLEKS                       R23 R22 K20 ["Editor"]
      203 CALL                             R19 3 1
      204 SETTABLEKS                       R19 R18 K24 ["Content"]
      206 CALL                             R15 3 1
      207 SETTABLEKS                       R15 R14 K20 ["Editor"]
      209 CALL                             R11 3 -1
      210 RETURN                           R11 -1

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
      137 NEWTABLE                         R23 16 0
      139 GETTABLEKS                       R24 R8 K35 ["BINDING_PRESSED_THRESHOLD"]
      141 DUPTABLE                         R25 K41 [{["property"] = "pressedThreshold", ["localization"] = "PressedThreshold", ["editor"]}]
      142 SETTABLEKS                       R13 R25 K40 ["editor"]
      144 SETTABLE                         R25 R23 R24
      145 GETTABLEKS                       R24 R8 K42 ["BINDING_RELEASED_THRESHOLD"]
      147 DUPTABLE                         R25 K45 [{["property"] = "releasedThreshold", ["localization"] = "ReleasedThreshold", ["editor"]}]
      148 SETTABLEKS                       R13 R25 K40 ["editor"]
      150 SETTABLE                         R25 R23 R24
      151 GETTABLEKS                       R24 R8 K46 ["BINDING_CLAMP_MAGNITUDE_TO_ONE"]
      153 DUPTABLE                         R25 K49 [{["property"] = "clampMagnitudeToOne", ["localization"] = "ClampMagnitudeToOne", ["editor"]}]
      154 SETTABLEKS                       R12 R25 K40 ["editor"]
      156 SETTABLE                         R25 R23 R24
      157 GETTABLEKS                       R24 R8 K50 ["BINDING_DISPLAY_NAME"]
      159 DUPTABLE                         R25 K53 [{["property"] = "displayName", ["localization"] = "DisplayName", ["editor"]}]
      160 SETTABLEKS                       R11 R25 K40 ["editor"]
      162 SETTABLE                         R25 R23 R24
      163 GETTABLEKS                       R24 R8 K54 ["BINDING_DISPLAY_IMAGE"]
      165 DUPTABLE                         R25 K57 [{["property"] = "displayImage", ["localization"] = "DisplayImage", ["editor"]}]
      166 SETTABLEKS                       R10 R25 K40 ["editor"]
      168 SETTABLE                         R25 R23 R24
      169 GETTABLEKS                       R24 R8 K58 ["BINDING_RESPONSE_CURVE"]
      171 DUPTABLE                         R25 K61 [{["property"] = "responseCurve", ["localization"] = "ResponseCurve", ["editor"]}]
      172 SETTABLEKS                       R9 R25 K40 ["editor"]
      174 SETTABLE                         R25 R23 R24
      175 GETTABLEKS                       R24 R8 K62 ["BINDING_SCALE"]
      177 DUPTABLE                         R25 K65 [{["property"] = "scale", ["localization"] = "Scale", ["editor"]}]
      178 SETTABLEKS                       R12 R25 K40 ["editor"]
      180 SETTABLE                         R25 R23 R24
      181 GETTABLEKS                       R24 R8 K66 ["BINDING_VECTOR2_SCALE"]
      183 DUPTABLE                         R25 K69 [{["property"] = "vector2Scale", ["localization"] = "Vector2Scale", ["editor"]}]
      184 SETTABLEKS                       R14 R25 K40 ["editor"]
      186 SETTABLE                         R25 R23 R24
      187 GETTABLEKS                       R24 R8 K70 ["BINDING_VECTOR3_SCALE"]
      189 DUPTABLE                         R25 K73 [{["property"] = "vector3Scale", ["localization"] = "Vector3Scale", ["editor"]}]
      190 SETTABLEKS                       R15 R25 K40 ["editor"]
      192 SETTABLE                         R25 R23 R24
      193 GETTABLEKS                       R24 R8 K74 ["PRIORITY"]
      195 DUPTABLE                         R25 K77 [{["property"] = "priority", ["localization"] = "Priority", ["editor"]}]
      196 SETTABLEKS                       R12 R25 K40 ["editor"]
      198 SETTABLE                         R25 R23 R24
      199 GETTABLEKS                       R24 R8 K78 ["SCRIPTABLE_RENAME"]
      201 DUPTABLE                         R25 K81 [{["property"] = "name", ["localization"] = "Name", ["editor"]}]
      202 SETTABLEKS                       R11 R25 K40 ["editor"]
      204 SETTABLE                         R25 R23 R24
      205 DUPCLOSURE                       R24 K82 [PROTO_1]
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R19
      215 CAPTURE                          VAL R18
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R20
      218 RETURN                           R24 1
