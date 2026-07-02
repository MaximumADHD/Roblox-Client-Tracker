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
       39 LOADN                            R4 5000
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
      242 JUMPIFNOT                        R3 ; [+139]
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
      294 GETUPVAL                         R5 1
      295 JUMPIF                           R5 ; [+9]
      296 GETUPVAL                         R4 0
      297 GETTABLEKS                       R4 R4 K16 ["serialize"]
      299 GETTABLEKS                       R5 R0 K49 ["Puffiness"]
      301 MOVE                             R6 R1
      302 MOVE                             R7 R2
      303 CALL                             R4 3 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R4
      306 SETTABLEKS                       R4 R3 K37 ["puffiness"]
      308 GETUPVAL                         R4 0
      309 GETTABLEKS                       R4 R4 K16 ["serialize"]
      311 GETTABLEKS                       R5 R0 K50 ["ReferenceMeshId"]
      313 MOVE                             R6 R1
      314 MOVE                             R7 R2
      315 CALL                             R4 3 1
      316 SETTABLEKS                       R4 R3 K38 ["referenceMeshId"]
      318 GETUPVAL                         R4 0
      319 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      321 GETTABLEKS                       R5 R0 K51 ["ReferenceOrigin"]
      323 MOVE                             R6 R1
      324 MOVE                             R7 R2
      325 CALL                             R4 3 1
      326 SETTABLEKS                       R4 R3 K39 ["referenceOrigin"]
      328 GETUPVAL                         R4 0
      329 GETTABLEKS                       R4 R4 K16 ["serialize"]
      331 GETTABLEKS                       R5 R0 K52 ["AutoSkin"]
      333 MOVE                             R6 R1
      334 MOVE                             R7 R2
      335 CALL                             R4 3 1
      336 SETTABLEKS                       R4 R3 K40 ["autoSkin"]
      338 GETUPVAL                         R4 0
      339 GETTABLEKS                       R4 R4 K16 ["serialize"]
      341 GETTABLEKS                       R5 R0 K53 ["Enabled"]
      343 MOVE                             R6 R1
      344 MOVE                             R7 R2
      345 CALL                             R4 3 1
      346 SETTABLEKS                       R4 R3 K41 ["enabled"]
      348 GETUPVAL                         R4 0
      349 GETTABLEKS                       R4 R4 K16 ["serialize"]
      351 GETTABLEKS                       R5 R0 K54 ["BindOffset"]
      353 MOVE                             R6 R1
      354 MOVE                             R7 R2
      355 CALL                             R4 3 1
      356 SETTABLEKS                       R4 R3 K42 ["bindOffset"]
      358 GETUPVAL                         R5 1
      359 JUMPIF                           R5 ; [+9]
      360 GETUPVAL                         R4 0
      361 GETTABLEKS                       R4 R4 K16 ["serialize"]
      363 GETTABLEKS                       R5 R0 K55 ["ShrinkFactor"]
      365 MOVE                             R6 R1
      366 MOVE                             R7 R2
      367 CALL                             R4 3 1
      368 JUMP                             ; [+1]
      369 LOADNIL                          R4
      370 SETTABLEKS                       R4 R3 K43 ["shrinkFactor"]
      372 GETUPVAL                         R4 0
      373 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      375 MOVE                             R5 R0
      376 MOVE                             R6 R1
      377 MOVE                             R7 R2
      378 CALL                             R4 3 1
      379 SETTABLEKS                       R4 R3 K14 ["children"]
      381 RETURN                           R3 1
      382 LOADK                            R5 K56 ["JointInstance"]
      383 NAMECALL                         R3 R0 K2 ["IsA"]
      385 CALL                             R3 2 1
      386 JUMPIFNOT                        R3 ; [+82]
      387 GETTABLEKS                       R3 R1 K57 ["options"]
      389 GETTABLEKS                       R3 R3 K58 ["ignoreAccessories"]
      391 JUMPIFNOT                        R3 ; [+6]
      392 GETTABLEKS                       R3 R0 K17 ["Name"]
      394 JUMPIFNOTEQKS                    R3 K59 ["AccessoryWeld"] ; [+3]
      396 LOADNIL                          R3
      397 RETURN                           R3 1
      398 DUPTABLE                         R3 K64 [{"name", "archivable", "c0", "c1", "part0", "part1", "children"}]
      399 GETUPVAL                         R4 0
      400 GETTABLEKS                       R4 R4 K16 ["serialize"]
      402 GETTABLEKS                       R5 R0 K17 ["Name"]
      404 MOVE                             R6 R1
      405 MOVE                             R7 R2
      406 CALL                             R4 3 1
      407 SETTABLEKS                       R4 R3 K3 ["name"]
      409 GETUPVAL                         R4 0
      410 GETTABLEKS                       R4 R4 K16 ["serialize"]
      412 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      414 MOVE                             R6 R1
      415 MOVE                             R7 R2
      416 CALL                             R4 3 1
      417 SETTABLEKS                       R4 R3 K4 ["archivable"]
      419 GETUPVAL                         R4 0
      420 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      422 GETTABLEKS                       R5 R0 K65 ["C0"]
      424 MOVE                             R6 R1
      425 MOVE                             R7 R2
      426 CALL                             R4 3 1
      427 SETTABLEKS                       R4 R3 K60 ["c0"]
      429 GETUPVAL                         R4 0
      430 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      432 GETTABLEKS                       R5 R0 K66 ["C1"]
      434 MOVE                             R6 R1
      435 MOVE                             R7 R2
      436 CALL                             R4 3 1
      437 SETTABLEKS                       R4 R3 K61 ["c1"]
      439 GETUPVAL                         R4 0
      440 GETTABLEKS                       R4 R4 K67 ["serializeReferenceInstance"]
      442 GETTABLEKS                       R5 R0 K68 ["Part0"]
      444 MOVE                             R6 R1
      445 MOVE                             R7 R2
      446 CALL                             R4 3 1
      447 SETTABLEKS                       R4 R3 K62 ["part0"]
      449 GETUPVAL                         R4 0
      450 GETTABLEKS                       R4 R4 K67 ["serializeReferenceInstance"]
      452 GETTABLEKS                       R5 R0 K69 ["Part1"]
      454 MOVE                             R6 R1
      455 MOVE                             R7 R2
      456 CALL                             R4 3 1
      457 SETTABLEKS                       R4 R3 K63 ["part1"]
      459 GETUPVAL                         R4 0
      460 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      462 MOVE                             R5 R0
      463 MOVE                             R6 R1
      464 MOVE                             R7 R2
      465 CALL                             R4 3 1
      466 SETTABLEKS                       R4 R3 K14 ["children"]
      468 RETURN                           R3 1
      469 LOADK                            R5 K70 ["Attachment"]
      470 NAMECALL                         R3 R0 K2 ["IsA"]
      472 CALL                             R3 2 1
      473 JUMPIFNOT                        R3 ; [+31]
      474 DUPTABLE                         R3 K71 [{"name", "archivable", "children"}]
      475 GETUPVAL                         R4 0
      476 GETTABLEKS                       R4 R4 K16 ["serialize"]
      478 GETTABLEKS                       R5 R0 K17 ["Name"]
      480 MOVE                             R6 R1
      481 MOVE                             R7 R2
      482 CALL                             R4 3 1
      483 SETTABLEKS                       R4 R3 K3 ["name"]
      485 GETUPVAL                         R4 0
      486 GETTABLEKS                       R4 R4 K16 ["serialize"]
      488 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      490 MOVE                             R6 R1
      491 MOVE                             R7 R2
      492 CALL                             R4 3 1
      493 SETTABLEKS                       R4 R3 K4 ["archivable"]
      495 GETUPVAL                         R4 0
      496 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      498 MOVE                             R5 R0
      499 MOVE                             R6 R1
      500 MOVE                             R7 R2
      501 CALL                             R4 3 1
      502 SETTABLEKS                       R4 R3 K14 ["children"]
      504 RETURN                           R3 1
      505 LOADK                            R5 K72 ["Decal"]
      506 NAMECALL                         R3 R0 K2 ["IsA"]
      508 CALL                             R3 2 1
      509 JUMPIFNOT                        R3 ; [+42]
      510 DUPTABLE                         R3 K74 [{"name", "archivable", "texture", "transparency"}]
      511 GETUPVAL                         R4 0
      512 GETTABLEKS                       R4 R4 K16 ["serialize"]
      514 GETTABLEKS                       R5 R0 K17 ["Name"]
      516 MOVE                             R6 R1
      517 MOVE                             R7 R2
      518 CALL                             R4 3 1
      519 SETTABLEKS                       R4 R3 K3 ["name"]
      521 GETUPVAL                         R4 0
      522 GETTABLEKS                       R4 R4 K16 ["serialize"]
      524 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      526 MOVE                             R6 R1
      527 MOVE                             R7 R2
      528 CALL                             R4 3 1
      529 SETTABLEKS                       R4 R3 K4 ["archivable"]
      531 GETUPVAL                         R4 0
      532 GETTABLEKS                       R4 R4 K16 ["serialize"]
      534 GETTABLEKS                       R5 R0 K75 ["Texture"]
      536 MOVE                             R6 R1
      537 MOVE                             R7 R2
      538 CALL                             R4 3 1
      539 SETTABLEKS                       R4 R3 K73 ["texture"]
      541 GETUPVAL                         R4 0
      542 GETTABLEKS                       R4 R4 K16 ["serialize"]
      544 GETTABLEKS                       R5 R0 K23 ["Transparency"]
      546 MOVE                             R6 R1
      547 MOVE                             R7 R2
      548 CALL                             R4 3 1
      549 SETTABLEKS                       R4 R3 K9 ["transparency"]
      551 RETURN                           R3 1
      552 LOADK                            R5 K75 ["Texture"]
      553 NAMECALL                         R3 R0 K2 ["IsA"]
      555 CALL                             R3 2 1
      556 JUMPIFNOT                        R3 ; [+42]
      557 DUPTABLE                         R3 K74 [{"name", "archivable", "texture", "transparency"}]
      558 GETUPVAL                         R4 0
      559 GETTABLEKS                       R4 R4 K16 ["serialize"]
      561 GETTABLEKS                       R5 R0 K17 ["Name"]
      563 MOVE                             R6 R1
      564 MOVE                             R7 R2
      565 CALL                             R4 3 1
      566 SETTABLEKS                       R4 R3 K3 ["name"]
      568 GETUPVAL                         R4 0
      569 GETTABLEKS                       R4 R4 K16 ["serialize"]
      571 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      573 MOVE                             R6 R1
      574 MOVE                             R7 R2
      575 CALL                             R4 3 1
      576 SETTABLEKS                       R4 R3 K4 ["archivable"]
      578 GETUPVAL                         R4 0
      579 GETTABLEKS                       R4 R4 K16 ["serialize"]
      581 GETTABLEKS                       R5 R0 K75 ["Texture"]
      583 MOVE                             R6 R1
      584 MOVE                             R7 R2
      585 CALL                             R4 3 1
      586 SETTABLEKS                       R4 R3 K73 ["texture"]
      588 GETUPVAL                         R4 0
      589 GETTABLEKS                       R4 R4 K16 ["serialize"]
      591 GETTABLEKS                       R5 R0 K23 ["Transparency"]
      593 MOVE                             R6 R1
      594 MOVE                             R7 R2
      595 CALL                             R4 3 1
      596 SETTABLEKS                       R4 R3 K9 ["transparency"]
      598 RETURN                           R3 1
      599 LOADK                            R5 K76 ["SurfaceAppearance"]
      600 NAMECALL                         R3 R0 K2 ["IsA"]
      602 CALL                             R3 2 1
      603 JUMPIFNOT                        R3 ; [+91]
      604 DUPTABLE                         R3 K82 [{"name", "archivable", "colorMap", "normalMap", "metalnessMap", "roughnessMap", "color", "children", "alphaMode"}]
      605 GETUPVAL                         R4 0
      606 GETTABLEKS                       R4 R4 K16 ["serialize"]
      608 GETTABLEKS                       R5 R0 K17 ["Name"]
      610 MOVE                             R6 R1
      611 MOVE                             R7 R2
      612 CALL                             R4 3 1
      613 SETTABLEKS                       R4 R3 K3 ["name"]
      615 GETUPVAL                         R4 0
      616 GETTABLEKS                       R4 R4 K16 ["serialize"]
      618 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      620 MOVE                             R6 R1
      621 MOVE                             R7 R2
      622 CALL                             R4 3 1
      623 SETTABLEKS                       R4 R3 K4 ["archivable"]
      625 GETUPVAL                         R4 0
      626 GETTABLEKS                       R4 R4 K16 ["serialize"]
      628 GETTABLEKS                       R5 R0 K83 ["ColorMap"]
      630 MOVE                             R6 R1
      631 MOVE                             R7 R2
      632 CALL                             R4 3 1
      633 SETTABLEKS                       R4 R3 K77 ["colorMap"]
      635 GETUPVAL                         R4 0
      636 GETTABLEKS                       R4 R4 K16 ["serialize"]
      638 GETTABLEKS                       R5 R0 K84 ["NormalMap"]
      640 MOVE                             R6 R1
      641 MOVE                             R7 R2
      642 CALL                             R4 3 1
      643 SETTABLEKS                       R4 R3 K78 ["normalMap"]
      645 GETUPVAL                         R4 0
      646 GETTABLEKS                       R4 R4 K16 ["serialize"]
      648 GETTABLEKS                       R5 R0 K85 ["MetalnessMap"]
      650 MOVE                             R6 R1
      651 MOVE                             R7 R2
      652 CALL                             R4 3 1
      653 SETTABLEKS                       R4 R3 K79 ["metalnessMap"]
      655 GETUPVAL                         R4 0
      656 GETTABLEKS                       R4 R4 K16 ["serialize"]
      658 GETTABLEKS                       R5 R0 K86 ["RoughnessMap"]
      660 MOVE                             R6 R1
      661 MOVE                             R7 R2
      662 CALL                             R4 3 1
      663 SETTABLEKS                       R4 R3 K80 ["roughnessMap"]
      665 GETUPVAL                         R4 0
      666 GETTABLEKS                       R4 R4 K16 ["serialize"]
      668 GETTABLEKS                       R5 R0 K25 ["Color"]
      670 MOVE                             R6 R1
      671 MOVE                             R7 R2
      672 CALL                             R4 3 1
      673 SETTABLEKS                       R4 R3 K11 ["color"]
      675 GETUPVAL                         R4 0
      676 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      678 MOVE                             R5 R0
      679 MOVE                             R6 R1
      680 MOVE                             R7 R2
      681 CALL                             R4 3 1
      682 SETTABLEKS                       R4 R3 K14 ["children"]
      684 GETUPVAL                         R4 0
      685 GETTABLEKS                       R4 R4 K16 ["serialize"]
      687 GETTABLEKS                       R5 R0 K87 ["AlphaMode"]
      689 MOVE                             R6 R1
      690 MOVE                             R7 R2
      691 CALL                             R4 3 1
      692 SETTABLEKS                       R4 R3 K81 ["alphaMode"]
      694 RETURN                           R3 1
      695 LOADK                            R5 K88 ["Accessory"]
      696 NAMECALL                         R3 R0 K2 ["IsA"]
      698 CALL                             R3 2 1
      699 JUMPIFNOT                        R3 ; [+48]
      700 GETTABLEKS                       R3 R1 K57 ["options"]
      702 GETTABLEKS                       R3 R3 K58 ["ignoreAccessories"]
      704 JUMPIFNOT                        R3 ; [+2]
      705 LOADNIL                          R3
      706 RETURN                           R3 1
      707 DUPTABLE                         R3 K90 [{"name", "archivable", "attachmentPoint", "children"}]
      708 GETUPVAL                         R4 0
      709 GETTABLEKS                       R4 R4 K16 ["serialize"]
      711 GETTABLEKS                       R5 R0 K17 ["Name"]
      713 MOVE                             R6 R1
      714 MOVE                             R7 R2
      715 CALL                             R4 3 1
      716 SETTABLEKS                       R4 R3 K3 ["name"]
      718 GETUPVAL                         R4 0
      719 GETTABLEKS                       R4 R4 K16 ["serialize"]
      721 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      723 MOVE                             R6 R1
      724 MOVE                             R7 R2
      725 CALL                             R4 3 1
      726 SETTABLEKS                       R4 R3 K4 ["archivable"]
      728 GETUPVAL                         R4 0
      729 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      731 GETTABLEKS                       R5 R0 K91 ["AttachmentPoint"]
      733 MOVE                             R6 R1
      734 MOVE                             R7 R2
      735 CALL                             R4 3 1
      736 SETTABLEKS                       R4 R3 K89 ["attachmentPoint"]
      738 GETUPVAL                         R4 0
      739 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      741 MOVE                             R5 R0
      742 MOVE                             R6 R1
      743 MOVE                             R7 R2
      744 CALL                             R4 3 1
      745 SETTABLEKS                       R4 R3 K14 ["children"]
      747 RETURN                           R3 1
      748 LOADK                            R5 K92 ["BodyColors"]
      749 NAMECALL                         R3 R0 K2 ["IsA"]
      751 CALL                             R3 2 1
      752 JUMPIFNOT                        R3 ; [+91]
      753 DUPTABLE                         R3 K99 [{"name", "archivable", "headColor", "leftArmColor", "leftLegColor", "rightArmColor", "rightLegColor", "torsoColor", "children"}]
      754 GETUPVAL                         R4 0
      755 GETTABLEKS                       R4 R4 K16 ["serialize"]
      757 GETTABLEKS                       R5 R0 K17 ["Name"]
      759 MOVE                             R6 R1
      760 MOVE                             R7 R2
      761 CALL                             R4 3 1
      762 SETTABLEKS                       R4 R3 K3 ["name"]
      764 GETUPVAL                         R4 0
      765 GETTABLEKS                       R4 R4 K16 ["serialize"]
      767 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      769 MOVE                             R6 R1
      770 MOVE                             R7 R2
      771 CALL                             R4 3 1
      772 SETTABLEKS                       R4 R3 K4 ["archivable"]
      774 GETUPVAL                         R4 0
      775 GETTABLEKS                       R4 R4 K16 ["serialize"]
      777 GETTABLEKS                       R5 R0 K100 ["HeadColor"]
      779 MOVE                             R6 R1
      780 MOVE                             R7 R2
      781 CALL                             R4 3 1
      782 SETTABLEKS                       R4 R3 K93 ["headColor"]
      784 GETUPVAL                         R4 0
      785 GETTABLEKS                       R4 R4 K16 ["serialize"]
      787 GETTABLEKS                       R5 R0 K101 ["LeftArmColor"]
      789 MOVE                             R6 R1
      790 MOVE                             R7 R2
      791 CALL                             R4 3 1
      792 SETTABLEKS                       R4 R3 K94 ["leftArmColor"]
      794 GETUPVAL                         R4 0
      795 GETTABLEKS                       R4 R4 K16 ["serialize"]
      797 GETTABLEKS                       R5 R0 K102 ["LeftLegColor"]
      799 MOVE                             R6 R1
      800 MOVE                             R7 R2
      801 CALL                             R4 3 1
      802 SETTABLEKS                       R4 R3 K95 ["leftLegColor"]
      804 GETUPVAL                         R4 0
      805 GETTABLEKS                       R4 R4 K16 ["serialize"]
      807 GETTABLEKS                       R5 R0 K103 ["RightArmColor"]
      809 MOVE                             R6 R1
      810 MOVE                             R7 R2
      811 CALL                             R4 3 1
      812 SETTABLEKS                       R4 R3 K96 ["rightArmColor"]
      814 GETUPVAL                         R4 0
      815 GETTABLEKS                       R4 R4 K16 ["serialize"]
      817 GETTABLEKS                       R5 R0 K104 ["RightLegColor"]
      819 MOVE                             R6 R1
      820 MOVE                             R7 R2
      821 CALL                             R4 3 1
      822 SETTABLEKS                       R4 R3 K97 ["rightLegColor"]
      824 GETUPVAL                         R4 0
      825 GETTABLEKS                       R4 R4 K16 ["serialize"]
      827 GETTABLEKS                       R5 R0 K105 ["TorsoColor"]
      829 MOVE                             R6 R1
      830 MOVE                             R7 R2
      831 CALL                             R4 3 1
      832 SETTABLEKS                       R4 R3 K98 ["torsoColor"]
      834 GETUPVAL                         R4 0
      835 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      837 MOVE                             R5 R0
      838 MOVE                             R6 R1
      839 MOVE                             R7 R2
      840 CALL                             R4 3 1
      841 SETTABLEKS                       R4 R3 K14 ["children"]
      843 RETURN                           R3 1
      844 LOADK                            R5 K106 ["NumberValue"]
      845 NAMECALL                         R3 R0 K2 ["IsA"]
      847 CALL                             R3 2 1
      848 JUMPIFNOT                        R3 ; [+47]
      849 GETUPVAL                         R3 0
      850 GETTABLEKS                       R3 R3 K107 ["isScalingHumanoidNumber"]
      852 MOVE                             R4 R0
      853 CALL                             R3 1 1
      854 JUMPIFNOT                        R3 ; [+41]
      855 DUPTABLE                         R3 K109 [{"name", "archivable", "value", "children"}]
      856 GETUPVAL                         R4 0
      857 GETTABLEKS                       R4 R4 K16 ["serialize"]
      859 GETTABLEKS                       R5 R0 K17 ["Name"]
      861 MOVE                             R6 R1
      862 MOVE                             R7 R2
      863 CALL                             R4 3 1
      864 SETTABLEKS                       R4 R3 K3 ["name"]
      866 GETUPVAL                         R4 0
      867 GETTABLEKS                       R4 R4 K16 ["serialize"]
      869 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      871 MOVE                             R6 R1
      872 MOVE                             R7 R2
      873 CALL                             R4 3 1
      874 SETTABLEKS                       R4 R3 K4 ["archivable"]
      876 GETUPVAL                         R4 0
      877 GETTABLEKS                       R4 R4 K110 ["serializeScalingHumanoidNumber"]
      879 GETTABLEKS                       R5 R0 K111 ["Value"]
      881 MOVE                             R6 R1
      882 MOVE                             R7 R2
      883 CALL                             R4 3 1
      884 SETTABLEKS                       R4 R3 K108 ["value"]
      886 GETUPVAL                         R4 0
      887 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      889 MOVE                             R5 R0
      890 MOVE                             R6 R1
      891 MOVE                             R7 R2
      892 CALL                             R4 3 1
      893 SETTABLEKS                       R4 R3 K14 ["children"]
      895 RETURN                           R3 1
      896 LOADK                            R5 K112 ["ValueBase"]
      897 NAMECALL                         R3 R0 K2 ["IsA"]
      899 CALL                             R3 2 1
      900 JUMPIFNOT                        R3 ; [+98]
      901 GETUPVAL                         R3 0
      902 GETTABLEKS                       R3 R3 K113 ["isAttachmentOriginalPositionValue"]
      904 MOVE                             R4 R0
      905 CALL                             R3 1 1
      906 JUMPIFNOT                        R3 ; [+41]
      907 DUPTABLE                         R3 K115 [{"name", "className", "archivable", "children"}]
      908 GETUPVAL                         R4 0
      909 GETTABLEKS                       R4 R4 K16 ["serialize"]
      911 GETTABLEKS                       R5 R0 K17 ["Name"]
      913 MOVE                             R6 R1
      914 MOVE                             R7 R2
      915 CALL                             R4 3 1
      916 SETTABLEKS                       R4 R3 K3 ["name"]
      918 GETUPVAL                         R4 0
      919 GETTABLEKS                       R4 R4 K16 ["serialize"]
      921 GETTABLEKS                       R5 R0 K116 ["ClassName"]
      923 MOVE                             R6 R1
      924 MOVE                             R7 R2
      925 CALL                             R4 3 1
      926 SETTABLEKS                       R4 R3 K114 ["className"]
      928 GETUPVAL                         R4 0
      929 GETTABLEKS                       R4 R4 K16 ["serialize"]
      931 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      933 MOVE                             R6 R1
      934 MOVE                             R7 R2
      935 CALL                             R4 3 1
      936 SETTABLEKS                       R4 R3 K4 ["archivable"]
      938 GETUPVAL                         R4 0
      939 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      941 MOVE                             R5 R0
      942 MOVE                             R6 R1
      943 MOVE                             R7 R2
      944 CALL                             R4 3 1
      945 SETTABLEKS                       R4 R3 K14 ["children"]
      947 RETURN                           R3 1
      948 DUPTABLE                         R3 K117 [{"name", "className", "archivable", "value", "children"}]
      949 GETUPVAL                         R4 0
      950 GETTABLEKS                       R4 R4 K16 ["serialize"]
      952 GETTABLEKS                       R5 R0 K17 ["Name"]
      954 MOVE                             R6 R1
      955 MOVE                             R7 R2
      956 CALL                             R4 3 1
      957 SETTABLEKS                       R4 R3 K3 ["name"]
      959 GETUPVAL                         R4 0
      960 GETTABLEKS                       R4 R4 K16 ["serialize"]
      962 GETTABLEKS                       R5 R0 K116 ["ClassName"]
      964 MOVE                             R6 R1
      965 MOVE                             R7 R2
      966 CALL                             R4 3 1
      967 SETTABLEKS                       R4 R3 K114 ["className"]
      969 GETUPVAL                         R4 0
      970 GETTABLEKS                       R4 R4 K16 ["serialize"]
      972 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      974 MOVE                             R6 R1
      975 MOVE                             R7 R2
      976 CALL                             R4 3 1
      977 SETTABLEKS                       R4 R3 K4 ["archivable"]
      979 GETUPVAL                         R4 0
      980 GETTABLEKS                       R4 R4 K16 ["serialize"]
      982 GETTABLEKS                       R5 R0 K111 ["Value"]
      984 MOVE                             R6 R1
      985 MOVE                             R7 R2
      986 CALL                             R4 3 1
      987 SETTABLEKS                       R4 R3 K108 ["value"]
      989 GETUPVAL                         R4 0
      990 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      992 MOVE                             R5 R0
      993 MOVE                             R6 R1
      994 MOVE                             R7 R2
      995 CALL                             R4 3 1
      996 SETTABLEKS                       R4 R3 K14 ["children"]
      998 RETURN                           R3 1
      999 LOADK                            R5 K118 ["Humanoid"]
     1000 NAMECALL                         R3 R0 K2 ["IsA"]
     1002 CALL                             R3 2 1
     1003 JUMPIFNOT                        R3 ; [+221]
     1004 DUPTABLE                         R3 K138 [{"name", "archivable", "rigType", "autoRotate", "breakJointsOnDeath", "evaluateStateMachine", "requiresNeck", "health", "maxHealth", "hipHeight", "maxSlopeAngle", "autoJumpEnabled", "useJumpPower", "healthDisplayType", "displayName", "displayDistanceType", "cameraOffset", "automaticScalingEnabled", "nameOcclusion", "sit", "jump", "children"}]
     1005 GETUPVAL                         R4 0
     1006 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1008 GETTABLEKS                       R5 R0 K17 ["Name"]
     1010 MOVE                             R6 R1
     1011 MOVE                             R7 R2
     1012 CALL                             R4 3 1
     1013 SETTABLEKS                       R4 R3 K3 ["name"]
     1015 GETUPVAL                         R4 0
     1016 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1018 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1020 MOVE                             R6 R1
     1021 MOVE                             R7 R2
     1022 CALL                             R4 3 1
     1023 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1025 GETUPVAL                         R4 0
     1026 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1028 GETTABLEKS                       R5 R0 K139 ["RigType"]
     1030 MOVE                             R6 R1
     1031 MOVE                             R7 R2
     1032 CALL                             R4 3 1
     1033 SETTABLEKS                       R4 R3 K119 ["rigType"]
     1035 GETUPVAL                         R4 0
     1036 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1038 GETTABLEKS                       R5 R0 K140 ["AutoRotate"]
     1040 MOVE                             R6 R1
     1041 MOVE                             R7 R2
     1042 CALL                             R4 3 1
     1043 SETTABLEKS                       R4 R3 K120 ["autoRotate"]
     1045 GETUPVAL                         R4 0
     1046 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1048 GETTABLEKS                       R5 R0 K141 ["BreakJointsOnDeath"]
     1050 MOVE                             R6 R1
     1051 MOVE                             R7 R2
     1052 CALL                             R4 3 1
     1053 SETTABLEKS                       R4 R3 K121 ["breakJointsOnDeath"]
     1055 GETUPVAL                         R4 0
     1056 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1058 GETTABLEKS                       R5 R0 K142 ["EvaluateStateMachine"]
     1060 MOVE                             R6 R1
     1061 MOVE                             R7 R2
     1062 CALL                             R4 3 1
     1063 SETTABLEKS                       R4 R3 K122 ["evaluateStateMachine"]
     1065 GETUPVAL                         R4 0
     1066 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1068 GETTABLEKS                       R5 R0 K143 ["RequiresNeck"]
     1070 MOVE                             R6 R1
     1071 MOVE                             R7 R2
     1072 CALL                             R4 3 1
     1073 SETTABLEKS                       R4 R3 K123 ["requiresNeck"]
     1075 GETUPVAL                         R4 0
     1076 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1078 GETTABLEKS                       R5 R0 K144 ["Health"]
     1080 MOVE                             R6 R1
     1081 MOVE                             R7 R2
     1082 CALL                             R4 3 1
     1083 SETTABLEKS                       R4 R3 K124 ["health"]
     1085 GETUPVAL                         R4 0
     1086 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1088 GETTABLEKS                       R5 R0 K145 ["MaxHealth"]
     1090 MOVE                             R6 R1
     1091 MOVE                             R7 R2
     1092 CALL                             R4 3 1
     1093 SETTABLEKS                       R4 R3 K125 ["maxHealth"]
     1095 GETUPVAL                         R4 0
     1096 GETTABLEKS                       R4 R4 K110 ["serializeScalingHumanoidNumber"]
     1098 GETTABLEKS                       R5 R0 K146 ["HipHeight"]
     1100 MOVE                             R6 R1
     1101 MOVE                             R7 R2
     1102 CALL                             R4 3 1
     1103 SETTABLEKS                       R4 R3 K126 ["hipHeight"]
     1105 GETUPVAL                         R4 0
     1106 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1108 GETTABLEKS                       R5 R0 K147 ["MaxSlopeAngle"]
     1110 MOVE                             R6 R1
     1111 MOVE                             R7 R2
     1112 CALL                             R4 3 1
     1113 SETTABLEKS                       R4 R3 K127 ["maxSlopeAngle"]
     1115 GETUPVAL                         R4 0
     1116 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1118 GETTABLEKS                       R5 R0 K148 ["AutoJumpEnabled"]
     1120 MOVE                             R6 R1
     1121 MOVE                             R7 R2
     1122 CALL                             R4 3 1
     1123 SETTABLEKS                       R4 R3 K128 ["autoJumpEnabled"]
     1125 GETUPVAL                         R4 0
     1126 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1128 GETTABLEKS                       R5 R0 K149 ["UseJumpPower"]
     1130 MOVE                             R6 R1
     1131 MOVE                             R7 R2
     1132 CALL                             R4 3 1
     1133 SETTABLEKS                       R4 R3 K129 ["useJumpPower"]
     1135 GETUPVAL                         R4 0
     1136 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1138 GETTABLEKS                       R5 R0 K150 ["HealthDisplayType"]
     1140 MOVE                             R6 R1
     1141 MOVE                             R7 R2
     1142 CALL                             R4 3 1
     1143 SETTABLEKS                       R4 R3 K130 ["healthDisplayType"]
     1145 GETUPVAL                         R4 0
     1146 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1148 GETTABLEKS                       R5 R0 K151 ["DisplayName"]
     1150 MOVE                             R6 R1
     1151 MOVE                             R7 R2
     1152 CALL                             R4 3 1
     1153 SETTABLEKS                       R4 R3 K131 ["displayName"]
     1155 GETUPVAL                         R4 0
     1156 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1158 GETTABLEKS                       R5 R0 K152 ["DisplayDistanceType"]
     1160 MOVE                             R6 R1
     1161 MOVE                             R7 R2
     1162 CALL                             R4 3 1
     1163 SETTABLEKS                       R4 R3 K132 ["displayDistanceType"]
     1165 GETUPVAL                         R4 0
     1166 GETTABLEKS                       R4 R4 K153 ["serializeAttachmentPosition"]
     1168 GETTABLEKS                       R5 R0 K154 ["CameraOffset"]
     1170 MOVE                             R6 R1
     1171 MOVE                             R7 R2
     1172 CALL                             R4 3 1
     1173 SETTABLEKS                       R4 R3 K133 ["cameraOffset"]
     1175 GETUPVAL                         R4 0
     1176 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1178 GETTABLEKS                       R5 R0 K155 ["AutomaticScalingEnabled"]
     1180 MOVE                             R6 R1
     1181 MOVE                             R7 R2
     1182 CALL                             R4 3 1
     1183 SETTABLEKS                       R4 R3 K134 ["automaticScalingEnabled"]
     1185 GETUPVAL                         R4 0
     1186 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1188 GETTABLEKS                       R5 R0 K156 ["NameOcclusion"]
     1190 MOVE                             R6 R1
     1191 MOVE                             R7 R2
     1192 CALL                             R4 3 1
     1193 SETTABLEKS                       R4 R3 K135 ["nameOcclusion"]
     1195 GETUPVAL                         R4 0
     1196 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1198 GETTABLEKS                       R5 R0 K157 ["Sit"]
     1200 MOVE                             R6 R1
     1201 MOVE                             R7 R2
     1202 CALL                             R4 3 1
     1203 SETTABLEKS                       R4 R3 K136 ["sit"]
     1205 GETUPVAL                         R4 0
     1206 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1208 GETTABLEKS                       R5 R0 K158 ["Jump"]
     1210 MOVE                             R6 R1
     1211 MOVE                             R7 R2
     1212 CALL                             R4 3 1
     1213 SETTABLEKS                       R4 R3 K137 ["jump"]
     1215 GETUPVAL                         R4 0
     1216 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1218 MOVE                             R5 R0
     1219 MOVE                             R6 R1
     1220 MOVE                             R7 R2
     1221 CALL                             R4 3 1
     1222 SETTABLEKS                       R4 R3 K14 ["children"]
     1224 RETURN                           R3 1
     1225 GETUPVAL                         R3 2
     1226 CALL                             R3 0 1
     1227 JUMPIFNOT                        R3 ; [+51]
     1228 LOADK                            R5 K159 ["Model"]
     1229 NAMECALL                         R3 R0 K2 ["IsA"]
     1231 CALL                             R3 2 1
     1232 JUMPIF                           R3 ; [+5]
     1233 LOADK                            R5 K160 ["Folder"]
     1234 NAMECALL                         R3 R0 K2 ["IsA"]
     1236 CALL                             R3 2 1
     1237 JUMPIFNOT                        R3 ; [+41]
     1238 DUPTABLE                         R3 K115 [{"name", "className", "archivable", "children"}]
     1239 GETUPVAL                         R4 0
     1240 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1242 GETTABLEKS                       R5 R0 K17 ["Name"]
     1244 MOVE                             R6 R1
     1245 MOVE                             R7 R2
     1246 CALL                             R4 3 1
     1247 SETTABLEKS                       R4 R3 K3 ["name"]
     1249 GETUPVAL                         R4 0
     1250 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1252 GETTABLEKS                       R5 R0 K116 ["ClassName"]
     1254 MOVE                             R6 R1
     1255 MOVE                             R7 R2
     1256 CALL                             R4 3 1
     1257 SETTABLEKS                       R4 R3 K114 ["className"]
     1259 GETUPVAL                         R4 0
     1260 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1262 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1264 MOVE                             R6 R1
     1265 MOVE                             R7 R2
     1266 CALL                             R4 3 1
     1267 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1269 GETUPVAL                         R4 0
     1270 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1272 MOVE                             R5 R0
     1273 MOVE                             R6 R1
     1274 MOVE                             R7 R2
     1275 CALL                             R4 3 1
     1276 SETTABLEKS                       R4 R3 K14 ["children"]
     1278 RETURN                           R3 1
     1279 GETUPVAL                         R3 2
     1280 CALL                             R3 0 1
     1281 JUMPIFNOT                        R3 ; [+50]
     1282 GETTABLEKS                       R3 R1 K57 ["options"]
     1284 GETTABLEKS                       R3 R3 K161 ["globalDebugDifferences"]
     1286 JUMPIFNOT                        R3 ; [+13]
     1287 GETIMPORT                        R3 K163 [warn]
     1289 LOADK                            R5 K164 ["[CharacterHashUtils] Unrecognized type serialized as leaf: %* (%*)"]
     1290 GETTABLEKS                       R7 R0 K116 ["ClassName"]
     1292 NAMECALL                         R8 R0 K165 ["GetFullName"]
     1294 CALL                             R8 1 1
     1295 NAMECALL                         R5 R5 K166 ["format"]
     1297 CALL                             R5 3 1
     1298 MOVE                             R4 R5
     1299 CALL                             R3 1 0
     1300 DUPTABLE                         R3 K167 [{"name", "className", "archivable"}]
     1301 GETUPVAL                         R4 0
     1302 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1304 GETTABLEKS                       R5 R0 K17 ["Name"]
     1306 MOVE                             R6 R1
     1307 MOVE                             R7 R2
     1308 CALL                             R4 3 1
     1309 SETTABLEKS                       R4 R3 K3 ["name"]
     1311 GETUPVAL                         R4 0
     1312 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1314 GETTABLEKS                       R5 R0 K116 ["ClassName"]
     1316 MOVE                             R6 R1
     1317 MOVE                             R7 R2
     1318 CALL                             R4 3 1
     1319 SETTABLEKS                       R4 R3 K114 ["className"]
     1321 GETUPVAL                         R4 0
     1322 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1324 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1326 MOVE                             R6 R1
     1327 MOVE                             R7 R2
     1328 CALL                             R4 3 1
     1329 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1331 RETURN                           R3 1
     1332 DUPTABLE                         R3 K115 [{"name", "className", "archivable", "children"}]
     1333 GETUPVAL                         R4 0
     1334 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1336 GETTABLEKS                       R5 R0 K17 ["Name"]
     1338 MOVE                             R6 R1
     1339 MOVE                             R7 R2
     1340 CALL                             R4 3 1
     1341 SETTABLEKS                       R4 R3 K3 ["name"]
     1343 GETUPVAL                         R4 0
     1344 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1346 GETTABLEKS                       R5 R0 K116 ["ClassName"]
     1348 MOVE                             R6 R1
     1349 MOVE                             R7 R2
     1350 CALL                             R4 3 1
     1351 SETTABLEKS                       R4 R3 K114 ["className"]
     1353 GETUPVAL                         R4 0
     1354 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1356 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1358 MOVE                             R6 R1
     1359 MOVE                             R7 R2
     1360 CALL                             R4 3 1
     1361 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1363 GETUPVAL                         R4 0
     1364 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1366 MOVE                             R5 R0
     1367 MOVE                             R6 R1
     1368 MOVE                             R7 R2
     1369 CALL                             R4 3 1
     1370 SETTABLEKS                       R4 R3 K14 ["children"]
     1372 RETURN                           R3 1

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
      119 DUPTABLE                         R13 K29 [{["allowedInstancesToSerializeUnder"], ["boundingCFrame"], ["boundingSize"], ["lastInstanceId"] = 0, ["pendingInstances"], ["serializedInstanceCount"] = 0}]
      120 SETTABLEKS                       R0 R13 K23 ["allowedInstancesToSerializeUnder"]
      122 SETTABLEKS                       R9 R13 K24 ["boundingCFrame"]
      124 SETTABLEKS                       R10 R13 K25 ["boundingSize"]
      126 NEWTABLE                         R14 0 0
      128 SETTABLEKS                       R14 R13 K27 ["pendingInstances"]
      130 SETTABLEKS                       R13 R12 K21 ["state"]
      132 RETURN                           R12 1

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
       40 GETIMPORT                        R5 K1 [game]
       42 LOADK                            R7 K16 ["CharacterHashUtilsRemovePuffiness"]
       43 LOADB                            R8 0
       44 NAMECALL                         R5 R5 K17 ["DefineFastFlag"]
       46 CALL                             R5 3 1
       47 NEWTABLE                         R6 32 0
       49 DUPCLOSURE                       R7 K18 [PROTO_0]
       50 SETTABLEKS                       R7 R6 K19 ["canEncodeStringSafely"]
       52 DUPCLOSURE                       R7 K20 [PROTO_1]
       53 SETTABLEKS                       R7 R6 K21 ["canEncodeNumberSafely"]
       55 DUPCLOSURE                       R7 K22 [PROTO_2]
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R7 R6 K23 ["cutPrecision"]
       59 DUPCLOSURE                       R7 K24 [PROTO_3]
       60 SETTABLEKS                       R7 R6 K25 ["cutListPrecision"]
       62 NEWTABLE                         R7 0 64
       64 LOADK                            R8 K26 ["alphaMode"]
       65 LOADK                            R9 K27 ["archivable"]
       66 LOADK                            R10 K28 ["attachmentPoint"]
       67 LOADK                            R11 K29 ["autoJumpEnabled"]
       68 LOADK                            R12 K30 ["autoRotate"]
       69 LOADK                            R13 K31 ["autoSkin"]
       70 LOADK                            R14 K32 ["automaticScalingEnabled"]
       71 LOADK                            R15 K33 ["bindOffset"]
       72 LOADK                            R16 K34 ["breakJointsOnDeath"]
       73 LOADK                            R17 K35 ["c0"]
       74 LOADK                            R18 K36 ["c1"]
       75 LOADK                            R19 K37 ["cageOrigin"]
       76 LOADK                            R20 K38 ["cameraOffset"]
       77 LOADK                            R21 K39 ["cframe"]
       78 LOADK                            R22 K40 ["children"]
       79 LOADK                            R23 K41 ["className"]
       80 SETLIST                          R7 R8 16 [1]
       82 LOADK                            R8 K42 ["color"]
       83 LOADK                            R9 K43 ["colorMap"]
       84 LOADK                            R10 K44 ["displayDistanceType"]
       85 LOADK                            R11 K45 ["displayName"]
       86 LOADK                            R12 K46 ["enabled"]
       87 LOADK                            R13 K47 ["evaluateStateMachine"]
       88 LOADK                            R14 K48 ["headColor"]
       89 LOADK                            R15 K49 ["health"]
       90 LOADK                            R16 K50 ["healthDisplayDistance"]
       91 LOADK                            R17 K51 ["healthDisplayType"]
       92 LOADK                            R18 K52 ["hipHeight"]
       93 LOADK                            R19 K53 ["importOrigin"]
       94 LOADK                            R20 K54 ["jump"]
       95 LOADK                            R21 K55 ["jumpPower"]
       96 LOADK                            R22 K56 ["leftArmColor"]
       97 LOADK                            R23 K57 ["leftLegColor"]
       98 SETLIST                          R7 R8 16 [17]
      100 LOADK                            R8 K58 ["material"]
      101 LOADK                            R9 K59 ["materialVariant"]
      102 LOADK                            R10 K60 ["maxHealth"]
      103 LOADK                            R11 K61 ["maxSlopeAngle"]
      104 LOADK                            R12 K62 ["meshId"]
      105 LOADK                            R13 K63 ["metalnessMap"]
      106 LOADK                            R14 K64 ["name"]
      107 LOADK                            R15 K65 ["nameDisplayDistance"]
      108 LOADK                            R16 K66 ["nameOcclusion"]
      109 LOADK                            R17 K67 ["normalMap"]
      110 LOADK                            R18 K68 ["order"]
      111 LOADK                            R19 K69 ["part0"]
      112 LOADK                            R20 K70 ["part1"]
      113 LOADK                            R21 K71 ["puffiness"]
      114 LOADK                            R22 K72 ["referenceMeshId"]
      115 LOADK                            R23 K73 ["referenceOrigin"]
      116 SETLIST                          R7 R8 16 [33]
      118 LOADK                            R8 K74 ["reflectance"]
      119 LOADK                            R9 K75 ["requiresNeck"]
      120 LOADK                            R10 K76 ["rigType"]
      121 LOADK                            R11 K77 ["rightArmColor"]
      122 LOADK                            R12 K78 ["rightLegColor"]
      123 LOADK                            R13 K79 ["roughnessMap"]
      124 LOADK                            R14 K80 ["shrinkFactor"]
      125 LOADK                            R15 K81 ["sit"]
      126 LOADK                            R16 K82 ["size"]
      127 LOADK                            R17 K83 ["texture"]
      128 LOADK                            R18 K84 ["textureId"]
      129 LOADK                            R19 K85 ["torsoColor"]
      130 LOADK                            R20 K86 ["transparency"]
      131 LOADK                            R21 K87 ["useJumpPower"]
      132 LOADK                            R22 K88 ["value"]
      133 LOADK                            R23 K89 ["walkSpeed"]
      134 SETLIST                          R7 R8 16 [49]
      136 LENGTH                           R10 R7
      137 LOADN                            R11 64
      138 JUMPIFLE                         R10 R11 ; [+2]
      140 LOADB                            R9 0 +1
      141 LOADB                            R9 1
      142 FASTCALL2K                       ASSERT R9 K90 ; [+4]
      144 LOADK                            R10 K90 ["Too many well known ids"]
      145 GETIMPORT                        R8 K92 [assert]
      147 CALL                             R8 2 0
      148 NEWTABLE                         R8 0 0
      150 MOVE                             R9 R7
      151 LOADNIL                          R10
      152 LOADNIL                          R11
      153 FORGPREP                         R9
      154 LOADK                            R16 K93 ["0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+-"]
      155 FASTCALL2                        STRING_BYTE R16 R12 ; [+4]
      157 MOVE                             R17 R12
      158 GETIMPORT                        R15 K96 [string.byte]
      160 CALL                             R15 2 -1
      161 FASTCALL                         STRING_CHAR ; [+2]
      162 GETIMPORT                        R14 K98 [string.char]
      164 CALL                             R14 -1 1
      165 SETTABLE                         R14 R8 R13
      166 FORGLOOP                         R9 2 ; [-13]
      168 DUPCLOSURE                       R9 K99 [PROTO_4]
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R8
      172 SETTABLEKS                       R9 R6 K100 ["serialize"]
      174 DUPCLOSURE                       R9 K101 [PROTO_5]
      175 CAPTURE                          VAL R6
      176 SETTABLEKS                       R9 R6 K102 ["serializeSize"]
      178 DUPCLOSURE                       R9 K103 [PROTO_6]
      179 CAPTURE                          VAL R6
      180 SETTABLEKS                       R9 R6 K104 ["serializePartCFrame"]
      182 DUPCLOSURE                       R9 K105 [PROTO_7]
      183 CAPTURE                          VAL R6
      184 SETTABLEKS                       R9 R6 K106 ["serializePosition"]
      186 DUPCLOSURE                       R9 K107 [PROTO_8]
      187 CAPTURE                          VAL R6
      188 SETTABLEKS                       R9 R6 K108 ["serializeAttachmentCFrame"]
      190 DUPCLOSURE                       R9 K109 [PROTO_9]
      191 CAPTURE                          VAL R6
      192 SETTABLEKS                       R9 R6 K110 ["serializeAttachmentPosition"]
      194 DUPCLOSURE                       R9 K111 [PROTO_10]
      195 CAPTURE                          VAL R6
      196 SETTABLEKS                       R9 R6 K112 ["serializeScalingHumanoidNumber"]
      198 DUPCLOSURE                       R9 K113 [PROTO_11]
      199 CAPTURE                          VAL R6
      200 SETTABLEKS                       R9 R6 K114 ["serializeReferenceInstance"]
      202 NEWTABLE                         R9 4 0
      204 LOADB                            R10 1
      205 SETTABLEKS                       R10 R9 K115 ["BodyHeightScale"]
      207 LOADB                            R10 1
      208 SETTABLEKS                       R10 R9 K116 ["BodyWidthScale"]
      210 LOADB                            R10 1
      211 SETTABLEKS                       R10 R9 K117 ["BodyDepthScale"]
      213 LOADB                            R10 1
      214 SETTABLEKS                       R10 R9 K118 ["HeadScale"]
      216 DUPCLOSURE                       R10 K119 [PROTO_12]
      217 CAPTURE                          VAL R9
      218 SETTABLEKS                       R10 R6 K120 ["isScalingHumanoidNumber"]
      220 DUPCLOSURE                       R10 K121 [PROTO_13]
      221 SETTABLEKS                       R10 R6 K122 ["isAttachmentOriginalPositionValue"]
      223 DUPCLOSURE                       R10 K123 [PROTO_14]
      224 CAPTURE                          VAL R6
      225 CAPTURE                          VAL R5
      226 CAPTURE                          VAL R4
      227 SETTABLEKS                       R10 R6 K124 ["serializeInstanceRaw"]
      229 DUPCLOSURE                       R10 K125 [PROTO_16]
      230 CAPTURE                          VAL R6
      231 SETTABLEKS                       R10 R6 K126 ["serializeChildren"]
      233 DUPCLOSURE                       R10 K127 [PROTO_18]
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R3
      236 SETTABLEKS                       R10 R6 K128 ["computeHashSerializeContext"]
      238 LOADNIL                          R10
      239 DUPCLOSURE                       R11 K129 [PROTO_19]
      240 CAPTURE                          VAL R11
      241 NEWCLOSURE                       R12 P18
      242 CAPTURE                          VAL R6
      243 CAPTURE                          VAL R0
      244 CAPTURE                          VAL R2
      245 CAPTURE                          REF R10
      246 CAPTURE                          VAL R11
      247 SETTABLEKS                       R12 R6 K130 ["hashCharacter"]
      249 CLOSEUPVALS                      R10
      250 RETURN                           R6 1
