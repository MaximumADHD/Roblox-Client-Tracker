PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["icon"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["setHasLeading"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["setHasLeading"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onActivated"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onActivated"]
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K0 ["onActivated"]
       11 JUMPIF                           R0 ; [+6]
       12 GETUPVAL                         R1 2
       13 LOADK                            R3 K1 ["Menu should have either onActivated on itself or on all of its children"]
       14 NAMECALL                         R1 R1 K2 ["warning"]
       16 CALL                             R1 2 0
       17 DUPCLOSURE                       R0 K3 [PROTO_1]
       18 MOVE                             R1 R0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K4 ["id"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K7 ["Radius"]
        7 GETTABLEKS                       R3 R4 K8 ["Small"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K9 ["Size"]
       15 GETTABLEKS                       R1 R2 K10 ["Size_200"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K11 ["Stroke"]
       22 GETTABLEKS                       R1 R2 K12 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K1 ["Migration"]
        3 GETTABLEKS                       R1 R2 K0 ["uiblox"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["icon"]
        8 GETTABLE                         R0 R1 R2
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useContext"]
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
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R8 R9 K4 ["useEffect"]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R10 0 2
       32 GETTABLEKS                       R11 R2 K5 ["icon"]
       34 GETTABLEKS                       R12 R3 K6 ["setHasLeading"]
       36 SETLIST                          R10 R11 2 [1]
       38 CALL                             R8 2 0
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R8 R9 K7 ["useCallback"]
       42 NEWCLOSURE                       R9 P1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U6
       46 NEWTABLE                         R10 0 2
       48 GETTABLEKS                       R11 R2 K8 ["onActivated"]
       50 GETTABLEKS                       R12 R3 K8 ["onActivated"]
       52 SETLIST                          R10 R11 2 [1]
       54 CALL                             R8 2 1
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R9 R10 K9 ["useMemo"]
       58 NEWCLOSURE                       R10 P2
       59 CAPTURE                          VAL R5
       60 NEWTABLE                         R11 0 1
       62 MOVE                             R12 R5
       63 SETLIST                          R11 R12 1 [1]
       65 CALL                             R9 2 1
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R10 R11 K9 ["useMemo"]
       69 NEWCLOSURE                       R11 P3
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          VAL R2
       72 NEWTABLE                         R12 0 1
       74 GETTABLEKS                       R13 R2 K5 ["icon"]
       76 SETLIST                          R12 R13 1 [1]
       78 CALL                             R10 2 1
       79 GETUPVAL                         R12 2
       80 GETTABLEKS                       R11 R12 K10 ["createElement"]
       82 GETUPVAL                         R12 8
       83 GETUPVAL                         R13 9
       84 MOVE                             R14 R2
       85 DUPTABLE                         R15 K17 [{"GroupTransparency", "isDisabled", "onActivated", "selection", "cursor", "tag", "ref"}]
       86 GETTABLEKS                       R17 R2 K12 ["isDisabled"]
       88 JUMPIFNOT                        R17 ; [+2]
       89 LOADK                            R16 K18 [0.5]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R16
       92 SETTABLEKS                       R16 R15 K11 ["GroupTransparency"]
       94 GETTABLEKS                       R16 R2 K12 ["isDisabled"]
       96 SETTABLEKS                       R16 R15 K12 ["isDisabled"]
       98 SETTABLEKS                       R8 R15 K8 ["onActivated"]
      100 DUPTABLE                         R16 K20 [{"Selectable"}]
      101 GETTABLEKS                       R18 R2 K12 ["isDisabled"]
      103 NOT                              R17 R18
      104 SETTABLEKS                       R17 R16 K19 ["Selectable"]
      106 SETTABLEKS                       R16 R15 K13 ["selection"]
      108 SETTABLEKS                       R9 R15 K14 ["cursor"]
      110 GETTABLEKS                       R17 R7 K21 ["container"]
      112 GETTABLEKS                       R16 R17 K15 ["tag"]
      114 SETTABLEKS                       R16 R15 K15 ["tag"]
      116 SETTABLEKS                       R1 R15 K16 ["ref"]
      118 CALL                             R13 2 1
      119 DUPTABLE                         R14 K25 [{"Icon", "Text", "Check"}]
      120 GETTABLEKS                       R16 R2 K5 ["icon"]
      122 JUMPIF                           R16 ; [+1]
      123 JUMPIFNOT                        R4 ; [+78]
      124 GETTABLEKS                       R16 R2 K5 ["icon"]
      126 JUMPIFNOT                        R16 ; [+55]
      127 GETUPVAL                         R16 10
      128 GETTABLEKS                       R17 R2 K5 ["icon"]
      130 CALL                             R16 1 1
      131 JUMPIFNOT                        R16 ; [+50]
      132 GETUPVAL                         R16 2
      133 GETTABLEKS                       R15 R16 K10 ["createElement"]
      135 GETUPVAL                         R16 8
      136 DUPTABLE                         R17 K27 [{"LayoutOrder", "tag"}]
      137 LOADN                            R18 1
      138 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      140 LOADK                            R19 K28 ["%* align-x-center align-y-center"]
      141 GETTABLEKS                       R22 R7 K5 ["icon"]
      143 GETTABLEKS                       R21 R22 K15 ["tag"]
      145 NAMECALL                         R19 R19 K29 ["format"]
      147 CALL                             R19 2 1
      148 MOVE                             R18 R19
      149 SETTABLEKS                       R18 R17 K15 ["tag"]
      151 DUPTABLE                         R18 K30 [{"Icon"}]
      152 GETUPVAL                         R20 2
      153 GETTABLEKS                       R19 R20 K10 ["createElement"]
      155 GETUPVAL                         R20 11
      156 DUPTABLE                         R21 K33 [{"name", "style", "size"}]
      157 JUMPIFNOT                        R10 ; [+3]
      158 GETTABLEKS                       R22 R10 K31 ["name"]
      160 JUMP                             ; [+2]
      161 GETTABLEKS                       R22 R2 K5 ["icon"]
      163 SETTABLEKS                       R22 R21 K31 ["name"]
      165 GETTABLEKS                       R23 R7 K5 ["icon"]
      167 GETTABLEKS                       R22 R23 K32 ["style"]
      169 SETTABLEKS                       R22 R21 K32 ["style"]
      171 GETTABLEKS                       R23 R7 K5 ["icon"]
      173 GETTABLEKS                       R22 R23 K2 ["size"]
      175 SETTABLEKS                       R22 R21 K2 ["size"]
      177 CALL                             R19 2 1
      178 SETTABLEKS                       R19 R18 K22 ["Icon"]
      180 CALL                             R15 3 1
      181 JUMP                             ; [+21]
      182 GETUPVAL                         R16 2
      183 GETTABLEKS                       R15 R16 K10 ["createElement"]
      185 GETUPVAL                         R16 12
      186 DUPTABLE                         R17 K35 [{"LayoutOrder", "Image", "tag"}]
      187 LOADN                            R18 1
      188 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      190 GETTABLEKS                       R18 R2 K5 ["icon"]
      192 SETTABLEKS                       R18 R17 K34 ["Image"]
      194 GETTABLEKS                       R19 R7 K5 ["icon"]
      196 GETTABLEKS                       R18 R19 K15 ["tag"]
      198 SETTABLEKS                       R18 R17 K15 ["tag"]
      200 CALL                             R15 2 1
      201 JUMP                             ; [+1]
      202 LOADNIL                          R15
      203 SETTABLEKS                       R15 R14 K22 ["Icon"]
      205 GETUPVAL                         R16 2
      206 GETTABLEKS                       R15 R16 K10 ["createElement"]
      208 GETUPVAL                         R16 13
      209 DUPTABLE                         R17 K36 [{"LayoutOrder", "Text", "tag"}]
      210 LOADN                            R18 2
      211 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      213 GETTABLEKS                       R18 R2 K37 ["text"]
      215 SETTABLEKS                       R18 R17 K23 ["Text"]
      217 GETTABLEKS                       R19 R7 K37 ["text"]
      219 GETTABLEKS                       R18 R19 K15 ["tag"]
      221 SETTABLEKS                       R18 R17 K15 ["tag"]
      223 CALL                             R15 2 1
      224 SETTABLEKS                       R15 R14 K23 ["Text"]
      226 GETTABLEKS                       R16 R2 K3 ["isChecked"]
      228 JUMPIFNOT                        R16 ; [+52]
      229 GETUPVAL                         R17 14
      230 GETTABLEKS                       R16 R17 K38 ["FoundationMigrateIconNames"]
      232 JUMPIFNOT                        R16 ; [+29]
      233 GETUPVAL                         R16 2
      234 GETTABLEKS                       R15 R16 K10 ["createElement"]
      236 GETUPVAL                         R16 11
      237 DUPTABLE                         R17 K39 [{"LayoutOrder", "name", "style", "size"}]
      238 LOADN                            R18 3
      239 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      241 GETUPVAL                         R20 7
      242 GETTABLEKS                       R19 R20 K22 ["Icon"]
      244 GETTABLEKS                       R18 R19 K24 ["Check"]
      246 SETTABLEKS                       R18 R17 K31 ["name"]
      248 GETTABLEKS                       R19 R7 K40 ["check"]
      250 GETTABLEKS                       R18 R19 K32 ["style"]
      252 SETTABLEKS                       R18 R17 K32 ["style"]
      254 GETTABLEKS                       R19 R7 K40 ["check"]
      256 GETTABLEKS                       R18 R19 K2 ["size"]
      258 SETTABLEKS                       R18 R17 K2 ["size"]
      260 CALL                             R15 2 1
      261 JUMP                             ; [+20]
      262 GETUPVAL                         R16 2
      263 GETTABLEKS                       R15 R16 K10 ["createElement"]
      265 GETUPVAL                         R16 12
      266 DUPTABLE                         R17 K35 [{"LayoutOrder", "Image", "tag"}]
      267 LOADN                            R18 3
      268 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      270 LOADK                            R18 K41 ["icons/status/success"]
      271 SETTABLEKS                       R18 R17 K34 ["Image"]
      273 GETTABLEKS                       R19 R7 K40 ["check"]
      275 GETTABLEKS                       R18 R19 K15 ["tag"]
      277 SETTABLEKS                       R18 R17 K15 ["tag"]
      279 CALL                             R15 2 1
      280 JUMP                             ; [+1]
      281 LOADNIL                          R15
      282 SETTABLEKS                       R15 R14 K24 ["Check"]
      284 CALL                             R11 3 -1
      285 RETURN                           R11 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Utility"]
       30 GETTABLEKS                       R6 R7 K11 ["iconMigrationUtils"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R5 K12 ["isBuilderOrMigratedIcon"]
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R9 R0 K9 ["Utility"]
       39 GETTABLEKS                       R8 R9 K13 ["Logger"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R10 R0 K14 ["Components"]
       46 GETTABLEKS                       R9 R10 K15 ["View"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K6 [require]
       51 GETTABLEKS                       R11 R0 K14 ["Components"]
       53 GETTABLEKS                       R10 R11 K16 ["Image"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R12 R0 K14 ["Components"]
       60 GETTABLEKS                       R11 R12 K17 ["Icon"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R13 R0 K14 ["Components"]
       67 GETTABLEKS                       R12 R13 K18 ["Text"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R14 R0 K14 ["Components"]
       74 GETTABLEKS                       R13 R14 K19 ["Types"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K6 [require]
       79 GETTABLEKS                       R16 R0 K20 ["Providers"]
       81 GETTABLEKS                       R15 R16 K21 ["Style"]
       83 GETTABLEKS                       R14 R15 K22 ["useTokens"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K6 [require]
       88 GETTABLEKS                       R16 R0 K9 ["Utility"]
       90 GETTABLEKS                       R15 R16 K23 ["withDefaults"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R17 R0 K9 ["Utility"]
       97 GETTABLEKS                       R16 R17 K24 ["withCommonProps"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R18 R0 K25 ["Enums"]
      104 GETTABLEKS                       R17 R18 K26 ["ControlState"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K6 [require]
      109 GETTABLEKS                       R19 R0 K25 ["Enums"]
      111 GETTABLEKS                       R18 R19 K27 ["InputSize"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETIMPORT                        R21 K1 [script]
      118 GETTABLEKS                       R20 R21 K4 ["Parent"]
      120 GETTABLEKS                       R19 R20 K28 ["useBaseMenuItemVariants"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETIMPORT                        R22 K1 [script]
      127 GETTABLEKS                       R21 R22 K4 ["Parent"]
      129 GETTABLEKS                       R20 R21 K29 ["BaseMenuContext"]
      131 CALL                             R19 1 1
      132 DUPTABLE                         R20 K31 [{"isChecked"}]
      133 LOADB                            R21 0
      134 SETTABLEKS                       R21 R20 K30 ["isChecked"]
      136 DUPCLOSURE                       R21 K32 [PROTO_5]
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R20
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R4
      152 GETTABLEKS                       R22 R3 K33 ["memo"]
      154 GETTABLEKS                       R23 R3 K34 ["forwardRef"]
      156 MOVE                             R24 R21
      157 CALL                             R23 1 -1
      158 CALL                             R22 -1 -1
      159 RETURN                           R22 -1
