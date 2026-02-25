PROTO_0:
        0 JUMPIFNOTEQKN                    R2 K0 [1] ; [+7]
        2 FASTCALL1                        TOSTRING R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [tostring]
        6 CALL                             R3 1 1
        7 RETURN                           R3 1
        8 LOADK                            R4 K3 ["%*\n%*"]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R2
       11 NAMECALL                         R4 R4 K4 ["format"]
       13 CALL                             R4 3 1
       14 MOVE                             R3 R4
       15 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["List"]
        3 GETTABLEKS                       R1 R2 K1 ["reduce"]
        5 LOADK                            R4 K2 ["\n"]
        6 NAMECALL                         R2 R0 K3 ["split"]
        8 CALL                             R2 2 1
        9 DUPCLOSURE                       R3 K4 [PROTO_0]
       10 LOADK                            R4 K5 [""]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sourceColor"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["sourceColor"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["Color"]
       11 GETTABLEKS                       R2 R3 K2 ["Content"]
       13 GETTABLEKS                       R1 R2 K3 ["Default"]
       15 GETTABLEKS                       R0 R1 K4 ["Color3"]
       17 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["sourceColor"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["source"]
        7 RETURN                           R0 1
        8 GETIMPORT                        R0 K4 [table.concat]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K5 ["buildRichTextLines"]
       13 DUPTABLE                         R2 K7 [{"src"}]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K1 ["source"]
       17 SETTABLEKS                       R3 R2 K6 ["src"]
       19 CALL                             R1 1 1
       20 LOADK                            R2 K8 ["\n"]
       21 CALL                             R0 2 -1
       22 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NEWTABLE                         R4 0 2
        8 GETTABLEKS                       R5 R0 K0 ["sourceColor"]
       10 MOVE                             R6 R1
       11 SETLIST                          R4 R5 2 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R5 0 1
       20 GETTABLEKS                       R6 R0 K1 ["source"]
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R4 R5 K2 ["createElement"]
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R5 R6 K3 ["View"]
       31 DUPTABLE                         R6 K6 [{"tag", "LayoutOrder"}]
       32 LOADK                            R7 K7 ["size-full-0 auto-y bg-surface-200 gap-medium row radius-medium padding-medium"]
       33 SETTABLEKS                       R7 R6 K4 ["tag"]
       35 GETTABLEKS                       R7 R0 K8 ["layoutOrder"]
       37 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       39 DUPTABLE                         R7 K11 [{"LineNumbers", "SourceCodeWrapper"}]
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R8 R9 K2 ["createElement"]
       43 LOADK                            R9 K12 ["TextLabel"]
       44 DUPTABLE                         R10 K21 [{"LayoutOrder", "AutomaticSize", "Text", "TextSize", "LineHeight", "BackgroundTransparency", "Font", "TextColor3", "TextXAlignment"}]
       45 GETUPVAL                         R11 5
       46 CALL                             R11 0 1
       47 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       49 GETIMPORT                        R11 K24 [Enum.AutomaticSize.XY]
       51 SETTABLEKS                       R11 R10 K13 ["AutomaticSize"]
       53 GETUPVAL                         R13 6
       54 GETTABLEKS                       R12 R13 K25 ["List"]
       56 GETTABLEKS                       R11 R12 K26 ["reduce"]
       58 LOADK                            R14 K27 ["\n"]
       59 NAMECALL                         R12 R3 K28 ["split"]
       61 CALL                             R12 2 1
       62 DUPCLOSURE                       R13 K29 [PROTO_0]
       63 LOADK                            R14 K30 [""]
       64 CALL                             R11 3 1
       65 SETTABLEKS                       R11 R10 K14 ["Text"]
       67 GETTABLEKS                       R13 R1 K31 ["Typography"]
       69 GETTABLEKS                       R12 R13 K32 ["BodyMedium"]
       71 GETTABLEKS                       R11 R12 K33 ["FontSize"]
       73 SETTABLEKS                       R11 R10 K15 ["TextSize"]
       75 LOADN                            R11 1
       76 SETTABLEKS                       R11 R10 K16 ["LineHeight"]
       78 LOADN                            R11 1
       79 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
       81 GETIMPORT                        R11 K35 [Enum.Font.RobotoMono]
       83 SETTABLEKS                       R11 R10 K18 ["Font"]
       85 GETTABLEKS                       R14 R1 K36 ["Color"]
       87 GETTABLEKS                       R13 R14 K37 ["Content"]
       89 GETTABLEKS                       R12 R13 K38 ["Muted"]
       91 GETTABLEKS                       R11 R12 K39 ["Color3"]
       93 SETTABLEKS                       R11 R10 K19 ["TextColor3"]
       95 GETIMPORT                        R11 K41 [Enum.TextXAlignment.Right]
       97 SETTABLEKS                       R11 R10 K20 ["TextXAlignment"]
       99 CALL                             R8 2 1
      100 SETTABLEKS                       R8 R7 K9 ["LineNumbers"]
      102 GETUPVAL                         R9 3
      103 GETTABLEKS                       R8 R9 K2 ["createElement"]
      105 GETUPVAL                         R10 4
      106 GETTABLEKS                       R9 R10 K42 ["ScrollView"]
      108 DUPTABLE                         R10 K44 [{"tag", "scroll", "LayoutOrder"}]
      109 LOADK                            R11 K45 ["size-full-0 auto-y shrink"]
      110 SETTABLEKS                       R11 R10 K4 ["tag"]
      112 DUPTABLE                         R11 K50 [{"AutomaticSize", "AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "HorizontalScrollBarInset"}]
      113 GETIMPORT                        R12 K52 [Enum.AutomaticSize.Y]
      115 SETTABLEKS                       R12 R11 K13 ["AutomaticSize"]
      117 GETIMPORT                        R12 K24 [Enum.AutomaticSize.XY]
      119 SETTABLEKS                       R12 R11 K46 ["AutomaticCanvasSize"]
      121 GETIMPORT                        R12 K55 [UDim2.fromScale]
      123 LOADN                            R13 0
      124 LOADN                            R14 0
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K47 ["CanvasSize"]
      128 GETIMPORT                        R12 K57 [Enum.ScrollingDirection.X]
      130 SETTABLEKS                       R12 R11 K48 ["ScrollingDirection"]
      132 GETIMPORT                        R12 K60 [Enum.ScrollBarInset.Always]
      134 SETTABLEKS                       R12 R11 K49 ["HorizontalScrollBarInset"]
      136 SETTABLEKS                       R11 R10 K43 ["scroll"]
      138 GETUPVAL                         R11 5
      139 CALL                             R11 0 1
      140 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      142 DUPTABLE                         R11 K62 [{"SourceCode"}]
      143 GETUPVAL                         R13 3
      144 GETTABLEKS                       R12 R13 K2 ["createElement"]
      146 GETUPVAL                         R13 7
      147 DUPTABLE                         R14 K65 [{"RichText", "LayoutOrder", "AutomaticSize", "Text", "TextColor3", "TextSize", "TextWrapped", "LineHeight", "Font"}]
      148 LOADB                            R15 1
      149 SETTABLEKS                       R15 R14 K63 ["RichText"]
      151 GETUPVAL                         R15 5
      152 CALL                             R15 0 1
      153 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      155 GETIMPORT                        R15 K24 [Enum.AutomaticSize.XY]
      157 SETTABLEKS                       R15 R14 K13 ["AutomaticSize"]
      159 SETTABLEKS                       R3 R14 K14 ["Text"]
      161 SETTABLEKS                       R2 R14 K19 ["TextColor3"]
      163 GETTABLEKS                       R17 R1 K31 ["Typography"]
      165 GETTABLEKS                       R16 R17 K32 ["BodyMedium"]
      167 GETTABLEKS                       R15 R16 K33 ["FontSize"]
      169 SETTABLEKS                       R15 R14 K15 ["TextSize"]
      171 LOADB                            R15 0
      172 SETTABLEKS                       R15 R14 K64 ["TextWrapped"]
      174 LOADN                            R15 1
      175 SETTABLEKS                       R15 R14 K16 ["LineHeight"]
      177 GETIMPORT                        R15 K35 [Enum.Font.RobotoMono]
      179 SETTABLEKS                       R15 R14 K18 ["Font"]
      181 CALL                             R12 2 1
      182 SETTABLEKS                       R12 R11 K61 ["SourceCode"]
      184 CALL                             R8 3 1
      185 SETTABLEKS                       R8 R7 K10 ["SourceCodeWrapper"]
      187 CALL                             R4 3 -1
      188 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["RobloxPackages"]
       11 GETTABLEKS                       R1 R2 K6 ["Foundation"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["Packages"]
       24 GETTABLEKS                       R2 R3 K8 ["Highlighter"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R7 K3 [script]
       31 GETTABLEKS                       R6 R7 K4 ["Parent"]
       33 GETTABLEKS                       R5 R6 K4 ["Parent"]
       35 GETTABLEKS                       R4 R5 K7 ["Packages"]
       37 GETTABLEKS                       R3 R4 K9 ["React"]
       39 CALL                             R2 1 1
       40 GETIMPORT                        R3 K1 [require]
       42 GETIMPORT                        R8 K3 [script]
       44 GETTABLEKS                       R7 R8 K4 ["Parent"]
       46 GETTABLEKS                       R6 R7 K4 ["Parent"]
       48 GETTABLEKS                       R5 R6 K7 ["Packages"]
       50 GETTABLEKS                       R4 R5 K10 ["Sift"]
       52 CALL                             R3 1 1
       53 GETIMPORT                        R4 K1 [require]
       55 GETIMPORT                        R7 K3 [script]
       57 GETTABLEKS                       R6 R7 K4 ["Parent"]
       59 GETTABLEKS                       R5 R6 K11 ["SelectableTextLabel"]
       61 CALL                             R4 1 1
       62 GETIMPORT                        R5 K1 [require]
       64 GETIMPORT                        R8 K3 [script]
       66 GETTABLEKS                       R7 R8 K4 ["Parent"]
       68 GETTABLEKS                       R6 R7 K12 ["nextLayoutOrder"]
       70 CALL                             R5 1 1
       71 GETTABLEKS                       R6 R2 K13 ["useMemo"]
       73 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       75 GETTABLEKS                       R7 R8 K15 ["useTokens"]
       77 DUPCLOSURE                       R8 K16 [PROTO_1]
       78 CAPTURE                          VAL R3
       79 DUPCLOSURE                       R9 K17 [PROTO_4]
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R4
       88 RETURN                           R9 1
