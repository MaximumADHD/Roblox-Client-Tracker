PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["createElement"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["Item"]
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
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R6 R6 K5 ["size"]
       35 SETTABLEKS                       R6 R5 K5 ["size"]
       37 GETUPVAL                         R6 4
       38 GETTABLEKS                       R6 R6 K6 ["placement"]
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
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["forEach"]
        9 GETUPVAL                         R5 1
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 CALL                             R4 2 0
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K3 ["createElement"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K4 ["Root"]
       23 DUPTABLE                         R6 K6 [{"onValueChanged"}]
       24 DUPCLOSURE                       R7 K7 [PROTO_1]
       25 SETTABLEKS                       R7 R6 K5 ["onValueChanged"]
       27 MOVE                             R7 R3
       28 CALL                             R4 3 -1
       29 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["createElement"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["Item"]
        7 DUPTABLE                         R5 K6 [{"value", "label", "size", "placement"}]
        8 GETTABLEKS                       R6 R0 K2 ["value"]
       10 SETTABLEKS                       R6 R5 K2 ["value"]
       12 GETTABLEKS                       R6 R0 K3 ["label"]
       14 SETTABLEKS                       R6 R5 K3 ["label"]
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K4 ["size"]
       19 SETTABLEKS                       R6 R5 K4 ["size"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K5 ["placement"]
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
        4 DUPTABLE                         R3 K5 [{["value"] = "A", ["label"] = "Short"}]
        5 DUPTABLE                         R4 K8 [{["value"] = "B", ["label"] = "Medium length label"}]
        6 DUPTABLE                         R5 K11 [{["value"] = "C", ["label"] = "A much, much longer label to test wrapping and layout in the radio group"}]
        7 DUPTABLE                         R6 K14 [{["value"] = "D", ["label"] = "Tiny"}]
        8 DUPTABLE                         R7 K17 [{["value"] = "E", ["label"] = "Extremely long label that spans multiple lines to ensure alignment across items with a label on the left"}]
        9 SETLIST                          R2 R3 5 [1]
       11 NEWTABLE                         R3 0 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K18 ["forEach"]
       16 MOVE                             R5 R2
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R1
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K19 ["createElement"]
       26 GETUPVAL                         R5 3
       27 DUPTABLE                         R6 K23 [{["tag"] = "auto-y", ["Size"]}]
       28 GETIMPORT                        R7 K26 [UDim2.new]
       30 LOADN                            R8 0
       31 LOADN                            R9 400
       32 LOADN                            R10 0
       33 LOADN                            R11 0
       34 CALL                             R7 4 1
       35 SETTABLEKS                       R7 R6 K22 ["Size"]
       37 DUPTABLE                         R7 K28 [{"RadioGroup"}]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K19 ["createElement"]
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R9 R9 K29 ["Root"]
       44 DUPTABLE                         R10 K31 [{"onValueChanged"}]
       45 DUPCLOSURE                       R11 K32 [PROTO_4]
       46 SETTABLEKS                       R11 R10 K30 ["onValueChanged"]
       48 MOVE                             R11 R3
       49 CALL                             R8 3 1
       50 SETTABLEKS                       R8 R7 K27 ["RadioGroup"]
       52 CALL                             R4 3 -1
       53 RETURN                           R4 -1

PROTO_6:
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K3 [{["tag"] = "auto-xy col gap-small align-x-center padding-medium"}]
        5 DUPTABLE                         R6 K6 [{"ImageContainer", "RadioButton"}]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K0 ["createElement"]
        9 GETUPVAL                         R8 1
       10 DUPTABLE                         R9 K10 [{["cursor"], ["onActivated"], ["tag"] = "radius-medium bg-surface-100 size-2000-2000"}]
       11 GETUPVAL                         R10 2
       12 SETTABLEKS                       R10 R9 K7 ["cursor"]
       14 NEWCLOSURE                       R10 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R10 R9 K8 ["onActivated"]
       19 DUPTABLE                         R10 K12 [{"Image"}]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K0 ["createElement"]
       23 GETUPVAL                         R12 4
       24 DUPTABLE                         R13 K15 [{"Image", "Size", "Position"}]
       25 SETTABLEKS                       R1 R13 K11 ["Image"]
       27 GETIMPORT                        R14 K18 [UDim2.fromScale]
       29 LOADK                            R15 K19 [0.8]
       30 LOADK                            R16 K19 [0.8]
       31 CALL                             R14 2 1
       32 SETTABLEKS                       R14 R13 K13 ["Size"]
       34 GETIMPORT                        R14 K18 [UDim2.fromScale]
       36 LOADK                            R15 K20 [0.1]
       37 LOADK                            R16 K20 [0.1]
       38 CALL                             R14 2 1
       39 SETTABLEKS                       R14 R13 K14 ["Position"]
       41 CALL                             R11 2 1
       42 SETTABLEKS                       R11 R10 K11 ["Image"]
       44 CALL                             R7 3 1
       45 SETTABLEKS                       R7 R6 K4 ["ImageContainer"]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K0 ["createElement"]
       50 GETUPVAL                         R8 5
       51 GETTABLEKS                       R8 R8 K21 ["Item"]
       53 DUPTABLE                         R9 K25 [{"value", "label", "placement"}]
       54 SETTABLEKS                       R0 R9 K22 ["value"]
       56 SETTABLEKS                       R2 R9 K23 ["label"]
       58 GETUPVAL                         R11 6
       59 JUMPIFNOT                        R11 ; [+4]
       60 GETUPVAL                         R10 6
       61 GETTABLEKS                       R10 R10 K24 ["placement"]
       63 JUMPIF                           R10 ; [+1]
       64 LOADNIL                          R10
       65 SETTABLEKS                       R10 R9 K24 ["placement"]
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K5 ["RadioButton"]
       70 CALL                             R3 3 -1
       71 RETURN                           R3 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
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
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K3 ["createElement"]
       31 GETUPVAL                         R8 4
       32 GETTABLEKS                       R8 R8 K4 ["Root"]
       34 DUPTABLE                         R9 K9 [{["value"], ["onValueChanged"], ["Selectable"] = False}]
       35 SETTABLEKS                       R2 R9 K5 ["value"]
       37 SETTABLEKS                       R3 R9 K6 ["onValueChanged"]
       39 DUPTABLE                         R10 K11 [{"Container"}]
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K3 ["createElement"]
       43 GETUPVAL                         R12 2
       44 DUPTABLE                         R13 K14 [{["tag"] = "auto-xy row gap-large wrap"}]
       45 DUPTABLE                         R14 K18 [{"CardA", "CardB", "CardC"}]
       46 MOVE                             R15 R6
       47 LOADK                            R16 K19 ["A"]
       48 LOADK                            R17 K20 ["icons/graphic/success_xlarge"]
       49 LOADK                            R18 K21 ["Success"]
       50 CALL                             R15 3 1
       51 SETTABLEKS                       R15 R14 K15 ["CardA"]
       53 MOVE                             R15 R6
       54 LOADK                            R16 K22 ["B"]
       55 LOADK                            R17 K23 ["icons/graphic/error_xlarge"]
       56 LOADK                            R18 K24 ["Error"]
       57 CALL                             R15 3 1
       58 SETTABLEKS                       R15 R14 K16 ["CardB"]
       60 MOVE                             R15 R6
       61 LOADK                            R16 K25 ["C"]
       62 LOADK                            R17 K26 ["icons/graphic/newclothing_xlarge"]
       63 LOADK                            R18 K27 ["Info"]
       64 CALL                             R15 3 1
       65 SETTABLEKS                       R15 R14 K17 ["CardC"]
       67 CALL                             R11 3 1
       68 SETTABLEKS                       R11 R10 K10 ["Container"]
       70 CALL                             R7 3 -1
       71 RETURN                           R7 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["RadioGroup"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Image"]
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
       76 CAPTURE                          VAL R4
       77 DUPCLOSURE                       R12 K25 [PROTO_5]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 DUPCLOSURE                       R13 K26 [PROTO_9]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R4
       88 DUPTABLE                         R14 K31 [{["summary"] = "Radio Group component", ["stories"], ["controls"]}]
       89 NEWTABLE                         R15 0 3
       91 DUPTABLE                         R16 K35 [{["name"] = "Basic", ["story"]}]
       92 SETTABLEKS                       R11 R16 K34 ["story"]
       94 DUPTABLE                         R17 K38 [{["name"] = "Different Label Lengths", ["summary"] = "Items with labels of varying length", ["story"]}]
       95 SETTABLEKS                       R12 R17 K34 ["story"]
       97 DUPTABLE                         R18 K41 [{["name"] = "Custom Selection", ["summary"] = "Select images instead of radio buttons", ["story"]}]
       98 SETTABLEKS                       R13 R18 K34 ["story"]
      100 SETLIST                          R15 R16 3 [1]
      102 SETTABLEKS                       R15 R14 K29 ["stories"]
      104 DUPTABLE                         R15 K46 [{["optionLabel"] = "Option", ["size"], ["placement"]}]
      105 GETTABLEKS                       R16 R3 K47 ["values"]
      107 MOVE                             R17 R8
      108 CALL                             R16 1 1
      109 SETTABLEKS                       R16 R15 K44 ["size"]
      111 GETTABLEKS                       R16 R3 K47 ["values"]
      113 MOVE                             R17 R9
      114 CALL                             R16 1 1
      115 SETTABLEKS                       R16 R15 K45 ["placement"]
      117 SETTABLEKS                       R15 R14 K30 ["controls"]
      119 RETURN                           R14 1
