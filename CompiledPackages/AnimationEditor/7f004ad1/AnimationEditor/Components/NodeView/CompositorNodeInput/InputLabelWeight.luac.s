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
       66 DUPTABLE                         R10 K27 [{"InputLabel", "DuplicateWarning", "InputDelete", "InputWeight"}]
       67 GETUPVAL                         R11 4
       68 GETTABLEKS                       R11 R11 K17 ["createElement"]
       70 GETUPVAL                         R13 2
       71 CALL                             R13 0 1
       72 JUMPIFNOT                        R13 ; [+2]
       73 GETUPVAL                         R12 6
       74 JUMP                             ; [+3]
       75 GETUPVAL                         R12 5
       76 GETTABLEKS                       R12 R12 K28 ["Text"]
       78 DUPTABLE                         R13 K31 [{"tag", "Text", "TextTruncate", "LayoutOrder", "isDisabled"}]
       79 GETUPVAL                         R15 7
       80 CALL                             R15 0 1
       81 JUMPIFNOT                        R15 ; [+2]
       82 LOADK                            R14 K32 ["auto-xy text-body-small text-align-x-left content-emphasis"]
       83 JUMP                             ; [+1]
       84 LOADK                            R14 K33 ["fill auto-y text-body-small text-align-x-left content-emphasis"]
       85 SETTABLEKS                       R14 R13 K19 ["tag"]
       87 GETUPVAL                         R15 2
       88 CALL                             R15 0 1
       89 JUMPIFNOT                        R15 ; [+2]
       90 MOVE                             R14 R5
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R14 R0 K13 ["Name"]
       94 SETTABLEKS                       R14 R13 K28 ["Text"]
       96 GETIMPORT                        R14 K36 [Enum.TextTruncate.SplitWord]
       98 SETTABLEKS                       R14 R13 K29 ["TextTruncate"]
      100 MOVE                             R14 R2
      101 CALL                             R14 0 1
      102 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      104 GETUPVAL                         R15 2
      105 CALL                             R15 0 1
      106 JUMPIFNOT                        R15 ; [+2]
      107 MOVE                             R14 R6
      108 JUMP                             ; [+1]
      109 LOADNIL                          R14
      110 SETTABLEKS                       R14 R13 K30 ["isDisabled"]
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K23 ["InputLabel"]
      115 GETUPVAL                         R11 2
      116 CALL                             R11 0 1
      117 JUMPIFNOT                        R11 ; [+71]
      118 GETTABLEKS                       R11 R0 K37 ["HasDuplicateName"]
      120 JUMPIFNOT                        R11 ; [+68]
      121 GETUPVAL                         R11 4
      122 GETTABLEKS                       R11 R11 K17 ["createElement"]
      124 GETUPVAL                         R12 5
      125 GETTABLEKS                       R12 R12 K38 ["Tooltip"]
      127 DUPTABLE                         R13 K42 [{"title", "side", "align", "LayoutOrder"}]
      128 LOADK                            R16 K43 ["Common"]
      129 LOADK                            R17 K44 ["AnimationEditor"]
      130 LOADK                            R18 K45 ["InputPanel"]
      131 LOADK                            R19 K46 ["DuplicateName"]
      132 DUPTABLE                         R20 K48 [{"name"}]
      133 SETTABLEKS                       R5 R20 K47 ["name"]
      135 NAMECALL                         R14 R1 K49 ["getExternalText"]
      137 CALL                             R14 6 1
      138 SETTABLEKS                       R14 R13 K39 ["title"]
      140 GETUPVAL                         R14 5
      141 GETTABLEKS                       R14 R14 K50 ["Enums"]
      143 GETTABLEKS                       R14 R14 K51 ["PopoverSide"]
      145 GETTABLEKS                       R14 R14 K52 ["Bottom"]
      147 SETTABLEKS                       R14 R13 K40 ["side"]
      149 GETUPVAL                         R14 5
      150 GETTABLEKS                       R14 R14 K50 ["Enums"]
      152 GETTABLEKS                       R14 R14 K53 ["PopoverAlign"]
      154 GETTABLEKS                       R14 R14 K54 ["Start"]
      156 SETTABLEKS                       R14 R13 K41 ["align"]
      158 MOVE                             R14 R2
      159 CALL                             R14 0 1
      160 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      162 GETUPVAL                         R14 4
      163 GETTABLEKS                       R14 R14 K17 ["createElement"]
      165 GETUPVAL                         R15 5
      166 GETTABLEKS                       R15 R15 K55 ["Icon"]
      168 DUPTABLE                         R16 K62 [{["tag"] = "auto-xy", ["name"] = "triangle-exclamation", ["size"], ["variant"], ["testId"] = "input-duplicate-warning"}]
      169 GETUPVAL                         R17 5
      170 GETTABLEKS                       R17 R17 K50 ["Enums"]
      172 GETTABLEKS                       R17 R17 K63 ["IconSize"]
      174 GETTABLEKS                       R17 R17 K64 ["XSmall"]
      176 SETTABLEKS                       R17 R16 K58 ["size"]
      178 GETUPVAL                         R17 5
      179 GETTABLEKS                       R17 R17 K50 ["Enums"]
      181 GETTABLEKS                       R17 R17 K65 ["IconVariant"]
      183 GETTABLEKS                       R17 R17 K66 ["Regular"]
      185 SETTABLEKS                       R17 R16 K59 ["variant"]
      187 CALL                             R14 2 -1
      188 CALL                             R11 -1 1
      189 SETTABLEKS                       R11 R10 K24 ["DuplicateWarning"]
      191 GETUPVAL                         R11 7
      192 CALL                             R11 0 1
      193 JUMPIFNOT                        R11 ; [+16]
      194 MOVE                             R11 R4
      195 JUMPIFNOT                        R11 ; [+14]
      196 GETUPVAL                         R11 4
      197 GETTABLEKS                       R11 R11 K17 ["createElement"]
      199 GETUPVAL                         R12 8
      200 DUPTABLE                         R13 K67 [{"LayoutOrder", "OnDelete"}]
      201 MOVE                             R14 R2
      202 CALL                             R14 0 1
      203 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      205 GETTABLEKS                       R14 R0 K9 ["OnDelete"]
      207 SETTABLEKS                       R14 R13 K9 ["OnDelete"]
      209 CALL                             R11 2 1
      210 SETTABLEKS                       R11 R10 K25 ["InputDelete"]
      212 GETTABLEKS                       R12 R0 K68 ["HideWeight"]
      214 NOT                              R11 R12
      215 JUMPIFNOT                        R11 ; [+40]
      216 GETUPVAL                         R12 7
      217 CALL                             R12 0 1
      218 JUMPIFNOT                        R12 ; [+2]
      219 NOT                              R11 R4
      220 JUMPIFNOT                        R11 ; [+35]
      221 GETUPVAL                         R11 4
      222 GETTABLEKS                       R11 R11 K17 ["createElement"]
      224 GETUPVAL                         R12 5
      225 GETTABLEKS                       R12 R12 K28 ["Text"]
      227 DUPTABLE                         R13 K70 [{"tag", "Size", "Text", "LayoutOrder"}]
      228 GETUPVAL                         R15 7
      229 CALL                             R15 0 1
      230 JUMPIFNOT                        R15 ; [+2]
      231 LOADK                            R14 K71 ["fill auto-y text-body-small text-align-x-left content-muted"]
      232 JUMP                             ; [+1]
      233 LOADK                            R14 K72 ["auto-y text-body-small text-align-x-left content-muted"]
      234 SETTABLEKS                       R14 R13 K19 ["tag"]
      236 GETIMPORT                        R14 K75 [UDim2.fromOffset]
      238 LOADN                            R15 30
      239 LOADN                            R16 0
      240 CALL                             R14 2 1
      241 SETTABLEKS                       R14 R13 K69 ["Size"]
      243 LOADK                            R15 K76 ["%*%%"]
      244 ORK                              R17 R3 K77 [0]
      245 NAMECALL                         R15 R15 K78 ["format"]
      247 CALL                             R15 2 1
      248 MOVE                             R14 R15
      249 SETTABLEKS                       R14 R13 K28 ["Text"]
      251 MOVE                             R14 R2
      252 CALL                             R14 0 1
      253 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      255 CALL                             R11 2 1
      256 SETTABLEKS                       R11 R10 K26 ["InputWeight"]
      258 CALL                             R7 3 -1
      259 RETURN                           R7 -1

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
       79 GETTABLEKS                       R11 R11 K23 ["getFFlagAnimGraphUIDuplicateNodeNames"]
       81 CALL                             R10 1 1
       82 DUPCLOSURE                       R11 K24 [PROTO_0]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R1
       92 RETURN                           R11 1
