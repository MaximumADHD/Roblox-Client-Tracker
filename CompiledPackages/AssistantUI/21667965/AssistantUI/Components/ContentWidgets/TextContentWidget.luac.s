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
       14 JUMPIFNOTEQKS                    R2 K5 ["user"] ; [+68]
       16 GETTABLEKS                       R2 R1 K6 ["Typography"]
       18 GETTABLEKS                       R2 R2 K7 ["BodySmall"]
       20 GETTABLEKS                       R3 R1 K8 ["Color"]
       22 GETTABLEKS                       R3 R3 K9 ["Content"]
       24 GETTABLEKS                       R3 R3 K10 ["Emphasis"]
       26 GETUPVAL                         R4 1
       27 LOADK                            R5 K11 ["TextBox"]
       28 DUPTABLE                         R6 K32 [{["Text"], ["AutomaticSize"], ["Font"], ["FontFace"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["TextWrapped"] = True, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["TextEditable"] = False, ["RichText"] = True, ["LayoutOrder"]}]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R8 R0 K2 ["text"]
       32 CALL                             R7 1 1
       33 SETTABLEKS                       R7 R6 K12 ["Text"]
       35 GETIMPORT                        R7 K35 [Enum.AutomaticSize.XY]
       37 SETTABLEKS                       R7 R6 K13 ["AutomaticSize"]
       39 GETUPVAL                         R8 3
       40 JUMPIFNOT                        R8 ; [+2]
       41 LOADNIL                          R7
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R7 R2 K14 ["Font"]
       45 SETTABLEKS                       R7 R6 K14 ["Font"]
       47 GETUPVAL                         R8 3
       48 JUMPIFNOT                        R8 ; [+5]
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R8 R2 K14 ["Font"]
       52 CALL                             R7 1 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R7
       55 SETTABLEKS                       R7 R6 K15 ["FontFace"]
       57 GETTABLEKS                       R7 R2 K36 ["FontSize"]
       59 SETTABLEKS                       R7 R6 K16 ["TextSize"]
       61 GETTABLEKS                       R7 R2 K17 ["LineHeight"]
       63 SETTABLEKS                       R7 R6 K17 ["LineHeight"]
       65 GETTABLEKS                       R7 R3 K37 ["Color3"]
       67 SETTABLEKS                       R7 R6 K18 ["TextColor3"]
       69 GETTABLEKS                       R7 R3 K38 ["Transparency"]
       71 SETTABLEKS                       R7 R6 K19 ["TextTransparency"]
       73 GETIMPORT                        R7 K40 [Enum.TextXAlignment.Left]
       75 SETTABLEKS                       R7 R6 K20 ["TextXAlignment"]
       77 GETTABLEKS                       R7 R0 K31 ["LayoutOrder"]
       79 SETTABLEKS                       R7 R6 K31 ["LayoutOrder"]
       81 CALL                             R4 2 -1
       82 RETURN                           R4 -1
       83 GETUPVAL                         R2 1
       84 GETUPVAL                         R3 5
       85 DUPTABLE                         R4 K43 [{"markdown", "LayoutOrder", "messageId"}]
       86 GETTABLEKS                       R5 R0 K2 ["text"]
       88 SETTABLEKS                       R5 R4 K41 ["markdown"]
       90 GETTABLEKS                       R5 R0 K31 ["LayoutOrder"]
       92 SETTABLEKS                       R5 R4 K31 ["LayoutOrder"]
       94 GETTABLEKS                       R5 R0 K42 ["messageId"]
       96 SETTABLEKS                       R5 R4 K42 ["messageId"]
       98 CALL                             R2 2 -1
       99 RETURN                           R2 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["Utility"]
       16 GETTABLEKS                       R2 R2 K9 ["Flags"]
       18 GETTABLEKS                       R2 R2 K10 ["FoundationStudioFontFaceMigration"]
       20 GETTABLEKS                       R3 R1 K8 ["Utility"]
       22 GETTABLEKS                       R3 R3 K11 ["normalizeFontFace"]
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K12 ["Components"]
       28 GETTABLEKS                       R5 R5 K13 ["MarkdownText"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K6 ["Parent"]
       35 GETTABLEKS                       R6 R6 K14 ["React"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K15 ["Util"]
       42 GETTABLEKS                       R7 R7 K16 ["Serializer"]
       44 GETTABLEKS                       R7 R7 K17 ["SerializerTypes"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K18 ["Types"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K15 ["Util"]
       56 GETTABLEKS                       R9 R9 K19 ["capDisplayText"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R5 K20 ["createElement"]
       61 DUPCLOSURE                       R10 K21 [PROTO_0]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 DUPTABLE                         R11 K25 [{"getText", "toMeta", "fromMeta"}]
       69 DUPCLOSURE                       R12 K26 [PROTO_1]
       70 SETTABLEKS                       R12 R11 K22 ["getText"]
       72 DUPCLOSURE                       R12 K27 [PROTO_2]
       73 SETTABLEKS                       R12 R11 K23 ["toMeta"]
       75 DUPCLOSURE                       R12 K28 [PROTO_3]
       76 SETTABLEKS                       R12 R11 K24 ["fromMeta"]
       78 DUPTABLE                         R12 K33 [{["Type"] = "Text", ["ContentWidget"], ["Serialization"]}]
       79 GETTABLEKS                       R13 R5 K34 ["memo"]
       81 MOVE                             R14 R10
       82 CALL                             R13 1 1
       83 SETTABLEKS                       R13 R12 K31 ["ContentWidget"]
       85 SETTABLEKS                       R11 R12 K32 ["Serialization"]
       87 RETURN                           R12 1
