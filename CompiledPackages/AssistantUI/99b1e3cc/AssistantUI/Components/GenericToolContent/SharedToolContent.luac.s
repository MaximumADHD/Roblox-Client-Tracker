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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Text"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Typography"]
        4 GETTABLEKS                       R2 R2 K1 ["BodySmall"]
        6 GETTABLEKS                       R3 R1 K2 ["Color"]
        8 GETTABLEKS                       R3 R3 K3 ["Content"]
       10 GETTABLEKS                       R3 R3 K4 ["Default"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R6 0 1
       20 GETTABLEKS                       R7 R0 K6 ["Text"]
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 3
       26 GETUPVAL                         R6 4
       27 DUPTABLE                         R7 K11 [{["tag"] = "size-full-0 auto-y padding-small radius-small bg-shift-300", ["scroll"], ["LayoutOrder"]}]
       28 GETUPVAL                         R8 5
       29 SETTABLEKS                       R8 R7 K9 ["scroll"]
       31 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       33 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       35 DUPTABLE                         R8 K12 [{"Text"}]
       36 GETUPVAL                         R9 3
       37 LOADK                            R10 K13 ["TextBox"]
       38 DUPTABLE                         R11 K29 [{["TextEditable"] = False, ["ClearTextOnFocus"] = False, ["AutomaticSize"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["LineHeight"], ["Text"], ["FontFace"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       39 GETIMPORT                        R12 K32 [Enum.AutomaticSize.XY]
       41 SETTABLEKS                       R12 R11 K17 ["AutomaticSize"]
       43 GETTABLEKS                       R12 R3 K33 ["Color3"]
       45 SETTABLEKS                       R12 R11 K18 ["TextColor3"]
       47 GETTABLEKS                       R12 R3 K34 ["Transparency"]
       49 SETTABLEKS                       R12 R11 K19 ["TextTransparency"]
       51 GETIMPORT                        R12 K36 [Enum.TextXAlignment.Left]
       53 SETTABLEKS                       R12 R11 K20 ["TextXAlignment"]
       55 GETIMPORT                        R12 K38 [Enum.TextYAlignment.Top]
       57 SETTABLEKS                       R12 R11 K21 ["TextYAlignment"]
       59 GETTABLEKS                       R12 R2 K39 ["FontSize"]
       61 SETTABLEKS                       R12 R11 K22 ["TextSize"]
       63 GETTABLEKS                       R12 R2 K23 ["LineHeight"]
       65 SETTABLEKS                       R12 R11 K23 ["LineHeight"]
       67 SETTABLEKS                       R4 R11 K6 ["Text"]
       69 GETUPVAL                         R12 6
       70 GETTABLEKS                       R12 R12 K40 ["CODE_FONT"]
       72 SETTABLEKS                       R12 R11 K24 ["FontFace"]
       74 CALL                             R9 2 1
       75 SETTABLEKS                       R9 R8 K6 ["Text"]
       77 CALL                             R5 3 -1
       78 RETURN                           R5 -1

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
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Util"]
       37 GETTABLEKS                       R6 R6 K12 ["capDisplayText"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R1 K13 ["ScrollView"]
       42 GETTABLEKS                       R7 R1 K14 ["Enums"]
       44 GETTABLEKS                       R7 R7 K15 ["Visibility"]
       46 GETTABLEKS                       R8 R1 K16 ["View"]
       48 GETTABLEKS                       R9 R1 K17 ["Text"]
       50 GETTABLEKS                       R10 R3 K18 ["createNextOrder"]
       52 GETTABLEKS                       R11 R1 K19 ["Hooks"]
       54 GETTABLEKS                       R11 R11 K20 ["useTokens"]
       56 GETTABLEKS                       R12 R2 K21 ["createElement"]
       58 DUPTABLE                         R13 K28 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
       59 GETIMPORT                        R14 K31 [UDim2.fromOffset]
       61 LOADN                            R15 0
       62 LOADN                            R16 0
       63 CALL                             R14 2 1
       64 SETTABLEKS                       R14 R13 K22 ["CanvasSize"]
       66 GETIMPORT                        R14 K34 [Enum.AutomaticSize.Y]
       68 SETTABLEKS                       R14 R13 K23 ["AutomaticSize"]
       70 GETIMPORT                        R14 K36 [Enum.AutomaticSize.X]
       72 SETTABLEKS                       R14 R13 K24 ["AutomaticCanvasSize"]
       74 GETIMPORT                        R14 K37 [Enum.ScrollingDirection.X]
       76 SETTABLEKS                       R14 R13 K25 ["ScrollingDirection"]
       78 GETTABLEKS                       R14 R7 K38 ["Auto"]
       80 SETTABLEKS                       R14 R13 K26 ["scrollBarVisibility"]
       82 GETIMPORT                        R14 K41 [Enum.ScrollBarInset.Always]
       84 SETTABLEKS                       R14 R13 K27 ["HorizontalScrollBarInset"]
       86 DUPCLOSURE                       R14 K42 [PROTO_0]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R9
       91 DUPCLOSURE                       R15 K43 [PROTO_2]
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R4
       99 DUPTABLE                         R16 K46 [{"ToolContainer", "ToolText"}]
      100 SETTABLEKS                       R14 R16 K44 ["ToolContainer"]
      102 GETTABLEKS                       R17 R2 K47 ["memo"]
      104 MOVE                             R18 R15
      105 CALL                             R17 1 1
      106 SETTABLEKS                       R17 R16 K45 ["ToolText"]
      108 RETURN                           R16 1
