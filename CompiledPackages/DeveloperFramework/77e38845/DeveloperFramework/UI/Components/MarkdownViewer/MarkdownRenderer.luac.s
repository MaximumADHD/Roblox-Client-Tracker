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
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Code text styles are only available when the flag is enabled"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["joinDeep"]
       10 GETTABLEKS                       R2 R0 K4 ["textStyles"]
       12 GETTABLEKS                       R3 R0 K5 ["codeStyles"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_3:
        0 LOADK                            R3 K0 ["%s*[\r\n]%s*"]
        1 LOADK                            R4 K1 [" "]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+42]
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+22]
        3 DUPTABLE                         R1 K5 [{"Bold", "Italic", "Strike", "Color", "FontFace"}]
        4 GETTABLEKS                       R2 R0 K6 ["bold"]
        6 SETTABLEKS                       R2 R1 K0 ["Bold"]
        8 GETTABLEKS                       R2 R0 K7 ["italic"]
       10 SETTABLEKS                       R2 R1 K1 ["Italic"]
       12 GETTABLEKS                       R2 R0 K8 ["strike"]
       14 SETTABLEKS                       R2 R1 K2 ["Strike"]
       16 GETTABLEKS                       R2 R0 K9 ["color"]
       18 SETTABLEKS                       R2 R1 K3 ["Color"]
       20 GETTABLEKS                       R2 R0 K10 ["fontFace"]
       22 SETTABLEKS                       R2 R1 K4 ["FontFace"]
       24 RETURN                           R1 1
       25 DUPTABLE                         R1 K11 [{"Bold", "Italic", "Strike", "Color"}]
       26 GETTABLEKS                       R2 R0 K6 ["bold"]
       28 SETTABLEKS                       R2 R1 K0 ["Bold"]
       30 GETTABLEKS                       R2 R0 K7 ["italic"]
       32 SETTABLEKS                       R2 R1 K1 ["Italic"]
       34 GETTABLEKS                       R2 R0 K8 ["strike"]
       36 SETTABLEKS                       R2 R1 K2 ["Strike"]
       38 GETTABLEKS                       R2 R0 K9 ["color"]
       40 SETTABLEKS                       R2 R1 K3 ["Color"]
       42 RETURN                           R1 1
       43 LOADNIL                          R1
       44 RETURN                           R1 1

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
       22 LOADNIL                          R5
       23 GETUPVAL                         R6 1
       24 JUMPIFNOT                        R6 ; [+39]
       25 GETUPVAL                         R8 1
       26 FASTCALL2K                       ASSERT R8 K6 ; [+4]
       28 LOADK                            R9 K6 ["Code text styles are only available when the flag is enabled"]
       29 GETIMPORT                        R7 K8 [assert]
       31 CALL                             R7 2 0
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K9 ["joinDeep"]
       35 GETTABLEKS                       R7 R1 K10 ["textStyles"]
       37 GETTABLEKS                       R8 R1 K11 ["codeStyles"]
       39 CALL                             R6 2 1
       40 NEWTABLE                         R7 8 0
       42 LOADB                            R8 0
       43 SETTABLEKS                       R8 R7 K12 ["TextWrapped"]
       45 GETTABLEKS                       R8 R6 K13 ["textSize"]
       47 SETTABLEKS                       R8 R7 K14 ["TextSize"]
       49 GETTABLEKS                       R8 R6 K15 ["font"]
       51 SETTABLEKS                       R8 R7 K16 ["Font"]
       53 GETTABLEKS                       R8 R6 K17 ["fontFace"]
       55 SETTABLEKS                       R8 R7 K18 ["FontFace"]
       57 GETUPVAL                         R8 3
       58 GETTABLEKS                       R8 R8 K19 ["Tag"]
       60 LOADK                            R9 K20 ["X-Fit X-Top X-Pad Left"]
       61 SETTABLE                         R9 R7 R8
       62 MOVE                             R5 R7
       63 JUMP                             ; [+21]
       64 NEWTABLE                         R6 4 0
       66 LOADB                            R7 0
       67 SETTABLEKS                       R7 R6 K12 ["TextWrapped"]
       69 GETTABLEKS                       R7 R1 K10 ["textStyles"]
       71 GETTABLEKS                       R7 R7 K13 ["textSize"]
       73 SETTABLEKS                       R7 R6 K14 ["TextSize"]
       75 GETIMPORT                        R7 K23 [Enum.Font.Code]
       77 SETTABLEKS                       R7 R6 K16 ["Font"]
       79 GETUPVAL                         R7 3
       80 GETTABLEKS                       R7 R7 K19 ["Tag"]
       82 LOADK                            R8 K20 ["X-Fit X-Top X-Pad Left"]
       83 SETTABLE                         R8 R6 R7
       84 MOVE                             R5 R6
       85 DUPTABLE                         R6 K30 [{["Text"], ["TextColor"], ["RichText"] = True, ["ZIndex"] = 1}]
       86 SETTABLEKS                       R4 R6 K24 ["Text"]
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K31 ["getTokenColor"]
       91 LOADK                            R8 K32 ["iden"]
       92 CALL                             R7 1 1
       93 SETTABLEKS                       R7 R6 K25 ["TextColor"]
       95 DUPTABLE                         R7 K37 [{["Text"], ["TextColor"], ["TextTransparency"] = 0.4, ["ZIndex"] = 0, ["TextSelectable"] = True}]
       96 SETTABLEKS                       R3 R7 K24 ["Text"]
       98 GETUPVAL                         R8 0
       99 GETTABLEKS                       R8 R8 K31 ["getTokenColor"]
      101 LOADK                            R9 K38 ["background"]
      102 CALL                             R8 1 1
      103 SETTABLEKS                       R8 R7 K25 ["TextColor"]
      105 GETTABLEKS                       R8 R1 K39 ["codeBackgroundStyles"]
      107 JUMPIF                           R8 ; [+2]
      108 NEWTABLE                         R8 0 0
      110 GETTABLEKS                       R9 R8 K40 ["backgroundColor3"]
      112 JUMPIF                           R9 ; [+5]
      113 GETUPVAL                         R9 0
      114 GETTABLEKS                       R9 R9 K31 ["getTokenColor"]
      116 LOADK                            R10 K38 ["background"]
      117 CALL                             R9 1 1
      118 GETTABLEKS                       R11 R8 K42 ["backgroundTransparency"]
      120 ORK                              R10 R11 K41 []
      121 GETUPVAL                         R11 3
      122 GETTABLEKS                       R11 R11 K43 ["createElement"]
      124 LOADK                            R12 K44 ["Frame"]
      125 NEWTABLE                         R13 4 0
      127 GETTABLEKS                       R15 R0 K45 ["index"]
      129 FASTCALL1                        TOSTRING R15 ; [+2]
      130 GETIMPORT                        R14 K47 [tostring]
      132 CALL                             R14 1 1
      133 SETTABLEKS                       R14 R13 K48 ["key"]
      135 GETTABLEKS                       R14 R0 K45 ["index"]
      137 SETTABLEKS                       R14 R13 K49 ["LayoutOrder"]
      139 GETUPVAL                         R14 3
      140 GETTABLEKS                       R14 R14 K19 ["Tag"]
      142 LOADK                            R15 K50 ["X-FitY X-Transparent CodeBlock"]
      143 SETTABLE                         R15 R13 R14
      144 DUPTABLE                         R14 K52 [{"CodeWrapper"}]
      145 GETUPVAL                         R15 3
      146 GETTABLEKS                       R15 R15 K43 ["createElement"]
      148 GETUPVAL                         R16 4
      149 NEWTABLE                         R17 8 0
      151 SETTABLEKS                       R9 R17 K53 ["BackgroundColor3"]
      153 SETTABLEKS                       R10 R17 K54 ["BackgroundTransparency"]
      155 GETIMPORT                        R18 K57 [Enum.ScrollingDirection.X]
      157 SETTABLEKS                       R18 R17 K55 ["ScrollingDirection"]
      159 GETIMPORT                        R18 K59 [Enum.AutomaticSize.X]
      161 SETTABLEKS                       R18 R17 K60 ["AutomaticCanvasSize"]
      163 GETUPVAL                         R18 3
      164 GETTABLEKS                       R18 R18 K19 ["Tag"]
      166 LOADK                            R19 K61 ["X-FitY"]
      167 SETTABLE                         R19 R17 R18
      168 DUPTABLE                         R18 K64 [{"HighlightedCode", "SelectableCode"}]
      169 GETUPVAL                         R19 3
      170 GETTABLEKS                       R19 R19 K43 ["createElement"]
      172 GETUPVAL                         R20 5
      173 GETUPVAL                         R21 2
      174 GETTABLEKS                       R21 R21 K65 ["join"]
      176 MOVE                             R22 R5
      177 MOVE                             R23 R6
      178 CALL                             R21 2 -1
      179 CALL                             R19 -1 1
      180 SETTABLEKS                       R19 R18 K62 ["HighlightedCode"]
      182 GETUPVAL                         R19 3
      183 GETTABLEKS                       R19 R19 K43 ["createElement"]
      185 GETUPVAL                         R20 5
      186 GETUPVAL                         R21 2
      187 GETTABLEKS                       R21 R21 K65 ["join"]
      189 MOVE                             R22 R5
      190 MOVE                             R23 R7
      191 CALL                             R21 2 -1
      192 CALL                             R19 -1 1
      193 SETTABLEKS                       R19 R18 K63 ["SelectableCode"]
      195 CALL                             R15 3 1
      196 SETTABLEKS                       R15 R14 K51 ["CodeWrapper"]
      198 CALL                             R11 3 -1
      199 RETURN                           R11 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["CopyToClipboard"]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_13:
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
       22 LOADNIL                          R5
       23 GETUPVAL                         R6 1
       24 JUMPIFNOT                        R6 ; [+39]
       25 GETUPVAL                         R8 1
       26 FASTCALL2K                       ASSERT R8 K6 ; [+4]
       28 LOADK                            R9 K6 ["Code text styles are only available when the flag is enabled"]
       29 GETIMPORT                        R7 K8 [assert]
       31 CALL                             R7 2 0
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K9 ["joinDeep"]
       35 GETTABLEKS                       R7 R1 K10 ["textStyles"]
       37 GETTABLEKS                       R8 R1 K11 ["codeStyles"]
       39 CALL                             R6 2 1
       40 NEWTABLE                         R7 8 0
       42 LOADB                            R8 0
       43 SETTABLEKS                       R8 R7 K12 ["TextWrapped"]
       45 GETTABLEKS                       R8 R6 K13 ["textSize"]
       47 SETTABLEKS                       R8 R7 K14 ["TextSize"]
       49 GETTABLEKS                       R8 R6 K15 ["font"]
       51 SETTABLEKS                       R8 R7 K16 ["Font"]
       53 GETTABLEKS                       R8 R6 K17 ["fontFace"]
       55 SETTABLEKS                       R8 R7 K18 ["FontFace"]
       57 GETUPVAL                         R8 3
       58 GETTABLEKS                       R8 R8 K19 ["Tag"]
       60 LOADK                            R9 K20 ["X-Fit X-Top X-Pad Left"]
       61 SETTABLE                         R9 R7 R8
       62 MOVE                             R5 R7
       63 JUMP                             ; [+21]
       64 NEWTABLE                         R6 4 0
       66 LOADB                            R7 0
       67 SETTABLEKS                       R7 R6 K12 ["TextWrapped"]
       69 GETTABLEKS                       R7 R1 K10 ["textStyles"]
       71 GETTABLEKS                       R7 R7 K13 ["textSize"]
       73 SETTABLEKS                       R7 R6 K14 ["TextSize"]
       75 GETIMPORT                        R7 K23 [Enum.Font.Code]
       77 SETTABLEKS                       R7 R6 K16 ["Font"]
       79 GETUPVAL                         R7 3
       80 GETTABLEKS                       R7 R7 K19 ["Tag"]
       82 LOADK                            R8 K20 ["X-Fit X-Top X-Pad Left"]
       83 SETTABLE                         R8 R6 R7
       84 MOVE                             R5 R6
       85 DUPTABLE                         R6 K30 [{["Text"], ["TextColor"], ["RichText"] = True, ["ZIndex"] = 1}]
       86 SETTABLEKS                       R4 R6 K24 ["Text"]
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K31 ["getTokenColor"]
       91 LOADK                            R8 K32 ["iden"]
       92 CALL                             R7 1 1
       93 SETTABLEKS                       R7 R6 K25 ["TextColor"]
       95 DUPTABLE                         R7 K37 [{["Text"], ["TextColor"], ["TextTransparency"] = 0.4, ["ZIndex"] = 0, ["TextSelectable"] = True}]
       96 SETTABLEKS                       R3 R7 K24 ["Text"]
       98 GETUPVAL                         R8 0
       99 GETTABLEKS                       R8 R8 K31 ["getTokenColor"]
      101 LOADK                            R9 K38 ["background"]
      102 CALL                             R8 1 1
      103 SETTABLEKS                       R8 R7 K25 ["TextColor"]
      105 GETTABLEKS                       R8 R1 K39 ["codeBackgroundStyles"]
      107 JUMPIF                           R8 ; [+2]
      108 NEWTABLE                         R8 0 0
      110 GETTABLEKS                       R9 R8 K40 ["backgroundColor3"]
      112 JUMPIF                           R9 ; [+5]
      113 GETUPVAL                         R9 0
      114 GETTABLEKS                       R9 R9 K31 ["getTokenColor"]
      116 LOADK                            R10 K38 ["background"]
      117 CALL                             R9 1 1
      118 GETTABLEKS                       R11 R8 K41 ["backgroundTransparency"]
      120 ORK                              R10 R11 K35 [0]
      121 LOADNIL                          R11
      122 GETTABLEKS                       R12 R1 K42 ["codeSettings"]
      124 JUMPIFNOT                        R12 ; [+41]
      125 GETTABLEKS                       R12 R1 K42 ["codeSettings"]
      127 GETTABLEKS                       R12 R12 K43 ["showLineNumbers"]
      129 JUMPIFNOT                        R12 ; [+36]
      130 LENGTH                           R12 R3
      131 NEWTABLE                         R13 0 0
      133 LOADN                            R14 1
      134 LOADN                            R15 0
      135 JUMPIFNOTLE                      R15 R12 ; [+18]
      137 GETIMPORT                        R16 K46 [string.find]
      139 MOVE                             R17 R3
      140 LOADK                            R18 K47 ["\n"]
      141 MOVE                             R19 R15
      142 LOADB                            R20 1
      143 CALL                             R16 4 1
      144 JUMPIFNOT                        R16 ; [+9]
      145 FASTCALL1                        TOSTRING R14 ; [+3]
      146 MOVE                             R18 R14
      147 GETIMPORT                        R17 K49 [tostring]
      149 CALL                             R17 1 1
      150 SETTABLE                         R17 R13 R14
      151 ADDK                             R14 R14 K29 [1]
      152 ADDK                             R15 R16 K29 [1]
      153 JUMPBACK                         ; [-19]
      154 FASTCALL1                        TOSTRING R14 ; [+3]
      155 MOVE                             R17 R14
      156 GETIMPORT                        R16 K49 [tostring]
      158 CALL                             R16 1 1
      159 SETTABLE                         R16 R13 R14
      160 GETIMPORT                        R16 K52 [table.concat]
      162 MOVE                             R17 R13
      163 LOADK                            R18 K47 ["\n"]
      164 CALL                             R16 2 1
      165 MOVE                             R11 R16
      166 GETUPVAL                         R12 3
      167 GETTABLEKS                       R12 R12 K53 ["createElement"]
      169 LOADK                            R13 K54 ["Frame"]
      170 NEWTABLE                         R14 4 0
      172 GETTABLEKS                       R16 R0 K55 ["index"]
      174 FASTCALL1                        TOSTRING R16 ; [+2]
      175 GETIMPORT                        R15 K49 [tostring]
      177 CALL                             R15 1 1
      178 SETTABLEKS                       R15 R14 K56 ["key"]
      180 GETTABLEKS                       R15 R0 K55 ["index"]
      182 SETTABLEKS                       R15 R14 K57 ["LayoutOrder"]
      184 GETUPVAL                         R15 3
      185 GETTABLEKS                       R15 R15 K19 ["Tag"]
      187 LOADK                            R16 K58 ["X-FitY X-Transparent X-Column CodeBlock"]
      188 SETTABLE                         R16 R14 R15
      189 DUPTABLE                         R15 K61 [{"Titlebar", "CodeWrapper"}]
      190 GETTABLEKS                       R17 R1 K42 ["codeSettings"]
      192 JUMPIFNOT                        R17 ; [+76]
      193 GETTABLEKS                       R17 R1 K42 ["codeSettings"]
      195 GETTABLEKS                       R17 R17 K62 ["showCopyButton"]
      197 JUMPIFNOT                        R17 ; [+71]
      198 GETUPVAL                         R16 3
      199 GETTABLEKS                       R16 R16 K53 ["createElement"]
      201 GETUPVAL                         R17 4
      202 NEWTABLE                         R18 2 0
      204 LOADN                            R19 1
      205 SETTABLEKS                       R19 R18 K57 ["LayoutOrder"]
      207 GETUPVAL                         R19 3
      208 GETTABLEKS                       R19 R19 K19 ["Tag"]
      210 LOADK                            R20 K63 ["X-FitY Contrast X-Corner"]
      211 SETTABLE                         R20 R18 R19
      212 DUPTABLE                         R19 K65 [{"CopyToClipboardButton"}]
      213 GETUPVAL                         R20 3
      214 GETTABLEKS                       R20 R20 K53 ["createElement"]
      216 LOADK                            R21 K66 ["TextButton"]
      217 NEWTABLE                         R22 4 0
      219 GETIMPORT                        R23 K69 [Vector2.new]
      221 LOADN                            R24 1
      222 LOADN                            R25 0
      223 CALL                             R23 2 1
      224 SETTABLEKS                       R23 R22 K70 ["AnchorPoint"]
      226 GETIMPORT                        R23 K72 [UDim2.new]
      228 LOADN                            R24 1
      229 LOADN                            R25 -2
      230 LOADN                            R26 0
      231 LOADN                            R27 2
      232 CALL                             R23 4 1
      233 SETTABLEKS                       R23 R22 K73 ["Position"]
      235 GETUPVAL                         R23 3
      236 GETTABLEKS                       R23 R23 K74 ["Event"]
      238 GETTABLEKS                       R23 R23 K75 ["Activated"]
      240 NEWCLOSURE                       R24 P0
      241 CAPTURE                          UPVAL U5
      242 CAPTURE                          VAL R3
      243 SETTABLE                         R24 R22 R23
      244 GETUPVAL                         R23 3
      245 GETTABLEKS                       R23 R23 K19 ["Tag"]
      247 LOADK                            R24 K76 ["CopyButton"]
      248 SETTABLE                         R24 R22 R23
      249 DUPTABLE                         R23 K78 [{"Icon"}]
      250 GETUPVAL                         R24 3
      251 GETTABLEKS                       R24 R24 K53 ["createElement"]
      253 LOADK                            R25 K79 ["ImageLabel"]
      254 NEWTABLE                         R26 1 0
      256 GETUPVAL                         R27 3
      257 GETTABLEKS                       R27 R27 K19 ["Tag"]
      259 LOADK                            R28 K80 ["CopyIcon"]
      260 SETTABLE                         R28 R26 R27
      261 CALL                             R24 2 1
      262 SETTABLEKS                       R24 R23 K77 ["Icon"]
      264 CALL                             R20 3 1
      265 SETTABLEKS                       R20 R19 K64 ["CopyToClipboardButton"]
      267 CALL                             R16 3 1
      268 JUMP                             ; [+1]
      269 LOADNIL                          R16
      270 SETTABLEKS                       R16 R15 K59 ["Titlebar"]
      272 GETUPVAL                         R16 3
      273 GETTABLEKS                       R16 R16 K53 ["createElement"]
      275 LOADK                            R17 K54 ["Frame"]
      276 NEWTABLE                         R18 2 0
      278 LOADN                            R19 2
      279 SETTABLEKS                       R19 R18 K57 ["LayoutOrder"]
      281 GETUPVAL                         R19 3
      282 GETTABLEKS                       R19 R19 K19 ["Tag"]
      284 LOADK                            R20 K81 ["X-FitY X-Row X-Transparent"]
      285 SETTABLE                         R20 R18 R19
      286 DUPTABLE                         R19 K84 [{"LineNumbers", "ScrollFrame"}]
      287 GETTABLEKS                       R21 R1 K42 ["codeSettings"]
      289 JUMPIFNOT                        R21 ; [+35]
      290 GETTABLEKS                       R21 R1 K42 ["codeSettings"]
      292 GETTABLEKS                       R21 R21 K43 ["showLineNumbers"]
      294 JUMPIFNOT                        R21 ; [+30]
      295 GETUPVAL                         R20 3
      296 GETTABLEKS                       R20 R20 K53 ["createElement"]
      298 GETUPVAL                         R21 6
      299 NEWTABLE                         R22 8 0
      301 SETTABLEKS                       R11 R22 K24 ["Text"]
      303 GETTABLEKS                       R23 R5 K14 ["TextSize"]
      305 SETTABLEKS                       R23 R22 K14 ["TextSize"]
      307 GETTABLEKS                       R23 R5 K16 ["Font"]
      309 SETTABLEKS                       R23 R22 K16 ["Font"]
      311 GETTABLEKS                       R23 R5 K18 ["FontFace"]
      313 SETTABLEKS                       R23 R22 K18 ["FontFace"]
      315 LOADN                            R23 1
      316 SETTABLEKS                       R23 R22 K57 ["LayoutOrder"]
      318 GETUPVAL                         R23 3
      319 GETTABLEKS                       R23 R23 K19 ["Tag"]
      321 LOADK                            R24 K85 ["X-Pad LineNumbers"]
      322 SETTABLE                         R24 R22 R23
      323 CALL                             R20 2 1
      324 JUMP                             ; [+1]
      325 LOADNIL                          R20
      326 SETTABLEKS                       R20 R19 K82 ["LineNumbers"]
      328 GETUPVAL                         R20 3
      329 GETTABLEKS                       R20 R20 K53 ["createElement"]
      331 GETUPVAL                         R21 7
      332 NEWTABLE                         R22 8 0
      334 LOADN                            R23 2
      335 SETTABLEKS                       R23 R22 K57 ["LayoutOrder"]
      337 GETIMPORT                        R23 K72 [UDim2.new]
      339 LOADN                            R24 1
      340 GETTABLEKS                       R26 R5 K14 ["TextSize"]
      342 MINUS                            R25 R26
      343 LOADN                            R26 0
      344 LOADN                            R27 0
      345 CALL                             R23 4 1
      346 SETTABLEKS                       R23 R22 K86 ["Size"]
      348 SETTABLEKS                       R9 R22 K87 ["BackgroundColor3"]
      350 SETTABLEKS                       R10 R22 K88 ["BackgroundTransparency"]
      352 GETIMPORT                        R23 K91 [Enum.ScrollingDirection.X]
      354 SETTABLEKS                       R23 R22 K89 ["ScrollingDirection"]
      356 GETIMPORT                        R23 K93 [Enum.AutomaticSize.X]
      358 SETTABLEKS                       R23 R22 K94 ["AutomaticCanvasSize"]
      360 GETUPVAL                         R23 3
      361 GETTABLEKS                       R23 R23 K19 ["Tag"]
      363 LOADK                            R24 K95 ["X-FitY CodeScroller"]
      364 SETTABLE                         R24 R22 R23
      365 DUPTABLE                         R23 K98 [{"HighlightedCode", "SelectableCode"}]
      366 GETUPVAL                         R24 3
      367 GETTABLEKS                       R24 R24 K53 ["createElement"]
      369 GETUPVAL                         R25 6
      370 GETUPVAL                         R26 2
      371 GETTABLEKS                       R26 R26 K99 ["join"]
      373 MOVE                             R27 R5
      374 MOVE                             R28 R6
      375 CALL                             R26 2 -1
      376 CALL                             R24 -1 1
      377 SETTABLEKS                       R24 R23 K96 ["HighlightedCode"]
      379 GETUPVAL                         R24 3
      380 GETTABLEKS                       R24 R24 K53 ["createElement"]
      382 GETUPVAL                         R25 6
      383 GETUPVAL                         R26 2
      384 GETTABLEKS                       R26 R26 K99 ["join"]
      386 MOVE                             R27 R5
      387 MOVE                             R28 R7
      388 CALL                             R26 2 -1
      389 CALL                             R24 -1 1
      390 SETTABLEKS                       R24 R23 K97 ["SelectableCode"]
      392 CALL                             R20 3 1
      393 SETTABLEKS                       R20 R19 K83 ["ScrollFrame"]
      395 CALL                             R16 3 1
      396 SETTABLEKS                       R16 R15 K60 ["CodeWrapper"]
      398 CALL                             R12 3 -1
      399 RETURN                           R12 -1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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
       23 JUMP                             ; [+38]
       24 JUMPIFEQKS                       R2 K5 ["ITALIC"] ; [+3]
       26 JUMPIFNOTEQKS                    R2 K6 ["ITALIC_2"] ; [+5]
       28 LOADB                            R4 1
       29 SETTABLEKS                       R4 R3 K7 ["italic"]
       31 JUMP                             ; [+30]
       32 JUMPIFNOTEQKS                    R2 K8 ["STRIKE"] ; [+5]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K9 ["strike"]
       37 JUMP                             ; [+24]
       38 GETUPVAL                         R4 0
       39 JUMPIFNOT                        R4 ; [+22]
       40 JUMPIFNOTEQKS                    R2 K10 ["INLINE_CODE"] ; [+21]
       42 GETUPVAL                         R4 1
       43 JUMPIFNOT                        R4 ; [+3]
       44 GETTABLEKS                       R3 R1 K11 ["codeStyles"]
       46 JUMP                             ; [+6]
       47 DUPTABLE                         R4 K13 [{"font"}]
       48 GETIMPORT                        R5 K17 [Enum.Font.Code]
       50 SETTABLEKS                       R5 R4 K12 ["font"]
       52 MOVE                             R3 R4
       53 GETUPVAL                         R4 2
       54 JUMPIFNOT                        R4 ; [+7]
       55 GETUPVAL                         R4 3
       56 GETTABLEKS                       R4 R4 K18 ["joinDeep"]
       58 MOVE                             R5 R3
       59 DUPTABLE                         R6 K21 [{["selectable"] = True}]
       60 CALL                             R4 2 1
       61 MOVE                             R3 R4
       62 GETTABLEKS                       R4 R1 K22 ["processChildren"]
       64 GETTABLEKS                       R5 R0 K23 ["children"]
       66 GETUPVAL                         R6 4
       67 MOVE                             R7 R1
       68 DUPTABLE                         R8 K25 [{"textStyles"}]
       69 SETTABLEKS                       R3 R8 K24 ["textStyles"]
       71 CALL                             R6 2 -1
       72 CALL                             R4 -1 -1
       73 RETURN                           R4 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+53]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["new"]
        5 DUPTABLE                         R3 K9 [{"LayoutOrder", "Text", "TextStyle", "Font", "FontFace", "TextSize", "TextTransparency", "TextSelectable"}]
        6 GETTABLEKS                       R4 R0 K10 ["index"]
        8 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       10 GETGLOBAL                        R4 K11 ["processSoftBreaks"]
       12 GETTABLEKS                       R5 R0 K12 ["text"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K2 ["Text"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R5 R1 K13 ["textStyles"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K3 ["TextStyle"]
       23 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       25 GETTABLEKS                       R4 R4 K14 ["font"]
       27 SETTABLEKS                       R4 R3 K4 ["Font"]
       29 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       31 GETTABLEKS                       R4 R4 K15 ["fontFace"]
       33 SETTABLEKS                       R4 R3 K5 ["FontFace"]
       35 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       37 GETTABLEKS                       R4 R4 K16 ["textSize"]
       39 SETTABLEKS                       R4 R3 K6 ["TextSize"]
       41 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       43 GETTABLEKS                       R4 R4 K17 ["transparency"]
       45 SETTABLEKS                       R4 R3 K7 ["TextTransparency"]
       47 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       49 GETTABLEKS                       R4 R4 K18 ["selectable"]
       51 SETTABLEKS                       R4 R3 K8 ["TextSelectable"]
       53 CALL                             R2 1 -1
       54 RETURN                           R2 -1
       55 GETUPVAL                         R2 1
       56 GETTABLEKS                       R2 R2 K0 ["new"]
       58 DUPTABLE                         R3 K19 [{"LayoutOrder", "Text", "TextStyle", "Font", "TextSize", "TextTransparency", "TextSelectable"}]
       59 GETTABLEKS                       R4 R0 K10 ["index"]
       61 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       63 GETGLOBAL                        R4 K11 ["processSoftBreaks"]
       65 GETTABLEKS                       R5 R0 K12 ["text"]
       67 CALL                             R4 1 1
       68 SETTABLEKS                       R4 R3 K2 ["Text"]
       70 GETUPVAL                         R4 2
       71 GETTABLEKS                       R5 R1 K13 ["textStyles"]
       73 CALL                             R4 1 1
       74 SETTABLEKS                       R4 R3 K3 ["TextStyle"]
       76 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       78 GETTABLEKS                       R4 R4 K14 ["font"]
       80 SETTABLEKS                       R4 R3 K4 ["Font"]
       82 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       84 GETTABLEKS                       R4 R4 K16 ["textSize"]
       86 SETTABLEKS                       R4 R3 K6 ["TextSize"]
       88 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       90 GETTABLEKS                       R4 R4 K17 ["transparency"]
       92 SETTABLEKS                       R4 R3 K7 ["TextTransparency"]
       94 GETTABLEKS                       R4 R1 K13 ["textStyles"]
       96 GETTABLEKS                       R4 R4 K18 ["selectable"]
       98 SETTABLEKS                       R4 R3 K8 ["TextSelectable"]
      100 CALL                             R2 1 -1
      101 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+3]
        2 GETTABLEKS                       R2 R1 K0 ["codeStyles"]
        4 JUMP                             ; [+5]
        5 DUPTABLE                         R2 K2 [{"font"}]
        6 GETIMPORT                        R3 K6 [Enum.Font.Code]
        8 SETTABLEKS                       R3 R2 K1 ["font"]
       10 GETUPVAL                         R3 1
       11 JUMPIFNOT                        R3 ; [+7]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K7 ["joinDeep"]
       15 MOVE                             R4 R2
       16 DUPTABLE                         R5 K10 [{["selectable"] = True}]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 GETUPVAL                         R3 3
       20 MOVE                             R4 R0
       21 GETUPVAL                         R5 4
       22 MOVE                             R6 R1
       23 DUPTABLE                         R7 K12 [{"textStyles"}]
       24 SETTABLEKS                       R2 R7 K11 ["textStyles"]
       26 CALL                             R5 2 -1
       27 CALL                             R3 -1 -1
       28 RETURN                           R3 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["linkCallback"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_21:
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
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R6 R1 K15 ["textStyles"]
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R5 R4 K6 ["TextStyle"]
       33 GETTABLEKS                       R5 R1 K15 ["textStyles"]
       35 GETTABLEKS                       R5 R5 K16 ["font"]
       37 SETTABLEKS                       R5 R4 K7 ["Font"]
       39 GETTABLEKS                       R5 R1 K15 ["textStyles"]
       41 GETTABLEKS                       R5 R5 K17 ["textSize"]
       43 SETTABLEKS                       R5 R4 K8 ["TextSize"]
       45 GETTABLEKS                       R5 R1 K15 ["textStyles"]
       47 GETTABLEKS                       R5 R5 K18 ["transparency"]
       49 SETTABLEKS                       R5 R4 K9 ["TextTransparency"]
       51 NEWCLOSURE                       R5 P0
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R5 R4 K10 ["OnClick"]
       56 CALL                             R3 1 -1
       57 RETURN                           R3 -1

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["linkCallback"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["attributes"]
        6 GETTABLEKS                       R1 R1 K2 ["url"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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
       35 LOADNIL                          R3
       36 GETUPVAL                         R4 2
       37 JUMPIFNOT                        R4 ; [+63]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K7 ["joinDeep"]
       41 DUPTABLE                         R5 K19 [{["textStyles"], ["codeStyles"], ["headerStyles"], ["imageStyles"], ["isInline"] = False, ["linkCallback"], ["colorScheme"], ["processChildren"]}]
       42 DUPTABLE                         R6 K23 [{["textSize"] = 18, ["font"]}]
       43 GETUPVAL                         R7 3
       44 SETTABLEKS                       R7 R6 K22 ["font"]
       46 SETTABLEKS                       R6 R5 K11 ["textStyles"]
       48 DUPTABLE                         R6 K23 [{["textSize"] = 18, ["font"]}]
       49 GETUPVAL                         R7 4
       50 SETTABLEKS                       R7 R6 K22 ["font"]
       52 SETTABLEKS                       R6 R5 K12 ["codeStyles"]
       54 NEWTABLE                         R6 0 4
       56 DUPTABLE                         R7 K25 [{["textSize"] = 54, ["font"]}]
       57 GETUPVAL                         R8 3
       58 SETTABLEKS                       R8 R7 K22 ["font"]
       60 SETTABLEN                        R7 R6 1
       61 DUPTABLE                         R7 K27 [{["textSize"] = 45, ["font"]}]
       62 GETUPVAL                         R8 3
       63 SETTABLEKS                       R8 R7 K22 ["font"]
       65 SETTABLEN                        R7 R6 2
       66 DUPTABLE                         R7 K29 [{["textSize"] = 36, ["font"]}]
       67 GETUPVAL                         R8 3
       68 SETTABLEKS                       R8 R7 K22 ["font"]
       70 SETTABLEN                        R7 R6 3
       71 DUPTABLE                         R7 K31 [{["textSize"] = 27, ["font"]}]
       72 GETUPVAL                         R8 3
       73 SETTABLEKS                       R8 R7 K22 ["font"]
       75 SETTABLEN                        R7 R6 4
       76 SETTABLEKS                       R6 R5 K13 ["headerStyles"]
       78 DUPTABLE                         R6 K10 [{"size"}]
       79 GETUPVAL                         R7 5
       80 SETTABLEKS                       R7 R6 K9 ["size"]
       82 SETTABLEKS                       R6 R5 K8 ["imageStyles"]
       84 GETTABLEKS                       R6 R1 K16 ["linkCallback"]
       86 JUMPIF                           R6 ; [+1]
       87 GETUPVAL                         R6 6
       88 SETTABLEKS                       R6 R5 K16 ["linkCallback"]
       90 GETTABLEKS                       R6 R1 K17 ["colorScheme"]
       92 SETTABLEKS                       R6 R5 K17 ["colorScheme"]
       94 GETUPVAL                         R6 7
       95 SETTABLEKS                       R6 R5 K18 ["processChildren"]
       97 MOVE                             R6 R2
       98 CALL                             R4 2 1
       99 MOVE                             R3 R4
      100 JUMP                             ; [+56]
      101 GETUPVAL                         R4 1
      102 GETTABLEKS                       R4 R4 K7 ["joinDeep"]
      104 DUPTABLE                         R5 K32 [{["textStyles"], ["headerStyles"], ["imageStyles"], ["isInline"] = False, ["linkCallback"], ["colorScheme"], ["processChildren"]}]
      105 DUPTABLE                         R6 K23 [{["textSize"] = 18, ["font"]}]
      106 GETUPVAL                         R7 3
      107 SETTABLEKS                       R7 R6 K22 ["font"]
      109 SETTABLEKS                       R6 R5 K11 ["textStyles"]
      111 NEWTABLE                         R6 0 4
      113 DUPTABLE                         R7 K25 [{["textSize"] = 54, ["font"]}]
      114 GETUPVAL                         R8 3
      115 SETTABLEKS                       R8 R7 K22 ["font"]
      117 SETTABLEN                        R7 R6 1
      118 DUPTABLE                         R7 K27 [{["textSize"] = 45, ["font"]}]
      119 GETUPVAL                         R8 3
      120 SETTABLEKS                       R8 R7 K22 ["font"]
      122 SETTABLEN                        R7 R6 2
      123 DUPTABLE                         R7 K29 [{["textSize"] = 36, ["font"]}]
      124 GETUPVAL                         R8 3
      125 SETTABLEKS                       R8 R7 K22 ["font"]
      127 SETTABLEN                        R7 R6 3
      128 DUPTABLE                         R7 K31 [{["textSize"] = 27, ["font"]}]
      129 GETUPVAL                         R8 3
      130 SETTABLEKS                       R8 R7 K22 ["font"]
      132 SETTABLEN                        R7 R6 4
      133 SETTABLEKS                       R6 R5 K13 ["headerStyles"]
      135 DUPTABLE                         R6 K10 [{"size"}]
      136 GETUPVAL                         R7 5
      137 SETTABLEKS                       R7 R6 K9 ["size"]
      139 SETTABLEKS                       R6 R5 K8 ["imageStyles"]
      141 GETTABLEKS                       R6 R1 K16 ["linkCallback"]
      143 JUMPIF                           R6 ; [+1]
      144 GETUPVAL                         R6 6
      145 SETTABLEKS                       R6 R5 K16 ["linkCallback"]
      147 GETTABLEKS                       R6 R1 K17 ["colorScheme"]
      149 SETTABLEKS                       R6 R5 K17 ["colorScheme"]
      151 GETUPVAL                         R6 7
      152 SETTABLEKS                       R6 R5 K18 ["processChildren"]
      154 MOVE                             R6 R2
      155 CALL                             R4 2 1
      156 MOVE                             R3 R4
      157 GETIMPORT                        R4 K34 [table.freeze]
      159 MOVE                             R5 R3
      160 CALL                             R4 1 0
      161 GETUPVAL                         R4 8
      162 MOVE                             R5 R0
      163 MOVE                             R6 R3
      164 CALL                             R4 2 -1
      165 RETURN                           R4 -1

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
      142 GETIMPORT                        R22 K6 [require]
      144 GETTABLEKS                       R23 R0 K33 ["SharedFlags"]
      146 GETTABLEKS                       R23 R23 K34 ["getFFlagDevFrameworkMarkdownNewCodeblockComponent"]
      148 CALL                             R22 1 1
      149 CALL                             R22 0 1
      150 GETIMPORT                        R23 K6 [require]
      152 GETTABLEKS                       R24 R0 K33 ["SharedFlags"]
      154 GETTABLEKS                       R24 R24 K35 ["getFFlagDevFrameworkMarkdownControlCodeFont"]
      156 CALL                             R23 1 1
      157 CALL                             R23 0 1
      158 GETIMPORT                        R24 K6 [require]
      160 GETTABLEKS                       R25 R0 K33 ["SharedFlags"]
      162 GETTABLEKS                       R25 R25 K36 ["getFFlagDevFrameworkMarkdownInlineCodeSelectable"]
      164 CALL                             R24 1 1
      165 CALL                             R24 0 1
      166 GETIMPORT                        R25 K6 [require]
      168 GETTABLEKS                       R26 R0 K33 ["SharedFlags"]
      170 GETTABLEKS                       R26 R26 K37 ["getFFlagDevFrameworkMarkdownCommonMarkCompliance"]
      172 CALL                             R25 1 1
      173 CALL                             R25 0 1
      174 GETIMPORT                        R26 K41 [Enum.Font.SourceSans]
      176 GETIMPORT                        R27 K44 [UDim2.new]
      178 LOADN                            R28 0
      179 LOADN                            R29 16
      180 LOADN                            R30 0
      181 LOADN                            R31 16
      182 CALL                             R27 4 1
      183 GETIMPORT                        R28 K46 [Enum.Font.Code]
      185 DUPCLOSURE                       R29 K47 [PROTO_0]
      186 CAPTURE                          VAL R2
      187 DUPCLOSURE                       R30 K48 [PROTO_1]
      188 DUPCLOSURE                       R31 K49 [PROTO_2]
      189 CAPTURE                          VAL R23
      190 CAPTURE                          VAL R2
      191 DUPCLOSURE                       R32 K50 [PROTO_3]
      192 SETGLOBAL                        R32 K51 ["processSoftBreaks"]
      194 DUPTABLE                         R32 K53 [{"renderers"}]
      195 NEWTABLE                         R33 0 0
      197 SETTABLEKS                       R33 R32 K52 ["renderers"]
      199 DUPCLOSURE                       R33 K54 [PROTO_4]
      200 CAPTURE                          VAL R23
      201 DUPCLOSURE                       R34 K55 [PROTO_5]
      202 CAPTURE                          VAL R32
      203 DUPCLOSURE                       R35 K56 [PROTO_6]
      204 CAPTURE                          VAL R32
      205 DUPCLOSURE                       R36 K57 [PROTO_7]
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R29
      210 CAPTURE                          VAL R13
      211 DUPCLOSURE                       R37 K58 [PROTO_8]
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R6
      214 DUPCLOSURE                       R38 K59 [PROTO_9]
      215 CAPTURE                          VAL R1
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R36
      218 CAPTURE                          VAL R29
      219 DUPCLOSURE                       R39 K60 [PROTO_10]
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R6
      222 CAPTURE                          VAL R36
      223 DUPCLOSURE                       R40 K61 [PROTO_11]
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R23
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R17
      229 CAPTURE                          VAL R14
      230 DUPCLOSURE                       R41 K62 [PROTO_13]
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R23
      233 CAPTURE                          VAL R2
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R6
      236 CAPTURE                          VAL R3
      237 CAPTURE                          VAL R14
      238 CAPTURE                          VAL R17
      239 DUPCLOSURE                       R42 K63 [PROTO_14]
      240 CAPTURE                          VAL R1
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R32
      243 CAPTURE                          VAL R34
      244 CAPTURE                          VAL R15
      245 DUPCLOSURE                       R43 K64 [PROTO_15]
      246 CAPTURE                          VAL R1
      247 CAPTURE                          VAL R6
      248 CAPTURE                          VAL R36
      249 DUPCLOSURE                       R44 K65 [PROTO_16]
      250 CAPTURE                          VAL R25
      251 CAPTURE                          VAL R23
      252 CAPTURE                          VAL R24
      253 CAPTURE                          VAL R2
      254 CAPTURE                          VAL R29
      255 DUPCLOSURE                       R45 K66 [PROTO_17]
      256 CAPTURE                          VAL R23
      257 CAPTURE                          VAL R9
      258 CAPTURE                          VAL R33
      259 DUPCLOSURE                       R46 K67 [PROTO_18]
      260 CAPTURE                          VAL R23
      261 CAPTURE                          VAL R24
      262 CAPTURE                          VAL R2
      263 CAPTURE                          VAL R45
      264 CAPTURE                          VAL R29
      265 DUPCLOSURE                       R47 K68 [PROTO_19]
      266 CAPTURE                          VAL R12
      267 DUPCLOSURE                       R48 K69 [PROTO_21]
      268 CAPTURE                          VAL R10
      269 CAPTURE                          VAL R33
      270 DUPCLOSURE                       R49 K70 [PROTO_22]
      271 CAPTURE                          VAL R1
      272 CAPTURE                          VAL R16
      273 DUPCLOSURE                       R50 K71 [PROTO_23]
      274 CAPTURE                          VAL R1
      275 CAPTURE                          VAL R6
      276 CAPTURE                          VAL R36
      277 CAPTURE                          VAL R29
      278 DUPCLOSURE                       R51 K72 [PROTO_24]
      279 CAPTURE                          VAL R11
      280 CAPTURE                          VAL R1
      281 DUPCLOSURE                       R52 K73 [PROTO_26]
      282 CAPTURE                          VAL R11
      283 CAPTURE                          VAL R1
      284 CAPTURE                          VAL R4
      285 CAPTURE                          VAL R18
      286 CAPTURE                          VAL R29
      287 NEWTABLE                         R53 32 0
      289 SETTABLEKS                       R37 R53 K74 ["ROOT"]
      291 SETTABLEKS                       R38 R53 K75 ["HEADING"]
      293 SETTABLEKS                       R39 R53 K76 ["PARAGRAPH"]
      295 JUMPIFNOT                        R22 ; [+2]
      296 MOVE                             R54 R41
      297 JUMP                             ; [+1]
      298 MOVE                             R54 R40
      299 SETTABLEKS                       R54 R53 K77 ["CODE_BLOCK"]
      301 SETTABLEKS                       R44 R53 K78 ["STYLED_TEXT"]
      303 SETTABLEKS                       R45 R53 K79 ["TEXT"]
      305 JUMPIFNOT                        R25 ; [+2]
      306 LOADNIL                          R54
      307 JUMP                             ; [+1]
      308 MOVE                             R54 R46
      309 SETTABLEKS                       R54 R53 K80 ["INLINE_CODE"]
      311 SETTABLEKS                       R48 R53 K81 ["LINK"]
      313 SETTABLEKS                       R42 R53 K82 ["LIST"]
      315 SETTABLEKS                       R43 R53 K83 ["LIST_ITEM"]
      317 SETTABLEKS                       R49 R53 K84 ["DIVIDER"]
      319 JUMPIFNOT                        R25 ; [+2]
      320 LOADNIL                          R54
      321 JUMP                             ; [+1]
      322 MOVE                             R54 R49
      323 SETTABLEKS                       R54 R53 K85 ["DIVIDER_2"]
      325 SETTABLEKS                       R50 R53 K86 ["QUOTE"]
      327 SETTABLEKS                       R51 R53 K87 ["IMAGE"]
      329 SETTABLEKS                       R52 R53 K88 ["TAG"]
      331 SETTABLEKS                       R47 R53 K89 ["BREAK"]
      333 SETTABLEKS                       R47 R53 K90 ["LINE_BREAK"]
      335 SETTABLEKS                       R53 R32 K91 ["defaultRenderers"]
      337 DUPCLOSURE                       R53 K92 [PROTO_27]
      338 CAPTURE                          VAL R32
      339 CAPTURE                          VAL R2
      340 CAPTURE                          VAL R23
      341 CAPTURE                          VAL R26
      342 CAPTURE                          VAL R28
      343 CAPTURE                          VAL R27
      344 CAPTURE                          VAL R30
      345 CAPTURE                          VAL R35
      346 CAPTURE                          VAL R34
      347 SETTABLEKS                       R53 R32 K93 ["render"]
      349 RETURN                           R32 1
