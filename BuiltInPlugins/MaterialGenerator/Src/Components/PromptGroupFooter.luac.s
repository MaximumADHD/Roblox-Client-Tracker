PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+11]
        5 GETIMPORT                        R0 K3 [task.cancel]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["current"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["current"]
       15 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StudioService"]
        2 NAMECALL                         R0 R0 K1 ["getService"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["Text"]
        8 NAMECALL                         R1 R0 K3 ["CopyToClipboard"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Text"]
        3 JUMPIFNOTEQKS                    R0 K1 [""] ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K3 [pcall]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U0
       11 CALL                             R0 1 2
       12 GETUPVAL                         R2 2
       13 LOADB                            R3 1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R2 R3 K4 ["current"]
       18 JUMPIFNOT                        R2 ; [+10]
       19 GETIMPORT                        R2 K7 [task.cancel]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K4 ["current"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 3
       26 LOADNIL                          R3
       27 SETTABLEKS                       R3 R2 K4 ["current"]
       29 GETUPVAL                         R2 3
       30 GETIMPORT                        R3 K9 [task.delay]
       32 LOADN                            R4 1
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          UPVAL U2
       35 CALL                             R3 2 1
       36 SETTABLEKS                       R3 R2 K4 ["current"]
       38 JUMPIF                           R0 ; [+4]
       39 GETIMPORT                        R2 K11 [warn]
       41 MOVE                             R3 R1
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 1
       14 LOADK                            R4 K2 ["PromptGroupFooter"]
       15 NAMECALL                         R2 R2 K3 ["use"]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K3 ["use"]
       21 CALL                             R3 0 1
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R4 R5 K3 ["use"]
       25 CALL                             R4 0 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K4 ["useState"]
       29 LOADB                            R6 0
       30 CALL                             R5 1 2
       31 JUMPIFNOT                        R5 ; [+6]
       32 LOADK                            R9 K2 ["PromptGroupFooter"]
       33 LOADK                            R10 K5 ["CopyPromptCopied"]
       34 NAMECALL                         R7 R4 K6 ["getText"]
       36 CALL                             R7 3 1
       37 JUMP                             ; [+5]
       38 LOADK                            R9 K2 ["PromptGroupFooter"]
       39 LOADK                            R10 K7 ["CopyPrompt"]
       40 NAMECALL                         R7 R4 K6 ["getText"]
       42 CALL                             R7 3 1
       43 GETTABLEKS                       R10 R2 K8 ["ButtonSize"]
       45 GETTABLEKS                       R9 R10 K9 ["X"]
       47 GETTABLEKS                       R8 R9 K10 ["Offset"]
       49 MULK                             R10 R8 K11 [1]
       50 GETTABLEKS                       R12 R2 K13 ["ButtonSpacing"]
       52 MULK                             R11 R12 K12 [0]
       53 ADD                              R9 R10 R11
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R10 R11 K14 ["useCallback"]
       57 NEWCLOSURE                       R11 P1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 NEWTABLE                         R12 0 1
       64 GETTABLEKS                       R13 R0 K15 ["Text"]
       66 SETLIST                          R12 R13 1 [1]
       68 CALL                             R10 2 1
       69 GETUPVAL                         R12 0
       70 GETTABLEKS                       R11 R12 K16 ["createElement"]
       72 GETUPVAL                         R12 4
       73 DUPTABLE                         R13 K24 [{"BackgroundColor", "HorizontalAlignment", "Layout", "Padding", "Position", "Size", "Style"}]
       74 GETTABLEKS                       R14 R2 K17 ["BackgroundColor"]
       76 SETTABLEKS                       R14 R13 K17 ["BackgroundColor"]
       78 GETIMPORT                        R14 K27 [Enum.HorizontalAlignment.Left]
       80 SETTABLEKS                       R14 R13 K18 ["HorizontalAlignment"]
       82 GETIMPORT                        R14 K30 [Enum.FillDirection.Horizontal]
       84 SETTABLEKS                       R14 R13 K19 ["Layout"]
       86 GETTABLEKS                       R14 R2 K20 ["Padding"]
       88 SETTABLEKS                       R14 R13 K20 ["Padding"]
       90 GETTABLEKS                       R14 R0 K21 ["Position"]
       92 SETTABLEKS                       R14 R13 K21 ["Position"]
       94 GETTABLEKS                       R14 R0 K22 ["Size"]
       96 SETTABLEKS                       R14 R13 K22 ["Size"]
       98 GETTABLEKS                       R14 R2 K23 ["Style"]
      100 SETTABLEKS                       R14 R13 K23 ["Style"]
      102 DUPTABLE                         R14 K33 [{"PromptLabel", "PromptGroupButtons"}]
      103 GETUPVAL                         R16 0
      104 GETTABLEKS                       R15 R16 K16 ["createElement"]
      106 GETUPVAL                         R16 5
      107 DUPTABLE                         R17 K41 [{"LayoutOrder", "Size", "Text", "TextXAlignment", "TextYAlignment", "TextTruncate", "TextSelectable", "TextWrapped", "TextColor"}]
      108 LOADN                            R18 1
      109 SETTABLEKS                       R18 R17 K34 ["LayoutOrder"]
      111 GETIMPORT                        R18 K44 [UDim2.new]
      113 LOADN                            R19 1
      114 MINUS                            R20 R9
      115 LOADN                            R21 1
      116 LOADN                            R22 0
      117 CALL                             R18 4 1
      118 SETTABLEKS                       R18 R17 K22 ["Size"]
      120 GETTABLEKS                       R19 R0 K15 ["Text"]
      122 ORK                              R18 R19 K45 [""]
      123 SETTABLEKS                       R18 R17 K15 ["Text"]
      125 GETIMPORT                        R18 K46 [Enum.TextXAlignment.Left]
      127 SETTABLEKS                       R18 R17 K35 ["TextXAlignment"]
      129 GETIMPORT                        R18 K48 [Enum.TextYAlignment.Center]
      131 SETTABLEKS                       R18 R17 K36 ["TextYAlignment"]
      133 GETIMPORT                        R18 K50 [Enum.TextTruncate.AtEnd]
      135 SETTABLEKS                       R18 R17 K37 ["TextTruncate"]
      137 LOADB                            R18 0
      138 SETTABLEKS                       R18 R17 K38 ["TextSelectable"]
      140 LOADB                            R18 0
      141 SETTABLEKS                       R18 R17 K39 ["TextWrapped"]
      143 GETTABLEKS                       R18 R2 K40 ["TextColor"]
      145 SETTABLEKS                       R18 R17 K40 ["TextColor"]
      147 CALL                             R15 2 1
      148 SETTABLEKS                       R15 R14 K31 ["PromptLabel"]
      150 GETUPVAL                         R16 0
      151 GETTABLEKS                       R15 R16 K16 ["createElement"]
      153 GETUPVAL                         R16 4
      154 DUPTABLE                         R17 K52 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
      155 GETIMPORT                        R18 K27 [Enum.HorizontalAlignment.Left]
      157 SETTABLEKS                       R18 R17 K18 ["HorizontalAlignment"]
      159 GETIMPORT                        R18 K30 [Enum.FillDirection.Horizontal]
      161 SETTABLEKS                       R18 R17 K19 ["Layout"]
      163 LOADN                            R18 2
      164 SETTABLEKS                       R18 R17 K34 ["LayoutOrder"]
      166 GETIMPORT                        R18 K44 [UDim2.new]
      168 LOADN                            R19 0
      169 MOVE                             R20 R9
      170 LOADN                            R21 1
      171 LOADN                            R22 0
      172 CALL                             R18 4 1
      173 SETTABLEKS                       R18 R17 K22 ["Size"]
      175 GETTABLEKS                       R18 R2 K13 ["ButtonSpacing"]
      177 SETTABLEKS                       R18 R17 K51 ["Spacing"]
      179 DUPTABLE                         R18 K54 [{"CopyPromptButton"}]
      180 GETUPVAL                         R20 0
      181 GETTABLEKS                       R19 R20 K16 ["createElement"]
      183 GETUPVAL                         R20 6
      184 DUPTABLE                         R21 K57 [{"Size", "Style", "Tooltip", "OnClick"}]
      185 GETTABLEKS                       R22 R2 K8 ["ButtonSize"]
      187 SETTABLEKS                       R22 R21 K22 ["Size"]
      189 LOADK                            R22 K58 ["RoundSubtle"]
      190 SETTABLEKS                       R22 R21 K23 ["Style"]
      192 SETTABLEKS                       R7 R21 K55 ["Tooltip"]
      194 SETTABLEKS                       R10 R21 K56 ["OnClick"]
      196 DUPTABLE                         R22 K60 [{"Icon"}]
      197 GETUPVAL                         R24 0
      198 GETTABLEKS                       R23 R24 K16 ["createElement"]
      200 GETUPVAL                         R24 7
      201 DUPTABLE                         R25 K65 [{"AnchorPoint", "BackgroundTransparency", "ImageColor3", "Image", "Position", "Size"}]
      202 GETIMPORT                        R26 K67 [Vector2.new]
      204 LOADK                            R27 K68 [0.5]
      205 LOADK                            R28 K68 [0.5]
      206 CALL                             R26 2 1
      207 SETTABLEKS                       R26 R25 K61 ["AnchorPoint"]
      209 LOADN                            R26 1
      210 SETTABLEKS                       R26 R25 K62 ["BackgroundTransparency"]
      212 GETTABLEKS                       R26 R2 K69 ["ButtonColor"]
      214 SETTABLEKS                       R26 R25 K63 ["ImageColor3"]
      216 GETTABLEKS                       R26 R2 K70 ["CopyPromptButtonImage"]
      218 SETTABLEKS                       R26 R25 K64 ["Image"]
      220 GETIMPORT                        R26 K72 [UDim2.fromScale]
      222 LOADK                            R27 K68 [0.5]
      223 LOADK                            R28 K68 [0.5]
      224 CALL                             R26 2 1
      225 SETTABLEKS                       R26 R25 K21 ["Position"]
      227 GETTABLEKS                       R26 R2 K73 ["ButtonImageSize"]
      229 SETTABLEKS                       R26 R25 K22 ["Size"]
      231 CALL                             R23 2 1
      232 SETTABLEKS                       R23 R22 K59 ["Icon"]
      234 CALL                             R19 3 1
      235 SETTABLEKS                       R19 R18 K53 ["CopyPromptButton"]
      237 CALL                             R15 3 1
      238 SETTABLEKS                       R15 R14 K32 ["PromptGroupButtons"]
      240 CALL                             R11 3 -1
      241 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["MaterialFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R4 K12 ["Stylizer"]
       34 GETTABLEKS                       R7 R1 K13 ["UI"]
       36 GETTABLEKS                       R8 R7 K14 ["Button"]
       38 GETTABLEKS                       R9 R7 K15 ["Image"]
       40 GETTABLEKS                       R10 R7 K16 ["Pane"]
       42 GETTABLEKS                       R11 R7 K17 ["TextLabel"]
       44 GETTABLEKS                       R13 R2 K18 ["Context"]
       46 GETTABLEKS                       R12 R13 K19 ["StudioServices"]
       48 GETIMPORT                        R13 K5 [require]
       50 GETTABLEKS                       R16 R0 K20 ["Src"]
       52 GETTABLEKS                       R15 R16 K21 ["Resources"]
       54 GETTABLEKS                       R14 R15 K22 ["Theme"]
       56 CALL                             R13 1 1
       57 DUPCLOSURE                       R14 K23 [PROTO_5]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R9
       66 RETURN                           R14 1
