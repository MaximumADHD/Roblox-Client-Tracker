PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["props"]
        8 GETTABLEKS                       R0 R0 K5 ["OnClose"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

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
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K14 [{["Style"] = "Alert", ["Enabled"], ["Title"], ["Buttons"], ["OnButtonPressed"], ["OnClose"], ["MinContentSize"], ["Modal"] = True}]
       11 GETTABLEKS                       R7 R0 K15 ["state"]
       13 GETTABLEKS                       R7 R7 K16 ["enabled"]
       15 SETTABLEKS                       R7 R6 K6 ["Enabled"]
       17 LOADK                            R9 K17 ["AlertDialog"]
       18 GETTABLEKS                       R10 R1 K18 ["TitleKey"]
       20 NAMECALL                         R7 R3 K19 ["getText"]
       22 CALL                             R7 3 1
       23 SETTABLEKS                       R7 R6 K7 ["Title"]
       25 NEWTABLE                         R7 0 1
       27 DUPTABLE                         R8 K23 [{["Key"] = "ok", ["Text"]}]
       28 LOADK                            R11 K17 ["AlertDialog"]
       29 LOADK                            R12 K24 ["OkButtonText"]
       30 NAMECALL                         R9 R3 K19 ["getText"]
       32 CALL                             R9 3 1
       33 SETTABLEKS                       R9 R8 K22 ["Text"]
       35 SETLIST                          R7 R8 1 [1]
       37 SETTABLEKS                       R7 R6 K8 ["Buttons"]
       39 GETTABLEKS                       R7 R0 K25 ["closeDialog"]
       41 SETTABLEKS                       R7 R6 K9 ["OnButtonPressed"]
       43 GETTABLEKS                       R7 R1 K10 ["OnClose"]
       45 SETTABLEKS                       R7 R6 K10 ["OnClose"]
       47 GETTABLEKS                       R7 R2 K26 ["PopupMessageSize"]
       49 SETTABLEKS                       R7 R6 K11 ["MinContentSize"]
       51 DUPTABLE                         R7 K28 [{"Label"}]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K3 ["createElement"]
       55 GETUPVAL                         R9 2
       56 DUPTABLE                         R10 K36 [{["Size"], ["AnchorPoint"], ["Position"], ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextSize"], ["TextXAlignment"]}]
       57 GETIMPORT                        R11 K39 [UDim2.fromScale]
       59 LOADK                            R12 K40 [0.95]
       60 LOADN                            R13 1
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K29 ["Size"]
       64 GETIMPORT                        R11 K43 [Vector2.new]
       66 LOADK                            R12 K44 [0.5]
       67 LOADN                            R13 0
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K30 ["AnchorPoint"]
       71 GETIMPORT                        R11 K39 [UDim2.fromScale]
       73 LOADK                            R12 K44 [0.5]
       74 LOADN                            R13 0
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K31 ["Position"]
       78 LOADK                            R13 K17 ["AlertDialog"]
       79 GETTABLEKS                       R14 R1 K45 ["MessageKey"]
       81 GETTABLEKS                       R15 R1 K46 ["MessageKeyFormatTable"]
       83 NAMECALL                         R11 R3 K19 ["getText"]
       85 CALL                             R11 4 1
       86 SETTABLEKS                       R11 R10 K22 ["Text"]
       88 GETTABLEKS                       R11 R2 K32 ["TextColor"]
       90 SETTABLEKS                       R11 R10 K32 ["TextColor"]
       92 GETTABLEKS                       R11 R2 K34 ["TextSize"]
       94 SETTABLEKS                       R11 R10 K34 ["TextSize"]
       96 GETIMPORT                        R11 K49 [Enum.TextXAlignment.Left]
       98 SETTABLEKS                       R11 R10 K35 ["TextXAlignment"]
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K27 ["Label"]
      103 CALL                             R4 3 -1
      104 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
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
