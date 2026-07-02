PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["createElement"]
       10 GETUPVAL                         R5 1
       11 DUPTABLE                         R6 K5 [{["tag"] = "col auto-xy size-3000-0"}]
       12 NEWTABLE                         R7 0 1
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K2 ["createElement"]
       17 GETUPVAL                         R9 2
       18 DUPTABLE                         R10 K12 [{"isChecked", "isDisabled", "onActivated", "size", "label", "placement"}]
       19 SETTABLEKS                       R2 R10 K6 ["isChecked"]
       21 GETTABLEKS                       R11 R1 K7 ["isDisabled"]
       23 SETTABLEKS                       R11 R10 K7 ["isDisabled"]
       25 NEWCLOSURE                       R11 P0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R11 R10 K8 ["onActivated"]
       30 GETTABLEKS                       R11 R1 K9 ["size"]
       32 SETTABLEKS                       R11 R10 K9 ["size"]
       34 GETTABLEKS                       R12 R1 K10 ["label"]
       36 ORK                              R11 R12 K13 [""]
       37 SETTABLEKS                       R11 R10 K10 ["label"]
       39 GETTABLEKS                       R11 R1 K11 ["placement"]
       41 SETTABLEKS                       R11 R10 K11 ["placement"]
       43 CALL                             R8 2 -1
       44 SETLIST                          R7 R8 -1 [1]
       46 CALL                             R4 3 -1
       47 RETURN                           R4 -1

