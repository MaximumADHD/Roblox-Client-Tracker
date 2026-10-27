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
       85 DUPTABLE                         R4 K44 [{"markdown", "messageId", "isStreaming", "LayoutOrder"}]
       86 GETTABLEKS                       R5 R0 K2 ["text"]
       88 SETTABLEKS                       R5 R4 K41 ["markdown"]
       90 GETTABLEKS                       R5 R0 K42 ["messageId"]
       92 SETTABLEKS                       R5 R4 K42 ["messageId"]
       94 GETUPVAL                         R6 6
       95 GETTABLEKS                       R6 R6 K45 ["FFlagAssistantMarkdownStreaming"]
       97 JUMPIFNOT                        R6 ; [+4]
       98 GETUPVAL                         R5 7
       99 MOVE                             R6 R0
      100 CALL                             R5 1 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R5
      103 SETTABLEKS                       R5 R4 K43 ["isStreaming"]
      105 GETTABLEKS                       R5 R0 K31 ["LayoutOrder"]
      107 SETTABLEKS                       R5 R4 K31 ["LayoutOrder"]
      109 CALL                             R2 2 -1
      110 RETURN                           R2 -1

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
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Flags"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K10 ["Utility"]
       26 GETTABLEKS                       R5 R5 K9 ["Flags"]
       28 GETTABLEKS                       R5 R5 K11 ["FoundationStudioFontFaceMigration"]
       30 GETTABLEKS                       R6 R2 K10 ["Utility"]
       32 GETTABLEKS                       R6 R6 K12 ["normalizeFontFace"]
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R0 K13 ["Components"]
       38 GETTABLEKS                       R8 R8 K14 ["MarkdownText"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K15 ["Util"]
       45 GETTABLEKS                       R9 R9 K16 ["Serializer"]
       47 GETTABLEKS                       R9 R9 K17 ["SerializerTypes"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K18 ["Types"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R11 R0 K15 ["Util"]
       59 GETTABLEKS                       R11 R11 K19 ["capDisplayText"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K6 [require]
       64 GETTABLEKS                       R12 R0 K15 ["Util"]
       66 GETTABLEKS                       R12 R12 K20 ["isContentStreaming"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R12 R3 K21 ["createElement"]
       71 DUPCLOSURE                       R13 K22 [PROTO_0]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R11
       80 DUPTABLE                         R14 K26 [{"getText", "toMeta", "fromMeta"}]
       81 DUPCLOSURE                       R15 K27 [PROTO_1]
       82 SETTABLEKS                       R15 R14 K23 ["getText"]
       84 DUPCLOSURE                       R15 K28 [PROTO_2]
       85 SETTABLEKS                       R15 R14 K24 ["toMeta"]
       87 DUPCLOSURE                       R15 K29 [PROTO_3]
       88 SETTABLEKS                       R15 R14 K25 ["fromMeta"]
       90 DUPTABLE                         R15 K34 [{["Type"] = "Text", ["ContentWidget"], ["Serialization"]}]
       91 GETTABLEKS                       R16 R3 K35 ["memo"]
       93 MOVE                             R17 R13
       94 CALL                             R16 1 1
       95 SETTABLEKS                       R16 R15 K32 ["ContentWidget"]
       97 SETTABLEKS                       R14 R15 K33 ["Serialization"]
       99 RETURN                           R15 1
