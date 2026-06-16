PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K5 [utf8.len]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIF                           R1 ; [+2]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["number"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 JUMPIFEQ                         R0 R0 ; [+3]
       11 LOADB                            R1 0
       12 RETURN                           R1 1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["canEncodeNumberSafely"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADN                            R1 0
        7 RETURN                           R1 1
        8 MULK                             R3 R0 K2 [256]
        9 ADDK                             R2 R3 K1 [0.5]
       10 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       11 GETIMPORT                        R1 K5 [math.floor]
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MULK                             R11 R6 K1 [256]
        7 ADDK                             R10 R11 K0 [0.5]
        8 FASTCALL1                        MATH_FLOOR R10 ; [+2]
        9 GETIMPORT                        R9 K4 [math.floor]
       11 CALL                             R9 1 1
       12 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K7 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-13]
       20 RETURN                           R1 1

PROTO_4:
        0 LOADN                            R3 0
        1 JUMPIFNOTLE                      R2 R3 ; [+3]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 SUBK                             R2 R2 K0 [1]
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R4 R0
        8 GETIMPORT                        R3 K2 [typeof]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K3 ["Instance"] ; [+89]
       13 GETTABLEKS                       R3 R1 K4 ["options"]
       15 GETTABLEKS                       R3 R3 K5 ["ignoreAccessories"]
       17 JUMPIFNOT                        R3 ; [+7]
       18 LOADK                            R5 K6 ["Accessory"]
       19 NAMECALL                         R3 R0 K7 ["IsA"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+2]
       23 LOADNIL                          R3
       24 RETURN                           R3 1
       25 GETUPVAL                         R3 0
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+16]
       28 GETTABLEKS                       R3 R1 K8 ["state"]
       30 GETTABLEKS                       R4 R3 K9 ["serializedInstanceCount"]
       32 ADDK                             R4 R4 K0 [1]
       33 SETTABLEKS                       R4 R3 K9 ["serializedInstanceCount"]
       35 GETTABLEKS                       R3 R1 K8 ["state"]
       37 GETTABLEKS                       R3 R3 K9 ["serializedInstanceCount"]
       39 LOADN                            R4 136
       40 JUMPIFNOTLT                      R4 R3 ; [+3]
       42 LOADNIL                          R3
       43 RETURN                           R3 1
       44 GETTABLEKS                       R4 R1 K8 ["state"]
       46 GETTABLEKS                       R4 R4 K10 ["pendingInstances"]
       48 GETTABLE                         R3 R4 R0
       49 JUMPIFNOT                        R3 ; [+7]
       50 LOADK                            R5 K11 ["inst-%*"]
       51 MOVE                             R7 R3
       52 NAMECALL                         R5 R5 K12 ["format"]
       54 CALL                             R5 2 1
       55 MOVE                             R4 R5
       56 RETURN                           R4 1
       57 GETTABLEKS                       R5 R1 K8 ["state"]
       59 GETTABLEKS                       R5 R5 K13 ["lastInstanceId"]
       61 ADDK                             R4 R5 K0 [1]
       62 GETTABLEKS                       R5 R1 K8 ["state"]
       64 SETTABLEKS                       R4 R5 K13 ["lastInstanceId"]
       66 GETTABLEKS                       R5 R1 K8 ["state"]
       68 GETTABLEKS                       R5 R5 K10 ["pendingInstances"]
       70 SETTABLE                         R4 R5 R0
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R5 R5 K14 ["serializeInstanceRaw"]
       74 MOVE                             R6 R0
       75 MOVE                             R7 R1
       76 MOVE                             R8 R2
       77 CALL                             R5 3 1
       78 JUMPIF                           R5 ; [+2]
       79 LOADNIL                          R6
       80 RETURN                           R6 1
       81 NEWTABLE                         R6 0 0
       83 MOVE                             R7 R5
       84 LOADNIL                          R8
       85 LOADNIL                          R9
       86 FORGPREP                         R7
       87 GETUPVAL                         R14 2
       88 GETTABLE                         R13 R14 R11
       89 OR                               R12 R13 R11
       90 GETUPVAL                         R14 2
       91 GETTABLE                         R13 R14 R10
       92 JUMPIFNOT                        R13 ; [+4]
       93 GETUPVAL                         R14 2
       94 GETTABLE                         R13 R14 R10
       95 SETTABLE                         R12 R6 R13
       96 JUMP                             ; [+1]
       97 SETTABLE                         R12 R6 R10
       98 FORGLOOP                         R7 2 ; [-12]
      100 RETURN                           R6 1
      101 FASTCALL1                        TYPEOF R0 ; [+3]
      102 MOVE                             R4 R0
      103 GETIMPORT                        R3 K2 [typeof]
      105 CALL                             R3 1 1
      106 JUMPIFNOTEQKS                    R3 K15 ["EnumItem"] ; [+4]
      108 GETTABLEKS                       R3 R0 K16 ["Value"]
      110 RETURN                           R3 1
      111 FASTCALL1                        TYPEOF R0 ; [+3]
      112 MOVE                             R4 R0
      113 GETIMPORT                        R3 K2 [typeof]
      115 CALL                             R3 1 1
      116 JUMPIFNOTEQKS                    R3 K17 ["BrickColor"] ; [+4]
      118 GETTABLEKS                       R3 R0 K18 ["Number"]
      120 RETURN                           R3 1
      121 FASTCALL1                        TYPEOF R0 ; [+3]
      122 MOVE                             R4 R0
      123 GETIMPORT                        R3 K2 [typeof]
      125 CALL                             R3 1 1
      126 JUMPIFNOTEQKS                    R3 K19 ["Color3"] ; [+16]
      128 GETUPVAL                         R3 1
      129 GETTABLEKS                       R3 R3 K20 ["cutListPrecision"]
      131 NEWTABLE                         R4 0 3
      133 GETTABLEKS                       R5 R0 K21 ["R"]
      135 GETTABLEKS                       R6 R0 K22 ["G"]
      137 GETTABLEKS                       R7 R0 K23 ["B"]
      139 SETLIST                          R4 R5 3 [1]
      141 CALL                             R3 1 -1
      142 RETURN                           R3 -1
      143 FASTCALL1                        TYPEOF R0 ; [+3]
      144 MOVE                             R4 R0
      145 GETIMPORT                        R3 K2 [typeof]
      147 CALL                             R3 1 1
      148 JUMPIFNOTEQKS                    R3 K24 ["CFrame"] ; [+71]
      150 GETTABLEKS                       R3 R0 K25 ["LookVector"]
      152 GETTABLEKS                       R6 R3 K26 ["X"]
      154 MINUS                            R5 R6
      155 GETTABLEKS                       R7 R3 K27 ["Z"]
      157 MINUS                            R6 R7
      158 FASTCALL2                        MATH_ATAN2 R5 R6 ; [+3]
      160 GETIMPORT                        R4 K30 [math.atan2]
      162 CALL                             R4 2 1
      163 GETTABLEKS                       R8 R3 K26 ["X"]
      165 POWK                             R7 R8 K32 [2]
      166 GETTABLEKS                       R9 R3 K27 ["Z"]
      168 POWK                             R8 R9 K32 [2]
      169 ADD                              R6 R7 R8
      170 POWK                             R5 R6 K31 [0.5]
      171 GETTABLEKS                       R7 R3 K33 ["Y"]
      173 FASTCALL2                        MATH_ATAN2 R7 R5 ; [+4]
      175 MOVE                             R8 R5
      176 GETIMPORT                        R6 K30 [math.atan2]
      178 CALL                             R6 2 1
      179 GETIMPORT                        R9 K35 [CFrame.Angles]
      181 LOADN                            R10 0
      182 MOVE                             R11 R4
      183 LOADN                            R12 0
      184 CALL                             R9 3 1
      185 GETIMPORT                        R10 K35 [CFrame.Angles]
      187 MOVE                             R11 R6
      188 LOADN                            R12 0
      189 LOADN                            R13 0
      190 CALL                             R10 3 1
      191 MUL                              R8 R9 R10
      192 GETTABLEKS                       R9 R0 K36 ["Position"]
      194 ADD                              R7 R8 R9
      195 NAMECALL                         R9 R7 K37 ["Inverse"]
      197 CALL                             R9 1 1
      198 MUL                              R8 R9 R0
      199 NAMECALL                         R8 R8 K38 ["ToEulerAnglesXYZ"]
      201 CALL                             R8 1 3
      202 GETUPVAL                         R11 1
      203 GETTABLEKS                       R11 R11 K20 ["cutListPrecision"]
      205 NEWTABLE                         R12 0 6
      207 GETTABLEKS                       R13 R0 K26 ["X"]
      209 GETTABLEKS                       R14 R0 K33 ["Y"]
      211 GETTABLEKS                       R15 R0 K27 ["Z"]
      213 DIVK                             R16 R4 K39 [3.14159265358979]
      214 DIVK                             R17 R10 K39 [3.14159265358979]
      215 DIVK                             R18 R6 K40 [1.5707963267949]
      216 SETLIST                          R12 R13 6 [1]
      218 CALL                             R11 1 -1
      219 RETURN                           R11 -1
      220 FASTCALL1                        TYPEOF R0 ; [+3]
      221 MOVE                             R4 R0
      222 GETIMPORT                        R3 K2 [typeof]
      224 CALL                             R3 1 1
      225 JUMPIFNOTEQKS                    R3 K41 ["Vector3"] ; [+16]
      227 GETUPVAL                         R3 1
      228 GETTABLEKS                       R3 R3 K20 ["cutListPrecision"]
      230 NEWTABLE                         R4 0 3
      232 GETTABLEKS                       R5 R0 K26 ["X"]
      234 GETTABLEKS                       R6 R0 K33 ["Y"]
      236 GETTABLEKS                       R7 R0 K27 ["Z"]
      238 SETLIST                          R4 R5 3 [1]
      240 CALL                             R3 1 -1
      241 RETURN                           R3 -1
      242 FASTCALL1                        TYPEOF R0 ; [+3]
      243 MOVE                             R4 R0
      244 GETIMPORT                        R3 K2 [typeof]
      246 CALL                             R3 1 1
      247 JUMPIFNOTEQKS                    R3 K42 ["boolean"] ; [+6]
      249 JUMPIFNOT                        R0 ; [+2]
      250 LOADN                            R3 1
      251 RETURN                           R3 1
      252 LOADN                            R3 0
      253 RETURN                           R3 1
      254 FASTCALL1                        TYPEOF R0 ; [+3]
      255 MOVE                             R4 R0
      256 GETIMPORT                        R3 K2 [typeof]
      258 CALL                             R3 1 1
      259 JUMPIFNOTEQKS                    R3 K43 ["number"] ; [+7]
      261 GETUPVAL                         R3 1
      262 GETTABLEKS                       R3 R3 K44 ["cutPrecision"]
      264 MOVE                             R4 R0
      265 CALL                             R3 1 -1
      266 RETURN                           R3 -1
      267 FASTCALL1                        TYPE R0 ; [+3]
      268 MOVE                             R4 R0
      269 GETIMPORT                        R3 K46 [type]
      271 CALL                             R3 1 1
      272 JUMPIFNOTEQKS                    R3 K47 ["string"] ; [+10]
      274 GETUPVAL                         R3 1
      275 GETTABLEKS                       R3 R3 K48 ["canEncodeStringSafely"]
      277 MOVE                             R4 R0
      278 CALL                             R3 1 1
      279 JUMPIFNOT                        R3 ; [+1]
      280 RETURN                           R0 1
      281 LOADNIL                          R3
      282 RETURN                           R3 1
      283 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["serialize"]
        3 GETTABLEKS                       R5 R1 K1 ["state"]
        5 GETTABLEKS                       R5 R5 K2 ["boundingSize"]
        7 DIV                              R4 R0 R5
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_6:
        0 GETTABLEKS                       R3 R1 K0 ["state"]
        2 GETTABLEKS                       R3 R3 K1 ["boundingCFrame"]
        4 MOVE                             R5 R0
        5 NAMECALL                         R3 R3 K2 ["ToObjectSpace"]
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["serialize"]
       11 GETTABLEKS                       R6 R0 K4 ["Rotation"]
       13 GETTABLEKS                       R8 R3 K5 ["Position"]
       15 GETTABLEKS                       R9 R1 K0 ["state"]
       17 GETTABLEKS                       R9 R9 K6 ["boundingSize"]
       19 DIV                              R7 R8 R9
       20 ADD                              R5 R6 R7
       21 MOVE                             R6 R1
       22 MOVE                             R7 R2
       23 CALL                             R4 3 -1
       24 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["serialize"]
        3 GETTABLEKS                       R5 R1 K1 ["state"]
        5 GETTABLEKS                       R5 R5 K2 ["boundingCFrame"]
        7 MOVE                             R7 R0
        8 NAMECALL                         R5 R5 K3 ["PointToObjectSpace"]
       10 CALL                             R5 2 1
       11 GETTABLEKS                       R6 R1 K1 ["state"]
       13 GETTABLEKS                       R6 R6 K4 ["boundingSize"]
       15 DIV                              R4 R5 R6
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 CALL                             R3 3 -1
       19 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["serialize"]
        3 GETTABLEKS                       R5 R0 K1 ["Rotation"]
        5 GETTABLEKS                       R7 R0 K2 ["Position"]
        7 GETTABLEKS                       R8 R1 K3 ["state"]
        9 GETTABLEKS                       R8 R8 K4 ["boundingSize"]
       11 DIV                              R6 R7 R8
       12 ADD                              R4 R5 R6
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R3 3 -1
       16 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["serialize"]
        3 GETTABLEKS                       R5 R1 K1 ["state"]
        5 GETTABLEKS                       R5 R5 K2 ["boundingSize"]
        7 DIV                              R4 R0 R5
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_10:
        0 GETTABLEKS                       R4 R1 K0 ["relativeScale"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 MOVE                             R5 R3
        4 GETTABLEKS                       R6 R1 K0 ["relativeScale"]
        6 CALL                             R5 1 1
        7 MOVE                             R4 R5
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K1 ["serialize"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K2 ["cutPrecision"]
       14 DIV                              R7 R0 R4
       15 CALL                             R6 1 1
       16 MOVE                             R7 R1
       17 MOVE                             R8 R2
       18 CALL                             R5 3 -1
       19 RETURN                           R5 -1

PROTO_11:
        0 LOADN                            R3 0
        1 JUMPIFNOTLE                      R2 R3 ; [+3]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 SUBK                             R2 R2 K0 [1]
        6 JUMPIFNOTEQKNIL                  R0 ; [+3]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 GETTABLEKS                       R3 R1 K1 ["state"]
       12 GETTABLEKS                       R3 R3 K2 ["allowedInstancesToSerializeUnder"]
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 JUMPIFEQ                         R0 R7 ; [+6]
       19 MOVE                             R10 R7
       20 NAMECALL                         R8 R0 K3 ["IsDescendantOf"]
       22 CALL                             R8 2 1
       23 JUMPIFNOT                        R8 ; [+8]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K4 ["serialize"]
       27 MOVE                             R9 R0
       28 MOVE                             R10 R1
       29 MOVE                             R11 R2
       30 CALL                             R8 3 -1
       31 RETURN                           R8 -1
       32 FORGLOOP                         R3 2 ; [-16]
       34 LOADNIL                          R3
       35 RETURN                           R3 1

PROTO_12:
        0 LOADK                            R3 K0 ["NumberValue"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K2 ["Name"]
        8 GETTABLE                         R1 R2 R3
        9 RETURN                           R1 1
       10 LOADB                            R1 0
       11 RETURN                           R1 1

PROTO_13:
        0 LOADK                            R3 K0 ["Vector3Value"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETTABLEKS                       R1 R0 K2 ["Name"]
        7 JUMPIFNOTEQKS                    R1 K3 ["OriginalPosition"] ; [+13]
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 JUMPIFNOT                        R1 ; [+9]
       12 GETTABLEKS                       R1 R0 K4 ["Parent"]
       14 LOADK                            R3 K5 ["Attachment"]
       15 NAMECALL                         R1 R1 K1 ["IsA"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+2]
       19 LOADB                            R1 1
       20 RETURN                           R1 1
       21 LOADB                            R1 0
       22 RETURN                           R1 1

PROTO_14:
        0 LOADN                            R3 0
        1 JUMPIFNOTLE                      R2 R3 ; [+3]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 SUBK                             R2 R2 K0 [1]
        6 LOADK                            R5 K1 ["MeshPart"]
        7 NAMECALL                         R3 R0 K2 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+121]
       11 DUPTABLE                         R3 K15 [{"name", "archivable", "meshId", "textureId", "material", "materialVariant", "transparency", "reflectance", "color", "size", "cframe", "children"}]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K16 ["serialize"]
       15 GETTABLEKS                       R5 R0 K17 ["Name"]
       17 MOVE                             R6 R1
       18 MOVE                             R7 R2
       19 CALL                             R4 3 1
       20 SETTABLEKS                       R4 R3 K3 ["name"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K16 ["serialize"]
       25 GETTABLEKS                       R5 R0 K18 ["Archivable"]
       27 MOVE                             R6 R1
       28 MOVE                             R7 R2
       29 CALL                             R4 3 1
       30 SETTABLEKS                       R4 R3 K4 ["archivable"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K16 ["serialize"]
       35 GETTABLEKS                       R5 R0 K19 ["MeshId"]
       37 MOVE                             R6 R1
       38 MOVE                             R7 R2
       39 CALL                             R4 3 1
       40 SETTABLEKS                       R4 R3 K5 ["meshId"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K16 ["serialize"]
       45 GETTABLEKS                       R5 R0 K20 ["TextureID"]
       47 MOVE                             R6 R1
       48 MOVE                             R7 R2
       49 CALL                             R4 3 1
       50 SETTABLEKS                       R4 R3 K6 ["textureId"]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K16 ["serialize"]
       55 GETTABLEKS                       R5 R0 K21 ["Material"]
       57 MOVE                             R6 R1
       58 MOVE                             R7 R2
       59 CALL                             R4 3 1
       60 SETTABLEKS                       R4 R3 K7 ["material"]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K16 ["serialize"]
       65 GETTABLEKS                       R5 R0 K22 ["MaterialVariant"]
       67 MOVE                             R6 R1
       68 MOVE                             R7 R2
       69 CALL                             R4 3 1
       70 SETTABLEKS                       R4 R3 K8 ["materialVariant"]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K16 ["serialize"]
       75 GETTABLEKS                       R5 R0 K23 ["Transparency"]
       77 MOVE                             R6 R1
       78 MOVE                             R7 R2
       79 CALL                             R4 3 1
       80 SETTABLEKS                       R4 R3 K9 ["transparency"]
       82 GETUPVAL                         R4 0
       83 GETTABLEKS                       R4 R4 K16 ["serialize"]
       85 GETTABLEKS                       R5 R0 K24 ["Reflectance"]
       87 MOVE                             R6 R1
       88 MOVE                             R7 R2
       89 CALL                             R4 3 1
       90 SETTABLEKS                       R4 R3 K10 ["reflectance"]
       92 GETUPVAL                         R4 0
       93 GETTABLEKS                       R4 R4 K16 ["serialize"]
       95 GETTABLEKS                       R5 R0 K25 ["Color"]
       97 MOVE                             R6 R1
       98 MOVE                             R7 R2
       99 CALL                             R4 3 1
      100 SETTABLEKS                       R4 R3 K11 ["color"]
      102 GETUPVAL                         R4 0
      103 GETTABLEKS                       R4 R4 K26 ["serializeSize"]
      105 GETTABLEKS                       R5 R0 K27 ["Size"]
      107 MOVE                             R6 R1
      108 MOVE                             R7 R2
      109 CALL                             R4 3 1
      110 SETTABLEKS                       R4 R3 K12 ["size"]
      112 GETUPVAL                         R4 0
      113 GETTABLEKS                       R4 R4 K28 ["serializePartCFrame"]
      115 GETTABLEKS                       R5 R0 K29 ["CFrame"]
      117 MOVE                             R6 R1
      118 MOVE                             R7 R2
      119 CALL                             R4 3 1
      120 SETTABLEKS                       R4 R3 K13 ["cframe"]
      122 GETUPVAL                         R4 0
      123 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      125 MOVE                             R5 R0
      126 MOVE                             R6 R1
      127 MOVE                             R7 R2
      128 CALL                             R4 3 1
      129 SETTABLEKS                       R4 R3 K14 ["children"]
      131 RETURN                           R3 1
      132 LOADK                            R5 K31 ["BasePart"]
      133 NAMECALL                         R3 R0 K2 ["IsA"]
      135 CALL                             R3 2 1
      136 JUMPIFNOT                        R3 ; [+101]
      137 DUPTABLE                         R3 K32 [{"name", "archivable", "color", "material", "materialVariant", "transparency", "reflectance", "size", "cframe", "children"}]
      138 GETUPVAL                         R4 0
      139 GETTABLEKS                       R4 R4 K16 ["serialize"]
      141 GETTABLEKS                       R5 R0 K17 ["Name"]
      143 MOVE                             R6 R1
      144 MOVE                             R7 R2
      145 CALL                             R4 3 1
      146 SETTABLEKS                       R4 R3 K3 ["name"]
      148 GETUPVAL                         R4 0
      149 GETTABLEKS                       R4 R4 K16 ["serialize"]
      151 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      153 MOVE                             R6 R1
      154 MOVE                             R7 R2
      155 CALL                             R4 3 1
      156 SETTABLEKS                       R4 R3 K4 ["archivable"]
      158 GETUPVAL                         R4 0
      159 GETTABLEKS                       R4 R4 K16 ["serialize"]
      161 GETTABLEKS                       R5 R0 K25 ["Color"]
      163 MOVE                             R6 R1
      164 MOVE                             R7 R2
      165 CALL                             R4 3 1
      166 SETTABLEKS                       R4 R3 K11 ["color"]
      168 GETUPVAL                         R4 0
      169 GETTABLEKS                       R4 R4 K16 ["serialize"]
      171 GETTABLEKS                       R5 R0 K21 ["Material"]
      173 MOVE                             R6 R1
      174 MOVE                             R7 R2
      175 CALL                             R4 3 1
      176 SETTABLEKS                       R4 R3 K7 ["material"]
      178 GETUPVAL                         R4 0
      179 GETTABLEKS                       R4 R4 K16 ["serialize"]
      181 GETTABLEKS                       R5 R0 K22 ["MaterialVariant"]
      183 MOVE                             R6 R1
      184 MOVE                             R7 R2
      185 CALL                             R4 3 1
      186 SETTABLEKS                       R4 R3 K8 ["materialVariant"]
      188 GETUPVAL                         R4 0
      189 GETTABLEKS                       R4 R4 K16 ["serialize"]
      191 GETTABLEKS                       R5 R0 K23 ["Transparency"]
      193 MOVE                             R6 R1
      194 MOVE                             R7 R2
      195 CALL                             R4 3 1
      196 SETTABLEKS                       R4 R3 K9 ["transparency"]
      198 GETUPVAL                         R4 0
      199 GETTABLEKS                       R4 R4 K16 ["serialize"]
      201 GETTABLEKS                       R5 R0 K24 ["Reflectance"]
      203 MOVE                             R6 R1
      204 MOVE                             R7 R2
      205 CALL                             R4 3 1
      206 SETTABLEKS                       R4 R3 K10 ["reflectance"]
      208 GETUPVAL                         R4 0
      209 GETTABLEKS                       R4 R4 K26 ["serializeSize"]
      211 GETTABLEKS                       R5 R0 K27 ["Size"]
      213 MOVE                             R6 R1
      214 MOVE                             R7 R2
      215 CALL                             R4 3 1
      216 SETTABLEKS                       R4 R3 K12 ["size"]
      218 GETUPVAL                         R4 0
      219 GETTABLEKS                       R4 R4 K28 ["serializePartCFrame"]
      221 GETTABLEKS                       R5 R0 K29 ["CFrame"]
      223 MOVE                             R6 R1
      224 MOVE                             R7 R2
      225 CALL                             R4 3 1
      226 SETTABLEKS                       R4 R3 K13 ["cframe"]
      228 GETUPVAL                         R4 0
      229 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      231 MOVE                             R5 R0
      232 MOVE                             R6 R1
      233 MOVE                             R7 R2
      234 CALL                             R4 3 1
      235 SETTABLEKS                       R4 R3 K14 ["children"]
      237 RETURN                           R3 1
      238 LOADK                            R5 K33 ["WrapLayer"]
      239 NAMECALL                         R3 R0 K2 ["IsA"]
      241 CALL                             R3 2 1
      242 JUMPIFNOT                        R3 ; [+131]
      243 DUPTABLE                         R3 K44 [{"name", "archivable", "cageOrigin", "importOrigin", "order", "puffiness", "referenceMeshId", "referenceOrigin", "autoSkin", "enabled", "bindOffset", "shrinkFactor", "children"}]
      244 GETUPVAL                         R4 0
      245 GETTABLEKS                       R4 R4 K16 ["serialize"]
      247 GETTABLEKS                       R5 R0 K17 ["Name"]
      249 MOVE                             R6 R1
      250 MOVE                             R7 R2
      251 CALL                             R4 3 1
      252 SETTABLEKS                       R4 R3 K3 ["name"]
      254 GETUPVAL                         R4 0
      255 GETTABLEKS                       R4 R4 K16 ["serialize"]
      257 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      259 MOVE                             R6 R1
      260 MOVE                             R7 R2
      261 CALL                             R4 3 1
      262 SETTABLEKS                       R4 R3 K4 ["archivable"]
      264 GETUPVAL                         R4 0
      265 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      267 GETTABLEKS                       R5 R0 K46 ["CageOrigin"]
      269 MOVE                             R6 R1
      270 MOVE                             R7 R2
      271 CALL                             R4 3 1
      272 SETTABLEKS                       R4 R3 K34 ["cageOrigin"]
      274 GETUPVAL                         R4 0
      275 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      277 GETTABLEKS                       R5 R0 K47 ["ImportOrigin"]
      279 MOVE                             R6 R1
      280 MOVE                             R7 R2
      281 CALL                             R4 3 1
      282 SETTABLEKS                       R4 R3 K35 ["importOrigin"]
      284 GETUPVAL                         R4 0
      285 GETTABLEKS                       R4 R4 K16 ["serialize"]
      287 GETTABLEKS                       R5 R0 K48 ["Order"]
      289 MOVE                             R6 R1
      290 MOVE                             R7 R2
      291 CALL                             R4 3 1
      292 SETTABLEKS                       R4 R3 K36 ["order"]
      294 GETUPVAL                         R4 0
      295 GETTABLEKS                       R4 R4 K16 ["serialize"]
      297 GETTABLEKS                       R5 R0 K49 ["Puffiness"]
      299 MOVE                             R6 R1
      300 MOVE                             R7 R2
      301 CALL                             R4 3 1
      302 SETTABLEKS                       R4 R3 K37 ["puffiness"]
      304 GETUPVAL                         R4 0
      305 GETTABLEKS                       R4 R4 K16 ["serialize"]
      307 GETTABLEKS                       R5 R0 K50 ["ReferenceMeshId"]
      309 MOVE                             R6 R1
      310 MOVE                             R7 R2
      311 CALL                             R4 3 1
      312 SETTABLEKS                       R4 R3 K38 ["referenceMeshId"]
      314 GETUPVAL                         R4 0
      315 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      317 GETTABLEKS                       R5 R0 K51 ["ReferenceOrigin"]
      319 MOVE                             R6 R1
      320 MOVE                             R7 R2
      321 CALL                             R4 3 1
      322 SETTABLEKS                       R4 R3 K39 ["referenceOrigin"]
      324 GETUPVAL                         R4 0
      325 GETTABLEKS                       R4 R4 K16 ["serialize"]
      327 GETTABLEKS                       R5 R0 K52 ["AutoSkin"]
      329 MOVE                             R6 R1
      330 MOVE                             R7 R2
      331 CALL                             R4 3 1
      332 SETTABLEKS                       R4 R3 K40 ["autoSkin"]
      334 GETUPVAL                         R4 0
      335 GETTABLEKS                       R4 R4 K16 ["serialize"]
      337 GETTABLEKS                       R5 R0 K53 ["Enabled"]
      339 MOVE                             R6 R1
      340 MOVE                             R7 R2
      341 CALL                             R4 3 1
      342 SETTABLEKS                       R4 R3 K41 ["enabled"]
      344 GETUPVAL                         R4 0
      345 GETTABLEKS                       R4 R4 K16 ["serialize"]
      347 GETTABLEKS                       R5 R0 K54 ["BindOffset"]
      349 MOVE                             R6 R1
      350 MOVE                             R7 R2
      351 CALL                             R4 3 1
      352 SETTABLEKS                       R4 R3 K42 ["bindOffset"]
      354 GETUPVAL                         R4 0
      355 GETTABLEKS                       R4 R4 K16 ["serialize"]
      357 GETTABLEKS                       R5 R0 K55 ["ShrinkFactor"]
      359 MOVE                             R6 R1
      360 MOVE                             R7 R2
      361 CALL                             R4 3 1
      362 SETTABLEKS                       R4 R3 K43 ["shrinkFactor"]
      364 GETUPVAL                         R4 0
      365 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      367 MOVE                             R5 R0
      368 MOVE                             R6 R1
      369 MOVE                             R7 R2
      370 CALL                             R4 3 1
      371 SETTABLEKS                       R4 R3 K14 ["children"]
      373 RETURN                           R3 1
      374 LOADK                            R5 K56 ["JointInstance"]
      375 NAMECALL                         R3 R0 K2 ["IsA"]
      377 CALL                             R3 2 1
      378 JUMPIFNOT                        R3 ; [+82]
      379 GETTABLEKS                       R3 R1 K57 ["options"]
      381 GETTABLEKS                       R3 R3 K58 ["ignoreAccessories"]
      383 JUMPIFNOT                        R3 ; [+6]
      384 GETTABLEKS                       R3 R0 K17 ["Name"]
      386 JUMPIFNOTEQKS                    R3 K59 ["AccessoryWeld"] ; [+3]
      388 LOADNIL                          R3
      389 RETURN                           R3 1
      390 DUPTABLE                         R3 K64 [{"name", "archivable", "c0", "c1", "part0", "part1", "children"}]
      391 GETUPVAL                         R4 0
      392 GETTABLEKS                       R4 R4 K16 ["serialize"]
      394 GETTABLEKS                       R5 R0 K17 ["Name"]
      396 MOVE                             R6 R1
      397 MOVE                             R7 R2
      398 CALL                             R4 3 1
      399 SETTABLEKS                       R4 R3 K3 ["name"]
      401 GETUPVAL                         R4 0
      402 GETTABLEKS                       R4 R4 K16 ["serialize"]
      404 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      406 MOVE                             R6 R1
      407 MOVE                             R7 R2
      408 CALL                             R4 3 1
      409 SETTABLEKS                       R4 R3 K4 ["archivable"]
      411 GETUPVAL                         R4 0
      412 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      414 GETTABLEKS                       R5 R0 K65 ["C0"]
      416 MOVE                             R6 R1
      417 MOVE                             R7 R2
      418 CALL                             R4 3 1
      419 SETTABLEKS                       R4 R3 K60 ["c0"]
      421 GETUPVAL                         R4 0
      422 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      424 GETTABLEKS                       R5 R0 K66 ["C1"]
      426 MOVE                             R6 R1
      427 MOVE                             R7 R2
      428 CALL                             R4 3 1
      429 SETTABLEKS                       R4 R3 K61 ["c1"]
      431 GETUPVAL                         R4 0
      432 GETTABLEKS                       R4 R4 K67 ["serializeReferenceInstance"]
      434 GETTABLEKS                       R5 R0 K68 ["Part0"]
      436 MOVE                             R6 R1
      437 MOVE                             R7 R2
      438 CALL                             R4 3 1
      439 SETTABLEKS                       R4 R3 K62 ["part0"]
      441 GETUPVAL                         R4 0
      442 GETTABLEKS                       R4 R4 K67 ["serializeReferenceInstance"]
      444 GETTABLEKS                       R5 R0 K69 ["Part1"]
      446 MOVE                             R6 R1
      447 MOVE                             R7 R2
      448 CALL                             R4 3 1
      449 SETTABLEKS                       R4 R3 K63 ["part1"]
      451 GETUPVAL                         R4 0
      452 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      454 MOVE                             R5 R0
      455 MOVE                             R6 R1
      456 MOVE                             R7 R2
      457 CALL                             R4 3 1
      458 SETTABLEKS                       R4 R3 K14 ["children"]
      460 RETURN                           R3 1
      461 LOADK                            R5 K70 ["Attachment"]
      462 NAMECALL                         R3 R0 K2 ["IsA"]
      464 CALL                             R3 2 1
      465 JUMPIFNOT                        R3 ; [+31]
      466 DUPTABLE                         R3 K71 [{"name", "archivable", "children"}]
      467 GETUPVAL                         R4 0
      468 GETTABLEKS                       R4 R4 K16 ["serialize"]
      470 GETTABLEKS                       R5 R0 K17 ["Name"]
      472 MOVE                             R6 R1
      473 MOVE                             R7 R2
      474 CALL                             R4 3 1
      475 SETTABLEKS                       R4 R3 K3 ["name"]
      477 GETUPVAL                         R4 0
      478 GETTABLEKS                       R4 R4 K16 ["serialize"]
      480 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      482 MOVE                             R6 R1
      483 MOVE                             R7 R2
      484 CALL                             R4 3 1
      485 SETTABLEKS                       R4 R3 K4 ["archivable"]
      487 GETUPVAL                         R4 0
      488 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      490 MOVE                             R5 R0
      491 MOVE                             R6 R1
      492 MOVE                             R7 R2
      493 CALL                             R4 3 1
      494 SETTABLEKS                       R4 R3 K14 ["children"]
      496 RETURN                           R3 1
      497 LOADK                            R5 K72 ["Decal"]
      498 NAMECALL                         R3 R0 K2 ["IsA"]
      500 CALL                             R3 2 1
      501 JUMPIFNOT                        R3 ; [+42]
      502 DUPTABLE                         R3 K74 [{"name", "archivable", "texture", "transparency"}]
      503 GETUPVAL                         R4 0
      504 GETTABLEKS                       R4 R4 K16 ["serialize"]
      506 GETTABLEKS                       R5 R0 K17 ["Name"]
      508 MOVE                             R6 R1
      509 MOVE                             R7 R2
      510 CALL                             R4 3 1
      511 SETTABLEKS                       R4 R3 K3 ["name"]
      513 GETUPVAL                         R4 0
      514 GETTABLEKS                       R4 R4 K16 ["serialize"]
      516 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      518 MOVE                             R6 R1
      519 MOVE                             R7 R2
      520 CALL                             R4 3 1
      521 SETTABLEKS                       R4 R3 K4 ["archivable"]
      523 GETUPVAL                         R4 0
      524 GETTABLEKS                       R4 R4 K16 ["serialize"]
      526 GETTABLEKS                       R5 R0 K75 ["Texture"]
      528 MOVE                             R6 R1
      529 MOVE                             R7 R2
      530 CALL                             R4 3 1
      531 SETTABLEKS                       R4 R3 K73 ["texture"]
      533 GETUPVAL                         R4 0
      534 GETTABLEKS                       R4 R4 K16 ["serialize"]
      536 GETTABLEKS                       R5 R0 K23 ["Transparency"]
      538 MOVE                             R6 R1
      539 MOVE                             R7 R2
      540 CALL                             R4 3 1
      541 SETTABLEKS                       R4 R3 K9 ["transparency"]
      543 RETURN                           R3 1
      544 LOADK                            R5 K75 ["Texture"]
      545 NAMECALL                         R3 R0 K2 ["IsA"]
      547 CALL                             R3 2 1
      548 JUMPIFNOT                        R3 ; [+42]
      549 DUPTABLE                         R3 K74 [{"name", "archivable", "texture", "transparency"}]
      550 GETUPVAL                         R4 0
      551 GETTABLEKS                       R4 R4 K16 ["serialize"]
      553 GETTABLEKS                       R5 R0 K17 ["Name"]
      555 MOVE                             R6 R1
      556 MOVE                             R7 R2
      557 CALL                             R4 3 1
      558 SETTABLEKS                       R4 R3 K3 ["name"]
      560 GETUPVAL                         R4 0
      561 GETTABLEKS                       R4 R4 K16 ["serialize"]
      563 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      565 MOVE                             R6 R1
      566 MOVE                             R7 R2
      567 CALL                             R4 3 1
      568 SETTABLEKS                       R4 R3 K4 ["archivable"]
      570 GETUPVAL                         R4 0
      571 GETTABLEKS                       R4 R4 K16 ["serialize"]
      573 GETTABLEKS                       R5 R0 K75 ["Texture"]
      575 MOVE                             R6 R1
      576 MOVE                             R7 R2
      577 CALL                             R4 3 1
      578 SETTABLEKS                       R4 R3 K73 ["texture"]
      580 GETUPVAL                         R4 0
      581 GETTABLEKS                       R4 R4 K16 ["serialize"]
      583 GETTABLEKS                       R5 R0 K23 ["Transparency"]
      585 MOVE                             R6 R1
      586 MOVE                             R7 R2
      587 CALL                             R4 3 1
      588 SETTABLEKS                       R4 R3 K9 ["transparency"]
      590 RETURN                           R3 1
      591 LOADK                            R5 K76 ["SurfaceAppearance"]
      592 NAMECALL                         R3 R0 K2 ["IsA"]
      594 CALL                             R3 2 1
      595 JUMPIFNOT                        R3 ; [+91]
      596 DUPTABLE                         R3 K82 [{"name", "archivable", "colorMap", "normalMap", "metalnessMap", "roughnessMap", "color", "children", "alphaMode"}]
      597 GETUPVAL                         R4 0
      598 GETTABLEKS                       R4 R4 K16 ["serialize"]
      600 GETTABLEKS                       R5 R0 K17 ["Name"]
      602 MOVE                             R6 R1
      603 MOVE                             R7 R2
      604 CALL                             R4 3 1
      605 SETTABLEKS                       R4 R3 K3 ["name"]
      607 GETUPVAL                         R4 0
      608 GETTABLEKS                       R4 R4 K16 ["serialize"]
      610 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      612 MOVE                             R6 R1
      613 MOVE                             R7 R2
      614 CALL                             R4 3 1
      615 SETTABLEKS                       R4 R3 K4 ["archivable"]
      617 GETUPVAL                         R4 0
      618 GETTABLEKS                       R4 R4 K16 ["serialize"]
      620 GETTABLEKS                       R5 R0 K83 ["ColorMap"]
      622 MOVE                             R6 R1
      623 MOVE                             R7 R2
      624 CALL                             R4 3 1
      625 SETTABLEKS                       R4 R3 K77 ["colorMap"]
      627 GETUPVAL                         R4 0
      628 GETTABLEKS                       R4 R4 K16 ["serialize"]
      630 GETTABLEKS                       R5 R0 K84 ["NormalMap"]
      632 MOVE                             R6 R1
      633 MOVE                             R7 R2
      634 CALL                             R4 3 1
      635 SETTABLEKS                       R4 R3 K78 ["normalMap"]
      637 GETUPVAL                         R4 0
      638 GETTABLEKS                       R4 R4 K16 ["serialize"]
      640 GETTABLEKS                       R5 R0 K85 ["MetalnessMap"]
      642 MOVE                             R6 R1
      643 MOVE                             R7 R2
      644 CALL                             R4 3 1
      645 SETTABLEKS                       R4 R3 K79 ["metalnessMap"]
      647 GETUPVAL                         R4 0
      648 GETTABLEKS                       R4 R4 K16 ["serialize"]
      650 GETTABLEKS                       R5 R0 K86 ["RoughnessMap"]
      652 MOVE                             R6 R1
      653 MOVE                             R7 R2
      654 CALL                             R4 3 1
      655 SETTABLEKS                       R4 R3 K80 ["roughnessMap"]
      657 GETUPVAL                         R4 0
      658 GETTABLEKS                       R4 R4 K16 ["serialize"]
      660 GETTABLEKS                       R5 R0 K25 ["Color"]
      662 MOVE                             R6 R1
      663 MOVE                             R7 R2
      664 CALL                             R4 3 1
      665 SETTABLEKS                       R4 R3 K11 ["color"]
      667 GETUPVAL                         R4 0
      668 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      670 MOVE                             R5 R0
      671 MOVE                             R6 R1
      672 MOVE                             R7 R2
      673 CALL                             R4 3 1
      674 SETTABLEKS                       R4 R3 K14 ["children"]
      676 GETUPVAL                         R4 0
      677 GETTABLEKS                       R4 R4 K16 ["serialize"]
      679 GETTABLEKS                       R5 R0 K87 ["AlphaMode"]
      681 MOVE                             R6 R1
      682 MOVE                             R7 R2
      683 CALL                             R4 3 1
      684 SETTABLEKS                       R4 R3 K81 ["alphaMode"]
      686 RETURN                           R3 1
      687 LOADK                            R5 K88 ["Accessory"]
      688 NAMECALL                         R3 R0 K2 ["IsA"]
      690 CALL                             R3 2 1
      691 JUMPIFNOT                        R3 ; [+48]
      692 GETTABLEKS                       R3 R1 K57 ["options"]
      694 GETTABLEKS                       R3 R3 K58 ["ignoreAccessories"]
      696 JUMPIFNOT                        R3 ; [+2]
      697 LOADNIL                          R3
      698 RETURN                           R3 1
      699 DUPTABLE                         R3 K90 [{"name", "archivable", "attachmentPoint", "children"}]
      700 GETUPVAL                         R4 0
      701 GETTABLEKS                       R4 R4 K16 ["serialize"]
      703 GETTABLEKS                       R5 R0 K17 ["Name"]
      705 MOVE                             R6 R1
      706 MOVE                             R7 R2
      707 CALL                             R4 3 1
      708 SETTABLEKS                       R4 R3 K3 ["name"]
      710 GETUPVAL                         R4 0
      711 GETTABLEKS                       R4 R4 K16 ["serialize"]
      713 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      715 MOVE                             R6 R1
      716 MOVE                             R7 R2
      717 CALL                             R4 3 1
      718 SETTABLEKS                       R4 R3 K4 ["archivable"]
      720 GETUPVAL                         R4 0
      721 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      723 GETTABLEKS                       R5 R0 K91 ["AttachmentPoint"]
      725 MOVE                             R6 R1
      726 MOVE                             R7 R2
      727 CALL                             R4 3 1
      728 SETTABLEKS                       R4 R3 K89 ["attachmentPoint"]
      730 GETUPVAL                         R4 0
      731 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      733 MOVE                             R5 R0
      734 MOVE                             R6 R1
      735 MOVE                             R7 R2
      736 CALL                             R4 3 1
      737 SETTABLEKS                       R4 R3 K14 ["children"]
      739 RETURN                           R3 1
      740 LOADK                            R5 K92 ["BodyColors"]
      741 NAMECALL                         R3 R0 K2 ["IsA"]
      743 CALL                             R3 2 1
      744 JUMPIFNOT                        R3 ; [+91]
      745 DUPTABLE                         R3 K99 [{"name", "archivable", "headColor", "leftArmColor", "leftLegColor", "rightArmColor", "rightLegColor", "torsoColor", "children"}]
      746 GETUPVAL                         R4 0
      747 GETTABLEKS                       R4 R4 K16 ["serialize"]
      749 GETTABLEKS                       R5 R0 K17 ["Name"]
      751 MOVE                             R6 R1
      752 MOVE                             R7 R2
      753 CALL                             R4 3 1
      754 SETTABLEKS                       R4 R3 K3 ["name"]
      756 GETUPVAL                         R4 0
      757 GETTABLEKS                       R4 R4 K16 ["serialize"]
      759 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      761 MOVE                             R6 R1
      762 MOVE                             R7 R2
      763 CALL                             R4 3 1
      764 SETTABLEKS                       R4 R3 K4 ["archivable"]
      766 GETUPVAL                         R4 0
      767 GETTABLEKS                       R4 R4 K16 ["serialize"]
      769 GETTABLEKS                       R5 R0 K100 ["HeadColor"]
      771 MOVE                             R6 R1
      772 MOVE                             R7 R2
      773 CALL                             R4 3 1
      774 SETTABLEKS                       R4 R3 K93 ["headColor"]
      776 GETUPVAL                         R4 0
      777 GETTABLEKS                       R4 R4 K16 ["serialize"]
      779 GETTABLEKS                       R5 R0 K101 ["LeftArmColor"]
      781 MOVE                             R6 R1
      782 MOVE                             R7 R2
      783 CALL                             R4 3 1
      784 SETTABLEKS                       R4 R3 K94 ["leftArmColor"]
      786 GETUPVAL                         R4 0
      787 GETTABLEKS                       R4 R4 K16 ["serialize"]
      789 GETTABLEKS                       R5 R0 K102 ["LeftLegColor"]
      791 MOVE                             R6 R1
      792 MOVE                             R7 R2
      793 CALL                             R4 3 1
      794 SETTABLEKS                       R4 R3 K95 ["leftLegColor"]
      796 GETUPVAL                         R4 0
      797 GETTABLEKS                       R4 R4 K16 ["serialize"]
      799 GETTABLEKS                       R5 R0 K103 ["RightArmColor"]
      801 MOVE                             R6 R1
      802 MOVE                             R7 R2
      803 CALL                             R4 3 1
      804 SETTABLEKS                       R4 R3 K96 ["rightArmColor"]
      806 GETUPVAL                         R4 0
      807 GETTABLEKS                       R4 R4 K16 ["serialize"]
      809 GETTABLEKS                       R5 R0 K104 ["RightLegColor"]
      811 MOVE                             R6 R1
      812 MOVE                             R7 R2
      813 CALL                             R4 3 1
      814 SETTABLEKS                       R4 R3 K97 ["rightLegColor"]
      816 GETUPVAL                         R4 0
      817 GETTABLEKS                       R4 R4 K16 ["serialize"]
      819 GETTABLEKS                       R5 R0 K105 ["TorsoColor"]
      821 MOVE                             R6 R1
      822 MOVE                             R7 R2
      823 CALL                             R4 3 1
      824 SETTABLEKS                       R4 R3 K98 ["torsoColor"]
      826 GETUPVAL                         R4 0
      827 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      829 MOVE                             R5 R0
      830 MOVE                             R6 R1
      831 MOVE                             R7 R2
      832 CALL                             R4 3 1
      833 SETTABLEKS                       R4 R3 K14 ["children"]
      835 RETURN                           R3 1
      836 LOADK                            R5 K106 ["NumberValue"]
      837 NAMECALL                         R3 R0 K2 ["IsA"]
      839 CALL                             R3 2 1
      840 JUMPIFNOT                        R3 ; [+47]
      841 GETUPVAL                         R3 0
      842 GETTABLEKS                       R3 R3 K107 ["isScalingHumanoidNumber"]
      844 MOVE                             R4 R0
      845 CALL                             R3 1 1
      846 JUMPIFNOT                        R3 ; [+41]
      847 DUPTABLE                         R3 K109 [{"name", "archivable", "value", "children"}]
      848 GETUPVAL                         R4 0
      849 GETTABLEKS                       R4 R4 K16 ["serialize"]
      851 GETTABLEKS                       R5 R0 K17 ["Name"]
      853 MOVE                             R6 R1
      854 MOVE                             R7 R2
      855 CALL                             R4 3 1
      856 SETTABLEKS                       R4 R3 K3 ["name"]
      858 GETUPVAL                         R4 0
      859 GETTABLEKS                       R4 R4 K16 ["serialize"]
      861 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      863 MOVE                             R6 R1
      864 MOVE                             R7 R2
      865 CALL                             R4 3 1
      866 SETTABLEKS                       R4 R3 K4 ["archivable"]
      868 GETUPVAL                         R4 0
      869 GETTABLEKS                       R4 R4 K110 ["serializeScalingHumanoidNumber"]
      871 GETTABLEKS                       R5 R0 K111 ["Value"]
      873 MOVE                             R6 R1
      874 MOVE                             R7 R2
      875 CALL                             R4 3 1
      876 SETTABLEKS                       R4 R3 K108 ["value"]
      878 GETUPVAL                         R4 0
      879 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      881 MOVE                             R5 R0
      882 MOVE                             R6 R1
      883 MOVE                             R7 R2
      884 CALL                             R4 3 1
      885 SETTABLEKS                       R4 R3 K14 ["children"]
      887 RETURN                           R3 1
      888 LOADK                            R5 K112 ["ValueBase"]
      889 NAMECALL                         R3 R0 K2 ["IsA"]
      891 CALL                             R3 2 1
      892 JUMPIFNOT                        R3 ; [+98]
      893 GETUPVAL                         R3 0
      894 GETTABLEKS                       R3 R3 K113 ["isAttachmentOriginalPositionValue"]
      896 MOVE                             R4 R0
      897 CALL                             R3 1 1
      898 JUMPIFNOT                        R3 ; [+41]
      899 DUPTABLE                         R3 K115 [{"name", "className", "archivable", "children"}]
      900 GETUPVAL                         R4 0
      901 GETTABLEKS                       R4 R4 K16 ["serialize"]
      903 GETTABLEKS                       R5 R0 K17 ["Name"]
      905 MOVE                             R6 R1
      906 MOVE                             R7 R2
      907 CALL                             R4 3 1
      908 SETTABLEKS                       R4 R3 K3 ["name"]
      910 GETUPVAL                         R4 0
      911 GETTABLEKS                       R4 R4 K16 ["serialize"]
      913 GETTABLEKS                       R5 R0 K116 ["ClassName"]
      915 MOVE                             R6 R1
      916 MOVE                             R7 R2
      917 CALL                             R4 3 1
      918 SETTABLEKS                       R4 R3 K114 ["className"]
      920 GETUPVAL                         R4 0
      921 GETTABLEKS                       R4 R4 K16 ["serialize"]
      923 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      925 MOVE                             R6 R1
      926 MOVE                             R7 R2
      927 CALL                             R4 3 1
      928 SETTABLEKS                       R4 R3 K4 ["archivable"]
      930 GETUPVAL                         R4 0
      931 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      933 MOVE                             R5 R0
      934 MOVE                             R6 R1
      935 MOVE                             R7 R2
      936 CALL                             R4 3 1
      937 SETTABLEKS                       R4 R3 K14 ["children"]
      939 RETURN                           R3 1
      940 DUPTABLE                         R3 K117 [{"name", "className", "archivable", "value", "children"}]
      941 GETUPVAL                         R4 0
      942 GETTABLEKS                       R4 R4 K16 ["serialize"]
      944 GETTABLEKS                       R5 R0 K17 ["Name"]
      946 MOVE                             R6 R1
      947 MOVE                             R7 R2
      948 CALL                             R4 3 1
      949 SETTABLEKS                       R4 R3 K3 ["name"]
      951 GETUPVAL                         R4 0
      952 GETTABLEKS                       R4 R4 K16 ["serialize"]
      954 GETTABLEKS                       R5 R0 K116 ["ClassName"]
      956 MOVE                             R6 R1
      957 MOVE                             R7 R2
      958 CALL                             R4 3 1
      959 SETTABLEKS                       R4 R3 K114 ["className"]
      961 GETUPVAL                         R4 0
      962 GETTABLEKS                       R4 R4 K16 ["serialize"]
      964 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      966 MOVE                             R6 R1
      967 MOVE                             R7 R2
      968 CALL                             R4 3 1
      969 SETTABLEKS                       R4 R3 K4 ["archivable"]
      971 GETUPVAL                         R4 0
      972 GETTABLEKS                       R4 R4 K16 ["serialize"]
      974 GETTABLEKS                       R5 R0 K111 ["Value"]
      976 MOVE                             R6 R1
      977 MOVE                             R7 R2
      978 CALL                             R4 3 1
      979 SETTABLEKS                       R4 R3 K108 ["value"]
      981 GETUPVAL                         R4 0
      982 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      984 MOVE                             R5 R0
      985 MOVE                             R6 R1
      986 MOVE                             R7 R2
      987 CALL                             R4 3 1
      988 SETTABLEKS                       R4 R3 K14 ["children"]
      990 RETURN                           R3 1
      991 LOADK                            R5 K118 ["Humanoid"]
      992 NAMECALL                         R3 R0 K2 ["IsA"]
      994 CALL                             R3 2 1
      995 JUMPIFNOT                        R3 ; [+221]
      996 DUPTABLE                         R3 K138 [{"name", "archivable", "rigType", "autoRotate", "breakJointsOnDeath", "evaluateStateMachine", "requiresNeck", "health", "maxHealth", "hipHeight", "maxSlopeAngle", "autoJumpEnabled", "useJumpPower", "healthDisplayType", "displayName", "displayDistanceType", "cameraOffset", "automaticScalingEnabled", "nameOcclusion", "sit", "jump", "children"}]
      997 GETUPVAL                         R4 0
      998 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1000 GETTABLEKS                       R5 R0 K17 ["Name"]
     1002 MOVE                             R6 R1
     1003 MOVE                             R7 R2
     1004 CALL                             R4 3 1
     1005 SETTABLEKS                       R4 R3 K3 ["name"]
     1007 GETUPVAL                         R4 0
     1008 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1010 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1012 MOVE                             R6 R1
     1013 MOVE                             R7 R2
     1014 CALL                             R4 3 1
     1015 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1017 GETUPVAL                         R4 0
     1018 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1020 GETTABLEKS                       R5 R0 K139 ["RigType"]
     1022 MOVE                             R6 R1
     1023 MOVE                             R7 R2
     1024 CALL                             R4 3 1
     1025 SETTABLEKS                       R4 R3 K119 ["rigType"]
     1027 GETUPVAL                         R4 0
     1028 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1030 GETTABLEKS                       R5 R0 K140 ["AutoRotate"]
     1032 MOVE                             R6 R1
     1033 MOVE                             R7 R2
     1034 CALL                             R4 3 1
     1035 SETTABLEKS                       R4 R3 K120 ["autoRotate"]
     1037 GETUPVAL                         R4 0
     1038 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1040 GETTABLEKS                       R5 R0 K141 ["BreakJointsOnDeath"]
     1042 MOVE                             R6 R1
     1043 MOVE                             R7 R2
     1044 CALL                             R4 3 1
     1045 SETTABLEKS                       R4 R3 K121 ["breakJointsOnDeath"]
     1047 GETUPVAL                         R4 0
     1048 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1050 GETTABLEKS                       R5 R0 K142 ["EvaluateStateMachine"]
     1052 MOVE                             R6 R1
     1053 MOVE                             R7 R2
     1054 CALL                             R4 3 1
     1055 SETTABLEKS                       R4 R3 K122 ["evaluateStateMachine"]
     1057 GETUPVAL                         R4 0
     1058 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1060 GETTABLEKS                       R5 R0 K143 ["RequiresNeck"]
     1062 MOVE                             R6 R1
     1063 MOVE                             R7 R2
     1064 CALL                             R4 3 1
     1065 SETTABLEKS                       R4 R3 K123 ["requiresNeck"]
     1067 GETUPVAL                         R4 0
     1068 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1070 GETTABLEKS                       R5 R0 K144 ["Health"]
     1072 MOVE                             R6 R1
     1073 MOVE                             R7 R2
     1074 CALL                             R4 3 1
     1075 SETTABLEKS                       R4 R3 K124 ["health"]
     1077 GETUPVAL                         R4 0
     1078 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1080 GETTABLEKS                       R5 R0 K145 ["MaxHealth"]
     1082 MOVE                             R6 R1
     1083 MOVE                             R7 R2
     1084 CALL                             R4 3 1
     1085 SETTABLEKS                       R4 R3 K125 ["maxHealth"]
     1087 GETUPVAL                         R4 0
     1088 GETTABLEKS                       R4 R4 K110 ["serializeScalingHumanoidNumber"]
     1090 GETTABLEKS                       R5 R0 K146 ["HipHeight"]
     1092 MOVE                             R6 R1
     1093 MOVE                             R7 R2
     1094 CALL                             R4 3 1
     1095 SETTABLEKS                       R4 R3 K126 ["hipHeight"]
     1097 GETUPVAL                         R4 0
     1098 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1100 GETTABLEKS                       R5 R0 K147 ["MaxSlopeAngle"]
     1102 MOVE                             R6 R1
     1103 MOVE                             R7 R2
     1104 CALL                             R4 3 1
     1105 SETTABLEKS                       R4 R3 K127 ["maxSlopeAngle"]
     1107 GETUPVAL                         R4 0
     1108 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1110 GETTABLEKS                       R5 R0 K148 ["AutoJumpEnabled"]
     1112 MOVE                             R6 R1
     1113 MOVE                             R7 R2
     1114 CALL                             R4 3 1
     1115 SETTABLEKS                       R4 R3 K128 ["autoJumpEnabled"]
     1117 GETUPVAL                         R4 0
     1118 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1120 GETTABLEKS                       R5 R0 K149 ["UseJumpPower"]
     1122 MOVE                             R6 R1
     1123 MOVE                             R7 R2
     1124 CALL                             R4 3 1
     1125 SETTABLEKS                       R4 R3 K129 ["useJumpPower"]
     1127 GETUPVAL                         R4 0
     1128 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1130 GETTABLEKS                       R5 R0 K150 ["HealthDisplayType"]
     1132 MOVE                             R6 R1
     1133 MOVE                             R7 R2
     1134 CALL                             R4 3 1
     1135 SETTABLEKS                       R4 R3 K130 ["healthDisplayType"]
     1137 GETUPVAL                         R4 0
     1138 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1140 GETTABLEKS                       R5 R0 K151 ["DisplayName"]
     1142 MOVE                             R6 R1
     1143 MOVE                             R7 R2
     1144 CALL                             R4 3 1
     1145 SETTABLEKS                       R4 R3 K131 ["displayName"]
     1147 GETUPVAL                         R4 0
     1148 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1150 GETTABLEKS                       R5 R0 K152 ["DisplayDistanceType"]
     1152 MOVE                             R6 R1
     1153 MOVE                             R7 R2
     1154 CALL                             R4 3 1
     1155 SETTABLEKS                       R4 R3 K132 ["displayDistanceType"]
     1157 GETUPVAL                         R4 0
     1158 GETTABLEKS                       R4 R4 K153 ["serializeAttachmentPosition"]
     1160 GETTABLEKS                       R5 R0 K154 ["CameraOffset"]
     1162 MOVE                             R6 R1
     1163 MOVE                             R7 R2
     1164 CALL                             R4 3 1
     1165 SETTABLEKS                       R4 R3 K133 ["cameraOffset"]
     1167 GETUPVAL                         R4 0
     1168 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1170 GETTABLEKS                       R5 R0 K155 ["AutomaticScalingEnabled"]
     1172 MOVE                             R6 R1
     1173 MOVE                             R7 R2
     1174 CALL                             R4 3 1
     1175 SETTABLEKS                       R4 R3 K134 ["automaticScalingEnabled"]
     1177 GETUPVAL                         R4 0
     1178 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1180 GETTABLEKS                       R5 R0 K156 ["NameOcclusion"]
     1182 MOVE                             R6 R1
     1183 MOVE                             R7 R2
     1184 CALL                             R4 3 1
     1185 SETTABLEKS                       R4 R3 K135 ["nameOcclusion"]
     1187 GETUPVAL                         R4 0
     1188 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1190 GETTABLEKS                       R5 R0 K157 ["Sit"]
     1192 MOVE                             R6 R1
     1193 MOVE                             R7 R2
     1194 CALL                             R4 3 1
     1195 SETTABLEKS                       R4 R3 K136 ["sit"]
     1197 GETUPVAL                         R4 0
     1198 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1200 GETTABLEKS                       R5 R0 K158 ["Jump"]
     1202 MOVE                             R6 R1
     1203 MOVE                             R7 R2
     1204 CALL                             R4 3 1
     1205 SETTABLEKS                       R4 R3 K137 ["jump"]
     1207 GETUPVAL                         R4 0
     1208 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1210 MOVE                             R5 R0
     1211 MOVE                             R6 R1
     1212 MOVE                             R7 R2
     1213 CALL                             R4 3 1
     1214 SETTABLEKS                       R4 R3 K14 ["children"]
     1216 RETURN                           R3 1
     1217 GETUPVAL                         R3 1
     1218 CALL                             R3 0 1
     1219 JUMPIFNOT                        R3 ; [+51]
     1220 LOADK                            R5 K159 ["Model"]
     1221 NAMECALL                         R3 R0 K2 ["IsA"]
     1223 CALL                             R3 2 1
     1224 JUMPIF                           R3 ; [+5]
     1225 LOADK                            R5 K160 ["Folder"]
     1226 NAMECALL                         R3 R0 K2 ["IsA"]
     1228 CALL                             R3 2 1
     1229 JUMPIFNOT                        R3 ; [+41]
     1230 DUPTABLE                         R3 K115 [{"name", "className", "archivable", "children"}]
     1231 GETUPVAL                         R4 0
     1232 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1234 GETTABLEKS                       R5 R0 K17 ["Name"]
     1236 MOVE                             R6 R1
     1237 MOVE                             R7 R2
     1238 CALL                             R4 3 1
     1239 SETTABLEKS                       R4 R3 K3 ["name"]
     1241 GETUPVAL                         R4 0
     1242 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1244 GETTABLEKS                       R5 R0 K116 ["ClassName"]
     1246 MOVE                             R6 R1
     1247 MOVE                             R7 R2
     1248 CALL                             R4 3 1
     1249 SETTABLEKS                       R4 R3 K114 ["className"]
     1251 GETUPVAL                         R4 0
     1252 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1254 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1256 MOVE                             R6 R1
     1257 MOVE                             R7 R2
     1258 CALL                             R4 3 1
     1259 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1261 GETUPVAL                         R4 0
     1262 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1264 MOVE                             R5 R0
     1265 MOVE                             R6 R1
     1266 MOVE                             R7 R2
     1267 CALL                             R4 3 1
     1268 SETTABLEKS                       R4 R3 K14 ["children"]
     1270 RETURN                           R3 1
     1271 GETUPVAL                         R3 1
     1272 CALL                             R3 0 1
     1273 JUMPIFNOT                        R3 ; [+50]
     1274 GETTABLEKS                       R3 R1 K57 ["options"]
     1276 GETTABLEKS                       R3 R3 K161 ["globalDebugDifferences"]
     1278 JUMPIFNOT                        R3 ; [+13]
     1279 GETIMPORT                        R3 K163 [warn]
     1281 LOADK                            R5 K164 ["[CharacterHashUtils] Unrecognized type serialized as leaf: %* (%*)"]
     1282 GETTABLEKS                       R7 R0 K116 ["ClassName"]
     1284 NAMECALL                         R8 R0 K165 ["GetFullName"]
     1286 CALL                             R8 1 1
     1287 NAMECALL                         R5 R5 K166 ["format"]
     1289 CALL                             R5 3 1
     1290 MOVE                             R4 R5
     1291 CALL                             R3 1 0
     1292 DUPTABLE                         R3 K167 [{"name", "className", "archivable"}]
     1293 GETUPVAL                         R4 0
     1294 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1296 GETTABLEKS                       R5 R0 K17 ["Name"]
     1298 MOVE                             R6 R1
     1299 MOVE                             R7 R2
     1300 CALL                             R4 3 1
     1301 SETTABLEKS                       R4 R3 K3 ["name"]
     1303 GETUPVAL                         R4 0
     1304 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1306 GETTABLEKS                       R5 R0 K116 ["ClassName"]
     1308 MOVE                             R6 R1
     1309 MOVE                             R7 R2
     1310 CALL                             R4 3 1
     1311 SETTABLEKS                       R4 R3 K114 ["className"]
     1313 GETUPVAL                         R4 0
     1314 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1316 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1318 MOVE                             R6 R1
     1319 MOVE                             R7 R2
     1320 CALL                             R4 3 1
     1321 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1323 RETURN                           R3 1
     1324 DUPTABLE                         R3 K115 [{"name", "className", "archivable", "children"}]
     1325 GETUPVAL                         R4 0
     1326 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1328 GETTABLEKS                       R5 R0 K17 ["Name"]
     1330 MOVE                             R6 R1
     1331 MOVE                             R7 R2
     1332 CALL                             R4 3 1
     1333 SETTABLEKS                       R4 R3 K3 ["name"]
     1335 GETUPVAL                         R4 0
     1336 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1338 GETTABLEKS                       R5 R0 K116 ["ClassName"]
     1340 MOVE                             R6 R1
     1341 MOVE                             R7 R2
     1342 CALL                             R4 3 1
     1343 SETTABLEKS                       R4 R3 K114 ["className"]
     1345 GETUPVAL                         R4 0
     1346 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1348 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1350 MOVE                             R6 R1
     1351 MOVE                             R7 R2
     1352 CALL                             R4 3 1
     1353 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1355 GETUPVAL                         R4 0
     1356 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1358 MOVE                             R5 R0
     1359 MOVE                             R6 R1
     1360 MOVE                             R7 R2
     1361 CALL                             R4 3 1
     1362 SETTABLEKS                       R4 R3 K14 ["children"]
     1364 RETURN                           R3 1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_16:
        0 LOADN                            R3 0
        1 JUMPIFNOTLE                      R2 R3 ; [+3]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 SUBK                             R2 R2 K0 [1]
        6 NEWTABLE                         R3 0 0
        8 NAMECALL                         R4 R0 K1 ["GetChildren"]
       10 CALL                             R4 1 1
       11 GETIMPORT                        R5 K4 [table.sort]
       13 MOVE                             R6 R4
       14 DUPCLOSURE                       R7 K5 [PROTO_15]
       15 CALL                             R5 2 0
       16 MOVE                             R5 R4
       17 LOADNIL                          R6
       18 LOADNIL                          R7
       19 FORGPREP                         R5
       20 MOVE                             R11 R3
       21 GETUPVAL                         R12 0
       22 GETTABLEKS                       R12 R12 K6 ["serialize"]
       24 MOVE                             R13 R9
       25 MOVE                             R14 R1
       26 MOVE                             R15 R2
       27 CALL                             R12 3 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R10 K8 [table.insert]
       31 CALL                             R10 -1 0
       32 FORGLOOP                         R5 2 ; [-13]
       34 LENGTH                           R5 R3
       35 LOADN                            R6 0
       36 JUMPIFNOTLT                      R6 R5 ; [+2]
       38 RETURN                           R3 1
       39 LOADNIL                          R5
       40 RETURN                           R5 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 LOADB                            R2 1
        6 SETTABLE                         R2 R1 R0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["ignoreAccessories"]
       10 JUMPIFNOT                        R1 ; [+12]
       11 LOADK                            R3 K1 ["Accessory"]
       12 NAMECALL                         R1 R0 K2 ["IsA"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+1]
       16 RETURN                           R0 0
       17 LOADK                            R3 K1 ["Accessory"]
       18 NAMECALL                         R1 R0 K3 ["FindFirstAncestorWhichIsA"]
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+1]
       22 RETURN                           R0 0
       23 LOADK                            R3 K4 ["BasePart"]
       24 NAMECALL                         R1 R0 K2 ["IsA"]
       26 CALL                             R1 2 1
       27 JUMPIFNOT                        R1 ; [+8]
       28 GETUPVAL                         R2 2
       29 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       31 MOVE                             R3 R0
       32 GETIMPORT                        R1 K7 [table.insert]
       34 CALL                             R1 2 0
       35 JUMP                             ; [+16]
       36 LOADK                            R3 K8 ["Model"]
       37 NAMECALL                         R1 R0 K2 ["IsA"]
       39 CALL                             R1 2 1
       40 JUMPIFNOT                        R1 ; [+11]
       41 GETTABLEKS                       R1 R0 K9 ["PrimaryPart"]
       43 JUMPIFNOT                        R1 ; [+8]
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R3 R0 K9 ["PrimaryPart"]
       47 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       49 GETIMPORT                        R1 K7 [table.insert]
       51 CALL                             R1 2 0
       52 GETUPVAL                         R1 4
       53 CALL                             R1 0 1
       54 JUMPIFNOT                        R1 ; [+30]
       55 LOADK                            R3 K8 ["Model"]
       56 NAMECALL                         R1 R0 K2 ["IsA"]
       58 CALL                             R1 2 1
       59 JUMPIF                           R1 ; [+15]
       60 LOADK                            R3 K10 ["Folder"]
       61 NAMECALL                         R1 R0 K2 ["IsA"]
       63 CALL                             R1 2 1
       64 JUMPIF                           R1 ; [+10]
       65 LOADK                            R3 K4 ["BasePart"]
       66 NAMECALL                         R1 R0 K2 ["IsA"]
       68 CALL                             R1 2 1
       69 JUMPIF                           R1 ; [+5]
       70 LOADK                            R3 K1 ["Accessory"]
       71 NAMECALL                         R1 R0 K2 ["IsA"]
       73 CALL                             R1 2 1
       74 JUMPIFNOT                        R1 ; [+19]
       75 NAMECALL                         R1 R0 K11 ["GetChildren"]
       77 CALL                             R1 1 3
       78 FORGPREP                         R1
       79 GETUPVAL                         R6 5
       80 MOVE                             R7 R5
       81 CALL                             R6 1 0
       82 FORGLOOP                         R1 2 ; [-4]
       84 RETURN                           R0 0
       85 NAMECALL                         R1 R0 K11 ["GetChildren"]
       87 CALL                             R1 1 3
       88 FORGPREP                         R1
       89 GETUPVAL                         R6 5
       90 MOVE                             R7 R5
       91 CALL                             R6 1 0
       92 FORGLOOP                         R1 2 ; [-4]
       94 RETURN                           R0 0

PROTO_18:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R5
       13 MOVE                             R6 R0
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 MOVE                             R11 R5
       18 MOVE                             R12 R10
       19 CALL                             R11 1 0
       20 FORGLOOP                         R6 2 ; [-4]
       22 LOADNIL                          R6
       23 LENGTH                           R7 R3
       24 JUMPIFNOTEQKN                    R7 K0 [1] ; [+5]
       26 GETTABLEN                        R7 R3 1
       27 GETTABLEKS                       R6 R7 K1 ["CFrame"]
       29 JUMP                             ; [+27]
       30 LENGTH                           R7 R2
       31 JUMPIFNOTEQKN                    R7 K0 [1] ; [+5]
       33 GETTABLEN                        R7 R2 1
       34 GETTABLEKS                       R6 R7 K1 ["CFrame"]
       36 JUMP                             ; [+20]
       37 LENGTH                           R7 R3
       38 LOADN                            R8 0
       39 JUMPIFNOTLT                      R8 R7 ; [+5]
       41 GETTABLEN                        R7 R3 1
       42 GETTABLEKS                       R6 R7 K1 ["CFrame"]
       44 JUMP                             ; [+12]
       45 LENGTH                           R7 R2
       46 LOADN                            R8 0
       47 JUMPIFNOTLT                      R8 R7 ; [+5]
       49 GETTABLEN                        R7 R2 1
       50 GETTABLEKS                       R6 R7 K1 ["CFrame"]
       52 JUMP                             ; [+4]
       53 GETIMPORT                        R7 K3 [CFrame.new]
       55 CALL                             R7 0 1
       56 MOVE                             R6 R7
       57 LOADNIL                          R7
       58 LOADNIL                          R8
       59 LENGTH                           R9 R2
       60 JUMPIFNOTEQKN                    R9 K4 [0] ; [+5]
       62 GETTABLEKS                       R7 R6 K5 ["Position"]
       64 LOADK                            R8 K6 [{1, 1, 1}]
       65 JUMP                             ; [+8]
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R9 R9 K7 ["getAABoundingBox"]
       69 MOVE                             R10 R2
       70 MOVE                             R11 R6
       71 CALL                             R9 2 2
       72 MOVE                             R7 R9
       73 MOVE                             R8 R10
       74 GETTABLEKS                       R9 R8 K8 ["Magnitude"]
       76 JUMPIFEQKN                       R9 K4 [0] ; [+3]
       78 JUMPIFEQ                         R8 R8 ; [+2]
       80 LOADK                            R8 K6 [{1, 1, 1}]
       81 MOVE                             R12 R7
       82 NAMECALL                         R10 R6 K9 ["VectorToWorldSpace"]
       84 CALL                             R10 2 1
       85 ADD                              R9 R6 R10
       86 LOADNIL                          R10
       87 LOADNIL                          R11
       88 GETTABLEKS                       R12 R1 K10 ["ignoreUniformScaleChanges"]
       90 JUMPIF                           R12 ; [+3]
       91 LOADN                            R11 1
       92 LOADK                            R10 K6 [{1, 1, 1}]
       93 JUMP                             ; [+20]
       94 GETTABLEKS                       R13 R8 K11 ["X"]
       96 GETTABLEKS                       R14 R8 K12 ["Y"]
       98 GETTABLEKS                       R15 R8 K13 ["Z"]
      100 FASTCALL                         MATH_MAX ; [+2]
      101 GETIMPORT                        R12 K16 [math.max]
      103 CALL                             R12 3 1
      104 FASTCALL3                        VECTOR R12 R12 R12
      106 MOVE                             R14 R12
      107 MOVE                             R15 R12
      108 MOVE                             R16 R12
      109 GETIMPORT                        R13 K18 [Vector3.new]
      111 CALL                             R13 3 1
      112 MOVE                             R10 R13
      113 MOVE                             R11 R12
      114 DUPTABLE                         R12 K22 [{"options", "relativeScale", "state"}]
      115 SETTABLEKS                       R1 R12 K19 ["options"]
      117 SETTABLEKS                       R11 R12 K20 ["relativeScale"]
      119 DUPTABLE                         R13 K29 [{"allowedInstancesToSerializeUnder", "boundingCFrame", "boundingSize", "lastInstanceId", "pendingInstances", "serializedInstanceCount"}]
      120 SETTABLEKS                       R0 R13 K23 ["allowedInstancesToSerializeUnder"]
      122 SETTABLEKS                       R9 R13 K24 ["boundingCFrame"]
      124 SETTABLEKS                       R10 R13 K25 ["boundingSize"]
      126 LOADN                            R14 0
      127 SETTABLEKS                       R14 R13 K26 ["lastInstanceId"]
      129 NEWTABLE                         R14 0 0
      131 SETTABLEKS                       R14 R13 K27 ["pendingInstances"]
      133 LOADN                            R14 0
      134 SETTABLEKS                       R14 R13 K28 ["serializedInstanceCount"]
      136 SETTABLEKS                       R13 R12 K21 ["state"]
      138 RETURN                           R12 1

PROTO_19:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLE                         R8 R1 R6
        5 JUMPIFNOTEQKNIL                  R8 ; [+8]
        7 GETIMPORT                        R8 K1 [print]
        9 LOADK                            R9 K2 ["missing"]
       10 MOVE                             R10 R2
       11 MOVE                             R11 R6
       12 CALL                             R8 3 0
       13 JUMP                             ; [+27]
       14 FASTCALL1                        TYPE R7 ; [+3]
       15 MOVE                             R9 R7
       16 GETIMPORT                        R8 K4 [type]
       18 CALL                             R8 1 1
       19 JUMPIFNOTEQKS                    R8 K5 ["table"] ; [+10]
       21 GETUPVAL                         R8 0
       22 MOVE                             R9 R7
       23 GETTABLE                         R10 R1 R6
       24 MOVE                             R12 R2
       25 LOADK                            R13 K6 ["."]
       26 MOVE                             R14 R6
       27 CONCAT                           R11 R12 R14
       28 CALL                             R8 3 0
       29 JUMP                             ; [+11]
       30 GETTABLE                         R8 R1 R6
       31 JUMPIFEQ                         R7 R8 ; [+9]
       33 GETIMPORT                        R8 K1 [print]
       35 LOADK                            R9 K7 ["different"]
       36 MOVE                             R10 R2
       37 MOVE                             R11 R6
       38 MOVE                             R12 R7
       39 GETTABLE                         R13 R1 R6
       40 CALL                             R8 5 0
       41 FORGLOOP                         R3 2 ; [-38]
       43 MOVE                             R3 R1
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 FORGPREP                         R3
       47 GETTABLE                         R8 R0 R6
       48 JUMPIFNOTEQKNIL                  R8 ; [+7]
       50 GETIMPORT                        R8 K1 [print]
       52 LOADK                            R9 K8 ["extra"]
       53 MOVE                             R10 R2
       54 MOVE                             R11 R6
       55 CALL                             R8 3 0
       56 FORGLOOP                         R3 2 ; [-10]
       58 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["serialize"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 LOADN                            R5 25
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 1
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K1 ["JSONEncode"]
       11 CALL                             R3 2 1
       12 GETIMPORT                        R4 K4 [string.gsub]
       14 MOVE                             R5 R3
       15 LOADK                            R6 K5 ["[\":,}{[%]]"]
       16 LOADK                            R7 K6 [""]
       17 CALL                             R4 3 1
       18 MOVE                             R3 R4
       19 GETUPVAL                         R4 2
       20 MOVE                             R5 R3
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R5 R1 K7 ["options"]
       24 GETTABLEKS                       R5 R5 K8 ["globalDebugDifferences"]
       26 JUMPIFNOT                        R5 ; [+28]
       27 GETUPVAL                         R5 3
       28 JUMPIFNOT                        R5 ; [+20]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K9 ["hash"]
       32 JUMPIFEQ                         R5 R4 ; [+16]
       34 GETIMPORT                        R5 K11 [print]
       36 LOADK                            R6 K12 ["Hash changed: "]
       37 MOVE                             R7 R4
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R8 R8 K9 ["hash"]
       41 CALL                             R5 3 0
       42 GETUPVAL                         R5 4
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R6 R6 K13 ["serialized"]
       46 MOVE                             R7 R2
       47 LOADK                            R8 K6 [""]
       48 CALL                             R5 3 0
       49 DUPTABLE                         R5 K14 [{"hash", "serialized"}]
       50 SETTABLEKS                       R4 R5 K9 ["hash"]
       52 SETTABLEKS                       R2 R5 K13 ["serialized"]
       54 SETUPVAL                         R5 3
       55 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K11 ["Src"]
       17 GETTABLEKS                       R4 R4 K12 ["Util"]
       19 GETTABLEKS                       R3 R4 K10 ["sha256.global"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K11 ["Src"]
       26 GETTABLEKS                       R4 R4 K12 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["BoundingBoxUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R1 K11 ["Src"]
       35 GETTABLEKS                       R5 R5 K14 ["Flags"]
       37 GETTABLEKS                       R5 R5 K15 ["getFFlagAvatarPreviewerHashPerformanceFix"]
       39 CALL                             R4 1 1
       40 NEWTABLE                         R5 32 0
       42 DUPCLOSURE                       R6 K16 [PROTO_0]
       43 SETTABLEKS                       R6 R5 K17 ["canEncodeStringSafely"]
       45 DUPCLOSURE                       R6 K18 [PROTO_1]
       46 SETTABLEKS                       R6 R5 K19 ["canEncodeNumberSafely"]
       48 DUPCLOSURE                       R6 K20 [PROTO_2]
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R6 R5 K21 ["cutPrecision"]
       52 DUPCLOSURE                       R6 K22 [PROTO_3]
       53 SETTABLEKS                       R6 R5 K23 ["cutListPrecision"]
       55 NEWTABLE                         R6 0 64
       57 LOADK                            R7 K24 ["alphaMode"]
       58 LOADK                            R8 K25 ["archivable"]
       59 LOADK                            R9 K26 ["attachmentPoint"]
       60 LOADK                            R10 K27 ["autoJumpEnabled"]
       61 LOADK                            R11 K28 ["autoRotate"]
       62 LOADK                            R12 K29 ["autoSkin"]
       63 LOADK                            R13 K30 ["automaticScalingEnabled"]
       64 LOADK                            R14 K31 ["bindOffset"]
       65 LOADK                            R15 K32 ["breakJointsOnDeath"]
       66 LOADK                            R16 K33 ["c0"]
       67 LOADK                            R17 K34 ["c1"]
       68 LOADK                            R18 K35 ["cageOrigin"]
       69 LOADK                            R19 K36 ["cameraOffset"]
       70 LOADK                            R20 K37 ["cframe"]
       71 LOADK                            R21 K38 ["children"]
       72 LOADK                            R22 K39 ["className"]
       73 SETLIST                          R6 R7 16 [1]
       75 LOADK                            R7 K40 ["color"]
       76 LOADK                            R8 K41 ["colorMap"]
       77 LOADK                            R9 K42 ["displayDistanceType"]
       78 LOADK                            R10 K43 ["displayName"]
       79 LOADK                            R11 K44 ["enabled"]
       80 LOADK                            R12 K45 ["evaluateStateMachine"]
       81 LOADK                            R13 K46 ["headColor"]
       82 LOADK                            R14 K47 ["health"]
       83 LOADK                            R15 K48 ["healthDisplayDistance"]
       84 LOADK                            R16 K49 ["healthDisplayType"]
       85 LOADK                            R17 K50 ["hipHeight"]
       86 LOADK                            R18 K51 ["importOrigin"]
       87 LOADK                            R19 K52 ["jump"]
       88 LOADK                            R20 K53 ["jumpPower"]
       89 LOADK                            R21 K54 ["leftArmColor"]
       90 LOADK                            R22 K55 ["leftLegColor"]
       91 SETLIST                          R6 R7 16 [17]
       93 LOADK                            R7 K56 ["material"]
       94 LOADK                            R8 K57 ["materialVariant"]
       95 LOADK                            R9 K58 ["maxHealth"]
       96 LOADK                            R10 K59 ["maxSlopeAngle"]
       97 LOADK                            R11 K60 ["meshId"]
       98 LOADK                            R12 K61 ["metalnessMap"]
       99 LOADK                            R13 K62 ["name"]
      100 LOADK                            R14 K63 ["nameDisplayDistance"]
      101 LOADK                            R15 K64 ["nameOcclusion"]
      102 LOADK                            R16 K65 ["normalMap"]
      103 LOADK                            R17 K66 ["order"]
      104 LOADK                            R18 K67 ["part0"]
      105 LOADK                            R19 K68 ["part1"]
      106 LOADK                            R20 K69 ["puffiness"]
      107 LOADK                            R21 K70 ["referenceMeshId"]
      108 LOADK                            R22 K71 ["referenceOrigin"]
      109 SETLIST                          R6 R7 16 [33]
      111 LOADK                            R7 K72 ["reflectance"]
      112 LOADK                            R8 K73 ["requiresNeck"]
      113 LOADK                            R9 K74 ["rigType"]
      114 LOADK                            R10 K75 ["rightArmColor"]
      115 LOADK                            R11 K76 ["rightLegColor"]
      116 LOADK                            R12 K77 ["roughnessMap"]
      117 LOADK                            R13 K78 ["shrinkFactor"]
      118 LOADK                            R14 K79 ["sit"]
      119 LOADK                            R15 K80 ["size"]
      120 LOADK                            R16 K81 ["texture"]
      121 LOADK                            R17 K82 ["textureId"]
      122 LOADK                            R18 K83 ["torsoColor"]
      123 LOADK                            R19 K84 ["transparency"]
      124 LOADK                            R20 K85 ["useJumpPower"]
      125 LOADK                            R21 K86 ["value"]
      126 LOADK                            R22 K87 ["walkSpeed"]
      127 SETLIST                          R6 R7 16 [49]
      129 LENGTH                           R9 R6
      130 LOADN                            R10 64
      131 JUMPIFLE                         R9 R10 ; [+2]
      133 LOADB                            R8 0 +1
      134 LOADB                            R8 1
      135 FASTCALL2K                       ASSERT R8 K88 ; [+4]
      137 LOADK                            R9 K88 ["Too many well known ids"]
      138 GETIMPORT                        R7 K90 [assert]
      140 CALL                             R7 2 0
      141 NEWTABLE                         R7 0 0
      143 MOVE                             R8 R6
      144 LOADNIL                          R9
      145 LOADNIL                          R10
      146 FORGPREP                         R8
      147 LOADK                            R15 K91 ["0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+-"]
      148 FASTCALL2                        STRING_BYTE R15 R11 ; [+4]
      150 MOVE                             R16 R11
      151 GETIMPORT                        R14 K94 [string.byte]
      153 CALL                             R14 2 -1
      154 FASTCALL                         STRING_CHAR ; [+2]
      155 GETIMPORT                        R13 K96 [string.char]
      157 CALL                             R13 -1 1
      158 SETTABLE                         R13 R7 R12
      159 FORGLOOP                         R8 2 ; [-13]
      161 DUPCLOSURE                       R8 K97 [PROTO_4]
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R7
      165 SETTABLEKS                       R8 R5 K98 ["serialize"]
      167 DUPCLOSURE                       R8 K99 [PROTO_5]
      168 CAPTURE                          VAL R5
      169 SETTABLEKS                       R8 R5 K100 ["serializeSize"]
      171 DUPCLOSURE                       R8 K101 [PROTO_6]
      172 CAPTURE                          VAL R5
      173 SETTABLEKS                       R8 R5 K102 ["serializePartCFrame"]
      175 DUPCLOSURE                       R8 K103 [PROTO_7]
      176 CAPTURE                          VAL R5
      177 SETTABLEKS                       R8 R5 K104 ["serializePosition"]
      179 DUPCLOSURE                       R8 K105 [PROTO_8]
      180 CAPTURE                          VAL R5
      181 SETTABLEKS                       R8 R5 K106 ["serializeAttachmentCFrame"]
      183 DUPCLOSURE                       R8 K107 [PROTO_9]
      184 CAPTURE                          VAL R5
      185 SETTABLEKS                       R8 R5 K108 ["serializeAttachmentPosition"]
      187 DUPCLOSURE                       R8 K109 [PROTO_10]
      188 CAPTURE                          VAL R5
      189 SETTABLEKS                       R8 R5 K110 ["serializeScalingHumanoidNumber"]
      191 DUPCLOSURE                       R8 K111 [PROTO_11]
      192 CAPTURE                          VAL R5
      193 SETTABLEKS                       R8 R5 K112 ["serializeReferenceInstance"]
      195 NEWTABLE                         R8 4 0
      197 LOADB                            R9 1
      198 SETTABLEKS                       R9 R8 K113 ["BodyHeightScale"]
      200 LOADB                            R9 1
      201 SETTABLEKS                       R9 R8 K114 ["BodyWidthScale"]
      203 LOADB                            R9 1
      204 SETTABLEKS                       R9 R8 K115 ["BodyDepthScale"]
      206 LOADB                            R9 1
      207 SETTABLEKS                       R9 R8 K116 ["HeadScale"]
      209 DUPCLOSURE                       R9 K117 [PROTO_12]
      210 CAPTURE                          VAL R8
      211 SETTABLEKS                       R9 R5 K118 ["isScalingHumanoidNumber"]
      213 DUPCLOSURE                       R9 K119 [PROTO_13]
      214 SETTABLEKS                       R9 R5 K120 ["isAttachmentOriginalPositionValue"]
      216 DUPCLOSURE                       R9 K121 [PROTO_14]
      217 CAPTURE                          VAL R5
      218 CAPTURE                          VAL R4
      219 SETTABLEKS                       R9 R5 K122 ["serializeInstanceRaw"]
      221 DUPCLOSURE                       R9 K123 [PROTO_16]
      222 CAPTURE                          VAL R5
      223 SETTABLEKS                       R9 R5 K124 ["serializeChildren"]
      225 DUPCLOSURE                       R9 K125 [PROTO_18]
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R3
      228 SETTABLEKS                       R9 R5 K126 ["computeHashSerializeContext"]
      230 LOADNIL                          R9
      231 DUPCLOSURE                       R10 K127 [PROTO_19]
      232 CAPTURE                          VAL R10
      233 NEWCLOSURE                       R11 P18
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R0
      236 CAPTURE                          VAL R2
      237 CAPTURE                          REF R9
      238 CAPTURE                          VAL R10
      239 SETTABLEKS                       R11 R5 K128 ["hashCharacter"]
      241 CLOSEUPVALS                      R9
      242 RETURN                           R5 1