PROTO_2:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["Radius"]
        7 GETTABLEKS                       R3 R3 K8 ["Medium"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K9 ["Size"]
       15 GETTABLEKS                       R1 R1 K10 ["Size_150"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K11 ["Stroke"]
       22 GETTABLEKS                       R1 R1 K12 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K6 [{["cursor"], ["onActivated"], ["tag"] = "col padding-large radius-medium gap-medium bg-surface-100 stroke-muted", ["Size"]}]
        5 GETUPVAL                         R7 2
        6 SETTABLEKS                       R7 R6 K1 ["cursor"]
        8 SETTABLEKS                       R3 R6 K2 ["onActivated"]
       10 GETIMPORT                        R7 K9 [UDim2.fromOffset]
       12 LOADN                            R8 320
       13 LOADN                            R9 100
       14 CALL                             R7 2 1
       15 SETTABLEKS                       R7 R6 K5 ["Size"]
       17 DUPTABLE                         R7 K12 [{"TextContainer", "Description"}]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K0 ["createElement"]
       21 GETUPVAL                         R9 1
       22 DUPTABLE                         R10 K16 [{["tag"] = "auto-y size-full-0 row gap-small flex-x-between", ["LayoutOrder"] = 1}]
       23 DUPTABLE                         R11 K19 [{"Label", "Toggle"}]
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R12 R12 K0 ["createElement"]
       27 GETUPVAL                         R13 3
       28 DUPTABLE                         R14 K22 [{["Text"], ["tag"] = "text-body-medium content-emphasis auto-xy", ["LayoutOrder"] = 1}]
       29 SETTABLEKS                       R0 R14 K20 ["Text"]
       31 CALL                             R12 2 1
       32 SETTABLEKS                       R12 R11 K17 ["Label"]
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R12 R12 K0 ["createElement"]
       37 GETUPVAL                         R13 4
       38 DUPTABLE                         R14 K29 [{["isChecked"], ["onActivated"], ["label"] = "", ["Selectable"] = False, ["LayoutOrder"] = 2}]
       39 SETTABLEKS                       R2 R14 K23 ["isChecked"]
       41 SETTABLEKS                       R3 R14 K2 ["onActivated"]
       43 CALL                             R12 2 1
       44 SETTABLEKS                       R12 R11 K18 ["Toggle"]
       46 CALL                             R8 3 1
       47 SETTABLEKS                       R8 R7 K10 ["TextContainer"]
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K0 ["createElement"]
       52 GETUPVAL                         R9 3
       53 DUPTABLE                         R10 K31 [{["Text"], ["tag"] = "text-body-small content-muted auto-xy text-wrap", ["LayoutOrder"] = 2}]
       54 SETTABLEKS                       R1 R10 K20 ["Text"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K11 ["Description"]
       59 CALL                             R4 3 -1
       60 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADB                            R3 1
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 1
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K1 ["useMemo"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R4
       17 NEWTABLE                         R7 0 1
       19 MOVE                             R8 R4
       20 SETLIST                          R7 R8 1 [1]
       22 CALL                             R5 2 1
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R5
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K2 ["createElement"]
       32 GETUPVAL                         R8 2
       33 DUPTABLE                         R9 K5 [{["tag"] = "auto-xy col gap-large"}]
       34 DUPTABLE                         R10 K8 [{"NotificationsCard", "ChatCard"}]
       35 MOVE                             R11 R6
       36 LOADK                            R12 K9 ["Push Notifications"]
       37 LOADK                            R13 K10 ["Receive notifications for messages and updates"]
       38 MOVE                             R14 R2
       39 NEWCLOSURE                       R15 P2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CALL                             R11 4 1
       43 SETTABLEKS                       R11 R10 K6 ["NotificationsCard"]
       45 MOVE                             R11 R6
       46 LOADK                            R12 K11 ["Chat"]
       47 LOADK                            R13 K12 ["Enable chat for real-time communication"]
       48 MOVE                             R14 R0
       49 NEWCLOSURE                       R15 P3
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R0
       52 CALL                             R11 4 1
       53 SETTABLEKS                       R11 R10 K7 ["ChatCard"]
       55 CALL                             R7 3 -1
       56 RETURN                           R7 -1

PROTO_7:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["isChecked: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "col auto-xy size-3000-0"}]
        7 NEWTABLE                         R5 0 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K1 ["createElement"]
       12 GETUPVAL                         R7 2
       13 DUPTABLE                         R8 K10 [{"isDisabled", "onActivated", "size", "label", "placement"}]
       14 GETTABLEKS                       R9 R1 K5 ["isDisabled"]
       16 SETTABLEKS                       R9 R8 K5 ["isDisabled"]
       18 DUPCLOSURE                       R9 K11 [PROTO_7]
       19 SETTABLEKS                       R9 R8 K6 ["onActivated"]
       21 GETTABLEKS                       R9 R1 K7 ["size"]
       23 SETTABLEKS                       R9 R8 K7 ["size"]
       25 GETTABLEKS                       R10 R1 K8 ["label"]
       27 ORK                              R9 R10 K12 [""]
       28 SETTABLEKS                       R9 R8 K8 ["label"]
       30 GETTABLEKS                       R9 R1 K9 ["placement"]
       32 SETTABLEKS                       R9 R8 K9 ["placement"]
       34 CALL                             R6 2 -1
       35 SETLIST                          R5 R6 -1 [1]
       37 CALL                             R2 3 -1
       38 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Text"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Toggle"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Providers"]
       44 GETTABLEKS                       R8 R8 K14 ["Style"]
       46 GETTABLEKS                       R8 R8 K15 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Enums"]
       53 GETTABLEKS                       R9 R9 K17 ["InputPlacement"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R10 K18 ["InputSize"]
       62 CALL                             R9 1 1
       63 DUPCLOSURE                       R10 K19 [PROTO_1]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R5
       67 DUPCLOSURE                       R11 K20 [PROTO_6]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R5
       73 DUPCLOSURE                       R12 K21 [PROTO_8]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R5
       77 DUPTABLE                         R13 K26 [{["summary"] = "Toggle component", ["stories"], ["controls"]}]
       78 NEWTABLE                         R14 0 3
       80 DUPTABLE                         R15 K30 [{["name"] = "Basic", ["story"]}]
       81 SETTABLEKS                       R10 R15 K29 ["story"]
       83 DUPTABLE                         R16 K33 [{["name"] = "Custom Selection", ["summary"] = "Select card containers instead of toggles", ["story"]}]
       84 SETTABLEKS                       R11 R16 K29 ["story"]
       86 DUPTABLE                         R17 K36 [{["name"] = "Uncontrolled", ["summary"] = "State is controlled by the toggle itself", ["story"]}]
       87 SETTABLEKS                       R12 R17 K29 ["story"]
       89 SETLIST                          R14 R15 3 [1]
       91 SETTABLEKS                       R14 R13 K24 ["stories"]
       93 DUPTABLE                         R14 K43 [{["isDisabled"] = False, ["label"] = "Label", ["size"], ["placement"]}]
       94 GETTABLEKS                       R15 R2 K44 ["values"]
       96 MOVE                             R16 R9
       97 CALL                             R15 1 1
       98 SETTABLEKS                       R15 R14 K41 ["size"]
      100 GETTABLEKS                       R15 R2 K44 ["values"]
      102 MOVE                             R16 R8
      103 CALL                             R15 1 1
      104 SETTABLEKS                       R15 R14 K42 ["placement"]
      106 SETTABLEKS                       R14 R13 K25 ["controls"]
      108 RETURN                           R13 1
