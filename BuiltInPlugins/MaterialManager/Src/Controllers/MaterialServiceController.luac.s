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
        0 DUPTABLE                         R3 K15 [{"_materialChangedListeners", "_overrideChangedListeners", "_changeHistoryService", "_rootCategory", "_materialPaths", "_materialWrappers", "_materialStatuses", "_materialServiceWrapper", "_nameToEnum", "_initializing", "_pendingMaterialListUpdate", "_pendingOverrideUpdates", "_deferredUpdateScheduled", "_store", "_mock"}]
        1 NEWTABLE                         R4 0 0
        3 SETTABLEKS                       R4 R3 K0 ["_materialChangedListeners"]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K1 ["_overrideChangedListeners"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K16 ["new"]
       12 LOADK                            R5 K17 ["ChangeHistoryService"]
       13 MOVE                             R6 R1
       14 CALL                             R4 2 1
       15 SETTABLEKS                       R4 R3 K2 ["_changeHistoryService"]
       17 DUPTABLE                         R4 K21 [{"Categories", "CategoryNames", "Materials"}]
       18 NEWTABLE                         R5 0 0
       20 SETTABLEKS                       R5 R4 K18 ["Categories"]
       22 NEWTABLE                         R5 0 0
       24 SETTABLEKS                       R5 R4 K19 ["CategoryNames"]
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K20 ["Materials"]
       30 SETTABLEKS                       R4 R3 K3 ["_rootCategory"]
       32 NEWTABLE                         R4 0 0
       34 SETTABLEKS                       R4 R3 K4 ["_materialPaths"]
       36 NEWTABLE                         R4 0 0
       38 SETTABLEKS                       R4 R3 K5 ["_materialWrappers"]
       40 NEWTABLE                         R4 0 0
       42 SETTABLEKS                       R4 R3 K6 ["_materialStatuses"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R4 R5 K16 ["new"]
       47 LOADK                            R5 K22 ["MaterialService"]
       48 MOVE                             R6 R1
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R3 K7 ["_materialServiceWrapper"]
       52 NEWTABLE                         R4 0 0
       54 SETTABLEKS                       R4 R3 K8 ["_nameToEnum"]
       56 LOADB                            R4 1
       57 SETTABLEKS                       R4 R3 K9 ["_initializing"]
       59 LOADB                            R4 0
       60 SETTABLEKS                       R4 R3 K10 ["_pendingMaterialListUpdate"]
       62 NEWTABLE                         R4 0 0
       64 SETTABLEKS                       R4 R3 K11 ["_pendingOverrideUpdates"]
       66 LOADB                            R4 0
       67 SETTABLEKS                       R4 R3 K12 ["_deferredUpdateScheduled"]
       69 SETTABLEKS                       R0 R3 K13 ["_store"]
       71 SETTABLEKS                       R1 R3 K14 ["_mock"]
       73 GETUPVAL                         R4 1
       74 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       76 GETIMPORT                        R2 K24 [setmetatable]
       78 CALL                             R2 2 1
       79 GETTABLEKS                       R4 R2 K7 ["_materialServiceWrapper"]
       81 NAMECALL                         R4 R4 K25 ["asInstance"]
       83 CALL                             R4 1 1
       84 GETTABLEKS                       R3 R4 K26 ["DescendantAdded"]
       86 NEWCLOSURE                       R5 P0
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          VAL R2
       89 CAPTURE                          UPVAL U3
       90 CAPTURE                          UPVAL U4
       91 NAMECALL                         R3 R3 K27 ["Connect"]
       93 CALL                             R3 2 1
       94 SETTABLEKS                       R3 R2 K28 ["_materialServiceAdded"]
       96 GETTABLEKS                       R4 R2 K7 ["_materialServiceWrapper"]
       98 NAMECALL                         R4 R4 K25 ["asInstance"]
      100 CALL                             R4 1 1
      101 GETTABLEKS                       R3 R4 K29 ["DescendantRemoving"]
      103 NEWCLOSURE                       R5 P1
      104 CAPTURE                          VAL R2
      105 CAPTURE                          UPVAL U4
      106 NAMECALL                         R3 R3 K27 ["Connect"]
      108 CALL                             R3 2 1
      109 SETTABLEKS                       R3 R2 K30 ["_materialServiceRemoved"]
      111 GETTABLEKS                       R4 R2 K7 ["_materialServiceWrapper"]
      113 NAMECALL                         R4 R4 K25 ["asInstance"]
      115 CALL                             R4 1 1
      116 GETTABLEKS                       R3 R4 K31 ["Changed"]
      118 NEWCLOSURE                       R5 P2
      119 CAPTURE                          VAL R2
      120 NAMECALL                         R3 R3 K27 ["Connect"]
      122 CALL                             R3 2 1
      123 SETTABLEKS                       R3 R2 K32 ["_materialServiceChanged"]
      125 GETTABLEKS                       R4 R2 K7 ["_materialServiceWrapper"]
      127 NAMECALL                         R4 R4 K33 ["asService"]
      129 CALL                             R4 1 1
      130 GETTABLEKS                       R3 R4 K34 ["OverrideStatusChanged"]
      132 NEWCLOSURE                       R5 P3
      133 CAPTURE                          VAL R2
      134 CAPTURE                          UPVAL U5
      135 NAMECALL                         R3 R3 K27 ["Connect"]
      137 CALL                             R3 2 1
      138 SETTABLEKS                       R3 R2 K35 ["_materialServiceStatus"]
      140 JUMPIF                           R1 ; [+31]
      141 GETTABLEKS                       R3 R2 K7 ["_materialServiceWrapper"]
      143 NAMECALL                         R3 R3 K25 ["asInstance"]
      145 CALL                             R3 1 1
      146 LOADK                            R5 K36 ["Use2022Materials"]
      147 NAMECALL                         R3 R3 K37 ["GetPropertyChangedSignal"]
      149 CALL                             R3 2 1
      150 NEWCLOSURE                       R5 P4
      151 CAPTURE                          VAL R2
      152 CAPTURE                          UPVAL U6
      153 NAMECALL                         R3 R3 K27 ["Connect"]
      155 CALL                             R3 2 1
      156 SETTABLEKS                       R3 R2 K38 ["_uses2022MaterialsChanged"]
      158 GETTABLEKS                       R3 R2 K13 ["_store"]
      160 GETUPVAL                         R5 6
      161 GETTABLEKS                       R7 R2 K7 ["_materialServiceWrapper"]
      163 NAMECALL                         R7 R7 K33 ["asService"]
      165 CALL                             R7 1 1
      166 GETTABLEKS                       R6 R7 K36 ["Use2022Materials"]
      168 CALL                             R5 1 -1
      169 NAMECALL                         R3 R3 K39 ["dispatch"]
      171 CALL                             R3 -1 0
      172 GETIMPORT                        R3 K41 [pairs]
      174 GETUPVAL                         R4 7
      175 CALL                             R3 1 3
      176 FORGPREP_NEXT                    R3
      177 MOVE                             R10 R6
      178 LOADNIL                          R11
      179 GETUPVAL                         R12 3
      180 MOVE                             R13 R6
      181 CALL                             R12 1 1
      182 LOADB                            R13 1
      183 NAMECALL                         R8 R2 K42 ["addMaterial"]
      185 CALL                             R8 5 0
      186 JUMPIFNOT                        R7 ; [+18]
      187 GETTABLEKS                       R8 R2 K1 ["_overrideChangedListeners"]
      189 GETTABLEKS                       R9 R2 K7 ["_materialServiceWrapper"]
      191 NAMECALL                         R9 R9 K33 ["asService"]
      193 CALL                             R9 1 1
      194 MOVE                             R11 R6
      195 NAMECALL                         R9 R9 K43 ["GetMaterialOverrideChanged"]
      197 CALL                             R9 2 1
      198 NEWCLOSURE                       R11 P5
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R6
      201 NAMECALL                         R9 R9 K27 ["Connect"]
      203 CALL                             R9 2 1
      204 SETTABLE                         R9 R8 R6
      205 FORGLOOP                         R3 2 ; [-29]
      207 GETIMPORT                        R3 K45 [ipairs]
      209 GETTABLEKS                       R4 R2 K7 ["_materialServiceWrapper"]
      211 NAMECALL                         R4 R4 K25 ["asInstance"]
      213 CALL                             R4 1 1
      214 NAMECALL                         R4 R4 K46 ["GetDescendants"]
      216 CALL                             R4 1 -1
      217 CALL                             R3 -1 3
      218 FORGPREP_INEXT                   R3
      219 LOADK                            R10 K47 ["MaterialVariant"]
      220 NAMECALL                         R8 R7 K48 ["IsA"]
      222 CALL                             R8 2 1
      223 JUMPIFNOT                        R8 ; [+11]
      224 GETTABLEKS                       R10 R7 K49 ["BaseMaterial"]
      226 MOVE                             R11 R7
      227 GETUPVAL                         R12 3
      228 GETTABLEKS                       R13 R7 K49 ["BaseMaterial"]
      230 CALL                             R12 1 1
      231 LOADB                            R13 1
      232 NAMECALL                         R8 R2 K42 ["addMaterial"]
      234 CALL                             R8 5 0
      235 FORGLOOP                         R3 2 [inext] ; [-17]
      237 GETIMPORT                        R3 K45 [ipairs]
      239 GETUPVAL                         R4 7
      240 CALL                             R3 1 3
      241 FORGPREP_INEXT                   R3
      242 GETUPVAL                         R11 8
      243 MOVE                             R12 R6
      244 CALL                             R11 1 1
      245 MOVE                             R9 R11
      246 LOADK                            R10 K50 ["Name"]
      247 CONCAT                           R8 R9 R10
      248 GETTABLEKS                       R9 R2 K8 ["_nameToEnum"]
      250 SETTABLE                         R6 R9 R8
      251 FORGLOOP                         R3 2 [inext] ; [-10]
      253 GETUPVAL                         R3 9
      254 CALL                             R3 0 1
      255 JUMPIFNOT                        R3 ; [+3]
      256 NAMECALL                         R3 R2 K51 ["updateMaterialList"]
      258 CALL                             R3 1 0
      259 GETUPVAL                         R3 10
      260 CALL                             R3 0 1
      261 JUMPIFNOT                        R3 ; [+11]
      262 GETUPVAL                         R3 7
      263 LOADNIL                          R4
      264 LOADNIL                          R5
      265 FORGPREP                         R3
      266 JUMPIFNOT                        R7 ; [+4]
      267 MOVE                             R10 R6
      268 NAMECALL                         R8 R2 K52 ["updateOverrides"]
      270 CALL                             R8 2 0
      271 FORGLOOP                         R3 2 ; [-6]
      273 LOADB                            R3 0
      274 SETTABLEKS                       R3 R2 K9 ["_initializing"]
      276 RETURN                           R2 1

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
      110 JUMPIFNOT                        R8 ; [+16]
      111 GETUPVAL                         R8 4
      112 CALL                             R8 0 1
      113 JUMPIFNOT                        R8 ; [+1]
      114 JUMPIF                           R4 ; [+12]
      115 GETUPVAL                         R8 4
      116 CALL                             R8 0 1
      117 JUMPIFNOT                        R8 ; [+5]
      118 MOVE                             R10 R1
      119 NAMECALL                         R8 R0 K25 ["scheduleDeferredOverrideUpdate"]
      121 CALL                             R8 2 0
      122 JUMP                             ; [+4]
      123 MOVE                             R10 R1
      124 NAMECALL                         R8 R0 K26 ["updateOverrides"]
      126 CALL                             R8 2 0
      127 GETTABLEKS                       R8 R0 K20 ["_store"]
      129 GETUPVAL                         R10 1
      130 MOVE                             R11 R6
      131 CALL                             R10 1 -1
      132 NAMECALL                         R8 R8 K24 ["dispatch"]
      134 CALL                             R8 -1 0
      135 GETUPVAL                         R8 5
      136 CALL                             R8 0 1
      137 JUMPIFNOT                        R8 ; [+26]
      138 JUMPIF                           R4 ; [+42]
      139 GETTABLEKS                       R10 R0 K20 ["_store"]
      141 NAMECALL                         R10 R10 K27 ["getState"]
      143 CALL                             R10 1 1
      144 GETTABLEKS                       R9 R10 K28 ["MaterialBrowserReducer"]
      146 GETTABLEKS                       R8 R9 K29 ["Path"]
      148 GETUPVAL                         R9 6
      149 MOVE                             R10 R8
      150 MOVE                             R11 R5
      151 CALL                             R9 2 1
      152 JUMPIFNOT                        R9 ; [+28]
      153 GETUPVAL                         R9 4
      154 CALL                             R9 0 1
      155 JUMPIFNOT                        R9 ; [+4]
      156 NAMECALL                         R9 R0 K30 ["scheduleDeferredMaterialListUpdate"]
      158 CALL                             R9 1 0
      159 RETURN                           R0 0
      160 NAMECALL                         R9 R0 K31 ["updateMaterialList"]
      162 CALL                             R9 1 0
      163 RETURN                           R0 0
      164 GETTABLEKS                       R10 R0 K20 ["_store"]
      166 NAMECALL                         R10 R10 K27 ["getState"]
      168 CALL                             R10 1 1
      169 GETTABLEKS                       R9 R10 K28 ["MaterialBrowserReducer"]
      171 GETTABLEKS                       R8 R9 K29 ["Path"]
      173 GETUPVAL                         R9 6
      174 MOVE                             R10 R8
      175 MOVE                             R11 R5
      176 CALL                             R9 2 1
      177 JUMPIFNOT                        R9 ; [+3]
      178 NAMECALL                         R9 R0 K31 ["updateMaterialList"]
      180 CALL                             R9 1 0
      181 RETURN                           R0 0

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
       94 GETUPVAL                         R5 1
       95 CALL                             R5 0 1
       96 JUMPIFNOT                        R5 ; [+23]
       97 GETTABLEKS                       R7 R1 K22 ["BaseMaterial"]
       99 NAMECALL                         R5 R0 K23 ["scheduleDeferredOverrideUpdate"]
      101 CALL                             R5 2 0
      102 GETTABLEKS                       R7 R0 K18 ["_store"]
      104 NAMECALL                         R7 R7 K19 ["getState"]
      106 CALL                             R7 1 1
      107 GETTABLEKS                       R6 R7 K20 ["MaterialBrowserReducer"]
      109 GETTABLEKS                       R5 R6 K24 ["Path"]
      111 GETUPVAL                         R6 2
      112 MOVE                             R7 R5
      113 MOVE                             R8 R3
      114 CALL                             R6 2 1
      115 JUMPIFNOT                        R6 ; [+26]
      116 NAMECALL                         R6 R0 K25 ["scheduleDeferredMaterialListUpdate"]
      118 CALL                             R6 1 0
      119 RETURN                           R0 0
      120 GETTABLEKS                       R7 R1 K22 ["BaseMaterial"]
      122 NAMECALL                         R5 R0 K26 ["updateOverrides"]
      124 CALL                             R5 2 0
      125 GETTABLEKS                       R7 R0 K18 ["_store"]
      127 NAMECALL                         R7 R7 K19 ["getState"]
      129 CALL                             R7 1 1
      130 GETTABLEKS                       R6 R7 K20 ["MaterialBrowserReducer"]
      132 GETTABLEKS                       R5 R6 K24 ["Path"]
      134 GETUPVAL                         R6 2
      135 MOVE                             R7 R5
      136 MOVE                             R8 R3
      137 CALL                             R6 2 1
      138 JUMPIFNOT                        R6 ; [+3]
      139 NAMECALL                         R6 R0 K27 ["updateMaterialList"]
      141 CALL                             R6 1 0
      142 RETURN                           R0 0

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
       44 JUMPIFNOTEQ                      R9 R10 ; [+22]
       46 GETIMPORT                        R9 K13 [table.remove]
       48 GETTABLEKS                       R10 R3 K10 ["Materials"]
       50 MOVE                             R11 R7
       51 CALL                             R9 2 0
       52 GETUPVAL                         R9 0
       53 CALL                             R9 0 1
       54 JUMPIFNOT                        R9 ; [+6]
       55 GETTABLEKS                       R11 R8 K14 ["Material"]
       57 NAMECALL                         R9 R0 K15 ["scheduleDeferredOverrideUpdate"]
       59 CALL                             R9 2 0
       60 JUMP                             ; [+8]
       61 GETTABLEKS                       R11 R8 K14 ["Material"]
       63 NAMECALL                         R9 R0 K16 ["updateOverrides"]
       65 CALL                             R9 2 0
       66 JUMP                             ; [+2]
       67 FORGLOOP                         R4 2 [inext] ; [-28]
       69 GETTABLEKS                       R4 R0 K0 ["_materialPaths"]
       71 GETTABLEKS                       R5 R1 K1 ["MaterialVariant"]
       73 GETUPVAL                         R6 1
       74 GETTABLEKS                       R7 R1 K14 ["Material"]
       76 CALL                             R6 1 1
       77 SETTABLE                         R6 R4 R5
       78 GETTABLEKS                       R7 R0 K0 ["_materialPaths"]
       80 GETTABLEKS                       R8 R1 K1 ["MaterialVariant"]
       82 GETTABLE                         R6 R7 R8
       83 GETTABLEKS                       R8 R1 K1 ["MaterialVariant"]
       85 NOT                              R7 R8
       86 NAMECALL                         R4 R0 K17 ["addCategory"]
       88 CALL                             R4 3 1
       89 MOVE                             R3 R4
       90 FASTCALL2K                       ASSERT R3 K18 ; [+5]
       92 MOVE                             R5 R3
       93 LOADK                            R6 K18 ["Category to which a Material is added should exist, or be created"]
       94 GETIMPORT                        R4 K4 [assert]
       96 CALL                             R4 2 0
       97 GETTABLEKS                       R5 R3 K10 ["Materials"]
       99 FASTCALL2                        TABLE_INSERT R5 R1 ; [+4]
      101 MOVE                             R6 R1
      102 GETIMPORT                        R4 K20 [table.insert]
      104 CALL                             R4 2 0
      105 GETUPVAL                         R4 0
      106 CALL                             R4 0 1
      107 JUMPIFNOT                        R4 ; [+6]
      108 GETTABLEKS                       R6 R1 K14 ["Material"]
      110 NAMECALL                         R4 R0 K15 ["scheduleDeferredOverrideUpdate"]
      112 CALL                             R4 2 0
      113 JUMP                             ; [+5]
      114 GETTABLEKS                       R6 R1 K14 ["Material"]
      116 NAMECALL                         R4 R0 K16 ["updateOverrides"]
      118 CALL                             R4 2 0
      119 GETTABLEKS                       R6 R0 K21 ["_store"]
      121 NAMECALL                         R6 R6 K22 ["getState"]
      123 CALL                             R6 1 1
      124 GETTABLEKS                       R5 R6 K23 ["MaterialBrowserReducer"]
      126 GETTABLEKS                       R4 R5 K24 ["Path"]
      128 GETUPVAL                         R5 2
      129 MOVE                             R6 R4
      130 MOVE                             R7 R2
      131 CALL                             R5 2 1
      132 JUMPIF                           R5 ; [+10]
      133 GETUPVAL                         R5 2
      134 GETTABLEKS                       R7 R0 K0 ["_materialPaths"]
      136 GETTABLEKS                       R8 R1 K1 ["MaterialVariant"]
      138 GETTABLE                         R6 R7 R8
      139 GETTABLEKS                       R7 R1 K25 ["MaterialPath"]
      141 CALL                             R5 2 1
      142 JUMPIFNOT                        R5 ; [+10]
      143 GETUPVAL                         R5 0
      144 CALL                             R5 0 1
      145 JUMPIFNOT                        R5 ; [+4]
      146 NAMECALL                         R5 R0 K26 ["scheduleDeferredMaterialListUpdate"]
      148 CALL                             R5 1 0
      149 RETURN                           R0 0
      150 NAMECALL                         R5 R0 K27 ["updateMaterialList"]
      152 CALL                             R5 1 0
      153 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R0 K0 ["_pendingOverrideUpdates"]
        2 LOADB                            R3 1
        3 SETTABLE                         R3 R2 R1
        4 NAMECALL                         R2 R0 K1 ["scheduleDeferredFlush"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_pendingMaterialListUpdate"]
        3 NAMECALL                         R1 R0 K1 ["scheduleDeferredFlush"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["flushDeferredUpdates"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_deferredUpdateScheduled"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_deferredUpdateScheduled"]
        7 GETIMPORT                        R1 K3 [task.defer]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_25:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_deferredUpdateScheduled"]
        3 GETTABLEKS                       R1 R0 K1 ["_pendingOverrideUpdates"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R0 K1 ["_pendingOverrideUpdates"]
        9 MOVE                             R2 R1
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 MOVE                             R9 R5
       14 NAMECALL                         R7 R0 K2 ["updateOverrides"]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 1 ; [-5]
       19 GETTABLEKS                       R2 R0 K3 ["_pendingMaterialListUpdate"]
       21 JUMPIFNOT                        R2 ; [+6]
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R0 K3 ["_pendingMaterialListUpdate"]
       25 NAMECALL                         R2 R0 K4 ["updateMaterialList"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETTABLEKS                       R3 R0 K0 ["_materialWrappers"]
        2 GETTABLE                         R2 R3 R1
        3 GETTABLEKS                       R3 R0 K1 ["_store"]
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R2
        7 CALL                             R5 1 -1
        8 NAMECALL                         R3 R3 K2 ["dispatch"]
       10 CALL                             R3 -1 0
       11 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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
      162 GETTABLEKS                       R32 R29 K41 ["getFFlagUpdateMaterialListHangFix3"]
      164 LOADK                            R35 K42 ["MaterialServiceController"]
      165 NAMECALL                         R33 R3 K43 ["extend"]
      167 CALL                             R33 2 1
      168 DUPCLOSURE                       R34 K44 [PROTO_7]
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R33
      171 CAPTURE                          VAL R31
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R28
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R30
      179 CAPTURE                          VAL R32
      180 SETTABLEKS                       R34 R33 K45 ["new"]
      182 DUPCLOSURE                       R34 K46 [PROTO_8]
      183 CAPTURE                          VAL R33
      184 SETTABLEKS                       R34 R33 K47 ["mock"]
      186 DUPCLOSURE                       R34 K48 [PROTO_9]
      187 SETTABLEKS                       R34 R33 K49 ["destroy"]
      189 DUPCLOSURE                       R34 K50 [PROTO_10]
      190 SETTABLEKS                       R34 R33 K51 ["getRootCategory"]
      192 DUPCLOSURE                       R34 K52 [PROTO_11]
      193 CAPTURE                          VAL R19
      194 CAPTURE                          VAL R20
      195 SETTABLEKS                       R34 R33 K53 ["getMaterialWrapper"]
      197 DUPCLOSURE                       R34 K54 [PROTO_12]
      198 SETTABLEKS                       R34 R33 K55 ["addCategory"]
      200 DUPCLOSURE                       R34 K56 [PROTO_13]
      201 SETTABLEKS                       R34 R33 K57 ["findCategory"]
      203 DUPCLOSURE                       R34 K58 [PROTO_16]
      204 CAPTURE                          VAL R19
      205 CAPTURE                          VAL R13
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R32
      209 CAPTURE                          VAL R30
      210 CAPTURE                          VAL R25
      211 SETTABLEKS                       R34 R33 K59 ["addMaterial"]
      213 DUPCLOSURE                       R34 K60 [PROTO_17]
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R32
      216 CAPTURE                          VAL R25
      217 SETTABLEKS                       R34 R33 K61 ["removeMaterial"]
      219 DUPCLOSURE                       R34 K62 [PROTO_18]
      220 CAPTURE                          VAL R32
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R25
      223 SETTABLEKS                       R34 R33 K63 ["moveMaterial"]
      225 DUPCLOSURE                       R34 K64 [PROTO_19]
      226 CAPTURE                          VAL R27
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R8
      229 SETTABLEKS                       R34 R33 K65 ["updateOverrides"]
      231 DUPCLOSURE                       R34 K66 [PROTO_20]
      232 SETTABLEKS                       R34 R33 K67 ["setMaterialOverride"]
      234 DUPCLOSURE                       R34 K68 [PROTO_21]
      235 SETTABLEKS                       R34 R33 K69 ["scheduleDeferredOverrideUpdate"]
      237 DUPCLOSURE                       R34 K70 [PROTO_22]
      238 SETTABLEKS                       R34 R33 K71 ["scheduleDeferredMaterialListUpdate"]
      240 DUPCLOSURE                       R34 K72 [PROTO_24]
      241 SETTABLEKS                       R34 R33 K73 ["scheduleDeferredFlush"]
      243 DUPCLOSURE                       R34 K74 [PROTO_25]
      244 SETTABLEKS                       R34 R33 K75 ["flushDeferredUpdates"]
      246 DUPCLOSURE                       R34 K76 [PROTO_26]
      247 CAPTURE                          VAL R26
      248 CAPTURE                          VAL R11
      249 SETTABLEKS                       R34 R33 K77 ["updateMaterialList"]
      251 DUPCLOSURE                       R34 K78 [PROTO_27]
      252 CAPTURE                          VAL R14
      253 SETTABLEKS                       R34 R33 K79 ["setPath"]
      255 DUPCLOSURE                       R34 K80 [PROTO_28]
      256 CAPTURE                          VAL R15
      257 SETTABLEKS                       R34 R33 K81 ["setSearch"]
      259 DUPCLOSURE                       R34 K82 [PROTO_29]
      260 CAPTURE                          VAL R10
      261 SETTABLEKS                       R34 R33 K83 ["setMaterial"]
      263 DUPCLOSURE                       R34 K84 [PROTO_30]
      264 CAPTURE                          VAL R21
      265 SETTABLEKS                       R34 R33 K85 ["hasDefaultMaterial"]
      267 DUPCLOSURE                       R34 K86 [PROTO_31]
      268 CAPTURE                          VAL R24
      269 SETTABLEKS                       R34 R33 K87 ["checkMaterialName"]
      271 DUPCLOSURE                       R34 K88 [PROTO_32]
      272 CAPTURE                          VAL R18
      273 SETTABLEKS                       R34 R33 K89 ["getCategoryDefaultMaterial"]
      275 RETURN                           R33 1
