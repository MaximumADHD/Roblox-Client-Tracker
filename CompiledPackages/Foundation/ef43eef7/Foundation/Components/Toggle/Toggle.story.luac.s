PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["createElement"]
       10 GETUPVAL                         R5 1
       11 DUPTABLE                         R6 K4 [{"tag"}]
       12 LOADK                            R7 K5 ["col auto-xy size-3000-0"]
       13 SETTABLEKS                       R7 R6 K3 ["tag"]
       15 NEWTABLE                         R7 0 1
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R8 R9 K2 ["createElement"]
       20 GETUPVAL                         R9 2
       21 DUPTABLE                         R10 K12 [{"isChecked", "isDisabled", "onActivated", "size", "label", "placement"}]
       22 SETTABLEKS                       R2 R10 K6 ["isChecked"]
       24 GETTABLEKS                       R11 R1 K7 ["isDisabled"]
       26 SETTABLEKS                       R11 R10 K7 ["isDisabled"]
       28 NEWCLOSURE                       R11 P0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R11 R10 K8 ["onActivated"]
       33 GETTABLEKS                       R11 R1 K9 ["size"]
       35 SETTABLEKS                       R11 R10 K9 ["size"]
       37 GETTABLEKS                       R12 R1 K10 ["label"]
       39 ORK                              R11 R12 K13 [""]
       40 SETTABLEKS                       R11 R10 K10 ["label"]
       42 GETTABLEKS                       R11 R1 K11 ["placement"]
       44 SETTABLEKS                       R11 R10 K11 ["placement"]
       46 CALL                             R8 2 -1
       47 SETLIST                          R7 R8 -1 [1]
       49 CALL                             R4 3 -1
       50 RETURN                           R4 -1

