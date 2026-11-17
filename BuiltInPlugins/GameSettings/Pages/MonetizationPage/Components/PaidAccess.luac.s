PROTO_0:
        0 LOADK                            R1 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
        1 GETUPVAL                         R2 0
        2 LOADK                            R3 K1 ["/access"]
        3 CONCAT                           R0 R1 R3
        4 JUMPIFNOT                        R0 ; [+14]
        5 FASTCALL1                        STRING_LEN R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K4 [string.len]
        9 CALL                             R1 1 1
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+7]
       13 GETUPVAL                         R1 1
       14 MOVE                             R3 R0
       15 NAMECALL                         R1 R1 K5 ["OpenBrowserWindow"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETIMPORT                        R1 K7 [error]
       21 LOADK                            R2 K8 ["Failed to open Creation Experiences Access page"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R1 K1 ["GameId"]
        9 GETTABLEKS                       R3 R1 K2 ["Localization"]
       11 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
       13 LOADK                            R7 K4 ["Monetization"]
       14 LOADK                            R8 K5 ["TitlePaidAccess"]
       15 NAMECALL                         R5 R3 K6 ["getText"]
       17 CALL                             R5 3 1
       18 GETTABLEKS                       R6 R1 K7 ["LayoutOrder"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K8 ["createElement"]
       23 GETUPVAL                         R9 2
       24 JUMPIFNOT                        R9 ; [+2]
       25 GETUPVAL                         R8 3
       26 JUMP                             ; [+1]
       27 GETUPVAL                         R8 4
       28 GETUPVAL                         R10 2
       29 JUMPIFNOT                        R10 ; [+16]
       30 DUPTABLE                         R9 K12 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
       31 GETIMPORT                        R10 K15 [Enum.AutomaticSize.XY]
       33 SETTABLEKS                       R10 R9 K9 ["AutomaticSize"]
       35 GETIMPORT                        R10 K18 [Enum.FillDirection.Vertical]
       37 SETTABLEKS                       R10 R9 K10 ["Layout"]
       39 SETTABLEKS                       R6 R9 K7 ["LayoutOrder"]
       41 GETTABLEKS                       R10 R4 K19 ["titleSpacing"]
       43 SETTABLEKS                       R10 R9 K11 ["Spacing"]
       45 JUMP                             ; [+19]
       46 DUPTABLE                         R9 K24 [{["axis"], ["minimumSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R10 R10 K25 ["Axis"]
       50 GETTABLEKS                       R10 R10 K17 ["Vertical"]
       52 SETTABLEKS                       R10 R9 K20 ["axis"]
       54 GETIMPORT                        R10 K28 [UDim2.new]
       56 LOADN                            R11 1
       57 LOADN                            R12 0
       58 LOADN                            R13 0
       59 LOADN                            R14 0
       60 CALL                             R10 4 1
       61 SETTABLEKS                       R10 R9 K21 ["minimumSize"]
       63 SETTABLEKS                       R6 R9 K7 ["LayoutOrder"]
       65 DUPTABLE                         R10 K30 [{"PaidAccessTitle"}]
       66 GETUPVAL                         R11 1
       67 GETTABLEKS                       R11 R11 K8 ["createElement"]
       69 GETUPVAL                         R12 5
       70 DUPTABLE                         R13 K32 [{["LayoutOrder"] = 1, ["Title"]}]
       71 SETTABLEKS                       R5 R13 K31 ["Title"]
       73 DUPTABLE                         R14 K35 [{"Padding", "LinkText"}]
       74 GETUPVAL                         R15 1
       75 GETTABLEKS                       R15 R15 K8 ["createElement"]
       77 LOADK                            R16 K36 ["UIPadding"]
       78 DUPTABLE                         R17 K38 [{"PaddingTop"}]
       79 GETIMPORT                        R18 K40 [UDim.new]
       81 LOADN                            R19 0
       82 LOADN                            R20 4
       83 CALL                             R18 2 1
       84 SETTABLEKS                       R18 R17 K37 ["PaddingTop"]
       86 CALL                             R15 2 1
       87 SETTABLEKS                       R15 R14 K33 ["Padding"]
       89 GETUPVAL                         R15 1
       90 GETTABLEKS                       R15 R15 K8 ["createElement"]
       92 GETUPVAL                         R16 6
       93 DUPTABLE                         R17 K45 [{"OnClick", "Text", "TextXAlignment", "TextYAlignment"}]
       94 NEWCLOSURE                       R18 P0
       95 CAPTURE                          VAL R2
       96 CAPTURE                          UPVAL U7
       97 SETTABLEKS                       R18 R17 K41 ["OnClick"]
       99 LOADK                            R20 K4 ["Monetization"]
      100 LOADK                            R21 K46 ["PaidAccessDeepLink"]
      101 NAMECALL                         R18 R3 K6 ["getText"]
      103 CALL                             R18 3 1
      104 SETTABLEKS                       R18 R17 K42 ["Text"]
      106 GETIMPORT                        R18 K48 [Enum.TextXAlignment.Left]
      108 SETTABLEKS                       R18 R17 K43 ["TextXAlignment"]
      110 GETIMPORT                        R18 K50 [Enum.TextYAlignment.Top]
      112 SETTABLEKS                       R18 R17 K44 ["TextYAlignment"]
      114 CALL                             R15 2 1
      115 SETTABLEKS                       R15 R14 K34 ["LinkText"]
      117 CALL                             R11 3 1
      118 SETTABLEKS                       R11 R10 K29 ["PaidAccessTitle"]
      120 CALL                             R7 3 -1
      121 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["FitFrame"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K7 ["Src"]
       28 GETTABLEKS                       R4 R4 K8 ["Flags"]
       30 GETTABLEKS                       R4 R4 K9 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       32 CALL                             R3 1 1
       33 CALL                             R3 0 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R1 K5 ["Packages"]
       38 GETTABLEKS                       R5 R5 K10 ["Roact"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R1 K5 ["Packages"]
       45 GETTABLEKS                       R6 R6 K11 ["Framework"]
       47 CALL                             R5 1 1
       48 JUMPIFNOT                        R3 ; [+2]
       49 LOADNIL                          R6
       50 JUMP                             ; [+2]
       51 GETTABLEKS                       R6 R2 K12 ["FitFrameOnAxis"]
       53 GETTABLEKS                       R7 R5 K13 ["ContextServices"]
       55 GETTABLEKS                       R8 R7 K14 ["withContext"]
       57 GETTABLEKS                       R9 R5 K15 ["UI"]
       59 GETTABLEKS                       R10 R9 K16 ["LinkText"]
       61 GETTABLEKS                       R11 R9 K17 ["Pane"]
       63 GETTABLEKS                       R12 R9 K18 ["TitledFrame"]
       65 GETIMPORT                        R13 K20 [game]
       67 LOADK                            R15 K21 ["GuiService"]
       68 NAMECALL                         R13 R13 K22 ["GetService"]
       70 CALL                             R13 2 1
       71 GETIMPORT                        R14 K4 [require]
       73 GETTABLEKS                       R15 R1 K7 ["Src"]
       75 GETTABLEKS                       R15 R15 K23 ["Util"]
       77 GETTABLEKS                       R15 R15 K24 ["GameSettingsUtilities"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R14 R14 K25 ["shouldDisablePrivateServersAndPaidAccess"]
       82 GETTABLEKS                       R15 R4 K26 ["PureComponent"]
       84 LOADK                            R17 K27 ["PaidAccess"]
       85 NAMECALL                         R15 R15 K28 ["extend"]
       87 CALL                             R15 2 1
       88 DUPCLOSURE                       R16 K29 [PROTO_1]
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R13
       97 SETTABLEKS                       R16 R15 K30 ["render"]
       99 MOVE                             R16 R8
      100 DUPTABLE                         R17 K34 [{"Localization", "Stylizer", "Mouse"}]
      101 GETTABLEKS                       R18 R7 K31 ["Localization"]
      103 SETTABLEKS                       R18 R17 K31 ["Localization"]
      105 GETTABLEKS                       R18 R7 K32 ["Stylizer"]
      107 SETTABLEKS                       R18 R17 K32 ["Stylizer"]
      109 GETTABLEKS                       R18 R7 K33 ["Mouse"]
      111 SETTABLEKS                       R18 R17 K33 ["Mouse"]
      113 CALL                             R16 1 1
      114 MOVE                             R17 R15
      115 CALL                             R16 1 1
      116 MOVE                             R15 R16
      117 RETURN                           R15 1
