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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["filter"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["join"]
        3 DUPTABLE                         R2 K4 [{"Items", "ShowGridLabels", "ViewType"}]
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K1 ["Items"]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["ShowGridLabels"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K5 ["Grid"]
       14 SETTABLEKS                       R3 R2 K3 ["ViewType"]
       16 MOVE                             R3 R0
       17 CALL                             R1 2 1
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R2 R3 K6 ["createElement"]
       21 GETUPVAL                         R3 3
       22 MOVE                             R4 R1
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 NEWTABLE                         R4 0 1
       12 GETUPVAL                         R5 1
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R3 R4 K2 ["join"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       28 GETTABLEKS                       R7 R0 K8 ["Components"]
       30 GETTABLEKS                       R6 R7 K9 ["MaterialGrid"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R8 R0 K10 ["Enums"]
       37 GETTABLEKS                       R7 R8 K11 ["MaterialPreviewGeometryType"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R9 R0 K10 ["Enums"]
       44 GETTABLEKS                       R8 R9 K12 ["ViewType"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K4 [require]
       49 GETTABLEKS                       R10 R0 K13 ["TestHelpers"]
       51 GETTABLEKS                       R9 R10 K14 ["createMaterialVariants"]
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
       69 DUPTABLE                         R14 K21 [{"Loading", "Material"}]
       70 LOADB                            R15 1
       71 SETTABLEKS                       R15 R14 K19 ["Loading"]
       73 GETIMPORT                        R15 K24 [Enum.Material.Brick]
       75 SETTABLEKS                       R15 R14 K20 ["Material"]
       77 GETIMPORT                        R15 K26 [Enum.Material.Basalt]
       79 GETIMPORT                        R16 K28 [Enum.Material.Grass]
       81 SETLIST                          R13 R14 3 [1]
       83 DUPCLOSURE                       R14 K29 [PROTO_3]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 DUPCLOSURE                       R15 K30 [PROTO_8]
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R3
       93 DUPTABLE                         R16 K32 [{"stories"}]
       94 NEWTABLE                         R17 0 5
       96 DUPTABLE                         R18 K36 [{"name", "summary", "story"}]
       97 LOADK                            R19 K37 ["Grid"]
       98 SETTABLEKS                       R19 R18 K33 ["name"]
      100 LOADK                            R19 K38 ["The item size can be set using props or style"]
      101 SETTABLEKS                       R19 R18 K34 ["summary"]
      103 DUPTABLE                         R20 K40 [{"Size", "ViewType"}]
      104 GETIMPORT                        R21 K18 [UDim2.new]
      106 LOADN                            R22 1
      107 LOADN                            R23 0
      108 LOADN                            R24 0
      109 LOADN                            R25 144
      110 CALL                             R21 4 1
      111 SETTABLEKS                       R21 R20 K39 ["Size"]
      113 GETTABLEKS                       R21 R7 K37 ["Grid"]
      115 SETTABLEKS                       R21 R20 K12 ["ViewType"]
      117 GETTABLEKS                       R22 R20 K41 ["Items"]
      119 OR                               R21 R22 R12
      120 NEWCLOSURE                       R19 P3
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R21
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R20
      127 SETTABLEKS                       R19 R18 K35 ["story"]
      129 DUPTABLE                         R19 K36 [{"name", "summary", "story"}]
      130 LOADK                            R20 K42 ["List"]
      131 SETTABLEKS                       R20 R19 K33 ["name"]
      133 LOADK                            R20 K43 ["The item height can be set using props or style"]
      134 SETTABLEKS                       R20 R19 K34 ["summary"]
      136 DUPTABLE                         R21 K40 [{"Size", "ViewType"}]
      137 GETIMPORT                        R22 K18 [UDim2.new]
      139 LOADN                            R23 0
      140 LOADN                            R24 200
      141 LOADN                            R25 0
      142 LOADN                            R26 144
      143 CALL                             R22 4 1
      144 SETTABLEKS                       R22 R21 K39 ["Size"]
      146 GETTABLEKS                       R22 R7 K42 ["List"]
      148 SETTABLEKS                       R22 R21 K12 ["ViewType"]
      150 GETTABLEKS                       R23 R21 K41 ["Items"]
      152 OR                               R22 R23 R12
      153 NEWCLOSURE                       R20 P3
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R22
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R21
      160 SETTABLEKS                       R20 R19 K35 ["story"]
      162 DUPTABLE                         R20 K36 [{"name", "summary", "story"}]
      163 LOADK                            R21 K19 ["Loading"]
      164 SETTABLEKS                       R21 R20 K33 ["name"]
      166 LOADK                            R21 K44 ["Show items with a shimmer effect"]
      167 SETTABLEKS                       R21 R20 K34 ["summary"]
      169 DUPTABLE                         R22 K46 [{"Items", "ShowGridLabels", "Size", "ViewType"}]
      170 SETTABLEKS                       R13 R22 K41 ["Items"]
      172 LOADB                            R23 1
      173 SETTABLEKS                       R23 R22 K45 ["ShowGridLabels"]
      175 SETTABLEKS                       R10 R22 K39 ["Size"]
      177 GETTABLEKS                       R23 R7 K37 ["Grid"]
      179 SETTABLEKS                       R23 R22 K12 ["ViewType"]
      181 GETTABLEKS                       R24 R22 K41 ["Items"]
      183 OR                               R23 R24 R12
      184 NEWCLOSURE                       R21 P3
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R23
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R22
      191 SETTABLEKS                       R21 R20 K35 ["story"]
      193 DUPTABLE                         R21 K36 [{"name", "summary", "story"}]
      194 LOADK                            R22 K47 ["Plane"]
      195 SETTABLEKS                       R22 R21 K33 ["name"]
      197 LOADK                            R22 K48 ["Shows item as a Plane."]
      198 SETTABLEKS                       R22 R21 K34 ["summary"]
      200 DUPTABLE                         R23 K49 [{"Items", "MaterialPreviewGeometryType", "Size"}]
      201 SETTABLEKS                       R11 R23 K41 ["Items"]
      203 GETTABLEKS                       R24 R6 K47 ["Plane"]
      205 SETTABLEKS                       R24 R23 K11 ["MaterialPreviewGeometryType"]
      207 SETTABLEKS                       R10 R23 K39 ["Size"]
      209 GETTABLEKS                       R25 R23 K41 ["Items"]
      211 OR                               R24 R25 R12
      212 NEWCLOSURE                       R22 P3
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R24
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R23
      219 SETTABLEKS                       R22 R21 K35 ["story"]
      221 DUPTABLE                         R22 K36 [{"name", "summary", "story"}]
      222 LOADK                            R23 K50 ["Dominus"]
      223 SETTABLEKS                       R23 R22 K33 ["name"]
      225 LOADK                            R23 K51 ["Shows item as a Dominus."]
      226 SETTABLEKS                       R23 R22 K34 ["summary"]
      228 DUPTABLE                         R24 K52 [{"MaterialPreviewGeometryType", "Size"}]
      229 GETTABLEKS                       R25 R6 K50 ["Dominus"]
      231 SETTABLEKS                       R25 R24 K11 ["MaterialPreviewGeometryType"]
      233 SETTABLEKS                       R10 R24 K39 ["Size"]
      235 GETTABLEKS                       R26 R24 K41 ["Items"]
      237 OR                               R25 R26 R12
      238 NEWCLOSURE                       R23 P3
      239 CAPTURE                          VAL R4
      240 CAPTURE                          VAL R25
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R3
      243 CAPTURE                          VAL R12
      244 CAPTURE                          VAL R24
      245 SETTABLEKS                       R23 R22 K35 ["story"]
      247 SETLIST                          R17 R18 5 [1]
      249 SETTABLEKS                       R17 R16 K31 ["stories"]
      251 RETURN                           R16 1
