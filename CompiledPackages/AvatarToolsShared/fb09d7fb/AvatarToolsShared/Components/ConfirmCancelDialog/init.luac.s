PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnClose"]
        3 CALL                             R1 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["Confirm"] ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["OnConfirm"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 SETTABLEKS                       R2 R0 K1 ["onMessageBoxButtonClicked"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R0 R1 K2 ["GuiService"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K3 ["Link"]
        7 GETTABLEKS                       R2 R3 K4 ["Url"]
        9 NAMECALL                         R0 R0 K5 ["OpenBrowserWindow"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 JUMPIF                           R3 ; [+5]
        7 LOADK                            R5 K3 ["Dialog"]
        8 LOADK                            R6 K4 ["DefaultTitle"]
        9 NAMECALL                         R3 R2 K5 ["getText"]
       11 CALL                             R3 3 1
       12 GETTABLEKS                       R4 R1 K6 ["Stylizer"]
       14 GETTABLEKS                       R5 R1 K7 ["OnClose"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K8 ["createElement"]
       19 GETUPVAL                         R7 1
       20 DUPTABLE                         R8 K14 [{"Style", "Title", "OnClose", "OnButtonPressed", "Buttons", "MinContentSize", "Modal"}]
       21 LOADK                            R9 K15 ["FullBleed"]
       22 SETTABLEKS                       R9 R8 K9 ["Style"]
       24 SETTABLEKS                       R3 R8 K2 ["Title"]
       26 SETTABLEKS                       R5 R8 K7 ["OnClose"]
       28 GETTABLEKS                       R9 R0 K16 ["onMessageBoxButtonClicked"]
       30 SETTABLEKS                       R9 R8 K10 ["OnButtonPressed"]
       32 NEWTABLE                         R9 0 2
       34 DUPTABLE                         R10 K19 [{"Text", "Key", "Style"}]
       35 GETTABLEKS                       R11 R1 K20 ["ConfirmText"]
       37 JUMPIF                           R11 ; [+7]
       38 GETTABLEKS                       R11 R1 K1 ["Localization"]
       40 LOADK                            R13 K3 ["Dialog"]
       41 LOADK                            R14 K21 ["Confirm"]
       42 NAMECALL                         R11 R11 K5 ["getText"]
       44 CALL                             R11 3 1
       45 SETTABLEKS                       R11 R10 K17 ["Text"]
       47 LOADK                            R11 K21 ["Confirm"]
       48 SETTABLEKS                       R11 R10 K18 ["Key"]
       50 LOADK                            R11 K22 ["Round"]
       51 SETTABLEKS                       R11 R10 K9 ["Style"]
       53 DUPTABLE                         R11 K19 [{"Text", "Key", "Style"}]
       54 GETTABLEKS                       R12 R1 K23 ["CancelText"]
       56 JUMPIF                           R12 ; [+7]
       57 GETTABLEKS                       R12 R1 K1 ["Localization"]
       59 LOADK                            R14 K3 ["Dialog"]
       60 LOADK                            R15 K24 ["Cancel"]
       61 NAMECALL                         R12 R12 K5 ["getText"]
       63 CALL                             R12 3 1
       64 SETTABLEKS                       R12 R11 K17 ["Text"]
       66 LOADK                            R12 K24 ["Cancel"]
       67 SETTABLEKS                       R12 R11 K18 ["Key"]
       69 LOADK                            R12 K22 ["Round"]
       70 SETTABLEKS                       R12 R11 K9 ["Style"]
       72 SETLIST                          R9 R10 2 [1]
       74 SETTABLEKS                       R9 R8 K11 ["Buttons"]
       76 GETTABLEKS                       R9 R4 K25 ["PopupMessageSize"]
       78 SETTABLEKS                       R9 R8 K12 ["MinContentSize"]
       80 LOADB                            R9 1
       81 SETTABLEKS                       R9 R8 K13 ["Modal"]
       83 DUPTABLE                         R9 K27 [{"PromptPane"}]
       84 GETUPVAL                         R11 0
       85 GETTABLEKS                       R10 R11 K8 ["createElement"]
       87 GETUPVAL                         R11 2
       88 DUPTABLE                         R12 K31 [{"Layout", "Spacing", "Padding"}]
       89 GETIMPORT                        R13 K35 [Enum.FillDirection.Vertical]
       91 SETTABLEKS                       R13 R12 K28 ["Layout"]
       93 LOADN                            R13 15
       94 SETTABLEKS                       R13 R12 K29 ["Spacing"]
       96 DUPTABLE                         R13 K38 [{"Left", "Right"}]
       97 LOADN                            R14 12
       98 SETTABLEKS                       R14 R13 K36 ["Left"]
      100 LOADN                            R14 12
      101 SETTABLEKS                       R14 R13 K37 ["Right"]
      103 SETTABLEKS                       R13 R12 K30 ["Padding"]
      105 DUPTABLE                         R13 K41 [{"Message", "HelpLink"}]
      106 GETUPVAL                         R15 0
      107 GETTABLEKS                       R14 R15 K8 ["createElement"]
      109 GETUPVAL                         R15 3
      110 DUPTABLE                         R16 K47 [{"Size", "AutomaticSize", "Text", "BackgroundTransparency", "TextWrapped", "LayoutOrder"}]
      111 GETIMPORT                        R17 K50 [UDim2.new]
      113 LOADN                            R18 1
      114 LOADN                            R19 0
      115 LOADN                            R20 0
      116 LOADN                            R21 0
      117 CALL                             R17 4 1
      118 SETTABLEKS                       R17 R16 K42 ["Size"]
      120 GETIMPORT                        R17 K52 [Enum.AutomaticSize.Y]
      122 SETTABLEKS                       R17 R16 K43 ["AutomaticSize"]
      124 GETTABLEKS                       R17 R1 K17 ["Text"]
      126 SETTABLEKS                       R17 R16 K17 ["Text"]
      128 LOADN                            R17 1
      129 SETTABLEKS                       R17 R16 K44 ["BackgroundTransparency"]
      131 LOADB                            R17 1
      132 SETTABLEKS                       R17 R16 K45 ["TextWrapped"]
      134 LOADN                            R17 1
      135 SETTABLEKS                       R17 R16 K46 ["LayoutOrder"]
      137 CALL                             R14 2 1
      138 SETTABLEKS                       R14 R13 K39 ["Message"]
      140 GETTABLEKS                       R15 R1 K53 ["Link"]
      142 JUMPIFNOT                        R15 ; [+20]
      143 GETUPVAL                         R15 0
      144 GETTABLEKS                       R14 R15 K8 ["createElement"]
      146 GETUPVAL                         R15 4
      147 DUPTABLE                         R16 K55 [{"Text", "LayoutOrder", "OnClick"}]
      148 GETTABLEKS                       R18 R1 K53 ["Link"]
      150 GETTABLEKS                       R17 R18 K17 ["Text"]
      152 SETTABLEKS                       R17 R16 K17 ["Text"]
      154 LOADN                            R17 2
      155 SETTABLEKS                       R17 R16 K46 ["LayoutOrder"]
      157 NEWCLOSURE                       R17 P0
      158 CAPTURE                          VAL R1
      159 SETTABLEKS                       R17 R16 K54 ["OnClick"]
      161 CALL                             R14 2 1
      162 JUMP                             ; [+1]
      163 LOADNIL                          R14
      164 SETTABLEKS                       R14 R13 K40 ["HelpLink"]
      166 CALL                             R10 3 1
      167 SETTABLEKS                       R10 R9 K26 ["PromptPane"]
      169 CALL                             R6 3 -1
      170 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R4 K1 [script]
        9 GETTABLEKS                       R3 R4 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K2 ["Parent"]
       13 GETTABLEKS                       R1 R2 K2 ["Parent"]
       15 GETIMPORT                        R2 K4 [require]
       17 GETTABLEKS                       R3 R1 K5 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R1 K6 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K7 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K8 ["withContext"]
       29 GETTABLEKS                       R6 R3 K9 ["UI"]
       31 GETTABLEKS                       R7 R6 K10 ["Pane"]
       33 GETTABLEKS                       R8 R6 K11 ["LinkText"]
       35 GETTABLEKS                       R9 R6 K12 ["TextLabel"]
       37 GETTABLEKS                       R10 R6 K13 ["StyledDialog"]
       39 GETTABLEKS                       R11 R2 K14 ["PureComponent"]
       41 LOADK                            R13 K15 ["ConfirmCancelDialog"]
       42 NAMECALL                         R11 R11 K16 ["extend"]
       44 CALL                             R11 2 1
       45 GETTABLEKS                       R12 R3 K17 ["Util"]
       47 GETTABLEKS                       R13 R12 K18 ["Typecheck"]
       49 GETTABLEKS                       R14 R13 K19 ["wrap"]
       51 MOVE                             R15 R11
       52 GETIMPORT                        R16 K1 [script]
       54 CALL                             R14 2 0
       55 DUPCLOSURE                       R14 K20 [PROTO_1]
       56 SETTABLEKS                       R14 R11 K21 ["init"]
       58 DUPCLOSURE                       R14 K22 [PROTO_3]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R14 R11 K23 ["render"]
       66 MOVE                             R14 R5
       67 DUPTABLE                         R15 K26 [{"Stylizer", "Localization"}]
       68 GETTABLEKS                       R16 R4 K24 ["Stylizer"]
       70 SETTABLEKS                       R16 R15 K24 ["Stylizer"]
       72 GETTABLEKS                       R16 R4 K25 ["Localization"]
       74 SETTABLEKS                       R16 R15 K25 ["Localization"]
       76 CALL                             R14 1 1
       77 MOVE                             R15 R11
       78 CALL                             R14 1 1
       79 MOVE                             R11 R14
       80 RETURN                           R11 1
