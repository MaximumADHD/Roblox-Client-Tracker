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
       23 LOADN                            R7 300
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
        4 DUPTABLE                         R3 K7 [{["Disabled"], ["InitialValue"] = "A Button Label", ["Schema"], ["Tooltip"] = "A Text cell"}]
        5 GETTABLEKS                       R4 R0 K8 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 DUPTABLE                         R4 K11 [{["Type"] = "Text"}]
       12 SETTABLEKS                       R4 R3 K4 ["Schema"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["Disabled"], ["InitialValue"], ["Schema"], ["Tooltip"] = "A Color cell"}]
        5 GETTABLEKS                       R4 R0 K7 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 GETIMPORT                        R4 K10 [Color3.fromRGB]
       13 LOADN                            R5 20
       14 LOADN                            R6 160
       15 LOADN                            R7 200
       16 CALL                             R4 3 1
       17 SETTABLEKS                       R4 R3 K2 ["InitialValue"]
       19 DUPTABLE                         R4 K13 [{["Type"] = "Color"}]
       20 SETTABLEKS                       R4 R3 K3 ["Schema"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["Disabled"], ["InitialValue"] = "", ["Schema"], ["Tooltip"] = "A Checkbox cell"}]
        5 GETTABLEKS                       R4 R0 K8 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 DUPTABLE                         R4 K11 [{["Type"] = "Checkbox"}]
       12 SETTABLEKS                       R4 R3 K4 ["Schema"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["Disabled"], ["InitialValue"] = 0.5, ["Schema"], ["Tooltip"] = "A Slider cell"}]
        5 GETTABLEKS                       R4 R0 K8 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 DUPTABLE                         R4 K19 [{["Type"] = "Slider", ["Min"] = 0, ["Max"] = 1, ["SnapIncrement"] = 0.05, ["ShowInput"] = True}]
       12 SETTABLEKS                       R4 R3 K4 ["Schema"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["Disabled"], ["InitialValue"] = "SourceSans", ["Schema"], ["Tooltip"] = "A Select cell"}]
        5 GETTABLEKS                       R4 R0 K8 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 DUPTABLE                         R4 K12 [{["Type"] = "Select", ["Items"]}]
       12 NEWTABLE                         R5 0 3
       14 DUPTABLE                         R6 K16 [{["Id"] = "Gotham", ["Label"] = "Gotham"}]
       15 DUPTABLE                         R7 K17 [{["Id"] = "SourceSans", ["Label"] = "SourceSans"}]
       16 DUPTABLE                         R8 K19 [{["Id"] = "SourceSansBold", ["Label"] = "SourceSansBold"}]
       17 SETLIST                          R5 R6 3 [1]
       19 SETTABLEKS                       R5 R4 K11 ["Items"]
       21 SETTABLEKS                       R4 R3 K4 ["Schema"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["Disabled"], ["IntialValue"] = "Left", ["Schema"], ["Tooltip"] = "A Single Select Button cell"}]
        5 GETTABLEKS                       R4 R0 K8 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 DUPTABLE                         R4 K12 [{["Type"] = "SingleSelectButton", ["Items"]}]
       12 NEWTABLE                         R5 0 3
       14 DUPTABLE                         R6 K15 [{["Id"] = "Left", ["Label"] = "Left"}]
       15 DUPTABLE                         R7 K17 [{["Id"] = "Center", ["Label"] = "Center"}]
       16 DUPTABLE                         R8 K19 [{["Id"] = "Right", ["Label"] = "Right"}]
       17 SETLIST                          R5 R6 3 [1]
       19 SETTABLEKS                       R5 R4 K11 ["Items"]
       21 SETTABLEKS                       R4 R3 K4 ["Schema"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

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
        4 DUPTABLE                         R3 K6 [{["Disabled"], ["InitialValue"], ["Schema"], ["Tooltip"] = "A Vector2 cell"}]
        5 GETTABLEKS                       R4 R0 K7 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 GETIMPORT                        R4 K10 [Vector2.new]
       13 LOADN                            R5 -3
       14 LOADK                            R6 K11 [4.2]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K2 ["InitialValue"]
       18 DUPTABLE                         R4 K17 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
       19 NEWTABLE                         R5 0 2
       21 LOADK                            R6 K18 ["X"]
       22 LOADK                            R7 K19 ["Y"]
       23 SETLIST                          R5 R6 2 [1]
       25 SETTABLEKS                       R5 R4 K14 ["Components"]
       27 DUPCLOSURE                       R5 K20 [PROTO_9]
       28 SETTABLEKS                       R5 R4 K15 ["GetValue"]
       30 DUPCLOSURE                       R5 K21 [PROTO_10]
       31 SETTABLEKS                       R5 R4 K16 ["GetComponents"]
       33 SETTABLEKS                       R4 R3 K3 ["Schema"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

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
        4 DUPTABLE                         R3 K6 [{["Disabled"], ["InitialValue"], ["Schema"], ["Tooltip"] = "A UDim2 cell"}]
        5 GETTABLEKS                       R4 R0 K7 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 GETIMPORT                        R4 K10 [UDim2.new]
       13 LOADN                            R5 1
       14 LOADN                            R6 0
       15 LOADN                            R7 1
       16 LOADN                            R8 -30
       17 CALL                             R4 4 1
       18 SETTABLEKS                       R4 R3 K2 ["InitialValue"]
       20 DUPTABLE                         R4 K16 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
       21 NEWTABLE                         R5 0 4
       23 LOADK                            R6 K17 ["X"]
       24 LOADK                            R7 K18 [""]
       25 LOADK                            R8 K19 ["Y"]
       26 LOADK                            R9 K18 [""]
       27 SETLIST                          R5 R6 4 [1]
       29 SETTABLEKS                       R5 R4 K13 ["Components"]
       31 DUPCLOSURE                       R5 K20 [PROTO_12]
       32 SETTABLEKS                       R5 R4 K14 ["GetValue"]
       34 DUPCLOSURE                       R5 K21 [PROTO_13]
       35 SETTABLEKS                       R5 R4 K15 ["GetComponents"]
       37 SETTABLEKS                       R4 R3 K3 ["Schema"]
       39 CALL                             R1 2 -1
       40 RETURN                           R1 -1

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
       40 DUPTABLE                         R5 K22 [{["Disabled"] = False}]
       41 SETTABLEKS                       R5 R4 K17 ["controls"]
       43 NEWTABLE                         R5 0 8
       45 DUPTABLE                         R6 K26 [{["name"] = "Text", ["story"]}]
       46 DUPCLOSURE                       R7 K27 [PROTO_3]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R7 R6 K25 ["story"]
       51 DUPTABLE                         R7 K29 [{["name"] = "Color", ["story"]}]
       52 DUPCLOSURE                       R8 K30 [PROTO_4]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R8 R7 K25 ["story"]
       57 DUPTABLE                         R8 K32 [{["name"] = "Checkbox", ["story"]}]
       58 DUPCLOSURE                       R9 K33 [PROTO_5]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R9 R8 K25 ["story"]
       63 DUPTABLE                         R9 K35 [{["name"] = "Slider", ["story"]}]
       64 DUPCLOSURE                       R10 K36 [PROTO_6]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R10 R9 K25 ["story"]
       69 DUPTABLE                         R10 K38 [{["name"] = "Select", ["story"]}]
       70 DUPCLOSURE                       R11 K39 [PROTO_7]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R11 R10 K25 ["story"]
       75 DUPTABLE                         R11 K41 [{["name"] = "Single Select Button", ["story"]}]
       76 DUPCLOSURE                       R12 K42 [PROTO_8]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R12 R11 K25 ["story"]
       81 DUPTABLE                         R12 K44 [{["name"] = "Vector2", ["story"]}]
       82 DUPCLOSURE                       R13 K45 [PROTO_11]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R13 R12 K25 ["story"]
       87 DUPTABLE                         R13 K47 [{["name"] = "UDim2", ["story"]}]
       88 DUPCLOSURE                       R14 K48 [PROTO_14]
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R3
       91 SETTABLEKS                       R14 R13 K25 ["story"]
       93 SETLIST                          R5 R6 8 [1]
       95 SETTABLEKS                       R5 R4 K18 ["stories"]
       97 RETURN                           R4 1
