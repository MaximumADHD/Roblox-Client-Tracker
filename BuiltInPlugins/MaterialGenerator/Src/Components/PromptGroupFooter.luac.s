PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+11]
        5 GETIMPORT                        R0 K3 [task.cancel]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["current"]
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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["Text"]
        8 NAMECALL                         R1 R0 K3 ["CopyToClipboard"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Text"]
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
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K4 ["current"]
       18 JUMPIFNOT                        R2 ; [+10]
       19 GETIMPORT                        R2 K7 [task.cancel]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K4 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 1
       14 LOADK                            R4 K2 ["PromptGroupFooter"]
       15 NAMECALL                         R2 R2 K3 ["use"]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K3 ["use"]
       21 CALL                             R3 0 1
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K3 ["use"]
       25 CALL                             R4 0 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K4 ["useState"]
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
       43 GETTABLEKS                       R8 R2 K8 ["ButtonSize"]
       45 GETTABLEKS                       R8 R8 K9 ["X"]
       47 GETTABLEKS                       R8 R8 K10 ["Offset"]
       49 MULK                             R10 R8 K11 [1]
       50 GETTABLEKS                       R12 R2 K13 ["ButtonSpacing"]
       52 MULK                             R11 R12 K12 [0]
       53 ADD                              R9 R10 R11
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R10 R10 K14 ["useCallback"]
       57 NEWCLOSURE                       R11 P1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 NEWTABLE                         R12 0 1
       64 GETTABLEKS                       R13 R0 K15 ["Text"]
       66 SETLIST                          R12 R13 1 [1]
       68 CALL                             R10 2 1
       69 GETUPVAL                         R11 0
       70 GETTABLEKS                       R11 R11 K16 ["createElement"]
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
      103 GETUPVAL                         R15 0
      104 GETTABLEKS                       R15 R15 K16 ["createElement"]
      106 GETUPVAL                         R16 5
      107 DUPTABLE                         R17 K42 [{["LayoutOrder"] = 1, ["Size"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextTruncate"], ["TextSelectable"] = False, ["TextWrapped"] = False, ["TextColor"]}]
      108 GETIMPORT                        R18 K45 [UDim2.new]
      110 LOADN                            R19 1
      111 MINUS                            R20 R9
      112 LOADN                            R21 1
      113 LOADN                            R22 0
      114 CALL                             R18 4 1
      115 SETTABLEKS                       R18 R17 K22 ["Size"]
      117 GETTABLEKS                       R19 R0 K15 ["Text"]
      119 ORK                              R18 R19 K46 [""]
      120 SETTABLEKS                       R18 R17 K15 ["Text"]
      122 GETIMPORT                        R18 K47 [Enum.TextXAlignment.Left]
      124 SETTABLEKS                       R18 R17 K35 ["TextXAlignment"]
      126 GETIMPORT                        R18 K49 [Enum.TextYAlignment.Center]
      128 SETTABLEKS                       R18 R17 K36 ["TextYAlignment"]
      130 GETIMPORT                        R18 K51 [Enum.TextTruncate.AtEnd]
      132 SETTABLEKS                       R18 R17 K37 ["TextTruncate"]
      134 GETTABLEKS                       R18 R2 K41 ["TextColor"]
      136 SETTABLEKS                       R18 R17 K41 ["TextColor"]
      138 CALL                             R15 2 1
      139 SETTABLEKS                       R15 R14 K31 ["PromptLabel"]
      141 GETUPVAL                         R15 0
      142 GETTABLEKS                       R15 R15 K16 ["createElement"]
      144 GETUPVAL                         R16 4
      145 DUPTABLE                         R17 K54 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2, ["Size"], ["Spacing"]}]
      146 GETIMPORT                        R18 K27 [Enum.HorizontalAlignment.Left]
      148 SETTABLEKS                       R18 R17 K18 ["HorizontalAlignment"]
      150 GETIMPORT                        R18 K30 [Enum.FillDirection.Horizontal]
      152 SETTABLEKS                       R18 R17 K19 ["Layout"]
      154 GETIMPORT                        R18 K45 [UDim2.new]
      156 LOADN                            R19 0
      157 MOVE                             R20 R9
      158 LOADN                            R21 1
      159 LOADN                            R22 0
      160 CALL                             R18 4 1
      161 SETTABLEKS                       R18 R17 K22 ["Size"]
      163 GETTABLEKS                       R18 R2 K13 ["ButtonSpacing"]
      165 SETTABLEKS                       R18 R17 K53 ["Spacing"]
      167 DUPTABLE                         R18 K56 [{"CopyPromptButton"}]
      168 GETUPVAL                         R19 0
      169 GETTABLEKS                       R19 R19 K16 ["createElement"]
      171 GETUPVAL                         R20 6
      172 DUPTABLE                         R21 K60 [{["Size"], ["Style"] = "RoundSubtle", ["Tooltip"], ["OnClick"]}]
      173 GETTABLEKS                       R22 R2 K8 ["ButtonSize"]
      175 SETTABLEKS                       R22 R21 K22 ["Size"]
      177 SETTABLEKS                       R7 R21 K58 ["Tooltip"]
      179 SETTABLEKS                       R10 R21 K59 ["OnClick"]
      181 DUPTABLE                         R22 K62 [{"Icon"}]
      182 GETUPVAL                         R23 0
      183 GETTABLEKS                       R23 R23 K16 ["createElement"]
      185 GETUPVAL                         R24 7
      186 DUPTABLE                         R25 K67 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["ImageColor3"], ["Image"], ["Position"], ["Size"]}]
      187 GETIMPORT                        R26 K69 [Vector2.new]
      189 LOADK                            R27 K70 [0.5]
      190 LOADK                            R28 K70 [0.5]
      191 CALL                             R26 2 1
      192 SETTABLEKS                       R26 R25 K63 ["AnchorPoint"]
      194 GETTABLEKS                       R26 R2 K71 ["ButtonColor"]
      196 SETTABLEKS                       R26 R25 K65 ["ImageColor3"]
      198 GETTABLEKS                       R26 R2 K72 ["CopyPromptButtonImage"]
      200 SETTABLEKS                       R26 R25 K66 ["Image"]
      202 GETIMPORT                        R26 K74 [UDim2.fromScale]
      204 LOADK                            R27 K70 [0.5]
      205 LOADK                            R28 K70 [0.5]
      206 CALL                             R26 2 1
      207 SETTABLEKS                       R26 R25 K21 ["Position"]
      209 GETTABLEKS                       R26 R2 K75 ["ButtonImageSize"]
      211 SETTABLEKS                       R26 R25 K22 ["Size"]
      213 CALL                             R23 2 1
      214 SETTABLEKS                       R23 R22 K61 ["Icon"]
      216 CALL                             R19 3 1
      217 SETTABLEKS                       R19 R18 K55 ["CopyPromptButton"]
      219 CALL                             R15 3 1
      220 SETTABLEKS                       R15 R14 K32 ["PromptGroupButtons"]
      222 CALL                             R11 3 -1
      223 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["MaterialFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R4 K12 ["Stylizer"]
       34 GETTABLEKS                       R7 R1 K13 ["UI"]
       36 GETTABLEKS                       R8 R7 K14 ["Button"]
       38 GETTABLEKS                       R9 R7 K15 ["Image"]
       40 GETTABLEKS                       R10 R7 K16 ["Pane"]
       42 GETTABLEKS                       R11 R7 K17 ["TextLabel"]
       44 GETTABLEKS                       R12 R2 K18 ["Context"]
       46 GETTABLEKS                       R12 R12 K19 ["StudioServices"]
       48 GETIMPORT                        R13 K5 [require]
       50 GETTABLEKS                       R14 R0 K20 ["Src"]
       52 GETTABLEKS                       R14 R14 K21 ["Resources"]
       54 GETTABLEKS                       R14 R14 K22 ["Theme"]
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
