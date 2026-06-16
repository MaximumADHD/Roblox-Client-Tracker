PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADB                            R6 1
        7 SETTABLE                         R6 R0 R5
        8 FORGLOOP                         R1 2 ; [-3]
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R6 1
        8 GETUPVAL                         R7 2
        9 GETTABLE                         R5 R6 R7
       10 NOT                              R4 R5
       11 SETTABLE                         R4 R2 R3
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 3
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K8 [{"isChecked", "isDisabled", "onActivated", "size", "label", "placement", "LayoutOrder"}]
        5 GETUPVAL                         R6 2
        6 GETTABLE                         R5 R6 R0
        7 SETTABLEKS                       R5 R4 K1 ["isChecked"]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R5 R5 K2 ["isDisabled"]
       12 SETTABLEKS                       R5 R4 K2 ["isDisabled"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U5
       19 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       21 SETTABLEKS                       R0 R4 K4 ["size"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K5 ["label"]
       26 ORK                              R5 R6 K9 [""]
       27 SETTABLEKS                       R5 R4 K5 ["label"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K6 ["placement"]
       32 SETTABLEKS                       R5 R4 K6 ["placement"]
       34 SETTABLEKS                       R1 R4 K7 ["LayoutOrder"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 NEWTABLE                         R2 0 4
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Large"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["Medium"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["Small"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K4 ["XSmall"]
       16 SETLIST                          R2 R3 4 [1]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["useState"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R2
       23 CALL                             R3 1 2
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K6 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K8 [{"tag"}]
       29 LOADK                            R8 K9 ["col gap-xxlarge size-3000-0"]
       30 SETTABLEKS                       R8 R7 K7 ["tag"]
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R8 R8 K10 ["map"]
       35 MOVE                             R9 R2
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R4
       43 CALL                             R8 2 -1
       44 CALL                             R5 -1 -1
       45 RETURN                           R5 -1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADB                            R3 1
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R4
       14 NEWTABLE                         R7 0 1
       16 MOVE                             R8 R4
       17 SETLIST                          R7 R8 1 [1]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K3 ["createElement"]
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
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R10 R10 K3 ["createElement"]
       46 GETUPVAL                         R11 3
       47 DUPTABLE                         R12 K22 [{"isChecked", "onActivated", "size", "label", "placement", "Selectable", "LayoutOrder"}]
       48 SETTABLEKS                       R2 R12 K16 ["isChecked"]
       50 NEWCLOSURE                       R13 P2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R13 R12 K5 ["onActivated"]
       55 GETTABLEKS                       R13 R1 K17 ["size"]
       57 SETTABLEKS                       R13 R12 K17 ["size"]
       59 LOADK                            R13 K23 ["Enable notifications"]
       60 SETTABLEKS                       R13 R12 K18 ["label"]
       62 GETTABLEKS                       R13 R1 K19 ["placement"]
       64 SETTABLEKS                       R13 R12 K19 ["placement"]
       66 LOADB                            R13 0
       67 SETTABLEKS                       R13 R12 K20 ["Selectable"]
       69 LOADN                            R13 1
       70 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
       72 CALL                             R10 2 1
       73 SETTABLEKS                       R10 R9 K13 ["Checkbox"]
       75 GETUPVAL                         R10 0
       76 GETTABLEKS                       R10 R10 K3 ["createElement"]
       78 GETUPVAL                         R11 4
       79 DUPTABLE                         R12 K25 [{"Text", "tag", "LayoutOrder"}]
       80 LOADK                            R13 K26 ["Get notified when someone mentions you or sends you a message"]
       81 SETTABLEKS                       R13 R12 K24 ["Text"]
       83 LOADK                            R13 K27 ["text-body-small content-muted auto-y size-full-0 text-wrap"]
       84 SETTABLEKS                       R13 R12 K6 ["tag"]
       86 LOADN                            R13 2
       87 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K14 ["Description"]
       92 CALL                             R6 3 -1
       93 RETURN                           R6 -1

PROTO_8:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["isChecked: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K3 [{"tag"}]
        7 LOADK                            R5 K4 ["col auto-xy size-3000-0"]
        8 SETTABLEKS                       R5 R4 K2 ["tag"]
       10 NEWTABLE                         R5 0 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K1 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K10 [{"isDisabled", "onActivated", "size", "label", "placement"}]
       17 GETTABLEKS                       R9 R1 K5 ["isDisabled"]
       19 SETTABLEKS                       R9 R8 K5 ["isDisabled"]
       21 DUPCLOSURE                       R9 K11 [PROTO_8]
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
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Checkbox"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Providers"]
       44 GETTABLEKS                       R8 R8 K14 ["Style"]
       46 GETTABLEKS                       R8 R8 K15 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Enums"]
       53 GETTABLEKS                       R9 R9 K17 ["InputSize"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R10 K18 ["InputPlacement"]
       62 CALL                             R9 1 1
       63 DUPCLOSURE                       R10 K19 [PROTO_3]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R4
       69 DUPCLOSURE                       R11 K20 [PROTO_7]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R6
       75 DUPCLOSURE                       R12 K21 [PROTO_9]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R4
       79 DUPTABLE                         R13 K25 [{"summary", "stories", "controls"}]
       80 LOADK                            R14 K26 ["Checkbox component"]
       81 SETTABLEKS                       R14 R13 K22 ["summary"]
       83 NEWTABLE                         R14 0 3
       85 DUPTABLE                         R15 K29 [{"name", "story"}]
       86 LOADK                            R16 K30 ["Basic"]
       87 SETTABLEKS                       R16 R15 K27 ["name"]
       89 SETTABLEKS                       R10 R15 K28 ["story"]
       91 DUPTABLE                         R16 K31 [{"name", "summary", "story"}]
       92 LOADK                            R17 K32 ["Custom Selection"]
       93 SETTABLEKS                       R17 R16 K27 ["name"]
       95 LOADK                            R17 K33 ["Select card container instead of checkbox"]
       96 SETTABLEKS                       R17 R16 K22 ["summary"]
       98 SETTABLEKS                       R11 R16 K28 ["story"]
      100 DUPTABLE                         R17 K31 [{"name", "summary", "story"}]
      101 LOADK                            R18 K34 ["Uncontrolled"]
      102 SETTABLEKS                       R18 R17 K27 ["name"]
      104 LOADK                            R18 K35 ["State is controlled by the checkbox itself"]
      105 SETTABLEKS                       R18 R17 K22 ["summary"]
      107 SETTABLEKS                       R12 R17 K28 ["story"]
      109 SETLIST                          R14 R15 3 [1]
      111 SETTABLEKS                       R14 R13 K23 ["stories"]
      113 DUPTABLE                         R14 K39 [{"isDisabled", "label", "placement"}]
      114 LOADB                            R15 0
      115 SETTABLEKS                       R15 R14 K36 ["isDisabled"]
      117 LOADK                            R15 K40 ["Label"]
      118 SETTABLEKS                       R15 R14 K37 ["label"]
      120 GETTABLEKS                       R15 R3 K41 ["values"]
      122 MOVE                             R16 R9
      123 CALL                             R15 1 1
      124 SETTABLEKS                       R15 R14 K38 ["placement"]
      126 SETTABLEKS                       R14 R13 K24 ["controls"]
      128 RETURN                           R13 1
