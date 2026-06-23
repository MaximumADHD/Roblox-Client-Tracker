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
       18 DUPTABLE                         R4 K18 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R6 R6 K19 ["FoundationDropdownSelectionProps"]
       22 JUMPIFNOT                        R6 ; [+10]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K2 ["isDisabled"]
       26 JUMPIFNOT                        R6 ; [+2]
       27 LOADB                            R5 0
       28 JUMP                             ; [+8]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K13 ["Selectable"]
       32 JUMP                             ; [+4]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K2 ["isDisabled"]
       36 NOT                              R5 R6
       37 SETTABLEKS                       R5 R4 K13 ["Selectable"]
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K19 ["FoundationDropdownSelectionProps"]
       42 JUMPIFNOT                        R6 ; [+4]
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R5 R5 K14 ["NextSelectionUp"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 SETTABLEKS                       R5 R4 K14 ["NextSelectionUp"]
       50 GETUPVAL                         R6 4
       51 GETTABLEKS                       R6 R6 K19 ["FoundationDropdownSelectionProps"]
       53 JUMPIFNOT                        R6 ; [+4]
       54 GETUPVAL                         R5 3
       55 GETTABLEKS                       R5 R5 K15 ["NextSelectionDown"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R5
       59 SETTABLEKS                       R5 R4 K15 ["NextSelectionDown"]
       61 GETUPVAL                         R6 4
       62 GETTABLEKS                       R6 R6 K19 ["FoundationDropdownSelectionProps"]
       64 JUMPIFNOT                        R6 ; [+4]
       65 GETUPVAL                         R5 3
       66 GETTABLEKS                       R5 R5 K16 ["NextSelectionLeft"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R5
       70 SETTABLEKS                       R5 R4 K16 ["NextSelectionLeft"]
       72 GETUPVAL                         R6 4
       73 GETTABLEKS                       R6 R6 K19 ["FoundationDropdownSelectionProps"]
       75 JUMPIFNOT                        R6 ; [+4]
       76 GETUPVAL                         R5 3
       77 GETTABLEKS                       R5 R5 K17 ["NextSelectionRight"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R5
       81 SETTABLEKS                       R5 R4 K17 ["NextSelectionRight"]
       83 SETTABLEKS                       R4 R3 K4 ["selection"]
       85 GETUPVAL                         R4 5
       86 SETTABLEKS                       R4 R3 K5 ["cursor"]
       88 DUPTABLE                         R4 K21 [{"affordance"}]
       89 GETUPVAL                         R5 6
       90 GETTABLEKS                       R5 R5 K22 ["None"]
       92 SETTABLEKS                       R5 R4 K20 ["affordance"]
       94 SETTABLEKS                       R4 R3 K6 ["stateLayer"]
       96 GETUPVAL                         R5 4
       97 GETTABLEKS                       R5 R5 K23 ["FoundationDropdownVariant"]
       99 JUMPIFNOT                        R5 ; [+43]
      100 GETUPVAL                         R5 7
      101 GETTABLEKS                       R5 R5 K24 ["container"]
      103 GETTABLEKS                       R5 R5 K25 ["bgStyle"]
      105 JUMPIFNOT                        R5 ; [+37]
      106 DUPTABLE                         R4 K28 [{"Color3", "Transparency"}]
      107 GETUPVAL                         R5 7
      108 GETTABLEKS                       R5 R5 K24 ["container"]
      110 GETTABLEKS                       R5 R5 K25 ["bgStyle"]
      112 GETTABLEKS                       R5 R5 K26 ["Color3"]
      114 SETTABLEKS                       R5 R4 K26 ["Color3"]
      116 GETUPVAL                         R6 3
      117 GETTABLEKS                       R6 R6 K2 ["isDisabled"]
      119 JUMPIFNOT                        R6 ; [+13]
      120 GETUPVAL                         R5 8
      121 GETUPVAL                         R6 7
      122 GETTABLEKS                       R6 R6 K24 ["container"]
      124 GETTABLEKS                       R6 R6 K25 ["bgStyle"]
      126 GETTABLEKS                       R6 R6 K27 ["Transparency"]
      128 GETUPVAL                         R7 9
      129 GETTABLEKS                       R7 R7 K29 ["DISABLED_TRANSPARENCY"]
      131 CALL                             R5 2 1
      132 JUMP                             ; [+7]
      133 GETUPVAL                         R5 7
      134 GETTABLEKS                       R5 R5 K24 ["container"]
      136 GETTABLEKS                       R5 R5 K25 ["bgStyle"]
      138 GETTABLEKS                       R5 R5 K27 ["Transparency"]
      140 SETTABLEKS                       R5 R4 K27 ["Transparency"]
      142 JUMP                             ; [+1]
      143 LOADNIL                          R4
      144 SETTABLEKS                       R4 R3 K7 ["backgroundStyle"]
      146 GETUPVAL                         R5 4
      147 GETTABLEKS                       R5 R5 K23 ["FoundationDropdownVariant"]
      149 JUMPIFNOT                        R5 ; [+54]
      150 GETUPVAL                         R5 7
      151 GETTABLEKS                       R5 R5 K24 ["container"]
      153 GETTABLEKS                       R5 R5 K30 ["strokeStyle"]
      155 JUMPIFNOT                        R5 ; [+48]
      156 DUPTABLE                         R4 K34 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      157 GETUPVAL                         R5 7
      158 GETTABLEKS                       R5 R5 K24 ["container"]
      160 GETTABLEKS                       R5 R5 K30 ["strokeStyle"]
      162 GETTABLEKS                       R5 R5 K26 ["Color3"]
      164 SETTABLEKS                       R5 R4 K31 ["Color"]
      166 GETUPVAL                         R6 3
      167 GETTABLEKS                       R6 R6 K2 ["isDisabled"]
      169 JUMPIFNOT                        R6 ; [+13]
      170 GETUPVAL                         R5 8
      171 GETUPVAL                         R6 7
      172 GETTABLEKS                       R6 R6 K24 ["container"]
      174 GETTABLEKS                       R6 R6 K30 ["strokeStyle"]
      176 GETTABLEKS                       R6 R6 K27 ["Transparency"]
      178 GETUPVAL                         R7 9
      179 GETTABLEKS                       R7 R7 K29 ["DISABLED_TRANSPARENCY"]
      181 CALL                             R5 2 1
      182 JUMP                             ; [+7]
      183 GETUPVAL                         R5 7
      184 GETTABLEKS                       R5 R5 K24 ["container"]
      186 GETTABLEKS                       R5 R5 K30 ["strokeStyle"]
      188 GETTABLEKS                       R5 R5 K27 ["Transparency"]
      190 SETTABLEKS                       R5 R4 K27 ["Transparency"]
      192 GETUPVAL                         R5 7
      193 GETTABLEKS                       R5 R5 K24 ["container"]
      195 GETTABLEKS                       R5 R5 K35 ["strokeThickness"]
      197 SETTABLEKS                       R5 R4 K32 ["Thickness"]
      199 GETIMPORT                        R5 K38 [Enum.BorderStrokePosition.Inner]
      201 SETTABLEKS                       R5 R4 K33 ["BorderStrokePosition"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R4
      205 SETTABLEKS                       R4 R3 K8 ["stroke"]
      207 GETUPVAL                         R4 7
      208 GETTABLEKS                       R4 R4 K24 ["container"]
      210 GETTABLEKS                       R4 R4 K9 ["tag"]
      212 SETTABLEKS                       R4 R3 K9 ["tag"]
      214 GETUPVAL                         R4 3
      215 GETTABLEKS                       R4 R4 K39 ["inputRef"]
      217 SETTABLEKS                       R4 R3 K10 ["ref"]
      219 LOADK                            R5 K40 ["%*--control"]
      220 GETUPVAL                         R7 3
      221 GETTABLEKS                       R7 R7 K11 ["testId"]
      223 NAMECALL                         R5 R5 K41 ["format"]
      225 CALL                             R5 2 1
      226 MOVE                             R4 R5
      227 SETTABLEKS                       R4 R3 K11 ["testId"]
      229 DUPTABLE                         R4 K44 [{"Text", "Arrow"}]
      230 GETUPVAL                         R5 0
      231 GETTABLEKS                       R5 R5 K0 ["createElement"]
      233 GETUPVAL                         R6 10
      234 DUPTABLE                         R7 K46 [{"LayoutOrder", "Text", "tag"}]
      235 LOADN                            R8 1
      236 SETTABLEKS                       R8 R7 K45 ["LayoutOrder"]
      238 GETUPVAL                         R9 3
      239 GETTABLEKS                       R9 R9 K47 ["item"]
      241 JUMPIFNOT                        R9 ; [+6]
      242 GETUPVAL                         R8 3
      243 GETTABLEKS                       R8 R8 K47 ["item"]
      245 GETTABLEKS                       R8 R8 K48 ["text"]
      247 JUMP                             ; [+3]
      248 GETUPVAL                         R8 3
      249 GETTABLEKS                       R8 R8 K49 ["placeholder"]
      251 SETTABLEKS                       R8 R7 K42 ["Text"]
      253 GETUPVAL                         R8 7
      254 GETTABLEKS                       R8 R8 K48 ["text"]
      256 GETTABLEKS                       R8 R8 K9 ["tag"]
      258 SETTABLEKS                       R8 R7 K9 ["tag"]
      260 CALL                             R5 2 1
      261 SETTABLEKS                       R5 R4 K42 ["Text"]
      263 GETUPVAL                         R5 0
      264 GETTABLEKS                       R5 R5 K0 ["createElement"]
      266 GETUPVAL                         R6 11
      267 DUPTABLE                         R7 K53 [{"LayoutOrder", "name", "size", "style", "tag", "testId"}]
      268 LOADN                            R8 2
      269 SETTABLEKS                       R8 R7 K45 ["LayoutOrder"]
      271 GETUPVAL                         R9 3
      272 GETTABLEKS                       R9 R9 K54 ["isMenuOpen"]
      274 JUMPIFNOT                        R9 ; [+2]
      275 GETUPVAL                         R8 12
      276 JUMP                             ; [+1]
      277 GETUPVAL                         R8 13
      278 SETTABLEKS                       R8 R7 K50 ["name"]
      280 GETUPVAL                         R8 7
      281 GETTABLEKS                       R8 R8 K55 ["arrow"]
      283 GETTABLEKS                       R8 R8 K51 ["size"]
      285 SETTABLEKS                       R8 R7 K51 ["size"]
      287 GETUPVAL                         R9 3
      288 GETTABLEKS                       R9 R9 K2 ["isDisabled"]
      290 JUMPIFNOT                        R9 ; [+8]
      291 GETUPVAL                         R8 14
      292 GETTABLEKS                       R8 R8 K31 ["Color"]
      294 GETTABLEKS                       R8 R8 K56 ["Content"]
      296 GETTABLEKS                       R8 R8 K57 ["Muted"]
      298 JUMP                             ; [+1]
      299 LOADNIL                          R8
      300 SETTABLEKS                       R8 R7 K52 ["style"]
      302 GETUPVAL                         R8 7
      303 GETTABLEKS                       R8 R8 K48 ["text"]
      305 GETTABLEKS                       R8 R8 K9 ["tag"]
      307 SETTABLEKS                       R8 R7 K9 ["tag"]
      309 LOADK                            R9 K58 ["%*--arrow"]
      310 GETUPVAL                         R11 3
      311 GETTABLEKS                       R11 R11 K11 ["testId"]
      313 NAMECALL                         R9 R9 K41 ["format"]
      315 CALL                             R9 2 1
      316 MOVE                             R8 R9
      317 SETTABLEKS                       R8 R7 K11 ["testId"]
      319 CALL                             R5 2 1
      320 SETTABLEKS                       R5 R4 K43 ["Arrow"]
      322 CALL                             R1 3 -1
      323 RETURN                           R1 -1

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
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          VAL R8
      124 CAPTURE                          UPVAL U12
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
      154 DUPTABLE                         R26 K39 [{"variant", "isMenuOpen", "placeholder", "Selectable"}]
      155 GETTABLEKS                       R28 R12 K40 ["FoundationDropdownVariant"]
      157 JUMPIFNOT                        R28 ; [+3]
      158 GETTABLEKS                       R27 R22 K41 ["Standard"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R27
      162 SETTABLEKS                       R27 R26 K35 ["variant"]
      164 LOADB                            R27 0
      165 SETTABLEKS                       R27 R26 K36 ["isMenuOpen"]
      167 LOADK                            R27 K42 [""]
      168 SETTABLEKS                       R27 R26 K37 ["placeholder"]
      170 GETTABLEKS                       R28 R12 K43 ["FoundationDropdownSelectionProps"]
      172 JUMPIFNOT                        R28 ; [+2]
      173 LOADB                            R27 1
      174 JUMP                             ; [+1]
      175 LOADNIL                          R27
      176 SETTABLEKS                       R27 R26 K38 ["Selectable"]
      178 DUPCLOSURE                       R27 K44 [PROTO_2]
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R26
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R19
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R24
      197 CAPTURE                          VAL R25
      198 GETTABLEKS                       R28 R2 K45 ["memo"]
      200 GETTABLEKS                       R29 R2 K46 ["forwardRef"]
      202 MOVE                             R30 R27
      203 CALL                             R29 1 -1
      204 CALL                             R28 -1 -1
      205 RETURN                           R28 -1
