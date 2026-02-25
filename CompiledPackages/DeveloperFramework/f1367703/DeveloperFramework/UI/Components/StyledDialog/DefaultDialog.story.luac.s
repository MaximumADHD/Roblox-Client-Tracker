PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["enabled"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Dialog button pressed : "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K4 [{"enabled"}]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K3 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"Size", "LayoutOrder", "Style", "Text", "OnClick"}]
        5 GETIMPORT                        R4 K9 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 30
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 LOADN                            R4 1
       15 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       17 LOADK                            R4 K10 ["Round"]
       18 SETTABLEKS                       R4 R3 K3 ["Style"]
       20 LOADK                            R4 K11 ["Open Default Dialog"]
       21 SETTABLEKS                       R4 R3 K4 ["Text"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R4 R3 K5 ["OnClick"]
       27 DUPTABLE                         R4 K13 [{"Dialog"}]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K0 ["createElement"]
       31 GETUPVAL                         R6 2
       32 DUPTABLE                         R7 K21 [{"Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
       33 GETTABLEKS                       R9 R0 K22 ["state"]
       35 GETTABLEKS                       R8 R9 K23 ["enabled"]
       37 SETTABLEKS                       R8 R7 K14 ["Enabled"]
       39 LOADB                            R8 1
       40 SETTABLEKS                       R8 R7 K15 ["Modal"]
       42 LOADK                            R8 K24 ["Styled Dialog examples"]
       43 SETTABLEKS                       R8 R7 K16 ["Title"]
       45 GETIMPORT                        R8 K26 [Vector2.new]
       47 LOADN                            R9 144
       48 LOADN                            R10 100
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K17 ["MinContentSize"]
       52 NEWTABLE                         R8 0 1
       54 DUPTABLE                         R9 K28 [{"Key", "Text"}]
       55 LOADK                            R10 K29 ["ok"]
       56 SETTABLEKS                       R10 R9 K27 ["Key"]
       58 LOADK                            R10 K30 ["OK"]
       59 SETTABLEKS                       R10 R9 K4 ["Text"]
       61 SETLIST                          R8 R9 1 [1]
       63 SETTABLEKS                       R8 R7 K18 ["Buttons"]
       65 NEWCLOSURE                       R8 P1
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R8 R7 K19 ["OnButtonPressed"]
       69 NEWCLOSURE                       R8 P2
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R8 R7 K20 ["OnClose"]
       73 DUPTABLE                         R8 K32 [{"Contents"}]
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R9 R10 K0 ["createElement"]
       77 LOADK                            R10 K33 ["TextLabel"]
       78 DUPTABLE                         R11 K38 [{"BackgroundTransparency", "TextSize", "Text", "TextColor3", "Size", "Position"}]
       79 LOADN                            R12 1
       80 SETTABLEKS                       R12 R11 K34 ["BackgroundTransparency"]
       82 LOADN                            R12 50
       83 SETTABLEKS                       R12 R11 K35 ["TextSize"]
       85 LOADK                            R12 K39 ["Hello"]
       86 SETTABLEKS                       R12 R11 K4 ["Text"]
       88 GETIMPORT                        R12 K41 [Color3.new]
       90 LOADN                            R13 0
       91 LOADN                            R14 0
       92 LOADN                            R15 0
       93 CALL                             R12 3 1
       94 SETTABLEKS                       R12 R11 K36 ["TextColor3"]
       96 GETIMPORT                        R12 K43 [UDim2.fromScale]
       98 LOADN                            R13 1
       99 LOADN                            R14 1
      100 CALL                             R12 2 1
      101 SETTABLEKS                       R12 R11 K1 ["Size"]
      103 GETIMPORT                        R12 K43 [UDim2.fromScale]
      105 LOADN                            R13 0
      106 LOADN                            R14 0
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K37 ["Position"]
      110 CALL                             R9 2 1
      111 SETTABLEKS                       R9 R8 K31 ["Contents"]
      113 CALL                             R5 3 1
      114 SETTABLEKS                       R5 R4 K12 ["Dialog"]
      116 CALL                             R1 3 -1
      117 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["DEPRECATED_Button"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["StyledDialog"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["DefaultDialog"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K14 [PROTO_0]
       41 SETTABLEKS                       R5 R4 K15 ["init"]
       43 DUPCLOSURE                       R5 K16 [PROTO_4]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R5 R4 K17 ["render"]
       49 RETURN                           R4 1
