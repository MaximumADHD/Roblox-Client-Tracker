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
       14 JUMPIFNOTEQKS                    R2 K5 ["user"] ; [+54]
       16 GETTABLEKS                       R2 R1 K6 ["Typography"]
       18 GETTABLEKS                       R2 R2 K7 ["BodySmall"]
       20 GETTABLEKS                       R3 R1 K8 ["Color"]
       22 GETTABLEKS                       R3 R3 K9 ["Content"]
       24 GETTABLEKS                       R3 R3 K10 ["Emphasis"]
       26 GETUPVAL                         R4 1
       27 LOADK                            R5 K11 ["TextBox"]
       28 DUPTABLE                         R6 K31 [{["Text"], ["AutomaticSize"], ["Font"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["TextWrapped"] = True, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["TextEditable"] = False, ["RichText"] = True, ["LayoutOrder"]}]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R8 R0 K2 ["text"]
       32 CALL                             R7 1 1
       33 SETTABLEKS                       R7 R6 K12 ["Text"]
       35 GETIMPORT                        R7 K34 [Enum.AutomaticSize.XY]
       37 SETTABLEKS                       R7 R6 K13 ["AutomaticSize"]
       39 GETTABLEKS                       R7 R2 K14 ["Font"]
       41 SETTABLEKS                       R7 R6 K14 ["Font"]
       43 GETTABLEKS                       R7 R2 K35 ["FontSize"]
       45 SETTABLEKS                       R7 R6 K15 ["TextSize"]
       47 GETTABLEKS                       R7 R2 K16 ["LineHeight"]
       49 SETTABLEKS                       R7 R6 K16 ["LineHeight"]
       51 GETTABLEKS                       R7 R3 K36 ["Color3"]
       53 SETTABLEKS                       R7 R6 K17 ["TextColor3"]
       55 GETTABLEKS                       R7 R3 K37 ["Transparency"]
       57 SETTABLEKS                       R7 R6 K18 ["TextTransparency"]
       59 GETIMPORT                        R7 K39 [Enum.TextXAlignment.Left]
       61 SETTABLEKS                       R7 R6 K19 ["TextXAlignment"]
       63 GETTABLEKS                       R7 R0 K30 ["LayoutOrder"]
       65 SETTABLEKS                       R7 R6 K30 ["LayoutOrder"]
       67 CALL                             R4 2 -1
       68 RETURN                           R4 -1
       69 GETUPVAL                         R2 1
       70 GETUPVAL                         R3 3
       71 DUPTABLE                         R4 K42 [{"markdown", "LayoutOrder", "messageId"}]
       72 GETTABLEKS                       R5 R0 K2 ["text"]
       74 SETTABLEKS                       R5 R4 K40 ["markdown"]
       76 GETTABLEKS                       R5 R0 K30 ["LayoutOrder"]
       78 SETTABLEKS                       R5 R4 K30 ["LayoutOrder"]
       80 GETTABLEKS                       R5 R0 K41 ["messageId"]
       82 SETTABLEKS                       R5 R4 K41 ["messageId"]
       84 CALL                             R2 2 -1
       85 RETURN                           R2 -1

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
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["capDisplayText"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R3 K16 ["createElement"]
       51 DUPCLOSURE                       R8 K17 [PROTO_0]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 DUPTABLE                         R9 K21 [{"getText", "toMeta", "fromMeta"}]
       57 DUPCLOSURE                       R10 K22 [PROTO_1]
       58 SETTABLEKS                       R10 R9 K18 ["getText"]
       60 DUPCLOSURE                       R10 K23 [PROTO_2]
       61 SETTABLEKS                       R10 R9 K19 ["toMeta"]
       63 DUPCLOSURE                       R10 K24 [PROTO_3]
       64 SETTABLEKS                       R10 R9 K20 ["fromMeta"]
       66 DUPTABLE                         R10 K29 [{["Type"] = "Text", ["ContentWidget"], ["Serialization"]}]
       67 GETTABLEKS                       R11 R3 K30 ["memo"]
       69 MOVE                             R12 R8
       70 CALL                             R11 1 1
       71 SETTABLEKS                       R11 R10 K27 ["ContentWidget"]
       73 SETTABLEKS                       R9 R10 K28 ["Serialization"]
       75 RETURN                           R10 1
