PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnClose"]
        3 CALL                             R1 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["Confirm"] ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["OnConfirm"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 SETTABLEKS                       R2 R0 K1 ["onMessageBoxButtonClicked"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["GuiService"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["Link"]
        7 GETTABLEKS                       R2 R2 K4 ["Url"]
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
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K8 ["createElement"]
       19 GETUPVAL                         R7 1
       20 DUPTABLE                         R8 K16 [{["Style"] = "FullBleed", ["Title"], ["OnClose"], ["OnButtonPressed"], ["Buttons"], ["MinContentSize"], ["Modal"] = True}]
       21 SETTABLEKS                       R3 R8 K2 ["Title"]
       23 SETTABLEKS                       R5 R8 K7 ["OnClose"]
       25 GETTABLEKS                       R9 R0 K17 ["onMessageBoxButtonClicked"]
       27 SETTABLEKS                       R9 R8 K11 ["OnButtonPressed"]
       29 NEWTABLE                         R9 0 2
       31 DUPTABLE                         R10 K22 [{["Text"], ["Key"] = "Confirm", ["Style"] = "Round"}]
       32 GETTABLEKS                       R11 R1 K23 ["ConfirmText"]
       34 JUMPIF                           R11 ; [+7]
       35 GETTABLEKS                       R11 R1 K1 ["Localization"]
       37 LOADK                            R13 K3 ["Dialog"]
       38 LOADK                            R14 K20 ["Confirm"]
       39 NAMECALL                         R11 R11 K5 ["getText"]
       41 CALL                             R11 3 1
       42 SETTABLEKS                       R11 R10 K18 ["Text"]
       44 DUPTABLE                         R11 K25 [{["Text"], ["Key"] = "Cancel", ["Style"] = "Round"}]
       45 GETTABLEKS                       R12 R1 K26 ["CancelText"]
       47 JUMPIF                           R12 ; [+7]
       48 GETTABLEKS                       R12 R1 K1 ["Localization"]
       50 LOADK                            R14 K3 ["Dialog"]
       51 LOADK                            R15 K24 ["Cancel"]
       52 NAMECALL                         R12 R12 K5 ["getText"]
       54 CALL                             R12 3 1
       55 SETTABLEKS                       R12 R11 K18 ["Text"]
       57 SETLIST                          R9 R10 2 [1]
       59 SETTABLEKS                       R9 R8 K12 ["Buttons"]
       61 GETTABLEKS                       R9 R4 K27 ["PopupMessageSize"]
       63 SETTABLEKS                       R9 R8 K13 ["MinContentSize"]
       65 DUPTABLE                         R9 K29 [{"PromptPane"}]
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R10 R10 K8 ["createElement"]
       69 GETUPVAL                         R11 2
       70 DUPTABLE                         R12 K34 [{["Layout"], ["Spacing"] = 15, ["Padding"]}]
       71 GETIMPORT                        R13 K38 [Enum.FillDirection.Vertical]
       73 SETTABLEKS                       R13 R12 K30 ["Layout"]
       75 DUPTABLE                         R13 K42 [{["Left"] = 12, ["Right"] = 12}]
       76 SETTABLEKS                       R13 R12 K33 ["Padding"]
       78 DUPTABLE                         R13 K45 [{"Message", "HelpLink"}]
       79 GETUPVAL                         R14 0
       80 GETTABLEKS                       R14 R14 K8 ["createElement"]
       82 GETUPVAL                         R15 3
       83 DUPTABLE                         R16 K52 [{["Size"], ["AutomaticSize"], ["Text"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["LayoutOrder"] = 1}]
       84 GETIMPORT                        R17 K55 [UDim2.new]
       86 LOADN                            R18 1
       87 LOADN                            R19 0
       88 LOADN                            R20 0
       89 LOADN                            R21 0
       90 CALL                             R17 4 1
       91 SETTABLEKS                       R17 R16 K46 ["Size"]
       93 GETIMPORT                        R17 K57 [Enum.AutomaticSize.Y]
       95 SETTABLEKS                       R17 R16 K47 ["AutomaticSize"]
       97 GETTABLEKS                       R17 R1 K18 ["Text"]
       99 SETTABLEKS                       R17 R16 K18 ["Text"]
      101 CALL                             R14 2 1
      102 SETTABLEKS                       R14 R13 K43 ["Message"]
      104 GETTABLEKS                       R15 R1 K58 ["Link"]
      106 JUMPIFNOT                        R15 ; [+17]
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R14 R14 K8 ["createElement"]
      110 GETUPVAL                         R15 4
      111 DUPTABLE                         R16 K61 [{["Text"], ["LayoutOrder"] = 2, ["OnClick"]}]
      112 GETTABLEKS                       R17 R1 K58 ["Link"]
      114 GETTABLEKS                       R17 R17 K18 ["Text"]
      116 SETTABLEKS                       R17 R16 K18 ["Text"]
      118 NEWCLOSURE                       R17 P0
      119 CAPTURE                          VAL R1
      120 SETTABLEKS                       R17 R16 K60 ["OnClick"]
      122 CALL                             R14 2 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R14
      125 SETTABLEKS                       R14 R13 K44 ["HelpLink"]
      127 CALL                             R10 3 1
      128 SETTABLEKS                       R10 R9 K28 ["PromptPane"]
      130 CALL                             R6 3 -1
      131 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
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
