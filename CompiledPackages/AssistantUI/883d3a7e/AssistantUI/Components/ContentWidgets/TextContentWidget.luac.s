PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["text"]
        8 JUMPIFNOTEQKS                    R2 K3 [""] ; [+3]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R0 K4 ["role"]
       14 JUMPIFNOTEQKS                    R2 K5 ["user"] ; [+70]
       16 GETTABLEKS                       R3 R1 K6 ["Typography"]
       18 GETTABLEKS                       R2 R3 K7 ["BodySmall"]
       20 GETTABLEKS                       R5 R1 K8 ["Color"]
       22 GETTABLEKS                       R4 R5 K9 ["Content"]
       24 GETTABLEKS                       R3 R4 K10 ["Emphasis"]
       26 GETUPVAL                         R4 1
       27 LOADK                            R5 K11 ["TextBox"]
       28 DUPTABLE                         R6 K27 [{"Text", "AutomaticSize", "Font", "TextSize", "LineHeight", "TextColor3", "TextTransparency", "TextXAlignment", "TextWrapped", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "TextEditable", "RichText", "LayoutOrder"}]
       29 GETTABLEKS                       R7 R0 K2 ["text"]
       31 SETTABLEKS                       R7 R6 K12 ["Text"]
       33 GETIMPORT                        R7 K30 [Enum.AutomaticSize.XY]
       35 SETTABLEKS                       R7 R6 K13 ["AutomaticSize"]
       37 GETTABLEKS                       R7 R2 K14 ["Font"]
       39 SETTABLEKS                       R7 R6 K14 ["Font"]
       41 GETTABLEKS                       R7 R2 K31 ["FontSize"]
       43 SETTABLEKS                       R7 R6 K15 ["TextSize"]
       45 GETTABLEKS                       R7 R2 K16 ["LineHeight"]
       47 SETTABLEKS                       R7 R6 K16 ["LineHeight"]
       49 GETTABLEKS                       R7 R3 K32 ["Color3"]
       51 SETTABLEKS                       R7 R6 K17 ["TextColor3"]
       53 GETTABLEKS                       R7 R3 K33 ["Transparency"]
       55 SETTABLEKS                       R7 R6 K18 ["TextTransparency"]
       57 GETIMPORT                        R7 K35 [Enum.TextXAlignment.Left]
       59 SETTABLEKS                       R7 R6 K19 ["TextXAlignment"]
       61 LOADB                            R7 1
       62 SETTABLEKS                       R7 R6 K20 ["TextWrapped"]
       64 LOADN                            R7 1
       65 SETTABLEKS                       R7 R6 K21 ["BackgroundTransparency"]
       67 LOADN                            R7 0
       68 SETTABLEKS                       R7 R6 K22 ["BorderSizePixel"]
       70 LOADB                            R7 0
       71 SETTABLEKS                       R7 R6 K23 ["ClearTextOnFocus"]
       73 LOADB                            R7 0
       74 SETTABLEKS                       R7 R6 K24 ["TextEditable"]
       76 LOADB                            R7 1
       77 SETTABLEKS                       R7 R6 K25 ["RichText"]
       79 GETTABLEKS                       R7 R0 K26 ["LayoutOrder"]
       81 SETTABLEKS                       R7 R6 K26 ["LayoutOrder"]
       83 CALL                             R4 2 -1
       84 RETURN                           R4 -1
       85 GETUPVAL                         R2 1
       86 GETUPVAL                         R3 2
       87 DUPTABLE                         R4 K38 [{"markdown", "LayoutOrder", "messageId"}]
       88 GETTABLEKS                       R5 R0 K2 ["text"]
       90 SETTABLEKS                       R5 R4 K36 ["markdown"]
       92 GETTABLEKS                       R5 R0 K26 ["LayoutOrder"]
       94 SETTABLEKS                       R5 R4 K26 ["LayoutOrder"]
       96 GETTABLEKS                       R5 R0 K37 ["messageId"]
       98 SETTABLEKS                       R5 R4 K37 ["messageId"]
      100 CALL                             R2 2 -1
      101 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentWidgetRegistry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R5 K11 ["MarkdownText"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Flags"]
       44 GETTABLEKS                       R7 R8 K15 ["FFlagAssistantRegisterWidgetsThroughTools"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R4 K16 ["createElement"]
       49 DUPCLOSURE                       R8 K17 [PROTO_0]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R3
       53 DUPTABLE                         R9 K20 [{"Type", "ContentWidget"}]
       54 LOADK                            R10 K21 ["Text"]
       55 SETTABLEKS                       R10 R9 K18 ["Type"]
       57 GETTABLEKS                       R10 R4 K22 ["memo"]
       59 MOVE                             R11 R8
       60 CALL                             R10 1 1
       61 SETTABLEKS                       R10 R9 K19 ["ContentWidget"]
       63 MOVE                             R10 R6
       64 CALL                             R10 0 1
       65 JUMPIF                           R10 ; [+7]
       66 GETTABLEKS                       R10 R1 K23 ["registerWidget"]
       68 GETTABLEKS                       R11 R9 K18 ["Type"]
       70 GETTABLEKS                       R12 R9 K19 ["ContentWidget"]
       72 CALL                             R10 2 0
       73 RETURN                           R9 1
