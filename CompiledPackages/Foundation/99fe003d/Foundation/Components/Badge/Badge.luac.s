PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["icon"]
        3 FASTCALL1                        TYPEOF R1 ; [+2]
        4 GETIMPORT                        R0 K2 [typeof]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["string"] ; [+13]
        9 DUPTABLE                         R0 K6 [{"name", "position"}]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["icon"]
       13 SETTABLEKS                       R1 R0 K4 ["name"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K7 ["Left"]
       18 SETTABLEKS                       R1 R0 K5 ["position"]
       20 RETURN                           R0 1
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K0 ["icon"]
       24 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R5 R2 K0 ["variant"]
        7 GETTABLE                         R3 R4 R5
        8 JUMPIF                           R3 ; [+2]
        9 GETTABLEKS                       R3 R2 K0 ["variant"]
       11 GETUPVAL                         R4 3
       12 LOADN                            R5 200
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 4
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U6
       22 NEWTABLE                         R8 0 1
       24 GETTABLEKS                       R9 R2 K2 ["icon"]
       26 SETLIST                          R8 R9 1 [1]
       28 CALL                             R6 2 1
       29 LOADB                            R7 0
       30 GETTABLEKS                       R8 R2 K3 ["text"]
       32 JUMPIFEQKNIL                     R8 ; [+9]
       34 GETTABLEKS                       R9 R2 K3 ["text"]
       36 LENGTH                           R8 R9
       37 LOADN                            R9 0
       38 JUMPIFLT                         R9 R8 ; [+2]
       40 LOADB                            R7 0 +1
       41 LOADB                            R7 1
       42 NOT                              R8 R7
       43 GETUPVAL                         R9 7
       44 MOVE                             R10 R5
       45 MOVE                             R11 R3
       46 GETTABLEKS                       R12 R2 K4 ["shape"]
       48 GETUPVAL                         R14 8
       49 GETTABLEKS                       R14 R14 K5 ["FoundationBadgeBetaUpdate"]
       51 JUMPIFNOT                        R14 ; [+3]
       52 GETTABLEKS                       R13 R2 K6 ["size"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R13
       56 GETUPVAL                         R15 8
       57 GETTABLEKS                       R15 R15 K5 ["FoundationBadgeBetaUpdate"]
       59 JUMPIFNOT                        R15 ; [+4]
       60 JUMPIFNOT                        R6 ; [+3]
       61 GETTABLEKS                       R14 R6 K7 ["position"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R14
       65 GETUPVAL                         R16 8
       66 GETTABLEKS                       R16 R16 K5 ["FoundationBadgeBetaUpdate"]
       68 JUMPIFNOT                        R16 ; [+2]
       69 LOADNIL                          R15
       70 JUMP                             ; [+1]
       71 MOVE                             R15 R8
       72 CALL                             R9 6 1
       73 GETUPVAL                         R11 8
       74 GETTABLEKS                       R11 R11 K5 ["FoundationBadgeBetaUpdate"]
       76 JUMPIFNOT                        R11 ; [+5]
       77 GETTABLEKS                       R10 R9 K2 ["icon"]
       79 GETTABLEKS                       R10 R10 K6 ["size"]
       81 JUMP                             ; [+3]
       82 GETUPVAL                         R10 9
       83 GETTABLEKS                       R10 R10 K8 ["XSmall"]
       85 GETUPVAL                         R11 10
       86 MOVE                             R12 R10
       87 LOADB                            R13 1
       88 CALL                             R11 2 1
       89 LOADNIL                          R12
       90 JUMPIFEQKNIL                     R6 ; [+171]
       92 GETTABLEKS                       R14 R6 K7 ["position"]
       94 GETUPVAL                         R15 6
       95 GETTABLEKS                       R15 R15 K9 ["Left"]
       97 JUMPIFNOTEQ                      R14 R15 ; [+3]
       99 LOADN                            R13 1
      100 JUMP                             ; [+1]
      101 LOADN                            R13 3
      102 GETUPVAL                         R14 11
      103 GETTABLEKS                       R15 R6 K10 ["name"]
      105 CALL                             R14 1 1
      106 JUMPIFNOT                        R14 ; [+79]
      107 GETUPVAL                         R14 5
      108 GETTABLEKS                       R14 R14 K11 ["createElement"]
      110 GETUPVAL                         R15 12
      111 DUPTABLE                         R16 K15 [{"name", "variant", "size", "style", "LayoutOrder", "testId"}]
      112 GETUPVAL                         R18 13
      113 GETTABLEKS                       R19 R6 K10 ["name"]
      115 CALL                             R18 1 1
      116 JUMPIFNOT                        R18 ; [+7]
      117 GETUPVAL                         R18 14
      118 GETTABLEKS                       R19 R6 K10 ["name"]
      120 GETTABLE                         R17 R18 R19
      121 GETTABLEKS                       R17 R17 K10 ["name"]
      123 JUMP                             ; [+2]
      124 GETTABLEKS                       R17 R6 K10 ["name"]
      126 SETTABLEKS                       R17 R16 K10 ["name"]
      128 GETUPVAL                         R18 13
      129 GETTABLEKS                       R19 R6 K10 ["name"]
      131 CALL                             R18 1 1
      132 JUMPIFNOT                        R18 ; [+7]
      133 GETUPVAL                         R18 14
      134 GETTABLEKS                       R19 R6 K10 ["name"]
      136 GETTABLE                         R17 R18 R19
      137 GETTABLEKS                       R17 R17 K0 ["variant"]
      139 JUMP                             ; [+13]
      140 GETUPVAL                         R18 8
      141 GETTABLEKS                       R18 R18 K5 ["FoundationBadgeBetaUpdate"]
      143 JUMPIFNOT                        R18 ; [+7]
      144 GETTABLEKS                       R17 R6 K0 ["variant"]
      146 JUMPIF                           R17 ; [+6]
      147 GETUPVAL                         R17 15
      148 GETTABLEKS                       R17 R17 K16 ["Filled"]
      150 JUMP                             ; [+2]
      151 GETTABLEKS                       R17 R6 K0 ["variant"]
      153 SETTABLEKS                       R17 R16 K0 ["variant"]
      155 SETTABLEKS                       R10 R16 K6 ["size"]
      157 GETUPVAL                         R18 8
      158 GETTABLEKS                       R18 R18 K5 ["FoundationBadgeBetaUpdate"]
      160 JUMPIFNOT                        R18 ; [+5]
      161 GETTABLEKS                       R17 R9 K2 ["icon"]
      163 GETTABLEKS                       R17 R17 K12 ["style"]
      165 JUMP                             ; [+4]
      166 GETTABLEKS                       R17 R9 K17 ["content"]
      168 GETTABLEKS                       R17 R17 K12 ["style"]
      170 SETTABLEKS                       R17 R16 K12 ["style"]
      172 SETTABLEKS                       R13 R16 K13 ["LayoutOrder"]
      174 LOADK                            R18 K18 ["%*--icon"]
      175 GETTABLEKS                       R20 R2 K14 ["testId"]
      177 NAMECALL                         R18 R18 K19 ["format"]
      179 CALL                             R18 2 1
      180 MOVE                             R17 R18
      181 SETTABLEKS                       R17 R16 K14 ["testId"]
      183 CALL                             R14 2 1
      184 MOVE                             R12 R14
      185 JUMP                             ; [+76]
      186 GETUPVAL                         R14 16
      187 GETTABLEKS                       R15 R6 K10 ["name"]
      189 MOVE                             R16 R10
      190 CALL                             R14 2 2
      191 JUMPIFNOT                        R14 ; [+70]
      192 GETUPVAL                         R16 5
      193 GETTABLEKS                       R16 R16 K11 ["createElement"]
      195 GETUPVAL                         R17 17
      196 DUPTABLE                         R18 K21 [{"Size"}]
      197 SETTABLEKS                       R11 R18 K20 ["Size"]
      199 GETUPVAL                         R19 5
      200 GETTABLEKS                       R19 R19 K11 ["createElement"]
      202 GETUPVAL                         R20 18
      203 DUPTABLE                         R21 K27 [{"Image", "Size", "imageStyle", "scale", "AnchorPoint", "Position", "LayoutOrder", "testId"}]
      204 GETTABLEKS                       R22 R6 K10 ["name"]
      206 SETTABLEKS                       R22 R21 K22 ["Image"]
      208 GETIMPORT                        R22 K30 [UDim2.fromOffset]
      210 GETTABLEKS                       R23 R14 K31 ["X"]
      212 GETTABLEKS                       R24 R14 K32 ["Y"]
      214 CALL                             R22 2 1
      215 SETTABLEKS                       R22 R21 K20 ["Size"]
      217 GETUPVAL                         R23 8
      218 GETTABLEKS                       R23 R23 K5 ["FoundationBadgeBetaUpdate"]
      220 JUMPIFNOT                        R23 ; [+5]
      221 GETTABLEKS                       R22 R9 K2 ["icon"]
      223 GETTABLEKS                       R22 R22 K12 ["style"]
      225 JUMP                             ; [+4]
      226 GETTABLEKS                       R22 R9 K17 ["content"]
      228 GETTABLEKS                       R22 R22 K12 ["style"]
      230 SETTABLEKS                       R22 R21 K23 ["imageStyle"]
      232 SETTABLEKS                       R15 R21 K24 ["scale"]
      234 GETIMPORT                        R22 K35 [Vector2.new]
      236 LOADK                            R23 K36 [0.5]
      237 LOADK                            R24 K36 [0.5]
      238 CALL                             R22 2 1
      239 SETTABLEKS                       R22 R21 K25 ["AnchorPoint"]
      241 GETIMPORT                        R22 K38 [UDim2.fromScale]
      243 LOADK                            R23 K36 [0.5]
      244 LOADK                            R24 K36 [0.5]
      245 CALL                             R22 2 1
      246 SETTABLEKS                       R22 R21 K26 ["Position"]
      248 SETTABLEKS                       R13 R21 K13 ["LayoutOrder"]
      250 LOADK                            R23 K18 ["%*--icon"]
      251 GETTABLEKS                       R25 R2 K14 ["testId"]
      253 NAMECALL                         R23 R23 K19 ["format"]
      255 CALL                             R23 2 1
      256 MOVE                             R22 R23
      257 SETTABLEKS                       R22 R21 K14 ["testId"]
      259 CALL                             R19 2 -1
      260 CALL                             R16 -1 1
      261 MOVE                             R12 R16
      262 GETUPVAL                         R13 5
      263 GETTABLEKS                       R13 R13 K11 ["createElement"]
      265 GETUPVAL                         R14 17
      266 GETUPVAL                         R15 19
      267 MOVE                             R16 R2
      268 DUPTABLE                         R17 K43 [{"backgroundStyle", "stroke", "tag", "ref"}]
      269 GETTABLEKS                       R18 R9 K44 ["container"]
      271 GETTABLEKS                       R18 R18 K39 ["backgroundStyle"]
      273 SETTABLEKS                       R18 R17 K39 ["backgroundStyle"]
      275 GETUPVAL                         R19 8
      276 GETTABLEKS                       R19 R19 K5 ["FoundationBadgeBetaUpdate"]
      278 JUMPIFNOT                        R19 ; [+2]
      279 LOADNIL                          R18
      280 JUMP                             ; [+4]
      281 GETTABLEKS                       R18 R9 K44 ["container"]
      283 GETTABLEKS                       R18 R18 K40 ["stroke"]
      285 SETTABLEKS                       R18 R17 K40 ["stroke"]
      287 GETTABLEKS                       R18 R9 K44 ["container"]
      289 GETTABLEKS                       R18 R18 K41 ["tag"]
      291 SETTABLEKS                       R18 R17 K41 ["tag"]
      293 SETTABLEKS                       R1 R17 K42 ["ref"]
      295 CALL                             R15 2 1
      296 DUPTABLE                         R16 K47 [{"Icon", "Text"}]
      297 SETTABLEKS                       R12 R16 K45 ["Icon"]
      299 JUMPIFNOT                        R7 ; [+48]
      300 GETUPVAL                         R17 5
      301 GETTABLEKS                       R17 R17 K11 ["createElement"]
      303 GETUPVAL                         R18 20
      304 DUPTABLE                         R19 K53 [{["Text"], ["textStyle"], ["RichText"] = True, ["LayoutOrder"] = 2, ["tag"], ["testId"], ["sizeConstraint"]}]
      305 GETTABLEKS                       R20 R2 K3 ["text"]
      307 SETTABLEKS                       R20 R19 K46 ["Text"]
      309 GETTABLEKS                       R20 R9 K17 ["content"]
      311 GETTABLEKS                       R20 R20 K12 ["style"]
      313 SETTABLEKS                       R20 R19 K48 ["textStyle"]
      315 GETTABLEKS                       R20 R9 K3 ["text"]
      317 GETTABLEKS                       R20 R20 K41 ["tag"]
      319 SETTABLEKS                       R20 R19 K41 ["tag"]
      321 LOADK                            R21 K54 ["%*--text"]
      322 GETTABLEKS                       R23 R2 K14 ["testId"]
      324 NAMECALL                         R21 R21 K19 ["format"]
      326 CALL                             R21 2 1
      327 MOVE                             R20 R21
      328 SETTABLEKS                       R20 R19 K14 ["testId"]
      330 GETUPVAL                         R21 8
      331 GETTABLEKS                       R21 R21 K5 ["FoundationBadgeBetaUpdate"]
      333 JUMPIFNOT                        R21 ; [+9]
      334 DUPTABLE                         R20 K56 [{"MaxSize"}]
      335 GETIMPORT                        R21 K35 [Vector2.new]
      337 MOVE                             R22 R4
      338 LOADK                            R23 K57 [∞]
      339 CALL                             R21 2 1
      340 SETTABLEKS                       R21 R20 K55 ["MaxSize"]
      342 JUMP                             ; [+1]
      343 LOADNIL                          R20
      344 SETTABLEKS                       R20 R19 K52 ["sizeConstraint"]
      346 CALL                             R17 2 1
      347 JUMP                             ; [+1]
      348 LOADNIL                          R17
      349 SETTABLEKS                       R17 R16 K46 ["Text"]
      351 CALL                             R13 3 -1
      352 RETURN                           R13 -1

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
       19 GETTABLEKS                       R5 R3 K10 ["Migration"]
       21 GETTABLEKS                       R4 R5 K9 ["uiblox"]
       23 GETTABLEKS                       R5 R3 K11 ["IconVariant"]
       25 GETIMPORT                        R6 K6 [require]
       27 GETTABLEKS                       R7 R0 K12 ["Components"]
       29 GETTABLEKS                       R7 R7 K13 ["Icon"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K6 [require]
       34 GETTABLEKS                       R8 R0 K12 ["Components"]
       36 GETTABLEKS                       R8 R8 K14 ["Image"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETTABLEKS                       R9 R0 K12 ["Components"]
       43 GETTABLEKS                       R9 R9 K15 ["Text"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K6 [require]
       48 GETTABLEKS                       R10 R0 K12 ["Components"]
       50 GETTABLEKS                       R10 R10 K16 ["Types"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K6 [require]
       55 GETTABLEKS                       R11 R0 K12 ["Components"]
       57 GETTABLEKS                       R11 R11 K17 ["View"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETTABLEKS                       R12 R0 K18 ["Utility"]
       64 GETTABLEKS                       R12 R12 K19 ["getIconScale"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K6 [require]
       69 GETTABLEKS                       R13 R0 K18 ["Utility"]
       71 GETTABLEKS                       R13 R13 K20 ["iconMigrationUtils"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K6 [require]
       76 GETIMPORT                        R14 K1 [script]
       78 GETTABLEKS                       R14 R14 K4 ["Parent"]
       80 GETTABLEKS                       R14 R14 K21 ["useBadgeVariants"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K6 [require]
       85 GETTABLEKS                       R15 R0 K18 ["Utility"]
       87 GETTABLEKS                       R15 R15 K22 ["useIconSize"]
       89 CALL                             R14 1 1
       90 GETIMPORT                        R15 K6 [require]
       92 GETTABLEKS                       R16 R0 K23 ["Providers"]
       94 GETTABLEKS                       R16 R16 K24 ["Style"]
       96 GETTABLEKS                       R16 R16 K25 ["useTokens"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K6 [require]
      101 GETTABLEKS                       R17 R0 K18 ["Utility"]
      103 GETTABLEKS                       R17 R17 K26 ["withCommonProps"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K6 [require]
      108 GETTABLEKS                       R18 R0 K18 ["Utility"]
      110 GETTABLEKS                       R18 R18 K27 ["withDefaults"]
      112 CALL                             R17 1 1
      113 GETTABLEKS                       R18 R12 K28 ["isMigrated"]
      115 GETTABLEKS                       R19 R12 K29 ["isBuilderOrMigratedIcon"]
      117 GETIMPORT                        R20 K6 [require]
      119 GETTABLEKS                       R21 R0 K18 ["Utility"]
      121 GETTABLEKS                       R21 R21 K30 ["Flags"]
      123 CALL                             R20 1 1
      124 GETIMPORT                        R21 K6 [require]
      126 GETTABLEKS                       R22 R0 K18 ["Utility"]
      128 GETTABLEKS                       R22 R22 K31 ["useScaledValue"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K6 [require]
      133 GETTABLEKS                       R23 R0 K32 ["Enums"]
      135 GETTABLEKS                       R23 R23 K33 ["BadgeVariant"]
      137 CALL                             R22 1 1
      138 GETIMPORT                        R23 K6 [require]
      140 GETTABLEKS                       R24 R0 K32 ["Enums"]
      142 GETTABLEKS                       R24 R24 K34 ["BadgeShape"]
      144 CALL                             R23 1 1
      145 GETIMPORT                        R24 K6 [require]
      147 GETTABLEKS                       R25 R0 K32 ["Enums"]
      149 GETTABLEKS                       R25 R25 K35 ["BadgeSize"]
      151 CALL                             R24 1 1
      152 GETIMPORT                        R25 K6 [require]
      154 GETTABLEKS                       R26 R0 K32 ["Enums"]
      156 GETTABLEKS                       R26 R26 K36 ["IconSize"]
      158 CALL                             R25 1 1
      159 GETIMPORT                        R26 K6 [require]
      161 GETTABLEKS                       R27 R0 K32 ["Enums"]
      163 GETTABLEKS                       R27 R27 K37 ["IconPosition"]
      165 CALL                             R26 1 1
      166 DUPTABLE                         R27 K43 [{["variant"], ["shape"], ["size"], ["testId"] = "--foundation-badge"}]
      167 GETTABLEKS                       R28 R22 K44 ["Contrast"]
      169 SETTABLEKS                       R28 R27 K38 ["variant"]
      171 GETTABLEKS                       R28 R23 K45 ["Pill"]
      173 SETTABLEKS                       R28 R27 K39 ["shape"]
      175 GETTABLEKS                       R28 R24 K46 ["XSmall"]
      177 SETTABLEKS                       R28 R27 K40 ["size"]
      179 NEWTABLE                         R28 2 0
      181 GETTABLEKS                       R29 R22 K47 ["Primary"]
      183 GETTABLEKS                       R30 R22 K44 ["Contrast"]
      185 SETTABLE                         R30 R28 R29
      186 GETTABLEKS                       R29 R22 K48 ["Secondary"]
      188 GETTABLEKS                       R30 R22 K49 ["Neutral"]
      190 SETTABLE                         R30 R28 R29
      191 DUPCLOSURE                       R29 K50 [PROTO_1]
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R27
      194 CAPTURE                          VAL R28
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R26
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R25
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R16
      212 CAPTURE                          VAL R8
      213 GETTABLEKS                       R30 R2 K51 ["memo"]
      215 GETTABLEKS                       R31 R2 K52 ["forwardRef"]
      217 MOVE                             R32 R29
      218 CALL                             R31 1 -1
      219 CALL                             R30 -1 -1
      220 RETURN                           R30 -1
