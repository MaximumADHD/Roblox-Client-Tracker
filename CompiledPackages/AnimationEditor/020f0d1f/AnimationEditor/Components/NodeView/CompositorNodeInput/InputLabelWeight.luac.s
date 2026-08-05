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
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K11 ["translateLabel"]
       33 MOVE                             R6 R1
       34 GETTABLEKS                       R7 R0 K12 ["Label"]
       36 JUMPIF                           R7 ; [+2]
       37 GETTABLEKS                       R7 R0 K13 ["Name"]
       39 CALL                             R5 2 1
       40 GETTABLEKS                       R8 R0 K12 ["Label"]
       42 FASTCALL1                        TYPE R8 ; [+2]
       43 GETIMPORT                        R7 K15 [type]
       45 CALL                             R7 1 1
       46 JUMPIFNOTEQKS                    R7 K16 ["string"] ; [+2]
       48 LOADB                            R6 0 +1
       49 LOADB                            R6 1
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R7 R7 K17 ["createElement"]
       53 GETUPVAL                         R8 4
       54 GETTABLEKS                       R8 R8 K18 ["View"]
       56 DUPTABLE                         R9 K22 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       57 GETTABLEKS                       R10 R0 K21 ["LayoutOrder"]
       59 SETTABLEKS                       R10 R9 K21 ["LayoutOrder"]
       61 DUPTABLE                         R10 K28 [{"InputLabel", "DuplicateWarning", "InputDelete", "InputDeleteSpacer", "InputWeight"}]
       62 GETUPVAL                         R11 3
       63 GETTABLEKS                       R11 R11 K17 ["createElement"]
       65 GETUPVAL                         R12 5
       66 DUPTABLE                         R13 K32 [{"tag", "Text", "TextTruncate", "LayoutOrder", "isDisabled"}]
       67 NEWTABLE                         R14 2 0
       69 LOADB                            R15 1
       70 SETTABLEKS                       R15 R14 K33 ["auto-xy text-body-small text-align-x-left content-emphasis"]
       72 GETUPVAL                         R15 6
       73 CALL                             R15 0 1
       74 SETTABLEKS                       R15 R14 K34 ["shrink"]
       76 SETTABLEKS                       R14 R13 K19 ["tag"]
       78 SETTABLEKS                       R5 R13 K29 ["Text"]
       80 GETIMPORT                        R14 K37 [Enum.TextTruncate.SplitWord]
       82 SETTABLEKS                       R14 R13 K30 ["TextTruncate"]
       84 MOVE                             R14 R2
       85 CALL                             R14 0 1
       86 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
       88 SETTABLEKS                       R6 R13 K31 ["isDisabled"]
       90 CALL                             R11 2 1
       91 SETTABLEKS                       R11 R10 K23 ["InputLabel"]
       93 GETUPVAL                         R12 7
       94 CALL                             R12 0 1
       95 JUMPIFNOT                        R12 ; [+2]
       96 NOT                              R11 R4
       97 JUMPIFNOT                        R11 ; [+71]
       98 GETTABLEKS                       R11 R0 K38 ["HasDuplicateName"]
      100 JUMPIFNOT                        R11 ; [+68]
      101 GETUPVAL                         R11 3
      102 GETTABLEKS                       R11 R11 K17 ["createElement"]
      104 GETUPVAL                         R12 4
      105 GETTABLEKS                       R12 R12 K39 ["Tooltip"]
      107 DUPTABLE                         R13 K43 [{"title", "side", "align", "LayoutOrder"}]
      108 LOADK                            R16 K44 ["Common"]
      109 LOADK                            R17 K45 ["AnimationEditor"]
      110 LOADK                            R18 K46 ["InputPanel"]
      111 LOADK                            R19 K47 ["DuplicateName"]
      112 DUPTABLE                         R20 K49 [{"name"}]
      113 SETTABLEKS                       R5 R20 K48 ["name"]
      115 NAMECALL                         R14 R1 K50 ["getExternalText"]
      117 CALL                             R14 6 1
      118 SETTABLEKS                       R14 R13 K40 ["title"]
      120 GETUPVAL                         R14 4
      121 GETTABLEKS                       R14 R14 K51 ["Enums"]
      123 GETTABLEKS                       R14 R14 K52 ["PopoverSide"]
      125 GETTABLEKS                       R14 R14 K53 ["Bottom"]
      127 SETTABLEKS                       R14 R13 K41 ["side"]
      129 GETUPVAL                         R14 4
      130 GETTABLEKS                       R14 R14 K51 ["Enums"]
      132 GETTABLEKS                       R14 R14 K54 ["PopoverAlign"]
      134 GETTABLEKS                       R14 R14 K55 ["Start"]
      136 SETTABLEKS                       R14 R13 K42 ["align"]
      138 MOVE                             R14 R2
      139 CALL                             R14 0 1
      140 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      142 GETUPVAL                         R14 3
      143 GETTABLEKS                       R14 R14 K17 ["createElement"]
      145 GETUPVAL                         R15 4
      146 GETTABLEKS                       R15 R15 K56 ["Icon"]
      148 DUPTABLE                         R16 K63 [{["tag"] = "auto-xy", ["name"] = "triangle-exclamation", ["size"], ["variant"], ["testId"] = "input-duplicate-warning"}]
      149 GETUPVAL                         R17 4
      150 GETTABLEKS                       R17 R17 K51 ["Enums"]
      152 GETTABLEKS                       R17 R17 K64 ["IconSize"]
      154 GETTABLEKS                       R17 R17 K65 ["XSmall"]
      156 SETTABLEKS                       R17 R16 K59 ["size"]
      158 GETUPVAL                         R17 4
      159 GETTABLEKS                       R17 R17 K51 ["Enums"]
      161 GETTABLEKS                       R17 R17 K66 ["IconVariant"]
      163 GETTABLEKS                       R17 R17 K67 ["Regular"]
      165 SETTABLEKS                       R17 R16 K60 ["variant"]
      167 CALL                             R14 2 -1
      168 CALL                             R11 -1 1
      169 SETTABLEKS                       R11 R10 K24 ["DuplicateWarning"]
      171 MOVE                             R11 R4
      172 JUMPIFNOT                        R11 ; [+14]
      173 GETUPVAL                         R11 3
      174 GETTABLEKS                       R11 R11 K17 ["createElement"]
      176 GETUPVAL                         R12 8
      177 DUPTABLE                         R13 K68 [{"LayoutOrder", "OnDelete"}]
      178 MOVE                             R14 R2
      179 CALL                             R14 0 1
      180 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      182 GETTABLEKS                       R14 R0 K9 ["OnDelete"]
      184 SETTABLEKS                       R14 R13 K9 ["OnDelete"]
      186 CALL                             R11 2 1
      187 SETTABLEKS                       R11 R10 K25 ["InputDelete"]
      189 MOVE                             R11 R4
      190 JUMPIFNOT                        R11 ; [+12]
      191 GETUPVAL                         R11 3
      192 GETTABLEKS                       R11 R11 K17 ["createElement"]
      194 GETUPVAL                         R12 4
      195 GETTABLEKS                       R12 R12 K18 ["View"]
      197 DUPTABLE                         R13 K70 [{["tag"] = "fill auto-y", ["LayoutOrder"]}]
      198 MOVE                             R14 R2
      199 CALL                             R14 0 1
      200 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      202 CALL                             R11 2 1
      203 SETTABLEKS                       R11 R10 K26 ["InputDeleteSpacer"]
      205 GETTABLEKS                       R12 R0 K71 ["HideWeight"]
      207 NOT                              R11 R12
      208 JUMPIFNOT                        R11 ; [+41]
      209 NOT                              R11 R4
      210 JUMPIFNOT                        R11 ; [+39]
      211 GETUPVAL                         R11 3
      212 GETTABLEKS                       R11 R11 K17 ["createElement"]
      214 GETUPVAL                         R12 4
      215 GETTABLEKS                       R12 R12 K29 ["Text"]
      217 DUPTABLE                         R13 K73 [{"tag", "Size", "Text", "LayoutOrder"}]
      218 NEWTABLE                         R14 2 0
      220 LOADB                            R15 1
      221 SETTABLEKS                       R15 R14 K74 ["auto-y text-body-small text-align-x-left content-muted"]
      223 GETUPVAL                         R16 6
      224 CALL                             R16 0 1
      225 NOT                              R15 R16
      226 SETTABLEKS                       R15 R14 K75 ["fill"]
      228 SETTABLEKS                       R14 R13 K19 ["tag"]
      230 GETIMPORT                        R14 K78 [UDim2.fromOffset]
      232 LOADN                            R15 30
      233 LOADN                            R16 0
      234 CALL                             R14 2 1
      235 SETTABLEKS                       R14 R13 K72 ["Size"]
      237 LOADK                            R15 K79 ["%*%%"]
      238 ORK                              R17 R3 K80 [0]
      239 NAMECALL                         R15 R15 K81 ["format"]
      241 CALL                             R15 2 1
      242 MOVE                             R14 R15
      243 SETTABLEKS                       R14 R13 K29 ["Text"]
      245 MOVE                             R14 R2
      246 CALL                             R14 0 1
      247 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      249 CALL                             R11 2 1
      250 SETTABLEKS                       R11 R10 K27 ["InputWeight"]
      252 CALL                             R7 3 -1
      253 RETURN                           R7 -1

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
       34 GETTABLEKS                       R5 R0 K13 ["Util"]
       36 GETTABLEKS                       R5 R5 K14 ["Nodes"]
       38 GETTABLEKS                       R5 R5 K15 ["NodeNameFormattingUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Components"]
       45 GETTABLEKS                       R6 R6 K7 ["NodeView"]
       47 GETTABLEKS                       R6 R6 K16 ["CompositorNodeProperty"]
       49 GETTABLEKS                       R6 R6 K17 ["PropertyLabel"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K10 ["Parent"]
       56 GETTABLEKS                       R7 R7 K18 ["React"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K10 ["Parent"]
       63 GETTABLEKS                       R8 R8 K19 ["ReactUtils"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K20 ["Flags"]
       70 GETTABLEKS                       R9 R9 K21 ["getFFlagAnimGraphUIDeleteInputButtonChanges"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K20 ["Flags"]
       77 GETTABLEKS                       R10 R10 K22 ["getFFlagAnimGraphUIWeightOverlap"]
       79 CALL                             R9 1 1
       80 DUPCLOSURE                       R10 K23 [PROTO_0]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R1
       90 RETURN                           R10 1
