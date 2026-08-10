PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K3 [{[1] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
        5 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
        7 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
        9 DUPTABLE                         R5 K6 [{"Text", "Content"}]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R7 3
       12 DUPTABLE                         R8 K8 [{[1] = "size-full-0 auto-y text-title-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
       13 GETTABLEKS                       R9 R0 K9 ["Title"]
       15 SETTABLEKS                       R9 R8 K4 ["Text"]
       17 MOVE                             R9 R1
       18 CALL                             R9 0 1
       19 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R5 K4 ["Text"]
       24 GETUPVAL                         R6 1
       25 GETUPVAL                         R7 2
       26 DUPTABLE                         R8 K11 [{[1] = "size-full-0 auto-y", ["LayoutOrder"]}]
       27 MOVE                             R9 R1
       28 CALL                             R9 0 1
       29 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       31 GETTABLEKS                       R9 R0 K12 ["children"]
       33 CALL                             R6 3 1
       34 SETTABLEKS                       R6 R5 K5 ["Content"]
       36 CALL                             R2 3 -1
       37 RETURN                           R2 -1

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
       14 DUPTABLE                         R6 K9 [{["tag"] = "size-full-0 auto-y padding-small radius-small bg-shift-300", ["scroll"], ["LayoutOrder"]}]
       15 GETUPVAL                         R7 3
       16 SETTABLEKS                       R7 R6 K7 ["scroll"]
       18 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       20 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       22 DUPTABLE                         R7 K11 [{"Text"}]
       23 GETUPVAL                         R8 1
       24 LOADK                            R9 K12 ["TextBox"]
       25 DUPTABLE                         R10 K28 [{["TextEditable"] = False, ["ClearTextOnFocus"] = False, ["AutomaticSize"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["LineHeight"], ["Text"], ["FontFace"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       26 GETIMPORT                        R11 K31 [Enum.AutomaticSize.XY]
       28 SETTABLEKS                       R11 R10 K16 ["AutomaticSize"]
       30 GETTABLEKS                       R11 R3 K32 ["Color3"]
       32 SETTABLEKS                       R11 R10 K17 ["TextColor3"]
       34 GETTABLEKS                       R11 R3 K33 ["Transparency"]
       36 SETTABLEKS                       R11 R10 K18 ["TextTransparency"]
       38 GETIMPORT                        R11 K35 [Enum.TextXAlignment.Left]
       40 SETTABLEKS                       R11 R10 K19 ["TextXAlignment"]
       42 GETIMPORT                        R11 K37 [Enum.TextYAlignment.Top]
       44 SETTABLEKS                       R11 R10 K20 ["TextYAlignment"]
       46 GETTABLEKS                       R11 R2 K38 ["FontSize"]
       48 SETTABLEKS                       R11 R10 K21 ["TextSize"]
       50 GETTABLEKS                       R11 R2 K22 ["LineHeight"]
       52 SETTABLEKS                       R11 R10 K22 ["LineHeight"]
       54 GETTABLEKS                       R11 R0 K10 ["Text"]
       56 SETTABLEKS                       R11 R10 K10 ["Text"]
       58 GETUPVAL                         R11 4
       59 GETTABLEKS                       R11 R11 K39 ["CODE_FONT"]
       61 SETTABLEKS                       R11 R10 K23 ["FontFace"]
       63 CALL                             R8 2 1
       64 SETTABLEKS                       R8 R7 K10 ["Text"]
       66 CALL                             R4 3 -1
       67 RETURN                           R4 -1

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
