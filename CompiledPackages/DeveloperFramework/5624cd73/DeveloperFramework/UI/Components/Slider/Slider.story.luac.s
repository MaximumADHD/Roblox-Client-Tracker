PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"value"}]
        2 SETTABLEKS                       R0 R3 K0 ["value"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"value"}]
        1 GETTABLEKS                       R3 R0 K2 ["props"]
        3 GETTABLEKS                       R2 R3 K3 ["InitialValue"]
        5 SETTABLEKS                       R2 R1 K0 ["value"]
        7 SETTABLEKS                       R1 R0 K4 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["onValueChanged"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onValueChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K11 [{"Value", "Min", "Max", "Disabled", "OnValueChanged", "ShowInput", "Size", "SnapIncrement", "VerticalDragTolerance"}]
        7 GETTABLEKS                       R6 R0 K12 ["state"]
        9 GETTABLEKS                       R5 R6 K13 ["value"]
       11 SETTABLEKS                       R5 R4 K2 ["Value"]
       13 GETTABLEKS                       R5 R1 K3 ["Min"]
       15 SETTABLEKS                       R5 R4 K3 ["Min"]
       17 GETTABLEKS                       R5 R1 K4 ["Max"]
       19 SETTABLEKS                       R5 R4 K4 ["Max"]
       21 GETTABLEKS                       R5 R1 K5 ["Disabled"]
       23 SETTABLEKS                       R5 R4 K5 ["Disabled"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R5 R4 K6 ["OnValueChanged"]
       29 GETTABLEKS                       R5 R1 K7 ["ShowInput"]
       31 SETTABLEKS                       R5 R4 K7 ["ShowInput"]
       33 GETIMPORT                        R5 K16 [UDim2.fromOffset]
       35 LOADN                            R6 44
       36 LOADN                            R7 32
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K8 ["Size"]
       40 GETTABLEKS                       R5 R1 K9 ["SnapIncrement"]
       42 SETTABLEKS                       R5 R4 K9 ["SnapIncrement"]
       44 LOADN                            R5 0
       45 SETTABLEKS                       R5 R4 K10 ["VerticalDragTolerance"]
       47 CALL                             R2 2 -1
       48 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["Slider"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K10 ["PureComponent"]
       27 LOADK                            R5 K11 ["SliderStory"]
       28 NAMECALL                         R3 R3 K12 ["extend"]
       30 CALL                             R3 2 1
       31 DUPCLOSURE                       R4 K13 [PROTO_1]
       32 SETTABLEKS                       R4 R3 K14 ["init"]
       34 DUPCLOSURE                       R4 K15 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R4 R3 K16 ["render"]
       39 DUPTABLE                         R4 K18 [{"stories"}]
       40 NEWTABLE                         R5 0 3
       42 DUPTABLE                         R6 K21 [{"name", "story"}]
       43 LOADK                            R7 K9 ["Slider"]
       44 SETTABLEKS                       R7 R6 K19 ["name"]
       46 GETTABLEKS                       R7 R1 K22 ["createElement"]
       48 MOVE                             R8 R3
       49 DUPTABLE                         R9 K27 [{"InitialValue", "Min", "Max", "SnapIncrement"}]
       50 LOADN                            R10 4
       51 SETTABLEKS                       R10 R9 K23 ["InitialValue"]
       53 LOADN                            R10 0
       54 SETTABLEKS                       R10 R9 K24 ["Min"]
       56 LOADN                            R10 4
       57 SETTABLEKS                       R10 R9 K25 ["Max"]
       59 LOADN                            R10 1
       60 SETTABLEKS                       R10 R9 K26 ["SnapIncrement"]
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K20 ["story"]
       65 DUPTABLE                         R7 K21 [{"name", "story"}]
       66 LOADK                            R8 K28 ["Slider with input"]
       67 SETTABLEKS                       R8 R7 K19 ["name"]
       69 GETTABLEKS                       R8 R1 K22 ["createElement"]
       71 MOVE                             R9 R3
       72 DUPTABLE                         R10 K30 [{"InitialValue", "Min", "Max", "ShowInput", "SnapIncrement"}]
       73 LOADK                            R11 K31 [0.5]
       74 SETTABLEKS                       R11 R10 K23 ["InitialValue"]
       76 LOADN                            R11 0
       77 SETTABLEKS                       R11 R10 K24 ["Min"]
       79 LOADN                            R11 1
       80 SETTABLEKS                       R11 R10 K25 ["Max"]
       82 LOADB                            R11 1
       83 SETTABLEKS                       R11 R10 K29 ["ShowInput"]
       85 LOADK                            R11 K32 [0.05]
       86 SETTABLEKS                       R11 R10 K26 ["SnapIncrement"]
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K20 ["story"]
       91 DUPTABLE                         R8 K21 [{"name", "story"}]
       92 LOADK                            R9 K33 ["Disabled slider"]
       93 SETTABLEKS                       R9 R8 K19 ["name"]
       95 GETTABLEKS                       R9 R1 K22 ["createElement"]
       97 MOVE                             R10 R3
       98 DUPTABLE                         R11 K35 [{"InitialValue", "Min", "Max", "SnapIncrement", "Disabled"}]
       99 LOADN                            R12 8
      100 SETTABLEKS                       R12 R11 K23 ["InitialValue"]
      102 LOADN                            R12 0
      103 SETTABLEKS                       R12 R11 K24 ["Min"]
      105 LOADN                            R12 10
      106 SETTABLEKS                       R12 R11 K25 ["Max"]
      108 LOADN                            R12 1
      109 SETTABLEKS                       R12 R11 K26 ["SnapIncrement"]
      111 LOADB                            R12 1
      112 SETTABLEKS                       R12 R11 K34 ["Disabled"]
      114 CALL                             R9 2 1
      115 SETTABLEKS                       R9 R8 K20 ["story"]
      117 SETLIST                          R5 R6 3 [1]
      119 SETTABLEKS                       R5 R4 K17 ["stories"]
      121 RETURN                           R4 1
