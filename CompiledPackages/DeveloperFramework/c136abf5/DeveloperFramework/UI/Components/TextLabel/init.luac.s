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
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R9 R9 K7 ["Tag"]
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
       34 JUMPIFNOT                        R11 ; [+37]
       35 FASTCALL1                        TYPEOF R9 ; [+3]
       36 MOVE                             R12 R9
       37 GETIMPORT                        R11 K11 [typeof]
       39 CALL                             R11 1 1
       40 JUMPIFNOTEQKS                    R11 K12 ["string"] ; [+31]
       42 MOVE                             R10 R9
       43 GETIMPORT                        R11 K14 [game]
       45 LOADK                            R13 K15 ["DebugDeveloperFrameworkSdk"]
       46 NAMECALL                         R11 R11 K16 ["GetFastFlag"]
       48 CALL                             R11 2 1
       49 JUMPIFNOT                        R11 ; [+20]
       50 GETUPVAL                         R11 2
       51 LOADK                            R13 K17 ["Plugin"]
       52 NAMECALL                         R11 R11 K18 ["FindFirstAncestorWhichIsA"]
       54 CALL                             R11 2 1
       55 LOADK                            R13 K19 ["Folder"]
       56 NAMECALL                         R11 R11 K20 ["FindFirstChildWhichIsA"]
       58 CALL                             R11 2 1
       59 GETIMPORT                        R12 K22 [print]
       61 LOADK                            R13 K23 ["[DebugDeveloperFrameworkSdk] %* StyleSheets DEPRECATED: Replace TextLabel Style = %* with [React.Tag] = %*"]
       62 GETTABLEKS                       R15 R11 K24 ["Name"]
       64 MOVE                             R16 R9
       65 MOVE                             R17 R10
       66 NAMECALL                         R13 R13 K25 ["format"]
       68 CALL                             R13 4 1
       69 CALL                             R12 1 0
       70 NEWTABLE                         R9 0 0
       72 GETUPVAL                         R12 0
       73 JUMPIFNOT                        R12 ; [+7]
       74 GETUPVAL                         R11 3
       75 GETTABLEKS                       R12 R1 K26 ["BackgroundTransparency"]
       77 GETTABLEKS                       R13 R9 K26 ["BackgroundTransparency"]
       79 CALL                             R11 2 1
       80 JUMP                             ; [+7]
       81 GETUPVAL                         R11 3
       82 GETTABLEKS                       R12 R1 K26 ["BackgroundTransparency"]
       84 GETTABLEKS                       R13 R9 K26 ["BackgroundTransparency"]
       86 LOADN                            R14 1
       87 CALL                             R11 3 1
       88 GETUPVAL                         R12 3
       89 GETTABLEKS                       R13 R1 K27 ["Font"]
       91 GETTABLEKS                       R14 R9 K27 ["Font"]
       93 CALL                             R12 2 1
       94 GETTABLEKS                       R13 R1 K28 ["FontFace"]
       96 GETTABLEKS                       R14 R1 K29 ["RichText"]
       98 GETUPVAL                         R15 3
       99 GETTABLEKS                       R16 R1 K30 ["TextColor"]
      101 GETTABLEKS                       R17 R9 K30 ["TextColor"]
      103 CALL                             R15 2 1
      104 GETUPVAL                         R16 3
      105 GETTABLEKS                       R17 R1 K31 ["TextSize"]
      107 GETTABLEKS                       R18 R9 K31 ["TextSize"]
      109 CALL                             R16 2 1
      110 GETUPVAL                         R17 3
      111 GETTABLEKS                       R18 R1 K32 ["TextTransparency"]
      113 GETTABLEKS                       R19 R9 K32 ["TextTransparency"]
      115 CALL                             R17 2 1
      116 GETUPVAL                         R18 3
      117 GETTABLEKS                       R19 R1 K33 ["TextXAlignment"]
      119 GETTABLEKS                       R20 R9 K33 ["TextXAlignment"]
      121 CALL                             R18 2 1
      122 GETUPVAL                         R19 3
      123 GETTABLEKS                       R20 R1 K34 ["TextYAlignment"]
      125 GETTABLEKS                       R21 R9 K34 ["TextYAlignment"]
      127 CALL                             R19 2 1
      128 GETTABLEKS                       R20 R1 K35 ["TextTruncate"]
      130 GETTABLEKS                       R21 R1 K36 ["TextWrapped"]
      132 GETTABLEKS                       R22 R1 K37 ["AutomaticSize"]
      134 GETTABLEKS                       R23 R1 K38 ["ForwardRef"]
      136 GETUPVAL                         R25 4
      137 GETTABLEKS                       R25 R25 K39 ["Change"]
      139 GETTABLEKS                       R25 R25 K40 ["AbsoluteSize"]
      141 GETTABLE                         R24 R1 R25
      142 GETUPVAL                         R25 0
      143 JUMPIFNOT                        R25 ; [+35]
      144 JUMPIF                           R5 ; [+42]
      145 JUMPIFNOT                        R22 ; [+41]
      146 GETIMPORT                        R25 K43 [Enum.AutomaticSize.XY]
      148 JUMPIFNOTEQ                      R22 R25 ; [+8]
      150 GETIMPORT                        R25 K46 [UDim2.fromScale]
      152 LOADN                            R26 0
      153 LOADN                            R27 0
      154 CALL                             R25 2 1
      155 MOVE                             R5 R25
      156 JUMP                             ; [+30]
      157 GETIMPORT                        R25 K48 [Enum.AutomaticSize.X]
      159 JUMPIFNOTEQ                      R22 R25 ; [+8]
      161 GETIMPORT                        R25 K46 [UDim2.fromScale]
      163 LOADN                            R26 0
      164 LOADN                            R27 1
      165 CALL                             R25 2 1
      166 MOVE                             R5 R25
      167 JUMP                             ; [+19]
      168 GETIMPORT                        R25 K50 [Enum.AutomaticSize.Y]
      170 JUMPIFNOTEQ                      R22 R25 ; [+16]
      172 GETIMPORT                        R25 K46 [UDim2.fromScale]
      174 LOADN                            R26 1
      175 LOADN                            R27 0
      176 CALL                             R25 2 1
      177 MOVE                             R5 R25
      178 JUMP                             ; [+8]
      179 JUMPIF                           R5 ; [+7]
      180 JUMPIF                           R22 ; [+6]
      181 GETIMPORT                        R25 K46 [UDim2.fromScale]
      183 LOADN                            R26 1
      184 LOADN                            R27 1
      185 CALL                             R25 2 1
      186 MOVE                             R5 R25
      187 NEWTABLE                         R25 32 0
      189 SETTABLEKS                       R3 R25 K2 ["AnchorPoint"]
      191 SETTABLEKS                       R22 R25 K37 ["AutomaticSize"]
      193 SETTABLEKS                       R4 R25 K3 ["Position"]
      195 SETTABLEKS                       R11 R25 K26 ["BackgroundTransparency"]
      197 JUMPIFEQKNIL                     R13 ; [+3]
      199 LOADNIL                          R26
      200 JUMP                             ; [+1]
      201 MOVE                             R26 R12
      202 SETTABLEKS                       R26 R25 K27 ["Font"]
      204 SETTABLEKS                       R13 R25 K28 ["FontFace"]
      206 SETTABLEKS                       R2 R25 K1 ["LayoutOrder"]
      208 SETTABLEKS                       R14 R25 K29 ["RichText"]
      210 SETTABLEKS                       R5 R25 K4 ["Size"]
      212 SETTABLEKS                       R6 R25 K5 ["Text"]
      214 SETTABLEKS                       R15 R25 K51 ["TextColor3"]
      216 SETTABLEKS                       R16 R25 K31 ["TextSize"]
      218 SETTABLEKS                       R20 R25 K35 ["TextTruncate"]
      220 SETTABLEKS                       R17 R25 K32 ["TextTransparency"]
      222 SETTABLEKS                       R21 R25 K36 ["TextWrapped"]
      224 SETTABLEKS                       R18 R25 K33 ["TextXAlignment"]
      226 SETTABLEKS                       R19 R25 K34 ["TextYAlignment"]
      228 SETTABLEKS                       R7 R25 K6 ["ZIndex"]
      230 GETUPVAL                         R26 4
      231 GETTABLEKS                       R26 R26 K52 ["Ref"]
      233 SETTABLE                         R23 R25 R26
      234 GETUPVAL                         R26 4
      235 GETTABLEKS                       R26 R26 K39 ["Change"]
      237 GETTABLEKS                       R26 R26 K40 ["AbsoluteSize"]
      239 SETTABLE                         R24 R25 R26
      240 GETUPVAL                         R26 0
      241 JUMPIFNOT                        R26 ; [+20]
      242 GETUPVAL                         R26 1
      243 GETTABLEKS                       R26 R26 K7 ["Tag"]
      245 GETUPVAL                         R27 5
      246 LOADK                            R28 K53 ["Component-TextLabel"]
      247 MOVE                             R29 R8
      248 MOVE                             R30 R10
      249 GETUPVAL                         R32 6
      250 JUMPIFNOTEQ                      R5 R32 ; [+3]
      252 LOADK                            R31 K54 ["X-DefaultSize"]
      253 JUMP                             ; [+1]
      254 LOADNIL                          R31
      255 JUMPIFNOTEQKN                    R11 K55 [0] ; [+3]
      257 LOADK                            R32 K56 ["X-DefaultTransparency"]
      258 JUMP                             ; [+1]
      259 LOADNIL                          R32
      260 CALL                             R27 5 1
      261 SETTABLE                         R27 R25 R26
      262 GETTABLEKS                       R26 R1 K57 ["TextSelectable"]
      264 JUMPIFNOT                        R26 ; [+18]
      265 GETUPVAL                         R26 4
      266 GETTABLEKS                       R26 R26 K58 ["createElement"]
      268 LOADK                            R27 K59 ["TextBox"]
      269 GETUPVAL                         R28 7
      270 GETTABLEKS                       R28 R28 K60 ["JoinDictionaries"]
      272 MOVE                             R29 R25
      273 DUPTABLE                         R30 K65 [{["ClearTextOnFocus"] = False, ["MultiLine"], ["TextEditable"] = False}]
      274 SETTABLEKS                       R21 R30 K63 ["MultiLine"]
      276 CALL                             R28 2 1
      277 GETUPVAL                         R30 4
      278 GETTABLEKS                       R30 R30 K66 ["Children"]
      280 GETTABLE                         R29 R1 R30
      281 CALL                             R26 3 -1
      282 RETURN                           R26 -1
      283 GETUPVAL                         R26 4
      284 GETTABLEKS                       R26 R26 K58 ["createElement"]
      286 LOADK                            R27 K67 ["TextLabel"]
      287 MOVE                             R28 R25
      288 GETUPVAL                         R30 4
      289 GETTABLEKS                       R30 R30 K66 ["Children"]
      291 GETTABLE                         R29 R1 R30
      292 CALL                             R26 3 -1
      293 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 LOADK                            R7 K10 ["React"]
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+8]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R5 K10 ["React"]
       38 CALL                             R4 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Styling"]
       45 GETTABLEKS                       R6 R6 K13 ["supportsStyleSheets"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K12 ["Styling"]
       52 GETTABLEKS                       R7 R7 K14 ["joinTags"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K6 [require]
       57 GETTABLEKS                       R8 R0 K15 ["Util"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R7 K16 ["Immutable"]
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K15 ["Util"]
       66 GETTABLEKS                       R10 R10 K17 ["Typecheck"]
       68 CALL                             R9 1 1
       69 GETTABLEKS                       R10 R7 K18 ["prioritize"]
       71 GETIMPORT                        R11 K6 [require]
       73 GETTABLEKS                       R12 R0 K19 ["Wrappers"]
       75 GETTABLEKS                       R12 R12 K20 ["withForwardRef"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R12 R1 K21 ["PureComponent"]
       80 LOADK                            R14 K22 ["TextLabel"]
       81 NAMECALL                         R12 R12 K23 ["extend"]
       83 CALL                             R12 2 1
       84 GETTABLEKS                       R13 R9 K24 ["wrap"]
       86 MOVE                             R14 R12
       87 GETIMPORT                        R15 K1 [script]
       89 CALL                             R13 2 0
       90 GETIMPORT                        R13 K27 [UDim2.fromScale]
       92 LOADN                            R14 0
       93 LOADN                            R15 0
       94 CALL                             R13 2 1
       95 DUPCLOSURE                       R14 K28 [PROTO_0]
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R8
      104 SETTABLEKS                       R14 R12 K29 ["render"]
      106 JUMPIF                           R5 ; [+10]
      107 MOVE                             R14 R3
      108 DUPTABLE                         R15 K31 [{"Stylizer"}]
      109 GETTABLEKS                       R16 R2 K30 ["Stylizer"]
      111 SETTABLEKS                       R16 R15 K30 ["Stylizer"]
      113 CALL                             R14 1 1
      114 MOVE                             R15 R12
      115 CALL                             R14 1 1
      116 MOVE                             R12 R14
      117 MOVE                             R14 R11
      118 MOVE                             R15 R12
      119 CALL                             R14 1 -1
      120 RETURN                           R14 -1
