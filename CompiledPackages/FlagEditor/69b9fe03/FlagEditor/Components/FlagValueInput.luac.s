PROTO_0:
        0 DUPTABLE                         R2 K4 [{"id", "text", "isDisabled", "trailing"}]
        1 SETTABLEKS                       R0 R2 K0 ["id"]
        3 SETTABLEKS                       R0 R2 K1 ["text"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K5 ["None"]
        8 JUMPIFEQ                         R0 R4 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 SETTABLEKS                       R3 R2 K2 ["isDisabled"]
       14 JUMPIFNOT                        R1 ; [+9]
       15 DUPTABLE                         R3 K9 [{["type"] = "Badge", ["text"], ["variant"]}]
       16 SETTABLEKS                       R1 R3 K1 ["text"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K10 ["Standard"]
       21 SETTABLEKS                       R4 R3 K8 ["variant"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K3 ["trailing"]
       27 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onChanged"]
        3 GETUPVAL                         R3 1
        4 NOT                              R2 R3
        5 FASTCALL1                        TOSTRING R2 ; [+2]
        6 GETIMPORT                        R1 K2 [tostring]
        8 CALL                             R1 1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["None"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["onChanged"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["FormatLogValue"]
       17 MOVE                             R4 R1
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K5 ["channel"]
       21 CALL                             R3 2 -1
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R1 0
        1 JUMPIFLT                         R0 R1 ; [+7]
        3 LOADN                            R1 255
        4 JUMPIFLT                         R1 R0 ; [+4]
        6 MODK                             R1 R0 K0 [1]
        7 JUMPIFEQKN                       R1 K1 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["onChanged"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["FormatLogValue"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K4 ["severity"]
       19 MOVE                             R4 R0
       20 CALL                             R2 2 -1
       21 CALL                             R1 -1 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tostring]
        7 CALL                             R2 1 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["value"]
        2 GETTABLEKS                       R2 R0 K1 ["valueType"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["FFlag"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+42]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["CoerceValue"]
       12 GETTABLEKS                       R3 R0 K1 ["valueType"]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K4 ["createElement"]
       19 GETUPVAL                         R4 3
       20 DUPTABLE                         R5 K11 [{"text", "isChecked", "size", "onActivated", "LayoutOrder", "testId"}]
       21 FASTCALL1                        TOSTRING R2 ; [+3]
       22 MOVE                             R7 R2
       23 GETIMPORT                        R6 K13 [tostring]
       25 CALL                             R6 1 1
       26 SETTABLEKS                       R6 R5 K5 ["text"]
       28 SETTABLEKS                       R2 R5 K6 ["isChecked"]
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R6 R6 K14 ["Small"]
       33 SETTABLEKS                       R6 R5 K7 ["size"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R6 R5 K8 ["onActivated"]
       40 GETTABLEKS                       R6 R0 K9 ["LayoutOrder"]
       42 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
       44 GETTABLEKS                       R6 R0 K10 ["testId"]
       46 SETTABLEKS                       R6 R5 K10 ["testId"]
       48 CALL                             R3 2 -1
       49 RETURN                           R3 -1
       50 GETTABLEKS                       R2 R0 K1 ["valueType"]
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K15 ["FLog"]
       55 JUMPIFNOTEQ                      R2 R3 ; [+137]
       57 GETUPVAL                         R2 1
       58 GETTABLEKS                       R2 R2 K16 ["ParseLogValue"]
       60 MOVE                             R3 R1
       61 CALL                             R2 1 1
       62 LOADK                            R5 K17 ["FLog value must be a severity, a channel, or both: %*"]
       63 MOVE                             R7 R1
       64 NAMECALL                         R5 R5 K18 ["format"]
       66 CALL                             R5 2 1
       67 FASTCALL2                        ASSERT R2 R5 ; [+4]
       69 MOVE                             R4 R2
       70 GETIMPORT                        R3 K20 [assert]
       72 CALL                             R3 2 0
       73 GETUPVAL                         R3 2
       74 GETTABLEKS                       R3 R3 K4 ["createElement"]
       76 GETUPVAL                         R4 5
       77 DUPTABLE                         R5 K23 [{["tag"] = "row gap-xsmall align-y-center size-full-full", ["LayoutOrder"], ["testId"]}]
       78 GETTABLEKS                       R6 R0 K9 ["LayoutOrder"]
       80 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
       82 GETTABLEKS                       R6 R0 K10 ["testId"]
       84 SETTABLEKS                       R6 R5 K10 ["testId"]
       86 DUPTABLE                         R6 K26 [{"Severity", "Channel"}]
       87 GETUPVAL                         R7 2
       88 GETTABLEKS                       R7 R7 K4 ["createElement"]
       90 GETUPVAL                         R8 5
       91 DUPTABLE                         R9 K29 [{["tag"] = "grow size-0-full align-y-center", ["LayoutOrder"] = 1}]
       92 DUPTABLE                         R10 K31 [{"Input"}]
       93 GETUPVAL                         R11 2
       94 GETTABLEKS                       R11 R11 K4 ["createElement"]
       96 GETUPVAL                         R12 6
       97 DUPTABLE                         R13 K38 [{["items"], [2], ["label"] = "", ["size"], ["variant"], ["width"], ["onItemChanged"], ["testId"]}]
       98 GETUPVAL                         R14 7
       99 SETTABLEKS                       R14 R13 K32 ["items"]
      101 GETTABLEKS                       R14 R2 K39 ["severity"]
      103 SETTABLEKS                       R14 R13 K0 ["value"]
      105 GETUPVAL                         R14 8
      106 GETTABLEKS                       R14 R14 K40 ["XSmall"]
      108 SETTABLEKS                       R14 R13 K7 ["size"]
      110 GETUPVAL                         R14 9
      111 GETTABLEKS                       R14 R14 K41 ["Standard"]
      113 SETTABLEKS                       R14 R13 K35 ["variant"]
      115 GETIMPORT                        R14 K44 [UDim.new]
      117 LOADN                            R15 1
      118 LOADN                            R16 0
      119 CALL                             R14 2 1
      120 SETTABLEKS                       R14 R13 K36 ["width"]
      122 NEWCLOSURE                       R14 P1
      123 CAPTURE                          UPVAL U10
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U1
      126 CAPTURE                          VAL R2
      127 SETTABLEKS                       R14 R13 K37 ["onItemChanged"]
      129 GETTABLEKS                       R15 R0 K10 ["testId"]
      131 JUMPIFNOT                        R15 ; [+7]
      132 LOADK                            R14 K45 ["%*-severity"]
      133 GETTABLEKS                       R16 R0 K10 ["testId"]
      135 NAMECALL                         R14 R14 K18 ["format"]
      137 CALL                             R14 2 1
      138 JUMP                             ; [+1]
      139 LOADNIL                          R14
      140 SETTABLEKS                       R14 R13 K10 ["testId"]
      142 CALL                             R11 2 1
      143 SETTABLEKS                       R11 R10 K30 ["Input"]
      145 CALL                             R7 3 1
      146 SETTABLEKS                       R7 R6 K24 ["Severity"]
      148 GETUPVAL                         R7 2
      149 GETTABLEKS                       R7 R7 K4 ["createElement"]
      151 GETUPVAL                         R8 11
      152 DUPTABLE                         R9 K56 [{[1], ["size"], ["label"] = "", ["hasControls"] = True, ["width"], ["minimum"] = 0, ["maximum"] = 255, ["precision"] = 0, ["step"] = 1, ["onChanged"], ["LayoutOrder"] = 2, ["testId"]}]
      153 GETTABLEKS                       R10 R2 K57 ["channel"]
      155 SETTABLEKS                       R10 R9 K0 ["value"]
      157 GETUPVAL                         R10 8
      158 GETTABLEKS                       R10 R10 K40 ["XSmall"]
      160 SETTABLEKS                       R10 R9 K7 ["size"]
      162 GETIMPORT                        R10 K44 [UDim.new]
      164 LOADN                            R11 0
      165 LOADN                            R12 96
      166 CALL                             R10 2 1
      167 SETTABLEKS                       R10 R9 K36 ["width"]
      169 NEWCLOSURE                       R10 P2
      170 CAPTURE                          VAL R0
      171 CAPTURE                          UPVAL U1
      172 CAPTURE                          VAL R2
      173 SETTABLEKS                       R10 R9 K54 ["onChanged"]
      175 GETTABLEKS                       R11 R0 K10 ["testId"]
      177 JUMPIFNOT                        R11 ; [+7]
      178 LOADK                            R10 K58 ["%*-channel"]
      179 GETTABLEKS                       R12 R0 K10 ["testId"]
      181 NAMECALL                         R10 R10 K18 ["format"]
      183 CALL                             R10 2 1
      184 JUMP                             ; [+1]
      185 LOADNIL                          R10
      186 SETTABLEKS                       R10 R9 K10 ["testId"]
      188 CALL                             R7 2 1
      189 SETTABLEKS                       R7 R6 K25 ["Channel"]
      191 CALL                             R3 3 -1
      192 RETURN                           R3 -1
      193 GETTABLEKS                       R2 R0 K1 ["valueType"]
      195 GETUPVAL                         R3 0
      196 GETTABLEKS                       R3 R3 K59 ["FString"]
      198 JUMPIFNOTEQ                      R2 R3 ; [+49]
      200 FASTCALL1                        TYPE R1 ; [+3]
      201 MOVE                             R5 R1
      202 GETIMPORT                        R4 K61 [type]
      204 CALL                             R4 1 1
      205 JUMPIFEQKS                       R4 K62 ["string"] ; [+2]
      207 LOADB                            R3 0 +1
      208 LOADB                            R3 1
      209 FASTCALL2K                       ASSERT R3 K63 ; [+4]
      211 LOADK                            R4 K63 ["FString value must be a string"]
      212 GETIMPORT                        R2 K20 [assert]
      214 CALL                             R2 2 0
      215 GETUPVAL                         R2 2
      216 GETTABLEKS                       R2 R2 K4 ["createElement"]
      218 GETUPVAL                         R3 12
      219 DUPTABLE                         R4 K64 [{["text"], ["size"], ["width"], ["label"] = "", ["onChanged"], ["LayoutOrder"], ["testId"]}]
      220 SETTABLEKS                       R1 R4 K5 ["text"]
      222 GETUPVAL                         R5 8
      223 GETTABLEKS                       R5 R5 K40 ["XSmall"]
      225 SETTABLEKS                       R5 R4 K7 ["size"]
      227 GETIMPORT                        R5 K44 [UDim.new]
      229 LOADN                            R6 1
      230 LOADN                            R7 0
      231 CALL                             R5 2 1
      232 SETTABLEKS                       R5 R4 K36 ["width"]
      234 GETTABLEKS                       R5 R0 K54 ["onChanged"]
      236 SETTABLEKS                       R5 R4 K54 ["onChanged"]
      238 GETTABLEKS                       R5 R0 K9 ["LayoutOrder"]
      240 SETTABLEKS                       R5 R4 K9 ["LayoutOrder"]
      242 GETTABLEKS                       R5 R0 K10 ["testId"]
      244 SETTABLEKS                       R5 R4 K10 ["testId"]
      246 CALL                             R2 2 -1
      247 RETURN                           R2 -1
      248 GETTABLEKS                       R2 R0 K1 ["valueType"]
      250 GETUPVAL                         R3 0
      251 GETTABLEKS                       R3 R3 K65 ["FInt"]
      253 JUMPIFNOTEQ                      R2 R3 ; [+52]
      255 FASTCALL1                        TONUMBER R1 ; [+3]
      256 MOVE                             R3 R1
      257 GETIMPORT                        R2 K67 [tonumber]
      259 CALL                             R2 1 1
      260 MOVE                             R4 R2
      261 JUMPIFNOT                        R4 ; [+5]
      262 MODK                             R5 R2 K28 [1]
      263 JUMPIFEQKN                       R5 K49 [0] ; [+2]
      265 LOADB                            R4 0 +1
      266 LOADB                            R4 1
      267 FASTCALL2K                       ASSERT R4 K68 ; [+4]
      269 LOADK                            R5 K68 ["FInt value must be an integer"]
      270 GETIMPORT                        R3 K20 [assert]
      272 CALL                             R3 2 0
      273 GETUPVAL                         R3 2
      274 GETTABLEKS                       R3 R3 K4 ["createElement"]
      276 GETUPVAL                         R4 11
      277 DUPTABLE                         R5 K69 [{[1], ["size"], ["label"] = "", ["hasControls"] = True, ["width"], ["step"] = 1, ["precision"] = 0, ["onChanged"], ["LayoutOrder"], ["testId"]}]
      278 SETTABLEKS                       R2 R5 K0 ["value"]
      280 GETUPVAL                         R6 8
      281 GETTABLEKS                       R6 R6 K40 ["XSmall"]
      283 SETTABLEKS                       R6 R5 K7 ["size"]
      285 GETIMPORT                        R6 K44 [UDim.new]
      287 LOADK                            R7 K70 [0.75]
      288 LOADN                            R8 0
      289 CALL                             R6 2 1
      290 SETTABLEKS                       R6 R5 K36 ["width"]
      292 NEWCLOSURE                       R6 P3
      293 CAPTURE                          VAL R0
      294 SETTABLEKS                       R6 R5 K54 ["onChanged"]
      296 GETTABLEKS                       R6 R0 K9 ["LayoutOrder"]
      298 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
      300 GETTABLEKS                       R6 R0 K10 ["testId"]
      302 SETTABLEKS                       R6 R5 K10 ["testId"]
      304 CALL                             R3 2 -1
      305 RETURN                           R3 -1
      306 GETIMPORT                        R2 K72 [error]
      308 LOADK                            R3 K73 ["Unknown FlagValueType"]
      309 CALL                             R2 1 0
      310 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["Dropdown"]
       21 GETTABLEKS                       R4 R4 K10 ["Root"]
       23 GETTABLEKS                       R5 R3 K11 ["NumberInput"]
       25 GETTABLEKS                       R6 R3 K12 ["TextInput"]
       27 GETTABLEKS                       R7 R3 K13 ["View"]
       29 GETTABLEKS                       R8 R3 K14 ["Chip"]
       31 GETTABLEKS                       R9 R3 K15 ["Enums"]
       33 GETTABLEKS                       R9 R9 K16 ["BadgeVariant"]
       35 GETTABLEKS                       R10 R3 K15 ["Enums"]
       37 GETTABLEKS                       R10 R10 K17 ["ChipSize"]
       39 GETTABLEKS                       R11 R3 K15 ["Enums"]
       41 GETTABLEKS                       R11 R11 K18 ["InputSize"]
       43 GETTABLEKS                       R12 R3 K15 ["Enums"]
       45 GETTABLEKS                       R12 R12 K19 ["InputVariant"]
       47 GETIMPORT                        R13 K6 [require]
       49 GETTABLEKS                       R14 R0 K15 ["Enums"]
       51 GETTABLEKS                       R14 R14 K20 ["FLogValue"]
       53 CALL                             R13 1 1
       54 GETIMPORT                        R14 K6 [require]
       56 GETTABLEKS                       R15 R0 K21 ["FlagUtils"]
       58 CALL                             R14 1 1
       59 GETIMPORT                        R15 K6 [require]
       61 GETTABLEKS                       R16 R0 K15 ["Enums"]
       63 GETTABLEKS                       R16 R16 K22 ["FlagValueType"]
       65 CALL                             R15 1 1
       66 DUPCLOSURE                       R16 K23 [PROTO_0]
       67 CAPTURE                          VAL R13
       68 CAPTURE                          VAL R9
       69 NEWTABLE                         R17 0 7
       71 MOVE                             R18 R16
       72 GETTABLEKS                       R19 R13 K24 ["Critical"]
       74 LOADK                            R20 K25 ["Quiet"]
       75 CALL                             R18 2 1
       76 GETTABLEKS                       R20 R13 K26 ["Error"]
       78 DUPTABLE                         R19 K32 [{["id"], ["text"], ["isDisabled"], ["trailing"] = }]
       79 SETTABLEKS                       R20 R19 K27 ["id"]
       81 SETTABLEKS                       R20 R19 K28 ["text"]
       83 GETTABLEKS                       R22 R13 K33 ["None"]
       85 JUMPIFEQ                         R20 R22 ; [+2]
       87 LOADB                            R21 0 +1
       88 LOADB                            R21 1
       89 SETTABLEKS                       R21 R19 K29 ["isDisabled"]
       91 GETTABLEKS                       R21 R13 K34 ["Warning"]
       93 DUPTABLE                         R20 K35 [{"id", "text", "isDisabled", "trailing"}]
       94 SETTABLEKS                       R21 R20 K27 ["id"]
       96 SETTABLEKS                       R21 R20 K28 ["text"]
       98 GETTABLEKS                       R23 R13 K33 ["None"]
      100 JUMPIFEQ                         R21 R23 ; [+2]
      102 LOADB                            R22 0 +1
      103 LOADB                            R22 1
      104 SETTABLEKS                       R22 R20 K29 ["isDisabled"]
      106 DUPTABLE                         R22 K40 [{["type"] = "Badge", ["text"] = "Default", ["variant"]}]
      107 GETTABLEKS                       R23 R9 K41 ["Standard"]
      109 SETTABLEKS                       R23 R22 K39 ["variant"]
      111 SETTABLEKS                       R22 R20 K30 ["trailing"]
      113 GETTABLEKS                       R22 R13 K42 ["Info"]
      115 DUPTABLE                         R21 K32 [{["id"], ["text"], ["isDisabled"], ["trailing"] = }]
      116 SETTABLEKS                       R22 R21 K27 ["id"]
      118 SETTABLEKS                       R22 R21 K28 ["text"]
      120 GETTABLEKS                       R24 R13 K33 ["None"]
      122 JUMPIFEQ                         R22 R24 ; [+2]
      124 LOADB                            R23 0 +1
      125 LOADB                            R23 1
      126 SETTABLEKS                       R23 R21 K29 ["isDisabled"]
      128 GETTABLEKS                       R23 R13 K43 ["Debug"]
      130 DUPTABLE                         R22 K32 [{["id"], ["text"], ["isDisabled"], ["trailing"] = }]
      131 SETTABLEKS                       R23 R22 K27 ["id"]
      133 SETTABLEKS                       R23 R22 K28 ["text"]
      135 GETTABLEKS                       R25 R13 K33 ["None"]
      137 JUMPIFEQ                         R23 R25 ; [+2]
      139 LOADB                            R24 0 +1
      140 LOADB                            R24 1
      141 SETTABLEKS                       R24 R22 K29 ["isDisabled"]
      143 GETTABLEKS                       R24 R13 K44 ["Verbose"]
      145 DUPTABLE                         R23 K35 [{"id", "text", "isDisabled", "trailing"}]
      146 SETTABLEKS                       R24 R23 K27 ["id"]
      148 SETTABLEKS                       R24 R23 K28 ["text"]
      150 GETTABLEKS                       R26 R13 K33 ["None"]
      152 JUMPIFEQ                         R24 R26 ; [+2]
      154 LOADB                            R25 0 +1
      155 LOADB                            R25 1
      156 SETTABLEKS                       R25 R23 K29 ["isDisabled"]
      158 DUPTABLE                         R25 K46 [{["type"] = "Badge", ["text"] = "Noisy", ["variant"]}]
      159 GETTABLEKS                       R26 R9 K41 ["Standard"]
      161 SETTABLEKS                       R26 R25 K39 ["variant"]
      163 SETTABLEKS                       R25 R23 K30 ["trailing"]
      165 GETTABLEKS                       R25 R13 K33 ["None"]
      167 DUPTABLE                         R24 K35 [{"id", "text", "isDisabled", "trailing"}]
      168 SETTABLEKS                       R25 R24 K27 ["id"]
      170 SETTABLEKS                       R25 R24 K28 ["text"]
      172 GETTABLEKS                       R27 R13 K33 ["None"]
      174 JUMPIFEQ                         R25 R27 ; [+2]
      176 LOADB                            R26 0 +1
      177 LOADB                            R26 1
      178 SETTABLEKS                       R26 R24 K29 ["isDisabled"]
      180 DUPTABLE                         R26 K48 [{["type"] = "Badge", ["text"] = "Off", ["variant"]}]
      181 GETTABLEKS                       R27 R9 K41 ["Standard"]
      183 SETTABLEKS                       R27 R26 K39 ["variant"]
      185 SETTABLEKS                       R26 R24 K30 ["trailing"]
      187 SETLIST                          R17 R18 7 [1]
      189 DUPCLOSURE                       R18 K49 [PROTO_5]
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R17
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R5
      202 CAPTURE                          VAL R6
      203 GETTABLEKS                       R19 R2 K50 ["memo"]
      205 MOVE                             R20 R18
      206 CALL                             R19 1 -1
      207 RETURN                           R19 -1
