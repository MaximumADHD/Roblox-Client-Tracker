PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["createElement"]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["Item"]
        7 DUPTABLE                         R5 K7 [{"value", "label", "isDisabled", "size", "placement"}]
        8 SETTABLEKS                       R0 R5 K2 ["value"]
       10 GETUPVAL                         R8 3
       11 LENGTH                           R7 R8
       12 LOADN                            R8 0
       13 JUMPIFNOTLT                      R8 R7 ; [+9]
       15 LOADK                            R7 K8 ["%* %*"]
       16 GETUPVAL                         R9 3
       17 MOVE                             R10 R0
       18 NAMECALL                         R7 R7 K9 ["format"]
       20 CALL                             R7 3 1
       21 MOVE                             R6 R7
       22 JUMP                             ; [+1]
       23 LOADK                            R6 K10 [""]
       24 SETTABLEKS                       R6 R5 K3 ["label"]
       26 JUMPIFEQKS                       R0 K11 ["D"] ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 SETTABLEKS                       R6 R5 K4 ["isDisabled"]
       32 GETUPVAL                         R7 4
       33 GETTABLEKS                       R6 R7 K5 ["size"]
       35 SETTABLEKS                       R6 R5 K5 ["size"]
       37 GETUPVAL                         R7 4
       38 GETTABLEKS                       R6 R7 K6 ["placement"]
       40 SETTABLEKS                       R6 R5 K6 ["placement"]
       42 CALL                             R3 2 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R1 K14 [table.insert]
       46 CALL                             R1 -1 0
       47 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Checking value"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["optionLabel"]
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["forEach"]
        9 GETUPVAL                         R5 1
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 CALL                             R4 2 0
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K3 ["createElement"]
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R5 R6 K4 ["Root"]
       23 DUPTABLE                         R6 K6 [{"onValueChanged"}]
       24 DUPCLOSURE                       R7 K7 [PROTO_1]
       25 SETTABLEKS                       R7 R6 K5 ["onValueChanged"]
       27 MOVE                             R7 R3
       28 CALL                             R4 3 -1
       29 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["createElement"]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["Item"]
        7 DUPTABLE                         R5 K6 [{"value", "label", "size", "placement"}]
        8 GETTABLEKS                       R6 R0 K2 ["value"]
       10 SETTABLEKS                       R6 R5 K2 ["value"]
       12 GETTABLEKS                       R6 R0 K3 ["label"]
       14 SETTABLEKS                       R6 R5 K3 ["label"]
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R6 R7 K4 ["size"]
       19 SETTABLEKS                       R6 R5 K4 ["size"]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R6 R7 K5 ["placement"]
       24 SETTABLEKS                       R6 R5 K5 ["placement"]
       26 CALL                             R3 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R1 K9 [table.insert]
       30 CALL                             R1 -1 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Checking value"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 NEWTABLE                         R2 0 5
        4 DUPTABLE                         R3 K3 [{"value", "label"}]
        5 LOADK                            R4 K4 ["A"]
        6 SETTABLEKS                       R4 R3 K1 ["value"]
        8 LOADK                            R4 K5 ["Short"]
        9 SETTABLEKS                       R4 R3 K2 ["label"]
       11 DUPTABLE                         R4 K3 [{"value", "label"}]
       12 LOADK                            R5 K6 ["B"]
       13 SETTABLEKS                       R5 R4 K1 ["value"]
       15 LOADK                            R5 K7 ["Medium length label"]
       16 SETTABLEKS                       R5 R4 K2 ["label"]
       18 DUPTABLE                         R5 K3 [{"value", "label"}]
       19 LOADK                            R6 K8 ["C"]
       20 SETTABLEKS                       R6 R5 K1 ["value"]
       22 LOADK                            R6 K9 ["A much, much longer label to test wrapping and layout in the radio group"]
       23 SETTABLEKS                       R6 R5 K2 ["label"]
       25 DUPTABLE                         R6 K3 [{"value", "label"}]
       26 LOADK                            R7 K10 ["D"]
       27 SETTABLEKS                       R7 R6 K1 ["value"]
       29 LOADK                            R7 K11 ["Tiny"]
       30 SETTABLEKS                       R7 R6 K2 ["label"]
       32 DUPTABLE                         R7 K3 [{"value", "label"}]
       33 LOADK                            R8 K12 ["E"]
       34 SETTABLEKS                       R8 R7 K1 ["value"]
       36 LOADK                            R8 K13 ["Extremely long label that spans multiple lines to ensure alignment across items with a label on the left"]
       37 SETTABLEKS                       R8 R7 K2 ["label"]
       39 SETLIST                          R2 R3 5 [1]
       41 NEWTABLE                         R3 0 0
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K14 ["forEach"]
       46 MOVE                             R5 R2
       47 NEWCLOSURE                       R6 P0
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R1
       52 CALL                             R4 2 0
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R4 R5 K15 ["createElement"]
       56 GETUPVAL                         R5 3
       57 DUPTABLE                         R6 K18 [{"tag", "Size"}]
       58 LOADK                            R7 K19 ["auto-y"]
       59 SETTABLEKS                       R7 R6 K16 ["tag"]
       61 GETIMPORT                        R7 K22 [UDim2.fromOffset]
       63 LOADN                            R8 144
       64 LOADN                            R9 0
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K17 ["Size"]
       68 DUPTABLE                         R7 K24 [{"RadioGroup"}]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R8 R9 K15 ["createElement"]
       72 GETUPVAL                         R10 2
       73 GETTABLEKS                       R9 R10 K25 ["Root"]
       75 DUPTABLE                         R10 K27 [{"onValueChanged"}]
       76 DUPCLOSURE                       R11 K28 [PROTO_4]
       77 SETTABLEKS                       R11 R10 K26 ["onValueChanged"]
       79 MOVE                             R11 R3
       80 CALL                             R8 3 1
       81 SETTABLEKS                       R8 R7 K23 ["RadioGroup"]
       83 CALL                             R4 3 -1
       84 RETURN                           R4 -1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K1 [print]
        5 LOADK                            R1 K2 ["Selected card:"]
        6 GETUPVAL                         R2 1
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K2 [{"tag"}]
        5 LOADK                            R6 K3 ["auto-xy col gap-small align-x-center padding-medium"]
        6 SETTABLEKS                       R6 R5 K1 ["tag"]
        8 DUPTABLE                         R6 K6 [{"ImageContainer", "RadioButton"}]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K0 ["createElement"]
       12 GETUPVAL                         R8 1
       13 DUPTABLE                         R9 K9 [{"cursor", "onActivated", "tag"}]
       14 GETUPVAL                         R10 2
       15 SETTABLEKS                       R10 R9 K7 ["cursor"]
       17 NEWCLOSURE                       R10 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R10 R9 K8 ["onActivated"]
       22 LOADK                            R10 K10 ["radius-medium bg-surface-100 size-2000-2000"]
       23 SETTABLEKS                       R10 R9 K1 ["tag"]
       25 DUPTABLE                         R10 K12 [{"Image"}]
       26 GETUPVAL                         R12 0
       27 GETTABLEKS                       R11 R12 K0 ["createElement"]
       29 GETUPVAL                         R12 4
       30 DUPTABLE                         R13 K15 [{"Image", "Size", "Position"}]
       31 SETTABLEKS                       R1 R13 K11 ["Image"]
       33 GETIMPORT                        R14 K18 [UDim2.fromScale]
       35 LOADK                            R15 K19 [0.8]
       36 LOADK                            R16 K19 [0.8]
       37 CALL                             R14 2 1
       38 SETTABLEKS                       R14 R13 K13 ["Size"]
       40 GETIMPORT                        R14 K18 [UDim2.fromScale]
       42 LOADK                            R15 K20 [0.1]
       43 LOADK                            R16 K20 [0.1]
       44 CALL                             R14 2 1
       45 SETTABLEKS                       R14 R13 K14 ["Position"]
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K11 ["Image"]
       50 CALL                             R7 3 1
       51 SETTABLEKS                       R7 R6 K4 ["ImageContainer"]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R7 R8 K0 ["createElement"]
       56 GETUPVAL                         R9 5
       57 GETTABLEKS                       R8 R9 K21 ["Item"]
       59 DUPTABLE                         R9 K25 [{"value", "label", "placement"}]
       60 SETTABLEKS                       R0 R9 K22 ["value"]
       62 SETTABLEKS                       R2 R9 K23 ["label"]
       64 GETUPVAL                         R11 6
       65 JUMPIFNOT                        R11 ; [+4]
       66 GETUPVAL                         R11 6
       67 GETTABLEKS                       R10 R11 K24 ["placement"]
       69 JUMPIF                           R10 ; [+1]
       70 LOADNIL                          R10
       71 SETTABLEKS                       R10 R9 K24 ["placement"]
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R6 K5 ["RadioButton"]
       76 CALL                             R3 3 -1
       77 RETURN                           R3 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADNIL                          R3
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
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R1
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K3 ["createElement"]
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R8 R9 K4 ["Root"]
       34 DUPTABLE                         R9 K8 [{"value", "onValueChanged", "Selectable"}]
       35 SETTABLEKS                       R2 R9 K5 ["value"]
       37 SETTABLEKS                       R3 R9 K6 ["onValueChanged"]
       39 LOADB                            R10 0
       40 SETTABLEKS                       R10 R9 K7 ["Selectable"]
       42 DUPTABLE                         R10 K10 [{"Container"}]
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R11 R12 K3 ["createElement"]
       46 GETUPVAL                         R12 2
       47 DUPTABLE                         R13 K12 [{"tag"}]
       48 LOADK                            R14 K13 ["auto-xy row gap-large wrap"]
       49 SETTABLEKS                       R14 R13 K11 ["tag"]
       51 DUPTABLE                         R14 K17 [{"CardA", "CardB", "CardC"}]
       52 MOVE                             R15 R6
       53 LOADK                            R16 K18 ["A"]
       54 LOADK                            R17 K19 ["icons/graphic/success_xlarge"]
       55 LOADK                            R18 K20 ["Success"]
       56 CALL                             R15 3 1
       57 SETTABLEKS                       R15 R14 K14 ["CardA"]
       59 MOVE                             R15 R6
       60 LOADK                            R16 K21 ["B"]
       61 LOADK                            R17 K22 ["icons/graphic/error_xlarge"]
       62 LOADK                            R18 K23 ["Error"]
       63 CALL                             R15 3 1
       64 SETTABLEKS                       R15 R14 K15 ["CardB"]
       66 MOVE                             R15 R6
       67 LOADK                            R16 K24 ["C"]
       68 LOADK                            R17 K25 ["icons/graphic/newclothing_xlarge"]
       69 LOADK                            R18 K26 ["Info"]
       70 CALL                             R15 3 1
       71 SETTABLEKS                       R15 R14 K16 ["CardC"]
       73 CALL                             R11 3 1
       74 SETTABLEKS                       R11 R10 K9 ["Container"]
       76 CALL                             R7 3 -1
       77 RETURN                           R7 -1

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
       23 GETTABLEKS                       R5 R6 K10 ["Image"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["RadioGroup"]
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
       63 NEWTABLE                         R10 0 5
       65 LOADK                            R11 K19 ["A"]
       66 LOADK                            R12 K20 ["B"]
       67 LOADK                            R13 K21 ["C"]
       68 LOADK                            R14 K22 ["D"]
       69 LOADK                            R15 K23 ["E"]
       70 SETLIST                          R10 R11 5 [1]
       72 DUPCLOSURE                       R11 K24 [PROTO_2]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R5
       77 DUPCLOSURE                       R12 K25 [PROTO_5]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 DUPCLOSURE                       R13 K26 [PROTO_9]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 DUPTABLE                         R14 K30 [{"summary", "stories", "controls"}]
       89 LOADK                            R15 K31 ["Radio Group component"]
       90 SETTABLEKS                       R15 R14 K27 ["summary"]
       92 NEWTABLE                         R15 0 3
       94 DUPTABLE                         R16 K34 [{"name", "story"}]
       95 LOADK                            R17 K35 ["Basic"]
       96 SETTABLEKS                       R17 R16 K32 ["name"]
       98 SETTABLEKS                       R11 R16 K33 ["story"]
      100 DUPTABLE                         R17 K36 [{"name", "summary", "story"}]
      101 LOADK                            R18 K37 ["Different Label Lengths"]
      102 SETTABLEKS                       R18 R17 K32 ["name"]
      104 LOADK                            R18 K38 ["Items with labels of varying length"]
      105 SETTABLEKS                       R18 R17 K27 ["summary"]
      107 SETTABLEKS                       R12 R17 K33 ["story"]
      109 DUPTABLE                         R18 K36 [{"name", "summary", "story"}]
      110 LOADK                            R19 K39 ["Custom Selection"]
      111 SETTABLEKS                       R19 R18 K32 ["name"]
      113 LOADK                            R19 K40 ["Select images instead of radio buttons"]
      114 SETTABLEKS                       R19 R18 K27 ["summary"]
      116 SETTABLEKS                       R13 R18 K33 ["story"]
      118 SETLIST                          R15 R16 3 [1]
      120 SETTABLEKS                       R15 R14 K28 ["stories"]
      122 DUPTABLE                         R15 K44 [{"optionLabel", "size", "placement"}]
      123 LOADK                            R16 K45 ["Option"]
      124 SETTABLEKS                       R16 R15 K41 ["optionLabel"]
      126 GETTABLEKS                       R16 R3 K46 ["values"]
      128 MOVE                             R17 R9
      129 CALL                             R16 1 1
      130 SETTABLEKS                       R16 R15 K42 ["size"]
      132 GETTABLEKS                       R16 R3 K46 ["values"]
      134 MOVE                             R17 R8
      135 CALL                             R16 1 1
      136 SETTABLEKS                       R16 R15 K43 ["placement"]
      138 SETTABLEKS                       R15 R14 K29 ["controls"]
      140 RETURN                           R14 1
