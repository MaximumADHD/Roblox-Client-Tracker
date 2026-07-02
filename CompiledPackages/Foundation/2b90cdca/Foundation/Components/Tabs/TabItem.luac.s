PROTO_0:
        0 DUPTABLE                         R0 K4 [{[1], ["offset"] = 0, ["borderWidth"]}]
        1 GETIMPORT                        R1 K7 [UDim.new]
        3 LOADN                            R2 0
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["radius"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K8 ["Stroke"]
       11 GETTABLEKS                       R1 R1 K9 ["Thicker"]
       13 SETTABLEKS                       R1 R0 K3 ["borderWidth"]
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["icon"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["icon"]
       10 FASTCALL1                        TYPEOF R1 ; [+2]
       11 GETIMPORT                        R0 K2 [typeof]
       13 CALL                             R0 1 1
       14 JUMPIFNOTEQKS                    R0 K3 ["string"] ; [+15]
       16 DUPTABLE                         R0 K6 [{"name", "variant"}]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["icon"]
       20 SETTABLEKS                       R1 R0 K4 ["name"]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K7 ["IconVariant"]
       25 GETTABLEKS                       R1 R1 K8 ["Regular"]
       27 SETTABLEKS                       R1 R0 K5 ["variant"]
       29 RETURN                           R0 1
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K0 ["icon"]
       33 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R4 R0 K0 ["isActive"]
        4 JUMPIFNOT                        R4 ; [+7]
        5 GETTABLEKS                       R3 R2 K1 ["Color"]
        7 GETTABLEKS                       R3 R3 K2 ["Content"]
        9 GETTABLEKS                       R3 R3 K3 ["Default"]
       11 JUMP                             ; [+6]
       12 GETTABLEKS                       R3 R2 K1 ["Color"]
       14 GETTABLEKS                       R3 R3 K2 ["Content"]
       16 GETTABLEKS                       R3 R3 K4 ["Emphasis"]
       18 GETTABLEKS                       R5 R0 K5 ["fillBehavior"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K6 ["Fill"]
       23 JUMPIFEQ                         R5 R6 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 GETUPVAL                         R5 2
       28 MOVE                             R6 R2
       29 GETTABLEKS                       R7 R0 K7 ["size"]
       31 MOVE                             R8 R4
       32 CALL                             R5 3 1
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R2
       38 NEWTABLE                         R8 0 1
       40 MOVE                             R9 R2
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       47 NEWCLOSURE                       R8 P1
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U4
       50 NEWTABLE                         R9 0 1
       52 GETTABLEKS                       R10 R0 K9 ["icon"]
       54 SETLIST                          R9 R10 1 [1]
       56 CALL                             R7 2 1
       57 LOADNIL                          R8
       58 JUMPIFNOT                        R7 ; [+86]
       59 GETUPVAL                         R9 5
       60 GETTABLEKS                       R10 R7 K10 ["name"]
       62 CALL                             R9 1 1
       63 JUMPIFNOT                        R9 ; [+48]
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R9 R9 K11 ["createElement"]
       67 GETUPVAL                         R10 6
       68 DUPTABLE                         R11 K14 [{"name", "variant", "size", "style"}]
       69 GETUPVAL                         R13 7
       70 GETTABLEKS                       R14 R7 K10 ["name"]
       72 CALL                             R13 1 1
       73 JUMPIFNOT                        R13 ; [+7]
       74 GETUPVAL                         R13 8
       75 GETTABLEKS                       R14 R7 K10 ["name"]
       77 GETTABLE                         R12 R13 R14
       78 GETTABLEKS                       R12 R12 K10 ["name"]
       80 JUMP                             ; [+2]
       81 GETTABLEKS                       R12 R7 K10 ["name"]
       83 SETTABLEKS                       R12 R11 K10 ["name"]
       85 GETUPVAL                         R13 7
       86 GETTABLEKS                       R14 R7 K10 ["name"]
       88 CALL                             R13 1 1
       89 JUMPIFNOT                        R13 ; [+7]
       90 GETUPVAL                         R13 8
       91 GETTABLEKS                       R14 R7 K10 ["name"]
       93 GETTABLE                         R12 R13 R14
       94 GETTABLEKS                       R12 R12 K12 ["variant"]
       96 JUMP                             ; [+2]
       97 GETTABLEKS                       R12 R7 K12 ["variant"]
       99 SETTABLEKS                       R12 R11 K12 ["variant"]
      101 GETTABLEKS                       R12 R5 K9 ["icon"]
      103 GETTABLEKS                       R12 R12 K7 ["size"]
      105 SETTABLEKS                       R12 R11 K7 ["size"]
      107 SETTABLEKS                       R3 R11 K13 ["style"]
      109 CALL                             R9 2 1
      110 MOVE                             R8 R9
      111 JUMP                             ; [+33]
      112 GETUPVAL                         R9 9
      113 GETTABLEKS                       R10 R7 K10 ["name"]
      115 GETTABLEKS                       R11 R5 K9 ["icon"]
      117 GETTABLEKS                       R11 R11 K7 ["size"]
      119 CALL                             R9 2 2
      120 JUMPIFNOT                        R9 ; [+24]
      121 GETUPVAL                         R11 3
      122 GETTABLEKS                       R11 R11 K11 ["createElement"]
      124 GETUPVAL                         R12 10
      125 DUPTABLE                         R13 K19 [{"Image", "Size", "imageStyle", "scale"}]
      126 GETTABLEKS                       R14 R7 K10 ["name"]
      128 SETTABLEKS                       R14 R13 K15 ["Image"]
      130 GETIMPORT                        R14 K22 [UDim2.fromOffset]
      132 GETTABLEKS                       R15 R9 K23 ["X"]
      134 GETTABLEKS                       R16 R9 K24 ["Y"]
      136 CALL                             R14 2 1
      137 SETTABLEKS                       R14 R13 K16 ["Size"]
      139 SETTABLEKS                       R3 R13 K17 ["imageStyle"]
      141 SETTABLEKS                       R10 R13 K18 ["scale"]
      143 CALL                             R11 2 1
      144 MOVE                             R8 R11
      145 LOADNIL                          R9
      146 LOADNIL                          R10
      147 JUMPIFNOT                        R4 ; [+8]
      148 GETIMPORT                        R11 K26 [UDim2.fromScale]
      150 LOADN                            R12 1
      151 LOADN                            R13 1
      152 CALL                             R11 2 1
      153 MOVE                             R9 R11
      154 LOADNIL                          R10
      155 JUMP                             ; [+18]
      156 GETTABLEKS                       R11 R2 K16 ["Size"]
      158 GETTABLEKS                       R11 R11 K27 ["Size_100"]
      160 GETIMPORT                        R12 K29 [UDim2.new]
      162 LOADN                            R13 1
      163 MULK                             R14 R11 K30 [2]
      164 LOADN                            R15 1
      165 LOADN                            R16 0
      166 CALL                             R12 4 1
      167 MOVE                             R9 R12
      168 GETIMPORT                        R12 K22 [UDim2.fromOffset]
      170 MINUS                            R13 R11
      171 LOADN                            R14 0
      172 CALL                             R12 2 1
      173 MOVE                             R10 R12
      174 GETUPVAL                         R11 3
      175 GETTABLEKS                       R11 R11 K11 ["createElement"]
      177 GETUPVAL                         R12 11
      178 DUPTABLE                         R13 K34 [{"tag", "GroupTransparency", "testId"}]
      179 GETTABLEKS                       R14 R5 K35 ["container"]
      181 GETTABLEKS                       R14 R14 K31 ["tag"]
      183 SETTABLEKS                       R14 R13 K31 ["tag"]
      185 GETTABLEKS                       R15 R0 K36 ["isDisabled"]
      187 JUMPIFNOT                        R15 ; [+4]
      188 GETUPVAL                         R14 12
      189 GETTABLEKS                       R14 R14 K37 ["DISABLED_TRANSPARENCY"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R14
      193 SETTABLEKS                       R14 R13 K32 ["GroupTransparency"]
      195 GETTABLEKS                       R14 R0 K33 ["testId"]
      197 SETTABLEKS                       R14 R13 K33 ["testId"]
      199 DUPTABLE                         R14 K39 [{"Interactive", "Content"}]
      200 GETUPVAL                         R15 3
      201 GETTABLEKS                       R15 R15 K11 ["createElement"]
      203 GETUPVAL                         R16 11
      204 DUPTABLE                         R17 K47 [{["LayoutOrder"] = 1, ["Size"], ["Position"], ["onActivated"], ["selection"], ["cursor"], ["isDisabled"], ["ref"]}]
      205 SETTABLEKS                       R9 R17 K16 ["Size"]
      207 SETTABLEKS                       R10 R17 K42 ["Position"]
      209 NEWCLOSURE                       R18 P2
      210 CAPTURE                          VAL R0
      211 SETTABLEKS                       R18 R17 K43 ["onActivated"]
      213 DUPTABLE                         R18 K49 [{"Selectable"}]
      214 GETTABLEKS                       R20 R0 K36 ["isDisabled"]
      216 NOT                              R19 R20
      217 SETTABLEKS                       R19 R18 K48 ["Selectable"]
      219 SETTABLEKS                       R18 R17 K44 ["selection"]
      221 SETTABLEKS                       R6 R17 K45 ["cursor"]
      223 GETTABLEKS                       R18 R0 K36 ["isDisabled"]
      225 SETTABLEKS                       R18 R17 K36 ["isDisabled"]
      227 SETTABLEKS                       R1 R17 K46 ["ref"]
      229 CALL                             R15 2 1
      230 SETTABLEKS                       R15 R14 K38 ["Interactive"]
      232 GETUPVAL                         R15 3
      233 GETTABLEKS                       R15 R15 K11 ["createElement"]
      235 GETUPVAL                         R16 11
      236 DUPTABLE                         R17 K50 [{["LayoutOrder"] = 2, ["tag"], ["Size"]}]
      237 GETTABLEKS                       R18 R5 K51 ["content"]
      239 GETTABLEKS                       R18 R18 K31 ["tag"]
      241 SETTABLEKS                       R18 R17 K31 ["tag"]
      243 GETTABLEKS                       R18 R5 K51 ["content"]
      245 GETTABLEKS                       R18 R18 K16 ["Size"]
      247 SETTABLEKS                       R18 R17 K16 ["Size"]
      249 DUPTABLE                         R18 K54 [{"Icon", "Text"}]
      250 GETTABLEKS                       R20 R0 K9 ["icon"]
      252 JUMPIFNOT                        R20 ; [+2]
      253 MOVE                             R19 R8
      254 JUMP                             ; [+1]
      255 LOADNIL                          R19
      256 SETTABLEKS                       R19 R18 K52 ["Icon"]
      258 GETUPVAL                         R19 3
      259 GETTABLEKS                       R19 R19 K11 ["createElement"]
      261 GETUPVAL                         R20 13
      262 DUPTABLE                         R21 K55 [{["Text"], ["style"], ["tag"], ["LayoutOrder"] = 2}]
      263 GETTABLEKS                       R22 R0 K56 ["text"]
      265 SETTABLEKS                       R22 R21 K53 ["Text"]
      267 SETTABLEKS                       R3 R21 K13 ["style"]
      269 GETTABLEKS                       R22 R5 K56 ["text"]
      271 GETTABLEKS                       R22 R22 K31 ["tag"]
      273 SETTABLEKS                       R22 R21 K31 ["tag"]
      275 CALL                             R19 2 1
      276 SETTABLEKS                       R19 R18 K53 ["Text"]
      278 CALL                             R15 3 1
      279 SETTABLEKS                       R15 R14 K2 ["Content"]
      281 CALL                             R11 3 -1
      282 RETURN                           R11 -1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Icon"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Image"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["Types"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K14 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K15 ["Providers"]
       58 GETTABLEKS                       R10 R10 K16 ["Style"]
       60 GETTABLEKS                       R10 R10 K17 ["useTokens"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R11 R3 K19 ["Migration"]
       65 GETTABLEKS                       R10 R11 K18 ["uiblox"]
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R12 R0 K20 ["Enums"]
       71 GETTABLEKS                       R12 R12 K21 ["FillBehavior"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R13 R0 K20 ["Enums"]
       78 GETTABLEKS                       R13 R13 K22 ["InputSize"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETTABLEKS                       R14 R0 K23 ["Utility"]
       85 GETTABLEKS                       R14 R14 K24 ["getIconScale"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K6 [require]
       90 GETTABLEKS                       R15 R0 K23 ["Utility"]
       92 GETTABLEKS                       R15 R15 K25 ["iconMigrationUtils"]
       94 CALL                             R14 1 1
       95 GETTABLEKS                       R15 R14 K26 ["isMigrated"]
       97 GETTABLEKS                       R16 R14 K27 ["isBuilderOrMigratedIcon"]
       99 GETIMPORT                        R17 K6 [require]
      101 GETTABLEKS                       R18 R0 K28 ["Constants"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K6 [require]
      106 GETIMPORT                        R19 K1 [script]
      108 GETTABLEKS                       R19 R19 K4 ["Parent"]
      110 GETTABLEKS                       R19 R19 K29 ["useTabItemVariants"]
      112 CALL                             R18 1 1
      113 DUPCLOSURE                       R19 K30 [PROTO_3]
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R6
      128 GETTABLEKS                       R20 R2 K31 ["memo"]
      130 GETTABLEKS                       R21 R2 K32 ["forwardRef"]
      132 MOVE                             R22 R19
      133 CALL                             R21 1 -1
      134 CALL                             R20 -1 -1
      135 RETURN                           R20 -1
