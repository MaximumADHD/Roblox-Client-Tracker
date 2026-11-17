PROTO_0:
        0 SUB                              R4 R2 R0
        1 SUB                              R5 R1 R0
        2 DIV                              R3 R4 R5
        3 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       10 GETTABLEKS                       R2 R2 K3 ["useTokens"]
       12 CALL                             R2 0 1
       13 GETTABLEKS                       R3 R0 K4 ["Volume"]
       15 JUMPIFNOTEQKNIL                  R3 ; [+19]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["createElement"]
       20 GETUPVAL                         R4 3
       21 DUPTABLE                         R5 K10 [{["Text"], ["TextTruncate"], ["tag"] = "size-full text-body-small"}]
       22 LOADK                            R8 K11 ["Cell"]
       23 LOADK                            R9 K12 ["NoValue"]
       24 NAMECALL                         R6 R1 K13 ["getText"]
       26 CALL                             R6 3 1
       27 SETTABLEKS                       R6 R5 K6 ["Text"]
       29 GETIMPORT                        R6 K16 [Enum.TextTruncate.AtEnd]
       31 SETTABLEKS                       R6 R5 K7 ["TextTruncate"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1
       35 GETTABLEKS                       R3 R0 K4 ["Volume"]
       37 LOADN                            R4 0
       38 JUMPIFNOTLT                      R3 R4 ; [+19]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K5 ["createElement"]
       43 GETUPVAL                         R4 3
       44 DUPTABLE                         R5 K10 [{["Text"], ["TextTruncate"], ["tag"] = "size-full text-body-small"}]
       45 LOADK                            R8 K11 ["Cell"]
       46 LOADK                            R9 K17 ["NotSupported"]
       47 NAMECALL                         R6 R1 K13 ["getText"]
       49 CALL                             R6 3 1
       50 SETTABLEKS                       R6 R5 K6 ["Text"]
       52 GETIMPORT                        R6 K16 [Enum.TextTruncate.AtEnd]
       54 SETTABLEKS                       R6 R5 K7 ["TextTruncate"]
       56 CALL                             R3 2 -1
       57 RETURN                           R3 -1
       58 NEWTABLE                         R3 0 0
       60 LOADN                            R6 1
       61 LOADN                            R4 3
       62 LOADN                            R5 1
       63 FORNPREP                         R4
       64 SUBK                             R8 R6 K19 [1]
       65 MULK                             R7 R8 K18 [0.5]
       66 MULK                             R8 R6 K18 [0.5]
       67 GETTABLEKS                       R10 R0 K4 ["Volume"]
       69 FASTCALL2                        MATH_MIN R10 R8 ; [+4]
       71 MOVE                             R11 R8
       72 GETIMPORT                        R9 K22 [math.min]
       74 CALL                             R9 2 1
       75 NEWTABLE                         R10 0 0
       77 GETUPVAL                         R11 4
       78 LOADNIL                          R12
       79 LOADNIL                          R13
       80 FORGPREP                         R11
       81 GETTABLEKS                       R17 R15 K23 ["range"]
       83 GETTABLEKS                       R17 R17 K24 ["Min"]
       85 FASTCALL2                        MATH_MAX R17 R7 ; [+4]
       87 MOVE                             R18 R7
       88 GETIMPORT                        R16 K26 [math.max]
       90 CALL                             R16 2 1
       91 GETTABLEKS                       R18 R15 K23 ["range"]
       93 GETTABLEKS                       R18 R18 K27 ["Max"]
       95 FASTCALL2                        MATH_MIN R18 R9 ; [+4]
       97 MOVE                             R19 R9
       98 GETIMPORT                        R17 K22 [math.min]
      100 CALL                             R17 2 1
      101 JUMPIFLE                         R17 R16 ; [+66]
      103 SUB                              R19 R16 R7
      104 SUB                              R20 R8 R7
      105 DIV                              R18 R19 R20
      106 SUB                              R20 R17 R7
      107 SUB                              R21 R8 R7
      108 DIV                              R19 R20 R21
      109 SUB                              R20 R19 R18
      110 LOADK                            R22 K28 ["Fill"]
      111 FASTCALL1                        TOSTRING R14 ; [+3]
      112 MOVE                             R24 R14
      113 GETIMPORT                        R23 K30 [tostring]
      115 CALL                             R23 1 1
      116 CONCAT                           R21 R22 R23
      117 GETUPVAL                         R22 0
      118 GETTABLEKS                       R22 R22 K5 ["createElement"]
      120 GETUPVAL                         R23 5
      121 DUPTABLE                         R24 K35 [{["Position"], ["Size"], ["ClipsDescendants"] = True}]
      122 GETIMPORT                        R25 K38 [UDim2.fromScale]
      124 MOVE                             R26 R18
      125 LOADN                            R27 0
      126 CALL                             R25 2 1
      127 SETTABLEKS                       R25 R24 K31 ["Position"]
      129 GETIMPORT                        R25 K38 [UDim2.fromScale]
      131 MOVE                             R26 R20
      132 LOADN                            R27 1
      133 CALL                             R25 2 1
      134 SETTABLEKS                       R25 R24 K32 ["Size"]
      136 DUPTABLE                         R25 K40 [{"Bar"}]
      137 GETUPVAL                         R26 0
      138 GETTABLEKS                       R26 R26 K5 ["createElement"]
      140 GETUPVAL                         R27 5
      141 DUPTABLE                         R28 K41 [{"Position", "Size", "tag"}]
      142 GETIMPORT                        R29 K38 [UDim2.fromScale]
      144 MINUS                            R31 R18
      145 DIV                              R30 R31 R20
      146 LOADN                            R31 0
      147 CALL                             R29 2 1
      148 SETTABLEKS                       R29 R28 K31 ["Position"]
      150 GETIMPORT                        R29 K38 [UDim2.fromScale]
      152 DIVRK                            R30 K19 [1] R20
      153 LOADN                            R31 1
      154 CALL                             R29 2 1
      155 SETTABLEKS                       R29 R28 K32 ["Size"]
      157 LOADK                            R30 K42 ["radius-small "]
      158 GETTABLEKS                       R31 R15 K43 ["colorTag"]
      160 CONCAT                           R29 R30 R31
      161 SETTABLEKS                       R29 R28 K8 ["tag"]
      163 CALL                             R26 2 1
      164 SETTABLEKS                       R26 R25 K39 ["Bar"]
      166 CALL                             R22 3 1
      167 SETTABLE                         R22 R10 R21
      168 FORGLOOP                         R11 2 ; [-88]
      170 LOADN                            R13 1
      171 LOADN                            R11 4
      172 LOADN                            R12 1
      173 FORNPREP                         R11
      174 LOADK                            R15 K44 ["Divider"]
      175 MOVE                             R16 R13
      176 CONCAT                           R14 R15 R16
      177 GETUPVAL                         R15 0
      178 GETTABLEKS                       R15 R15 K5 ["createElement"]
      180 GETUPVAL                         R16 5
      181 DUPTABLE                         R17 K49 [{["AnchorPoint"], ["Position"], ["Size"], ["ZIndex"] = 2, ["backgroundStyle"]}]
      182 GETIMPORT                        R18 K52 [Vector2.new]
      184 LOADK                            R19 K18 [0.5]
      185 LOADN                            R20 0
      186 CALL                             R18 2 1
      187 SETTABLEKS                       R18 R17 K45 ["AnchorPoint"]
      189 GETIMPORT                        R18 K38 [UDim2.fromScale]
      191 DIVK                             R19 R13 K53 [5]
      192 LOADN                            R20 0
      193 CALL                             R18 2 1
      194 SETTABLEKS                       R18 R17 K31 ["Position"]
      196 GETIMPORT                        R18 K54 [UDim2.new]
      198 LOADN                            R19 0
      199 LOADN                            R20 1
      200 LOADN                            R21 1
      201 LOADN                            R22 0
      202 CALL                             R18 4 1
      203 SETTABLEKS                       R18 R17 K32 ["Size"]
      205 GETTABLEKS                       R18 R0 K55 ["BackgroundStyle"]
      207 SETTABLEKS                       R18 R17 K48 ["backgroundStyle"]
      209 CALL                             R15 2 1
      210 SETTABLE                         R15 R10 R14
      211 FORNLOOP                         R11
      212 LOADK                            R12 K56 ["Segment"]
      213 MOVE                             R13 R6
      214 CONCAT                           R11 R12 R13
      215 GETUPVAL                         R12 0
      216 GETTABLEKS                       R12 R12 K5 ["createElement"]
      218 GETUPVAL                         R13 5
      219 DUPTABLE                         R14 K59 [{["LayoutOrder"], ["tag"] = "grow size-0-full radius-small bg-shift-400"}]
      220 SETTABLEKS                       R6 R14 K57 ["LayoutOrder"]
      222 MOVE                             R15 R10
      223 CALL                             R12 3 1
      224 SETTABLE                         R12 R3 R11
      225 FORNLOOP                         R4
      226 NEWTABLE                         R4 0 0
      228 LOADN                            R7 1
      229 LOADN                            R5 3
      230 LOADN                            R6 1
      231 FORNPREP                         R5
      232 LOADK                            R9 K11 ["Cell"]
      233 MOVE                             R10 R7
      234 CONCAT                           R8 R9 R10
      235 GETUPVAL                         R9 0
      236 GETTABLEKS                       R9 R9 K5 ["createElement"]
      238 GETUPVAL                         R10 5
      239 DUPTABLE                         R11 K61 [{["LayoutOrder"], ["tag"] = "grow size-0-full"}]
      240 SETTABLEKS                       R7 R11 K57 ["LayoutOrder"]
      242 DUPTABLE                         R12 K63 [{"Label"}]
      243 LOADB                            R13 0
      244 JUMPIFEQKN                       R7 K64 [3] ; [+52]
      246 GETUPVAL                         R13 0
      247 GETTABLEKS                       R13 R13 K5 ["createElement"]
      249 GETUPVAL                         R14 5
      250 DUPTABLE                         R15 K66 [{["tag"] = "size-full-full"}]
      251 DUPTABLE                         R16 K67 [{"Text"}]
      252 GETUPVAL                         R17 0
      253 GETTABLEKS                       R17 R17 K5 ["createElement"]
      255 GETUPVAL                         R18 3
      256 DUPTABLE                         R19 K68 [{"Position", "Text", "tag"}]
      257 GETIMPORT                        R20 K54 [UDim2.new]
      259 LOADN                            R21 1
      260 GETTABLEKS                       R23 R2 K69 ["Gap"]
      262 GETTABLEKS                       R23 R23 K70 ["Small"]
      264 DIVK                             R22 R23 K47 [2]
      265 LOADN                            R23 0
      266 LOADN                            R24 0
      267 CALL                             R20 4 1
      268 SETTABLEKS                       R20 R19 K31 ["Position"]
      270 GETIMPORT                        R20 K73 [string.format]
      272 LOADK                            R21 K74 ["%.1f"]
      273 MULK                             R22 R7 K18 [0.5]
      274 CALL                             R20 2 1
      275 SETTABLEKS                       R20 R19 K6 ["Text"]
      277 NEWTABLE                         R20 4 0
      279 LOADB                            R21 1
      280 SETTABLEKS                       R21 R20 K75 ["text-align-x-center text-align-y-top text-caption-small"]
      282 GETTABLEKS                       R22 R0 K76 ["IsSelected"]
      284 NOT                              R21 R22
      285 SETTABLEKS                       R21 R20 K77 ["content-muted"]
      287 GETTABLEKS                       R21 R0 K76 ["IsSelected"]
      289 SETTABLEKS                       R21 R20 K78 ["content-action-emphasis"]
      291 SETTABLEKS                       R20 R19 K8 ["tag"]
      293 CALL                             R17 2 1
      294 SETTABLEKS                       R17 R16 K6 ["Text"]
      296 CALL                             R13 3 1
      297 SETTABLEKS                       R13 R12 K62 ["Label"]
      299 CALL                             R9 3 1
      300 SETTABLE                         R9 R4 R8
      301 FORNLOOP                         R5
      302 GETUPVAL                         R5 0
      303 GETTABLEKS                       R5 R5 K5 ["createElement"]
      305 GETUPVAL                         R6 5
      306 DUPTABLE                         R7 K80 [{["tag"] = "col size-full-full align-y-center"}]
      307 DUPTABLE                         R8 K82 [{"Bar", "Labels"}]
      308 GETUPVAL                         R9 0
      309 GETTABLEKS                       R9 R9 K5 ["createElement"]
      311 GETUPVAL                         R10 5
      312 DUPTABLE                         R11 K84 [{["LayoutOrder"] = 1, ["tag"] = "row size-full-200 no-flex gap-xxsmall"}]
      313 MOVE                             R12 R3
      314 CALL                             R9 3 1
      315 SETTABLEKS                       R9 R8 K39 ["Bar"]
      317 GETUPVAL                         R9 0
      318 GETTABLEKS                       R9 R9 K5 ["createElement"]
      320 GETUPVAL                         R10 5
      321 DUPTABLE                         R11 K86 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-300 no-flex gap-small"}]
      322 MOVE                             R12 R4
      323 CALL                             R9 3 1
      324 SETTABLEKS                       R9 R8 K81 ["Labels"]
      326 CALL                             R5 3 -1
      327 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Text"]
       23 GETTABLEKS                       R4 R2 K10 ["View"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["Contexts"]
       34 GETTABLEKS                       R6 R6 K13 ["Localization"]
       36 NEWTABLE                         R7 0 3
       38 DUPTABLE                         R8 K17 [{["range"], ["colorTag"] = "bg-system-success"}]
       39 GETIMPORT                        R9 K20 [NumberRange.new]
       41 LOADN                            R10 0
       42 LOADK                            R11 K21 [0.7]
       43 CALL                             R9 2 1
       44 SETTABLEKS                       R9 R8 K14 ["range"]
       46 DUPTABLE                         R9 K23 [{["range"], ["colorTag"] = "bg-system-warning"}]
       47 GETIMPORT                        R10 K20 [NumberRange.new]
       49 LOADK                            R11 K21 [0.7]
       50 LOADN                            R12 1
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K14 ["range"]
       54 DUPTABLE                         R10 K25 [{["range"], ["colorTag"] = "bg-system-alert"}]
       55 GETIMPORT                        R11 K20 [NumberRange.new]
       57 LOADN                            R12 1
       58 LOADK                            R13 K26 [1.5]
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K14 ["range"]
       62 SETLIST                          R7 R8 3 [1]
       64 DUPCLOSURE                       R8 K27 [PROTO_0]
       65 DUPCLOSURE                       R9 K28 [PROTO_1]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 RETURN                           R9 1
