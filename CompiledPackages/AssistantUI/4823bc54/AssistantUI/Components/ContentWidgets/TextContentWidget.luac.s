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
       14 JUMPIFNOTEQKS                    R2 K5 ["user"] ; [+52]
       16 GETTABLEKS                       R2 R1 K6 ["Typography"]
       18 GETTABLEKS                       R2 R2 K7 ["BodySmall"]
       20 GETTABLEKS                       R3 R1 K8 ["Color"]
       22 GETTABLEKS                       R3 R3 K9 ["Content"]
       24 GETTABLEKS                       R3 R3 K10 ["Emphasis"]
       26 GETUPVAL                         R4 1
       27 LOADK                            R5 K11 ["TextBox"]
       28 DUPTABLE                         R6 K31 [{["Text"], ["AutomaticSize"], ["Font"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["TextWrapped"] = True, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["TextEditable"] = False, ["RichText"] = True, ["LayoutOrder"]}]
       29 GETTABLEKS                       R7 R0 K2 ["text"]
       31 SETTABLEKS                       R7 R6 K12 ["Text"]
       33 GETIMPORT                        R7 K34 [Enum.AutomaticSize.XY]
       35 SETTABLEKS                       R7 R6 K13 ["AutomaticSize"]
       37 GETTABLEKS                       R7 R2 K14 ["Font"]
       39 SETTABLEKS                       R7 R6 K14 ["Font"]
       41 GETTABLEKS                       R7 R2 K35 ["FontSize"]
       43 SETTABLEKS                       R7 R6 K15 ["TextSize"]
       45 GETTABLEKS                       R7 R2 K16 ["LineHeight"]
       47 SETTABLEKS                       R7 R6 K16 ["LineHeight"]
       49 GETTABLEKS                       R7 R3 K36 ["Color3"]
       51 SETTABLEKS                       R7 R6 K17 ["TextColor3"]
       53 GETTABLEKS                       R7 R3 K37 ["Transparency"]
       55 SETTABLEKS                       R7 R6 K18 ["TextTransparency"]
       57 GETIMPORT                        R7 K39 [Enum.TextXAlignment.Left]
       59 SETTABLEKS                       R7 R6 K19 ["TextXAlignment"]
       61 GETTABLEKS                       R7 R0 K30 ["LayoutOrder"]
       63 SETTABLEKS                       R7 R6 K30 ["LayoutOrder"]
       65 CALL                             R4 2 -1
       66 RETURN                           R4 -1
       67 GETUPVAL                         R2 1
       68 GETUPVAL                         R3 2
       69 DUPTABLE                         R4 K42 [{"markdown", "LayoutOrder", "messageId"}]
       70 GETTABLEKS                       R5 R0 K2 ["text"]
       72 SETTABLEKS                       R5 R4 K40 ["markdown"]
       74 GETTABLEKS                       R5 R0 K30 ["LayoutOrder"]
       76 SETTABLEKS                       R5 R4 K30 ["LayoutOrder"]
       78 GETTABLEKS                       R5 R0 K41 ["messageId"]
       80 SETTABLEKS                       R5 R4 K41 ["messageId"]
       82 CALL                             R2 2 -1
       83 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["text"]
        2 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 [""]
        1 GETTABLEKS                       R3 R1 K1 ["textContent"]
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R3 R1 K1 ["textContent"]
        6 GETTABLEKS                       R2 R3 K2 ["text"]
        8 DUPTABLE                         R3 K5 [{["type"] = "Text", ["text"]}]
        9 SETTABLEKS                       R2 R3 K2 ["text"]
       11 RETURN                           R3 1

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
       42 GETTABLEKS                       R6 R3 K15 ["createElement"]
       44 DUPCLOSURE                       R7 K16 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R2
       48 DUPTABLE                         R8 K20 [{"getText", "toMeta", "fromMeta"}]
       49 DUPCLOSURE                       R9 K21 [PROTO_1]
       50 SETTABLEKS                       R9 R8 K17 ["getText"]
       52 DUPCLOSURE                       R9 K22 [PROTO_2]
       53 SETTABLEKS                       R9 R8 K18 ["toMeta"]
       55 DUPCLOSURE                       R9 K23 [PROTO_3]
       56 SETTABLEKS                       R9 R8 K19 ["fromMeta"]
       58 DUPTABLE                         R9 K28 [{["Type"] = "Text", ["ContentWidget"], ["Serialization"]}]
       59 GETTABLEKS                       R10 R3 K29 ["memo"]
       61 MOVE                             R11 R7
       62 CALL                             R10 1 1
       63 SETTABLEKS                       R10 R9 K26 ["ContentWidget"]
       65 SETTABLEKS                       R8 R9 K27 ["Serialization"]
       67 RETURN                           R9 1
