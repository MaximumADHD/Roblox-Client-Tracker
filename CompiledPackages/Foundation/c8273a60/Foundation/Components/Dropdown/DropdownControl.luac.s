PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["Radius"]
        7 GETTABLEKS                       R3 R3 K8 ["Small"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K9 ["Size"]
       15 GETTABLEKS                       R1 R1 K10 ["Size_200"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K11 ["Stroke"]
       22 GETTABLEKS                       R1 R1 K12 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K12 [{"onStateChanged", "isDisabled", "onActivated", "selection", "cursor", "stateLayer", "backgroundStyle", "stroke", "tag", "ref", "testId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["onStateChanged"]
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K2 ["isDisabled"]
       11 SETTABLEKS                       R4 R3 K2 ["isDisabled"]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["onActivated"]
       16 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       18 DUPTABLE                         R4 K14 [{"Selectable"}]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K2 ["isDisabled"]
       22 NOT                              R5 R6
       23 SETTABLEKS                       R5 R4 K13 ["Selectable"]
       25 SETTABLEKS                       R4 R3 K4 ["selection"]
       27 GETUPVAL                         R4 4
       28 SETTABLEKS                       R4 R3 K5 ["cursor"]
       30 DUPTABLE                         R4 K16 [{"affordance"}]
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R5 R5 K17 ["None"]
       34 SETTABLEKS                       R5 R4 K15 ["affordance"]
       36 SETTABLEKS                       R4 R3 K6 ["stateLayer"]
       38 GETUPVAL                         R5 6
       39 GETTABLEKS                       R5 R5 K18 ["FoundationDropdownVariant"]
       41 JUMPIFNOT                        R5 ; [+43]
       42 GETUPVAL                         R5 7
       43 GETTABLEKS                       R5 R5 K19 ["container"]
       45 GETTABLEKS                       R5 R5 K20 ["bgStyle"]
       47 JUMPIFNOT                        R5 ; [+37]
       48 DUPTABLE                         R4 K23 [{"Color3", "Transparency"}]
       49 GETUPVAL                         R5 7
       50 GETTABLEKS                       R5 R5 K19 ["container"]
       52 GETTABLEKS                       R5 R5 K20 ["bgStyle"]
       54 GETTABLEKS                       R5 R5 K21 ["Color3"]
       56 SETTABLEKS                       R5 R4 K21 ["Color3"]
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K2 ["isDisabled"]
       61 JUMPIFNOT                        R6 ; [+13]
       62 GETUPVAL                         R5 8
       63 GETUPVAL                         R6 7
       64 GETTABLEKS                       R6 R6 K19 ["container"]
       66 GETTABLEKS                       R6 R6 K20 ["bgStyle"]
       68 GETTABLEKS                       R6 R6 K22 ["Transparency"]
       70 GETUPVAL                         R7 9
       71 GETTABLEKS                       R7 R7 K24 ["DISABLED_TRANSPARENCY"]
       73 CALL                             R5 2 1
       74 JUMP                             ; [+7]
       75 GETUPVAL                         R5 7
       76 GETTABLEKS                       R5 R5 K19 ["container"]
       78 GETTABLEKS                       R5 R5 K20 ["bgStyle"]
       80 GETTABLEKS                       R5 R5 K22 ["Transparency"]
       82 SETTABLEKS                       R5 R4 K22 ["Transparency"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R4
       86 SETTABLEKS                       R4 R3 K7 ["backgroundStyle"]
       88 GETUPVAL                         R5 6
       89 GETTABLEKS                       R5 R5 K18 ["FoundationDropdownVariant"]
       91 JUMPIFNOT                        R5 ; [+54]
       92 GETUPVAL                         R5 7
       93 GETTABLEKS                       R5 R5 K19 ["container"]
       95 GETTABLEKS                       R5 R5 K25 ["strokeStyle"]
       97 JUMPIFNOT                        R5 ; [+48]
       98 DUPTABLE                         R4 K29 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
       99 GETUPVAL                         R5 7
      100 GETTABLEKS                       R5 R5 K19 ["container"]
      102 GETTABLEKS                       R5 R5 K25 ["strokeStyle"]
      104 GETTABLEKS                       R5 R5 K21 ["Color3"]
      106 SETTABLEKS                       R5 R4 K26 ["Color"]
      108 GETUPVAL                         R6 3
      109 GETTABLEKS                       R6 R6 K2 ["isDisabled"]
      111 JUMPIFNOT                        R6 ; [+13]
      112 GETUPVAL                         R5 8
      113 GETUPVAL                         R6 7
      114 GETTABLEKS                       R6 R6 K19 ["container"]
      116 GETTABLEKS                       R6 R6 K25 ["strokeStyle"]
      118 GETTABLEKS                       R6 R6 K22 ["Transparency"]
      120 GETUPVAL                         R7 9
      121 GETTABLEKS                       R7 R7 K24 ["DISABLED_TRANSPARENCY"]
      123 CALL                             R5 2 1
      124 JUMP                             ; [+7]
      125 GETUPVAL                         R5 7
      126 GETTABLEKS                       R5 R5 K19 ["container"]
      128 GETTABLEKS                       R5 R5 K25 ["strokeStyle"]
      130 GETTABLEKS                       R5 R5 K22 ["Transparency"]
      132 SETTABLEKS                       R5 R4 K22 ["Transparency"]
      134 GETUPVAL                         R5 7
      135 GETTABLEKS                       R5 R5 K19 ["container"]
      137 GETTABLEKS                       R5 R5 K30 ["strokeThickness"]
      139 SETTABLEKS                       R5 R4 K27 ["Thickness"]
      141 GETIMPORT                        R5 K33 [Enum.BorderStrokePosition.Inner]
      143 SETTABLEKS                       R5 R4 K28 ["BorderStrokePosition"]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R4
      147 SETTABLEKS                       R4 R3 K8 ["stroke"]
      149 GETUPVAL                         R4 7
      150 GETTABLEKS                       R4 R4 K19 ["container"]
      152 GETTABLEKS                       R4 R4 K9 ["tag"]
      154 SETTABLEKS                       R4 R3 K9 ["tag"]
      156 GETUPVAL                         R4 3
      157 GETTABLEKS                       R4 R4 K34 ["inputRef"]
      159 SETTABLEKS                       R4 R3 K10 ["ref"]
      161 LOADK                            R5 K35 ["%*--control"]
      162 GETUPVAL                         R7 3
      163 GETTABLEKS                       R7 R7 K11 ["testId"]
      165 NAMECALL                         R5 R5 K36 ["format"]
      167 CALL                             R5 2 1
      168 MOVE                             R4 R5
      169 SETTABLEKS                       R4 R3 K11 ["testId"]
      171 DUPTABLE                         R4 K39 [{"Text", "Arrow"}]
      172 GETUPVAL                         R5 0
      173 GETTABLEKS                       R5 R5 K0 ["createElement"]
      175 GETUPVAL                         R6 10
      176 DUPTABLE                         R7 K41 [{"LayoutOrder", "Text", "tag"}]
      177 LOADN                            R8 1
      178 SETTABLEKS                       R8 R7 K40 ["LayoutOrder"]
      180 GETUPVAL                         R9 3
      181 GETTABLEKS                       R9 R9 K42 ["item"]
      183 JUMPIFNOT                        R9 ; [+6]
      184 GETUPVAL                         R8 3
      185 GETTABLEKS                       R8 R8 K42 ["item"]
      187 GETTABLEKS                       R8 R8 K43 ["text"]
      189 JUMP                             ; [+3]
      190 GETUPVAL                         R8 3
      191 GETTABLEKS                       R8 R8 K44 ["placeholder"]
      193 SETTABLEKS                       R8 R7 K37 ["Text"]
      195 GETUPVAL                         R8 7
      196 GETTABLEKS                       R8 R8 K43 ["text"]
      198 GETTABLEKS                       R8 R8 K9 ["tag"]
      200 SETTABLEKS                       R8 R7 K9 ["tag"]
      202 CALL                             R5 2 1
      203 SETTABLEKS                       R5 R4 K37 ["Text"]
      205 GETUPVAL                         R5 0
      206 GETTABLEKS                       R5 R5 K0 ["createElement"]
      208 GETUPVAL                         R6 11
      209 DUPTABLE                         R7 K48 [{"LayoutOrder", "name", "size", "style", "tag", "testId"}]
      210 LOADN                            R8 2
      211 SETTABLEKS                       R8 R7 K40 ["LayoutOrder"]
      213 GETUPVAL                         R9 3
      214 GETTABLEKS                       R9 R9 K49 ["isMenuOpen"]
      216 JUMPIFNOT                        R9 ; [+2]
      217 GETUPVAL                         R8 12
      218 JUMP                             ; [+1]
      219 GETUPVAL                         R8 13
      220 SETTABLEKS                       R8 R7 K45 ["name"]
      222 GETUPVAL                         R8 7
      223 GETTABLEKS                       R8 R8 K50 ["arrow"]
      225 GETTABLEKS                       R8 R8 K46 ["size"]
      227 SETTABLEKS                       R8 R7 K46 ["size"]
      229 GETUPVAL                         R9 6
      230 GETTABLEKS                       R9 R9 K51 ["FoundationMutedDropdownArrow"]
      232 JUMPIFNOT                        R9 ; [+12]
      233 GETUPVAL                         R9 3
      234 GETTABLEKS                       R9 R9 K2 ["isDisabled"]
      236 JUMPIFNOT                        R9 ; [+8]
      237 GETUPVAL                         R8 14
      238 GETTABLEKS                       R8 R8 K26 ["Color"]
      240 GETTABLEKS                       R8 R8 K52 ["Content"]
      242 GETTABLEKS                       R8 R8 K53 ["Muted"]
      244 JUMP                             ; [+1]
      245 LOADNIL                          R8
      246 SETTABLEKS                       R8 R7 K47 ["style"]
      248 GETUPVAL                         R8 7
      249 GETTABLEKS                       R8 R8 K43 ["text"]
      251 GETTABLEKS                       R8 R8 K9 ["tag"]
      253 SETTABLEKS                       R8 R7 K9 ["tag"]
      255 GETUPVAL                         R9 6
      256 GETTABLEKS                       R9 R9 K51 ["FoundationMutedDropdownArrow"]
      258 JUMPIFNOT                        R9 ; [+9]
      259 LOADK                            R9 K54 ["%*--arrow"]
      260 GETUPVAL                         R11 3
      261 GETTABLEKS                       R11 R11 K11 ["testId"]
      263 NAMECALL                         R9 R9 K36 ["format"]
      265 CALL                             R9 2 1
      266 MOVE                             R8 R9
      267 JUMP                             ; [+1]
      268 LOADNIL                          R8
      269 SETTABLEKS                       R8 R7 K11 ["testId"]
      271 CALL                             R5 2 1
      272 SETTABLEKS                       R5 R4 K38 ["Arrow"]
      274 CALL                             R1 3 -1
      275 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
        9 GETUPVAL                         R5 4
       10 GETTABLEKS                       R5 R5 K1 ["Initialize"]
       12 CALL                             R4 1 2
       13 GETTABLEKS                       R7 R2 K2 ["item"]
       15 JUMPIFEQKNIL                     R7 ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 GETUPVAL                         R7 5
       20 GETTABLEKS                       R7 R7 K3 ["FoundationDropdownVariant"]
       22 JUMPIFNOT                        R7 ; [+9]
       23 GETTABLEKS                       R7 R2 K4 ["variant"]
       25 JUMPIFNOTEQKNIL                  R7 ; [+6]
       27 GETUPVAL                         R7 6
       28 GETTABLEKS                       R7 R7 K5 ["Standard"]
       30 SETTABLEKS                       R7 R2 K4 ["variant"]
       32 GETUPVAL                         R7 7
       33 MOVE                             R8 R3
       34 GETTABLEKS                       R9 R2 K6 ["size"]
       36 GETUPVAL                         R11 5
       37 GETTABLEKS                       R11 R11 K3 ["FoundationDropdownVariant"]
       39 JUMPIFNOT                        R11 ; [+3]
       40 GETTABLEKS                       R10 R2 K4 ["variant"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R10
       44 MOVE                             R11 R4
       45 MOVE                             R12 R6
       46 GETTABLEKS                       R14 R2 K8 ["hasError"]
       48 ORK                              R13 R14 K7 [False]
       49 GETUPVAL                         R15 5
       50 GETTABLEKS                       R15 R15 K3 ["FoundationDropdownVariant"]
       52 JUMPIFNOT                        R15 ; [+3]
       53 GETTABLEKS                       R14 R2 K9 ["isMenuOpen"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R14
       57 GETUPVAL                         R16 5
       58 GETTABLEKS                       R16 R16 K3 ["FoundationDropdownVariant"]
       60 JUMPIFNOT                        R16 ; [+8]
       61 GETUPVAL                         R16 4
       62 GETTABLEKS                       R16 R16 K10 ["Hover"]
       64 JUMPIFEQ                         R4 R16 ; [+2]
       66 LOADB                            R15 0 +1
       67 LOADB                            R15 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R15
       70 CALL                             R7 8 1
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R8 R8 K11 ["useMemo"]
       74 NEWCLOSURE                       R9 P0
       75 CAPTURE                          VAL R3
       76 NEWTABLE                         R10 0 1
       78 MOVE                             R11 R3
       79 SETLIST                          R10 R11 1 [1]
       81 CALL                             R8 2 1
       82 GETUPVAL                         R9 3
       83 GETTABLEKS                       R9 R9 K12 ["createElement"]
       85 GETUPVAL                         R10 8
       86 GETUPVAL                         R11 9
       87 MOVE                             R12 R2
       88 DUPTABLE                         R13 K19 [{"size", "hasError", "isDisabled", "label", "hint", "ref", "width", "input"}]
       89 GETUPVAL                         R14 10
       90 GETTABLEKS                       R15 R2 K6 ["size"]
       92 CALL                             R14 1 1
       93 SETTABLEKS                       R14 R13 K6 ["size"]
       95 GETTABLEKS                       R14 R2 K8 ["hasError"]
       97 SETTABLEKS                       R14 R13 K8 ["hasError"]
       99 GETTABLEKS                       R14 R2 K13 ["isDisabled"]
      101 SETTABLEKS                       R14 R13 K13 ["isDisabled"]
      103 GETTABLEKS                       R14 R2 K14 ["label"]
      105 SETTABLEKS                       R14 R13 K14 ["label"]
      107 GETTABLEKS                       R14 R2 K15 ["hint"]
      109 SETTABLEKS                       R14 R13 K15 ["hint"]
      111 SETTABLEKS                       R1 R13 K16 ["ref"]
      113 GETTABLEKS                       R14 R2 K17 ["width"]
      115 SETTABLEKS                       R14 R13 K17 ["width"]
      117 NEWCLOSURE                       R14 P1
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          UPVAL U11
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R8
      123 CAPTURE                          UPVAL U12
      124 CAPTURE                          UPVAL U5
      125 CAPTURE                          VAL R7
      126 CAPTURE                          UPVAL U13
      127 CAPTURE                          UPVAL U14
      128 CAPTURE                          UPVAL U15
      129 CAPTURE                          UPVAL U16
      130 CAPTURE                          UPVAL U17
      131 CAPTURE                          UPVAL U18
      132 CAPTURE                          VAL R3
      133 SETTABLEKS                       R14 R13 K18 ["input"]
      135 CALL                             R11 2 -1
      136 CALL                             R9 -1 -1
      137 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K8 ["Components"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R3 K9 ["BaseMenu"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R3 K10 ["View"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Constants"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R3 K12 ["Icon"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R3 K13 ["InputField"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R0 K14 ["Enums"]
       45 GETTABLEKS                       R10 R10 K15 ["StateLayerAffordance"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R3 K16 ["Text"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETTABLEKS                       R12 R0 K8 ["Components"]
       57 GETTABLEKS                       R12 R12 K17 ["Types"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R13 R0 K18 ["Utility"]
       64 GETTABLEKS                       R13 R13 K19 ["Flags"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R14 R0 K18 ["Utility"]
       71 GETTABLEKS                       R14 R14 K20 ["blendTransparencies"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K6 [require]
       76 GETTABLEKS                       R15 R0 K18 ["Utility"]
       78 GETTABLEKS                       R15 R15 K21 ["getInputTextSize"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K6 [require]
       83 GETTABLEKS                       R16 R0 K22 ["Providers"]
       85 GETTABLEKS                       R16 R16 K23 ["Style"]
       87 GETTABLEKS                       R16 R16 K24 ["useTokens"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K6 [require]
       92 GETTABLEKS                       R17 R0 K18 ["Utility"]
       94 GETTABLEKS                       R17 R17 K25 ["withCommonProps"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R18 R0 K18 ["Utility"]
      101 GETTABLEKS                       R18 R18 K26 ["withDefaults"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K6 [require]
      106 GETIMPORT                        R19 K1 [script]
      108 GETTABLEKS                       R19 R19 K4 ["Parent"]
      110 GETTABLEKS                       R19 R19 K27 ["useDropdownVariants"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K6 [require]
      115 GETTABLEKS                       R20 R0 K14 ["Enums"]
      117 GETTABLEKS                       R20 R20 K28 ["ControlState"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K6 [require]
      122 GETTABLEKS                       R21 R0 K14 ["Enums"]
      124 GETTABLEKS                       R21 R21 K29 ["CursorType"]
      126 CALL                             R20 1 1
      127 GETIMPORT                        R21 K6 [require]
      129 GETTABLEKS                       R22 R0 K14 ["Enums"]
      131 GETTABLEKS                       R22 R22 K30 ["InputSize"]
      133 CALL                             R21 1 1
      134 GETIMPORT                        R22 K6 [require]
      136 GETTABLEKS                       R23 R0 K14 ["Enums"]
      138 GETTABLEKS                       R23 R23 K31 ["InputVariant"]
      140 CALL                             R22 1 1
      141 GETIMPORT                        R23 K6 [require]
      143 GETTABLEKS                       R24 R1 K32 ["BuilderIcons"]
      145 CALL                             R23 1 1
      146 GETTABLEKS                       R24 R23 K12 ["Icon"]
      148 GETTABLEKS                       R24 R24 K33 ["ChevronLargeUp"]
      150 GETTABLEKS                       R25 R23 K12 ["Icon"]
      152 GETTABLEKS                       R25 R25 K34 ["ChevronLargeDown"]
      154 DUPTABLE                         R26 K38 [{"variant", "isMenuOpen", "placeholder"}]
      155 GETTABLEKS                       R28 R12 K39 ["FoundationDropdownVariant"]
      157 JUMPIFNOT                        R28 ; [+3]
      158 GETTABLEKS                       R27 R22 K40 ["Standard"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R27
      162 SETTABLEKS                       R27 R26 K35 ["variant"]
      164 LOADB                            R27 0
      165 SETTABLEKS                       R27 R26 K36 ["isMenuOpen"]
      167 LOADK                            R27 K41 [""]
      168 SETTABLEKS                       R27 R26 K37 ["placeholder"]
      170 DUPCLOSURE                       R27 K42 [PROTO_2]
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R26
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R18
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R16
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R24
      189 CAPTURE                          VAL R25
      190 GETTABLEKS                       R28 R2 K43 ["memo"]
      192 GETTABLEKS                       R29 R2 K44 ["forwardRef"]
      194 MOVE                             R30 R27
      195 CALL                             R29 1 -1
      196 CALL                             R28 -1 -1
      197 RETURN                           R28 -1
