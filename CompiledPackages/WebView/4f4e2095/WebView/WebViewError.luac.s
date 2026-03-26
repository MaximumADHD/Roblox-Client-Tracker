PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onWebViewRetryShown"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["analyticsContext"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K1 ["props"]
       11 GETTABLEKS                       R3 R4 K3 ["reason"]
       13 GETTABLEKS                       R4 R0 K4 ["AbsoluteSize"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnRetryClicked"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["props"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K2 ["createElement"]
       12 GETUPVAL                         R5 3
       13 NEWTABLE                         R6 8 0
       15 GETIMPORT                        R7 K4 [UDim2.new]
       17 LOADN                            R8 0
       18 LOADN                            R9 0
       19 LOADN                            R10 0
       20 LOADN                            R11 0
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K5 ["Position"]
       24 GETIMPORT                        R7 K4 [UDim2.new]
       26 LOADN                            R8 1
       27 LOADN                            R9 0
       28 LOADN                            R10 1
       29 LOADN                            R11 0
       30 CALL                             R7 4 1
       31 SETTABLEKS                       R7 R6 K6 ["Size"]
       33 LOADN                            R7 8
       34 SETTABLEKS                       R7 R6 K7 ["Spacing"]
       36 GETIMPORT                        R7 K11 [Enum.HorizontalAlignment.Center]
       38 SETTABLEKS                       R7 R6 K9 ["HorizontalAlignment"]
       40 GETIMPORT                        R7 K13 [Enum.VerticalAlignment.Center]
       42 SETTABLEKS                       R7 R6 K12 ["VerticalAlignment"]
       44 GETIMPORT                        R7 K16 [Enum.FillDirection.Vertical]
       46 SETTABLEKS                       R7 R6 K17 ["Layout"]
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R8 R9 K18 ["Change"]
       51 GETTABLEKS                       R7 R8 K19 ["AbsoluteSize"]
       53 SETTABLE                         R3 R6 R7
       54 DUPTABLE                         R7 K22 [{"Text", "Button"}]
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R8 R9 K2 ["createElement"]
       58 GETUPVAL                         R9 4
       59 DUPTABLE                         R10 K28 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
       60 GETIMPORT                        R11 K30 [Enum.AutomaticSize.Y]
       62 SETTABLEKS                       R11 R10 K23 ["AutomaticSize"]
       64 GETIMPORT                        R11 K32 [Enum.Font.SourceSansSemibold]
       66 SETTABLEKS                       R11 R10 K24 ["Font"]
       68 NAMECALL                         R11 R1 K33 ["getNextOrder"]
       70 CALL                             R11 1 1
       71 SETTABLEKS                       R11 R10 K25 ["LayoutOrder"]
       73 GETIMPORT                        R11 K4 [UDim2.new]
       75 LOADN                            R12 1
       76 LOADN                            R13 0
       77 LOADN                            R14 0
       78 LOADN                            R15 0
       79 CALL                             R11 4 1
       80 SETTABLEKS                       R11 R10 K6 ["Size"]
       82 GETTABLEKS                       R11 R2 K34 ["title"]
       84 SETTABLEKS                       R11 R10 K20 ["Text"]
       86 LOADB                            R11 1
       87 SETTABLEKS                       R11 R10 K26 ["TextWrapped"]
       89 GETIMPORT                        R11 K35 [Enum.TextXAlignment.Center]
       91 SETTABLEKS                       R11 R10 K27 ["TextXAlignment"]
       93 CALL                             R8 2 1
       94 SETTABLEKS                       R8 R7 K20 ["Text"]
       96 GETUPVAL                         R9 2
       97 GETTABLEKS                       R8 R9 K2 ["createElement"]
       99 GETUPVAL                         R9 5
      100 DUPTABLE                         R10 K38 [{"LayoutOrder", "Size", "Style", "Text", "OnClick"}]
      101 NAMECALL                         R11 R1 K33 ["getNextOrder"]
      103 CALL                             R11 1 1
      104 SETTABLEKS                       R11 R10 K25 ["LayoutOrder"]
      106 GETIMPORT                        R11 K40 [UDim2.fromOffset]
      108 LOADN                            R12 120
      109 LOADN                            R13 32
      110 CALL                             R11 2 1
      111 SETTABLEKS                       R11 R10 K6 ["Size"]
      113 LOADK                            R11 K41 ["RoundPrimary"]
      114 SETTABLEKS                       R11 R10 K36 ["Style"]
      116 GETTABLEKS                       R11 R2 K42 ["buttonText"]
      118 SETTABLEKS                       R11 R10 K20 ["Text"]
      120 NEWCLOSURE                       R11 P1
      121 CAPTURE                          VAL R2
      122 SETTABLEKS                       R11 R10 K37 ["OnClick"]
      124 CALL                             R8 2 1
      125 SETTABLEKS                       R8 R7 K21 ["Button"]
      127 CALL                             R4 3 -1
      128 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Packages"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K9 ["UI"]
       25 GETTABLEKS                       R5 R4 K10 ["Button"]
       27 GETTABLEKS                       R6 R4 K11 ["Pane"]
       29 GETTABLEKS                       R7 R4 K12 ["TextLabel"]
       31 GETTABLEKS                       R9 R3 K13 ["Util"]
       33 GETTABLEKS                       R8 R9 K14 ["LayoutOrderIterator"]
       35 GETIMPORT                        R9 K6 [require]
       37 GETTABLEKS                       R10 R0 K15 ["Analytics"]
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R10 R2 K16 ["PureComponent"]
       42 LOADK                            R12 K17 ["WebViewError"]
       43 NAMECALL                         R10 R10 K18 ["extend"]
       45 CALL                             R10 2 1
       46 DUPCLOSURE                       R11 K19 [PROTO_2]
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R11 R10 K20 ["render"]
       55 DUPCLOSURE                       R11 K21 [PROTO_3]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R10
       58 SETGLOBAL                        R11 K22 ["TypedComponent"]
       60 GETGLOBAL                        R11 K22 ["TypedComponent"]
       62 RETURN                           R11 1
