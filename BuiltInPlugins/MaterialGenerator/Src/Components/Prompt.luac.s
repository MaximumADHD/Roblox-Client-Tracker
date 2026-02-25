PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKS                       R1 K0 [""] ; [+5]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 GETIMPORT                        R1 K2 [warn]
        9 LOADK                            R2 K3 ["Empty prompt text"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+3]
        6 NAMECALL                         R1 R0 K1 ["CaptureFocus"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["ButtonClick"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["KeyboardEnter"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Prompt"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["useContext"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K3 ["generateMaterialVariants"]
       12 GETTABLEKS                       R4 R2 K4 ["isGenerating"]
       14 GETTABLEKS                       R5 R2 K5 ["promptText"]
       16 GETTABLEKS                       R6 R2 K6 ["setPromptText"]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K7 ["useRef"]
       21 LOADNIL                          R8
       22 CALL                             R7 1 1
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R8 R9 K8 ["useCallback"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R10 0 2
       31 MOVE                             R11 R3
       32 MOVE                             R12 R5
       33 SETLIST                          R10 R11 2 [1]
       35 CALL                             R8 2 1
       36 GETUPVAL                         R9 3
       37 NAMECALL                         R9 R9 K1 ["use"]
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R10 R0 K9 ["isDisabled"]
       42 JUMPIF                           R10 ; [+6]
       43 MOVE                             R10 R4
       44 JUMPIF                           R10 ; [+4]
       45 JUMPIFEQKS                       R5 K10 [""] ; [+2]
       47 LOADB                            R10 0 +1
       48 LOADB                            R10 1
       49 GETTABLEKS                       R12 R0 K9 ["isDisabled"]
       51 OR                               R11 R12 R4
       52 GETUPVAL                         R13 1
       53 GETTABLEKS                       R12 R13 K11 ["createElement"]
       55 GETUPVAL                         R13 4
       56 DUPTABLE                         R14 K16 [{"BackgroundColor", "LayoutOrder", "Padding", "Size"}]
       57 GETTABLEKS                       R15 R1 K12 ["BackgroundColor"]
       59 SETTABLEKS                       R15 R14 K12 ["BackgroundColor"]
       61 GETTABLEKS                       R15 R0 K13 ["LayoutOrder"]
       63 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
       65 GETTABLEKS                       R15 R1 K14 ["Padding"]
       67 SETTABLEKS                       R15 R14 K14 ["Padding"]
       69 GETTABLEKS                       R15 R0 K15 ["Size"]
       71 SETTABLEKS                       R15 R14 K15 ["Size"]
       73 DUPTABLE                         R15 K18 [{"PromptTextInput"}]
       74 GETUPVAL                         R17 1
       75 GETTABLEKS                       R16 R17 K11 ["createElement"]
       77 GETUPVAL                         R17 5
       78 DUPTABLE                         R18 K28 [{"BottomComponent", "BottomComponentProps", "Disabled", "MultiLine", "OnEnter", "OnTextChanged", "PlaceholderText", "ForwardRef", "Size", "Text"}]
       79 GETUPVAL                         R19 6
       80 SETTABLEKS                       R19 R18 K19 ["BottomComponent"]
       82 DUPTABLE                         R19 K31 [{"Size", "isDisabled", "isGenerating", "onClick", "onGenerate"}]
       83 GETTABLEKS                       R20 R1 K32 ["PromptToolbarSize"]
       85 SETTABLEKS                       R20 R19 K15 ["Size"]
       87 SETTABLEKS                       R10 R19 K9 ["isDisabled"]
       89 SETTABLEKS                       R4 R19 K4 ["isGenerating"]
       91 NEWCLOSURE                       R20 P1
       92 CAPTURE                          VAL R7
       93 SETTABLEKS                       R20 R19 K29 ["onClick"]
       95 NEWCLOSURE                       R20 P2
       96 CAPTURE                          VAL R8
       97 SETTABLEKS                       R20 R19 K30 ["onGenerate"]
       99 SETTABLEKS                       R19 R18 K20 ["BottomComponentProps"]
      101 SETTABLEKS                       R11 R18 K21 ["Disabled"]
      103 GETTABLEKS                       R19 R1 K22 ["MultiLine"]
      105 SETTABLEKS                       R19 R18 K22 ["MultiLine"]
      107 NEWCLOSURE                       R19 P3
      108 CAPTURE                          VAL R8
      109 SETTABLEKS                       R19 R18 K23 ["OnEnter"]
      111 SETTABLEKS                       R6 R18 K24 ["OnTextChanged"]
      113 GETIMPORT                        R22 K34 [script]
      115 GETTABLEKS                       R21 R22 K35 ["Name"]
      117 LOADK                            R22 K36 ["PromptPlaceholderText"]
      118 NAMECALL                         R19 R9 K37 ["getText"]
      120 CALL                             R19 3 1
      121 SETTABLEKS                       R19 R18 K25 ["PlaceholderText"]
      123 SETTABLEKS                       R7 R18 K26 ["ForwardRef"]
      125 GETIMPORT                        R19 K40 [UDim2.fromScale]
      127 LOADN                            R20 1
      128 LOADN                            R21 1
      129 CALL                             R19 2 1
      130 SETTABLEKS                       R19 R18 K15 ["Size"]
      132 SETTABLEKS                       R5 R18 K27 ["Text"]
      134 CALL                             R16 2 1
      135 SETTABLEKS                       R16 R15 K17 ["PromptTextInput"]
      137 CALL                             R12 3 -1
      138 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R3 K11 ["Stylizer"]
       27 GETTABLEKS                       R6 R1 K12 ["UI"]
       29 GETTABLEKS                       R7 R6 K13 ["Pane"]
       31 GETTABLEKS                       R8 R6 K14 ["TextInput"]
       33 GETIMPORT                        R9 K5 [require]
       35 GETTABLEKS                       R12 R0 K15 ["Src"]
       37 GETTABLEKS                       R11 R12 K16 ["Components"]
       39 GETTABLEKS                       R10 R11 K17 ["PromptToolbar"]
       41 CALL                             R9 1 1
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R13 R0 K15 ["Src"]
       46 GETTABLEKS                       R12 R13 K18 ["Util"]
       48 GETTABLEKS                       R11 R12 K19 ["GenerationContext"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R14 R0 K15 ["Src"]
       55 GETTABLEKS                       R13 R14 K20 ["Resources"]
       57 GETTABLEKS                       R12 R13 K21 ["Theme"]
       59 CALL                             R11 1 1
       60 DUPCLOSURE                       R12 K22 [PROTO_4]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 RETURN                           R12 1
