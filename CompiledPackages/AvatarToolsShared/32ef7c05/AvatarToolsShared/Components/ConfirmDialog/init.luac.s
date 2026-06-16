PROTO_0:
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
       16 GETTABLEKS                       R6 R1 K8 ["Resizable"]
       18 GETTABLEKS                       R7 R1 K9 ["ConfirmText"]
       20 JUMPIF                           R7 ; [+7]
       21 GETTABLEKS                       R7 R1 K1 ["Localization"]
       23 LOADK                            R9 K3 ["Dialog"]
       24 LOADK                            R10 K10 ["Confirm"]
       25 NAMECALL                         R7 R7 K5 ["getText"]
       27 CALL                             R7 3 1
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K11 ["createElement"]
       31 GETUPVAL                         R9 1
       32 DUPTABLE                         R10 K16 [{"Title", "OnClose", "OnButtonPressed", "Buttons", "MinContentSize", "Resizable", "Modal"}]
       33 SETTABLEKS                       R3 R10 K2 ["Title"]
       35 SETTABLEKS                       R5 R10 K7 ["OnClose"]
       37 SETTABLEKS                       R5 R10 K12 ["OnButtonPressed"]
       39 NEWTABLE                         R11 0 1
       41 DUPTABLE                         R12 K20 [{"Text", "Key", "Style"}]
       42 SETTABLEKS                       R7 R12 K17 ["Text"]
       44 LOADK                            R13 K10 ["Confirm"]
       45 SETTABLEKS                       R13 R12 K18 ["Key"]
       47 LOADK                            R13 K21 ["Round"]
       48 SETTABLEKS                       R13 R12 K19 ["Style"]
       50 SETLIST                          R11 R12 1 [1]
       52 SETTABLEKS                       R11 R10 K13 ["Buttons"]
       54 GETTABLEKS                       R11 R4 K22 ["PopupMessageSize"]
       56 SETTABLEKS                       R11 R10 K14 ["MinContentSize"]
       58 SETTABLEKS                       R6 R10 K8 ["Resizable"]
       60 LOADB                            R11 1
       61 SETTABLEKS                       R11 R10 K15 ["Modal"]
       63 DUPTABLE                         R11 K24 [{"PromptPane"}]
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K11 ["createElement"]
       67 GETUPVAL                         R13 2
       68 DUPTABLE                         R14 K28 [{"Layout", "Spacing", "Padding"}]
       69 GETIMPORT                        R15 K32 [Enum.FillDirection.Vertical]
       71 SETTABLEKS                       R15 R14 K25 ["Layout"]
       73 GETTABLEKS                       R15 R4 K26 ["Spacing"]
       75 SETTABLEKS                       R15 R14 K26 ["Spacing"]
       77 GETTABLEKS                       R15 R4 K27 ["Padding"]
       79 SETTABLEKS                       R15 R14 K27 ["Padding"]
       81 DUPTABLE                         R15 K34 [{"Message"}]
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R16 R16 K11 ["createElement"]
       85 GETUPVAL                         R17 3
       86 DUPTABLE                         R18 K39 [{"Size", "AutomaticSize", "Text", "BackgroundTransparency", "TextWrapped"}]
       87 GETIMPORT                        R19 K42 [UDim2.new]
       89 LOADN                            R20 1
       90 LOADN                            R21 0
       91 LOADN                            R22 0
       92 LOADN                            R23 0
       93 CALL                             R19 4 1
       94 SETTABLEKS                       R19 R18 K35 ["Size"]
       96 GETIMPORT                        R19 K44 [Enum.AutomaticSize.Y]
       98 SETTABLEKS                       R19 R18 K36 ["AutomaticSize"]
      100 GETTABLEKS                       R19 R1 K17 ["Text"]
      102 SETTABLEKS                       R19 R18 K17 ["Text"]
      104 LOADN                            R19 1
      105 SETTABLEKS                       R19 R18 K37 ["BackgroundTransparency"]
      107 LOADB                            R19 1
      108 SETTABLEKS                       R19 R18 K38 ["TextWrapped"]
      110 CALL                             R16 2 1
      111 SETTABLEKS                       R16 R15 K33 ["Message"]
      113 CALL                             R12 3 1
      114 SETTABLEKS                       R12 R11 K23 ["PromptPane"]
      116 CALL                             R8 3 -1
      117 RETURN                           R8 -1

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
       29 GETTABLEKS                       R6 R2 K9 ["PureComponent"]
       31 LOADK                            R8 K10 ["ConfirmDialog"]
       32 NAMECALL                         R6 R6 K11 ["extend"]
       34 CALL                             R6 2 1
       35 GETTABLEKS                       R7 R3 K12 ["UI"]
       37 GETTABLEKS                       R8 R7 K13 ["Pane"]
       39 GETTABLEKS                       R9 R7 K14 ["TextLabel"]
       41 GETTABLEKS                       R10 R7 K15 ["StyledDialog"]
       43 GETTABLEKS                       R11 R3 K16 ["Util"]
       45 GETTABLEKS                       R12 R11 K17 ["Typecheck"]
       47 GETTABLEKS                       R13 R12 K18 ["wrap"]
       49 MOVE                             R14 R6
       50 GETIMPORT                        R15 K1 [script]
       52 CALL                             R13 2 0
       53 DUPCLOSURE                       R13 K19 [PROTO_0]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R9
       58 SETTABLEKS                       R13 R6 K20 ["render"]
       60 MOVE                             R13 R5
       61 DUPTABLE                         R14 K23 [{"Stylizer", "Localization"}]
       62 GETTABLEKS                       R15 R4 K21 ["Stylizer"]
       64 SETTABLEKS                       R15 R14 K21 ["Stylizer"]
       66 GETTABLEKS                       R15 R4 K22 ["Localization"]
       68 SETTABLEKS                       R15 R14 K22 ["Localization"]
       70 CALL                             R13 1 1
       71 MOVE                             R14 R6
       72 CALL                             R13 1 1
       73 MOVE                             R6 R13
       74 RETURN                           R6 1
