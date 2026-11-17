PROTO_0:
        0 LOADN                            R3 1
        1 LOADN                            R4 4
        2 NAMECALL                         R1 R0 K0 ["sub"]
        4 CALL                             R1 3 1
        5 JUMPIFNOTEQKS                    R1 K1 ["http"] ; [+6]
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["openLink"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["text"]
        3 JUMPIFNOTEQKS                    R2 K1 ["Step"] ; [+7]
        5 GETTABLEKS                       R2 R0 K2 ["name"]
        7 JUMPIFEQKS                       R2 K3 ["TAG"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_1]
        3 CALL                             R1 2 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R8 R7 K1 ["index"]
       12 JUMPIFNOT                        R8 ; [+3]
       13 GETTABLEKS                       R8 R7 K1 ["index"]
       15 SETTABLE                         R6 R2 R8
       16 FORGLOOP                         R3 2 ; [-7]
       18 RETURN                           R2 1

PROTO_3:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["text"]
        3 JUMPIFNOTEQKS                    R2 K1 ["Step"] ; [+7]
        5 GETTABLEKS                       R2 R0 K2 ["name"]
        7 JUMPIFEQKS                       R2 K3 ["TAG"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["index"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["attributes"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R4 R1 K0 ["index"]
       10 GETTABLE                         R2 R3 R4
       11 JUMPIFNOTEQKB                    R2 TRUE ; [+5]
       13 GETTABLEKS                       R2 R1 K0 ["index"]
       15 LOADB                            R3 1
       16 RETURN                           R2 2
       17 GETTABLEKS                       R2 R1 K0 ["index"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R4 R1 K1 ["attributes"]
       22 CALL                             R3 1 -1
       23 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 DUPCLOSURE                       R5 K0 [PROTO_3]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["collect"]
        7 MOVE                             R5 R3
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R4 2 1
       12 MOVE                             R5 R2
       13 MOVE                             R6 R4
       14 CALL                             R5 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R0 R1 K0 ["current"]
        9 GETUPVAL                         R1 3
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 0
        9 GETIMPORT                        R0 K3 [task.wait]
       11 LOADK                            R1 K4 [0.5]
       12 CALL                             R0 1 0
       13 JUMPBACK                         ; [-14]
       14 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 GETIMPORT                        R0 K3 [task.defer]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U3
       14 CALL                             R0 1 1
       15 NEWCLOSURE                       R1 P1
       16 CAPTURE                          VAL R0
       17 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"stepNumbers", "stepCompletions"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["stepNumbers"]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K1 ["stepCompletions"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["ast"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["Hooks"]
       12 GETTABLEKS                       R3 R3 K3 ["useTokens"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 2
       16 JUMPIFNOT                        R5 ; [+3]
       17 GETUPVAL                         R4 2
       18 CALL                             R4 0 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R4
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R7 0 1
       29 MOVE                             R8 R1
       30 SETLIST                          R7 R8 1 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K5 ["useState"]
       36 NEWTABLE                         R7 0 0
       38 CALL                             R6 1 2
       39 GETUPVAL                         R8 3
       40 GETTABLEKS                       R8 R8 K6 ["useRef"]
       42 MOVE                             R9 R6
       43 CALL                             R8 1 1
       44 GETUPVAL                         R9 3
       45 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       47 NEWCLOSURE                       R10 P1
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R6
       50 NEWTABLE                         R11 0 1
       52 MOVE                             R12 R6
       53 SETLIST                          R11 R12 1 [1]
       55 CALL                             R9 2 0
       56 GETUPVAL                         R9 3
       57 GETTABLEKS                       R9 R9 K6 ["useRef"]
       59 MOVE                             R10 R1
       60 CALL                             R9 1 1
       61 GETUPVAL                         R10 3
       62 GETTABLEKS                       R10 R10 K7 ["useEffect"]
       64 NEWCLOSURE                       R11 P2
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R7
       69 NEWTABLE                         R12 0 1
       71 MOVE                             R13 R1
       72 SETLIST                          R12 R13 1 [1]
       74 CALL                             R10 2 0
       75 GETUPVAL                         R10 3
       76 GETTABLEKS                       R10 R10 K7 ["useEffect"]
       78 NEWCLOSURE                       R11 P3
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 NEWTABLE                         R12 0 0
       86 CALL                             R10 2 0
       87 GETUPVAL                         R10 3
       88 GETTABLEKS                       R10 R10 K4 ["useMemo"]
       90 NEWCLOSURE                       R11 P4
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R6
       94 NEWTABLE                         R12 0 2
       96 MOVE                             R13 R5
       97 MOVE                             R14 R6
       98 SETLIST                          R12 R13 2 [1]
      100 CALL                             R10 2 1
      101 GETUPVAL                         R11 3
      102 GETTABLEKS                       R11 R11 K8 ["createElement"]
      104 GETUPVAL                         R12 7
      105 DUPTABLE                         R13 K16 [{"Ast", "Renderers", "ColorScheme", "LinkCallback", "Fallback", "WrapperProps", "MarkdownRendererProps"}]
      106 SETTABLEKS                       R1 R13 K9 ["Ast"]
      108 SETTABLEKS                       R10 R13 K10 ["Renderers"]
      110 SETTABLEKS                       R4 R13 K11 ["ColorScheme"]
      112 GETTABLEKS                       R14 R0 K17 ["linkCallback"]
      114 JUMPIF                           R14 ; [+1]
      115 GETUPVAL                         R14 8
      116 SETTABLEKS                       R14 R13 K12 ["LinkCallback"]
      118 GETUPVAL                         R14 3
      119 GETTABLEKS                       R14 R14 K8 ["createElement"]
      121 GETUPVAL                         R15 9
      122 DUPTABLE                         R16 K19 [{"text"}]
      123 LOADK                            R19 K20 ["Plugin"]
      124 LOADK                            R20 K21 ["MarkdownFailure"]
      125 NAMECALL                         R17 R2 K22 ["getText"]
      127 CALL                             R17 3 1
      128 SETTABLEKS                       R17 R16 K18 ["text"]
      130 CALL                             R14 2 1
      131 SETTABLEKS                       R14 R13 K13 ["Fallback"]
      133 DUPTABLE                         R14 K28 [{"AnchorPoint", "LayoutOrder", "Position", "Visible", "ZIndex"}]
      134 GETTABLEKS                       R15 R0 K23 ["AnchorPoint"]
      136 SETTABLEKS                       R15 R14 K23 ["AnchorPoint"]
      138 GETTABLEKS                       R15 R0 K24 ["LayoutOrder"]
      140 SETTABLEKS                       R15 R14 K24 ["LayoutOrder"]
      142 GETTABLEKS                       R15 R0 K25 ["Position"]
      144 SETTABLEKS                       R15 R14 K25 ["Position"]
      146 GETTABLEKS                       R15 R0 K26 ["Visible"]
      148 SETTABLEKS                       R15 R14 K26 ["Visible"]
      150 GETTABLEKS                       R15 R0 K27 ["ZIndex"]
      152 SETTABLEKS                       R15 R14 K27 ["ZIndex"]
      154 SETTABLEKS                       R14 R13 K14 ["WrapperProps"]
      156 DUPTABLE                         R14 K33 [{"codeSettings", "textStyles", "headerStyles", "imageStyles"}]
      157 DUPTABLE                         R15 K37 [{["showLineNumbers"] = True, ["showCopyButton"] = True}]
      158 SETTABLEKS                       R15 R14 K29 ["codeSettings"]
      160 DUPTABLE                         R15 K40 [{"font", "textSize"}]
      161 GETIMPORT                        R16 K44 [Enum.Font.BuilderSans]
      163 SETTABLEKS                       R16 R15 K38 ["font"]
      165 GETTABLEKS                       R16 R3 K45 ["FontSize"]
      167 GETTABLEKS                       R16 R16 K46 ["FontSize_350"]
      169 SETTABLEKS                       R16 R15 K39 ["textSize"]
      171 SETTABLEKS                       R15 R14 K30 ["textStyles"]
      173 NEWTABLE                         R15 0 4
      175 DUPTABLE                         R16 K40 [{"font", "textSize"}]
      176 GETIMPORT                        R17 K48 [Enum.Font.BuilderSansBold]
      178 SETTABLEKS                       R17 R16 K38 ["font"]
      180 GETTABLEKS                       R17 R3 K45 ["FontSize"]
      182 GETTABLEKS                       R17 R17 K49 ["FontSize_700"]
      184 SETTABLEKS                       R17 R16 K39 ["textSize"]
      186 SETTABLEN                        R16 R15 1
      187 DUPTABLE                         R16 K40 [{"font", "textSize"}]
      188 GETIMPORT                        R17 K48 [Enum.Font.BuilderSansBold]
      190 SETTABLEKS                       R17 R16 K38 ["font"]
      192 GETTABLEKS                       R17 R3 K45 ["FontSize"]
      194 GETTABLEKS                       R17 R17 K50 ["FontSize_600"]
      196 SETTABLEKS                       R17 R16 K39 ["textSize"]
      198 SETTABLEN                        R16 R15 2
      199 DUPTABLE                         R16 K40 [{"font", "textSize"}]
      200 GETIMPORT                        R17 K48 [Enum.Font.BuilderSansBold]
      202 SETTABLEKS                       R17 R16 K38 ["font"]
      204 GETTABLEKS                       R17 R3 K45 ["FontSize"]
      206 GETTABLEKS                       R17 R17 K51 ["FontSize_500"]
      208 SETTABLEKS                       R17 R16 K39 ["textSize"]
      210 SETTABLEN                        R16 R15 3
      211 DUPTABLE                         R16 K40 [{"font", "textSize"}]
      212 GETIMPORT                        R17 K53 [Enum.Font.BuilderSansMedium]
      214 SETTABLEKS                       R17 R16 K38 ["font"]
      216 GETTABLEKS                       R17 R3 K45 ["FontSize"]
      218 GETTABLEKS                       R17 R17 K54 ["FontSize_400"]
      220 SETTABLEKS                       R17 R16 K39 ["textSize"]
      222 SETTABLEN                        R16 R15 4
      223 SETTABLEKS                       R15 R14 K31 ["headerStyles"]
      225 DUPTABLE                         R15 K61 [{["size"], ["scaleType"], ["backgroundColor3"], ["backgroundTransparency"], ["tags"] = "X-Corner"}]
      226 GETIMPORT                        R16 K64 [UDim2.new]
      228 LOADN                            R17 1
      229 LOADN                            R18 0
      230 LOADN                            R19 0
      231 LOADN                            R20 200
      232 CALL                             R16 4 1
      233 SETTABLEKS                       R16 R15 K55 ["size"]
      235 GETIMPORT                        R16 K67 [Enum.ScaleType.Fit]
      237 SETTABLEKS                       R16 R15 K56 ["scaleType"]
      239 GETTABLEKS                       R16 R3 K68 ["Color"]
      241 GETTABLEKS                       R16 R16 K69 ["Surface"]
      243 GETTABLEKS                       R16 R16 K70 ["Surface_0"]
      245 GETTABLEKS                       R16 R16 K71 ["Color3"]
      247 SETTABLEKS                       R16 R15 K57 ["backgroundColor3"]
      249 GETTABLEKS                       R16 R3 K68 ["Color"]
      251 GETTABLEKS                       R16 R16 K69 ["Surface"]
      253 GETTABLEKS                       R16 R16 K70 ["Surface_0"]
      255 GETTABLEKS                       R16 R16 K72 ["Transparency"]
      257 SETTABLEKS                       R16 R15 K58 ["backgroundTransparency"]
      259 SETTABLEKS                       R15 R14 K32 ["imageStyles"]
      261 SETTABLEKS                       R14 R13 K15 ["MarkdownRendererProps"]
      263 CALL                             R11 2 -1
      264 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Packages"]
       39 GETTABLEKS                       R6 R6 K12 ["Dash"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K14 ["Localization"]
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Src"]
       50 GETTABLEKS                       R9 R9 K15 ["Util"]
       52 GETTABLEKS                       R9 R9 K16 ["Services"]
       54 CALL                             R8 1 1
       55 GETTABLEKS                       R9 R8 K17 ["StartPageService"]
       57 GETTABLEKS                       R10 R3 K18 ["UI"]
       59 GETTABLEKS                       R10 R10 K19 ["MarkdownViewer"]
       61 GETTABLEKS                       R11 R3 K18 ["UI"]
       63 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       65 GETTABLEKS                       R11 R11 K21 ["useStudioThemeColorsForHighlighter"]
       67 GETTABLEKS                       R12 R4 K22 ["Text"]
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R14 R0 K6 ["Src"]
       73 GETTABLEKS                       R14 R14 K15 ["Util"]
       75 GETTABLEKS                       R14 R14 K23 ["getMarkdownRenderers"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K5 [require]
       80 GETTABLEKS                       R15 R0 K6 ["Src"]
       82 GETTABLEKS                       R15 R15 K15 ["Util"]
       84 GETTABLEKS                       R15 R15 K24 ["findNodes"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K5 [require]
       89 GETTABLEKS                       R16 R0 K6 ["Src"]
       91 GETTABLEKS                       R16 R16 K15 ["Util"]
       93 GETTABLEKS                       R16 R16 K25 ["isStepComplete"]
       95 CALL                             R15 1 1
       96 DUPCLOSURE                       R16 K26 [PROTO_0]
       97 CAPTURE                          VAL R9
       98 DUPCLOSURE                       R17 K27 [PROTO_2]
       99 CAPTURE                          VAL R14
      100 DUPCLOSURE                       R18 K28 [PROTO_5]
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R15
      104 DUPCLOSURE                       R19 K29 [PROTO_13]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R17
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R12
      115 RETURN                           R19 1
