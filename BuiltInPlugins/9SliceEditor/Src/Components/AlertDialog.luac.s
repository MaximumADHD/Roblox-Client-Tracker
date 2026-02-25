PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["props"]
       11 GETTABLEKS                       R0 R1 K4 ["OnClose"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R4 K1 [{"enabled"}]
        1 GETTABLEKS                       R5 R1 K2 ["Enabled"]
        3 SETTABLEKS                       R5 R4 K0 ["enabled"]
        5 NAMECALL                         R2 R0 K3 ["setState"]
        7 CALL                             R2 2 0
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R0 K4 ["closeDialog"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K12 [{"Style", "Enabled", "Title", "Buttons", "OnButtonPressed", "OnClose", "MinContentSize", "Modal"}]
       11 LOADK                            R7 K13 ["Alert"]
       12 SETTABLEKS                       R7 R6 K4 ["Style"]
       14 GETTABLEKS                       R8 R0 K14 ["state"]
       16 GETTABLEKS                       R7 R8 K15 ["enabled"]
       18 SETTABLEKS                       R7 R6 K5 ["Enabled"]
       20 LOADK                            R9 K16 ["AlertDialog"]
       21 GETTABLEKS                       R10 R1 K17 ["TitleKey"]
       23 NAMECALL                         R7 R3 K18 ["getText"]
       25 CALL                             R7 3 1
       26 SETTABLEKS                       R7 R6 K6 ["Title"]
       28 NEWTABLE                         R7 0 1
       30 DUPTABLE                         R8 K21 [{"Key", "Text"}]
       31 LOADK                            R9 K22 ["ok"]
       32 SETTABLEKS                       R9 R8 K19 ["Key"]
       34 LOADK                            R11 K16 ["AlertDialog"]
       35 LOADK                            R12 K23 ["OkButtonText"]
       36 NAMECALL                         R9 R3 K18 ["getText"]
       38 CALL                             R9 3 1
       39 SETTABLEKS                       R9 R8 K20 ["Text"]
       41 SETLIST                          R7 R8 1 [1]
       43 SETTABLEKS                       R7 R6 K7 ["Buttons"]
       45 GETTABLEKS                       R7 R0 K24 ["closeDialog"]
       47 SETTABLEKS                       R7 R6 K8 ["OnButtonPressed"]
       49 GETTABLEKS                       R7 R1 K9 ["OnClose"]
       51 SETTABLEKS                       R7 R6 K9 ["OnClose"]
       53 GETTABLEKS                       R7 R2 K25 ["PopupMessageSize"]
       55 SETTABLEKS                       R7 R6 K10 ["MinContentSize"]
       57 LOADB                            R7 1
       58 SETTABLEKS                       R7 R6 K11 ["Modal"]
       60 DUPTABLE                         R7 K27 [{"Label"}]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R8 R9 K3 ["createElement"]
       64 GETUPVAL                         R9 2
       65 DUPTABLE                         R10 K35 [{"Size", "AnchorPoint", "Position", "Text", "TextColor", "TextWrapped", "TextSize", "TextXAlignment"}]
       66 GETIMPORT                        R11 K38 [UDim2.fromScale]
       68 LOADK                            R12 K39 [0.95]
       69 LOADN                            R13 1
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K28 ["Size"]
       73 GETIMPORT                        R11 K42 [Vector2.new]
       75 LOADK                            R12 K43 [0.5]
       76 LOADN                            R13 0
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K29 ["AnchorPoint"]
       80 GETIMPORT                        R11 K38 [UDim2.fromScale]
       82 LOADK                            R12 K43 [0.5]
       83 LOADN                            R13 0
       84 CALL                             R11 2 1
       85 SETTABLEKS                       R11 R10 K30 ["Position"]
       87 LOADK                            R13 K16 ["AlertDialog"]
       88 GETTABLEKS                       R14 R1 K44 ["MessageKey"]
       90 GETTABLEKS                       R15 R1 K45 ["MessageKeyFormatTable"]
       92 NAMECALL                         R11 R3 K18 ["getText"]
       94 CALL                             R11 4 1
       95 SETTABLEKS                       R11 R10 K20 ["Text"]
       97 GETTABLEKS                       R11 R2 K31 ["TextColor"]
       99 SETTABLEKS                       R11 R10 K31 ["TextColor"]
      101 LOADB                            R11 1
      102 SETTABLEKS                       R11 R10 K32 ["TextWrapped"]
      104 GETTABLEKS                       R11 R2 K33 ["TextSize"]
      106 SETTABLEKS                       R11 R10 K33 ["TextSize"]
      108 GETIMPORT                        R11 K48 [Enum.TextXAlignment.Left]
      110 SETTABLEKS                       R11 R10 K34 ["TextXAlignment"]
      112 CALL                             R8 2 1
      113 SETTABLEKS                       R8 R7 K26 ["Label"]
      115 CALL                             R4 3 -1
      116 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Localization"]
       29 GETTABLEKS                       R6 R2 K11 ["UI"]
       31 GETTABLEKS                       R7 R6 K12 ["TextLabel"]
       33 GETTABLEKS                       R8 R6 K13 ["StyledDialog"]
       35 GETTABLEKS                       R9 R1 K14 ["PureComponent"]
       37 LOADK                            R11 K15 ["AlertDialog"]
       38 NAMECALL                         R9 R9 K16 ["extend"]
       40 CALL                             R9 2 1
       41 DUPCLOSURE                       R10 K17 [PROTO_1]
       42 SETTABLEKS                       R10 R9 K18 ["init"]
       44 DUPCLOSURE                       R10 K19 [PROTO_2]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R7
       48 SETTABLEKS                       R10 R9 K20 ["render"]
       50 MOVE                             R10 R4
       51 DUPTABLE                         R11 K22 [{"Localization", "Stylizer"}]
       52 SETTABLEKS                       R5 R11 K10 ["Localization"]
       54 GETTABLEKS                       R12 R3 K21 ["Stylizer"]
       56 SETTABLEKS                       R12 R11 K21 ["Stylizer"]
       58 CALL                             R10 1 1
       59 MOVE                             R11 R9
       60 CALL                             R10 1 1
       61 MOVE                             R9 R10
       62 RETURN                           R9 1
