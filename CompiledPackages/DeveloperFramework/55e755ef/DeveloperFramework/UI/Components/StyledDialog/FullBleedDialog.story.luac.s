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
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
       14 LOADN                            R4 2
       15 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       17 LOADK                            R4 K10 ["Round"]
       18 SETTABLEKS                       R4 R3 K3 ["Style"]
       20 LOADK                            R4 K11 ["Open FullBleed Dialog"]
       21 SETTABLEKS                       R4 R3 K4 ["Text"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R4 R3 K5 ["OnClick"]
       27 DUPTABLE                         R4 K13 [{"Dialog"}]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["createElement"]
       31 GETUPVAL                         R6 2
       32 DUPTABLE                         R7 K21 [{"Style", "Enabled", "Resizable", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
       33 LOADK                            R8 K22 ["FullBleed"]
       34 SETTABLEKS                       R8 R7 K3 ["Style"]
       36 GETTABLEKS                       R8 R0 K23 ["state"]
       38 GETTABLEKS                       R8 R8 K24 ["enabled"]
       40 SETTABLEKS                       R8 R7 K14 ["Enabled"]
       42 LOADB                            R8 1
       43 SETTABLEKS                       R8 R7 K15 ["Resizable"]
       45 LOADK                            R8 K25 ["Styled Dialog examples"]
       46 SETTABLEKS                       R8 R7 K16 ["Title"]
       48 GETIMPORT                        R8 K27 [Vector2.new]
       50 LOADN                            R9 144
       51 LOADN                            R10 100
       52 CALL                             R8 2 1
       53 SETTABLEKS                       R8 R7 K17 ["MinContentSize"]
       55 NEWTABLE                         R8 0 1
       57 DUPTABLE                         R9 K29 [{"Key", "Text"}]
       58 LOADK                            R10 K30 ["ok"]
       59 SETTABLEKS                       R10 R9 K28 ["Key"]
       61 LOADK                            R10 K31 ["OK"]
       62 SETTABLEKS                       R10 R9 K4 ["Text"]
       64 SETLIST                          R8 R9 1 [1]
       66 SETTABLEKS                       R8 R7 K18 ["Buttons"]
       68 NEWCLOSURE                       R8 P1
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R8 R7 K19 ["OnButtonPressed"]
       72 NEWCLOSURE                       R8 P2
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R8 R7 K20 ["OnClose"]
       76 DUPTABLE                         R8 K33 [{"Contents"}]
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K0 ["createElement"]
       80 LOADK                            R10 K34 ["Frame"]
       81 DUPTABLE                         R11 K36 [{"BackgroundColor3", "Size"}]
       82 GETIMPORT                        R12 K38 [Color3.new]
       84 LOADN                            R13 0
       85 LOADN                            R14 1
       86 LOADN                            R15 0
       87 CALL                             R12 3 1
       88 SETTABLEKS                       R12 R11 K35 ["BackgroundColor3"]
       90 GETIMPORT                        R12 K40 [UDim2.fromScale]
       92 LOADN                            R13 1
       93 LOADN                            R14 1
       94 CALL                             R12 2 1
       95 SETTABLEKS                       R12 R11 K1 ["Size"]
       97 DUPTABLE                         R12 K42 [{"Label"}]
       98 GETUPVAL                         R13 0
       99 GETTABLEKS                       R13 R13 K0 ["createElement"]
      101 GETUPVAL                         R14 3
      102 DUPTABLE                         R15 K45 [{"Size", "Text", "TextColor", "TextWrapped"}]
      103 GETIMPORT                        R16 K40 [UDim2.fromScale]
      105 LOADN                            R17 1
      106 LOADN                            R18 1
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K1 ["Size"]
      110 LOADK                            R16 K46 ["No padding is added to content above the button container"]
      111 SETTABLEKS                       R16 R15 K4 ["Text"]
      113 GETIMPORT                        R16 K38 [Color3.new]
      115 LOADN                            R17 0
      116 LOADN                            R18 0
      117 LOADN                            R19 0
      118 CALL                             R16 3 1
      119 SETTABLEKS                       R16 R15 K43 ["TextColor"]
      121 LOADB                            R16 1
      122 SETTABLEKS                       R16 R15 K44 ["TextWrapped"]
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K41 ["Label"]
      127 CALL                             R9 3 1
      128 SETTABLEKS                       R9 R8 K32 ["Contents"]
      130 CALL                             R5 3 1
      131 SETTABLEKS                       R5 R4 K12 ["Dialog"]
      133 CALL                             R1 3 -1
      134 RETURN                           R1 -1

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
       22 GETTABLEKS                       R3 R3 K9 ["StyledDialog"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["DEPRECATED_Button"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["TextLabel"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       45 LOADK                            R7 K13 ["FullBleedDialogStory"]
       46 NAMECALL                         R5 R5 K14 ["extend"]
       48 CALL                             R5 2 1
       49 DUPCLOSURE                       R6 K15 [PROTO_0]
       50 SETTABLEKS                       R6 R5 K16 ["init"]
       52 DUPCLOSURE                       R6 K17 [PROTO_4]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R6 R5 K18 ["render"]
       59 RETURN                           R5 1
