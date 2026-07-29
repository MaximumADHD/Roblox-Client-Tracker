PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createNextOrder"]
       11 CALL                             R2 0 1
       12 GETTABLEKS                       R4 R0 K4 ["Weight"]
       14 JUMPIFNOTEQKNIL                  R4 ; [+3]
       16 LOADN                            R3 0
       17 JUMP                             ; [+7]
       18 GETTABLEKS                       R5 R0 K4 ["Weight"]
       20 MULK                             R4 R5 K5 [100]
       21 FASTCALL1                        MATH_ROUND R4 ; [+2]
       22 GETIMPORT                        R3 K8 [math.round]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K9 ["OnDelete"]
       27 JUMPIFNOT                        R4 ; [+2]
       28 GETTABLEKS                       R4 R0 K10 ["IsHovered"]
       30 GETUPVAL                         R6 2
       31 CALL                             R6 0 1
       32 JUMPIFNOT                        R6 ; [+11]
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K11 ["translateLabel"]
       36 MOVE                             R6 R1
       37 GETTABLEKS                       R7 R0 K12 ["Label"]
       39 JUMPIF                           R7 ; [+2]
       40 GETTABLEKS                       R7 R0 K13 ["Name"]
       42 CALL                             R5 2 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 GETTABLEKS                       R8 R0 K12 ["Label"]
       47 FASTCALL1                        TYPE R8 ; [+2]
       48 GETIMPORT                        R7 K15 [type]
       50 CALL                             R7 1 1
       51 JUMPIFNOTEQKS                    R7 K16 ["string"] ; [+2]
       53 LOADB                            R6 0 +1
       54 LOADB                            R6 1
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K17 ["createElement"]
       58 GETUPVAL                         R8 5
       59 GETTABLEKS                       R8 R8 K18 ["View"]
       61 DUPTABLE                         R9 K22 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       62 GETTABLEKS                       R10 R0 K21 ["LayoutOrder"]
       64 SETTABLEKS                       R10 R9 K21 ["LayoutOrder"]
       66 DUPTABLE                         R10 K28 [{"InputLabel", "DuplicateWarning", "InputDelete", "InputDeleteSpacer", "InputWeight"}]
       67 GETUPVAL                         R11 4
       68 GETTABLEKS                       R11 R11 K17 ["createElement"]
       70 GETUPVAL                         R13 2
       71 CALL                             R13 0 1
       72 JUMPIFNOT                        R13 ; [+2]
       73 GETUPVAL                         R12 6
       74 JUMP                             ; [+3]
       75 GETUPVAL                         R12 5
       76 GETTABLEKS                       R12 R12 K29 ["Text"]
       78 DUPTABLE                         R13 K32 [{"tag", "Text", "TextTruncate", "LayoutOrder", "isDisabled"}]
       79 GETUPVAL                         R15 7
       80 CALL                             R15 0 1
       81 JUMPIFNOT                        R15 ; [+2]
       82 LOADK                            R14 K33 ["auto-xy text-body-small text-align-x-left content-emphasis"]
       83 JUMP                             ; [+1]
       84 LOADK                            R14 K34 ["fill auto-y text-body-small text-align-x-left content-emphasis"]
       85 SETTABLEKS                       R14 R13 K19 ["tag"]
       87 GETUPVAL                         R15 2
       88 CALL                             R15 0 1
       89 JUMPIFNOT                        R15 ; [+2]
       90 MOVE                             R14 R5
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R14 R0 K13 ["Name"]
       94 SETTABLEKS                       R14 R13 K29 ["Text"]
       96 GETIMPORT                        R14 K37 [Enum.TextTruncate.SplitWord]
       98 SETTABLEKS                       R14 R13 K30 ["TextTruncate"]
      100 MOVE                             R14 R2
      101 CALL                             R14 0 1
      102 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      104 GETUPVAL                         R15 2
      105 CALL                             R15 0 1
      106 JUMPIFNOT                        R15 ; [+2]
      107 MOVE                             R14 R6
      108 JUMP                             ; [+1]
      109 LOADNIL                          R14
      110 SETTABLEKS                       R14 R13 K31 ["isDisabled"]
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K23 ["InputLabel"]
      115 GETUPVAL                         R11 2
      116 CALL                             R11 0 1
      117 JUMPIFNOT                        R11 ; [+76]
      118 GETUPVAL                         R12 8
      119 CALL                             R12 0 1
      120 JUMPIFNOT                        R12 ; [+2]
      121 NOT                              R11 R4
      122 JUMPIFNOT                        R11 ; [+71]
      123 GETTABLEKS                       R11 R0 K38 ["HasDuplicateName"]
      125 JUMPIFNOT                        R11 ; [+68]
      126 GETUPVAL                         R11 4
      127 GETTABLEKS                       R11 R11 K17 ["createElement"]
      129 GETUPVAL                         R12 5
      130 GETTABLEKS                       R12 R12 K39 ["Tooltip"]
      132 DUPTABLE                         R13 K43 [{"title", "side", "align", "LayoutOrder"}]
      133 LOADK                            R16 K44 ["Common"]
      134 LOADK                            R17 K45 ["AnimationEditor"]
      135 LOADK                            R18 K46 ["InputPanel"]
      136 LOADK                            R19 K47 ["DuplicateName"]
      137 DUPTABLE                         R20 K49 [{"name"}]
      138 SETTABLEKS                       R5 R20 K48 ["name"]
      140 NAMECALL                         R14 R1 K50 ["getExternalText"]
      142 CALL                             R14 6 1
      143 SETTABLEKS                       R14 R13 K40 ["title"]
      145 GETUPVAL                         R14 5
      146 GETTABLEKS                       R14 R14 K51 ["Enums"]
      148 GETTABLEKS                       R14 R14 K52 ["PopoverSide"]
      150 GETTABLEKS                       R14 R14 K53 ["Bottom"]
      152 SETTABLEKS                       R14 R13 K41 ["side"]
      154 GETUPVAL                         R14 5
      155 GETTABLEKS                       R14 R14 K51 ["Enums"]
      157 GETTABLEKS                       R14 R14 K54 ["PopoverAlign"]
      159 GETTABLEKS                       R14 R14 K55 ["Start"]
      161 SETTABLEKS                       R14 R13 K42 ["align"]
      163 MOVE                             R14 R2
      164 CALL                             R14 0 1
      165 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      167 GETUPVAL                         R14 4
      168 GETTABLEKS                       R14 R14 K17 ["createElement"]
      170 GETUPVAL                         R15 5
      171 GETTABLEKS                       R15 R15 K56 ["Icon"]
      173 DUPTABLE                         R16 K63 [{["tag"] = "auto-xy", ["name"] = "triangle-exclamation", ["size"], ["variant"], ["testId"] = "input-duplicate-warning"}]
      174 GETUPVAL                         R17 5
      175 GETTABLEKS                       R17 R17 K51 ["Enums"]
      177 GETTABLEKS                       R17 R17 K64 ["IconSize"]
      179 GETTABLEKS                       R17 R17 K65 ["XSmall"]
      181 SETTABLEKS                       R17 R16 K59 ["size"]
      183 GETUPVAL                         R17 5
      184 GETTABLEKS                       R17 R17 K51 ["Enums"]
      186 GETTABLEKS                       R17 R17 K66 ["IconVariant"]
      188 GETTABLEKS                       R17 R17 K67 ["Regular"]
      190 SETTABLEKS                       R17 R16 K60 ["variant"]
      192 CALL                             R14 2 -1
      193 CALL                             R11 -1 1
      194 SETTABLEKS                       R11 R10 K24 ["DuplicateWarning"]
      196 GETUPVAL                         R11 7
      197 CALL                             R11 0 1
      198 JUMPIFNOT                        R11 ; [+16]
      199 MOVE                             R11 R4
      200 JUMPIFNOT                        R11 ; [+14]
      201 GETUPVAL                         R11 4
      202 GETTABLEKS                       R11 R11 K17 ["createElement"]
      204 GETUPVAL                         R12 9
      205 DUPTABLE                         R13 K68 [{"LayoutOrder", "OnDelete"}]
      206 MOVE                             R14 R2
      207 CALL                             R14 0 1
      208 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      210 GETTABLEKS                       R14 R0 K9 ["OnDelete"]
      212 SETTABLEKS                       R14 R13 K9 ["OnDelete"]
      214 CALL                             R11 2 1
      215 SETTABLEKS                       R11 R10 K25 ["InputDelete"]
      217 GETUPVAL                         R11 10
      218 CALL                             R11 0 1
      219 JUMPIFNOT                        R11 ; [+17]
      220 GETUPVAL                         R11 7
      221 CALL                             R11 0 1
      222 JUMPIFNOT                        R11 ; [+14]
      223 MOVE                             R11 R4
      224 JUMPIFNOT                        R11 ; [+12]
      225 GETUPVAL                         R11 4
      226 GETTABLEKS                       R11 R11 K17 ["createElement"]
      228 GETUPVAL                         R12 5
      229 GETTABLEKS                       R12 R12 K18 ["View"]
      231 DUPTABLE                         R13 K70 [{["tag"] = "fill auto-y", ["LayoutOrder"]}]
      232 MOVE                             R14 R2
      233 CALL                             R14 0 1
      234 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      236 CALL                             R11 2 1
      237 SETTABLEKS                       R11 R10 K26 ["InputDeleteSpacer"]
      239 GETTABLEKS                       R12 R0 K71 ["HideWeight"]
      241 NOT                              R11 R12
      242 JUMPIFNOT                        R11 ; [+40]
      243 GETUPVAL                         R12 7
      244 CALL                             R12 0 1
      245 JUMPIFNOT                        R12 ; [+2]
      246 NOT                              R11 R4
      247 JUMPIFNOT                        R11 ; [+35]
      248 GETUPVAL                         R11 4
      249 GETTABLEKS                       R11 R11 K17 ["createElement"]
      251 GETUPVAL                         R12 5
      252 GETTABLEKS                       R12 R12 K29 ["Text"]
      254 DUPTABLE                         R13 K73 [{"tag", "Size", "Text", "LayoutOrder"}]
      255 GETUPVAL                         R15 7
      256 CALL                             R15 0 1
      257 JUMPIFNOT                        R15 ; [+2]
      258 LOADK                            R14 K74 ["fill auto-y text-body-small text-align-x-left content-muted"]
      259 JUMP                             ; [+1]
      260 LOADK                            R14 K75 ["auto-y text-body-small text-align-x-left content-muted"]
      261 SETTABLEKS                       R14 R13 K19 ["tag"]
      263 GETIMPORT                        R14 K78 [UDim2.fromOffset]
      265 LOADN                            R15 30
      266 LOADN                            R16 0
      267 CALL                             R14 2 1
      268 SETTABLEKS                       R14 R13 K72 ["Size"]
      270 LOADK                            R15 K79 ["%*%%"]
      271 ORK                              R17 R3 K80 [0]
      272 NAMECALL                         R15 R15 K81 ["format"]
      274 CALL                             R15 2 1
      275 MOVE                             R14 R15
      276 SETTABLEKS                       R14 R13 K29 ["Text"]
      278 MOVE                             R14 R2
      279 CALL                             R14 0 1
      280 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      282 CALL                             R11 2 1
      283 SETTABLEKS                       R11 R10 K27 ["InputWeight"]
      285 CALL                             R7 3 -1
      286 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeInput"]
       15 GETTABLEKS                       R2 R2 K9 ["DeleteInputButton"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["NodeGraphing"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Util"]
       43 GETTABLEKS                       R6 R6 K15 ["Nodes"]
       45 GETTABLEKS                       R6 R6 K16 ["NodeNameFormattingUtils"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Components"]
       52 GETTABLEKS                       R7 R7 K7 ["NodeView"]
       54 GETTABLEKS                       R7 R7 K17 ["CompositorNodeProperty"]
       56 GETTABLEKS                       R7 R7 K18 ["PropertyLabel"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K10 ["Parent"]
       63 GETTABLEKS                       R8 R8 K19 ["React"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K10 ["Parent"]
       70 GETTABLEKS                       R9 R9 K20 ["ReactUtils"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R4 K21 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R11 R0 K22 ["Flags"]
       79 GETTABLEKS                       R11 R11 K23 ["getFFlagAnimGraphUIDeleteIconArea"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K5 [require]
       84 GETTABLEKS                       R12 R0 K22 ["Flags"]
       86 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphUIDeleteInputButtonChanges"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K5 [require]
       91 GETTABLEKS                       R13 R0 K22 ["Flags"]
       93 GETTABLEKS                       R13 R13 K25 ["getFFlagAnimGraphUIDuplicateNodeNames"]
       95 CALL                             R12 1 1
       96 DUPCLOSURE                       R13 K26 [PROTO_0]
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R10
      108 RETURN                           R13 1
