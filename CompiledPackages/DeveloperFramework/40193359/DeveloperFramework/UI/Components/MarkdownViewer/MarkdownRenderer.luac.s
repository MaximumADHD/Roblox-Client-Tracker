PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["joinDeep"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["[Defaullt link callback]: URL [%*] is clicked"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["joinDeep"]
        3 GETTABLEKS                       R2 R0 K1 ["textStyles"]
        5 GETTABLEKS                       R3 R0 K2 ["codeStyles"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_3:
        0 LOADK                            R3 K0 ["%s*[\r\n]%s*"]
        1 LOADK                            R4 K1 [" "]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+22]
        1 DUPTABLE                         R1 K5 [{"Bold", "Italic", "Strike", "Color", "FontFace"}]
        2 GETTABLEKS                       R2 R0 K6 ["bold"]
        4 SETTABLEKS                       R2 R1 K0 ["Bold"]
        6 GETTABLEKS                       R2 R0 K7 ["italic"]
        8 SETTABLEKS                       R2 R1 K1 ["Italic"]
       10 GETTABLEKS                       R2 R0 K8 ["strike"]
       12 SETTABLEKS                       R2 R1 K2 ["Strike"]
       14 GETTABLEKS                       R2 R0 K9 ["color"]
       16 SETTABLEKS                       R2 R1 K3 ["Color"]
       18 GETTABLEKS                       R2 R0 K10 ["fontFace"]
       20 SETTABLEKS                       R2 R1 K4 ["FontFace"]
       22 RETURN                           R1 1
       23 LOADNIL                          R1
       24 RETURN                           R1 1

PROTO_5:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["renderers"]
        6 GETTABLEKS                       R4 R0 K1 ["name"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIF                           R2 ; [+12]
       10 GETIMPORT                        R3 K3 [warn]
       12 LOADK                            R5 K4 ["No renderer found for node: $%*"]
       13 GETTABLEKS                       R7 R0 K1 ["name"]
       15 NAMECALL                         R5 R5 K5 ["format"]
       17 CALL                             R5 2 1
       18 MOVE                             R4 R5
       19 CALL                             R3 1 0
       20 LOADNIL                          R3
       21 RETURN                           R3 1
       22 MOVE                             R3 R2
       23 MOVE                             R4 R0
       24 MOVE                             R5 R1
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

PROTO_6:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 JUMPIF                           R7 ; [+2]
       11 LOADNIL                          R8
       12 JUMP                             ; [+24]
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R10 R10 K0 ["renderers"]
       16 GETTABLEKS                       R11 R7 K1 ["name"]
       18 GETTABLE                         R9 R10 R11
       19 JUMPIF                           R9 ; [+12]
       20 GETIMPORT                        R10 K3 [warn]
       22 LOADK                            R12 K4 ["No renderer found for node: $%*"]
       23 GETTABLEKS                       R14 R7 K1 ["name"]
       25 NAMECALL                         R12 R12 K5 ["format"]
       27 CALL                             R12 2 1
       28 MOVE                             R11 R12
       29 CALL                             R10 1 0
       30 LOADNIL                          R8
       31 JUMP                             ; [+5]
       32 MOVE                             R10 R9
       33 MOVE                             R11 R7
       34 MOVE                             R12 R1
       35 CALL                             R10 2 1
       36 MOVE                             R8 R10
       37 JUMPIFNOT                        R8 ; [+25]
       38 LENGTH                           R9 R8
       39 LOADN                            R10 0
       40 JUMPIFNOTLT                      R10 R9 ; [+15]
       42 MOVE                             R9 R8
       43 LOADNIL                          R10
       44 LOADNIL                          R11
       45 FORGPREP                         R9
       46 FASTCALL2                        TABLE_INSERT R2 R13 ; [+5]
       48 MOVE                             R15 R2
       49 MOVE                             R16 R13
       50 GETIMPORT                        R14 K8 [table.insert]
       52 CALL                             R14 2 0
       53 FORGLOOP                         R9 2 ; [-8]
       55 JUMP                             ; [+7]
       56 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       58 MOVE                             R10 R2
       59 MOVE                             R11 R8
       60 GETIMPORT                        R9 K8 [table.insert]
       62 CALL                             R9 2 0
       63 FORGLOOP                         R3 2 ; [-54]
       65 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K3 [{"Elements", "OverrideTags"}]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K4 ["filter"]
        8 GETTABLEKS                       R7 R1 K5 ["processChildren"]
       10 MOVE                             R8 R0
       11 GETUPVAL                         R9 3
       12 MOVE                             R10 R1
       13 DUPTABLE                         R11 K8 [{["isInline"] = True}]
       14 CALL                             R9 2 -1
       15 CALL                             R7 -1 1
       16 GETUPVAL                         R8 4
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K1 ["Elements"]
       20 SETTABLEKS                       R2 R5 K2 ["OverrideTags"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 NEWTABLE                         R4 1 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K1 ["Tag"]
        9 LOADK                            R6 K2 ["X-FitY X-Column X-Transparent"]
       10 SETTABLE                         R6 R4 R5
       11 GETTABLEKS                       R5 R1 K3 ["processChildren"]
       13 GETTABLEKS                       R6 R0 K4 ["children"]
       15 MOVE                             R7 R1
       16 CALL                             R5 2 -1
       17 CALL                             R2 -1 -1
       18 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R4 ; [+15]
        3 GETTABLEKS                       R5 R0 K0 ["attributes"]
        5 GETTABLEKS                       R5 R5 K1 ["depth"]
        7 FASTCALL1                        TYPE R5 ; [+2]
        8 GETIMPORT                        R4 K3 [type]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K4 ["number"] ; [+6]
       13 GETTABLEKS                       R3 R0 K0 ["attributes"]
       15 GETTABLEKS                       R3 R3 K1 ["depth"]
       17 JUMP                             ; [+1]
       18 LOADN                            R3 1
       19 LOADN                            R4 1
       20 GETTABLEKS                       R6 R1 K5 ["headerStyles"]
       22 LENGTH                           R5 R6
       23 FASTCALL                         MATH_CLAMP ; [+2]
       24 GETIMPORT                        R2 K8 [math.clamp]
       26 CALL                             R2 3 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K9 ["createElement"]
       30 GETUPVAL                         R4 1
       31 NEWTABLE                         R5 4 0
       33 GETTABLEKS                       R7 R0 K10 ["index"]
       35 FASTCALL1                        TOSTRING R7 ; [+2]
       36 GETIMPORT                        R6 K12 [tostring]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K13 ["key"]
       41 GETTABLEKS                       R6 R0 K10 ["index"]
       43 SETTABLEKS                       R6 R5 K14 ["LayoutOrder"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K15 ["Tag"]
       48 LOADK                            R7 K16 ["X-FitY Header"]
       49 SETTABLE                         R7 R5 R6
       50 DUPTABLE                         R6 K18 [{"InlineLayout"}]
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R8 R0 K19 ["children"]
       54 GETUPVAL                         R9 3
       55 MOVE                             R10 R1
       56 DUPTABLE                         R11 K21 [{"textStyles"}]
       57 GETTABLEKS                       R13 R1 K5 ["headerStyles"]
       59 GETTABLE                         R12 R13 R2
       60 SETTABLEKS                       R12 R11 K20 ["textStyles"]
       62 CALL                             R9 2 -1
       63 CALL                             R7 -1 1
       64 SETTABLEKS                       R7 R6 K17 ["InlineLayout"]
       66 CALL                             R3 3 -1
       67 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 NEWTABLE                         R4 4 0
        6 GETTABLEKS                       R6 R0 K1 ["index"]
        8 FASTCALL1                        TOSTRING R6 ; [+2]
        9 GETIMPORT                        R5 K3 [tostring]
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K4 ["key"]
       14 GETTABLEKS                       R5 R0 K1 ["index"]
       16 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K6 ["Tag"]
       21 LOADK                            R6 K7 ["X-FitY Paragraph"]
       22 SETTABLE                         R6 R4 R5
       23 DUPTABLE                         R5 K9 [{"InlineLayout"}]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R7 R0 K10 ["children"]
       27 MOVE                             R8 R1
       28 CALL                             R6 2 1
       29 SETTABLEKS                       R6 R5 K8 ["InlineLayout"]
       31 CALL                             R2 3 -1
       32 RETURN                           R2 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["CopyToClipboard"]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["attributes"]
        5 GETTABLEKS                       R2 R2 K1 ["language"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 GETTABLEKS                       R3 R0 K2 ["text"]
       11 MOVE                             R4 R3
       12 JUMPIFNOTEQKS                    R2 K3 ["lua"] ; [+9]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["highlight"]
       17 MOVE                             R6 R3
       18 GETTABLEKS                       R7 R1 K5 ["colorScheme"]
       20 CALL                             R5 2 1
       21 MOVE                             R4 R5
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K6 ["joinDeep"]
       25 GETTABLEKS                       R6 R1 K7 ["textStyles"]
       27 GETTABLEKS                       R7 R1 K8 ["codeStyles"]
       29 CALL                             R5 2 1
       30 NEWTABLE                         R6 8 0
       32 LOADB                            R7 0
       33 SETTABLEKS                       R7 R6 K9 ["TextWrapped"]
       35 GETTABLEKS                       R7 R5 K10 ["textSize"]
       37 SETTABLEKS                       R7 R6 K11 ["TextSize"]
       39 GETTABLEKS                       R7 R5 K12 ["font"]
       41 SETTABLEKS                       R7 R6 K13 ["Font"]
       43 GETTABLEKS                       R7 R5 K14 ["fontFace"]
       45 SETTABLEKS                       R7 R6 K15 ["FontFace"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R7 R7 K16 ["Tag"]
       50 LOADK                            R8 K17 ["X-Fit X-Top X-Pad Left"]
       51 SETTABLE                         R8 R6 R7
       52 DUPTABLE                         R7 K24 [{["Text"], ["TextColor"], ["RichText"] = True, ["ZIndex"] = 1}]
       53 SETTABLEKS                       R4 R7 K18 ["Text"]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K25 ["getTokenColor"]
       58 LOADK                            R9 K26 ["iden"]
       59 CALL                             R8 1 1
       60 SETTABLEKS                       R8 R7 K19 ["TextColor"]
       62 DUPTABLE                         R8 K31 [{["Text"], ["TextColor"], ["TextTransparency"] = 0.4, ["ZIndex"] = 0, ["TextSelectable"] = True}]
       63 SETTABLEKS                       R3 R8 K18 ["Text"]
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R9 R9 K25 ["getTokenColor"]
       68 LOADK                            R10 K32 ["background"]
       69 CALL                             R9 1 1
       70 SETTABLEKS                       R9 R8 K19 ["TextColor"]
       72 GETTABLEKS                       R9 R1 K33 ["codeBackgroundStyles"]
       74 JUMPIF                           R9 ; [+2]
       75 NEWTABLE                         R9 0 0
       77 GETTABLEKS                       R10 R9 K34 ["backgroundColor3"]
       79 JUMPIF                           R10 ; [+5]
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R10 R10 K25 ["getTokenColor"]
       83 LOADK                            R11 K32 ["background"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R12 R9 K35 ["backgroundTransparency"]
       87 ORK                              R11 R12 K29 [0]
       88 LOADNIL                          R12
       89 GETTABLEKS                       R13 R1 K36 ["codeSettings"]
       91 JUMPIFNOT                        R13 ; [+41]
       92 GETTABLEKS                       R13 R1 K36 ["codeSettings"]
       94 GETTABLEKS                       R13 R13 K37 ["showLineNumbers"]
       96 JUMPIFNOT                        R13 ; [+36]
       97 LENGTH                           R13 R3
       98 NEWTABLE                         R14 0 0
      100 LOADN                            R15 1
      101 LOADN                            R16 0
      102 JUMPIFNOTLE                      R16 R13 ; [+18]
      104 GETIMPORT                        R17 K40 [string.find]
      106 MOVE                             R18 R3
      107 LOADK                            R19 K41 ["\n"]
      108 MOVE                             R20 R16
      109 LOADB                            R21 1
      110 CALL                             R17 4 1
      111 JUMPIFNOT                        R17 ; [+9]
      112 FASTCALL1                        TOSTRING R15 ; [+3]
      113 MOVE                             R19 R15
      114 GETIMPORT                        R18 K43 [tostring]
      116 CALL                             R18 1 1
      117 SETTABLE                         R18 R14 R15
      118 ADDK                             R15 R15 K23 [1]
      119 ADDK                             R16 R17 K23 [1]
      120 JUMPBACK                         ; [-19]
      121 FASTCALL1                        TOSTRING R15 ; [+3]
      122 MOVE                             R18 R15
      123 GETIMPORT                        R17 K43 [tostring]
      125 CALL                             R17 1 1
      126 SETTABLE                         R17 R14 R15
      127 GETIMPORT                        R17 K46 [table.concat]
      129 MOVE                             R18 R14
      130 LOADK                            R19 K41 ["\n"]
      131 CALL                             R17 2 1
      132 MOVE                             R12 R17
      133 GETUPVAL                         R13 2
      134 GETTABLEKS                       R13 R13 K47 ["createElement"]
      136 LOADK                            R14 K48 ["Frame"]
      137 NEWTABLE                         R15 4 0
      139 GETTABLEKS                       R17 R0 K49 ["index"]
      141 FASTCALL1                        TOSTRING R17 ; [+2]
      142 GETIMPORT                        R16 K43 [tostring]
      144 CALL                             R16 1 1
      145 SETTABLEKS                       R16 R15 K50 ["key"]
      147 GETTABLEKS                       R16 R0 K49 ["index"]
      149 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      151 GETUPVAL                         R16 2
      152 GETTABLEKS                       R16 R16 K16 ["Tag"]
      154 LOADK                            R17 K52 ["X-FitY X-Transparent X-Column CodeBlock"]
      155 SETTABLE                         R17 R15 R16
      156 DUPTABLE                         R16 K55 [{"Titlebar", "CodeWrapper"}]
      157 GETTABLEKS                       R18 R1 K36 ["codeSettings"]
      159 JUMPIFNOT                        R18 ; [+76]
      160 GETTABLEKS                       R18 R1 K36 ["codeSettings"]
      162 GETTABLEKS                       R18 R18 K56 ["showCopyButton"]
      164 JUMPIFNOT                        R18 ; [+71]
      165 GETUPVAL                         R17 2
      166 GETTABLEKS                       R17 R17 K47 ["createElement"]
      168 GETUPVAL                         R18 3
      169 NEWTABLE                         R19 2 0
      171 LOADN                            R20 1
      172 SETTABLEKS                       R20 R19 K51 ["LayoutOrder"]
      174 GETUPVAL                         R20 2
      175 GETTABLEKS                       R20 R20 K16 ["Tag"]
      177 LOADK                            R21 K57 ["X-FitY Contrast X-Corner"]
      178 SETTABLE                         R21 R19 R20
      179 DUPTABLE                         R20 K59 [{"CopyToClipboardButton"}]
      180 GETUPVAL                         R21 2
      181 GETTABLEKS                       R21 R21 K47 ["createElement"]
      183 LOADK                            R22 K60 ["TextButton"]
      184 NEWTABLE                         R23 4 0
      186 GETIMPORT                        R24 K63 [Vector2.new]
      188 LOADN                            R25 1
      189 LOADN                            R26 0
      190 CALL                             R24 2 1
      191 SETTABLEKS                       R24 R23 K64 ["AnchorPoint"]
      193 GETIMPORT                        R24 K66 [UDim2.new]
      195 LOADN                            R25 1
      196 LOADN                            R26 -2
      197 LOADN                            R27 0
      198 LOADN                            R28 2
      199 CALL                             R24 4 1
      200 SETTABLEKS                       R24 R23 K67 ["Position"]
      202 GETUPVAL                         R24 2
      203 GETTABLEKS                       R24 R24 K68 ["Event"]
      205 GETTABLEKS                       R24 R24 K69 ["Activated"]
      207 NEWCLOSURE                       R25 P0
      208 CAPTURE                          UPVAL U4
      209 CAPTURE                          VAL R3
      210 SETTABLE                         R25 R23 R24
      211 GETUPVAL                         R24 2
      212 GETTABLEKS                       R24 R24 K16 ["Tag"]
      214 LOADK                            R25 K70 ["CopyButton"]
      215 SETTABLE                         R25 R23 R24
      216 DUPTABLE                         R24 K72 [{"Icon"}]
      217 GETUPVAL                         R25 2
      218 GETTABLEKS                       R25 R25 K47 ["createElement"]
      220 LOADK                            R26 K73 ["ImageLabel"]
      221 NEWTABLE                         R27 1 0
      223 GETUPVAL                         R28 2
      224 GETTABLEKS                       R28 R28 K16 ["Tag"]
      226 LOADK                            R29 K74 ["CopyIcon"]
      227 SETTABLE                         R29 R27 R28
      228 CALL                             R25 2 1
      229 SETTABLEKS                       R25 R24 K71 ["Icon"]
      231 CALL                             R21 3 1
      232 SETTABLEKS                       R21 R20 K58 ["CopyToClipboardButton"]
      234 CALL                             R17 3 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R17
      237 SETTABLEKS                       R17 R16 K53 ["Titlebar"]
      239 GETUPVAL                         R17 2
      240 GETTABLEKS                       R17 R17 K47 ["createElement"]
      242 LOADK                            R18 K48 ["Frame"]
      243 NEWTABLE                         R19 2 0
      245 LOADN                            R20 2
      246 SETTABLEKS                       R20 R19 K51 ["LayoutOrder"]
      248 GETUPVAL                         R20 2
      249 GETTABLEKS                       R20 R20 K16 ["Tag"]
      251 LOADK                            R21 K75 ["X-FitY X-Row X-Transparent"]
      252 SETTABLE                         R21 R19 R20
      253 DUPTABLE                         R20 K78 [{"LineNumbers", "ScrollFrame"}]
      254 GETTABLEKS                       R22 R1 K36 ["codeSettings"]
      256 JUMPIFNOT                        R22 ; [+35]
      257 GETTABLEKS                       R22 R1 K36 ["codeSettings"]
      259 GETTABLEKS                       R22 R22 K37 ["showLineNumbers"]
      261 JUMPIFNOT                        R22 ; [+30]
      262 GETUPVAL                         R21 2
      263 GETTABLEKS                       R21 R21 K47 ["createElement"]
      265 GETUPVAL                         R22 5
      266 NEWTABLE                         R23 8 0
      268 SETTABLEKS                       R12 R23 K18 ["Text"]
      270 GETTABLEKS                       R24 R6 K11 ["TextSize"]
      272 SETTABLEKS                       R24 R23 K11 ["TextSize"]
      274 GETTABLEKS                       R24 R6 K13 ["Font"]
      276 SETTABLEKS                       R24 R23 K13 ["Font"]
      278 GETTABLEKS                       R24 R6 K15 ["FontFace"]
      280 SETTABLEKS                       R24 R23 K15 ["FontFace"]
      282 LOADN                            R24 1
      283 SETTABLEKS                       R24 R23 K51 ["LayoutOrder"]
      285 GETUPVAL                         R24 2
      286 GETTABLEKS                       R24 R24 K16 ["Tag"]
      288 LOADK                            R25 K79 ["X-Pad LineNumbers"]
      289 SETTABLE                         R25 R23 R24
      290 CALL                             R21 2 1
      291 JUMP                             ; [+1]
      292 LOADNIL                          R21
      293 SETTABLEKS                       R21 R20 K76 ["LineNumbers"]
      295 GETUPVAL                         R21 2
      296 GETTABLEKS                       R21 R21 K47 ["createElement"]
      298 GETUPVAL                         R22 6
      299 NEWTABLE                         R23 8 0
      301 LOADN                            R24 2
      302 SETTABLEKS                       R24 R23 K51 ["LayoutOrder"]
      304 GETIMPORT                        R24 K66 [UDim2.new]
      306 LOADN                            R25 1
      307 GETTABLEKS                       R27 R6 K11 ["TextSize"]
      309 MINUS                            R26 R27
      310 LOADN                            R27 0
      311 LOADN                            R28 0
      312 CALL                             R24 4 1
      313 SETTABLEKS                       R24 R23 K80 ["Size"]
      315 SETTABLEKS                       R10 R23 K81 ["BackgroundColor3"]
      317 SETTABLEKS                       R11 R23 K82 ["BackgroundTransparency"]
      319 GETIMPORT                        R24 K86 [Enum.ScrollingDirection.X]
      321 SETTABLEKS                       R24 R23 K84 ["ScrollingDirection"]
      323 GETIMPORT                        R24 K88 [Enum.AutomaticSize.X]
      325 SETTABLEKS                       R24 R23 K89 ["AutomaticCanvasSize"]
      327 GETUPVAL                         R24 2
      328 GETTABLEKS                       R24 R24 K16 ["Tag"]
      330 LOADK                            R25 K90 ["X-FitY CodeScroller"]
      331 SETTABLE                         R25 R23 R24
      332 DUPTABLE                         R24 K93 [{"HighlightedCode", "SelectableCode"}]
      333 GETUPVAL                         R25 2
      334 GETTABLEKS                       R25 R25 K47 ["createElement"]
      336 GETUPVAL                         R26 5
      337 GETUPVAL                         R27 1
      338 GETTABLEKS                       R27 R27 K94 ["join"]
      340 MOVE                             R28 R6
      341 MOVE                             R29 R7
      342 CALL                             R27 2 -1
      343 CALL                             R25 -1 1
      344 SETTABLEKS                       R25 R24 K91 ["HighlightedCode"]
      346 GETUPVAL                         R25 2
      347 GETTABLEKS                       R25 R25 K47 ["createElement"]
      349 GETUPVAL                         R26 5
      350 GETUPVAL                         R27 1
      351 GETTABLEKS                       R27 R27 K94 ["join"]
      353 MOVE                             R28 R6
      354 MOVE                             R29 R8
      355 CALL                             R27 2 -1
      356 CALL                             R25 -1 1
      357 SETTABLEKS                       R25 R24 K92 ["SelectableCode"]
      359 CALL                             R21 3 1
      360 SETTABLEKS                       R21 R20 K77 ["ScrollFrame"]
      362 CALL                             R17 3 1
      363 SETTABLEKS                       R17 R16 K54 ["CodeWrapper"]
      365 CALL                             R13 3 -1
      366 RETURN                           R13 -1

PROTO_13:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 GETTABLEKS                       R7 R0 K0 ["children"]
        5 LENGTH                           R6 R7
        6 LOADN                            R4 1
        7 LOADN                            R5 -1
        8 FORNPREP                         R4
        9 GETTABLEKS                       R8 R0 K0 ["children"]
       11 GETTABLE                         R7 R8 R6
       12 GETTABLEKS                       R8 R7 K1 ["name"]
       14 JUMPIFNOTEQKS                    R8 K2 ["LIST"] ; [+3]
       16 MOVE                             R3 R7
       17 JUMP                             ; [+102]
       18 JUMPIFNOT                        R3 ; [+91]
       19 MOVE                             R9 R2
       20 LOADN                            R10 1
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R11 R11 K3 ["createElement"]
       24 LOADK                            R12 K4 ["Frame"]
       25 NEWTABLE                         R13 1 0
       27 GETUPVAL                         R14 0
       28 GETTABLEKS                       R14 R14 K5 ["Tag"]
       30 LOADK                            R15 K6 ["X-FitY X-Column X-Transparent"]
       31 SETTABLE                         R15 R13 R14
       32 DUPTABLE                         R14 K9 [{"Item", "List"}]
       33 GETUPVAL                         R16 1
       34 GETTABLEKS                       R16 R16 K10 ["join"]
       36 MOVE                             R17 R7
       37 DUPTABLE                         R18 K13 [{["index"] = 1}]
       38 CALL                             R16 2 1
       39 JUMPIF                           R16 ; [+2]
       40 LOADNIL                          R15
       41 JUMP                             ; [+24]
       42 GETUPVAL                         R18 2
       43 GETTABLEKS                       R18 R18 K14 ["renderers"]
       45 GETTABLEKS                       R19 R16 K1 ["name"]
       47 GETTABLE                         R17 R18 R19
       48 JUMPIF                           R17 ; [+12]
       49 GETIMPORT                        R18 K16 [warn]
       51 LOADK                            R20 K17 ["No renderer found for node: $%*"]
       52 GETTABLEKS                       R22 R16 K1 ["name"]
       54 NAMECALL                         R20 R20 K18 ["format"]
       56 CALL                             R20 2 1
       57 MOVE                             R19 R20
       58 CALL                             R18 1 0
       59 LOADNIL                          R15
       60 JUMP                             ; [+5]
       61 MOVE                             R18 R17
       62 MOVE                             R19 R16
       63 MOVE                             R20 R1
       64 CALL                             R18 2 1
       65 MOVE                             R15 R18
       66 SETTABLEKS                       R15 R14 K7 ["Item"]
       68 GETUPVAL                         R16 1
       69 GETTABLEKS                       R16 R16 K10 ["join"]
       71 MOVE                             R17 R3
       72 DUPTABLE                         R18 K20 [{["index"] = 2}]
       73 CALL                             R16 2 1
       74 JUMPIF                           R16 ; [+2]
       75 LOADNIL                          R15
       76 JUMP                             ; [+24]
       77 GETUPVAL                         R18 2
       78 GETTABLEKS                       R18 R18 K14 ["renderers"]
       80 GETTABLEKS                       R19 R16 K1 ["name"]
       82 GETTABLE                         R17 R18 R19
       83 JUMPIF                           R17 ; [+12]
       84 GETIMPORT                        R18 K16 [warn]
       86 LOADK                            R20 K17 ["No renderer found for node: $%*"]
       87 GETTABLEKS                       R22 R16 K1 ["name"]
       89 NAMECALL                         R20 R20 K18 ["format"]
       91 CALL                             R20 2 1
       92 MOVE                             R19 R20
       93 CALL                             R18 1 0
       94 LOADNIL                          R15
       95 JUMP                             ; [+5]
       96 MOVE                             R18 R17
       97 MOVE                             R19 R16
       98 MOVE                             R20 R1
       99 CALL                             R18 2 1
      100 MOVE                             R15 R18
      101 SETTABLEKS                       R15 R14 K8 ["List"]
      103 CALL                             R11 3 -1
      104 FASTCALL                         TABLE_INSERT ; [+2]
      105 GETIMPORT                        R8 K23 [table.insert]
      107 CALL                             R8 -1 0
      108 LOADNIL                          R3
      109 JUMP                             ; [+10]
      110 MOVE                             R9 R2
      111 LOADN                            R10 1
      112 GETUPVAL                         R11 3
      113 MOVE                             R12 R7
      114 MOVE                             R13 R1
      115 CALL                             R11 2 -1
      116 FASTCALL                         TABLE_INSERT ; [+2]
      117 GETIMPORT                        R8 K23 [table.insert]
      119 CALL                             R8 -1 0
      120 FORNLOOP                         R4
      121 GETUPVAL                         R4 0
      122 GETTABLEKS                       R4 R4 K3 ["createElement"]
      124 GETUPVAL                         R5 4
      125 NEWTABLE                         R6 8 0
      127 GETTABLEKS                       R8 R0 K11 ["index"]
      129 FASTCALL1                        TOSTRING R8 ; [+2]
      130 GETIMPORT                        R7 K25 [tostring]
      132 CALL                             R7 1 1
      133 SETTABLEKS                       R7 R6 K26 ["key"]
      135 GETTABLEKS                       R7 R0 K11 ["index"]
      137 SETTABLEKS                       R7 R6 K27 ["LayoutOrder"]
      139 SETTABLEKS                       R2 R6 K28 ["Items"]
      141 LOADB                            R7 1
      142 SETTABLEKS                       R7 R6 K29 ["TextWrapped"]
      144 GETUPVAL                         R7 0
      145 GETTABLEKS                       R7 R7 K5 ["Tag"]
      147 LOADK                            R8 K30 ["X-FitY"]
      148 SETTABLE                         R8 R6 R7
      149 CALL                             R4 2 -1
      150 RETURN                           R4 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 NEWTABLE                         R4 4 0
        6 GETTABLEKS                       R6 R0 K1 ["index"]
        8 FASTCALL1                        TOSTRING R6 ; [+2]
        9 GETIMPORT                        R5 K3 [tostring]
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K4 ["key"]
       14 GETTABLEKS                       R5 R0 K1 ["index"]
       16 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K6 ["Tag"]
       21 LOADK                            R6 K7 ["X-FitY"]
       22 SETTABLE                         R6 R4 R5
       23 DUPTABLE                         R5 K9 [{"InlineLayout"}]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R7 R0 K10 ["children"]
       27 MOVE                             R8 R1
       28 LOADK                            R9 K11 ["X-FitY X-Column"]
       29 CALL                             R6 3 1
       30 SETTABLEKS                       R6 R5 K8 ["InlineLayout"]
       32 CALL                             R2 3 -1
       33 RETURN                           R2 -1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETTABLEKS                       R3 R0 K0 ["attributes"]
        5 GETTABLEKS                       R3 R3 K1 ["style"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETTABLEKS                       R2 R0 K0 ["attributes"]
       10 GETTABLEKS                       R2 R2 K1 ["style"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 NEWTABLE                         R3 4 0
       16 JUMPIFEQKS                       R2 K2 ["BOLD"] ; [+3]
       18 JUMPIFNOTEQKS                    R2 K3 ["BOLD_2"] ; [+5]
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K4 ["bold"]
       23 JUMP                             ; [+24]
       24 JUMPIFEQKS                       R2 K5 ["ITALIC"] ; [+3]
       26 JUMPIFNOTEQKS                    R2 K6 ["ITALIC_2"] ; [+5]
       28 LOADB                            R4 1
       29 SETTABLEKS                       R4 R3 K7 ["italic"]
       31 JUMP                             ; [+16]
       32 JUMPIFNOTEQKS                    R2 K8 ["STRIKE"] ; [+5]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K9 ["strike"]
       37 JUMP                             ; [+10]
       38 JUMPIFNOTEQKS                    R2 K10 ["INLINE_CODE"] ; [+9]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K11 ["joinDeep"]
       43 GETTABLEKS                       R5 R1 K12 ["codeStyles"]
       45 DUPTABLE                         R6 K15 [{["selectable"] = True}]
       46 CALL                             R4 2 1
       47 MOVE                             R3 R4
       48 GETTABLEKS                       R4 R1 K16 ["processChildren"]
       50 GETTABLEKS                       R5 R0 K17 ["children"]
       52 GETUPVAL                         R6 1
       53 MOVE                             R7 R1
       54 DUPTABLE                         R8 K19 [{"textStyles"}]
       55 SETTABLEKS                       R3 R8 K18 ["textStyles"]
       57 CALL                             R6 2 -1
       58 CALL                             R4 -1 -1
       59 RETURN                           R4 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 DUPTABLE                         R3 K9 [{"LayoutOrder", "Text", "TextStyle", "Font", "FontFace", "TextSize", "TextTransparency", "TextSelectable"}]
        4 GETTABLEKS                       R4 R0 K10 ["index"]
        6 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
        8 GETGLOBAL                        R4 K11 ["processSoftBreaks"]
       10 GETTABLEKS                       R5 R0 K12 ["text"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K2 ["Text"]
       15 GETTABLEKS                       R5 R1 K13 ["textStyles"]
       17 JUMPIFNOT                        R5 ; [+22]
       18 DUPTABLE                         R4 K18 [{"Bold", "Italic", "Strike", "Color", "FontFace"}]
       19 GETTABLEKS                       R6 R5 K19 ["bold"]
       21 SETTABLEKS                       R6 R4 K14 ["Bold"]
       23 GETTABLEKS                       R6 R5 K20 ["italic"]
       25 SETTABLEKS                       R6 R4 K15 ["Italic"]
       27 GETTABLEKS                       R6 R5 K21 ["strike"]
       29 SETTABLEKS                       R6 R4 K16 ["Strike"]
       31 GETTABLEKS                       R6 R5 K22 ["color"]
       33 SETTABLEKS                       R6 R4 K17 ["Color"]
       35 GETTABLEKS                       R6 R5 K23 ["fontFace"]
       37 SETTABLEKS                       R6 R4 K5 ["FontFace"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 SETTABLEKS                       R4 R3 K3 ["TextStyle"]
       43 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       45 GETTABLEKS                       R4 R4 K24 ["font"]
       47 SETTABLEKS                       R4 R3 K4 ["Font"]
       49 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       51 GETTABLEKS                       R4 R4 K23 ["fontFace"]
       53 SETTABLEKS                       R4 R3 K5 ["FontFace"]
       55 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       57 GETTABLEKS                       R4 R4 K25 ["textSize"]
       59 SETTABLEKS                       R4 R3 K6 ["TextSize"]
       61 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       63 GETTABLEKS                       R4 R4 K26 ["transparency"]
       65 SETTABLEKS                       R4 R3 K7 ["TextTransparency"]
       67 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       69 GETTABLEKS                       R4 R4 K27 ["selectable"]
       71 SETTABLEKS                       R4 R3 K8 ["TextSelectable"]
       73 CALL                             R2 1 -1
       74 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["linkCallback"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["attributes"]
        5 GETTABLEKS                       R2 R2 K1 ["url"]
        7 JUMPIF                           R2 ; [+4]
        8 GETTABLEKS                       R2 R0 K1 ["url"]
       10 JUMPIF                           R2 ; [+1]
       11 LOADK                            R2 K2 [""]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["new"]
       15 DUPTABLE                         R4 K11 [{"LayoutOrder", "Text", "TextStyle", "Font", "TextSize", "TextTransparency", "OnClick"}]
       16 GETTABLEKS                       R5 R0 K12 ["index"]
       18 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       20 GETGLOBAL                        R5 K13 ["processSoftBreaks"]
       22 GETTABLEKS                       R6 R0 K14 ["text"]
       24 CALL                             R5 1 1
       25 SETTABLEKS                       R5 R4 K5 ["Text"]
       27 GETTABLEKS                       R6 R1 K15 ["textStyles"]
       29 JUMPIFNOT                        R6 ; [+22]
       30 DUPTABLE                         R5 K21 [{"Bold", "Italic", "Strike", "Color", "FontFace"}]
       31 GETTABLEKS                       R7 R6 K22 ["bold"]
       33 SETTABLEKS                       R7 R5 K16 ["Bold"]
       35 GETTABLEKS                       R7 R6 K23 ["italic"]
       37 SETTABLEKS                       R7 R5 K17 ["Italic"]
       39 GETTABLEKS                       R7 R6 K24 ["strike"]
       41 SETTABLEKS                       R7 R5 K18 ["Strike"]
       43 GETTABLEKS                       R7 R6 K25 ["color"]
       45 SETTABLEKS                       R7 R5 K19 ["Color"]
       47 GETTABLEKS                       R7 R6 K26 ["fontFace"]
       49 SETTABLEKS                       R7 R5 K20 ["FontFace"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R5
       53 SETTABLEKS                       R5 R4 K6 ["TextStyle"]
       55 GETTABLEKS                       R5 R1 K15 ["textStyles"]
       57 GETTABLEKS                       R5 R5 K27 ["font"]
       59 SETTABLEKS                       R5 R4 K7 ["Font"]
       61 GETTABLEKS                       R5 R1 K15 ["textStyles"]
       63 GETTABLEKS                       R5 R5 K28 ["textSize"]
       65 SETTABLEKS                       R5 R4 K8 ["TextSize"]
       67 GETTABLEKS                       R5 R1 K15 ["textStyles"]
       69 GETTABLEKS                       R5 R5 K29 ["transparency"]
       71 SETTABLEKS                       R5 R4 K9 ["TextTransparency"]
       73 NEWCLOSURE                       R5 P0
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R5 R4 K10 ["OnClick"]
       78 CALL                             R3 1 -1
       79 RETURN                           R3 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 4 0
        6 GETTABLEKS                       R5 R0 K1 ["index"]
        8 FASTCALL1                        TOSTRING R5 ; [+2]
        9 GETIMPORT                        R4 K3 [tostring]
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K4 ["key"]
       14 GETTABLEKS                       R4 R0 K1 ["index"]
       16 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K6 ["Tag"]
       21 LOADK                            R5 K7 ["HorizontalRule"]
       22 SETTABLE                         R5 R3 R4
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 NEWTABLE                         R4 4 0
        6 GETTABLEKS                       R6 R0 K1 ["index"]
        8 FASTCALL1                        TOSTRING R6 ; [+2]
        9 GETIMPORT                        R5 K3 [tostring]
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K4 ["key"]
       14 GETTABLEKS                       R5 R0 K1 ["index"]
       16 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K6 ["Tag"]
       21 LOADK                            R6 K7 ["X-FitY X-Pad X-Transparent"]
       22 SETTABLE                         R6 R4 R5
       23 DUPTABLE                         R5 K9 [{"InlineLayoutWrapper"}]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K0 ["createElement"]
       27 GETUPVAL                         R7 1
       28 NEWTABLE                         R8 2 0
       30 LOADK                            R9 K10 [0.9]
       31 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K6 ["Tag"]
       36 LOADK                            R10 K12 ["X-FitY"]
       37 SETTABLE                         R10 R8 R9
       38 DUPTABLE                         R9 K14 [{"InlineLayout"}]
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R11 R0 K15 ["children"]
       42 GETUPVAL                         R12 3
       43 MOVE                             R13 R1
       44 DUPTABLE                         R14 K17 [{"textStyles"}]
       45 DUPTABLE                         R15 K22 [{["italic"] = True, ["transparency"] = 0.5}]
       46 SETTABLEKS                       R15 R14 K16 ["textStyles"]
       48 CALL                             R12 2 -1
       49 CALL                             R10 -1 1
       50 SETTABLEKS                       R10 R9 K13 ["InlineLayout"]
       52 CALL                             R6 3 1
       53 SETTABLEKS                       R6 R5 K8 ["InlineLayoutWrapper"]
       55 CALL                             R2 3 -1
       56 RETURN                           R2 -1

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["attributes"]
        5 GETTABLEKS                       R2 R2 K1 ["url"]
        7 JUMPIF                           R2 ; [+4]
        8 GETTABLEKS                       R2 R0 K1 ["url"]
       10 JUMPIF                           R2 ; [+1]
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["new"]
       15 NEWTABLE                         R4 16 0
       17 GETTABLEKS                       R5 R0 K3 ["index"]
       19 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       21 SETTABLEKS                       R2 R4 K5 ["Image"]
       23 GETTABLEKS                       R5 R1 K6 ["imageStyles"]
       25 GETTABLEKS                       R5 R5 K7 ["size"]
       27 SETTABLEKS                       R5 R4 K8 ["Size"]
       29 GETTABLEKS                       R5 R1 K6 ["imageStyles"]
       31 GETTABLEKS                       R5 R5 K9 ["backgroundColor3"]
       33 SETTABLEKS                       R5 R4 K10 ["BackgroundColor3"]
       35 GETTABLEKS                       R5 R1 K6 ["imageStyles"]
       37 GETTABLEKS                       R5 R5 K11 ["backgroundTransparency"]
       39 SETTABLEKS                       R5 R4 K12 ["BackgroundTransparency"]
       41 GETTABLEKS                       R5 R1 K6 ["imageStyles"]
       43 GETTABLEKS                       R5 R5 K13 ["transparency"]
       45 SETTABLEKS                       R5 R4 K14 ["ImageTransparency"]
       47 GETTABLEKS                       R5 R1 K6 ["imageStyles"]
       49 GETTABLEKS                       R5 R5 K15 ["scaleType"]
       51 SETTABLEKS                       R5 R4 K16 ["ScaleType"]
       53 GETTABLEKS                       R5 R1 K6 ["imageStyles"]
       55 GETTABLEKS                       R5 R5 K17 ["resampleMode"]
       57 SETTABLEKS                       R5 R4 K18 ["ResampleMode"]
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K19 ["Tag"]
       62 GETTABLEKS                       R6 R1 K6 ["imageStyles"]
       64 GETTABLEKS                       R6 R6 K20 ["tags"]
       66 SETTABLE                         R6 R4 R5
       67 CALL                             R3 1 -1
       68 RETURN                           R3 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["linkCallback"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["attributes"]
        6 GETTABLEKS                       R1 R1 K2 ["url"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["text"]
        2 JUMPIFNOTEQKS                    R2 K1 ["img"] ; [+198]
        4 GETTABLEKS                       R2 R1 K2 ["imageStyles"]
        6 GETTABLEKS                       R2 R2 K3 ["size"]
        8 GETTABLEKS                       R4 R0 K4 ["attributes"]
       10 JUMPIFNOT                        R4 ; [+10]
       11 GETTABLEKS                       R4 R0 K4 ["attributes"]
       13 GETTABLEKS                       R4 R4 K5 ["width"]
       15 JUMPIFNOT                        R4 ; [+5]
       16 GETTABLEKS                       R3 R0 K4 ["attributes"]
       18 GETTABLEKS                       R3 R3 K5 ["width"]
       20 JUMP                             ; [+4]
       21 GETTABLEKS                       R3 R2 K6 ["Width"]
       23 GETTABLEKS                       R3 R3 K7 ["Offset"]
       25 GETTABLEKS                       R5 R0 K4 ["attributes"]
       27 JUMPIFNOT                        R5 ; [+10]
       28 GETTABLEKS                       R5 R0 K4 ["attributes"]
       30 GETTABLEKS                       R5 R5 K8 ["height"]
       32 JUMPIFNOT                        R5 ; [+5]
       33 GETTABLEKS                       R4 R0 K4 ["attributes"]
       35 GETTABLEKS                       R4 R4 K8 ["height"]
       37 JUMP                             ; [+4]
       38 GETTABLEKS                       R4 R2 K9 ["Height"]
       40 GETTABLEKS                       R4 R4 K7 ["Offset"]
       42 GETTABLEKS                       R5 R1 K10 ["isInline"]
       44 JUMPIFNOT                        R5 ; [+72]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K11 ["new"]
       48 NEWTABLE                         R6 16 0
       50 GETTABLEKS                       R7 R0 K12 ["index"]
       52 SETTABLEKS                       R7 R6 K13 ["LayoutOrder"]
       54 GETTABLEKS                       R8 R0 K4 ["attributes"]
       56 JUMPIFNOT                        R8 ; [+10]
       57 GETTABLEKS                       R8 R0 K4 ["attributes"]
       59 GETTABLEKS                       R8 R8 K14 ["src"]
       61 JUMPIFNOT                        R8 ; [+5]
       62 GETTABLEKS                       R7 R0 K4 ["attributes"]
       64 GETTABLEKS                       R7 R7 K14 ["src"]
       66 JUMP                             ; [+1]
       67 LOADK                            R7 K15 [""]
       68 SETTABLEKS                       R7 R6 K16 ["Image"]
       70 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       72 MOVE                             R8 R3
       73 MOVE                             R9 R4
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K20 ["Size"]
       77 GETTABLEKS                       R7 R1 K2 ["imageStyles"]
       79 GETTABLEKS                       R7 R7 K21 ["backgroundColor3"]
       81 SETTABLEKS                       R7 R6 K22 ["BackgroundColor3"]
       83 GETTABLEKS                       R7 R1 K2 ["imageStyles"]
       85 GETTABLEKS                       R7 R7 K23 ["backgroundTransparency"]
       87 SETTABLEKS                       R7 R6 K24 ["BackgroundTransparency"]
       89 GETTABLEKS                       R7 R1 K2 ["imageStyles"]
       91 GETTABLEKS                       R7 R7 K25 ["transparency"]
       93 SETTABLEKS                       R7 R6 K26 ["ImageTransparency"]
       95 GETTABLEKS                       R7 R1 K2 ["imageStyles"]
       97 GETTABLEKS                       R7 R7 K27 ["scaleType"]
       99 SETTABLEKS                       R7 R6 K28 ["ScaleType"]
      101 GETTABLEKS                       R7 R1 K2 ["imageStyles"]
      103 GETTABLEKS                       R7 R7 K29 ["resampleMode"]
      105 SETTABLEKS                       R7 R6 K30 ["ResampleMode"]
      107 GETUPVAL                         R7 1
      108 GETTABLEKS                       R7 R7 K31 ["Tag"]
      110 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
      112 GETTABLEKS                       R8 R8 K32 ["tags"]
      114 SETTABLE                         R8 R6 R7
      115 CALL                             R5 1 -1
      116 RETURN                           R5 -1
      117 GETUPVAL                         R5 1
      118 GETTABLEKS                       R5 R5 K33 ["createElement"]
      120 LOADK                            R6 K34 ["ImageLabel"]
      121 NEWTABLE                         R7 16 0
      123 GETTABLEKS                       R9 R0 K12 ["index"]
      125 FASTCALL1                        TOSTRING R9 ; [+2]
      126 GETIMPORT                        R8 K36 [tostring]
      128 CALL                             R8 1 1
      129 SETTABLEKS                       R8 R7 K37 ["key"]
      131 GETTABLEKS                       R8 R0 K12 ["index"]
      133 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
      135 GETTABLEKS                       R9 R0 K4 ["attributes"]
      137 JUMPIFNOT                        R9 ; [+10]
      138 GETTABLEKS                       R9 R0 K4 ["attributes"]
      140 GETTABLEKS                       R9 R9 K14 ["src"]
      142 JUMPIFNOT                        R9 ; [+5]
      143 GETTABLEKS                       R8 R0 K4 ["attributes"]
      145 GETTABLEKS                       R8 R8 K14 ["src"]
      147 JUMP                             ; [+1]
      148 LOADK                            R8 K15 [""]
      149 SETTABLEKS                       R8 R7 K16 ["Image"]
      151 GETIMPORT                        R8 K19 [UDim2.fromOffset]
      153 MOVE                             R9 R3
      154 MOVE                             R10 R4
      155 CALL                             R8 2 1
      156 SETTABLEKS                       R8 R7 K20 ["Size"]
      158 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
      160 GETTABLEKS                       R8 R8 K21 ["backgroundColor3"]
      162 SETTABLEKS                       R8 R7 K22 ["BackgroundColor3"]
      164 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
      166 GETTABLEKS                       R8 R8 K23 ["backgroundTransparency"]
      168 SETTABLEKS                       R8 R7 K24 ["BackgroundTransparency"]
      170 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
      172 GETTABLEKS                       R8 R8 K25 ["transparency"]
      174 SETTABLEKS                       R8 R7 K26 ["ImageTransparency"]
      176 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
      178 GETTABLEKS                       R8 R8 K27 ["scaleType"]
      180 SETTABLEKS                       R8 R7 K28 ["ScaleType"]
      182 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
      184 GETTABLEKS                       R8 R8 K29 ["resampleMode"]
      186 SETTABLEKS                       R8 R7 K30 ["ResampleMode"]
      188 GETUPVAL                         R8 1
      189 GETTABLEKS                       R8 R8 K31 ["Tag"]
      191 GETUPVAL                         R9 2
      192 LOADK                            R10 K38 ["X-PadS X-Middle"]
      193 GETTABLEKS                       R11 R1 K2 ["imageStyles"]
      195 GETTABLEKS                       R11 R11 K32 ["tags"]
      197 CALL                             R9 2 1
      198 SETTABLE                         R9 R7 R8
      199 CALL                             R5 2 -1
      200 RETURN                           R5 -1
      201 GETTABLEKS                       R2 R0 K0 ["text"]
      203 JUMPIFNOTEQKS                    R2 K39 ["Button"] ; [+68]
      205 GETTABLEKS                       R2 R0 K4 ["attributes"]
      207 JUMPIFNOT                        R2 ; [+10]
      208 GETTABLEKS                       R2 R0 K4 ["attributes"]
      210 GETTABLEKS                       R2 R2 K0 ["text"]
      212 JUMPIFNOT                        R2 ; [+5]
      213 GETTABLEKS                       R2 R0 K4 ["attributes"]
      215 GETTABLEKS                       R2 R2 K40 ["url"]
      217 JUMPIF                           R2 ; [+6]
      218 GETIMPORT                        R2 K42 [warn]
      220 LOADK                            R3 K43 ["Button tag misses required text and url attributes"]
      221 CALL                             R2 1 0
      222 LOADNIL                          R2
      223 RETURN                           R2 1
      224 GETUPVAL                         R2 1
      225 GETTABLEKS                       R2 R2 K33 ["createElement"]
      227 GETUPVAL                         R3 3
      228 NEWTABLE                         R4 8 0
      230 GETTABLEKS                       R6 R0 K12 ["index"]
      232 FASTCALL1                        TOSTRING R6 ; [+2]
      233 GETIMPORT                        R5 K36 [tostring]
      235 CALL                             R5 1 1
      236 SETTABLEKS                       R5 R4 K37 ["key"]
      238 GETTABLEKS                       R5 R0 K12 ["index"]
      240 SETTABLEKS                       R5 R4 K13 ["LayoutOrder"]
      242 GETTABLEKS                       R5 R0 K4 ["attributes"]
      244 GETTABLEKS                       R5 R5 K0 ["text"]
      246 SETTABLEKS                       R5 R4 K44 ["Text"]
      248 GETTABLEKS                       R5 R0 K4 ["attributes"]
      250 GETTABLEKS                       R5 R5 K45 ["leftIcon"]
      252 SETTABLEKS                       R5 R4 K46 ["LeftIcon"]
      254 GETTABLEKS                       R5 R0 K4 ["attributes"]
      256 GETTABLEKS                       R5 R5 K47 ["rightIcon"]
      258 SETTABLEKS                       R5 R4 K48 ["RightIcon"]
      260 NEWCLOSURE                       R5 P0
      261 CAPTURE                          VAL R1
      262 CAPTURE                          VAL R0
      263 SETTABLEKS                       R5 R4 K49 ["OnClick"]
      265 GETUPVAL                         R5 1
      266 GETTABLEKS                       R5 R5 K31 ["Tag"]
      268 LOADK                            R6 K50 ["X-Fit Primary"]
      269 SETTABLE                         R6 R4 R5
      270 CALL                             R2 2 -1
      271 RETURN                           R2 -1
      272 GETTABLEKS                       R2 R0 K0 ["text"]
      274 JUMPIFNOTEQKS                    R2 K51 ["font"] ; [+30]
      276 GETTABLEKS                       R3 R0 K4 ["attributes"]
      278 JUMPIFNOT                        R3 ; [+10]
      279 GETTABLEKS                       R3 R0 K4 ["attributes"]
      281 GETTABLEKS                       R3 R3 K52 ["color"]
      283 JUMPIFNOT                        R3 ; [+5]
      284 GETTABLEKS                       R2 R0 K4 ["attributes"]
      286 GETTABLEKS                       R2 R2 K52 ["color"]
      288 JUMP                             ; [+1]
      289 LOADNIL                          R2
      290 GETTABLEKS                       R3 R1 K53 ["processChildren"]
      292 GETTABLEKS                       R4 R0 K54 ["children"]
      294 GETUPVAL                         R5 4
      295 MOVE                             R6 R1
      296 DUPTABLE                         R7 K56 [{"textStyles"}]
      297 DUPTABLE                         R8 K57 [{"color"}]
      298 SETTABLEKS                       R2 R8 K52 ["color"]
      300 SETTABLEKS                       R8 R7 K55 ["textStyles"]
      302 CALL                             R5 2 -1
      303 CALL                             R3 -1 -1
      304 RETURN                           R3 -1
      305 LOADNIL                          R2
      306 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["userRenderers"]
        3 SETTABLEKS                       R3 R2 K1 ["renderers"]
        5 GETIMPORT                        R2 K4 [table.clone]
        7 GETTABLEKS                       R3 R1 K5 ["markdownRendererProps"]
        9 JUMPIF                           R3 ; [+2]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K6 ["imageSize"]
       15 JUMPIFNOT                        R3 ; [+19]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K7 ["joinDeep"]
       19 GETTABLEKS                       R4 R2 K8 ["imageStyles"]
       21 JUMPIF                           R4 ; [+2]
       22 NEWTABLE                         R4 0 0
       24 DUPTABLE                         R5 K10 [{"size"}]
       25 GETTABLEKS                       R6 R2 K6 ["imageSize"]
       27 SETTABLEKS                       R6 R5 K9 ["size"]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K8 ["imageStyles"]
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R2 K6 ["imageSize"]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K7 ["joinDeep"]
       38 DUPTABLE                         R4 K19 [{["textStyles"], ["codeStyles"], ["headerStyles"], ["imageStyles"], ["isInline"] = False, ["linkCallback"], ["colorScheme"], ["processChildren"]}]
       39 DUPTABLE                         R5 K23 [{["textSize"] = 18, ["font"]}]
       40 GETUPVAL                         R6 2
       41 SETTABLEKS                       R6 R5 K22 ["font"]
       43 SETTABLEKS                       R5 R4 K11 ["textStyles"]
       45 DUPTABLE                         R5 K23 [{["textSize"] = 18, ["font"]}]
       46 GETUPVAL                         R6 3
       47 SETTABLEKS                       R6 R5 K22 ["font"]
       49 SETTABLEKS                       R5 R4 K12 ["codeStyles"]
       51 NEWTABLE                         R5 0 4
       53 DUPTABLE                         R6 K25 [{["textSize"] = 54, ["font"]}]
       54 GETUPVAL                         R7 2
       55 SETTABLEKS                       R7 R6 K22 ["font"]
       57 SETTABLEN                        R6 R5 1
       58 DUPTABLE                         R6 K27 [{["textSize"] = 45, ["font"]}]
       59 GETUPVAL                         R7 2
       60 SETTABLEKS                       R7 R6 K22 ["font"]
       62 SETTABLEN                        R6 R5 2
       63 DUPTABLE                         R6 K29 [{["textSize"] = 36, ["font"]}]
       64 GETUPVAL                         R7 2
       65 SETTABLEKS                       R7 R6 K22 ["font"]
       67 SETTABLEN                        R6 R5 3
       68 DUPTABLE                         R6 K31 [{["textSize"] = 27, ["font"]}]
       69 GETUPVAL                         R7 2
       70 SETTABLEKS                       R7 R6 K22 ["font"]
       72 SETTABLEN                        R6 R5 4
       73 SETTABLEKS                       R5 R4 K13 ["headerStyles"]
       75 DUPTABLE                         R5 K10 [{"size"}]
       76 GETUPVAL                         R6 4
       77 SETTABLEKS                       R6 R5 K9 ["size"]
       79 SETTABLEKS                       R5 R4 K8 ["imageStyles"]
       81 GETTABLEKS                       R5 R1 K16 ["linkCallback"]
       83 JUMPIF                           R5 ; [+1]
       84 GETUPVAL                         R5 5
       85 SETTABLEKS                       R5 R4 K16 ["linkCallback"]
       87 GETTABLEKS                       R5 R1 K17 ["colorScheme"]
       89 SETTABLEKS                       R5 R4 K17 ["colorScheme"]
       91 GETUPVAL                         R5 6
       92 SETTABLEKS                       R5 R4 K18 ["processChildren"]
       94 MOVE                             R5 R2
       95 CALL                             R3 2 1
       96 GETIMPORT                        R4 K33 [table.freeze]
       98 MOVE                             R5 R3
       99 CALL                             R4 1 0
      100 GETUPVAL                         R4 7
      101 MOVE                             R5 R0
      102 MOVE                             R6 R3
      103 CALL                             R4 2 -1
      104 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K11 [game]
       25 LOADK                            R5 K12 ["StudioService"]
       26 NAMECALL                         R3 R3 K13 ["GetService"]
       28 CALL                             R3 2 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R0 K14 ["Styling"]
       33 GETTABLEKS                       R5 R5 K15 ["joinTags"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K16 ["Components"]
       40 GETIMPORT                        R6 K6 [require]
       42 GETTABLEKS                       R7 R5 K17 ["Pane"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K6 [require]
       47 GETTABLEKS                       R8 R5 K18 ["InlineLayout"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K6 [require]
       52 GETTABLEKS                       R9 R5 K18 ["InlineLayout"]
       54 GETTABLEKS                       R9 R9 K19 ["BaseTextElement"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R10 R5 K18 ["InlineLayout"]
       61 GETTABLEKS                       R10 R10 K20 ["TextElement"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K6 [require]
       66 GETTABLEKS                       R11 R5 K18 ["InlineLayout"]
       68 GETTABLEKS                       R11 R11 K21 ["LinkElement"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K6 [require]
       73 GETTABLEKS                       R12 R5 K18 ["InlineLayout"]
       75 GETTABLEKS                       R12 R12 K22 ["ImageElement"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R13 R5 K18 ["InlineLayout"]
       82 GETTABLEKS                       R13 R13 K23 ["HardBreakElement"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R14 R5 K18 ["InlineLayout"]
       89 GETTABLEKS                       R14 R14 K24 ["isInlineElement"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETTABLEKS                       R15 R5 K25 ["TextLabel"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETTABLEKS                       R16 R5 K26 ["BulletList"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K6 [require]
      104 GETTABLEKS                       R17 R5 K27 ["Separator"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K6 [require]
      109 GETTABLEKS                       R18 R5 K28 ["ScrollingFrame"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R19 R5 K29 ["IconButton"]
      116 CALL                             R18 1 1
      117 GETIMPORT                        R19 K6 [require]
      119 GETTABLEKS                       R20 R0 K7 ["Util"]
      121 GETTABLEKS                       R20 R20 K30 ["Markdown"]
      123 GETTABLEKS                       R20 R20 K31 ["Types"]
      125 CALL                             R19 1 1
      126 GETIMPORT                        R20 K6 [require]
      128 GETTABLEKS                       R21 R0 K7 ["Util"]
      130 GETTABLEKS                       R21 R21 K32 ["Highlighter"]
      132 CALL                             R20 1 1
      133 GETIMPORT                        R21 K6 [require]
      135 GETTABLEKS                       R22 R0 K7 ["Util"]
      137 GETTABLEKS                       R22 R22 K32 ["Highlighter"]
      139 GETTABLEKS                       R22 R22 K31 ["Types"]
      141 CALL                             R21 1 1
      142 GETIMPORT                        R22 K36 [Enum.Font.SourceSans]
      144 GETIMPORT                        R23 K39 [UDim2.new]
      146 LOADN                            R24 0
      147 LOADN                            R25 16
      148 LOADN                            R26 0
      149 LOADN                            R27 16
      150 CALL                             R23 4 1
      151 GETIMPORT                        R24 K41 [Enum.Font.Code]
      153 DUPCLOSURE                       R25 K42 [PROTO_0]
      154 CAPTURE                          VAL R2
      155 DUPCLOSURE                       R26 K43 [PROTO_1]
      156 DUPCLOSURE                       R27 K44 [PROTO_2]
      157 CAPTURE                          VAL R2
      158 DUPCLOSURE                       R28 K45 [PROTO_3]
      159 SETGLOBAL                        R28 K46 ["processSoftBreaks"]
      161 DUPTABLE                         R28 K48 [{"renderers"}]
      162 NEWTABLE                         R29 0 0
      164 SETTABLEKS                       R29 R28 K47 ["renderers"]
      166 DUPCLOSURE                       R29 K49 [PROTO_4]
      167 DUPCLOSURE                       R30 K50 [PROTO_5]
      168 CAPTURE                          VAL R28
      169 DUPCLOSURE                       R31 K51 [PROTO_6]
      170 CAPTURE                          VAL R28
      171 DUPCLOSURE                       R32 K52 [PROTO_7]
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R25
      176 CAPTURE                          VAL R13
      177 DUPCLOSURE                       R33 K53 [PROTO_8]
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R6
      180 DUPCLOSURE                       R34 K54 [PROTO_9]
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R32
      184 CAPTURE                          VAL R25
      185 DUPCLOSURE                       R35 K55 [PROTO_10]
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R32
      189 DUPCLOSURE                       R36 K56 [PROTO_12]
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R17
      197 DUPCLOSURE                       R37 K57 [PROTO_13]
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R28
      201 CAPTURE                          VAL R30
      202 CAPTURE                          VAL R15
      203 DUPCLOSURE                       R38 K58 [PROTO_14]
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R32
      207 DUPCLOSURE                       R39 K59 [PROTO_15]
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R25
      210 DUPCLOSURE                       R40 K60 [PROTO_16]
      211 CAPTURE                          VAL R9
      212 DUPCLOSURE                       R41 K61 [PROTO_17]
      213 CAPTURE                          VAL R12
      214 DUPCLOSURE                       R42 K62 [PROTO_19]
      215 CAPTURE                          VAL R10
      216 DUPCLOSURE                       R43 K63 [PROTO_20]
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R16
      219 DUPCLOSURE                       R44 K64 [PROTO_21]
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R6
      222 CAPTURE                          VAL R32
      223 CAPTURE                          VAL R25
      224 DUPCLOSURE                       R45 K65 [PROTO_22]
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R1
      227 DUPCLOSURE                       R46 K66 [PROTO_24]
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R25
      233 NEWTABLE                         R47 16 0
      235 SETTABLEKS                       R33 R47 K67 ["ROOT"]
      237 SETTABLEKS                       R34 R47 K68 ["HEADING"]
      239 SETTABLEKS                       R35 R47 K69 ["PARAGRAPH"]
      241 SETTABLEKS                       R36 R47 K70 ["CODE_BLOCK"]
      243 SETTABLEKS                       R39 R47 K71 ["STYLED_TEXT"]
      245 SETTABLEKS                       R40 R47 K72 ["TEXT"]
      247 SETTABLEKS                       R42 R47 K73 ["LINK"]
      249 SETTABLEKS                       R37 R47 K74 ["LIST"]
      251 SETTABLEKS                       R38 R47 K75 ["LIST_ITEM"]
      253 SETTABLEKS                       R43 R47 K76 ["DIVIDER"]
      255 SETTABLEKS                       R44 R47 K77 ["QUOTE"]
      257 SETTABLEKS                       R45 R47 K78 ["IMAGE"]
      259 SETTABLEKS                       R46 R47 K79 ["TAG"]
      261 SETTABLEKS                       R41 R47 K80 ["BREAK"]
      263 SETTABLEKS                       R41 R47 K81 ["LINE_BREAK"]
      265 SETTABLEKS                       R47 R28 K82 ["defaultRenderers"]
      267 DUPCLOSURE                       R47 K83 [PROTO_25]
      268 CAPTURE                          VAL R28
      269 CAPTURE                          VAL R2
      270 CAPTURE                          VAL R22
      271 CAPTURE                          VAL R24
      272 CAPTURE                          VAL R23
      273 CAPTURE                          VAL R26
      274 CAPTURE                          VAL R31
      275 CAPTURE                          VAL R30
      276 SETTABLEKS                       R47 R28 K84 ["render"]
      278 RETURN                           R28 1
