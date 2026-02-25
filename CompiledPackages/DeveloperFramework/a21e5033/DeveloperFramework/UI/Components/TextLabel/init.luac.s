PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["AnchorPoint"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["Size"]
       10 GETTABLEKS                       R6 R1 K5 ["Text"]
       12 GETTABLEKS                       R7 R1 K6 ["ZIndex"]
       14 GETUPVAL                         R9 0
       15 JUMPIFNOT                        R9 ; [+5]
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R9 R10 K7 ["Tag"]
       19 GETTABLE                         R8 R1 R9
       20 JUMP                             ; [+1]
       21 LOADNIL                          R8
       22 GETUPVAL                         R10 0
       23 JUMPIFNOT                        R10 ; [+6]
       24 GETTABLEKS                       R9 R1 K8 ["Style"]
       26 JUMPIF                           R9 ; [+5]
       27 NEWTABLE                         R9 0 0
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R9 R1 K9 ["Stylizer"]
       32 LOADNIL                          R10
       33 GETUPVAL                         R11 0
       34 JUMPIFNOT                        R11 ; [+38]
       35 FASTCALL1                        TYPEOF R9 ; [+3]
       36 MOVE                             R12 R9
       37 GETIMPORT                        R11 K11 [typeof]
       39 CALL                             R11 1 1
       40 JUMPIFNOTEQKS                    R11 K12 ["string"] ; [+32]
       42 MOVE                             R10 R9
       43 GETIMPORT                        R11 K14 [game]
       45 LOADK                            R13 K15 ["DebugDeveloperFrameworkSdk"]
       46 NAMECALL                         R11 R11 K16 ["GetFastFlag"]
       48 CALL                             R11 2 1
       49 JUMPIFNOT                        R11 ; [+21]
       50 GETUPVAL                         R11 2
       51 LOADK                            R13 K17 ["Plugin"]
       52 NAMECALL                         R11 R11 K18 ["FindFirstAncestorWhichIsA"]
       54 CALL                             R11 2 1
       55 LOADK                            R13 K19 ["Folder"]
       56 NAMECALL                         R11 R11 K20 ["FindFirstChildWhichIsA"]
       58 CALL                             R11 2 1
       59 GETIMPORT                        R12 K22 [print]
       61 LOADK                            R14 K23 ["[DebugDeveloperFrameworkSdk] %* StyleSheets DEPRECATED: Replace TextLabel Style = %* with [React.Tag] = %*"]
       62 GETTABLEKS                       R16 R11 K24 ["Name"]
       64 MOVE                             R17 R9
       65 MOVE                             R18 R10
       66 NAMECALL                         R14 R14 K25 ["format"]
       68 CALL                             R14 4 1
       69 MOVE                             R13 R14
       70 CALL                             R12 1 0
       71 NEWTABLE                         R9 0 0
       73 GETUPVAL                         R12 0
       74 JUMPIFNOT                        R12 ; [+7]
       75 GETUPVAL                         R11 3
       76 GETTABLEKS                       R12 R1 K26 ["BackgroundTransparency"]
       78 GETTABLEKS                       R13 R9 K26 ["BackgroundTransparency"]
       80 CALL                             R11 2 1
       81 JUMP                             ; [+7]
       82 GETUPVAL                         R11 3
       83 GETTABLEKS                       R12 R1 K26 ["BackgroundTransparency"]
       85 GETTABLEKS                       R13 R9 K26 ["BackgroundTransparency"]
       87 LOADN                            R14 1
       88 CALL                             R11 3 1
       89 GETUPVAL                         R12 3
       90 GETTABLEKS                       R13 R1 K27 ["Font"]
       92 GETTABLEKS                       R14 R9 K27 ["Font"]
       94 CALL                             R12 2 1
       95 GETTABLEKS                       R13 R1 K28 ["FontFace"]
       97 GETTABLEKS                       R14 R1 K29 ["RichText"]
       99 GETUPVAL                         R15 3
      100 GETTABLEKS                       R16 R1 K30 ["TextColor"]
      102 GETTABLEKS                       R17 R9 K30 ["TextColor"]
      104 CALL                             R15 2 1
      105 GETUPVAL                         R16 3
      106 GETTABLEKS                       R17 R1 K31 ["TextSize"]
      108 GETTABLEKS                       R18 R9 K31 ["TextSize"]
      110 CALL                             R16 2 1
      111 GETUPVAL                         R17 3
      112 GETTABLEKS                       R18 R1 K32 ["TextTransparency"]
      114 GETTABLEKS                       R19 R9 K32 ["TextTransparency"]
      116 CALL                             R17 2 1
      117 GETUPVAL                         R18 3
      118 GETTABLEKS                       R19 R1 K33 ["TextXAlignment"]
      120 GETTABLEKS                       R20 R9 K33 ["TextXAlignment"]
      122 CALL                             R18 2 1
      123 GETUPVAL                         R19 3
      124 GETTABLEKS                       R20 R1 K34 ["TextYAlignment"]
      126 GETTABLEKS                       R21 R9 K34 ["TextYAlignment"]
      128 CALL                             R19 2 1
      129 GETTABLEKS                       R20 R1 K35 ["TextTruncate"]
      131 GETTABLEKS                       R21 R1 K36 ["TextWrapped"]
      133 GETTABLEKS                       R22 R1 K37 ["AutomaticSize"]
      135 GETTABLEKS                       R23 R1 K38 ["ForwardRef"]
      137 GETUPVAL                         R27 4
      138 GETTABLEKS                       R26 R27 K39 ["Change"]
      140 GETTABLEKS                       R25 R26 K40 ["AbsoluteSize"]
      142 GETTABLE                         R24 R1 R25
      143 GETUPVAL                         R25 0
      144 JUMPIFNOT                        R25 ; [+35]
      145 JUMPIF                           R5 ; [+42]
      146 JUMPIFNOT                        R22 ; [+41]
      147 GETIMPORT                        R25 K43 [Enum.AutomaticSize.XY]
      149 JUMPIFNOTEQ                      R22 R25 ; [+8]
      151 GETIMPORT                        R25 K46 [UDim2.fromScale]
      153 LOADN                            R26 0
      154 LOADN                            R27 0
      155 CALL                             R25 2 1
      156 MOVE                             R5 R25
      157 JUMP                             ; [+30]
      158 GETIMPORT                        R25 K48 [Enum.AutomaticSize.X]
      160 JUMPIFNOTEQ                      R22 R25 ; [+8]
      162 GETIMPORT                        R25 K46 [UDim2.fromScale]
      164 LOADN                            R26 0
      165 LOADN                            R27 1
      166 CALL                             R25 2 1
      167 MOVE                             R5 R25
      168 JUMP                             ; [+19]
      169 GETIMPORT                        R25 K50 [Enum.AutomaticSize.Y]
      171 JUMPIFNOTEQ                      R22 R25 ; [+16]
      173 GETIMPORT                        R25 K46 [UDim2.fromScale]
      175 LOADN                            R26 1
      176 LOADN                            R27 0
      177 CALL                             R25 2 1
      178 MOVE                             R5 R25
      179 JUMP                             ; [+8]
      180 JUMPIF                           R5 ; [+7]
      181 JUMPIF                           R22 ; [+6]
      182 GETIMPORT                        R25 K46 [UDim2.fromScale]
      184 LOADN                            R26 1
      185 LOADN                            R27 1
      186 CALL                             R25 2 1
      187 MOVE                             R5 R25
      188 NEWTABLE                         R25 32 0
      190 SETTABLEKS                       R3 R25 K2 ["AnchorPoint"]
      192 SETTABLEKS                       R22 R25 K37 ["AutomaticSize"]
      194 SETTABLEKS                       R4 R25 K3 ["Position"]
      196 SETTABLEKS                       R11 R25 K26 ["BackgroundTransparency"]
      198 JUMPIFEQKNIL                     R13 ; [+3]
      200 LOADNIL                          R26
      201 JUMP                             ; [+1]
      202 MOVE                             R26 R12
      203 SETTABLEKS                       R26 R25 K27 ["Font"]
      205 SETTABLEKS                       R13 R25 K28 ["FontFace"]
      207 SETTABLEKS                       R2 R25 K1 ["LayoutOrder"]
      209 SETTABLEKS                       R14 R25 K29 ["RichText"]
      211 SETTABLEKS                       R5 R25 K4 ["Size"]
      213 SETTABLEKS                       R6 R25 K5 ["Text"]
      215 SETTABLEKS                       R15 R25 K51 ["TextColor3"]
      217 SETTABLEKS                       R16 R25 K31 ["TextSize"]
      219 SETTABLEKS                       R20 R25 K35 ["TextTruncate"]
      221 SETTABLEKS                       R17 R25 K32 ["TextTransparency"]
      223 SETTABLEKS                       R21 R25 K36 ["TextWrapped"]
      225 SETTABLEKS                       R18 R25 K33 ["TextXAlignment"]
      227 SETTABLEKS                       R19 R25 K34 ["TextYAlignment"]
      229 SETTABLEKS                       R7 R25 K6 ["ZIndex"]
      231 GETUPVAL                         R27 4
      232 GETTABLEKS                       R26 R27 K52 ["Ref"]
      234 SETTABLE                         R23 R25 R26
      235 GETUPVAL                         R28 4
      236 GETTABLEKS                       R27 R28 K39 ["Change"]
      238 GETTABLEKS                       R26 R27 K40 ["AbsoluteSize"]
      240 SETTABLE                         R24 R25 R26
      241 GETUPVAL                         R26 0
      242 JUMPIFNOT                        R26 ; [+24]
      243 GETUPVAL                         R27 1
      244 GETTABLEKS                       R26 R27 K7 ["Tag"]
      246 GETUPVAL                         R27 5
      247 LOADK                            R28 K53 ["Component-TextLabel"]
      248 MOVE                             R29 R8
      249 MOVE                             R30 R10
      250 GETUPVAL                         R32 6
      251 JUMPIFNOT                        R32 ; [+5]
      252 GETUPVAL                         R32 7
      253 JUMPIFNOTEQ                      R5 R32 ; [+3]
      255 LOADK                            R31 K54 ["X-DefaultSize"]
      256 JUMP                             ; [+1]
      257 LOADNIL                          R31
      258 GETUPVAL                         R33 6
      259 JUMPIFNOT                        R33 ; [+4]
      260 JUMPIFNOTEQKN                    R11 K55 [0] ; [+3]
      262 LOADK                            R32 K56 ["X-DefaultTransparency"]
      263 JUMP                             ; [+1]
      264 LOADNIL                          R32
      265 CALL                             R27 5 1
      266 SETTABLE                         R27 R25 R26
      267 GETTABLEKS                       R26 R1 K57 ["TextSelectable"]
      269 JUMPIFNOT                        R26 ; [+24]
      270 GETUPVAL                         R27 4
      271 GETTABLEKS                       R26 R27 K58 ["createElement"]
      273 LOADK                            R27 K59 ["TextBox"]
      274 GETUPVAL                         R29 8
      275 GETTABLEKS                       R28 R29 K60 ["JoinDictionaries"]
      277 MOVE                             R29 R25
      278 DUPTABLE                         R30 K64 [{"ClearTextOnFocus", "MultiLine", "TextEditable"}]
      279 LOADB                            R31 0
      280 SETTABLEKS                       R31 R30 K61 ["ClearTextOnFocus"]
      282 SETTABLEKS                       R21 R30 K62 ["MultiLine"]
      284 LOADB                            R31 0
      285 SETTABLEKS                       R31 R30 K63 ["TextEditable"]
      287 CALL                             R28 2 1
      288 GETUPVAL                         R31 4
      289 GETTABLEKS                       R30 R31 K65 ["Children"]
      291 GETTABLE                         R29 R1 R30
      292 CALL                             R26 3 -1
      293 RETURN                           R26 -1
      294 GETUPVAL                         R27 4
      295 GETTABLEKS                       R26 R27 K58 ["createElement"]
      297 LOADK                            R27 K66 ["TextLabel"]
      298 MOVE                             R28 R25
      299 GETUPVAL                         R31 4
      300 GETTABLEKS                       R30 R31 K65 ["Children"]
      302 GETTABLE                         R29 R1 R30
      303 CALL                             R26 3 -1
      304 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["SharedFlags"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["getFFlagDeveloperFrameworkMigrateStylingV2"]
       16 CALL                             R2 0 1
       17 GETIMPORT                        R3 K6 [require]
       19 GETTABLEKS                       R5 R0 K4 ["Parent"]
       21 GETTABLEKS                       R4 R5 K9 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K6 [require]
       26 GETTABLEKS                       R6 R0 K2 ["UI"]
       28 GETTABLEKS                       R5 R6 K10 ["ContextServices"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R4 K11 ["withContext"]
       33 GETTABLEKS                       R7 R0 K4 ["Parent"]
       35 LOADK                            R9 K12 ["React"]
       36 NAMECALL                         R7 R7 K13 ["FindFirstChild"]
       38 CALL                             R7 2 1
       39 JUMPIFNOT                        R7 ; [+8]
       40 GETIMPORT                        R6 K6 [require]
       42 GETTABLEKS                       R8 R0 K4 ["Parent"]
       44 GETTABLEKS                       R7 R8 K12 ["React"]
       46 CALL                             R6 1 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R6
       49 GETIMPORT                        R7 K6 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Styling"]
       53 GETTABLEKS                       R8 R9 K15 ["supportsStyleSheets"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K6 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Styling"]
       60 GETTABLEKS                       R9 R10 K16 ["joinTags"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K6 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Util"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R9 K18 ["Immutable"]
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K17 ["Util"]
       74 GETTABLEKS                       R12 R13 K19 ["Typecheck"]
       76 CALL                             R11 1 1
       77 GETTABLEKS                       R12 R9 K20 ["prioritize"]
       79 GETIMPORT                        R13 K6 [require]
       81 GETTABLEKS                       R15 R0 K21 ["Wrappers"]
       83 GETTABLEKS                       R14 R15 K22 ["withForwardRef"]
       85 CALL                             R13 1 1
       86 GETTABLEKS                       R14 R3 K23 ["PureComponent"]
       88 LOADK                            R16 K24 ["TextLabel"]
       89 NAMECALL                         R14 R14 K25 ["extend"]
       91 CALL                             R14 2 1
       92 GETTABLEKS                       R15 R11 K26 ["wrap"]
       94 MOVE                             R16 R14
       95 GETIMPORT                        R17 K1 [script]
       97 CALL                             R15 2 0
       98 GETIMPORT                        R15 K29 [UDim2.fromScale]
      100 LOADN                            R16 0
      101 LOADN                            R17 0
      102 CALL                             R15 2 1
      103 DUPCLOSURE                       R16 K30 [PROTO_0]
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R10
      113 SETTABLEKS                       R16 R14 K31 ["render"]
      115 JUMPIF                           R7 ; [+10]
      116 MOVE                             R16 R5
      117 DUPTABLE                         R17 K33 [{"Stylizer"}]
      118 GETTABLEKS                       R18 R4 K32 ["Stylizer"]
      120 SETTABLEKS                       R18 R17 K32 ["Stylizer"]
      122 CALL                             R16 1 1
      123 MOVE                             R17 R14
      124 CALL                             R16 1 1
      125 MOVE                             R14 R16
      126 MOVE                             R16 R13
      127 MOVE                             R17 R14
      128 CALL                             R16 1 -1
      129 RETURN                           R16 -1
