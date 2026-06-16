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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"Size", "LayoutOrder", "Style", "Text", "OnClick"}]
        5 GETIMPORT                        R4 K9 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 30
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 LOADN                            R4 3
       15 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       17 LOADK                            R4 K10 ["Round"]
       18 SETTABLEKS                       R4 R3 K3 ["Style"]
       20 LOADK                            R4 K11 ["Open AcceptCancel Dialog"]
       21 SETTABLEKS                       R4 R3 K4 ["Text"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R4 R3 K5 ["OnClick"]
       27 DUPTABLE                         R4 K13 [{"Dialog"}]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["createElement"]
       31 GETUPVAL                         R6 2
       32 DUPTABLE                         R7 K21 [{"Style", "Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
       33 LOADK                            R8 K22 ["AcceptCancel"]
       34 SETTABLEKS                       R8 R7 K3 ["Style"]
       36 GETTABLEKS                       R8 R0 K23 ["state"]
       38 GETTABLEKS                       R8 R8 K24 ["enabled"]
       40 SETTABLEKS                       R8 R7 K14 ["Enabled"]
       42 LOADB                            R8 1
       43 SETTABLEKS                       R8 R7 K15 ["Modal"]
       45 LOADK                            R8 K25 ["Styled Dialog examples"]
       46 SETTABLEKS                       R8 R7 K16 ["Title"]
       48 GETIMPORT                        R8 K27 [Vector2.new]
       50 LOADN                            R9 144
       51 LOADN                            R10 100
       52 CALL                             R8 2 1
       53 SETTABLEKS                       R8 R7 K17 ["MinContentSize"]
       55 NEWTABLE                         R8 0 2
       57 DUPTABLE                         R9 K29 [{"Key", "Text"}]
       58 LOADK                            R10 K30 ["accept"]
       59 SETTABLEKS                       R10 R9 K28 ["Key"]
       61 LOADK                            R10 K31 ["Yeah OK"]
       62 SETTABLEKS                       R10 R9 K4 ["Text"]
       64 DUPTABLE                         R10 K29 [{"Key", "Text"}]
       65 LOADK                            R11 K32 ["cancel"]
       66 SETTABLEKS                       R11 R10 K28 ["Key"]
       68 LOADK                            R11 K33 ["Not OK"]
       69 SETTABLEKS                       R11 R10 K4 ["Text"]
       71 SETLIST                          R8 R9 2 [1]
       73 SETTABLEKS                       R8 R7 K18 ["Buttons"]
       75 NEWCLOSURE                       R8 P1
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R8 R7 K19 ["OnButtonPressed"]
       79 NEWCLOSURE                       R8 P2
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R8 R7 K20 ["OnClose"]
       83 DUPTABLE                         R8 K35 [{"Contents"}]
       84 GETUPVAL                         R9 0
       85 GETTABLEKS                       R9 R9 K0 ["createElement"]
       87 LOADK                            R10 K36 ["TextLabel"]
       88 DUPTABLE                         R11 K41 [{"BackgroundTransparency", "TextSize", "Text", "TextColor3", "Size", "Position"}]
       89 LOADN                            R12 1
       90 SETTABLEKS                       R12 R11 K37 ["BackgroundTransparency"]
       92 LOADN                            R12 50
       93 SETTABLEKS                       R12 R11 K38 ["TextSize"]
       95 LOADK                            R12 K42 ["Accept?"]
       96 SETTABLEKS                       R12 R11 K4 ["Text"]
       98 GETIMPORT                        R12 K44 [Color3.new]
      100 LOADN                            R13 1
      101 LOADN                            R14 1
      102 LOADN                            R15 1
      103 CALL                             R12 3 1
      104 SETTABLEKS                       R12 R11 K39 ["TextColor3"]
      106 GETIMPORT                        R12 K46 [UDim2.fromScale]
      108 LOADN                            R13 1
      109 LOADN                            R14 1
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K1 ["Size"]
      113 GETIMPORT                        R12 K46 [UDim2.fromScale]
      115 LOADN                            R13 0
      116 LOADN                            R14 0
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K40 ["Position"]
      120 CALL                             R9 2 1
      121 SETTABLEKS                       R9 R8 K34 ["Contents"]
      123 CALL                             R5 3 1
      124 SETTABLEKS                       R5 R4 K12 ["Dialog"]
      126 CALL                             R1 3 -1
      127 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["DEPRECATED_Button"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["StyledDialog"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["CancelDialog"]
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
