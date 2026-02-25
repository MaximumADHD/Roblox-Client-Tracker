PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["createElement"]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["Item"]
        7 DUPTABLE                         R5 K6 [{"value", "label", "isDisabled", "size"}]
        8 SETTABLEKS                       R0 R5 K2 ["value"]
       10 GETUPVAL                         R8 3
       11 LENGTH                           R7 R8
       12 LOADN                            R8 0
       13 JUMPIFNOTLT                      R8 R7 ; [+9]
       15 LOADK                            R7 K7 ["%* %*"]
       16 GETUPVAL                         R9 3
       17 MOVE                             R10 R0
       18 NAMECALL                         R7 R7 K8 ["format"]
       20 CALL                             R7 3 1
       21 MOVE                             R6 R7
       22 JUMP                             ; [+1]
       23 LOADK                            R6 K9 [""]
       24 SETTABLEKS                       R6 R5 K3 ["label"]
       26 JUMPIFEQKS                       R0 K10 ["D"] ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 SETTABLEKS                       R6 R5 K4 ["isDisabled"]
       32 GETUPVAL                         R7 4
       33 GETTABLEKS                       R6 R7 K5 ["size"]
       35 SETTABLEKS                       R6 R5 K5 ["size"]
       37 CALL                             R3 2 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R1 K13 [table.insert]
       41 CALL                             R1 -1 0
       42 RETURN                           R0 0

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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K1 [print]
        5 LOADK                            R1 K2 ["Selected card:"]
        6 GETUPVAL                         R2 1
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
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
       59 DUPTABLE                         R9 K24 [{"value", "label"}]
       60 SETTABLEKS                       R0 R9 K22 ["value"]
       62 SETTABLEKS                       R2 R9 K23 ["label"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K5 ["RadioButton"]
       67 CALL                             R3 3 -1
       68 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R2
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 1
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K2 ["createElement"]
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R6 R7 K3 ["Root"]
       31 DUPTABLE                         R7 K7 [{"value", "onValueChanged", "Selectable"}]
       32 SETTABLEKS                       R0 R7 K4 ["value"]
       34 SETTABLEKS                       R1 R7 K5 ["onValueChanged"]
       36 LOADB                            R8 0
       37 SETTABLEKS                       R8 R7 K6 ["Selectable"]
       39 DUPTABLE                         R8 K9 [{"Container"}]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R9 R10 K2 ["createElement"]
       43 GETUPVAL                         R10 2
       44 DUPTABLE                         R11 K11 [{"tag"}]
       45 LOADK                            R12 K12 ["auto-xy row gap-large wrap"]
       46 SETTABLEKS                       R12 R11 K10 ["tag"]
       48 DUPTABLE                         R12 K16 [{"CardA", "CardB", "CardC"}]
       49 MOVE                             R13 R4
       50 LOADK                            R14 K17 ["A"]
       51 LOADK                            R15 K18 ["icons/graphic/success_xlarge"]
       52 LOADK                            R16 K19 ["Success"]
       53 CALL                             R13 3 1
       54 SETTABLEKS                       R13 R12 K13 ["CardA"]
       56 MOVE                             R13 R4
       57 LOADK                            R14 K20 ["B"]
       58 LOADK                            R15 K21 ["icons/graphic/error_xlarge"]
       59 LOADK                            R16 K22 ["Error"]
       60 CALL                             R13 3 1
       61 SETTABLEKS                       R13 R12 K14 ["CardB"]
       63 MOVE                             R13 R4
       64 LOADK                            R14 K23 ["C"]
       65 LOADK                            R15 K24 ["icons/graphic/newclothing_xlarge"]
       66 LOADK                            R16 K25 ["Info"]
       67 CALL                             R13 3 1
       68 SETTABLEKS                       R13 R12 K15 ["CardC"]
       70 CALL                             R9 3 1
       71 SETTABLEKS                       R9 R8 K8 ["Container"]
       73 CALL                             R5 3 -1
       74 RETURN                           R5 -1

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
       23 GETTABLEKS                       R5 R6 K10 ["RadioGroup"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["Image"]
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
       56 NEWTABLE                         R9 0 5
       58 LOADK                            R10 K18 ["A"]
       59 LOADK                            R11 K19 ["B"]
       60 LOADK                            R12 K20 ["C"]
       61 LOADK                            R13 K21 ["D"]
       62 LOADK                            R14 K22 ["E"]
       63 SETLIST                          R9 R10 5 [1]
       65 DUPCLOSURE                       R10 K23 [PROTO_2]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 DUPCLOSURE                       R11 K24 [PROTO_6]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 DUPTABLE                         R12 K28 [{"summary", "stories", "controls"}]
       77 LOADK                            R13 K29 ["Radio Group component"]
       78 SETTABLEKS                       R13 R12 K25 ["summary"]
       80 NEWTABLE                         R13 0 2
       82 DUPTABLE                         R14 K32 [{"name", "story"}]
       83 LOADK                            R15 K33 ["Basic"]
       84 SETTABLEKS                       R15 R14 K30 ["name"]
       86 SETTABLEKS                       R10 R14 K31 ["story"]
       88 DUPTABLE                         R15 K34 [{"name", "summary", "story"}]
       89 LOADK                            R16 K35 ["Custom Selection"]
       90 SETTABLEKS                       R16 R15 K30 ["name"]
       92 LOADK                            R16 K36 ["Select images instead of radio buttons"]
       93 SETTABLEKS                       R16 R15 K25 ["summary"]
       95 SETTABLEKS                       R11 R15 K31 ["story"]
       97 SETLIST                          R13 R14 2 [1]
       99 SETTABLEKS                       R13 R12 K26 ["stories"]
      101 DUPTABLE                         R13 K39 [{"optionLabel", "size"}]
      102 LOADK                            R14 K40 ["Option"]
      103 SETTABLEKS                       R14 R13 K37 ["optionLabel"]
      105 GETTABLEKS                       R14 R3 K41 ["values"]
      107 MOVE                             R15 R8
      108 CALL                             R14 1 1
      109 SETTABLEKS                       R14 R13 K38 ["size"]
      111 SETTABLEKS                       R13 R12 K27 ["controls"]
      113 RETURN                           R12 1
