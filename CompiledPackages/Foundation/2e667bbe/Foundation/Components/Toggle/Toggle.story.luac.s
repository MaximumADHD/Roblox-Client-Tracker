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
       11 DUPTABLE                         R6 K8 [{"isChecked", "isDisabled", "onActivated", "size", "label"}]
       12 SETTABLEKS                       R2 R6 K3 ["isChecked"]
       14 GETTABLEKS                       R7 R1 K4 ["isDisabled"]
       16 SETTABLEKS                       R7 R6 K4 ["isDisabled"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R7 R6 K5 ["onActivated"]
       23 GETTABLEKS                       R7 R1 K6 ["size"]
       25 SETTABLEKS                       R7 R6 K6 ["size"]
       27 GETTABLEKS                       R8 R1 K7 ["label"]
       29 ORK                              R7 R8 K9 [""]
       30 SETTABLEKS                       R7 R6 K7 ["label"]
       32 CALL                             R4 2 -1
       33 RETURN                           R4 -1

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
        6 DUPTABLE                         R4 K6 [{"isDisabled", "onActivated", "size", "label"}]
        7 GETTABLEKS                       R5 R1 K2 ["isDisabled"]
        9 SETTABLEKS                       R5 R4 K2 ["isDisabled"]
       11 DUPCLOSURE                       R5 K7 [PROTO_7]
       12 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       14 GETTABLEKS                       R5 R1 K4 ["size"]
       16 SETTABLEKS                       R5 R4 K4 ["size"]
       18 GETTABLEKS                       R6 R1 K5 ["label"]
       20 ORK                              R5 R6 K8 [""]
       21 SETTABLEKS                       R5 R4 K5 ["label"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Toggle"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R10 R0 K13 ["Providers"]
       44 GETTABLEKS                       R9 R10 K14 ["Style"]
       46 GETTABLEKS                       R8 R9 K15 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Enums"]
       53 GETTABLEKS                       R9 R10 K17 ["InputSize"]
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K18 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 DUPCLOSURE                       R10 K19 [PROTO_6]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R4
       65 DUPCLOSURE                       R11 K20 [PROTO_8]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R4
       68 DUPTABLE                         R12 K24 [{"summary", "stories", "controls"}]
       69 LOADK                            R13 K25 ["Toggle component"]
       70 SETTABLEKS                       R13 R12 K21 ["summary"]
       72 NEWTABLE                         R13 0 3
       74 DUPTABLE                         R14 K28 [{"name", "story"}]
       75 LOADK                            R15 K29 ["Basic"]
       76 SETTABLEKS                       R15 R14 K26 ["name"]
       78 SETTABLEKS                       R9 R14 K27 ["story"]
       80 DUPTABLE                         R15 K30 [{"name", "summary", "story"}]
       81 LOADK                            R16 K31 ["Custom Selection"]
       82 SETTABLEKS                       R16 R15 K26 ["name"]
       84 LOADK                            R16 K32 ["Select card containers instead of toggles"]
       85 SETTABLEKS                       R16 R15 K21 ["summary"]
       87 SETTABLEKS                       R10 R15 K27 ["story"]
       89 DUPTABLE                         R16 K30 [{"name", "summary", "story"}]
       90 LOADK                            R17 K33 ["Uncontrolled"]
       91 SETTABLEKS                       R17 R16 K26 ["name"]
       93 LOADK                            R17 K34 ["State is controlled by the toggle itself"]
       94 SETTABLEKS                       R17 R16 K21 ["summary"]
       96 SETTABLEKS                       R11 R16 K27 ["story"]
       98 SETLIST                          R13 R14 3 [1]
      100 SETTABLEKS                       R13 R12 K22 ["stories"]
      102 DUPTABLE                         R13 K38 [{"isDisabled", "label", "size"}]
      103 LOADB                            R14 0
      104 SETTABLEKS                       R14 R13 K35 ["isDisabled"]
      106 LOADK                            R14 K39 ["Label"]
      107 SETTABLEKS                       R14 R13 K36 ["label"]
      109 GETTABLEKS                       R14 R3 K40 ["values"]
      111 MOVE                             R15 R8
      112 CALL                             R14 1 1
      113 SETTABLEKS                       R14 R13 K37 ["size"]
      115 SETTABLEKS                       R13 R12 K23 ["controls"]
      117 RETURN                           R12 1
