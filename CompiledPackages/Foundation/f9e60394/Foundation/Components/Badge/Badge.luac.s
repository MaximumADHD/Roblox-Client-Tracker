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
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K1 ["XSmall"]
       16 GETUPVAL                         R6 5
       17 MOVE                             R7 R5
       18 LOADB                            R8 1
       19 CALL                             R6 2 1
       20 GETUPVAL                         R7 6
       21 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U7
       26 NEWTABLE                         R9 0 1
       28 GETTABLEKS                       R10 R2 K3 ["icon"]
       30 SETLIST                          R9 R10 1 [1]
       32 CALL                             R7 2 1
       33 LOADB                            R8 0
       34 GETTABLEKS                       R9 R2 K4 ["text"]
       36 JUMPIFEQKNIL                     R9 ; [+9]
       38 GETTABLEKS                       R10 R2 K4 ["text"]
       40 LENGTH                           R9 R10
       41 LOADN                            R10 0
       42 JUMPIFLT                         R10 R9 ; [+2]
       44 LOADB                            R8 0 +1
       45 LOADB                            R8 1
       46 NOT                              R9 R8
       47 GETUPVAL                         R10 8
       48 MOVE                             R11 R4
       49 MOVE                             R12 R3
       50 MOVE                             R13 R9
       51 CALL                             R10 3 1
       52 LOADNIL                          R11
       53 JUMPIFEQKNIL                     R7 ; [+144]
       55 GETTABLEKS                       R13 R7 K5 ["position"]
       57 GETUPVAL                         R14 7
       58 GETTABLEKS                       R14 R14 K6 ["Left"]
       60 JUMPIFNOTEQ                      R13 R14 ; [+3]
       62 LOADN                            R12 1
       63 JUMP                             ; [+1]
       64 LOADN                            R12 3
       65 GETUPVAL                         R13 9
       66 GETTABLEKS                       R14 R7 K7 ["name"]
       68 CALL                             R13 1 1
       69 JUMPIFNOT                        R13 ; [+59]
       70 GETUPVAL                         R13 6
       71 GETTABLEKS                       R13 R13 K8 ["createElement"]
       73 GETUPVAL                         R14 10
       74 DUPTABLE                         R15 K13 [{"name", "variant", "size", "style", "LayoutOrder", "testId"}]
       75 GETUPVAL                         R17 11
       76 GETTABLEKS                       R18 R7 K7 ["name"]
       78 CALL                             R17 1 1
       79 JUMPIFNOT                        R17 ; [+7]
       80 GETUPVAL                         R17 12
       81 GETTABLEKS                       R18 R7 K7 ["name"]
       83 GETTABLE                         R16 R17 R18
       84 GETTABLEKS                       R16 R16 K7 ["name"]
       86 JUMP                             ; [+2]
       87 GETTABLEKS                       R16 R7 K7 ["name"]
       89 SETTABLEKS                       R16 R15 K7 ["name"]
       91 GETUPVAL                         R17 11
       92 GETTABLEKS                       R18 R7 K7 ["name"]
       94 CALL                             R17 1 1
       95 JUMPIFNOT                        R17 ; [+7]
       96 GETUPVAL                         R17 12
       97 GETTABLEKS                       R18 R7 K7 ["name"]
       99 GETTABLE                         R16 R17 R18
      100 GETTABLEKS                       R16 R16 K0 ["variant"]
      102 JUMP                             ; [+2]
      103 GETTABLEKS                       R16 R7 K0 ["variant"]
      105 SETTABLEKS                       R16 R15 K0 ["variant"]
      107 SETTABLEKS                       R5 R15 K9 ["size"]
      109 GETTABLEKS                       R16 R10 K14 ["content"]
      111 GETTABLEKS                       R16 R16 K10 ["style"]
      113 SETTABLEKS                       R16 R15 K10 ["style"]
      115 SETTABLEKS                       R12 R15 K11 ["LayoutOrder"]
      117 LOADK                            R17 K15 ["%*--icon"]
      118 GETTABLEKS                       R19 R2 K12 ["testId"]
      120 NAMECALL                         R17 R17 K16 ["format"]
      122 CALL                             R17 2 1
      123 MOVE                             R16 R17
      124 SETTABLEKS                       R16 R15 K12 ["testId"]
      126 CALL                             R13 2 1
      127 MOVE                             R11 R13
      128 JUMP                             ; [+69]
      129 GETUPVAL                         R13 13
      130 GETTABLEKS                       R14 R7 K7 ["name"]
      132 GETUPVAL                         R15 4
      133 GETTABLEKS                       R15 R15 K1 ["XSmall"]
      135 CALL                             R13 2 2
      136 JUMPIFNOT                        R13 ; [+61]
      137 GETUPVAL                         R15 6
      138 GETTABLEKS                       R15 R15 K8 ["createElement"]
      140 GETUPVAL                         R16 14
      141 DUPTABLE                         R17 K18 [{"Size"}]
      142 SETTABLEKS                       R6 R17 K17 ["Size"]
      144 GETUPVAL                         R18 6
      145 GETTABLEKS                       R18 R18 K8 ["createElement"]
      147 GETUPVAL                         R19 15
      148 DUPTABLE                         R20 K24 [{"Image", "Size", "imageStyle", "scale", "AnchorPoint", "Position", "LayoutOrder", "testId"}]
      149 GETTABLEKS                       R21 R7 K7 ["name"]
      151 SETTABLEKS                       R21 R20 K19 ["Image"]
      153 GETIMPORT                        R21 K27 [UDim2.fromOffset]
      155 GETTABLEKS                       R22 R13 K28 ["X"]
      157 GETTABLEKS                       R23 R13 K29 ["Y"]
      159 CALL                             R21 2 1
      160 SETTABLEKS                       R21 R20 K17 ["Size"]
      162 GETTABLEKS                       R21 R10 K14 ["content"]
      164 GETTABLEKS                       R21 R21 K10 ["style"]
      166 SETTABLEKS                       R21 R20 K20 ["imageStyle"]
      168 SETTABLEKS                       R14 R20 K21 ["scale"]
      170 GETIMPORT                        R21 K32 [Vector2.new]
      172 LOADK                            R22 K33 [0.5]
      173 LOADK                            R23 K33 [0.5]
      174 CALL                             R21 2 1
      175 SETTABLEKS                       R21 R20 K22 ["AnchorPoint"]
      177 GETIMPORT                        R21 K35 [UDim2.fromScale]
      179 LOADK                            R22 K33 [0.5]
      180 LOADK                            R23 K33 [0.5]
      181 CALL                             R21 2 1
      182 SETTABLEKS                       R21 R20 K23 ["Position"]
      184 SETTABLEKS                       R12 R20 K11 ["LayoutOrder"]
      186 LOADK                            R22 K15 ["%*--icon"]
      187 GETTABLEKS                       R24 R2 K12 ["testId"]
      189 NAMECALL                         R22 R22 K16 ["format"]
      191 CALL                             R22 2 1
      192 MOVE                             R21 R22
      193 SETTABLEKS                       R21 R20 K12 ["testId"]
      195 CALL                             R18 2 -1
      196 CALL                             R15 -1 1
      197 MOVE                             R11 R15
      198 GETUPVAL                         R12 6
      199 GETTABLEKS                       R12 R12 K8 ["createElement"]
      201 GETUPVAL                         R13 14
      202 GETUPVAL                         R14 16
      203 MOVE                             R15 R2
      204 DUPTABLE                         R16 K40 [{"backgroundStyle", "stroke", "tag", "ref"}]
      205 GETTABLEKS                       R17 R10 K41 ["container"]
      207 GETTABLEKS                       R17 R17 K36 ["backgroundStyle"]
      209 SETTABLEKS                       R17 R16 K36 ["backgroundStyle"]
      211 GETTABLEKS                       R17 R10 K41 ["container"]
      213 GETTABLEKS                       R17 R17 K37 ["stroke"]
      215 SETTABLEKS                       R17 R16 K37 ["stroke"]
      217 GETTABLEKS                       R17 R10 K41 ["container"]
      219 GETTABLEKS                       R17 R17 K38 ["tag"]
      221 SETTABLEKS                       R17 R16 K38 ["tag"]
      223 SETTABLEKS                       R1 R16 K39 ["ref"]
      225 CALL                             R14 2 1
      226 DUPTABLE                         R15 K44 [{"Icon", "Text"}]
      227 SETTABLEKS                       R11 R15 K42 ["Icon"]
      229 JUMPIFNOT                        R8 ; [+38]
      230 GETUPVAL                         R16 6
      231 GETTABLEKS                       R16 R16 K8 ["createElement"]
      233 GETUPVAL                         R17 17
      234 DUPTABLE                         R18 K47 [{"Text", "textStyle", "RichText", "LayoutOrder", "tag", "testId"}]
      235 GETTABLEKS                       R19 R2 K4 ["text"]
      237 SETTABLEKS                       R19 R18 K43 ["Text"]
      239 GETTABLEKS                       R19 R10 K14 ["content"]
      241 GETTABLEKS                       R19 R19 K10 ["style"]
      243 SETTABLEKS                       R19 R18 K45 ["textStyle"]
      245 LOADB                            R19 1
      246 SETTABLEKS                       R19 R18 K46 ["RichText"]
      248 LOADN                            R19 2
      249 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      251 GETTABLEKS                       R19 R10 K4 ["text"]
      253 GETTABLEKS                       R19 R19 K38 ["tag"]
      255 SETTABLEKS                       R19 R18 K38 ["tag"]
      257 LOADK                            R20 K48 ["%*--text"]
      258 GETTABLEKS                       R22 R2 K12 ["testId"]
      260 NAMECALL                         R20 R20 K16 ["format"]
      262 CALL                             R20 2 1
      263 MOVE                             R19 R20
      264 SETTABLEKS                       R19 R18 K12 ["testId"]
      266 CALL                             R16 2 1
      267 JUMP                             ; [+1]
      268 LOADNIL                          R16
      269 SETTABLEKS                       R16 R15 K43 ["Text"]
      271 CALL                             R12 3 -1
      272 RETURN                           R12 -1

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
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R0 K11 ["Components"]
       27 GETTABLEKS                       R6 R6 K12 ["Icon"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Components"]
       34 GETTABLEKS                       R7 R7 K13 ["Image"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R0 K11 ["Components"]
       41 GETTABLEKS                       R8 R8 K14 ["Text"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R9 R0 K11 ["Components"]
       48 GETTABLEKS                       R9 R9 K15 ["Types"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R10 R0 K11 ["Components"]
       55 GETTABLEKS                       R10 R10 K16 ["View"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R11 R0 K17 ["Utility"]
       62 GETTABLEKS                       R11 R11 K18 ["getIconScale"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K6 [require]
       67 GETTABLEKS                       R12 R0 K17 ["Utility"]
       69 GETTABLEKS                       R12 R12 K19 ["iconMigrationUtils"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K6 [require]
       74 GETIMPORT                        R13 K1 [script]
       76 GETTABLEKS                       R13 R13 K4 ["Parent"]
       78 GETTABLEKS                       R13 R13 K20 ["useBadgeVariants"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETTABLEKS                       R14 R0 K17 ["Utility"]
       85 GETTABLEKS                       R14 R14 K21 ["useIconSize"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K6 [require]
       90 GETTABLEKS                       R15 R0 K22 ["Providers"]
       92 GETTABLEKS                       R15 R15 K23 ["Style"]
       94 GETTABLEKS                       R15 R15 K24 ["useTokens"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETTABLEKS                       R16 R0 K17 ["Utility"]
      101 GETTABLEKS                       R16 R16 K25 ["withCommonProps"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K6 [require]
      106 GETTABLEKS                       R17 R0 K17 ["Utility"]
      108 GETTABLEKS                       R17 R17 K26 ["withDefaults"]
      110 CALL                             R16 1 1
      111 GETTABLEKS                       R17 R11 K27 ["isMigrated"]
      113 GETTABLEKS                       R18 R11 K28 ["isBuilderOrMigratedIcon"]
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R20 R0 K29 ["Enums"]
      119 GETTABLEKS                       R20 R20 K30 ["BadgeVariant"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K6 [require]
      124 GETTABLEKS                       R21 R0 K29 ["Enums"]
      126 GETTABLEKS                       R21 R21 K31 ["BadgeSize"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K6 [require]
      131 GETTABLEKS                       R22 R0 K29 ["Enums"]
      133 GETTABLEKS                       R22 R22 K32 ["IconSize"]
      135 CALL                             R21 1 1
      136 GETIMPORT                        R22 K6 [require]
      138 GETTABLEKS                       R23 R0 K29 ["Enums"]
      140 GETTABLEKS                       R23 R23 K33 ["IconPosition"]
      142 CALL                             R22 1 1
      143 DUPTABLE                         R23 K36 [{"variant", "testId"}]
      144 GETTABLEKS                       R24 R19 K37 ["Contrast"]
      146 SETTABLEKS                       R24 R23 K34 ["variant"]
      148 LOADK                            R24 K38 ["--foundation-badge"]
      149 SETTABLEKS                       R24 R23 K35 ["testId"]
      151 NEWTABLE                         R24 2 0
      153 GETTABLEKS                       R25 R19 K39 ["Primary"]
      155 GETTABLEKS                       R26 R19 K37 ["Contrast"]
      157 SETTABLE                         R26 R24 R25
      158 GETTABLEKS                       R25 R19 K40 ["Secondary"]
      160 GETTABLEKS                       R26 R19 K41 ["Neutral"]
      162 SETTABLE                         R26 R24 R25
      163 DUPCLOSURE                       R25 K42 [PROTO_1]
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R24
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R21
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R7
      182 GETTABLEKS                       R26 R2 K43 ["memo"]
      184 GETTABLEKS                       R27 R2 K44 ["forwardRef"]
      186 MOVE                             R28 R25
      187 CALL                             R27 1 -1
      188 CALL                             R26 -1 -1
      189 RETURN                           R26 -1
