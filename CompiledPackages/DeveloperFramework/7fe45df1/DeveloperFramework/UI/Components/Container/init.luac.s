PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Background"]
        4 GETTABLEKS                       R3 R1 K2 ["BackgroundStyle"]
        6 GETTABLEKS                       R4 R1 K3 ["BackgroundStyleModifier"]
        8 GETTABLEKS                       R5 R1 K4 ["Active"]
       10 GETTABLEKS                       R6 R1 K5 ["AutomaticSize"]
       12 GETTABLEKS                       R7 R1 K6 ["Padding"]
       14 GETTABLEKS                       R8 R1 K7 ["Margin"]
       16 GETTABLEKS                       R9 R1 K8 ["Size"]
       18 JUMPIF                           R9 ; [+7]
       19 GETIMPORT                        R9 K11 [UDim2.new]
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 LOADN                            R12 1
       24 LOADN                            R13 0
       25 CALL                             R9 4 1
       26 GETTABLEKS                       R10 R1 K12 ["Position"]
       28 GETTABLEKS                       R11 R1 K13 ["AnchorPoint"]
       30 GETTABLEKS                       R12 R1 K14 ["ZIndex"]
       32 GETTABLEKS                       R13 R1 K15 ["LayoutOrder"]
       34 GETTABLEKS                       R14 R1 K16 ["Visible"]
       36 GETTABLEKS                       R15 R1 K17 ["ElementOverride"]
       38 GETTABLEKS                       R16 R1 K18 ["ForwardRef"]
       40 GETTABLEKS                       R18 R1 K20 ["ClipsDescendants"]
       42 ORK                              R17 R18 K19 [False]
       43 GETUPVAL                         R19 0
       44 GETTABLEKS                       R19 R19 K21 ["Children"]
       46 GETTABLE                         R18 R1 R19
       47 JUMPIF                           R18 ; [+2]
       48 NEWTABLE                         R18 0 0
       50 FASTCALL1                        TYPE R7 ; [+3]
       51 MOVE                             R20 R7
       52 GETIMPORT                        R19 K23 [type]
       54 CALL                             R19 1 1
       55 JUMPIFNOTEQKS                    R19 K24 ["number"] ; [+45]
       57 GETUPVAL                         R19 1
       58 GETTABLEKS                       R19 R19 K25 ["JoinDictionaries"]
       60 MOVE                             R20 R18
       61 DUPTABLE                         R21 K26 [{"Padding"}]
       62 GETUPVAL                         R22 0
       63 GETTABLEKS                       R22 R22 K27 ["createElement"]
       65 LOADK                            R23 K28 ["UIPadding"]
       66 DUPTABLE                         R24 K33 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       67 GETIMPORT                        R25 K35 [UDim.new]
       69 LOADN                            R26 0
       70 MOVE                             R27 R7
       71 CALL                             R25 2 1
       72 SETTABLEKS                       R25 R24 K29 ["PaddingTop"]
       74 GETIMPORT                        R25 K35 [UDim.new]
       76 LOADN                            R26 0
       77 MOVE                             R27 R7
       78 CALL                             R25 2 1
       79 SETTABLEKS                       R25 R24 K30 ["PaddingBottom"]
       81 GETIMPORT                        R25 K35 [UDim.new]
       83 LOADN                            R26 0
       84 MOVE                             R27 R7
       85 CALL                             R25 2 1
       86 SETTABLEKS                       R25 R24 K31 ["PaddingLeft"]
       88 GETIMPORT                        R25 K35 [UDim.new]
       90 LOADN                            R26 0
       91 MOVE                             R27 R7
       92 CALL                             R25 2 1
       93 SETTABLEKS                       R25 R24 K32 ["PaddingRight"]
       95 CALL                             R22 2 1
       96 SETTABLEKS                       R22 R21 K6 ["Padding"]
       98 CALL                             R19 2 1
       99 MOVE                             R18 R19
      100 JUMP                             ; [+54]
      101 FASTCALL1                        TYPE R7 ; [+3]
      102 MOVE                             R20 R7
      103 GETIMPORT                        R19 K23 [type]
      105 CALL                             R19 1 1
      106 JUMPIFNOTEQKS                    R19 K36 ["table"] ; [+48]
      108 GETUPVAL                         R19 1
      109 GETTABLEKS                       R19 R19 K25 ["JoinDictionaries"]
      111 MOVE                             R20 R18
      112 DUPTABLE                         R21 K26 [{"Padding"}]
      113 GETUPVAL                         R22 0
      114 GETTABLEKS                       R22 R22 K27 ["createElement"]
      116 LOADK                            R23 K28 ["UIPadding"]
      117 DUPTABLE                         R24 K33 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      118 GETIMPORT                        R25 K35 [UDim.new]
      120 LOADN                            R26 0
      121 GETTABLEKS                       R27 R7 K37 ["Top"]
      123 CALL                             R25 2 1
      124 SETTABLEKS                       R25 R24 K29 ["PaddingTop"]
      126 GETIMPORT                        R25 K35 [UDim.new]
      128 LOADN                            R26 0
      129 GETTABLEKS                       R27 R7 K38 ["Bottom"]
      131 CALL                             R25 2 1
      132 SETTABLEKS                       R25 R24 K30 ["PaddingBottom"]
      134 GETIMPORT                        R25 K35 [UDim.new]
      136 LOADN                            R26 0
      137 GETTABLEKS                       R27 R7 K39 ["Left"]
      139 CALL                             R25 2 1
      140 SETTABLEKS                       R25 R24 K31 ["PaddingLeft"]
      142 GETIMPORT                        R25 K35 [UDim.new]
      144 LOADN                            R26 0
      145 GETTABLEKS                       R27 R7 K40 ["Right"]
      147 CALL                             R25 2 1
      148 SETTABLEKS                       R25 R24 K32 ["PaddingRight"]
      150 CALL                             R22 2 1
      151 SETTABLEKS                       R22 R21 K6 ["Padding"]
      153 CALL                             R19 2 1
      154 MOVE                             R18 R19
      155 LOADNIL                          R19
      156 JUMPIFNOT                        R8 ; [+89]
      157 FASTCALL1                        TYPE R8 ; [+3]
      158 MOVE                             R21 R8
      159 GETIMPORT                        R20 K23 [type]
      161 CALL                             R20 1 1
      162 JUMPIFNOTEQKS                    R20 K24 ["number"] ; [+37]
      164 GETUPVAL                         R20 0
      165 GETTABLEKS                       R20 R20 K27 ["createElement"]
      167 LOADK                            R21 K28 ["UIPadding"]
      168 DUPTABLE                         R22 K33 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      169 GETIMPORT                        R23 K35 [UDim.new]
      171 LOADN                            R24 0
      172 MOVE                             R25 R8
      173 CALL                             R23 2 1
      174 SETTABLEKS                       R23 R22 K29 ["PaddingTop"]
      176 GETIMPORT                        R23 K35 [UDim.new]
      178 LOADN                            R24 0
      179 MOVE                             R25 R8
      180 CALL                             R23 2 1
      181 SETTABLEKS                       R23 R22 K30 ["PaddingBottom"]
      183 GETIMPORT                        R23 K35 [UDim.new]
      185 LOADN                            R24 0
      186 MOVE                             R25 R8
      187 CALL                             R23 2 1
      188 SETTABLEKS                       R23 R22 K31 ["PaddingLeft"]
      190 GETIMPORT                        R23 K35 [UDim.new]
      192 LOADN                            R24 0
      193 MOVE                             R25 R8
      194 CALL                             R23 2 1
      195 SETTABLEKS                       R23 R22 K32 ["PaddingRight"]
      197 CALL                             R20 2 1
      198 MOVE                             R19 R20
      199 JUMP                             ; [+46]
      200 FASTCALL1                        TYPE R8 ; [+3]
      201 MOVE                             R21 R8
      202 GETIMPORT                        R20 K23 [type]
      204 CALL                             R20 1 1
      205 JUMPIFNOTEQKS                    R20 K36 ["table"] ; [+40]
      207 GETUPVAL                         R20 0
      208 GETTABLEKS                       R20 R20 K27 ["createElement"]
      210 LOADK                            R21 K28 ["UIPadding"]
      211 DUPTABLE                         R22 K33 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      212 GETIMPORT                        R23 K35 [UDim.new]
      214 LOADN                            R24 0
      215 GETTABLEKS                       R25 R8 K37 ["Top"]
      217 CALL                             R23 2 1
      218 SETTABLEKS                       R23 R22 K29 ["PaddingTop"]
      220 GETIMPORT                        R23 K35 [UDim.new]
      222 LOADN                            R24 0
      223 GETTABLEKS                       R25 R8 K38 ["Bottom"]
      225 CALL                             R23 2 1
      226 SETTABLEKS                       R23 R22 K30 ["PaddingBottom"]
      228 GETIMPORT                        R23 K35 [UDim.new]
      230 LOADN                            R24 0
      231 GETTABLEKS                       R25 R8 K39 ["Left"]
      233 CALL                             R23 2 1
      234 SETTABLEKS                       R23 R22 K31 ["PaddingLeft"]
      236 GETIMPORT                        R23 K35 [UDim.new]
      238 LOADN                            R24 0
      239 GETTABLEKS                       R25 R8 K40 ["Right"]
      241 CALL                             R23 2 1
      242 SETTABLEKS                       R23 R22 K32 ["PaddingRight"]
      244 CALL                             R20 2 1
      245 MOVE                             R19 R20
      246 GETIMPORT                        R20 K11 [UDim2.new]
      248 LOADN                            R21 1
      249 LOADN                            R22 0
      250 LOADN                            R23 1
      251 LOADN                            R24 0
      252 CALL                             R20 4 1
      253 JUMPIFNOT                        R6 ; [+1]
      254 MOVE                             R20 R9
      255 GETUPVAL                         R21 0
      256 GETTABLEKS                       R21 R21 K27 ["createElement"]
      258 ORK                              R22 R15 K41 ["Frame"]
      259 NEWTABLE                         R23 16 0
      261 SETTABLEKS                       R5 R23 K4 ["Active"]
      263 SETTABLEKS                       R6 R23 K5 ["AutomaticSize"]
      265 LOADN                            R24 1
      266 SETTABLEKS                       R24 R23 K42 ["BackgroundTransparency"]
      268 SETTABLEKS                       R9 R23 K8 ["Size"]
      270 GETTABLEKS                       R24 R1 K43 ["SizeConstraint"]
      272 SETTABLEKS                       R24 R23 K43 ["SizeConstraint"]
      274 SETTABLEKS                       R10 R23 K12 ["Position"]
      276 SETTABLEKS                       R13 R23 K15 ["LayoutOrder"]
      278 SETTABLEKS                       R11 R23 K13 ["AnchorPoint"]
      280 SETTABLEKS                       R12 R23 K14 ["ZIndex"]
      282 SETTABLEKS                       R14 R23 K16 ["Visible"]
      284 GETUPVAL                         R24 0
      285 GETTABLEKS                       R24 R24 K44 ["Ref"]
      287 SETTABLE                         R16 R23 R24
      288 GETUPVAL                         R24 0
      289 GETTABLEKS                       R24 R24 K45 ["Change"]
      291 GETTABLEKS                       R24 R24 K46 ["AbsoluteSize"]
      293 GETUPVAL                         R26 0
      294 GETTABLEKS                       R26 R26 K45 ["Change"]
      296 GETTABLEKS                       R26 R26 K46 ["AbsoluteSize"]
      298 GETTABLE                         R25 R1 R26
      299 SETTABLE                         R25 R23 R24
      300 GETUPVAL                         R24 0
      301 GETTABLEKS                       R24 R24 K45 ["Change"]
      303 GETTABLEKS                       R24 R24 K47 ["AbsolutePosition"]
      305 GETUPVAL                         R26 0
      306 GETTABLEKS                       R26 R26 K45 ["Change"]
      308 GETTABLEKS                       R26 R26 K47 ["AbsolutePosition"]
      310 GETTABLE                         R25 R1 R26
      311 SETTABLE                         R25 R23 R24
      312 DUPTABLE                         R24 K50 [{"Margin", "Decoration", "Contents"}]
      313 SETTABLEKS                       R19 R24 K7 ["Margin"]
      315 MOVE                             R25 R2
      316 JUMPIFNOT                        R25 ; [+14]
      317 GETUPVAL                         R25 0
      318 GETTABLEKS                       R25 R25 K27 ["createElement"]
      320 MOVE                             R26 R2
      321 DUPTABLE                         R27 K54 [{"Style", "StyleModifier", "ImageColor3"}]
      322 SETTABLEKS                       R3 R27 K51 ["Style"]
      324 SETTABLEKS                       R4 R27 K52 ["StyleModifier"]
      326 GETTABLEKS                       R28 R1 K53 ["ImageColor3"]
      328 SETTABLEKS                       R28 R27 K53 ["ImageColor3"]
      330 CALL                             R25 2 1
      331 SETTABLEKS                       R25 R24 K48 ["Decoration"]
      333 GETUPVAL                         R25 0
      334 GETTABLEKS                       R25 R25 K27 ["createElement"]
      336 LOADK                            R26 K41 ["Frame"]
      337 DUPTABLE                         R27 K55 [{"ClipsDescendants", "BackgroundTransparency", "Size", "ZIndex"}]
      338 SETTABLEKS                       R17 R27 K20 ["ClipsDescendants"]
      340 LOADN                            R28 1
      341 SETTABLEKS                       R28 R27 K42 ["BackgroundTransparency"]
      343 SETTABLEKS                       R20 R27 K8 ["Size"]
      345 LOADN                            R28 2
      346 SETTABLEKS                       R28 R27 K14 ["ZIndex"]
      348 MOVE                             R28 R18
      349 CALL                             R25 3 1
      350 SETTABLEKS                       R25 R24 K49 ["Contents"]
      352 CALL                             R21 3 -1
      353 RETURN                           R21 -1

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
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Immutable"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["Typecheck"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Wrappers"]
       34 GETTABLEKS                       R6 R6 K12 ["withForwardRef"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       39 LOADK                            R8 K14 ["Container"]
       40 NAMECALL                         R6 R6 K15 ["extend"]
       42 CALL                             R6 2 1
       43 GETTABLEKS                       R7 R4 K16 ["wrap"]
       45 MOVE                             R8 R6
       46 GETIMPORT                        R9 K1 [script]
       48 CALL                             R7 2 0
       49 DUPCLOSURE                       R7 K17 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R7 R6 K18 ["render"]
       54 MOVE                             R7 R5
       55 MOVE                             R8 R6
       56 CALL                             R7 1 -1
       57 RETURN                           R7 -1
