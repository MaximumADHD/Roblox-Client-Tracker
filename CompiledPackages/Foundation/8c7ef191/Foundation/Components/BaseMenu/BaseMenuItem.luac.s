PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["icon"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["setHasLeading"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["setHasLeading"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["onActivated"]
       11 JUMPIF                           R0 ; [+6]
       12 GETUPVAL                         R1 2
       13 LOADK                            R3 K1 ["Menu should have either onActivated on itself or on all of its children"]
       14 NAMECALL                         R1 R1 K2 ["warning"]
       16 CALL                             R1 2 0
       17 DUPCLOSURE                       R0 K3 [PROTO_1]
       18 MOVE                             R1 R0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K4 ["id"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["Migration"]
        3 GETTABLEKS                       R1 R2 K0 ["uiblox"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["icon"]
        8 GETTABLE                         R0 R1 R2
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useContext"]
        7 GETUPVAL                         R4 3
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R3 K1 ["hasLeading"]
       11 GETUPVAL                         R5 4
       12 CALL                             R5 0 1
       13 GETTABLEKS                       R6 R2 K2 ["size"]
       15 JUMPIF                           R6 ; [+2]
       16 GETTABLEKS                       R6 R3 K2 ["size"]
       18 GETUPVAL                         R7 5
       19 MOVE                             R8 R5
       20 MOVE                             R9 R6
       21 GETTABLEKS                       R10 R2 K3 ["isChecked"]
       23 CALL                             R7 3 1
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K4 ["useEffect"]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R10 0 2
       32 GETTABLEKS                       R11 R2 K5 ["icon"]
       34 GETTABLEKS                       R12 R3 K6 ["setHasLeading"]
       36 SETLIST                          R10 R11 2 [1]
       38 CALL                             R8 2 0
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       42 NEWCLOSURE                       R9 P1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U6
       46 NEWTABLE                         R10 0 2
       48 GETTABLEKS                       R11 R2 K8 ["onActivated"]
       50 GETTABLEKS                       R12 R3 K8 ["onActivated"]
       52 SETLIST                          R10 R11 2 [1]
       54 CALL                             R8 2 1
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R9 R9 K9 ["useMemo"]
       58 NEWCLOSURE                       R10 P2
       59 CAPTURE                          VAL R5
       60 NEWTABLE                         R11 0 1
       62 MOVE                             R12 R5
       63 SETLIST                          R11 R12 1 [1]
       65 CALL                             R9 2 1
       66 GETUPVAL                         R10 2
       67 GETTABLEKS                       R10 R10 K9 ["useMemo"]
       69 NEWCLOSURE                       R11 P3
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          VAL R2
       72 NEWTABLE                         R12 0 1
       74 GETTABLEKS                       R13 R2 K5 ["icon"]
       76 SETLIST                          R12 R13 1 [1]
       78 CALL                             R10 2 1
       79 GETUPVAL                         R11 2
       80 GETTABLEKS                       R11 R11 K10 ["createElement"]
       82 GETUPVAL                         R12 8
       83 GETUPVAL                         R13 9
       84 MOVE                             R14 R2
       85 DUPTABLE                         R15 K17 [{"GroupTransparency", "isDisabled", "onActivated", "selection", "cursor", "tag", "ref"}]
       86 GETTABLEKS                       R17 R2 K12 ["isDisabled"]
       88 JUMPIFNOT                        R17 ; [+4]
       89 GETUPVAL                         R16 10
       90 GETTABLEKS                       R16 R16 K18 ["DISABLED_TRANSPARENCY"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R16
       94 SETTABLEKS                       R16 R15 K11 ["GroupTransparency"]
       96 GETTABLEKS                       R16 R2 K12 ["isDisabled"]
       98 SETTABLEKS                       R16 R15 K12 ["isDisabled"]
      100 SETTABLEKS                       R8 R15 K8 ["onActivated"]
      102 DUPTABLE                         R16 K20 [{"Selectable"}]
      103 GETTABLEKS                       R18 R2 K12 ["isDisabled"]
      105 NOT                              R17 R18
      106 SETTABLEKS                       R17 R16 K19 ["Selectable"]
      108 SETTABLEKS                       R16 R15 K13 ["selection"]
      110 SETTABLEKS                       R9 R15 K14 ["cursor"]
      112 GETTABLEKS                       R16 R7 K21 ["container"]
      114 GETTABLEKS                       R16 R16 K15 ["tag"]
      116 SETTABLEKS                       R16 R15 K15 ["tag"]
      118 SETTABLEKS                       R1 R15 K16 ["ref"]
      120 CALL                             R13 2 1
      121 DUPTABLE                         R14 K25 [{"Icon", "Text", "Check"}]
      122 GETTABLEKS                       R16 R2 K5 ["icon"]
      124 JUMPIF                           R16 ; [+1]
      125 JUMPIFNOT                        R4 ; [+78]
      126 GETTABLEKS                       R16 R2 K5 ["icon"]
      128 JUMPIFNOT                        R16 ; [+55]
      129 GETUPVAL                         R16 11
      130 GETTABLEKS                       R17 R2 K5 ["icon"]
      132 CALL                             R16 1 1
      133 JUMPIFNOT                        R16 ; [+50]
      134 GETUPVAL                         R15 2
      135 GETTABLEKS                       R15 R15 K10 ["createElement"]
      137 GETUPVAL                         R16 8
      138 DUPTABLE                         R17 K27 [{"LayoutOrder", "tag"}]
      139 LOADN                            R18 1
      140 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      142 LOADK                            R19 K28 ["%* align-x-center align-y-center"]
      143 GETTABLEKS                       R21 R7 K5 ["icon"]
      145 GETTABLEKS                       R21 R21 K15 ["tag"]
      147 NAMECALL                         R19 R19 K29 ["format"]
      149 CALL                             R19 2 1
      150 MOVE                             R18 R19
      151 SETTABLEKS                       R18 R17 K15 ["tag"]
      153 DUPTABLE                         R18 K30 [{"Icon"}]
      154 GETUPVAL                         R19 2
      155 GETTABLEKS                       R19 R19 K10 ["createElement"]
      157 GETUPVAL                         R20 12
      158 DUPTABLE                         R21 K33 [{"name", "style", "size"}]
      159 JUMPIFNOT                        R10 ; [+3]
      160 GETTABLEKS                       R22 R10 K31 ["name"]
      162 JUMP                             ; [+2]
      163 GETTABLEKS                       R22 R2 K5 ["icon"]
      165 SETTABLEKS                       R22 R21 K31 ["name"]
      167 GETTABLEKS                       R22 R7 K5 ["icon"]
      169 GETTABLEKS                       R22 R22 K32 ["style"]
      171 SETTABLEKS                       R22 R21 K32 ["style"]
      173 GETTABLEKS                       R22 R7 K5 ["icon"]
      175 GETTABLEKS                       R22 R22 K2 ["size"]
      177 SETTABLEKS                       R22 R21 K2 ["size"]
      179 CALL                             R19 2 1
      180 SETTABLEKS                       R19 R18 K22 ["Icon"]
      182 CALL                             R15 3 1
      183 JUMP                             ; [+21]
      184 GETUPVAL                         R15 2
      185 GETTABLEKS                       R15 R15 K10 ["createElement"]
      187 GETUPVAL                         R16 13
      188 DUPTABLE                         R17 K35 [{"LayoutOrder", "Image", "tag"}]
      189 LOADN                            R18 1
      190 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      192 GETTABLEKS                       R18 R2 K5 ["icon"]
      194 SETTABLEKS                       R18 R17 K34 ["Image"]
      196 GETTABLEKS                       R18 R7 K5 ["icon"]
      198 GETTABLEKS                       R18 R18 K15 ["tag"]
      200 SETTABLEKS                       R18 R17 K15 ["tag"]
      202 CALL                             R15 2 1
      203 JUMP                             ; [+1]
      204 LOADNIL                          R15
      205 SETTABLEKS                       R15 R14 K22 ["Icon"]
      207 GETUPVAL                         R15 2
      208 GETTABLEKS                       R15 R15 K10 ["createElement"]
      210 GETUPVAL                         R16 14
      211 DUPTABLE                         R17 K36 [{"LayoutOrder", "Text", "tag"}]
      212 LOADN                            R18 2
      213 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      215 GETTABLEKS                       R18 R2 K37 ["text"]
      217 SETTABLEKS                       R18 R17 K23 ["Text"]
      219 GETTABLEKS                       R18 R7 K37 ["text"]
      221 GETTABLEKS                       R18 R18 K15 ["tag"]
      223 SETTABLEKS                       R18 R17 K15 ["tag"]
      225 CALL                             R15 2 1
      226 SETTABLEKS                       R15 R14 K23 ["Text"]
      228 GETTABLEKS                       R16 R2 K3 ["isChecked"]
      230 JUMPIFNOT                        R16 ; [+70]
      231 GETUPVAL                         R16 15
      232 GETTABLEKS                       R16 R16 K38 ["FoundationMigrateIconNames"]
      234 JUMPIFNOT                        R16 ; [+38]
      235 GETUPVAL                         R15 2
      236 GETTABLEKS                       R15 R15 K10 ["createElement"]
      238 GETUPVAL                         R16 12
      239 DUPTABLE                         R17 K40 [{"LayoutOrder", "name", "style", "size", "testId"}]
      240 LOADN                            R18 3
      241 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      243 GETUPVAL                         R18 7
      244 GETTABLEKS                       R18 R18 K22 ["Icon"]
      246 GETTABLEKS                       R18 R18 K24 ["Check"]
      248 SETTABLEKS                       R18 R17 K31 ["name"]
      250 GETTABLEKS                       R18 R7 K41 ["check"]
      252 GETTABLEKS                       R18 R18 K32 ["style"]
      254 SETTABLEKS                       R18 R17 K32 ["style"]
      256 GETTABLEKS                       R18 R7 K41 ["check"]
      258 GETTABLEKS                       R18 R18 K2 ["size"]
      260 SETTABLEKS                       R18 R17 K2 ["size"]
      262 LOADK                            R19 K42 ["%*--checkmark"]
      263 GETTABLEKS                       R21 R2 K39 ["testId"]
      265 NAMECALL                         R19 R19 K29 ["format"]
      267 CALL                             R19 2 1
      268 MOVE                             R18 R19
      269 SETTABLEKS                       R18 R17 K39 ["testId"]
      271 CALL                             R15 2 1
      272 JUMP                             ; [+29]
      273 GETUPVAL                         R15 2
      274 GETTABLEKS                       R15 R15 K10 ["createElement"]
      276 GETUPVAL                         R16 13
      277 DUPTABLE                         R17 K43 [{"LayoutOrder", "Image", "tag", "testId"}]
      278 LOADN                            R18 3
      279 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      281 LOADK                            R18 K44 ["icons/status/success"]
      282 SETTABLEKS                       R18 R17 K34 ["Image"]
      284 GETTABLEKS                       R18 R7 K41 ["check"]
      286 GETTABLEKS                       R18 R18 K15 ["tag"]
      288 SETTABLEKS                       R18 R17 K15 ["tag"]
      290 LOADK                            R19 K42 ["%*--checkmark"]
      291 GETTABLEKS                       R21 R2 K39 ["testId"]
      293 NAMECALL                         R19 R19 K29 ["format"]
      295 CALL                             R19 2 1
      296 MOVE                             R18 R19
      297 SETTABLEKS                       R18 R17 K39 ["testId"]
      299 CALL                             R15 2 1
      300 JUMP                             ; [+1]
      301 LOADNIL                          R15
      302 SETTABLEKS                       R15 R14 K24 ["Check"]
      304 CALL                             R11 3 -1
      305 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Utility"]
       30 GETTABLEKS                       R6 R6 K11 ["iconMigrationUtils"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R5 K12 ["isBuilderOrMigratedIcon"]
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R0 K9 ["Utility"]
       39 GETTABLEKS                       R8 R8 K13 ["Logger"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Constants"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R0 K15 ["Components"]
       51 GETTABLEKS                       R10 R10 K16 ["View"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R11 R0 K15 ["Components"]
       58 GETTABLEKS                       R11 R11 K17 ["Image"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R12 R0 K15 ["Components"]
       65 GETTABLEKS                       R12 R12 K18 ["Icon"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R13 R0 K15 ["Components"]
       72 GETTABLEKS                       R13 R13 K19 ["Text"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R0 K15 ["Components"]
       79 GETTABLEKS                       R14 R14 K20 ["Types"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R0 K21 ["Providers"]
       86 GETTABLEKS                       R15 R15 K22 ["Style"]
       88 GETTABLEKS                       R15 R15 K23 ["useTokens"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K6 [require]
       93 GETTABLEKS                       R16 R0 K9 ["Utility"]
       95 GETTABLEKS                       R16 R16 K24 ["withDefaults"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R17 R0 K9 ["Utility"]
      102 GETTABLEKS                       R17 R17 K25 ["withCommonProps"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R18 R0 K26 ["Enums"]
      109 GETTABLEKS                       R18 R18 K27 ["ControlState"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R19 R0 K26 ["Enums"]
      116 GETTABLEKS                       R19 R19 K28 ["InputSize"]
      118 CALL                             R18 1 1
      119 GETIMPORT                        R19 K6 [require]
      121 GETIMPORT                        R20 K1 [script]
      123 GETTABLEKS                       R20 R20 K4 ["Parent"]
      125 GETTABLEKS                       R20 R20 K29 ["useBaseMenuItemVariants"]
      127 CALL                             R19 1 1
      128 GETIMPORT                        R20 K6 [require]
      130 GETIMPORT                        R21 K1 [script]
      132 GETTABLEKS                       R21 R21 K4 ["Parent"]
      134 GETTABLEKS                       R21 R21 K30 ["BaseMenuContext"]
      136 CALL                             R20 1 1
      137 DUPTABLE                         R21 K32 [{"isChecked"}]
      138 LOADB                            R22 0
      139 SETTABLEKS                       R22 R21 K31 ["isChecked"]
      141 DUPCLOSURE                       R22 K33 [PROTO_5]
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R21
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R4
      158 GETTABLEKS                       R23 R3 K34 ["memo"]
      160 GETTABLEKS                       R24 R3 K35 ["forwardRef"]
      162 MOVE                             R25 R22
      163 CALL                             R24 1 -1
      164 CALL                             R23 -1 -1
      165 RETURN                           R23 -1
