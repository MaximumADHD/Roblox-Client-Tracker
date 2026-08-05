PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K1 ["value"]
        4 ORK                              R1 R2 K0 [""]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onSend"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["onSend"]
        9 GETUPVAL                         R1 2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Text"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["onValueChange"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["onValueChange"]
       11 GETTABLEKS                       R2 R0 K0 ["Text"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Size"]
        8 GETTABLEKS                       R2 R2 K3 ["Size_1200"]
       10 GETTABLEKS                       R3 R1 K2 ["Size"]
       12 GETTABLEKS                       R3 R3 K4 ["Size_900"]
       14 GETTABLEKS                       R4 R1 K5 ["Padding"]
       16 GETTABLEKS                       R4 R4 K6 ["Small"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K7 ["useState"]
       21 GETTABLEKS                       R7 R0 K9 ["value"]
       23 ORK                              R6 R7 K8 [""]
       24 CALL                             R5 1 2
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K10 ["useEffect"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R9 0 1
       33 GETTABLEKS                       R10 R0 K9 ["value"]
       35 SETLIST                          R9 R10 1 [1]
       37 CALL                             R7 2 0
       38 GETIMPORT                        R7 K13 [string.gsub]
       40 MOVE                             R8 R5
       41 LOADK                            R9 K14 ["^%s*(.-)%s*$"]
       42 LOADK                            R10 K15 ["%1"]
       43 CALL                             R7 3 1
       44 JUMPIFNOTEQKS                    R7 K8 [""] ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 NEWTABLE                         R9 4 0
       50 GETTABLEKS                       R10 R1 K5 ["Padding"]
       52 GETTABLEKS                       R10 R10 K16 ["Medium"]
       54 GETTABLEKS                       R11 R0 K17 ["onAdd"]
       56 JUMPIFEQKNIL                     R11 ; [+45]
       58 ADD                              R11 R4 R3
       59 ADD                              R10 R11 R4
       60 GETUPVAL                         R11 2
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K18 ["View"]
       64 DUPTABLE                         R13 K23 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center"}]
       65 GETIMPORT                        R14 K26 [Vector2.new]
       67 LOADN                            R15 0
       68 LOADK                            R16 K27 [0.5]
       69 CALL                             R14 2 1
       70 SETTABLEKS                       R14 R13 K19 ["AnchorPoint"]
       72 GETIMPORT                        R14 K29 [UDim2.new]
       74 LOADN                            R15 0
       75 MOVE                             R16 R4
       76 LOADK                            R17 K27 [0.5]
       77 LOADN                            R18 0
       78 CALL                             R14 4 1
       79 SETTABLEKS                       R14 R13 K20 ["Position"]
       81 GETIMPORT                        R14 K31 [UDim2.fromOffset]
       83 MOVE                             R15 R3
       84 MOVE                             R16 R3
       85 CALL                             R14 2 1
       86 SETTABLEKS                       R14 R13 K2 ["Size"]
       88 DUPTABLE                         R14 K33 [{"Button"}]
       89 GETUPVAL                         R15 2
       90 GETUPVAL                         R16 3
       91 DUPTABLE                         R17 K39 [{["icon"] = "plus-large", ["onActivated"], ["isCompact"] = True}]
       92 GETTABLEKS                       R18 R0 K17 ["onAdd"]
       94 SETTABLEKS                       R18 R17 K36 ["onActivated"]
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K32 ["Button"]
       99 CALL                             R11 3 1
      100 SETTABLEKS                       R11 R9 K40 ["Add"]
      102 GETUPVAL                         R11 2
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K18 ["View"]
      106 DUPTABLE                         R13 K23 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center"}]
      107 GETIMPORT                        R14 K26 [Vector2.new]
      109 LOADN                            R15 1
      110 LOADK                            R16 K27 [0.5]
      111 CALL                             R14 2 1
      112 SETTABLEKS                       R14 R13 K19 ["AnchorPoint"]
      114 GETIMPORT                        R14 K29 [UDim2.new]
      116 LOADN                            R15 1
      117 MINUS                            R16 R4
      118 LOADK                            R17 K27 [0.5]
      119 LOADN                            R18 0
      120 CALL                             R14 4 1
      121 SETTABLEKS                       R14 R13 K20 ["Position"]
      123 GETIMPORT                        R14 K31 [UDim2.fromOffset]
      125 MOVE                             R15 R3
      126 MOVE                             R16 R3
      127 CALL                             R14 2 1
      128 SETTABLEKS                       R14 R13 K2 ["Size"]
      130 DUPTABLE                         R14 K33 [{"Button"}]
      131 GETUPVAL                         R15 2
      132 GETUPVAL                         R16 0
      133 GETTABLEKS                       R16 R16 K41 ["IconButton"]
      135 DUPTABLE                         R17 K49 [{["testId"] = "--appkit-composer-send", ["icon"] = "arrow-medium-up", ["onActivated"], ["isCircular"] = True, ["isDisabled"], ["variant"], ["size"]}]
      136 NEWCLOSURE                       R18 P1
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R7
      140 SETTABLEKS                       R18 R17 K36 ["onActivated"]
      142 NOT                              R18 R8
      143 SETTABLEKS                       R18 R17 K46 ["isDisabled"]
      145 GETUPVAL                         R18 0
      146 GETTABLEKS                       R18 R18 K50 ["Enums"]
      148 GETTABLEKS                       R18 R18 K51 ["ButtonVariant"]
      150 GETTABLEKS                       R18 R18 K52 ["Standard"]
      152 SETTABLEKS                       R18 R17 K47 ["variant"]
      154 GETUPVAL                         R18 0
      155 GETTABLEKS                       R18 R18 K50 ["Enums"]
      157 GETTABLEKS                       R18 R18 K53 ["InputSize"]
      159 GETTABLEKS                       R18 R18 K6 ["Small"]
      161 SETTABLEKS                       R18 R17 K48 ["size"]
      163 CALL                             R15 2 1
      164 SETTABLEKS                       R15 R14 K32 ["Button"]
      166 CALL                             R11 3 1
      167 SETTABLEKS                       R11 R9 K54 ["Send"]
      169 ADD                              R12 R4 R3
      170 ADD                              R11 R12 R4
      171 GETTABLEKS                       R12 R0 K55 ["onVoice"]
      173 JUMPIFEQKNIL                     R12 ; [+49]
      175 GETUPVAL                         R12 2
      176 GETUPVAL                         R13 0
      177 GETTABLEKS                       R13 R13 K18 ["View"]
      179 DUPTABLE                         R14 K23 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center"}]
      180 GETIMPORT                        R15 K26 [Vector2.new]
      182 LOADN                            R16 1
      183 LOADK                            R17 K27 [0.5]
      184 CALL                             R15 2 1
      185 SETTABLEKS                       R15 R14 K19 ["AnchorPoint"]
      187 GETIMPORT                        R15 K29 [UDim2.new]
      189 LOADN                            R16 1
      190 ADD                              R19 R4 R3
      191 ADD                              R18 R19 R4
      192 MINUS                            R17 R18
      193 LOADK                            R18 K27 [0.5]
      194 LOADN                            R19 0
      195 CALL                             R15 4 1
      196 SETTABLEKS                       R15 R14 K20 ["Position"]
      198 GETIMPORT                        R15 K31 [UDim2.fromOffset]
      200 MOVE                             R16 R3
      201 MOVE                             R17 R3
      202 CALL                             R15 2 1
      203 SETTABLEKS                       R15 R14 K2 ["Size"]
      205 DUPTABLE                         R15 K33 [{"Button"}]
      206 GETUPVAL                         R16 2
      207 GETUPVAL                         R17 3
      208 DUPTABLE                         R18 K57 [{["icon"] = "microphone", ["onActivated"], ["isCompact"] = True}]
      209 GETTABLEKS                       R19 R0 K55 ["onVoice"]
      211 SETTABLEKS                       R19 R18 K36 ["onActivated"]
      213 CALL                             R16 2 1
      214 SETTABLEKS                       R16 R15 K32 ["Button"]
      216 CALL                             R12 3 1
      217 SETTABLEKS                       R12 R9 K58 ["Voice"]
      219 ADD                              R14 R4 R3
      220 ADD                              R13 R14 R4
      221 ADD                              R12 R13 R3
      222 ADD                              R11 R12 R4
      223 GETUPVAL                         R12 2
      224 LOADK                            R13 K59 ["TextBox"]
      225 NEWTABLE                         R14 32 0
      227 SETTABLEKS                       R5 R14 K60 ["Text"]
      229 GETTABLEKS                       R16 R0 K62 ["placeholder"]
      231 ORK                              R15 R16 K61 ["Write a message"]
      232 SETTABLEKS                       R15 R14 K63 ["PlaceholderText"]
      234 LOADB                            R15 0
      235 SETTABLEKS                       R15 R14 K64 ["ClearTextOnFocus"]
      237 GETIMPORT                        R15 K68 [Enum.Font.BuilderSans]
      239 SETTABLEKS                       R15 R14 K66 ["Font"]
      241 GETTABLEKS                       R15 R1 K2 ["Size"]
      243 GETTABLEKS                       R15 R15 K69 ["Size_400"]
      245 SETTABLEKS                       R15 R14 K70 ["TextSize"]
      247 GETTABLEKS                       R15 R1 K71 ["Color"]
      249 GETTABLEKS                       R15 R15 K72 ["Content"]
      251 GETTABLEKS                       R15 R15 K73 ["Default"]
      253 GETTABLEKS                       R15 R15 K74 ["Color3"]
      255 SETTABLEKS                       R15 R14 K75 ["TextColor3"]
      257 GETTABLEKS                       R15 R1 K71 ["Color"]
      259 GETTABLEKS                       R15 R15 K72 ["Content"]
      261 GETTABLEKS                       R15 R15 K76 ["Muted"]
      263 GETTABLEKS                       R15 R15 K74 ["Color3"]
      265 SETTABLEKS                       R15 R14 K77 ["PlaceholderColor3"]
      267 GETIMPORT                        R15 K80 [Enum.TextXAlignment.Left]
      269 SETTABLEKS                       R15 R14 K78 ["TextXAlignment"]
      271 GETIMPORT                        R15 K83 [Enum.TextYAlignment.Center]
      273 SETTABLEKS                       R15 R14 K81 ["TextYAlignment"]
      275 GETIMPORT                        R15 K86 [Enum.TextTruncate.AtEnd]
      277 SETTABLEKS                       R15 R14 K84 ["TextTruncate"]
      279 LOADN                            R15 1
      280 SETTABLEKS                       R15 R14 K87 ["BackgroundTransparency"]
      282 LOADN                            R15 0
      283 SETTABLEKS                       R15 R14 K88 ["BorderSizePixel"]
      285 LOADB                            R15 1
      286 SETTABLEKS                       R15 R14 K89 ["ClipsDescendants"]
      288 GETIMPORT                        R15 K26 [Vector2.new]
      290 LOADN                            R16 0
      291 LOADK                            R17 K27 [0.5]
      292 CALL                             R15 2 1
      293 SETTABLEKS                       R15 R14 K19 ["AnchorPoint"]
      295 GETIMPORT                        R15 K29 [UDim2.new]
      297 LOADN                            R16 0
      298 MOVE                             R17 R10
      299 LOADK                            R18 K27 [0.5]
      300 LOADN                            R19 0
      301 CALL                             R15 4 1
      302 SETTABLEKS                       R15 R14 K20 ["Position"]
      304 GETIMPORT                        R15 K29 [UDim2.new]
      306 LOADN                            R16 1
      307 ADD                              R18 R10 R11
      308 MINUS                            R17 R18
      309 LOADN                            R18 1
      310 LOADN                            R19 0
      311 CALL                             R15 4 1
      312 SETTABLEKS                       R15 R14 K2 ["Size"]
      314 GETUPVAL                         R15 1
      315 GETTABLEKS                       R15 R15 K90 ["Change"]
      317 GETTABLEKS                       R15 R15 K60 ["Text"]
      319 NEWCLOSURE                       R16 P2
      320 CAPTURE                          VAL R6
      321 CAPTURE                          VAL R0
      322 SETTABLE                         R16 R14 R15
      323 CALL                             R12 2 1
      324 SETTABLEKS                       R12 R9 K91 ["Field"]
      326 GETUPVAL                         R12 2
      327 GETUPVAL                         R13 0
      328 GETTABLEKS                       R13 R13 K18 ["View"]
      330 DUPTABLE                         R14 K96 [{["testId"] = "--appkit-composer", ["onActivated"], ["LayoutOrder"], ["Size"], ["tag"] = "radius-circle bg-surface-0", ["stroke"]}]
      331 GETTABLEKS                       R15 R0 K36 ["onActivated"]
      333 SETTABLEKS                       R15 R14 K36 ["onActivated"]
      335 GETTABLEKS                       R15 R0 K93 ["LayoutOrder"]
      337 SETTABLEKS                       R15 R14 K93 ["LayoutOrder"]
      339 GETIMPORT                        R15 K29 [UDim2.new]
      341 LOADN                            R16 1
      342 LOADN                            R17 0
      343 LOADN                            R18 0
      344 MOVE                             R19 R2
      345 CALL                             R15 4 1
      346 SETTABLEKS                       R15 R14 K2 ["Size"]
      348 DUPTABLE                         R15 K100 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      349 GETTABLEKS                       R16 R1 K71 ["Color"]
      351 GETTABLEKS                       R16 R16 K101 ["Stroke"]
      353 GETTABLEKS                       R16 R16 K73 ["Default"]
      355 GETTABLEKS                       R16 R16 K74 ["Color3"]
      357 SETTABLEKS                       R16 R15 K71 ["Color"]
      359 GETTABLEKS                       R16 R1 K71 ["Color"]
      361 GETTABLEKS                       R16 R16 K101 ["Stroke"]
      363 GETTABLEKS                       R16 R16 K73 ["Default"]
      365 GETTABLEKS                       R16 R16 K97 ["Transparency"]
      367 SETTABLEKS                       R16 R15 K97 ["Transparency"]
      369 GETTABLEKS                       R16 R1 K101 ["Stroke"]
      371 GETTABLEKS                       R16 R16 K52 ["Standard"]
      373 SETTABLEKS                       R16 R15 K98 ["Thickness"]
      375 GETIMPORT                        R16 K103 [Enum.BorderStrokePosition.Inner]
      377 SETTABLEKS                       R16 R15 K99 ["BorderStrokePosition"]
      379 SETTABLEKS                       R15 R14 K95 ["stroke"]
      381 MOVE                             R15 R9
      382 CALL                             R12 3 -1
      383 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Composer must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETIMPORT                        R4 K1 [script]
       32 GETTABLEKS                       R4 R4 K12 ["Parent"]
       34 GETTABLEKS                       R4 R4 K13 ["UtilityButton"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R1 K14 ["createElement"]
       39 DUPCLOSURE                       R5 K15 [PROTO_3]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 RETURN                           R5 1