PROTO_2:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K7 ["Radius"]
        7 GETTABLEKS                       R3 R4 K8 ["Medium"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K9 ["Size"]
       15 GETTABLEKS                       R1 R2 K10 ["Size_150"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K11 ["Stroke"]
       22 GETTABLEKS                       R1 R2 K12 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K5 [{"cursor", "onActivated", "tag", "Size"}]
        5 GETUPVAL                         R7 2
        6 SETTABLEKS                       R7 R6 K1 ["cursor"]
        8 SETTABLEKS                       R3 R6 K2 ["onActivated"]
       10 LOADK                            R7 K6 ["col padding-large radius-medium gap-medium bg-surface-100 stroke-muted"]
       11 SETTABLEKS                       R7 R6 K3 ["tag"]
       13 GETIMPORT                        R7 K9 [UDim2.fromOffset]
       15 LOADN                            R8 64
       16 LOADN                            R9 100
       17 CALL                             R7 2 1
       18 SETTABLEKS                       R7 R6 K4 ["Size"]
       20 DUPTABLE                         R7 K12 [{"TextContainer", "Description"}]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K0 ["createElement"]
       24 GETUPVAL                         R9 1
       25 DUPTABLE                         R10 K14 [{"tag", "LayoutOrder"}]
       26 LOADK                            R11 K15 ["auto-y size-full-0 row gap-small flex-x-between"]
       27 SETTABLEKS                       R11 R10 K3 ["tag"]
       29 LOADN                            R11 1
       30 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       32 DUPTABLE                         R11 K18 [{"Label", "Toggle"}]
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R12 R13 K0 ["createElement"]
       36 GETUPVAL                         R13 3
       37 DUPTABLE                         R14 K20 [{"Text", "tag", "LayoutOrder"}]
       38 SETTABLEKS                       R0 R14 K19 ["Text"]
       40 LOADK                            R15 K21 ["text-body-medium content-emphasis auto-xy"]
       41 SETTABLEKS                       R15 R14 K3 ["tag"]
       43 LOADN                            R15 1
       44 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
       46 CALL                             R12 2 1
       47 SETTABLEKS                       R12 R11 K16 ["Label"]
       49 GETUPVAL                         R13 0
       50 GETTABLEKS                       R12 R13 K0 ["createElement"]
       52 GETUPVAL                         R13 4
       53 DUPTABLE                         R14 K25 [{"isChecked", "onActivated", "label", "Selectable", "LayoutOrder"}]
       54 SETTABLEKS                       R2 R14 K22 ["isChecked"]
       56 SETTABLEKS                       R3 R14 K2 ["onActivated"]
       58 LOADK                            R15 K26 [""]
       59 SETTABLEKS                       R15 R14 K23 ["label"]
       61 LOADB                            R15 0
       62 SETTABLEKS                       R15 R14 K24 ["Selectable"]
       64 LOADN                            R15 2
       65 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K17 ["Toggle"]
       70 CALL                             R8 3 1
       71 SETTABLEKS                       R8 R7 K10 ["TextContainer"]
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R8 R9 K0 ["createElement"]
       76 GETUPVAL                         R9 3
       77 DUPTABLE                         R10 K20 [{"Text", "tag", "LayoutOrder"}]
       78 SETTABLEKS                       R1 R10 K19 ["Text"]
       80 LOADK                            R11 K27 ["text-body-small content-muted auto-xy text-wrap"]
       81 SETTABLEKS                       R11 R10 K3 ["tag"]
       83 LOADN                            R11 2
       84 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       86 CALL                             R8 2 1
       87 SETTABLEKS                       R8 R7 K11 ["Description"]
       89 CALL                             R4 3 -1
       90 RETURN                           R4 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 LOADB                            R3 1
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 1
       11 CALL                             R4 0 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K1 ["useMemo"]
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
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K2 ["createElement"]
       32 GETUPVAL                         R8 2
       33 DUPTABLE                         R9 K4 [{"tag"}]
       34 LOADK                            R10 K5 ["auto-xy col gap-large"]
       35 SETTABLEKS                       R10 R9 K3 ["tag"]
       37 DUPTABLE                         R10 K8 [{"NotificationsCard", "ChatCard"}]
       38 MOVE                             R11 R6
       39 LOADK                            R12 K9 ["Push Notifications"]
       40 LOADK                            R13 K10 ["Receive notifications for messages and updates"]
       41 MOVE                             R14 R2
       42 NEWCLOSURE                       R15 P2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CALL                             R11 4 1
       46 SETTABLEKS                       R11 R10 K6 ["NotificationsCard"]
       48 MOVE                             R11 R6
       49 LOADK                            R12 K11 ["Chat"]
       50 LOADK                            R13 K12 ["Enable chat for real-time communication"]
       51 MOVE                             R14 R0
       52 NEWCLOSURE                       R15 P3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R0
       55 CALL                             R11 4 1
       56 SETTABLEKS                       R11 R10 K7 ["ChatCard"]
       58 CALL                             R7 3 -1
       59 RETURN                           R7 -1

PROTO_7:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["isChecked: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K3 [{"tag"}]
        7 LOADK                            R5 K4 ["col auto-xy size-3000-0"]
        8 SETTABLEKS                       R5 R4 K2 ["tag"]
       10 NEWTABLE                         R5 0 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K1 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K10 [{"isDisabled", "onActivated", "size", "label", "placement"}]
       17 GETTABLEKS                       R9 R1 K5 ["isDisabled"]
       19 SETTABLEKS                       R9 R8 K5 ["isDisabled"]
       21 DUPCLOSURE                       R9 K11 [PROTO_7]
       22 SETTABLEKS                       R9 R8 K6 ["onActivated"]
       24 GETTABLEKS                       R9 R1 K7 ["size"]
       26 SETTABLEKS                       R9 R8 K7 ["size"]
       28 GETTABLEKS                       R10 R1 K8 ["label"]
       30 ORK                              R9 R10 K12 [""]
       31 SETTABLEKS                       R9 R8 K8 ["label"]
       33 GETTABLEKS                       R9 R1 K9 ["placement"]
       35 SETTABLEKS                       R9 R8 K9 ["placement"]
       37 CALL                             R6 2 -1
       38 SETLIST                          R5 R6 -1 [1]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Text"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Toggle"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R10 R0 K13 ["Providers"]
       44 GETTABLEKS                       R9 R10 K14 ["Style"]
       46 GETTABLEKS                       R8 R9 K15 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Enums"]
       53 GETTABLEKS                       R9 R10 K17 ["InputPlacement"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R11 K18 ["InputSize"]
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
       77 DUPTABLE                         R13 K25 [{"summary", "stories", "controls"}]
       78 LOADK                            R14 K26 ["Toggle component"]
       79 SETTABLEKS                       R14 R13 K22 ["summary"]
       81 NEWTABLE                         R14 0 3
       83 DUPTABLE                         R15 K29 [{"name", "story"}]
       84 LOADK                            R16 K30 ["Basic"]
       85 SETTABLEKS                       R16 R15 K27 ["name"]
       87 SETTABLEKS                       R10 R15 K28 ["story"]
       89 DUPTABLE                         R16 K31 [{"name", "summary", "story"}]
       90 LOADK                            R17 K32 ["Custom Selection"]
       91 SETTABLEKS                       R17 R16 K27 ["name"]
       93 LOADK                            R17 K33 ["Select card containers instead of toggles"]
       94 SETTABLEKS                       R17 R16 K22 ["summary"]
       96 SETTABLEKS                       R11 R16 K28 ["story"]
       98 DUPTABLE                         R17 K31 [{"name", "summary", "story"}]
       99 LOADK                            R18 K34 ["Uncontrolled"]
      100 SETTABLEKS                       R18 R17 K27 ["name"]
      102 LOADK                            R18 K35 ["State is controlled by the toggle itself"]
      103 SETTABLEKS                       R18 R17 K22 ["summary"]
      105 SETTABLEKS                       R12 R17 K28 ["story"]
      107 SETLIST                          R14 R15 3 [1]
      109 SETTABLEKS                       R14 R13 K23 ["stories"]
      111 DUPTABLE                         R14 K40 [{"isDisabled", "label", "size", "placement"}]
      112 LOADB                            R15 0
      113 SETTABLEKS                       R15 R14 K36 ["isDisabled"]
      115 LOADK                            R15 K41 ["Label"]
      116 SETTABLEKS                       R15 R14 K37 ["label"]
      118 GETTABLEKS                       R15 R2 K42 ["values"]
      120 MOVE                             R16 R9
      121 CALL                             R15 1 1
      122 SETTABLEKS                       R15 R14 K38 ["size"]
      124 GETTABLEKS                       R15 R2 K42 ["values"]
      126 MOVE                             R16 R8
      127 CALL                             R15 1 1
      128 SETTABLEKS                       R15 R14 K39 ["placement"]
      130 SETTABLEKS                       R14 R13 K24 ["controls"]
      132 RETURN                           R13 1
