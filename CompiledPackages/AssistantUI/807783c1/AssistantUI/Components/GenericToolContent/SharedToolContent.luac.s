PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K2 [{"tag", "LayoutOrder"}]
        5 LOADK                            R5 K3 ["col size-full-0 auto-y gap-small"]
        6 SETTABLEKS                       R5 R4 K0 ["tag"]
        8 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
       10 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       12 DUPTABLE                         R5 K6 [{"Text", "Content"}]
       13 GETUPVAL                         R6 1
       14 GETUPVAL                         R7 3
       15 DUPTABLE                         R8 K7 [{"tag", "Text", "LayoutOrder"}]
       16 LOADK                            R9 K8 ["size-full-0 auto-y text-title-small text-align-x-left"]
       17 SETTABLEKS                       R9 R8 K0 ["tag"]
       19 GETTABLEKS                       R9 R0 K9 ["Title"]
       21 SETTABLEKS                       R9 R8 K4 ["Text"]
       23 MOVE                             R9 R1
       24 CALL                             R9 0 1
       25 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K4 ["Text"]
       30 GETUPVAL                         R6 1
       31 GETUPVAL                         R7 2
       32 DUPTABLE                         R8 K2 [{"tag", "LayoutOrder"}]
       33 LOADK                            R9 K10 ["size-full-0 auto-y"]
       34 SETTABLEKS                       R9 R8 K0 ["tag"]
       36 MOVE                             R9 R1
       37 CALL                             R9 0 1
       38 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       40 GETTABLEKS                       R9 R0 K11 ["children"]
       42 CALL                             R6 3 1
       43 SETTABLEKS                       R6 R5 K5 ["Content"]
       45 CALL                             R2 3 -1
       46 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Typography"]
        4 GETTABLEKS                       R2 R2 K1 ["BodySmall"]
        6 GETTABLEKS                       R3 R1 K2 ["Color"]
        8 GETTABLEKS                       R3 R3 K3 ["Content"]
       10 GETTABLEKS                       R3 R3 K4 ["Default"]
       12 GETUPVAL                         R4 1
       13 GETUPVAL                         R5 2
       14 DUPTABLE                         R6 K8 [{"tag", "scroll", "LayoutOrder"}]
       15 LOADK                            R7 K9 ["size-full-0 auto-y bg-shift-300 padding-small radius-small"]
       16 SETTABLEKS                       R7 R6 K5 ["tag"]
       18 GETUPVAL                         R7 3
       19 SETTABLEKS                       R7 R6 K6 ["scroll"]
       21 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       23 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       25 DUPTABLE                         R7 K11 [{"Text"}]
       26 GETUPVAL                         R8 1
       27 LOADK                            R9 K12 ["TextBox"]
       28 DUPTABLE                         R10 K25 [{"TextEditable", "ClearTextOnFocus", "AutomaticSize", "TextColor3", "TextTransparency", "TextXAlignment", "TextYAlignment", "TextSize", "LineHeight", "Text", "FontFace", "BackgroundTransparency", "BorderSizePixel"}]
       29 LOADB                            R11 0
       30 SETTABLEKS                       R11 R10 K13 ["TextEditable"]
       32 LOADB                            R11 0
       33 SETTABLEKS                       R11 R10 K14 ["ClearTextOnFocus"]
       35 GETIMPORT                        R11 K28 [Enum.AutomaticSize.XY]
       37 SETTABLEKS                       R11 R10 K15 ["AutomaticSize"]
       39 GETTABLEKS                       R11 R3 K29 ["Color3"]
       41 SETTABLEKS                       R11 R10 K16 ["TextColor3"]
       43 GETTABLEKS                       R11 R3 K30 ["Transparency"]
       45 SETTABLEKS                       R11 R10 K17 ["TextTransparency"]
       47 GETIMPORT                        R11 K32 [Enum.TextXAlignment.Left]
       49 SETTABLEKS                       R11 R10 K18 ["TextXAlignment"]
       51 GETIMPORT                        R11 K34 [Enum.TextYAlignment.Top]
       53 SETTABLEKS                       R11 R10 K19 ["TextYAlignment"]
       55 GETTABLEKS                       R11 R2 K35 ["FontSize"]
       57 SETTABLEKS                       R11 R10 K20 ["TextSize"]
       59 GETTABLEKS                       R11 R2 K21 ["LineHeight"]
       61 SETTABLEKS                       R11 R10 K21 ["LineHeight"]
       63 GETTABLEKS                       R11 R0 K10 ["Text"]
       65 SETTABLEKS                       R11 R10 K10 ["Text"]
       67 GETUPVAL                         R11 4
       68 GETTABLEKS                       R11 R11 K36 ["CODE_FONT"]
       70 SETTABLEKS                       R11 R10 K22 ["FontFace"]
       72 LOADN                            R11 1
       73 SETTABLEKS                       R11 R10 K23 ["BackgroundTransparency"]
       75 LOADN                            R11 0
       76 SETTABLEKS                       R11 R10 K24 ["BorderSizePixel"]
       78 CALL                             R8 2 1
       79 SETTABLEKS                       R8 R7 K10 ["Text"]
       81 CALL                             R4 3 -1
       82 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Types"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R1 K11 ["ScrollView"]
       35 GETTABLEKS                       R6 R1 K12 ["Enums"]
       37 GETTABLEKS                       R6 R6 K13 ["Visibility"]
       39 GETTABLEKS                       R7 R1 K14 ["View"]
       41 GETTABLEKS                       R8 R1 K15 ["Text"]
       43 GETTABLEKS                       R9 R3 K16 ["createNextOrder"]
       45 GETTABLEKS                       R10 R1 K17 ["Hooks"]
       47 GETTABLEKS                       R10 R10 K18 ["useTokens"]
       49 GETTABLEKS                       R11 R2 K19 ["createElement"]
       51 DUPTABLE                         R12 K26 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
       52 GETIMPORT                        R13 K29 [UDim2.fromOffset]
       54 LOADN                            R14 0
       55 LOADN                            R15 0
       56 CALL                             R13 2 1
       57 SETTABLEKS                       R13 R12 K20 ["CanvasSize"]
       59 GETIMPORT                        R13 K32 [Enum.AutomaticSize.Y]
       61 SETTABLEKS                       R13 R12 K21 ["AutomaticSize"]
       63 GETIMPORT                        R13 K34 [Enum.AutomaticSize.X]
       65 SETTABLEKS                       R13 R12 K22 ["AutomaticCanvasSize"]
       67 GETIMPORT                        R13 K35 [Enum.ScrollingDirection.X]
       69 SETTABLEKS                       R13 R12 K23 ["ScrollingDirection"]
       71 GETTABLEKS                       R13 R6 K36 ["Auto"]
       73 SETTABLEKS                       R13 R12 K24 ["scrollBarVisibility"]
       75 GETIMPORT                        R13 K39 [Enum.ScrollBarInset.Always]
       77 SETTABLEKS                       R13 R12 K25 ["HorizontalScrollBarInset"]
       79 DUPCLOSURE                       R13 K40 [PROTO_0]
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 DUPCLOSURE                       R14 K41 [PROTO_1]
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R4
       90 DUPTABLE                         R15 K44 [{"ToolContainer", "ToolText"}]
       91 SETTABLEKS                       R13 R15 K42 ["ToolContainer"]
       93 GETTABLEKS                       R16 R2 K45 ["memo"]
       95 MOVE                             R17 R14
       96 CALL                             R16 1 1
       97 SETTABLEKS                       R16 R15 K43 ["ToolText"]
       99 RETURN                           R15 1
