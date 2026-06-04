PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["text"]
        8 JUMPIFNOTEQKS                    R2 K3 [""] ; [+3]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R0 K4 ["role"]
       14 JUMPIFNOTEQKS                    R2 K5 ["user"] ; [+70]
       16 GETTABLEKS                       R2 R1 K6 ["Typography"]
       18 GETTABLEKS                       R2 R2 K7 ["BodySmall"]
       20 GETTABLEKS                       R3 R1 K8 ["Color"]
       22 GETTABLEKS                       R3 R3 K9 ["Content"]
       24 GETTABLEKS                       R3 R3 K10 ["Emphasis"]
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

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["text"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 NEWTABLE                         R1 0 0
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 LOADK                            R2 K3 [""]
        9 GETTABLEKS                       R3 R1 K4 ["textContent"]
       11 JUMPIFNOT                        R3 ; [+4]
       12 GETTABLEKS                       R3 R1 K4 ["textContent"]
       14 GETTABLEKS                       R2 R3 K5 ["text"]
       16 DUPTABLE                         R3 K7 [{"type", "text"}]
       17 LOADK                            R4 K8 ["Text"]
       18 SETTABLEKS                       R4 R3 K6 ["type"]
       20 SETTABLEKS                       R2 R3 K5 ["text"]
       22 RETURN                           R3 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["MarkdownText"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["Serializer"]
       34 GETTABLEKS                       R5 R5 K13 ["SerializerTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Flags"]
       46 GETTABLEKS                       R7 R7 K16 ["FFlagAssistantMultipleChatPersistence"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R3 K17 ["createElement"]
       51 DUPCLOSURE                       R8 K18 [PROTO_0]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R2
       55 DUPTABLE                         R9 K22 [{"getText", "toMeta", "fromMeta"}]
       56 DUPCLOSURE                       R10 K23 [PROTO_1]
       57 SETTABLEKS                       R10 R9 K19 ["getText"]
       59 DUPCLOSURE                       R10 K24 [PROTO_2]
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R10 R9 K20 ["toMeta"]
       63 DUPCLOSURE                       R10 K25 [PROTO_3]
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R10 R9 K21 ["fromMeta"]
       67 DUPTABLE                         R10 K29 [{"Type", "ContentWidget", "Serialization"}]
       68 LOADK                            R11 K30 ["Text"]
       69 SETTABLEKS                       R11 R10 K26 ["Type"]
       71 GETTABLEKS                       R11 R3 K31 ["memo"]
       73 MOVE                             R12 R8
       74 CALL                             R11 1 1
       75 SETTABLEKS                       R11 R10 K27 ["ContentWidget"]
       77 SETTABLEKS                       R9 R10 K28 ["Serialization"]
       79 RETURN                           R10 1
