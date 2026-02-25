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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K2 ["useMemo"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R4
       14 NEWTABLE                         R7 0 1
       16 MOVE                             R8 R4
       17 SETLIST                          R7 R8 1 [1]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K3 ["createElement"]
       23 GETUPVAL                         R7 2
       24 DUPTABLE                         R8 K8 [{"cursor", "onActivated", "tag", "Size"}]
       25 SETTABLEKS                       R5 R8 K4 ["cursor"]
       27 NEWCLOSURE                       R9 P1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R9 R8 K5 ["onActivated"]
       32 LOADK                            R9 K9 ["auto-y col align-x-center align-y-center gap-medium padding-large radius-medium bg-surface-100 stroke-muted"]
       33 SETTABLEKS                       R9 R8 K6 ["tag"]
       35 GETIMPORT                        R9 K12 [UDim2.fromOffset]
       37 LOADN                            R10 44
       38 LOADN                            R11 120
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K7 ["Size"]
       42 DUPTABLE                         R9 K15 [{"Checkbox", "Description"}]
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R10 R11 K3 ["createElement"]
       46 GETUPVAL                         R11 3
       47 DUPTABLE                         R12 K21 [{"isChecked", "onActivated", "size", "label", "Selectable", "LayoutOrder"}]
       48 SETTABLEKS                       R2 R12 K16 ["isChecked"]
       50 NEWCLOSURE                       R13 P2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R13 R12 K5 ["onActivated"]
       55 GETTABLEKS                       R13 R1 K17 ["size"]
       57 SETTABLEKS                       R13 R12 K17 ["size"]
       59 LOADK                            R13 K22 ["Enable notifications"]
       60 SETTABLEKS                       R13 R12 K18 ["label"]
       62 LOADB                            R13 0
       63 SETTABLEKS                       R13 R12 K19 ["Selectable"]
       65 LOADN                            R13 1
       66 SETTABLEKS                       R13 R12 K20 ["LayoutOrder"]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K13 ["Checkbox"]
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R10 R11 K3 ["createElement"]
       74 GETUPVAL                         R11 4
       75 DUPTABLE                         R12 K24 [{"Text", "tag", "LayoutOrder"}]
       76 LOADK                            R13 K25 ["Get notified when someone mentions you or sends you a message"]
       77 SETTABLEKS                       R13 R12 K23 ["Text"]
       79 LOADK                            R13 K26 ["text-body-small content-muted auto-y size-full-0 text-wrap"]
       80 SETTABLEKS                       R13 R12 K6 ["tag"]
       82 LOADN                            R13 2
       83 SETTABLEKS                       R13 R12 K20 ["LayoutOrder"]
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K14 ["Description"]
       88 CALL                             R6 3 -1
       89 RETURN                           R6 -1

PROTO_6:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["isChecked: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K6 [{"isDisabled", "onActivated", "size", "label"}]
        7 GETTABLEKS                       R5 R1 K2 ["isDisabled"]
        9 SETTABLEKS                       R5 R4 K2 ["isDisabled"]
       11 DUPCLOSURE                       R5 K7 [PROTO_6]
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
       23 GETTABLEKS                       R5 R6 K10 ["Checkbox"]
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
       59 DUPCLOSURE                       R10 K19 [PROTO_5]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R6
       65 DUPCLOSURE                       R11 K20 [PROTO_7]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R4
       68 DUPTABLE                         R12 K24 [{"summary", "stories", "controls"}]
       69 LOADK                            R13 K25 ["Checkbox component"]
       70 SETTABLEKS                       R13 R12 K21 ["summary"]
       72 NEWTABLE                         R13 0 3
       74 DUPTABLE                         R14 K28 [{"name", "story"}]
       75 LOADK                            R15 K29 ["Basic"]
       76 SETTABLEKS                       R15 R14 K26 ["name"]
       78 SETTABLEKS                       R9 R14 K27 ["story"]
       80 DUPTABLE                         R15 K30 [{"name", "summary", "story"}]
       81 LOADK                            R16 K31 ["Custom Selection"]
       82 SETTABLEKS                       R16 R15 K26 ["name"]
       84 LOADK                            R16 K32 ["Select card container instead of checkbox"]
       85 SETTABLEKS                       R16 R15 K21 ["summary"]
       87 SETTABLEKS                       R10 R15 K27 ["story"]
       89 DUPTABLE                         R16 K30 [{"name", "summary", "story"}]
       90 LOADK                            R17 K33 ["Uncontrolled"]
       91 SETTABLEKS                       R17 R16 K26 ["name"]
       93 LOADK                            R17 K34 ["State is controlled by the checkbox itself"]
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
