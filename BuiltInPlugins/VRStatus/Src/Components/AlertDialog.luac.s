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
       53 DUPTABLE                         R7 K26 [{["Style"] = "Alert", ["Enabled"], ["Title"] = "VR Status Information", ["Buttons"], ["OnButtonPressed"], ["OnClose"], ["MinContentSize"], ["Modal"] = True}]
       54 GETTABLEKS                       R8 R0 K0 ["props"]
       56 GETTABLEKS                       R8 R8 K27 ["enabled"]
       58 SETTABLEKS                       R8 R7 K17 ["Enabled"]
       60 NEWTABLE                         R8 0 1
       62 DUPTABLE                         R9 K31 [{["Key"] = "ok", ["Text"]}]
       63 LOADK                            R12 K3 ["AlertDialog"]
       64 LOADK                            R13 K32 ["OkButtonText"]
       65 NAMECALL                         R10 R3 K5 ["getText"]
       67 CALL                             R10 3 1
       68 SETTABLEKS                       R10 R9 K30 ["Text"]
       70 SETLIST                          R8 R9 1 [1]
       72 SETTABLEKS                       R8 R7 K20 ["Buttons"]
       74 GETTABLEKS                       R8 R1 K22 ["OnClose"]
       76 SETTABLEKS                       R8 R7 K21 ["OnButtonPressed"]
       78 GETTABLEKS                       R8 R1 K22 ["OnClose"]
       80 SETTABLEKS                       R8 R7 K22 ["OnClose"]
       82 GETTABLEKS                       R8 R2 K33 ["PopupMessageSize"]
       84 SETTABLEKS                       R8 R7 K23 ["MinContentSize"]
       86 DUPTABLE                         R8 K35 [{"Label"}]
       87 GETUPVAL                         R9 0
       88 GETTABLEKS                       R9 R9 K14 ["createElement"]
       90 GETUPVAL                         R10 2
       91 DUPTABLE                         R11 K43 [{["Size"], ["AnchorPoint"], ["Position"], ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextSize"], ["TextXAlignment"]}]
       92 GETIMPORT                        R12 K46 [UDim2.fromScale]
       94 LOADK                            R13 K47 [0.95]
       95 LOADN                            R14 1
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K36 ["Size"]
       99 GETIMPORT                        R12 K50 [Vector2.new]
      101 LOADK                            R13 K51 [0.5]
      102 LOADN                            R14 0
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K37 ["AnchorPoint"]
      106 GETIMPORT                        R12 K46 [UDim2.fromScale]
      108 LOADK                            R13 K51 [0.5]
      109 LOADN                            R14 0
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K38 ["Position"]
      113 SETTABLEKS                       R4 R11 K30 ["Text"]
      115 GETTABLEKS                       R12 R2 K39 ["TextColor"]
      117 SETTABLEKS                       R12 R11 K39 ["TextColor"]
      119 GETTABLEKS                       R12 R2 K41 ["TextSize"]
      121 SETTABLEKS                       R12 R11 K41 ["TextSize"]
      123 GETIMPORT                        R12 K54 [Enum.TextXAlignment.Left]
      125 SETTABLEKS                       R12 R11 K42 ["TextXAlignment"]
      127 CALL                             R9 2 1
      128 SETTABLEKS                       R9 R8 K34 ["Label"]
      130 CALL                             R5 3 -1
      131 RETURN                           R5 -1

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
