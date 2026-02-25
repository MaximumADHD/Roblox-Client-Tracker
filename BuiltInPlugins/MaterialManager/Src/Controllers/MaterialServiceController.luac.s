PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["BaseMaterial"]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R1 R1 K1 ["getMaterialWrapper"]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["_store"]
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R1
       13 CALL                             R4 1 -1
       14 NAMECALL                         R2 R2 K3 ["dispatch"]
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["MaterialVariant"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+19]
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["_initializing"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R4 R0 K3 ["BaseMaterial"]
       14 MOVE                             R5 R0
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R7 R0 K3 ["BaseMaterial"]
       18 CALL                             R6 1 1
       19 MOVE                             R7 R1
       20 NAMECALL                         R2 R2 K4 ["addMaterial"]
       22 CALL                             R2 5 0
       23 RETURN                           R0 0
       24 LOADK                            R3 K5 ["TerrainDetail"]
       25 NAMECALL                         R1 R0 K1 ["IsA"]
       27 CALL                             R1 2 1
       28 JUMPIFNOT                        R1 ; [+41]
       29 GETTABLEKS                       R1 R0 K6 ["Parent"]
       31 JUMPIFNOT                        R1 ; [+38]
       32 GETTABLEKS                       R1 R0 K6 ["Parent"]
       34 LOADK                            R3 K0 ["MaterialVariant"]
       35 NAMECALL                         R1 R1 K1 ["IsA"]
       37 CALL                             R1 2 1
       38 JUMPIFNOT                        R1 ; [+31]
       39 GETTABLEKS                       R1 R0 K6 ["Parent"]
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R4 R1 K3 ["BaseMaterial"]
       44 MOVE                             R5 R1
       45 NAMECALL                         R2 R2 K7 ["getMaterialWrapper"]
       47 CALL                             R2 3 1
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R3 R4 K8 ["_materialChangedListeners"]
       51 GETTABLEKS                       R4 R0 K9 ["Changed"]
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U3
       57 NAMECALL                         R4 R4 K10 ["Connect"]
       59 CALL                             R4 2 1
       60 SETTABLE                         R4 R3 R0
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R3 R4 K11 ["_store"]
       64 GETUPVAL                         R5 3
       65 MOVE                             R6 R2
       66 CALL                             R5 1 -1
       67 NAMECALL                         R3 R3 K12 ["dispatch"]
       69 CALL                             R3 -1 0
       70 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["MaterialVariant"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K2 ["removeMaterial"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0
       11 LOADK                            R3 K3 ["TerrainDetail"]
       12 NAMECALL                         R1 R0 K1 ["IsA"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+33]
       16 GETTABLEKS                       R1 R0 K4 ["Parent"]
       18 JUMPIFNOT                        R1 ; [+30]
       19 GETTABLEKS                       R1 R0 K4 ["Parent"]
       21 LOADK                            R3 K0 ["MaterialVariant"]
       22 NAMECALL                         R1 R1 K1 ["IsA"]
       24 CALL                             R1 2 1
       25 JUMPIFNOT                        R1 ; [+23]
       26 GETTABLEKS                       R1 R0 K4 ["Parent"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R4 R1 K5 ["BaseMaterial"]
       31 MOVE                             R5 R1
       32 NAMECALL                         R2 R2 K6 ["getMaterialWrapper"]
       34 CALL                             R2 3 1
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K7 ["_materialChangedListeners"]
       38 LOADNIL                          R4
       39 SETTABLE                         R4 R3 R0
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R3 R4 K8 ["_store"]
       43 GETUPVAL                         R5 1
       44 MOVE                             R6 R2
       45 CALL                             R5 1 -1
       46 NAMECALL                         R3 R3 K9 ["dispatch"]
       48 CALL                             R3 -1 0
       49 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_nameToEnum"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["_overrideChangedSignal"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["_nameToEnum"]
       11 GETTABLE                         R3 R4 R0
       12 NAMECALL                         R1 R1 K2 ["Fire"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_store"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K1 ["_materialServiceWrapper"]
        8 NAMECALL                         R5 R5 K2 ["asService"]
       10 CALL                             R5 1 1
       11 MOVE                             R7 R0
       12 NAMECALL                         R5 R5 K3 ["GetOverrideStatus"]
       14 CALL                             R5 2 -1
       15 CALL                             R3 -1 -1
       16 NAMECALL                         R1 R1 K4 ["dispatch"]
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_store"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["_materialServiceWrapper"]
        7 NAMECALL                         R4 R4 K2 ["asService"]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R3 R4 K3 ["Use2022Materials"]
       12 CALL                             R2 1 -1
       13 NAMECALL                         R0 R0 K4 ["dispatch"]
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["updateOverrides"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R3 K12 [{"_materialChangedListeners", "_overrideChangedListeners", "_changeHistoryService", "_rootCategory", "_materialPaths", "_materialWrappers", "_materialStatuses", "_materialServiceWrapper", "_nameToEnum", "_initializing", "_store", "_mock"}]
        1 NEWTABLE                         R4 0 0
        3 SETTABLEKS                       R4 R3 K0 ["_materialChangedListeners"]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K1 ["_overrideChangedListeners"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K13 ["new"]
       12 LOADK                            R5 K14 ["ChangeHistoryService"]
       13 MOVE                             R6 R1
       14 CALL                             R4 2 1
       15 SETTABLEKS                       R4 R3 K2 ["_changeHistoryService"]
       17 DUPTABLE                         R4 K18 [{"Categories", "CategoryNames", "Materials"}]
       18 NEWTABLE                         R5 0 0
       20 SETTABLEKS                       R5 R4 K15 ["Categories"]
       22 NEWTABLE                         R5 0 0
       24 SETTABLEKS                       R5 R4 K16 ["CategoryNames"]
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K17 ["Materials"]
       30 SETTABLEKS                       R4 R3 K3 ["_rootCategory"]
       32 NEWTABLE                         R4 0 0
       34 SETTABLEKS                       R4 R3 K4 ["_materialPaths"]
       36 NEWTABLE                         R4 0 0
       38 SETTABLEKS                       R4 R3 K5 ["_materialWrappers"]
       40 NEWTABLE                         R4 0 0
       42 SETTABLEKS                       R4 R3 K6 ["_materialStatuses"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R4 R5 K13 ["new"]
       47 LOADK                            R5 K19 ["MaterialService"]
       48 MOVE                             R6 R1
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R3 K7 ["_materialServiceWrapper"]
       52 NEWTABLE                         R4 0 0
       54 SETTABLEKS                       R4 R3 K8 ["_nameToEnum"]
       56 LOADB                            R4 1
       57 SETTABLEKS                       R4 R3 K9 ["_initializing"]
       59 SETTABLEKS                       R0 R3 K10 ["_store"]
       61 SETTABLEKS                       R1 R3 K11 ["_mock"]
       63 GETUPVAL                         R4 1
       64 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       66 GETIMPORT                        R2 K21 [setmetatable]
       68 CALL                             R2 2 1
       69 GETTABLEKS                       R4 R2 K7 ["_materialServiceWrapper"]
       71 NAMECALL                         R4 R4 K22 ["asInstance"]
       73 CALL                             R4 1 1
       74 GETTABLEKS                       R3 R4 K23 ["DescendantAdded"]
       76 NEWCLOSURE                       R5 P0
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          VAL R2
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          UPVAL U4
       81 NAMECALL                         R3 R3 K24 ["Connect"]
       83 CALL                             R3 2 1
       84 SETTABLEKS                       R3 R2 K25 ["_materialServiceAdded"]
       86 GETTABLEKS                       R4 R2 K7 ["_materialServiceWrapper"]
       88 NAMECALL                         R4 R4 K22 ["asInstance"]
       90 CALL                             R4 1 1
       91 GETTABLEKS                       R3 R4 K26 ["DescendantRemoving"]
       93 NEWCLOSURE                       R5 P1
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U4
       96 NAMECALL                         R3 R3 K24 ["Connect"]
       98 CALL                             R3 2 1
       99 SETTABLEKS                       R3 R2 K27 ["_materialServiceRemoved"]
      101 GETTABLEKS                       R4 R2 K7 ["_materialServiceWrapper"]
      103 NAMECALL                         R4 R4 K22 ["asInstance"]
      105 CALL                             R4 1 1
      106 GETTABLEKS                       R3 R4 K28 ["Changed"]
      108 NEWCLOSURE                       R5 P2
      109 CAPTURE                          VAL R2
      110 NAMECALL                         R3 R3 K24 ["Connect"]
      112 CALL                             R3 2 1
      113 SETTABLEKS                       R3 R2 K29 ["_materialServiceChanged"]
      115 GETTABLEKS                       R4 R2 K7 ["_materialServiceWrapper"]
      117 NAMECALL                         R4 R4 K30 ["asService"]
      119 CALL                             R4 1 1
      120 GETTABLEKS                       R3 R4 K31 ["OverrideStatusChanged"]
      122 NEWCLOSURE                       R5 P3
      123 CAPTURE                          VAL R2
      124 CAPTURE                          UPVAL U5
      125 NAMECALL                         R3 R3 K24 ["Connect"]
      127 CALL                             R3 2 1
      128 SETTABLEKS                       R3 R2 K32 ["_materialServiceStatus"]
      130 JUMPIF                           R1 ; [+31]
      131 GETTABLEKS                       R3 R2 K7 ["_materialServiceWrapper"]
      133 NAMECALL                         R3 R3 K22 ["asInstance"]
      135 CALL                             R3 1 1
      136 LOADK                            R5 K33 ["Use2022Materials"]
      137 NAMECALL                         R3 R3 K34 ["GetPropertyChangedSignal"]
      139 CALL                             R3 2 1
      140 NEWCLOSURE                       R5 P4
      141 CAPTURE                          VAL R2
      142 CAPTURE                          UPVAL U6
      143 NAMECALL                         R3 R3 K24 ["Connect"]
      145 CALL                             R3 2 1
      146 SETTABLEKS                       R3 R2 K35 ["_uses2022MaterialsChanged"]
      148 GETTABLEKS                       R3 R2 K10 ["_store"]
      150 GETUPVAL                         R5 6
      151 GETTABLEKS                       R7 R2 K7 ["_materialServiceWrapper"]
      153 NAMECALL                         R7 R7 K30 ["asService"]
      155 CALL                             R7 1 1
      156 GETTABLEKS                       R6 R7 K33 ["Use2022Materials"]
      158 CALL                             R5 1 -1
      159 NAMECALL                         R3 R3 K36 ["dispatch"]
      161 CALL                             R3 -1 0
      162 GETIMPORT                        R3 K38 [pairs]
      164 GETUPVAL                         R4 7
      165 CALL                             R3 1 3
      166 FORGPREP_NEXT                    R3
      167 MOVE                             R10 R6
      168 LOADNIL                          R11
      169 GETUPVAL                         R12 3
      170 MOVE                             R13 R6
      171 CALL                             R12 1 1
      172 LOADB                            R13 1
      173 NAMECALL                         R8 R2 K39 ["addMaterial"]
      175 CALL                             R8 5 0
      176 JUMPIFNOT                        R7 ; [+18]
      177 GETTABLEKS                       R8 R2 K1 ["_overrideChangedListeners"]
      179 GETTABLEKS                       R9 R2 K7 ["_materialServiceWrapper"]
      181 NAMECALL                         R9 R9 K30 ["asService"]
      183 CALL                             R9 1 1
      184 MOVE                             R11 R6
      185 NAMECALL                         R9 R9 K40 ["GetMaterialOverrideChanged"]
      187 CALL                             R9 2 1
      188 NEWCLOSURE                       R11 P5
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R6
      191 NAMECALL                         R9 R9 K24 ["Connect"]
      193 CALL                             R9 2 1
      194 SETTABLE                         R9 R8 R6
      195 FORGLOOP                         R3 2 ; [-29]
      197 GETIMPORT                        R3 K42 [ipairs]
      199 GETTABLEKS                       R4 R2 K7 ["_materialServiceWrapper"]
      201 NAMECALL                         R4 R4 K22 ["asInstance"]
      203 CALL                             R4 1 1
      204 NAMECALL                         R4 R4 K43 ["GetDescendants"]
      206 CALL                             R4 1 -1
      207 CALL                             R3 -1 3
      208 FORGPREP_INEXT                   R3
      209 LOADK                            R10 K44 ["MaterialVariant"]
      210 NAMECALL                         R8 R7 K45 ["IsA"]
      212 CALL                             R8 2 1
      213 JUMPIFNOT                        R8 ; [+11]
      214 GETTABLEKS                       R10 R7 K46 ["BaseMaterial"]
      216 MOVE                             R11 R7
      217 GETUPVAL                         R12 3
      218 GETTABLEKS                       R13 R7 K46 ["BaseMaterial"]
      220 CALL                             R12 1 1
      221 LOADB                            R13 1
      222 NAMECALL                         R8 R2 K39 ["addMaterial"]
      224 CALL                             R8 5 0
      225 FORGLOOP                         R3 2 [inext] ; [-17]
      227 GETIMPORT                        R3 K42 [ipairs]
      229 GETUPVAL                         R4 7
      230 CALL                             R3 1 3
      231 FORGPREP_INEXT                   R3
      232 GETUPVAL                         R11 8
      233 MOVE                             R12 R6
      234 CALL                             R11 1 1
      235 MOVE                             R9 R11
      236 LOADK                            R10 K47 ["Name"]
      237 CONCAT                           R8 R9 R10
      238 GETTABLEKS                       R9 R2 K8 ["_nameToEnum"]
      240 SETTABLE                         R6 R9 R8
      241 FORGLOOP                         R3 2 [inext] ; [-10]
      243 GETUPVAL                         R3 9
      244 CALL                             R3 0 1
      245 JUMPIFNOT                        R3 ; [+3]
      246 NAMECALL                         R3 R2 K48 ["updateMaterialList"]
      248 CALL                             R3 1 0
      249 LOADB                            R3 0
      250 SETTABLEKS                       R3 R2 K9 ["_initializing"]
      252 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_materialServiceAdded"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["_materialServiceRemoved"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["_materialServiceChanged"]
       12 NAMECALL                         R1 R1 K1 ["Disconnect"]
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K4 ["_materialServiceStatus"]
       17 NAMECALL                         R1 R1 K1 ["Disconnect"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K5 ["_mock"]
       22 JUMPIF                           R1 ; [+5]
       23 GETTABLEKS                       R1 R0 K6 ["_uses2022MaterialsChanged"]
       25 NAMECALL                         R1 R1 K1 ["Disconnect"]
       27 CALL                             R1 1 0
       28 GETTABLEKS                       R1 R0 K7 ["_materialServiceWrapper"]
       30 NAMECALL                         R1 R1 K8 ["destroy"]
       32 CALL                             R1 1 0
       33 GETIMPORT                        R1 K10 [ipairs]
       35 GETTABLEKS                       R2 R0 K11 ["_materialChangedListeners"]
       37 CALL                             R1 1 3
       38 FORGPREP_INEXT                   R1
       39 GETTABLEKS                       R7 R0 K11 ["_materialChangedListeners"]
       41 GETTABLE                         R6 R7 R4
       42 NAMECALL                         R6 R6 K1 ["Disconnect"]
       44 CALL                             R6 1 0
       45 GETTABLEKS                       R6 R0 K11 ["_materialChangedListeners"]
       47 LOADNIL                          R7
       48 SETTABLE                         R7 R6 R4
       49 FORGLOOP                         R1 2 [inext] ; [-11]
       51 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_rootCategory"]
        2 RETURN                           R1 1

PROTO_11:
        0 DUPTABLE                         R3 K4 [{"Material", "MaterialPath", "MaterialType", "MaterialVariant"}]
        1 SETTABLEKS                       R1 R3 K0 ["Material"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 SETTABLEKS                       R4 R3 K1 ["MaterialPath"]
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R1
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K2 ["MaterialType"]
       13 SETTABLEKS                       R2 R3 K3 ["MaterialVariant"]
       15 RETURN                           R3 1

PROTO_12:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 LOADB                            R7 1
        3 NAMECALL                         R3 R0 K0 ["findCategory"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_13:
        0 LOADB                            R5 1
        1 LENGTH                           R6 R1
        2 LOADN                            R7 0
        3 JUMPIFLT                         R7 R6 ; [+2]
        5 NOT                              R5 R3
        6 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        8 LOADK                            R6 K0 ["Can't add root category"]
        9 GETIMPORT                        R4 K2 [assert]
       11 CALL                             R4 2 0
       12 GETTABLEKS                       R4 R0 K3 ["_rootCategory"]
       14 GETIMPORT                        R5 K5 [ipairs]
       16 MOVE                             R6 R1
       17 CALL                             R5 1 3
       18 FORGPREP_INEXT                   R5
       19 GETTABLEKS                       R11 R4 K6 ["Categories"]
       21 GETTABLE                         R10 R11 R9
       22 JUMPIFNOT                        R10 ; [+4]
       23 GETTABLEKS                       R10 R4 K6 ["Categories"]
       25 GETTABLE                         R4 R10 R9
       26 JUMP                             ; [+38]
       27 JUMPIFNOT                        R3 ; [+35]
       28 GETTABLEKS                       R10 R4 K6 ["Categories"]
       30 DUPTABLE                         R11 K10 [{"Builtin", "Categories", "CategoryNames", "Materials"}]
       31 SETTABLEKS                       R2 R11 K7 ["Builtin"]
       33 NEWTABLE                         R12 0 0
       35 SETTABLEKS                       R12 R11 K6 ["Categories"]
       37 NEWTABLE                         R12 0 0
       39 SETTABLEKS                       R12 R11 K8 ["CategoryNames"]
       41 NEWTABLE                         R12 0 0
       43 SETTABLEKS                       R12 R11 K9 ["Materials"]
       45 SETTABLE                         R11 R10 R9
       46 GETTABLEKS                       R11 R4 K8 ["CategoryNames"]
       48 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       50 MOVE                             R12 R9
       51 GETIMPORT                        R10 K13 [table.insert]
       53 CALL                             R10 2 0
       54 GETIMPORT                        R10 K15 [table.sort]
       56 GETTABLEKS                       R11 R4 K8 ["CategoryNames"]
       58 CALL                             R10 1 0
       59 GETTABLEKS                       R10 R4 K6 ["Categories"]
       61 GETTABLE                         R4 R10 R9
       62 JUMP                             ; [+2]
       63 LOADNIL                          R10
       64 RETURN                           R10 1
       65 FORGLOOP                         R5 2 [inext] ; [-47]
       67 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["BaseMaterial"]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R1 R1 K1 ["getMaterialWrapper"]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["_store"]
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R1
       13 CALL                             R4 1 -1
       14 NAMECALL                         R2 R2 K3 ["dispatch"]
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["BaseMaterial"]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R1 R1 K1 ["getMaterialWrapper"]
        7 CALL                             R1 3 1
        8 JUMPIFEQKS                       R0 K0 ["BaseMaterial"] ; [+3]
       10 JUMPIFNOTEQKS                    R0 K2 ["Name"] ; [+6]
       12 GETUPVAL                         R2 0
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K3 ["moveMaterial"]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K4 ["_store"]
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R1
       22 CALL                             R4 1 -1
       23 NAMECALL                         R2 R2 K5 ["dispatch"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 CALL                             R5 1 1
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 NAMECALL                         R6 R0 K0 ["getMaterialWrapper"]
        7 CALL                             R6 3 1
        8 MOVE                             R9 R5
        9 GETTABLEKS                       R11 R6 K1 ["MaterialVariant"]
       11 NOT                              R10 R11
       12 NAMECALL                         R7 R0 K2 ["addCategory"]
       14 CALL                             R7 3 1
       15 FASTCALL2K                       ASSERT R7 K3 ; [+5]
       17 MOVE                             R9 R7
       18 LOADK                            R10 K3 ["Category to which a Material is added should exist, or be created"]
       19 GETIMPORT                        R8 K5 [assert]
       21 CALL                             R8 2 0
       22 GETTABLEKS                       R9 R7 K6 ["Materials"]
       24 FASTCALL2                        TABLE_INSERT R9 R6 ; [+4]
       26 MOVE                             R10 R6
       27 GETIMPORT                        R8 K9 [table.insert]
       29 CALL                             R8 2 0
       30 JUMPIFNOT                        R2 ; [+60]
       31 GETTABLEKS                       R8 R0 K10 ["_materialPaths"]
       33 SETTABLE                         R5 R8 R2
       34 GETTABLEKS                       R8 R0 K11 ["_materialWrappers"]
       36 SETTABLE                         R6 R8 R2
       37 GETIMPORT                        R8 K13 [ipairs]
       39 NAMECALL                         R9 R2 K14 ["GetChildren"]
       41 CALL                             R9 1 -1
       42 CALL                             R8 -1 3
       43 FORGPREP_INEXT                   R8
       44 GETTABLEKS                       R16 R0 K15 ["_materialChangedListeners"]
       46 GETTABLE                         R15 R16 R12
       47 NOT                              R14 R15
       48 FASTCALL2K                       ASSERT R14 K16 ; [+4]
       50 LOADK                            R15 K16 ["Already connected to material changed"]
       51 GETIMPORT                        R13 K5 [assert]
       53 CALL                             R13 2 0
       54 GETTABLEKS                       R13 R0 K15 ["_materialChangedListeners"]
       56 GETTABLEKS                       R14 R12 K17 ["Changed"]
       58 NEWCLOSURE                       R16 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U1
       62 NAMECALL                         R14 R14 K18 ["Connect"]
       64 CALL                             R14 2 1
       65 SETTABLE                         R14 R13 R12
       66 FORGLOOP                         R8 2 [inext] ; [-23]
       68 GETTABLEKS                       R9 R0 K15 ["_materialChangedListeners"]
       70 GETTABLE                         R8 R9 R2
       71 JUMPIFNOT                        R8 ; [+6]
       72 GETTABLEKS                       R9 R0 K15 ["_materialChangedListeners"]
       74 GETTABLE                         R8 R9 R2
       75 NAMECALL                         R8 R8 K19 ["disconnect"]
       77 CALL                             R8 1 0
       78 GETTABLEKS                       R8 R0 K15 ["_materialChangedListeners"]
       80 GETTABLEKS                       R9 R2 K17 ["Changed"]
       82 NEWCLOSURE                       R11 P1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R2
       85 CAPTURE                          UPVAL U1
       86 NAMECALL                         R9 R9 K18 ["Connect"]
       88 CALL                             R9 2 1
       89 SETTABLE                         R9 R8 R2
       90 JUMP                             ; [+17]
       91 GETTABLEKS                       R8 R0 K20 ["_store"]
       93 GETUPVAL                         R10 2
       94 MOVE                             R11 R1
       95 GETTABLEKS                       R12 R0 K21 ["_materialServiceWrapper"]
       97 NAMECALL                         R12 R12 K22 ["asService"]
       99 CALL                             R12 1 1
      100 MOVE                             R14 R1
      101 NAMECALL                         R12 R12 K23 ["GetOverrideStatus"]
      103 CALL                             R12 2 -1
      104 CALL                             R10 -1 -1
      105 NAMECALL                         R8 R8 K24 ["dispatch"]
      107 CALL                             R8 -1 0
      108 GETUPVAL                         R9 3
      109 GETTABLE                         R8 R9 R1
      110 JUMPIFNOT                        R8 ; [+4]
      111 MOVE                             R10 R1
      112 NAMECALL                         R8 R0 K25 ["updateOverrides"]
      114 CALL                             R8 2 0
      115 GETTABLEKS                       R8 R0 K20 ["_store"]
      117 GETUPVAL                         R10 1
      118 MOVE                             R11 R6
      119 CALL                             R10 1 -1
      120 NAMECALL                         R8 R8 K24 ["dispatch"]
      122 CALL                             R8 -1 0
      123 GETUPVAL                         R8 4
      124 CALL                             R8 0 1
      125 JUMPIFNOT                        R8 ; [+19]
      126 JUMPIF                           R4 ; [+35]
      127 GETTABLEKS                       R10 R0 K20 ["_store"]
      129 NAMECALL                         R10 R10 K26 ["getState"]
      131 CALL                             R10 1 1
      132 GETTABLEKS                       R9 R10 K27 ["MaterialBrowserReducer"]
      134 GETTABLEKS                       R8 R9 K28 ["Path"]
      136 GETUPVAL                         R9 5
      137 MOVE                             R10 R8
      138 MOVE                             R11 R5
      139 CALL                             R9 2 1
      140 JUMPIFNOT                        R9 ; [+21]
      141 NAMECALL                         R9 R0 K29 ["updateMaterialList"]
      143 CALL                             R9 1 0
      144 RETURN                           R0 0
      145 GETTABLEKS                       R10 R0 K20 ["_store"]
      147 NAMECALL                         R10 R10 K26 ["getState"]
      149 CALL                             R10 1 1
      150 GETTABLEKS                       R9 R10 K27 ["MaterialBrowserReducer"]
      152 GETTABLEKS                       R8 R9 K28 ["Path"]
      154 GETUPVAL                         R9 5
      155 MOVE                             R10 R8
      156 MOVE                             R11 R5
      157 CALL                             R9 2 1
      158 JUMPIFNOT                        R9 ; [+3]
      159 NAMECALL                         R9 R0 K29 ["updateMaterialList"]
      161 CALL                             R9 1 0
      162 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R4 R0 K0 ["_materialPaths"]
        2 GETTABLE                         R3 R4 R1
        3 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        5 MOVE                             R5 R3
        6 LOADK                            R6 K1 ["Cannot remove material that does not exist"]
        7 GETIMPORT                        R4 K3 [assert]
        9 CALL                             R4 2 0
       10 MOVE                             R6 R3
       11 NAMECALL                         R4 R0 K4 ["findCategory"]
       13 CALL                             R4 2 1
       14 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       16 MOVE                             R6 R4
       17 LOADK                            R7 K5 ["Cannot remove material from category that does not exist"]
       18 GETIMPORT                        R5 K3 [assert]
       20 CALL                             R5 2 0
       21 GETIMPORT                        R5 K7 [ipairs]
       23 GETTABLEKS                       R6 R4 K8 ["Materials"]
       25 CALL                             R5 1 3
       26 FORGPREP_INEXT                   R5
       27 GETTABLEKS                       R10 R9 K9 ["MaterialVariant"]
       29 JUMPIFNOTEQ                      R10 R1 ; [+8]
       31 GETIMPORT                        R10 K12 [table.remove]
       33 GETTABLEKS                       R11 R4 K8 ["Materials"]
       35 MOVE                             R12 R8
       36 CALL                             R10 2 0
       37 JUMP                             ; [+2]
       38 FORGLOOP                         R5 2 [inext] ; [-12]
       40 GETTABLEKS                       R6 R0 K13 ["_materialChangedListeners"]
       42 GETTABLE                         R5 R6 R1
       43 JUMPIFNOT                        R5 ; [+10]
       44 GETTABLEKS                       R6 R0 K13 ["_materialChangedListeners"]
       46 GETTABLE                         R5 R6 R1
       47 NAMECALL                         R5 R5 K14 ["Disconnect"]
       49 CALL                             R5 1 0
       50 GETTABLEKS                       R5 R0 K13 ["_materialChangedListeners"]
       52 LOADNIL                          R6
       53 SETTABLE                         R6 R5 R1
       54 GETIMPORT                        R5 K16 [pairs]
       56 NAMECALL                         R6 R1 K17 ["GetChildren"]
       58 CALL                             R6 1 -1
       59 CALL                             R5 -1 3
       60 FORGPREP_NEXT                    R5
       61 GETTABLEKS                       R11 R0 K13 ["_materialChangedListeners"]
       63 GETTABLE                         R10 R11 R9
       64 JUMPIFNOT                        R10 ; [+10]
       65 GETTABLEKS                       R11 R0 K13 ["_materialChangedListeners"]
       67 GETTABLE                         R10 R11 R9
       68 NAMECALL                         R10 R10 K14 ["Disconnect"]
       70 CALL                             R10 1 0
       71 GETTABLEKS                       R10 R0 K13 ["_materialChangedListeners"]
       73 LOADNIL                          R11
       74 SETTABLE                         R11 R10 R9
       75 FORGLOOP                         R5 2 ; [-15]
       77 GETTABLEKS                       R5 R0 K18 ["_store"]
       79 GETUPVAL                         R7 0
       80 GETTABLEKS                       R11 R0 K18 ["_store"]
       82 NAMECALL                         R11 R11 K19 ["getState"]
       84 CALL                             R11 1 1
       85 GETTABLEKS                       R10 R11 K20 ["MaterialBrowserReducer"]
       87 GETTABLEKS                       R9 R10 K8 ["Materials"]
       89 GETTABLE                         R8 R9 R1
       90 CALL                             R7 1 -1
       91 NAMECALL                         R5 R5 K21 ["dispatch"]
       93 CALL                             R5 -1 0
       94 GETTABLEKS                       R7 R1 K22 ["BaseMaterial"]
       96 NAMECALL                         R5 R0 K23 ["updateOverrides"]
       98 CALL                             R5 2 0
       99 GETTABLEKS                       R7 R0 K18 ["_store"]
      101 NAMECALL                         R7 R7 K19 ["getState"]
      103 CALL                             R7 1 1
      104 GETTABLEKS                       R6 R7 K20 ["MaterialBrowserReducer"]
      106 GETTABLEKS                       R5 R6 K24 ["Path"]
      108 GETUPVAL                         R6 1
      109 MOVE                             R7 R5
      110 MOVE                             R8 R3
      111 CALL                             R6 2 1
      112 JUMPIFNOT                        R6 ; [+3]
      113 NAMECALL                         R6 R0 K25 ["updateMaterialList"]
      115 CALL                             R6 1 0
      116 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R4 R0 K0 ["_materialPaths"]
        2 GETTABLEKS                       R5 R1 K1 ["MaterialVariant"]
        4 GETTABLE                         R3 R4 R5
        5 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        7 LOADK                            R4 K2 ["Tried to move material that wasn't registered."]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETTABLEKS                       R3 R0 K0 ["_materialPaths"]
       13 GETTABLEKS                       R4 R1 K1 ["MaterialVariant"]
       15 GETTABLE                         R2 R3 R4
       16 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       18 MOVE                             R4 R2
       19 LOADK                            R5 K5 ["Cannot remove material that does not exist"]
       20 GETIMPORT                        R3 K4 [assert]
       22 CALL                             R3 2 0
       23 MOVE                             R5 R2
       24 NAMECALL                         R3 R0 K6 ["findCategory"]
       26 CALL                             R3 2 1
       27 FASTCALL2K                       ASSERT R3 K7 ; [+5]
       29 MOVE                             R5 R3
       30 LOADK                            R6 K7 ["Cannot remove material from category that does not exist"]
       31 GETIMPORT                        R4 K4 [assert]
       33 CALL                             R4 2 0
       34 GETIMPORT                        R4 K9 [ipairs]
       36 GETTABLEKS                       R5 R3 K10 ["Materials"]
       38 CALL                             R4 1 3
       39 FORGPREP_INEXT                   R4
       40 GETTABLEKS                       R9 R8 K1 ["MaterialVariant"]
       42 GETTABLEKS                       R10 R1 K1 ["MaterialVariant"]
       44 JUMPIFNOTEQ                      R9 R10 ; [+13]
       46 GETIMPORT                        R9 K13 [table.remove]
       48 GETTABLEKS                       R10 R3 K10 ["Materials"]
       50 MOVE                             R11 R7
       51 CALL                             R9 2 0
       52 GETTABLEKS                       R11 R8 K14 ["Material"]
       54 NAMECALL                         R9 R0 K15 ["updateOverrides"]
       56 CALL                             R9 2 0
       57 JUMP                             ; [+2]
       58 FORGLOOP                         R4 2 [inext] ; [-19]
       60 GETTABLEKS                       R4 R0 K0 ["_materialPaths"]
       62 GETTABLEKS                       R5 R1 K1 ["MaterialVariant"]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R7 R1 K14 ["Material"]
       67 CALL                             R6 1 1
       68 SETTABLE                         R6 R4 R5
       69 GETTABLEKS                       R7 R0 K0 ["_materialPaths"]
       71 GETTABLEKS                       R8 R1 K1 ["MaterialVariant"]
       73 GETTABLE                         R6 R7 R8
       74 GETTABLEKS                       R8 R1 K1 ["MaterialVariant"]
       76 NOT                              R7 R8
       77 NAMECALL                         R4 R0 K16 ["addCategory"]
       79 CALL                             R4 3 1
       80 MOVE                             R3 R4
       81 FASTCALL2K                       ASSERT R3 K17 ; [+5]
       83 MOVE                             R5 R3
       84 LOADK                            R6 K17 ["Category to which a Material is added should exist, or be created"]
       85 GETIMPORT                        R4 K4 [assert]
       87 CALL                             R4 2 0
       88 GETTABLEKS                       R5 R3 K10 ["Materials"]
       90 FASTCALL2                        TABLE_INSERT R5 R1 ; [+4]
       92 MOVE                             R6 R1
       93 GETIMPORT                        R4 K19 [table.insert]
       95 CALL                             R4 2 0
       96 GETTABLEKS                       R6 R1 K14 ["Material"]
       98 NAMECALL                         R4 R0 K15 ["updateOverrides"]
      100 CALL                             R4 2 0
      101 GETTABLEKS                       R6 R0 K20 ["_store"]
      103 NAMECALL                         R6 R6 K21 ["getState"]
      105 CALL                             R6 1 1
      106 GETTABLEKS                       R5 R6 K22 ["MaterialBrowserReducer"]
      108 GETTABLEKS                       R4 R5 K23 ["Path"]
      110 GETUPVAL                         R5 1
      111 MOVE                             R6 R4
      112 MOVE                             R7 R2
      113 CALL                             R5 2 1
      114 JUMPIF                           R5 ; [+10]
      115 GETUPVAL                         R5 1
      116 GETTABLEKS                       R7 R0 K0 ["_materialPaths"]
      118 GETTABLEKS                       R8 R1 K1 ["MaterialVariant"]
      120 GETTABLE                         R6 R7 R8
      121 GETTABLEKS                       R7 R1 K24 ["MaterialPath"]
      123 CALL                             R5 2 1
      124 JUMPIFNOT                        R5 ; [+3]
      125 NAMECALL                         R5 R0 K25 ["updateMaterialList"]
      127 CALL                             R5 1 0
      128 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["_materialServiceWrapper"]
        3 NAMECALL                         R3 R3 K1 ["asService"]
        5 CALL                             R3 1 1
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R3 K2 ["GetBaseMaterialOverride"]
        9 CALL                             R3 2 1
       10 NEWTABLE                         R6 0 0
       12 NAMECALL                         R4 R0 K3 ["findCategory"]
       14 CALL                             R4 2 1
       15 MOVE                             R5 R1
       16 CALL                             R2 3 2
       17 GETTABLEKS                       R4 R0 K4 ["_store"]
       19 GETUPVAL                         R6 1
       20 MOVE                             R7 R1
       21 MOVE                             R8 R2
       22 CALL                             R6 2 -1
       23 NAMECALL                         R4 R4 K5 ["dispatch"]
       25 CALL                             R4 -1 0
       26 GETTABLEKS                       R4 R0 K4 ["_store"]
       28 GETUPVAL                         R6 2
       29 MOVE                             R7 R1
       30 MOVE                             R8 R3
       31 CALL                             R6 2 -1
       32 NAMECALL                         R4 R4 K5 ["dispatch"]
       34 CALL                             R4 -1 0
       35 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["_materialServiceWrapper"]
        2 NAMECALL                         R3 R3 K1 ["asService"]
        4 CALL                             R3 1 1
        5 MOVE                             R5 R1
        6 ORK                              R6 R2 K2 [""]
        7 NAMECALL                         R3 R3 K3 ["SetBaseMaterialOverride"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R4 R0 K0 ["_store"]
        2 NAMECALL                         R4 R4 K1 ["getState"]
        4 CALL                             R4 1 1
        5 GETTABLEKS                       R3 R4 K2 ["MaterialBrowserReducer"]
        7 MOVE                             R4 R1
        8 JUMPIF                           R4 ; [+2]
        9 GETTABLEKS                       R4 R3 K3 ["Path"]
       11 MOVE                             R5 R2
       12 JUMPIF                           R5 ; [+2]
       13 GETTABLEKS                       R5 R3 K4 ["Search"]
       15 MOVE                             R8 R4
       16 NAMECALL                         R6 R0 K5 ["findCategory"]
       18 CALL                             R6 2 1
       19 GETUPVAL                         R7 0
       20 MOVE                             R8 R6
       21 MOVE                             R9 R4
       22 MOVE                             R10 R5
       23 CALL                             R7 3 1
       24 GETTABLEKS                       R8 R0 K0 ["_store"]
       26 GETUPVAL                         R10 1
       27 MOVE                             R11 R7
       28 CALL                             R10 1 -1
       29 NAMECALL                         R8 R8 K6 ["dispatch"]
       31 CALL                             R8 -1 0
       32 RETURN                           R0 0

PROTO_22:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["updateMaterialList"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R0 K1 ["_store"]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R1
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R2 K2 ["dispatch"]
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_23:
        0 LOADNIL                          R4
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K0 ["updateMaterialList"]
        4 CALL                             R2 3 0
        5 GETTABLEKS                       R2 R0 K1 ["_store"]
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R1
        9 CALL                             R4 1 -1
       10 NAMECALL                         R2 R2 K2 ["dispatch"]
       12 CALL                             R2 -1 0
       13 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["_materialWrappers"]
        2 GETTABLE                         R2 R3 R1
        3 GETTABLEKS                       R3 R0 K1 ["_store"]
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R2
        7 CALL                             R5 1 -1
        8 NAMECALL                         R3 R3 K2 ["dispatch"]
       10 CALL                             R3 -1 0
       11 RETURN                           R0 0

PROTO_25:
        0 JUMPIFNOTEQKS                    R2 K0 ["None"] ; [+2]
        2 LOADK                            R2 K1 [""]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 JUMPIFEQ                         R4 R2 ; [+4]
        8 LOADB                            R3 0
        9 JUMPIFNOTEQKS                    R2 K1 [""] ; [+12]
       11 GETTABLEKS                       R4 R0 K2 ["_materialServiceWrapper"]
       13 NAMECALL                         R4 R4 K3 ["asService"]
       15 CALL                             R4 1 1
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 NAMECALL                         R4 R4 K4 ["GetMaterialVariant"]
       20 CALL                             R4 3 1
       21 NOT                              R3 R4
       22 RETURN                           R3 1

PROTO_26:
        0 NEWTABLE                         R5 0 0
        2 NAMECALL                         R3 R0 K0 ["findCategory"]
        4 CALL                             R3 2 1
        5 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        7 MOVE                             R5 R3
        8 LOADK                            R6 K1 ["Tried to get materials for path which does not exist"]
        9 GETIMPORT                        R4 K3 [assert]
       11 CALL                             R4 2 0
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R3
       14 MOVE                             R6 R1
       15 MOVE                             R7 R2
       16 CALL                             R4 3 1
       17 RETURN                           R4 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+18]
        4 MOVE                             R5 R1
        5 NAMECALL                         R3 R0 K0 ["findCategory"]
        7 CALL                             R3 2 1
        8 GETTABLEKS                       R5 R3 K1 ["Materials"]
       10 LENGTH                           R4 R5
       11 LOADN                            R5 0
       12 JUMPIFNOTLT                      R5 R4 ; [+7]
       14 GETTABLEKS                       R5 R3 K1 ["Materials"]
       16 GETTABLEN                        R4 R5 1
       17 GETTABLEKS                       R2 R4 K2 ["Material"]
       19 RETURN                           R2 1
       20 GETIMPORT                        R2 K5 [Enum.Material.Plastic]
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R4 K8 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       25 GETTABLEKS                       R3 R4 K10 ["ContextItem"]
       27 GETTABLEKS                       R5 R2 K11 ["TestHelpers"]
       29 GETTABLEKS                       R4 R5 K12 ["ServiceWrapper"]
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R8 R0 K5 ["Src"]
       35 GETTABLEKS                       R7 R8 K13 ["Reducers"]
       37 GETTABLEKS                       R6 R7 K14 ["MaterialBrowserReducer"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K15 ["Actions"]
       44 GETIMPORT                        R7 K4 [require]
       46 GETTABLEKS                       R8 R6 K16 ["ClearMaterialWrapper"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K4 [require]
       51 GETTABLEKS                       R9 R6 K17 ["SetMaterialOverride"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R10 R6 K18 ["SetMaterialOverrides"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K4 [require]
       61 GETTABLEKS                       R11 R6 K19 ["SetMaterial"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K4 [require]
       66 GETTABLEKS                       R12 R6 K20 ["SetMaterialList"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K4 [require]
       71 GETTABLEKS                       R13 R6 K21 ["SetMaterialStatus"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K4 [require]
       76 GETTABLEKS                       R14 R6 K22 ["SetMaterialWrapper"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K4 [require]
       81 GETTABLEKS                       R15 R6 K23 ["SetPath"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K4 [require]
       86 GETTABLEKS                       R16 R6 K24 ["SetSearch"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K4 [require]
       91 GETTABLEKS                       R17 R6 K25 ["SetUse2022Materials"]
       93 CALL                             R16 1 1
       94 GETTABLEKS                       R19 R0 K5 ["Src"]
       96 GETTABLEKS                       R18 R19 K26 ["Resources"]
       98 GETTABLEKS                       R17 R18 K27 ["Constants"]
      100 GETIMPORT                        R18 K4 [require]
      102 GETTABLEKS                       R19 R17 K28 ["getCategoryDefault"]
      104 CALL                             R18 1 1
      105 GETIMPORT                        R19 K4 [require]
      107 GETTABLEKS                       R20 R17 K29 ["getMaterialPath"]
      109 CALL                             R19 1 1
      110 GETIMPORT                        R20 K4 [require]
      112 GETTABLEKS                       R21 R17 K30 ["getMaterialType"]
      114 CALL                             R20 1 1
      115 GETIMPORT                        R21 K4 [require]
      117 GETTABLEKS                       R22 R17 K31 ["getMaterialName"]
      119 CALL                             R21 1 1
      120 GETIMPORT                        R22 K4 [require]
      122 GETTABLEKS                       R23 R17 K32 ["getSupportedMaterials"]
      124 CALL                             R22 1 1
      125 GETTABLEKS                       R24 R0 K5 ["Src"]
      127 GETTABLEKS                       R23 R24 K33 ["Util"]
      129 GETIMPORT                        R24 K4 [require]
      131 GETTABLEKS                       R25 R23 K34 ["CheckMaterialName"]
      133 CALL                             R24 1 1
      134 GETIMPORT                        R25 K4 [require]
      136 GETTABLEKS                       R26 R23 K35 ["ContainsPath"]
      138 CALL                             R25 1 1
      139 GETIMPORT                        R26 K4 [require]
      141 GETTABLEKS                       R27 R23 K36 ["getMaterials"]
      143 CALL                             R26 1 1
      144 GETIMPORT                        R27 K4 [require]
      146 GETTABLEKS                       R28 R23 K37 ["getOverrides"]
      148 CALL                             R27 1 1
      149 MOVE                             R28 R22
      150 CALL                             R28 0 1
      151 GETIMPORT                        R29 K4 [require]
      153 GETTABLEKS                       R31 R0 K5 ["Src"]
      155 GETTABLEKS                       R30 R31 K38 ["Flags"]
      157 CALL                             R29 1 1
      158 GETTABLEKS                       R30 R29 K39 ["getFFlagUpdateMaterialListHangFix"]
      160 GETTABLEKS                       R31 R29 K40 ["getFFlagUpdateMaterialListHangFix2"]
      162 LOADK                            R34 K41 ["MaterialServiceController"]
      163 NAMECALL                         R32 R3 K42 ["extend"]
      165 CALL                             R32 2 1
      166 DUPCLOSURE                       R33 K43 [PROTO_7]
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R32
      169 CAPTURE                          VAL R31
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R28
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R30
      177 SETTABLEKS                       R33 R32 K44 ["new"]
      179 DUPCLOSURE                       R33 K45 [PROTO_8]
      180 CAPTURE                          VAL R32
      181 SETTABLEKS                       R33 R32 K46 ["mock"]
      183 DUPCLOSURE                       R33 K47 [PROTO_9]
      184 SETTABLEKS                       R33 R32 K48 ["destroy"]
      186 DUPCLOSURE                       R33 K49 [PROTO_10]
      187 SETTABLEKS                       R33 R32 K50 ["getRootCategory"]
      189 DUPCLOSURE                       R33 K51 [PROTO_11]
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R20
      192 SETTABLEKS                       R33 R32 K52 ["getMaterialWrapper"]
      194 DUPCLOSURE                       R33 K53 [PROTO_12]
      195 SETTABLEKS                       R33 R32 K54 ["addCategory"]
      197 DUPCLOSURE                       R33 K55 [PROTO_13]
      198 SETTABLEKS                       R33 R32 K56 ["findCategory"]
      200 DUPCLOSURE                       R33 K57 [PROTO_16]
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R28
      205 CAPTURE                          VAL R30
      206 CAPTURE                          VAL R25
      207 SETTABLEKS                       R33 R32 K58 ["addMaterial"]
      209 DUPCLOSURE                       R33 K59 [PROTO_17]
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R25
      212 SETTABLEKS                       R33 R32 K60 ["removeMaterial"]
      214 DUPCLOSURE                       R33 K61 [PROTO_18]
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R25
      217 SETTABLEKS                       R33 R32 K62 ["moveMaterial"]
      219 DUPCLOSURE                       R33 K63 [PROTO_19]
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R8
      223 SETTABLEKS                       R33 R32 K64 ["updateOverrides"]
      225 DUPCLOSURE                       R33 K65 [PROTO_20]
      226 SETTABLEKS                       R33 R32 K66 ["setMaterialOverride"]
      228 DUPCLOSURE                       R33 K67 [PROTO_21]
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R11
      231 SETTABLEKS                       R33 R32 K68 ["updateMaterialList"]
      233 DUPCLOSURE                       R33 K69 [PROTO_22]
      234 CAPTURE                          VAL R14
      235 SETTABLEKS                       R33 R32 K70 ["setPath"]
      237 DUPCLOSURE                       R33 K71 [PROTO_23]
      238 CAPTURE                          VAL R15
      239 SETTABLEKS                       R33 R32 K72 ["setSearch"]
      241 DUPCLOSURE                       R33 K73 [PROTO_24]
      242 CAPTURE                          VAL R10
      243 SETTABLEKS                       R33 R32 K74 ["setMaterial"]
      245 DUPCLOSURE                       R33 K75 [PROTO_25]
      246 CAPTURE                          VAL R21
      247 SETTABLEKS                       R33 R32 K76 ["hasDefaultMaterial"]
      249 DUPCLOSURE                       R33 K77 [PROTO_26]
      250 CAPTURE                          VAL R24
      251 SETTABLEKS                       R33 R32 K78 ["checkMaterialName"]
      253 DUPCLOSURE                       R33 K79 [PROTO_27]
      254 CAPTURE                          VAL R18
      255 SETTABLEKS                       R33 R32 K80 ["getCategoryDefaultMaterial"]
      257 RETURN                           R32 1
