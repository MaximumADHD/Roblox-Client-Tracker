PROTO_0:
        0 LOADB                            R1 0
        1 GETIMPORT                        R2 K3 [Enum.Material.Air]
        3 JUMPIFEQ                         R0 R2 ; [+7]
        5 GETIMPORT                        R2 K5 [Enum.Material.Water]
        7 JUMPIFNOTEQ                      R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filter"]
        3 GETIMPORT                        R1 K3 [Enum.Material]
        5 NAMECALL                         R1 R1 K4 ["GetEnumItems"]
        7 CALL                             R1 1 1
        8 DUPCLOSURE                       R2 K5 [PROTO_0]
        9 CALL                             R0 2 1
       10 GETIMPORT                        R1 K8 [table.sort]
       12 MOVE                             R2 R0
       13 DUPCLOSURE                       R3 K9 [PROTO_1]
       14 CALL                             R1 2 0
       15 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 DUPTABLE                         R2 K5 [{["Items"], ["ShowGridLabels"] = False, ["ViewType"]}]
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K1 ["Items"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K6 ["Grid"]
       11 SETTABLEKS                       R3 R2 K4 ["ViewType"]
       13 MOVE                             R3 R0
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K7 ["createElement"]
       18 GETUPVAL                         R3 3
       19 MOVE                             R4 R1
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 FASTCALL1                        TYPEOF R4 ; [+3]
        5 MOVE                             R6 R4
        6 GETIMPORT                        R5 K1 [typeof]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKS                    R5 K2 ["Instance"] ; [+9]
       11 LOADK                            R7 K3 ["MaterialVariant"]
       12 NAMECALL                         R5 R4 K4 ["IsA"]
       14 CALL                             R5 2 1
       15 JUMPIFNOT                        R5 ; [+3]
       16 LOADNIL                          R5
       17 SETTABLEKS                       R5 R4 K5 ["Parent"]
       19 FORGLOOP                         R0 2 ; [-16]
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 FASTCALL1                        TYPEOF R4 ; [+3]
        5 MOVE                             R6 R4
        6 GETIMPORT                        R5 K1 [typeof]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKS                    R5 K2 ["Instance"] ; [+14]
       11 LOADK                            R7 K3 ["MaterialVariant"]
       12 NAMECALL                         R5 R4 K4 ["IsA"]
       14 CALL                             R5 2 1
       15 JUMPIFNOT                        R5 ; [+8]
       16 GETIMPORT                        R5 K6 [game]
       18 LOADK                            R7 K7 ["MaterialService"]
       19 NAMECALL                         R5 R5 K8 ["GetService"]
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K9 ["Parent"]
       24 FORGLOOP                         R0 2 ; [-21]
       26 NEWCLOSURE                       R0 P0
       27 CAPTURE                          UPVAL U0
       28 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 NEWTABLE                         R4 0 1
       12 GETUPVAL                         R5 1
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K2 ["join"]
       20 DUPTABLE                         R4 K6 [{"Items", "OnClick", "SelectedItem"}]
       21 GETUPVAL                         R5 4
       22 SETTABLEKS                       R5 R4 K3 ["Items"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R5 R4 K4 ["OnClick"]
       28 SETTABLEKS                       R0 R4 K5 ["SelectedItem"]
       30 GETUPVAL                         R5 5
       31 CALL                             R3 2 -1
       32 CALL                             R2 -1 -1
       33 RETURN                           R2 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Items"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K2 ["Parent"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R2 K6 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R2 K7 ["React"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R0 K8 ["Components"]
       30 GETTABLEKS                       R6 R6 K9 ["MaterialGrid"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R0 K10 ["Enums"]
       37 GETTABLEKS                       R7 R7 K11 ["MaterialPreviewGeometryType"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R8 R0 K10 ["Enums"]
       44 GETTABLEKS                       R8 R8 K12 ["ViewType"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K4 [require]
       49 GETTABLEKS                       R9 R0 K13 ["TestHelpers"]
       51 GETTABLEKS                       R9 R9 K14 ["createMaterialVariants"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K15 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 GETIMPORT                        R10 K18 [UDim2.new]
       58 LOADN                            R11 1
       59 LOADN                            R12 0
       60 LOADN                            R13 0
       61 LOADN                            R14 150
       62 CALL                             R10 4 1
       63 MOVE                             R11 R8
       64 CALL                             R11 0 1
       65 MOVE                             R12 R9
       66 CALL                             R12 0 1
       67 NEWTABLE                         R13 0 3
       69 DUPTABLE                         R14 K22 [{["Loading"] = True, ["Material"]}]
       70 GETIMPORT                        R15 K25 [Enum.Material.Brick]
       72 SETTABLEKS                       R15 R14 K21 ["Material"]
       74 GETIMPORT                        R15 K27 [Enum.Material.Basalt]
       76 GETIMPORT                        R16 K29 [Enum.Material.Grass]
       78 SETLIST                          R13 R14 3 [1]
       80 DUPCLOSURE                       R14 K30 [PROTO_3]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 DUPCLOSURE                       R15 K31 [PROTO_8]
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R3
       90 DUPTABLE                         R16 K33 [{"stories"}]
       91 NEWTABLE                         R17 0 5
       93 DUPTABLE                         R18 K39 [{["name"] = "Grid", ["summary"] = "The item size can be set using props or style", ["story"]}]
       94 DUPTABLE                         R20 K41 [{"Size", "ViewType"}]
       95 GETIMPORT                        R21 K18 [UDim2.new]
       97 LOADN                            R22 1
       98 LOADN                            R23 0
       99 LOADN                            R24 0
      100 LOADN                            R25 400
      101 CALL                             R21 4 1
      102 SETTABLEKS                       R21 R20 K40 ["Size"]
      104 GETTABLEKS                       R21 R7 K35 ["Grid"]
      106 SETTABLEKS                       R21 R20 K12 ["ViewType"]
      108 GETTABLEKS                       R22 R20 K42 ["Items"]
      110 OR                               R21 R22 R12
      111 NEWCLOSURE                       R19 P3
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R21
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R20
      118 SETTABLEKS                       R19 R18 K38 ["story"]
      120 DUPTABLE                         R19 K45 [{["name"] = "List", ["summary"] = "The item height can be set using props or style", ["story"]}]
      121 DUPTABLE                         R21 K41 [{"Size", "ViewType"}]
      122 GETIMPORT                        R22 K18 [UDim2.new]
      124 LOADN                            R23 0
      125 LOADN                            R24 200
      126 LOADN                            R25 0
      127 LOADN                            R26 400
      128 CALL                             R22 4 1
      129 SETTABLEKS                       R22 R21 K40 ["Size"]
      131 GETTABLEKS                       R22 R7 K43 ["List"]
      133 SETTABLEKS                       R22 R21 K12 ["ViewType"]
      135 GETTABLEKS                       R23 R21 K42 ["Items"]
      137 OR                               R22 R23 R12
      138 NEWCLOSURE                       R20 P3
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R22
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R21
      145 SETTABLEKS                       R20 R19 K38 ["story"]
      147 DUPTABLE                         R20 K47 [{["name"] = "Loading", ["summary"] = "Show items with a shimmer effect", ["story"]}]
      148 DUPTABLE                         R22 K49 [{["Items"], ["ShowGridLabels"] = True, ["Size"], ["ViewType"]}]
      149 SETTABLEKS                       R13 R22 K42 ["Items"]
      151 SETTABLEKS                       R10 R22 K40 ["Size"]
      153 GETTABLEKS                       R23 R7 K35 ["Grid"]
      155 SETTABLEKS                       R23 R22 K12 ["ViewType"]
      157 GETTABLEKS                       R24 R22 K42 ["Items"]
      159 OR                               R23 R24 R12
      160 NEWCLOSURE                       R21 P3
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R23
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R22
      167 SETTABLEKS                       R21 R20 K38 ["story"]
      169 DUPTABLE                         R21 K52 [{["name"] = "Plane", ["summary"] = "Shows item as a Plane.", ["story"]}]
      170 DUPTABLE                         R23 K53 [{"Items", "MaterialPreviewGeometryType", "Size"}]
      171 SETTABLEKS                       R11 R23 K42 ["Items"]
      173 GETTABLEKS                       R24 R6 K50 ["Plane"]
      175 SETTABLEKS                       R24 R23 K11 ["MaterialPreviewGeometryType"]
      177 SETTABLEKS                       R10 R23 K40 ["Size"]
      179 GETTABLEKS                       R25 R23 K42 ["Items"]
      181 OR                               R24 R25 R12
      182 NEWCLOSURE                       R22 P3
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R14
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R23
      189 SETTABLEKS                       R22 R21 K38 ["story"]
      191 DUPTABLE                         R22 K56 [{["name"] = "Dominus", ["summary"] = "Shows item as a Dominus.", ["story"]}]
      192 DUPTABLE                         R24 K57 [{"MaterialPreviewGeometryType", "Size"}]
      193 GETTABLEKS                       R25 R6 K54 ["Dominus"]
      195 SETTABLEKS                       R25 R24 K11 ["MaterialPreviewGeometryType"]
      197 SETTABLEKS                       R10 R24 K40 ["Size"]
      199 GETTABLEKS                       R26 R24 K42 ["Items"]
      201 OR                               R25 R26 R12
      202 NEWCLOSURE                       R23 P3
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R25
      205 CAPTURE                          VAL R14
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R24
      209 SETTABLEKS                       R23 R22 K38 ["story"]
      211 SETLIST                          R17 R18 5 [1]
      213 SETTABLEKS                       R17 R16 K32 ["stories"]
      215 RETURN                           R16 1
