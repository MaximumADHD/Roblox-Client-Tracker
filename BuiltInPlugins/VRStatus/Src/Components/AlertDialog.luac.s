PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 LOADK                            R6 K3 ["AlertDialog"]
        7 LOADK                            R7 K4 ["NoDeviceDetected"]
        8 NAMECALL                         R4 R3 K5 ["getText"]
       10 CALL                             R4 3 1
       11 GETTABLEKS                       R5 R0 K0 ["props"]
       13 GETTABLEKS                       R5 R5 K6 ["deviceName"]
       15 JUMPIFEQKS                       R5 K7 [""] ; [+33]
       17 GETTABLEKS                       R6 R0 K0 ["props"]
       19 GETTABLEKS                       R6 R6 K8 ["vrEnabled"]
       21 JUMPIFNOT                        R6 ; [+6]
       22 LOADK                            R7 K3 ["AlertDialog"]
       23 LOADK                            R8 K9 ["ModeOn"]
       24 NAMECALL                         R5 R3 K5 ["getText"]
       26 CALL                             R5 3 1
       27 JUMP                             ; [+5]
       28 LOADK                            R7 K3 ["AlertDialog"]
       29 LOADK                            R8 K10 ["ModeOff"]
       30 NAMECALL                         R5 R3 K5 ["getText"]
       32 CALL                             R5 3 1
       33 GETTABLEKS                       R6 R0 K0 ["props"]
       35 GETTABLEKS                       R6 R6 K6 ["deviceName"]
       37 LOADK                            R7 K11 [" "]
       38 LOADK                            R12 K3 ["AlertDialog"]
       39 LOADK                            R13 K12 ["Detected"]
       40 NAMECALL                         R10 R3 K5 ["getText"]
       42 CALL                             R10 3 1
       43 MOVE                             R8 R10
       44 LOADK                            R9 K13 [". "]
       45 CONCAT                           R4 R6 R9
       46 MOVE                             R6 R4
       47 MOVE                             R7 R5
       48 CONCAT                           R4 R6 R7
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K14 ["createElement"]
       52 GETUPVAL                         R6 1
       53 DUPTABLE                         R7 K23 [{"Style", "Enabled", "Title", "Buttons", "OnButtonPressed", "OnClose", "MinContentSize", "Modal"}]
       54 LOADK                            R8 K24 ["Alert"]
       55 SETTABLEKS                       R8 R7 K15 ["Style"]
       57 GETTABLEKS                       R8 R0 K0 ["props"]
       59 GETTABLEKS                       R8 R8 K25 ["enabled"]
       61 SETTABLEKS                       R8 R7 K16 ["Enabled"]
       63 LOADK                            R8 K26 ["VR Status Information"]
       64 SETTABLEKS                       R8 R7 K17 ["Title"]
       66 NEWTABLE                         R8 0 1
       68 DUPTABLE                         R9 K29 [{"Key", "Text"}]
       69 LOADK                            R10 K30 ["ok"]
       70 SETTABLEKS                       R10 R9 K27 ["Key"]
       72 LOADK                            R12 K3 ["AlertDialog"]
       73 LOADK                            R13 K31 ["OkButtonText"]
       74 NAMECALL                         R10 R3 K5 ["getText"]
       76 CALL                             R10 3 1
       77 SETTABLEKS                       R10 R9 K28 ["Text"]
       79 SETLIST                          R8 R9 1 [1]
       81 SETTABLEKS                       R8 R7 K18 ["Buttons"]
       83 GETTABLEKS                       R8 R1 K20 ["OnClose"]
       85 SETTABLEKS                       R8 R7 K19 ["OnButtonPressed"]
       87 GETTABLEKS                       R8 R1 K20 ["OnClose"]
       89 SETTABLEKS                       R8 R7 K20 ["OnClose"]
       91 GETTABLEKS                       R8 R2 K32 ["PopupMessageSize"]
       93 SETTABLEKS                       R8 R7 K21 ["MinContentSize"]
       95 LOADB                            R8 1
       96 SETTABLEKS                       R8 R7 K22 ["Modal"]
       98 DUPTABLE                         R8 K34 [{"Label"}]
       99 GETUPVAL                         R9 0
      100 GETTABLEKS                       R9 R9 K14 ["createElement"]
      102 GETUPVAL                         R10 2
      103 DUPTABLE                         R11 K42 [{"Size", "AnchorPoint", "Position", "Text", "TextColor", "TextWrapped", "TextSize", "TextXAlignment"}]
      104 GETIMPORT                        R12 K45 [UDim2.fromScale]
      106 LOADK                            R13 K46 [0.95]
      107 LOADN                            R14 1
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K35 ["Size"]
      111 GETIMPORT                        R12 K49 [Vector2.new]
      113 LOADK                            R13 K50 [0.5]
      114 LOADN                            R14 0
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K36 ["AnchorPoint"]
      118 GETIMPORT                        R12 K45 [UDim2.fromScale]
      120 LOADK                            R13 K50 [0.5]
      121 LOADN                            R14 0
      122 CALL                             R12 2 1
      123 SETTABLEKS                       R12 R11 K37 ["Position"]
      125 SETTABLEKS                       R4 R11 K28 ["Text"]
      127 GETTABLEKS                       R12 R2 K38 ["TextColor"]
      129 SETTABLEKS                       R12 R11 K38 ["TextColor"]
      131 LOADB                            R12 1
      132 SETTABLEKS                       R12 R11 K39 ["TextWrapped"]
      134 GETTABLEKS                       R12 R2 K40 ["TextSize"]
      136 SETTABLEKS                       R12 R11 K40 ["TextSize"]
      138 GETIMPORT                        R12 K53 [Enum.TextXAlignment.Left]
      140 SETTABLEKS                       R12 R11 K41 ["TextXAlignment"]
      142 CALL                             R9 2 1
      143 SETTABLEKS                       R9 R8 K33 ["Label"]
      145 CALL                             R5 3 -1
      146 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Localization"]
       29 GETTABLEKS                       R6 R2 K11 ["UI"]
       31 GETTABLEKS                       R7 R6 K12 ["StyledDialog"]
       33 GETTABLEKS                       R8 R6 K13 ["TextLabel"]
       35 GETTABLEKS                       R9 R1 K14 ["PureComponent"]
       37 LOADK                            R11 K15 ["AlertDialog"]
       38 NAMECALL                         R9 R9 K16 ["extend"]
       40 CALL                             R9 2 1
       41 DUPCLOSURE                       R10 K17 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R8
       45 SETTABLEKS                       R10 R9 K18 ["render"]
       47 MOVE                             R10 R4
       48 DUPTABLE                         R11 K20 [{"Localization", "Stylizer"}]
       49 SETTABLEKS                       R5 R11 K10 ["Localization"]
       51 GETTABLEKS                       R12 R3 K19 ["Stylizer"]
       53 SETTABLEKS                       R12 R11 K19 ["Stylizer"]
       55 CALL                             R10 1 1
       56 MOVE                             R11 R9
       57 CALL                             R10 1 1
       58 MOVE                             R9 R10
       59 RETURN                           R9 1
