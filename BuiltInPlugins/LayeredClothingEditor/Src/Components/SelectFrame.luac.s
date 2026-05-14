PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["PartName"]
        5 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        7 GETTABLEKS                       R4 R1 K3 ["Localization"]
        9 LOADK                            R7 K4 ["Select"]
       10 LOADK                            R8 K5 ["Part"]
       11 NAMECALL                         R5 R4 K6 ["getText"]
       13 CALL                             R5 3 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K7 ["createElement"]
       17 GETUPVAL                         R7 2
       18 DUPTABLE                         R8 K12 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
       19 GETIMPORT                        R9 K15 [UDim2.new]
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 LOADN                            R12 0
       24 GETTABLEKS                       R13 R3 K16 ["TextBoxHeight"]
       26 CALL                             R9 4 1
       27 SETTABLEKS                       R9 R8 K8 ["Size"]
       29 SETTABLEKS                       R0 R8 K9 ["LayoutOrder"]
       31 GETIMPORT                        R9 K20 [Enum.FillDirection.Horizontal]
       33 SETTABLEKS                       R9 R8 K10 ["Layout"]
       35 GETIMPORT                        R9 K22 [Enum.HorizontalAlignment.Left]
       37 SETTABLEKS                       R9 R8 K11 ["HorizontalAlignment"]
       39 DUPTABLE                         R9 K25 [{"TextBoxLabel", "SelectedPartBox"}]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K7 ["createElement"]
       43 GETUPVAL                         R11 3
       44 DUPTABLE                         R12 K29 [{"TextXAlignment", "TextYAlignment", "Size", "Text", "LayoutOrder"}]
       45 GETIMPORT                        R13 K30 [Enum.TextXAlignment.Left]
       47 SETTABLEKS                       R13 R12 K26 ["TextXAlignment"]
       49 GETIMPORT                        R13 K32 [Enum.TextYAlignment.Center]
       51 SETTABLEKS                       R13 R12 K27 ["TextYAlignment"]
       53 GETIMPORT                        R13 K15 [UDim2.new]
       55 LOADN                            R14 0
       56 GETTABLEKS                       R15 R3 K33 ["LabelWidth"]
       58 LOADN                            R16 1
       59 LOADN                            R17 0
       60 CALL                             R13 4 1
       61 SETTABLEKS                       R13 R12 K8 ["Size"]
       63 SETTABLEKS                       R5 R12 K28 ["Text"]
       65 ADDK                             R13 R0 K34 [1]
       66 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K23 ["TextBoxLabel"]
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R10 R10 K7 ["createElement"]
       74 GETUPVAL                         R11 4
       75 DUPTABLE                         R12 K38 [{"Enabled", "ShouldFocus", "Text", "Size", "LayoutOrder", "Style"}]
       76 LOADB                            R13 0
       77 SETTABLEKS                       R13 R12 K35 ["Enabled"]
       79 LOADB                            R13 0
       80 SETTABLEKS                       R13 R12 K36 ["ShouldFocus"]
       82 SETTABLEKS                       R2 R12 K28 ["Text"]
       84 GETIMPORT                        R13 K15 [UDim2.new]
       86 LOADK                            R14 K39 [0.5]
       87 LOADN                            R15 0
       88 LOADN                            R16 1
       89 LOADN                            R17 0
       90 CALL                             R13 4 1
       91 SETTABLEKS                       R13 R12 K8 ["Size"]
       93 ADDK                             R13 R0 K40 [2]
       94 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       96 LOADK                            R13 K41 ["FilledRoundedBorder"]
       97 SETTABLEKS                       R13 R12 K37 ["Style"]
       99 CALL                             R10 2 1
      100 SETTABLEKS                       R10 R9 K24 ["SelectedPartBox"]
      102 CALL                             R6 3 -1
      103 RETURN                           R6 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 SETTABLEKS                       R1 R0 K0 ["renderContent"]
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ButtonEnabled"]
        4 GETTABLEKS                       R3 R1 K2 ["OnConfirmSelection"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 LOADK                            R7 K4 ["Select"]
        9 LOADK                            R8 K5 ["Prompt"]
       10 NAMECALL                         R5 R4 K6 ["getText"]
       12 CALL                             R5 3 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K7 ["createElement"]
       16 GETUPVAL                         R7 1
       17 DUPTABLE                         R8 K16 [{"Title", "PromptText", "NextButtonText", "BackButtonText", "NextButtonEnabled", "HasBackButton", "GoToNext", "RenderContent"}]
       18 LOADK                            R11 K17 ["Editor"]
       19 LOADK                            R12 K4 ["Select"]
       20 NAMECALL                         R9 R4 K6 ["getText"]
       22 CALL                             R9 3 1
       23 SETTABLEKS                       R9 R8 K8 ["Title"]
       25 SETTABLEKS                       R5 R8 K9 ["PromptText"]
       27 LOADK                            R11 K18 ["Flow"]
       28 LOADK                            R12 K19 ["Next"]
       29 NAMECALL                         R9 R4 K6 ["getText"]
       31 CALL                             R9 3 1
       32 SETTABLEKS                       R9 R8 K10 ["NextButtonText"]
       34 LOADK                            R9 K20 [""]
       35 SETTABLEKS                       R9 R8 K11 ["BackButtonText"]
       37 SETTABLEKS                       R2 R8 K12 ["NextButtonEnabled"]
       39 LOADB                            R9 0
       40 SETTABLEKS                       R9 R8 K13 ["HasBackButton"]
       42 SETTABLEKS                       R3 R8 K14 ["GoToNext"]
       44 GETTABLEKS                       R9 R0 K21 ["renderContent"]
       46 SETTABLEKS                       R9 R8 K15 ["RenderContent"]
       48 CALL                             R6 2 -1
       49 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K5 ["Packages"]
       31 GETTABLEKS                       R6 R6 K10 ["AvatarToolsShared"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K11 ["Components"]
       36 GETTABLEKS                       R7 R6 K12 ["FlowScreenLayout"]
       38 GETTABLEKS                       R8 R2 K13 ["UI"]
       40 GETTABLEKS                       R9 R8 K14 ["TextLabel"]
       42 GETTABLEKS                       R10 R8 K15 ["DEPRECATED_TextInput"]
       44 GETTABLEKS                       R11 R8 K16 ["Pane"]
       46 GETTABLEKS                       R12 R1 K17 ["PureComponent"]
       48 LOADK                            R14 K18 ["SelectFrame"]
       49 NAMECALL                         R12 R12 K19 ["extend"]
       51 CALL                             R12 2 1
       52 GETTABLEKS                       R13 R2 K20 ["Util"]
       54 GETTABLEKS                       R14 R13 K21 ["Typecheck"]
       56 GETTABLEKS                       R15 R14 K22 ["wrap"]
       58 MOVE                             R16 R12
       59 GETIMPORT                        R17 K1 [script]
       61 CALL                             R15 2 0
       62 DUPCLOSURE                       R15 K23 [PROTO_1]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R10
       67 SETTABLEKS                       R15 R12 K24 ["init"]
       69 DUPCLOSURE                       R15 K25 [PROTO_2]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 SETTABLEKS                       R15 R12 K26 ["render"]
       74 MOVE                             R15 R4
       75 DUPTABLE                         R16 K29 [{"Stylizer", "Localization"}]
       76 GETTABLEKS                       R17 R3 K27 ["Stylizer"]
       78 SETTABLEKS                       R17 R16 K27 ["Stylizer"]
       80 GETTABLEKS                       R17 R3 K28 ["Localization"]
       82 SETTABLEKS                       R17 R16 K28 ["Localization"]
       84 CALL                             R15 1 1
       85 MOVE                             R16 R12
       86 CALL                             R15 1 1
       87 MOVE                             R12 R15
       88 RETURN                           R12 1
