PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"value"}]
        2 SETTABLEKS                       R0 R3 K0 ["value"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"value"}]
        1 GETTABLEKS                       R2 R0 K2 ["props"]
        3 GETTABLEKS                       R2 R2 K3 ["InitialValue"]
        5 SETTABLEKS                       R2 R1 K0 ["value"]
        7 SETTABLEKS                       R1 R0 K4 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["onChanged"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K9 [{"Disabled", "OnChanged", "Schema", "Size", "Tooltip", "Value"}]
        9 GETTABLEKS                       R6 R1 K3 ["Disabled"]
       11 SETTABLEKS                       R6 R5 K3 ["Disabled"]
       13 GETTABLEKS                       R6 R0 K10 ["onChanged"]
       15 SETTABLEKS                       R6 R5 K4 ["OnChanged"]
       17 GETTABLEKS                       R6 R1 K5 ["Schema"]
       19 SETTABLEKS                       R6 R5 K5 ["Schema"]
       21 GETIMPORT                        R6 K13 [UDim2.fromOffset]
       23 LOADN                            R7 44
       24 LOADN                            R8 24
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K6 ["Size"]
       28 GETTABLEKS                       R6 R1 K7 ["Tooltip"]
       30 SETTABLEKS                       R6 R5 K7 ["Tooltip"]
       32 GETTABLEKS                       R6 R2 K14 ["value"]
       34 SETTABLEKS                       R6 R5 K8 ["Value"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Disabled", "InitialValue", "Schema", "Tooltip"}]
        5 GETTABLEKS                       R4 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 LOADK                            R4 K7 ["A Button Label"]
       12 SETTABLEKS                       R4 R3 K2 ["InitialValue"]
       14 DUPTABLE                         R4 K9 [{"Type"}]
       15 LOADK                            R5 K10 ["Text"]
       16 SETTABLEKS                       R5 R4 K8 ["Type"]
       18 SETTABLEKS                       R4 R3 K3 ["Schema"]
       20 LOADK                            R4 K11 ["A Text cell"]
       21 SETTABLEKS                       R4 R3 K4 ["Tooltip"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Disabled", "InitialValue", "Schema", "Tooltip"}]
        5 GETTABLEKS                       R4 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 GETIMPORT                        R4 K9 [Color3.fromRGB]
       13 LOADN                            R5 20
       14 LOADN                            R6 160
       15 LOADN                            R7 200
       16 CALL                             R4 3 1
       17 SETTABLEKS                       R4 R3 K2 ["InitialValue"]
       19 DUPTABLE                         R4 K11 [{"Type"}]
       20 LOADK                            R5 K12 ["Color"]
       21 SETTABLEKS                       R5 R4 K10 ["Type"]
       23 SETTABLEKS                       R4 R3 K3 ["Schema"]
       25 LOADK                            R4 K13 ["A Color cell"]
       26 SETTABLEKS                       R4 R3 K4 ["Tooltip"]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Disabled", "InitialValue", "Schema", "Tooltip"}]
        5 GETTABLEKS                       R4 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 LOADK                            R4 K7 [""]
       12 SETTABLEKS                       R4 R3 K2 ["InitialValue"]
       14 DUPTABLE                         R4 K9 [{"Type"}]
       15 LOADK                            R5 K10 ["Checkbox"]
       16 SETTABLEKS                       R5 R4 K8 ["Type"]
       18 SETTABLEKS                       R4 R3 K3 ["Schema"]
       20 LOADK                            R4 K11 ["A Checkbox cell"]
       21 SETTABLEKS                       R4 R3 K4 ["Tooltip"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Disabled", "InitialValue", "Schema", "Tooltip"}]
        5 GETTABLEKS                       R4 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 LOADK                            R4 K7 [0.5]
       12 SETTABLEKS                       R4 R3 K2 ["InitialValue"]
       14 DUPTABLE                         R4 K13 [{"Type", "Min", "Max", "SnapIncrement", "ShowInput"}]
       15 LOADK                            R5 K14 ["Slider"]
       16 SETTABLEKS                       R5 R4 K8 ["Type"]
       18 LOADN                            R5 0
       19 SETTABLEKS                       R5 R4 K9 ["Min"]
       21 LOADN                            R5 1
       22 SETTABLEKS                       R5 R4 K10 ["Max"]
       24 LOADK                            R5 K15 [0.05]
       25 SETTABLEKS                       R5 R4 K11 ["SnapIncrement"]
       27 LOADB                            R5 1
       28 SETTABLEKS                       R5 R4 K12 ["ShowInput"]
       30 SETTABLEKS                       R4 R3 K3 ["Schema"]
       32 LOADK                            R4 K16 ["A Slider cell"]
       33 SETTABLEKS                       R4 R3 K4 ["Tooltip"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Disabled", "InitialValue", "Schema", "Tooltip"}]
        5 GETTABLEKS                       R4 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 LOADK                            R4 K7 ["SourceSans"]
       12 SETTABLEKS                       R4 R3 K2 ["InitialValue"]
       14 DUPTABLE                         R4 K10 [{"Type", "Items"}]
       15 LOADK                            R5 K11 ["Select"]
       16 SETTABLEKS                       R5 R4 K8 ["Type"]
       18 NEWTABLE                         R5 0 3
       20 DUPTABLE                         R6 K14 [{"Id", "Label"}]
       21 LOADK                            R7 K15 ["Gotham"]
       22 SETTABLEKS                       R7 R6 K12 ["Id"]
       24 LOADK                            R7 K15 ["Gotham"]
       25 SETTABLEKS                       R7 R6 K13 ["Label"]
       27 DUPTABLE                         R7 K14 [{"Id", "Label"}]
       28 LOADK                            R8 K7 ["SourceSans"]
       29 SETTABLEKS                       R8 R7 K12 ["Id"]
       31 LOADK                            R8 K7 ["SourceSans"]
       32 SETTABLEKS                       R8 R7 K13 ["Label"]
       34 DUPTABLE                         R8 K14 [{"Id", "Label"}]
       35 LOADK                            R9 K16 ["SourceSansBold"]
       36 SETTABLEKS                       R9 R8 K12 ["Id"]
       38 LOADK                            R9 K16 ["SourceSansBold"]
       39 SETTABLEKS                       R9 R8 K13 ["Label"]
       41 SETLIST                          R5 R6 3 [1]
       43 SETTABLEKS                       R5 R4 K9 ["Items"]
       45 SETTABLEKS                       R4 R3 K3 ["Schema"]
       47 LOADK                            R4 K17 ["A Select cell"]
       48 SETTABLEKS                       R4 R3 K4 ["Tooltip"]
       50 CALL                             R1 2 -1
       51 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Disabled", "IntialValue", "Schema", "Tooltip"}]
        5 GETTABLEKS                       R4 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 LOADK                            R4 K7 ["Left"]
       12 SETTABLEKS                       R4 R3 K2 ["IntialValue"]
       14 DUPTABLE                         R4 K10 [{"Type", "Items"}]
       15 LOADK                            R5 K11 ["SingleSelectButton"]
       16 SETTABLEKS                       R5 R4 K8 ["Type"]
       18 NEWTABLE                         R5 0 3
       20 DUPTABLE                         R6 K14 [{"Id", "Label"}]
       21 LOADK                            R7 K7 ["Left"]
       22 SETTABLEKS                       R7 R6 K12 ["Id"]
       24 LOADK                            R7 K7 ["Left"]
       25 SETTABLEKS                       R7 R6 K13 ["Label"]
       27 DUPTABLE                         R7 K14 [{"Id", "Label"}]
       28 LOADK                            R8 K15 ["Center"]
       29 SETTABLEKS                       R8 R7 K12 ["Id"]
       31 LOADK                            R8 K15 ["Center"]
       32 SETTABLEKS                       R8 R7 K13 ["Label"]
       34 DUPTABLE                         R8 K14 [{"Id", "Label"}]
       35 LOADK                            R9 K16 ["Right"]
       36 SETTABLEKS                       R9 R8 K12 ["Id"]
       38 LOADK                            R9 K16 ["Right"]
       39 SETTABLEKS                       R9 R8 K13 ["Label"]
       41 SETLIST                          R5 R6 3 [1]
       43 SETTABLEKS                       R5 R4 K9 ["Items"]
       45 SETTABLEKS                       R4 R3 K3 ["Schema"]
       47 LOADK                            R4 K17 ["A Single Select Button cell"]
       48 SETTABLEKS                       R4 R3 K4 ["Tooltip"]
       50 CALL                             R1 2 -1
       51 RETURN                           R1 -1

PROTO_9:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 GETTABLEKS                       R3 R0 K1 ["Y"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Disabled", "InitialValue", "Schema", "Tooltip"}]
        5 GETTABLEKS                       R4 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 GETIMPORT                        R4 K9 [Vector2.new]
       13 LOADN                            R5 253
       14 LOADK                            R6 K10 [4.2]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K2 ["InitialValue"]
       18 DUPTABLE                         R4 K15 [{"Type", "Components", "GetValue", "GetComponents"}]
       19 LOADK                            R5 K16 ["Vector"]
       20 SETTABLEKS                       R5 R4 K11 ["Type"]
       22 NEWTABLE                         R5 0 2
       24 LOADK                            R6 K17 ["X"]
       25 LOADK                            R7 K18 ["Y"]
       26 SETLIST                          R5 R6 2 [1]
       28 SETTABLEKS                       R5 R4 K12 ["Components"]
       30 DUPCLOSURE                       R5 K19 [PROTO_9]
       31 SETTABLEKS                       R5 R4 K13 ["GetValue"]
       33 DUPCLOSURE                       R5 K20 [PROTO_10]
       34 SETTABLEKS                       R5 R4 K14 ["GetComponents"]
       36 SETTABLEKS                       R4 R3 K3 ["Schema"]
       38 LOADK                            R4 K21 ["A Vector2 cell"]
       39 SETTABLEKS                       R4 R3 K4 ["Tooltip"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1

PROTO_12:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 GETTABLEN                        R4 R0 3
        5 GETTABLEN                        R5 R0 4
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_13:
        0 NEWTABLE                         R1 0 4
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 GETTABLEKS                       R2 R2 K1 ["Scale"]
        6 GETTABLEKS                       R3 R0 K0 ["X"]
        8 GETTABLEKS                       R3 R3 K2 ["Offset"]
       10 GETTABLEKS                       R4 R0 K3 ["Y"]
       12 GETTABLEKS                       R4 R4 K1 ["Scale"]
       14 GETTABLEKS                       R5 R0 K3 ["Y"]
       16 GETTABLEKS                       R5 R5 K2 ["Offset"]
       18 SETLIST                          R1 R2 4 [1]
       20 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Disabled", "InitialValue", "Schema", "Tooltip"}]
        5 GETTABLEKS                       R4 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 GETIMPORT                        R4 K9 [UDim2.new]
       13 LOADN                            R5 1
       14 LOADN                            R6 0
       15 LOADN                            R7 1
       16 LOADN                            R8 226
       17 CALL                             R4 4 1
       18 SETTABLEKS                       R4 R3 K2 ["InitialValue"]
       20 DUPTABLE                         R4 K14 [{"Type", "Components", "GetValue", "GetComponents"}]
       21 LOADK                            R5 K15 ["Vector"]
       22 SETTABLEKS                       R5 R4 K10 ["Type"]
       24 NEWTABLE                         R5 0 4
       26 LOADK                            R6 K16 ["X"]
       27 LOADK                            R7 K17 [""]
       28 LOADK                            R8 K18 ["Y"]
       29 LOADK                            R9 K17 [""]
       30 SETLIST                          R5 R6 4 [1]
       32 SETTABLEKS                       R5 R4 K11 ["Components"]
       34 DUPCLOSURE                       R5 K19 [PROTO_12]
       35 SETTABLEKS                       R5 R4 K12 ["GetValue"]
       37 DUPCLOSURE                       R5 K20 [PROTO_13]
       38 SETTABLEKS                       R5 R4 K13 ["GetComponents"]
       40 SETTABLEKS                       R4 R3 K3 ["Schema"]
       42 LOADK                            R4 K21 ["A UDim2 cell"]
       43 SETTABLEKS                       R4 R3 K4 ["Tooltip"]
       45 CALL                             R1 2 -1
       46 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["PropertyCell"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K10 ["PureComponent"]
       27 LOADK                            R5 K11 ["PropertyCellStory"]
       28 NAMECALL                         R3 R3 K12 ["extend"]
       30 CALL                             R3 2 1
       31 DUPCLOSURE                       R4 K13 [PROTO_1]
       32 SETTABLEKS                       R4 R3 K14 ["init"]
       34 DUPCLOSURE                       R4 K15 [PROTO_2]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R4 R3 K16 ["render"]
       39 DUPTABLE                         R4 K19 [{"controls", "stories"}]
       40 DUPTABLE                         R5 K21 [{"Disabled"}]
       41 LOADB                            R6 0
       42 SETTABLEKS                       R6 R5 K20 ["Disabled"]
       44 SETTABLEKS                       R5 R4 K17 ["controls"]
       46 NEWTABLE                         R5 0 8
       48 DUPTABLE                         R6 K24 [{"name", "story"}]
       49 LOADK                            R7 K25 ["Text"]
       50 SETTABLEKS                       R7 R6 K22 ["name"]
       52 DUPCLOSURE                       R7 K26 [PROTO_3]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R7 R6 K23 ["story"]
       57 DUPTABLE                         R7 K24 [{"name", "story"}]
       58 LOADK                            R8 K27 ["Color"]
       59 SETTABLEKS                       R8 R7 K22 ["name"]
       61 DUPCLOSURE                       R8 K28 [PROTO_4]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R8 R7 K23 ["story"]
       66 DUPTABLE                         R8 K24 [{"name", "story"}]
       67 LOADK                            R9 K29 ["Checkbox"]
       68 SETTABLEKS                       R9 R8 K22 ["name"]
       70 DUPCLOSURE                       R9 K30 [PROTO_5]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R9 R8 K23 ["story"]
       75 DUPTABLE                         R9 K24 [{"name", "story"}]
       76 LOADK                            R10 K31 ["Slider"]
       77 SETTABLEKS                       R10 R9 K22 ["name"]
       79 DUPCLOSURE                       R10 K32 [PROTO_6]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R10 R9 K23 ["story"]
       84 DUPTABLE                         R10 K24 [{"name", "story"}]
       85 LOADK                            R11 K33 ["Select"]
       86 SETTABLEKS                       R11 R10 K22 ["name"]
       88 DUPCLOSURE                       R11 K34 [PROTO_7]
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R3
       91 SETTABLEKS                       R11 R10 K23 ["story"]
       93 DUPTABLE                         R11 K24 [{"name", "story"}]
       94 LOADK                            R12 K35 ["Single Select Button"]
       95 SETTABLEKS                       R12 R11 K22 ["name"]
       97 DUPCLOSURE                       R12 K36 [PROTO_8]
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R3
      100 SETTABLEKS                       R12 R11 K23 ["story"]
      102 DUPTABLE                         R12 K24 [{"name", "story"}]
      103 LOADK                            R13 K37 ["Vector2"]
      104 SETTABLEKS                       R13 R12 K22 ["name"]
      106 DUPCLOSURE                       R13 K38 [PROTO_11]
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R3
      109 SETTABLEKS                       R13 R12 K23 ["story"]
      111 DUPTABLE                         R13 K24 [{"name", "story"}]
      112 LOADK                            R14 K39 ["UDim2"]
      113 SETTABLEKS                       R14 R13 K22 ["name"]
      115 DUPCLOSURE                       R14 K40 [PROTO_14]
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R14 R13 K23 ["story"]
      120 SETLIST                          R5 R6 8 [1]
      122 SETTABLEKS                       R5 R4 K18 ["stories"]
      124 RETURN                           R4 1
