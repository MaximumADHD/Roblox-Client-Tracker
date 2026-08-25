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
      242 JUMPIFNOT                        R3 ; [+111]
      243 DUPTABLE                         R3 K42 [{"name", "archivable", "cageOrigin", "importOrigin", "order", "referenceMeshId", "referenceOrigin", "autoSkin", "enabled", "bindOffset", "children"}]
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
      265 GETTABLEKS                       R4 R4 K43 ["serializeAttachmentCFrame"]
      267 GETTABLEKS                       R5 R0 K44 ["CageOrigin"]
      269 MOVE                             R6 R1
      270 MOVE                             R7 R2
      271 CALL                             R4 3 1
      272 SETTABLEKS                       R4 R3 K34 ["cageOrigin"]
      274 GETUPVAL                         R4 0
      275 GETTABLEKS                       R4 R4 K43 ["serializeAttachmentCFrame"]
      277 GETTABLEKS                       R5 R0 K45 ["ImportOrigin"]
      279 MOVE                             R6 R1
      280 MOVE                             R7 R2
      281 CALL                             R4 3 1
      282 SETTABLEKS                       R4 R3 K35 ["importOrigin"]
      284 GETUPVAL                         R4 0
      285 GETTABLEKS                       R4 R4 K16 ["serialize"]
      287 GETTABLEKS                       R5 R0 K46 ["Order"]
      289 MOVE                             R6 R1
      290 MOVE                             R7 R2
      291 CALL                             R4 3 1
      292 SETTABLEKS                       R4 R3 K36 ["order"]
      294 GETUPVAL                         R4 0
      295 GETTABLEKS                       R4 R4 K16 ["serialize"]
      297 GETTABLEKS                       R5 R0 K47 ["ReferenceMeshId"]
      299 MOVE                             R6 R1
      300 MOVE                             R7 R2
      301 CALL                             R4 3 1
      302 SETTABLEKS                       R4 R3 K37 ["referenceMeshId"]
      304 GETUPVAL                         R4 0
      305 GETTABLEKS                       R4 R4 K43 ["serializeAttachmentCFrame"]
      307 GETTABLEKS                       R5 R0 K48 ["ReferenceOrigin"]
      309 MOVE                             R6 R1
      310 MOVE                             R7 R2
      311 CALL                             R4 3 1
      312 SETTABLEKS                       R4 R3 K38 ["referenceOrigin"]
      314 GETUPVAL                         R4 0
      315 GETTABLEKS                       R4 R4 K16 ["serialize"]
      317 GETTABLEKS                       R5 R0 K49 ["AutoSkin"]
      319 MOVE                             R6 R1
      320 MOVE                             R7 R2
      321 CALL                             R4 3 1
      322 SETTABLEKS                       R4 R3 K39 ["autoSkin"]
      324 GETUPVAL                         R4 0
      325 GETTABLEKS                       R4 R4 K16 ["serialize"]
      327 GETTABLEKS                       R5 R0 K50 ["Enabled"]
      329 MOVE                             R6 R1
      330 MOVE                             R7 R2
      331 CALL                             R4 3 1
      332 SETTABLEKS                       R4 R3 K40 ["enabled"]
      334 GETUPVAL                         R4 0
      335 GETTABLEKS                       R4 R4 K16 ["serialize"]
      337 GETTABLEKS                       R5 R0 K51 ["BindOffset"]
      339 MOVE                             R6 R1
      340 MOVE                             R7 R2
      341 CALL                             R4 3 1
      342 SETTABLEKS                       R4 R3 K41 ["bindOffset"]
      344 GETUPVAL                         R4 0
      345 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      347 MOVE                             R5 R0
      348 MOVE                             R6 R1
      349 MOVE                             R7 R2
      350 CALL                             R4 3 1
      351 SETTABLEKS                       R4 R3 K14 ["children"]
      353 RETURN                           R3 1
      354 LOADK                            R5 K52 ["JointInstance"]
      355 NAMECALL                         R3 R0 K2 ["IsA"]
      357 CALL                             R3 2 1
      358 JUMPIFNOT                        R3 ; [+82]
      359 GETTABLEKS                       R3 R1 K53 ["options"]
      361 GETTABLEKS                       R3 R3 K54 ["ignoreAccessories"]
      363 JUMPIFNOT                        R3 ; [+6]
      364 GETTABLEKS                       R3 R0 K17 ["Name"]
      366 JUMPIFNOTEQKS                    R3 K55 ["AccessoryWeld"] ; [+3]
      368 LOADNIL                          R3
      369 RETURN                           R3 1
      370 DUPTABLE                         R3 K60 [{"name", "archivable", "c0", "c1", "part0", "part1", "children"}]
      371 GETUPVAL                         R4 0
      372 GETTABLEKS                       R4 R4 K16 ["serialize"]
      374 GETTABLEKS                       R5 R0 K17 ["Name"]
      376 MOVE                             R6 R1
      377 MOVE                             R7 R2
      378 CALL                             R4 3 1
      379 SETTABLEKS                       R4 R3 K3 ["name"]
      381 GETUPVAL                         R4 0
      382 GETTABLEKS                       R4 R4 K16 ["serialize"]
      384 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      386 MOVE                             R6 R1
      387 MOVE                             R7 R2
      388 CALL                             R4 3 1
      389 SETTABLEKS                       R4 R3 K4 ["archivable"]
      391 GETUPVAL                         R4 0
      392 GETTABLEKS                       R4 R4 K43 ["serializeAttachmentCFrame"]
      394 GETTABLEKS                       R5 R0 K61 ["C0"]
      396 MOVE                             R6 R1
      397 MOVE                             R7 R2
      398 CALL                             R4 3 1
      399 SETTABLEKS                       R4 R3 K56 ["c0"]
      401 GETUPVAL                         R4 0
      402 GETTABLEKS                       R4 R4 K43 ["serializeAttachmentCFrame"]
      404 GETTABLEKS                       R5 R0 K62 ["C1"]
      406 MOVE                             R6 R1
      407 MOVE                             R7 R2
      408 CALL                             R4 3 1
      409 SETTABLEKS                       R4 R3 K57 ["c1"]
      411 GETUPVAL                         R4 0
      412 GETTABLEKS                       R4 R4 K63 ["serializeReferenceInstance"]
      414 GETTABLEKS                       R5 R0 K64 ["Part0"]
      416 MOVE                             R6 R1
      417 MOVE                             R7 R2
      418 CALL                             R4 3 1
      419 SETTABLEKS                       R4 R3 K58 ["part0"]
      421 GETUPVAL                         R4 0
      422 GETTABLEKS                       R4 R4 K63 ["serializeReferenceInstance"]
      424 GETTABLEKS                       R5 R0 K65 ["Part1"]
      426 MOVE                             R6 R1
      427 MOVE                             R7 R2
      428 CALL                             R4 3 1
      429 SETTABLEKS                       R4 R3 K59 ["part1"]
      431 GETUPVAL                         R4 0
      432 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      434 MOVE                             R5 R0
      435 MOVE                             R6 R1
      436 MOVE                             R7 R2
      437 CALL                             R4 3 1
      438 SETTABLEKS                       R4 R3 K14 ["children"]
      440 RETURN                           R3 1
      441 LOADK                            R5 K66 ["Attachment"]
      442 NAMECALL                         R3 R0 K2 ["IsA"]
      444 CALL                             R3 2 1
      445 JUMPIFNOT                        R3 ; [+31]
      446 DUPTABLE                         R3 K67 [{"name", "archivable", "children"}]
      447 GETUPVAL                         R4 0
      448 GETTABLEKS                       R4 R4 K16 ["serialize"]
      450 GETTABLEKS                       R5 R0 K17 ["Name"]
      452 MOVE                             R6 R1
      453 MOVE                             R7 R2
      454 CALL                             R4 3 1
      455 SETTABLEKS                       R4 R3 K3 ["name"]
      457 GETUPVAL                         R4 0
      458 GETTABLEKS                       R4 R4 K16 ["serialize"]
      460 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      462 MOVE                             R6 R1
      463 MOVE                             R7 R2
      464 CALL                             R4 3 1
      465 SETTABLEKS                       R4 R3 K4 ["archivable"]
      467 GETUPVAL                         R4 0
      468 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      470 MOVE                             R5 R0
      471 MOVE                             R6 R1
      472 MOVE                             R7 R2
      473 CALL                             R4 3 1
      474 SETTABLEKS                       R4 R3 K14 ["children"]
      476 RETURN                           R3 1
      477 LOADK                            R5 K68 ["Decal"]
      478 NAMECALL                         R3 R0 K2 ["IsA"]
      480 CALL                             R3 2 1
      481 JUMPIFNOT                        R3 ; [+42]
      482 DUPTABLE                         R3 K70 [{"name", "archivable", "texture", "transparency"}]
      483 GETUPVAL                         R4 0
      484 GETTABLEKS                       R4 R4 K16 ["serialize"]
      486 GETTABLEKS                       R5 R0 K17 ["Name"]
      488 MOVE                             R6 R1
      489 MOVE                             R7 R2
      490 CALL                             R4 3 1
      491 SETTABLEKS                       R4 R3 K3 ["name"]
      493 GETUPVAL                         R4 0
      494 GETTABLEKS                       R4 R4 K16 ["serialize"]
      496 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      498 MOVE                             R6 R1
      499 MOVE                             R7 R2
      500 CALL                             R4 3 1
      501 SETTABLEKS                       R4 R3 K4 ["archivable"]
      503 GETUPVAL                         R4 0
      504 GETTABLEKS                       R4 R4 K16 ["serialize"]
      506 GETTABLEKS                       R5 R0 K71 ["Texture"]
      508 MOVE                             R6 R1
      509 MOVE                             R7 R2
      510 CALL                             R4 3 1
      511 SETTABLEKS                       R4 R3 K69 ["texture"]
      513 GETUPVAL                         R4 0
      514 GETTABLEKS                       R4 R4 K16 ["serialize"]
      516 GETTABLEKS                       R5 R0 K23 ["Transparency"]
      518 MOVE                             R6 R1
      519 MOVE                             R7 R2
      520 CALL                             R4 3 1
      521 SETTABLEKS                       R4 R3 K9 ["transparency"]
      523 RETURN                           R3 1
      524 LOADK                            R5 K71 ["Texture"]
      525 NAMECALL                         R3 R0 K2 ["IsA"]
      527 CALL                             R3 2 1
      528 JUMPIFNOT                        R3 ; [+42]
      529 DUPTABLE                         R3 K70 [{"name", "archivable", "texture", "transparency"}]
      530 GETUPVAL                         R4 0
      531 GETTABLEKS                       R4 R4 K16 ["serialize"]
      533 GETTABLEKS                       R5 R0 K17 ["Name"]
      535 MOVE                             R6 R1
      536 MOVE                             R7 R2
      537 CALL                             R4 3 1
      538 SETTABLEKS                       R4 R3 K3 ["name"]
      540 GETUPVAL                         R4 0
      541 GETTABLEKS                       R4 R4 K16 ["serialize"]
      543 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      545 MOVE                             R6 R1
      546 MOVE                             R7 R2
      547 CALL                             R4 3 1
      548 SETTABLEKS                       R4 R3 K4 ["archivable"]
      550 GETUPVAL                         R4 0
      551 GETTABLEKS                       R4 R4 K16 ["serialize"]
      553 GETTABLEKS                       R5 R0 K71 ["Texture"]
      555 MOVE                             R6 R1
      556 MOVE                             R7 R2
      557 CALL                             R4 3 1
      558 SETTABLEKS                       R4 R3 K69 ["texture"]
      560 GETUPVAL                         R4 0
      561 GETTABLEKS                       R4 R4 K16 ["serialize"]
      563 GETTABLEKS                       R5 R0 K23 ["Transparency"]
      565 MOVE                             R6 R1
      566 MOVE                             R7 R2
      567 CALL                             R4 3 1
      568 SETTABLEKS                       R4 R3 K9 ["transparency"]
      570 RETURN                           R3 1
      571 LOADK                            R5 K72 ["SurfaceAppearance"]
      572 NAMECALL                         R3 R0 K2 ["IsA"]
      574 CALL                             R3 2 1
      575 JUMPIFNOT                        R3 ; [+91]
      576 DUPTABLE                         R3 K78 [{"name", "archivable", "colorMap", "normalMap", "metalnessMap", "roughnessMap", "color", "children", "alphaMode"}]
      577 GETUPVAL                         R4 0
      578 GETTABLEKS                       R4 R4 K16 ["serialize"]
      580 GETTABLEKS                       R5 R0 K17 ["Name"]
      582 MOVE                             R6 R1
      583 MOVE                             R7 R2
      584 CALL                             R4 3 1
      585 SETTABLEKS                       R4 R3 K3 ["name"]
      587 GETUPVAL                         R4 0
      588 GETTABLEKS                       R4 R4 K16 ["serialize"]
      590 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      592 MOVE                             R6 R1
      593 MOVE                             R7 R2
      594 CALL                             R4 3 1
      595 SETTABLEKS                       R4 R3 K4 ["archivable"]
      597 GETUPVAL                         R4 0
      598 GETTABLEKS                       R4 R4 K16 ["serialize"]
      600 GETTABLEKS                       R5 R0 K79 ["ColorMap"]
      602 MOVE                             R6 R1
      603 MOVE                             R7 R2
      604 CALL                             R4 3 1
      605 SETTABLEKS                       R4 R3 K73 ["colorMap"]
      607 GETUPVAL                         R4 0
      608 GETTABLEKS                       R4 R4 K16 ["serialize"]
      610 GETTABLEKS                       R5 R0 K80 ["NormalMap"]
      612 MOVE                             R6 R1
      613 MOVE                             R7 R2
      614 CALL                             R4 3 1
      615 SETTABLEKS                       R4 R3 K74 ["normalMap"]
      617 GETUPVAL                         R4 0
      618 GETTABLEKS                       R4 R4 K16 ["serialize"]
      620 GETTABLEKS                       R5 R0 K81 ["MetalnessMap"]
      622 MOVE                             R6 R1
      623 MOVE                             R7 R2
      624 CALL                             R4 3 1
      625 SETTABLEKS                       R4 R3 K75 ["metalnessMap"]
      627 GETUPVAL                         R4 0
      628 GETTABLEKS                       R4 R4 K16 ["serialize"]
      630 GETTABLEKS                       R5 R0 K82 ["RoughnessMap"]
      632 MOVE                             R6 R1
      633 MOVE                             R7 R2
      634 CALL                             R4 3 1
      635 SETTABLEKS                       R4 R3 K76 ["roughnessMap"]
      637 GETUPVAL                         R4 0
      638 GETTABLEKS                       R4 R4 K16 ["serialize"]
      640 GETTABLEKS                       R5 R0 K25 ["Color"]
      642 MOVE                             R6 R1
      643 MOVE                             R7 R2
      644 CALL                             R4 3 1
      645 SETTABLEKS                       R4 R3 K11 ["color"]
      647 GETUPVAL                         R4 0
      648 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      650 MOVE                             R5 R0
      651 MOVE                             R6 R1
      652 MOVE                             R7 R2
      653 CALL                             R4 3 1
      654 SETTABLEKS                       R4 R3 K14 ["children"]
      656 GETUPVAL                         R4 0
      657 GETTABLEKS                       R4 R4 K16 ["serialize"]
      659 GETTABLEKS                       R5 R0 K83 ["AlphaMode"]
      661 MOVE                             R6 R1
      662 MOVE                             R7 R2
      663 CALL                             R4 3 1
      664 SETTABLEKS                       R4 R3 K77 ["alphaMode"]
      666 RETURN                           R3 1
      667 LOADK                            R5 K84 ["Accessory"]
      668 NAMECALL                         R3 R0 K2 ["IsA"]
      670 CALL                             R3 2 1
      671 JUMPIFNOT                        R3 ; [+48]
      672 GETTABLEKS                       R3 R1 K53 ["options"]
      674 GETTABLEKS                       R3 R3 K54 ["ignoreAccessories"]
      676 JUMPIFNOT                        R3 ; [+2]
      677 LOADNIL                          R3
      678 RETURN                           R3 1
      679 DUPTABLE                         R3 K86 [{"name", "archivable", "attachmentPoint", "children"}]
      680 GETUPVAL                         R4 0
      681 GETTABLEKS                       R4 R4 K16 ["serialize"]
      683 GETTABLEKS                       R5 R0 K17 ["Name"]
      685 MOVE                             R6 R1
      686 MOVE                             R7 R2
      687 CALL                             R4 3 1
      688 SETTABLEKS                       R4 R3 K3 ["name"]
      690 GETUPVAL                         R4 0
      691 GETTABLEKS                       R4 R4 K16 ["serialize"]
      693 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      695 MOVE                             R6 R1
      696 MOVE                             R7 R2
      697 CALL                             R4 3 1
      698 SETTABLEKS                       R4 R3 K4 ["archivable"]
      700 GETUPVAL                         R4 0
      701 GETTABLEKS                       R4 R4 K43 ["serializeAttachmentCFrame"]
      703 GETTABLEKS                       R5 R0 K87 ["AttachmentPoint"]
      705 MOVE                             R6 R1
      706 MOVE                             R7 R2
      707 CALL                             R4 3 1
      708 SETTABLEKS                       R4 R3 K85 ["attachmentPoint"]
      710 GETUPVAL                         R4 0
      711 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      713 MOVE                             R5 R0
      714 MOVE                             R6 R1
      715 MOVE                             R7 R2
      716 CALL                             R4 3 1
      717 SETTABLEKS                       R4 R3 K14 ["children"]
      719 RETURN                           R3 1
      720 LOADK                            R5 K88 ["BodyColors"]
      721 NAMECALL                         R3 R0 K2 ["IsA"]
      723 CALL                             R3 2 1
      724 JUMPIFNOT                        R3 ; [+91]
      725 DUPTABLE                         R3 K95 [{"name", "archivable", "headColor", "leftArmColor", "leftLegColor", "rightArmColor", "rightLegColor", "torsoColor", "children"}]
      726 GETUPVAL                         R4 0
      727 GETTABLEKS                       R4 R4 K16 ["serialize"]
      729 GETTABLEKS                       R5 R0 K17 ["Name"]
      731 MOVE                             R6 R1
      732 MOVE                             R7 R2
      733 CALL                             R4 3 1
      734 SETTABLEKS                       R4 R3 K3 ["name"]
      736 GETUPVAL                         R4 0
      737 GETTABLEKS                       R4 R4 K16 ["serialize"]
      739 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      741 MOVE                             R6 R1
      742 MOVE                             R7 R2
      743 CALL                             R4 3 1
      744 SETTABLEKS                       R4 R3 K4 ["archivable"]
      746 GETUPVAL                         R4 0
      747 GETTABLEKS                       R4 R4 K16 ["serialize"]
      749 GETTABLEKS                       R5 R0 K96 ["HeadColor"]
      751 MOVE                             R6 R1
      752 MOVE                             R7 R2
      753 CALL                             R4 3 1
      754 SETTABLEKS                       R4 R3 K89 ["headColor"]
      756 GETUPVAL                         R4 0
      757 GETTABLEKS                       R4 R4 K16 ["serialize"]
      759 GETTABLEKS                       R5 R0 K97 ["LeftArmColor"]
      761 MOVE                             R6 R1
      762 MOVE                             R7 R2
      763 CALL                             R4 3 1
      764 SETTABLEKS                       R4 R3 K90 ["leftArmColor"]
      766 GETUPVAL                         R4 0
      767 GETTABLEKS                       R4 R4 K16 ["serialize"]
      769 GETTABLEKS                       R5 R0 K98 ["LeftLegColor"]
      771 MOVE                             R6 R1
      772 MOVE                             R7 R2
      773 CALL                             R4 3 1
      774 SETTABLEKS                       R4 R3 K91 ["leftLegColor"]
      776 GETUPVAL                         R4 0
      777 GETTABLEKS                       R4 R4 K16 ["serialize"]
      779 GETTABLEKS                       R5 R0 K99 ["RightArmColor"]
      781 MOVE                             R6 R1
      782 MOVE                             R7 R2
      783 CALL                             R4 3 1
      784 SETTABLEKS                       R4 R3 K92 ["rightArmColor"]
      786 GETUPVAL                         R4 0
      787 GETTABLEKS                       R4 R4 K16 ["serialize"]
      789 GETTABLEKS                       R5 R0 K100 ["RightLegColor"]
      791 MOVE                             R6 R1
      792 MOVE                             R7 R2
      793 CALL                             R4 3 1
      794 SETTABLEKS                       R4 R3 K93 ["rightLegColor"]
      796 GETUPVAL                         R4 0
      797 GETTABLEKS                       R4 R4 K16 ["serialize"]
      799 GETTABLEKS                       R5 R0 K101 ["TorsoColor"]
      801 MOVE                             R6 R1
      802 MOVE                             R7 R2
      803 CALL                             R4 3 1
      804 SETTABLEKS                       R4 R3 K94 ["torsoColor"]
      806 GETUPVAL                         R4 0
      807 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      809 MOVE                             R5 R0
      810 MOVE                             R6 R1
      811 MOVE                             R7 R2
      812 CALL                             R4 3 1
      813 SETTABLEKS                       R4 R3 K14 ["children"]
      815 RETURN                           R3 1
      816 LOADK                            R5 K102 ["NumberValue"]
      817 NAMECALL                         R3 R0 K2 ["IsA"]
      819 CALL                             R3 2 1
      820 JUMPIFNOT                        R3 ; [+47]
      821 GETUPVAL                         R3 0
      822 GETTABLEKS                       R3 R3 K103 ["isScalingHumanoidNumber"]
      824 MOVE                             R4 R0
      825 CALL                             R3 1 1
      826 JUMPIFNOT                        R3 ; [+41]
      827 DUPTABLE                         R3 K105 [{"name", "archivable", "value", "children"}]
      828 GETUPVAL                         R4 0
      829 GETTABLEKS                       R4 R4 K16 ["serialize"]
      831 GETTABLEKS                       R5 R0 K17 ["Name"]
      833 MOVE                             R6 R1
      834 MOVE                             R7 R2
      835 CALL                             R4 3 1
      836 SETTABLEKS                       R4 R3 K3 ["name"]
      838 GETUPVAL                         R4 0
      839 GETTABLEKS                       R4 R4 K16 ["serialize"]
      841 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      843 MOVE                             R6 R1
      844 MOVE                             R7 R2
      845 CALL                             R4 3 1
      846 SETTABLEKS                       R4 R3 K4 ["archivable"]
      848 GETUPVAL                         R4 0
      849 GETTABLEKS                       R4 R4 K106 ["serializeScalingHumanoidNumber"]
      851 GETTABLEKS                       R5 R0 K107 ["Value"]
      853 MOVE                             R6 R1
      854 MOVE                             R7 R2
      855 CALL                             R4 3 1
      856 SETTABLEKS                       R4 R3 K104 ["value"]
      858 GETUPVAL                         R4 0
      859 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      861 MOVE                             R5 R0
      862 MOVE                             R6 R1
      863 MOVE                             R7 R2
      864 CALL                             R4 3 1
      865 SETTABLEKS                       R4 R3 K14 ["children"]
      867 RETURN                           R3 1
      868 LOADK                            R5 K108 ["ValueBase"]
      869 NAMECALL                         R3 R0 K2 ["IsA"]
      871 CALL                             R3 2 1
      872 JUMPIFNOT                        R3 ; [+98]
      873 GETUPVAL                         R3 0
      874 GETTABLEKS                       R3 R3 K109 ["isAttachmentOriginalPositionValue"]
      876 MOVE                             R4 R0
      877 CALL                             R3 1 1
      878 JUMPIFNOT                        R3 ; [+41]
      879 DUPTABLE                         R3 K111 [{"name", "className", "archivable", "children"}]
      880 GETUPVAL                         R4 0
      881 GETTABLEKS                       R4 R4 K16 ["serialize"]
      883 GETTABLEKS                       R5 R0 K17 ["Name"]
      885 MOVE                             R6 R1
      886 MOVE                             R7 R2
      887 CALL                             R4 3 1
      888 SETTABLEKS                       R4 R3 K3 ["name"]
      890 GETUPVAL                         R4 0
      891 GETTABLEKS                       R4 R4 K16 ["serialize"]
      893 GETTABLEKS                       R5 R0 K112 ["ClassName"]
      895 MOVE                             R6 R1
      896 MOVE                             R7 R2
      897 CALL                             R4 3 1
      898 SETTABLEKS                       R4 R3 K110 ["className"]
      900 GETUPVAL                         R4 0
      901 GETTABLEKS                       R4 R4 K16 ["serialize"]
      903 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      905 MOVE                             R6 R1
      906 MOVE                             R7 R2
      907 CALL                             R4 3 1
      908 SETTABLEKS                       R4 R3 K4 ["archivable"]
      910 GETUPVAL                         R4 0
      911 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      913 MOVE                             R5 R0
      914 MOVE                             R6 R1
      915 MOVE                             R7 R2
      916 CALL                             R4 3 1
      917 SETTABLEKS                       R4 R3 K14 ["children"]
      919 RETURN                           R3 1
      920 DUPTABLE                         R3 K113 [{"name", "className", "archivable", "value", "children"}]
      921 GETUPVAL                         R4 0
      922 GETTABLEKS                       R4 R4 K16 ["serialize"]
      924 GETTABLEKS                       R5 R0 K17 ["Name"]
      926 MOVE                             R6 R1
      927 MOVE                             R7 R2
      928 CALL                             R4 3 1
      929 SETTABLEKS                       R4 R3 K3 ["name"]
      931 GETUPVAL                         R4 0
      932 GETTABLEKS                       R4 R4 K16 ["serialize"]
      934 GETTABLEKS                       R5 R0 K112 ["ClassName"]
      936 MOVE                             R6 R1
      937 MOVE                             R7 R2
      938 CALL                             R4 3 1
      939 SETTABLEKS                       R4 R3 K110 ["className"]
      941 GETUPVAL                         R4 0
      942 GETTABLEKS                       R4 R4 K16 ["serialize"]
      944 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      946 MOVE                             R6 R1
      947 MOVE                             R7 R2
      948 CALL                             R4 3 1
      949 SETTABLEKS                       R4 R3 K4 ["archivable"]
      951 GETUPVAL                         R4 0
      952 GETTABLEKS                       R4 R4 K16 ["serialize"]
      954 GETTABLEKS                       R5 R0 K107 ["Value"]
      956 MOVE                             R6 R1
      957 MOVE                             R7 R2
      958 CALL                             R4 3 1
      959 SETTABLEKS                       R4 R3 K104 ["value"]
      961 GETUPVAL                         R4 0
      962 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      964 MOVE                             R5 R0
      965 MOVE                             R6 R1
      966 MOVE                             R7 R2
      967 CALL                             R4 3 1
      968 SETTABLEKS                       R4 R3 K14 ["children"]
      970 RETURN                           R3 1
      971 LOADK                            R5 K114 ["Humanoid"]
      972 NAMECALL                         R3 R0 K2 ["IsA"]
      974 CALL                             R3 2 1
      975 JUMPIFNOT                        R3 ; [+221]
      976 DUPTABLE                         R3 K134 [{"name", "archivable", "rigType", "autoRotate", "breakJointsOnDeath", "evaluateStateMachine", "requiresNeck", "health", "maxHealth", "hipHeight", "maxSlopeAngle", "autoJumpEnabled", "useJumpPower", "healthDisplayType", "displayName", "displayDistanceType", "cameraOffset", "automaticScalingEnabled", "nameOcclusion", "sit", "jump", "children"}]
      977 GETUPVAL                         R4 0
      978 GETTABLEKS                       R4 R4 K16 ["serialize"]
      980 GETTABLEKS                       R5 R0 K17 ["Name"]
      982 MOVE                             R6 R1
      983 MOVE                             R7 R2
      984 CALL                             R4 3 1
      985 SETTABLEKS                       R4 R3 K3 ["name"]
      987 GETUPVAL                         R4 0
      988 GETTABLEKS                       R4 R4 K16 ["serialize"]
      990 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      992 MOVE                             R6 R1
      993 MOVE                             R7 R2
      994 CALL                             R4 3 1
      995 SETTABLEKS                       R4 R3 K4 ["archivable"]
      997 GETUPVAL                         R4 0
      998 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1000 GETTABLEKS                       R5 R0 K135 ["RigType"]
     1002 MOVE                             R6 R1
     1003 MOVE                             R7 R2
     1004 CALL                             R4 3 1
     1005 SETTABLEKS                       R4 R3 K115 ["rigType"]
     1007 GETUPVAL                         R4 0
     1008 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1010 GETTABLEKS                       R5 R0 K136 ["AutoRotate"]
     1012 MOVE                             R6 R1
     1013 MOVE                             R7 R2
     1014 CALL                             R4 3 1
     1015 SETTABLEKS                       R4 R3 K116 ["autoRotate"]
     1017 GETUPVAL                         R4 0
     1018 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1020 GETTABLEKS                       R5 R0 K137 ["BreakJointsOnDeath"]
     1022 MOVE                             R6 R1
     1023 MOVE                             R7 R2
     1024 CALL                             R4 3 1
     1025 SETTABLEKS                       R4 R3 K117 ["breakJointsOnDeath"]
     1027 GETUPVAL                         R4 0
     1028 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1030 GETTABLEKS                       R5 R0 K138 ["EvaluateStateMachine"]
     1032 MOVE                             R6 R1
     1033 MOVE                             R7 R2
     1034 CALL                             R4 3 1
     1035 SETTABLEKS                       R4 R3 K118 ["evaluateStateMachine"]
     1037 GETUPVAL                         R4 0
     1038 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1040 GETTABLEKS                       R5 R0 K139 ["RequiresNeck"]
     1042 MOVE                             R6 R1
     1043 MOVE                             R7 R2
     1044 CALL                             R4 3 1
     1045 SETTABLEKS                       R4 R3 K119 ["requiresNeck"]
     1047 GETUPVAL                         R4 0
     1048 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1050 GETTABLEKS                       R5 R0 K140 ["Health"]
     1052 MOVE                             R6 R1
     1053 MOVE                             R7 R2
     1054 CALL                             R4 3 1
     1055 SETTABLEKS                       R4 R3 K120 ["health"]
     1057 GETUPVAL                         R4 0
     1058 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1060 GETTABLEKS                       R5 R0 K141 ["MaxHealth"]
     1062 MOVE                             R6 R1
     1063 MOVE                             R7 R2
     1064 CALL                             R4 3 1
     1065 SETTABLEKS                       R4 R3 K121 ["maxHealth"]
     1067 GETUPVAL                         R4 0
     1068 GETTABLEKS                       R4 R4 K106 ["serializeScalingHumanoidNumber"]
     1070 GETTABLEKS                       R5 R0 K142 ["HipHeight"]
     1072 MOVE                             R6 R1
     1073 MOVE                             R7 R2
     1074 CALL                             R4 3 1
     1075 SETTABLEKS                       R4 R3 K122 ["hipHeight"]
     1077 GETUPVAL                         R4 0
     1078 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1080 GETTABLEKS                       R5 R0 K143 ["MaxSlopeAngle"]
     1082 MOVE                             R6 R1
     1083 MOVE                             R7 R2
     1084 CALL                             R4 3 1
     1085 SETTABLEKS                       R4 R3 K123 ["maxSlopeAngle"]
     1087 GETUPVAL                         R4 0
     1088 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1090 GETTABLEKS                       R5 R0 K144 ["AutoJumpEnabled"]
     1092 MOVE                             R6 R1
     1093 MOVE                             R7 R2
     1094 CALL                             R4 3 1
     1095 SETTABLEKS                       R4 R3 K124 ["autoJumpEnabled"]
     1097 GETUPVAL                         R4 0
     1098 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1100 GETTABLEKS                       R5 R0 K145 ["UseJumpPower"]
     1102 MOVE                             R6 R1
     1103 MOVE                             R7 R2
     1104 CALL                             R4 3 1
     1105 SETTABLEKS                       R4 R3 K125 ["useJumpPower"]
     1107 GETUPVAL                         R4 0
     1108 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1110 GETTABLEKS                       R5 R0 K146 ["HealthDisplayType"]
     1112 MOVE                             R6 R1
     1113 MOVE                             R7 R2
     1114 CALL                             R4 3 1
     1115 SETTABLEKS                       R4 R3 K126 ["healthDisplayType"]
     1117 GETUPVAL                         R4 0
     1118 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1120 GETTABLEKS                       R5 R0 K147 ["DisplayName"]
     1122 MOVE                             R6 R1
     1123 MOVE                             R7 R2
     1124 CALL                             R4 3 1
     1125 SETTABLEKS                       R4 R3 K127 ["displayName"]
     1127 GETUPVAL                         R4 0
     1128 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1130 GETTABLEKS                       R5 R0 K148 ["DisplayDistanceType"]
     1132 MOVE                             R6 R1
     1133 MOVE                             R7 R2
     1134 CALL                             R4 3 1
     1135 SETTABLEKS                       R4 R3 K128 ["displayDistanceType"]
     1137 GETUPVAL                         R4 0
     1138 GETTABLEKS                       R4 R4 K149 ["serializeAttachmentPosition"]
     1140 GETTABLEKS                       R5 R0 K150 ["CameraOffset"]
     1142 MOVE                             R6 R1
     1143 MOVE                             R7 R2
     1144 CALL                             R4 3 1
     1145 SETTABLEKS                       R4 R3 K129 ["cameraOffset"]
     1147 GETUPVAL                         R4 0
     1148 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1150 GETTABLEKS                       R5 R0 K151 ["AutomaticScalingEnabled"]
     1152 MOVE                             R6 R1
     1153 MOVE                             R7 R2
     1154 CALL                             R4 3 1
     1155 SETTABLEKS                       R4 R3 K130 ["automaticScalingEnabled"]
     1157 GETUPVAL                         R4 0
     1158 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1160 GETTABLEKS                       R5 R0 K152 ["NameOcclusion"]
     1162 MOVE                             R6 R1
     1163 MOVE                             R7 R2
     1164 CALL                             R4 3 1
     1165 SETTABLEKS                       R4 R3 K131 ["nameOcclusion"]
     1167 GETUPVAL                         R4 0
     1168 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1170 GETTABLEKS                       R5 R0 K153 ["Sit"]
     1172 MOVE                             R6 R1
     1173 MOVE                             R7 R2
     1174 CALL                             R4 3 1
     1175 SETTABLEKS                       R4 R3 K132 ["sit"]
     1177 GETUPVAL                         R4 0
     1178 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1180 GETTABLEKS                       R5 R0 K154 ["Jump"]
     1182 MOVE                             R6 R1
     1183 MOVE                             R7 R2
     1184 CALL                             R4 3 1
     1185 SETTABLEKS                       R4 R3 K133 ["jump"]
     1187 GETUPVAL                         R4 0
     1188 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1190 MOVE                             R5 R0
     1191 MOVE                             R6 R1
     1192 MOVE                             R7 R2
     1193 CALL                             R4 3 1
     1194 SETTABLEKS                       R4 R3 K14 ["children"]
     1196 RETURN                           R3 1
     1197 GETUPVAL                         R3 1
     1198 CALL                             R3 0 1
     1199 JUMPIFNOT                        R3 ; [+46]
     1200 LOADK                            R5 K155 ["HumanoidDescription"]
     1201 NAMECALL                         R3 R0 K2 ["IsA"]
     1203 CALL                             R3 2 1
     1204 JUMPIFNOT                        R3 ; [+41]
     1205 DUPTABLE                         R3 K111 [{"name", "className", "archivable", "children"}]
     1206 GETUPVAL                         R4 0
     1207 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1209 GETTABLEKS                       R5 R0 K17 ["Name"]
     1211 MOVE                             R6 R1
     1212 MOVE                             R7 R2
     1213 CALL                             R4 3 1
     1214 SETTABLEKS                       R4 R3 K3 ["name"]
     1216 GETUPVAL                         R4 0
     1217 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1219 GETTABLEKS                       R5 R0 K112 ["ClassName"]
     1221 MOVE                             R6 R1
     1222 MOVE                             R7 R2
     1223 CALL                             R4 3 1
     1224 SETTABLEKS                       R4 R3 K110 ["className"]
     1226 GETUPVAL                         R4 0
     1227 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1229 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1231 MOVE                             R6 R1
     1232 MOVE                             R7 R2
     1233 CALL                             R4 3 1
     1234 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1236 GETUPVAL                         R4 0
     1237 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1239 MOVE                             R5 R0
     1240 MOVE                             R6 R1
     1241 MOVE                             R7 R2
     1242 CALL                             R4 3 1
     1243 SETTABLEKS                       R4 R3 K14 ["children"]
     1245 RETURN                           R3 1
     1246 GETUPVAL                         R3 2
     1247 CALL                             R3 0 1
     1248 JUMPIFNOT                        R3 ; [+51]
     1249 LOADK                            R5 K156 ["Model"]
     1250 NAMECALL                         R3 R0 K2 ["IsA"]
     1252 CALL                             R3 2 1
     1253 JUMPIF                           R3 ; [+5]
     1254 LOADK                            R5 K157 ["Folder"]
     1255 NAMECALL                         R3 R0 K2 ["IsA"]
     1257 CALL                             R3 2 1
     1258 JUMPIFNOT                        R3 ; [+41]
     1259 DUPTABLE                         R3 K111 [{"name", "className", "archivable", "children"}]
     1260 GETUPVAL                         R4 0
     1261 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1263 GETTABLEKS                       R5 R0 K17 ["Name"]
     1265 MOVE                             R6 R1
     1266 MOVE                             R7 R2
     1267 CALL                             R4 3 1
     1268 SETTABLEKS                       R4 R3 K3 ["name"]
     1270 GETUPVAL                         R4 0
     1271 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1273 GETTABLEKS                       R5 R0 K112 ["ClassName"]
     1275 MOVE                             R6 R1
     1276 MOVE                             R7 R2
     1277 CALL                             R4 3 1
     1278 SETTABLEKS                       R4 R3 K110 ["className"]
     1280 GETUPVAL                         R4 0
     1281 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1283 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1285 MOVE                             R6 R1
     1286 MOVE                             R7 R2
     1287 CALL                             R4 3 1
     1288 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1290 GETUPVAL                         R4 0
     1291 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1293 MOVE                             R5 R0
     1294 MOVE                             R6 R1
     1295 MOVE                             R7 R2
     1296 CALL                             R4 3 1
     1297 SETTABLEKS                       R4 R3 K14 ["children"]
     1299 RETURN                           R3 1
     1300 GETUPVAL                         R3 2
     1301 CALL                             R3 0 1
     1302 JUMPIFNOT                        R3 ; [+50]
     1303 GETTABLEKS                       R3 R1 K53 ["options"]
     1305 GETTABLEKS                       R3 R3 K158 ["globalDebugDifferences"]
     1307 JUMPIFNOT                        R3 ; [+13]
     1308 GETIMPORT                        R3 K160 [warn]
     1310 LOADK                            R5 K161 ["[CharacterHashUtils] Unrecognized type serialized as leaf: %* (%*)"]
     1311 GETTABLEKS                       R7 R0 K112 ["ClassName"]
     1313 NAMECALL                         R8 R0 K162 ["GetFullName"]
     1315 CALL                             R8 1 1
     1316 NAMECALL                         R5 R5 K163 ["format"]
     1318 CALL                             R5 3 1
     1319 MOVE                             R4 R5
     1320 CALL                             R3 1 0
     1321 DUPTABLE                         R3 K164 [{"name", "className", "archivable"}]
     1322 GETUPVAL                         R4 0
     1323 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1325 GETTABLEKS                       R5 R0 K17 ["Name"]
     1327 MOVE                             R6 R1
     1328 MOVE                             R7 R2
     1329 CALL                             R4 3 1
     1330 SETTABLEKS                       R4 R3 K3 ["name"]
     1332 GETUPVAL                         R4 0
     1333 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1335 GETTABLEKS                       R5 R0 K112 ["ClassName"]
     1337 MOVE                             R6 R1
     1338 MOVE                             R7 R2
     1339 CALL                             R4 3 1
     1340 SETTABLEKS                       R4 R3 K110 ["className"]
     1342 GETUPVAL                         R4 0
     1343 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1345 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1347 MOVE                             R6 R1
     1348 MOVE                             R7 R2
     1349 CALL                             R4 3 1
     1350 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1352 RETURN                           R3 1
     1353 DUPTABLE                         R3 K111 [{"name", "className", "archivable", "children"}]
     1354 GETUPVAL                         R4 0
     1355 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1357 GETTABLEKS                       R5 R0 K17 ["Name"]
     1359 MOVE                             R6 R1
     1360 MOVE                             R7 R2
     1361 CALL                             R4 3 1
     1362 SETTABLEKS                       R4 R3 K3 ["name"]
     1364 GETUPVAL                         R4 0
     1365 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1367 GETTABLEKS                       R5 R0 K112 ["ClassName"]
     1369 MOVE                             R6 R1
     1370 MOVE                             R7 R2
     1371 CALL                             R4 3 1
     1372 SETTABLEKS                       R4 R3 K110 ["className"]
     1374 GETUPVAL                         R4 0
     1375 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1377 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1379 MOVE                             R6 R1
     1380 MOVE                             R7 R2
     1381 CALL                             R4 3 1
     1382 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1384 GETUPVAL                         R4 0
     1385 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1387 MOVE                             R5 R0
     1388 MOVE                             R6 R1
     1389 MOVE                             R7 R2
     1390 CALL                             R4 3 1
     1391 SETTABLEKS                       R4 R3 K14 ["children"]
     1393 RETURN                           R3 1

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
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R1 K11 ["Src"]
       44 GETTABLEKS                       R6 R6 K14 ["Flags"]
       46 GETTABLEKS                       R6 R6 K16 ["getFFlagAvatarPreviewerStartFromAssetId"]
       48 CALL                             R5 1 1
       49 NEWTABLE                         R6 32 0
       51 DUPCLOSURE                       R7 K17 [PROTO_0]
       52 SETTABLEKS                       R7 R6 K18 ["canEncodeStringSafely"]
       54 DUPCLOSURE                       R7 K19 [PROTO_1]
       55 SETTABLEKS                       R7 R6 K20 ["canEncodeNumberSafely"]
       57 DUPCLOSURE                       R7 K21 [PROTO_2]
       58 CAPTURE                          VAL R6
       59 SETTABLEKS                       R7 R6 K22 ["cutPrecision"]
       61 DUPCLOSURE                       R7 K23 [PROTO_3]
       62 SETTABLEKS                       R7 R6 K24 ["cutListPrecision"]
       64 NEWTABLE                         R7 0 64
       66 LOADK                            R8 K25 ["alphaMode"]
       67 LOADK                            R9 K26 ["archivable"]
       68 LOADK                            R10 K27 ["attachmentPoint"]
       69 LOADK                            R11 K28 ["autoJumpEnabled"]
       70 LOADK                            R12 K29 ["autoRotate"]
       71 LOADK                            R13 K30 ["autoSkin"]
       72 LOADK                            R14 K31 ["automaticScalingEnabled"]
       73 LOADK                            R15 K32 ["bindOffset"]
       74 LOADK                            R16 K33 ["breakJointsOnDeath"]
       75 LOADK                            R17 K34 ["c0"]
       76 LOADK                            R18 K35 ["c1"]
       77 LOADK                            R19 K36 ["cageOrigin"]
       78 LOADK                            R20 K37 ["cameraOffset"]
       79 LOADK                            R21 K38 ["cframe"]
       80 LOADK                            R22 K39 ["children"]
       81 LOADK                            R23 K40 ["className"]
       82 SETLIST                          R7 R8 16 [1]
       84 LOADK                            R8 K41 ["color"]
       85 LOADK                            R9 K42 ["colorMap"]
       86 LOADK                            R10 K43 ["displayDistanceType"]
       87 LOADK                            R11 K44 ["displayName"]
       88 LOADK                            R12 K45 ["enabled"]
       89 LOADK                            R13 K46 ["evaluateStateMachine"]
       90 LOADK                            R14 K47 ["headColor"]
       91 LOADK                            R15 K48 ["health"]
       92 LOADK                            R16 K49 ["healthDisplayDistance"]
       93 LOADK                            R17 K50 ["healthDisplayType"]
       94 LOADK                            R18 K51 ["hipHeight"]
       95 LOADK                            R19 K52 ["importOrigin"]
       96 LOADK                            R20 K53 ["jump"]
       97 LOADK                            R21 K54 ["jumpPower"]
       98 LOADK                            R22 K55 ["leftArmColor"]
       99 LOADK                            R23 K56 ["leftLegColor"]
      100 SETLIST                          R7 R8 16 [17]
      102 LOADK                            R8 K57 ["material"]
      103 LOADK                            R9 K58 ["materialVariant"]
      104 LOADK                            R10 K59 ["maxHealth"]
      105 LOADK                            R11 K60 ["maxSlopeAngle"]
      106 LOADK                            R12 K61 ["meshId"]
      107 LOADK                            R13 K62 ["metalnessMap"]
      108 LOADK                            R14 K63 ["name"]
      109 LOADK                            R15 K64 ["nameDisplayDistance"]
      110 LOADK                            R16 K65 ["nameOcclusion"]
      111 LOADK                            R17 K66 ["normalMap"]
      112 LOADK                            R18 K67 ["order"]
      113 LOADK                            R19 K68 ["part0"]
      114 LOADK                            R20 K69 ["part1"]
      115 LOADK                            R21 K70 ["puffiness"]
      116 LOADK                            R22 K71 ["referenceMeshId"]
      117 LOADK                            R23 K72 ["referenceOrigin"]
      118 SETLIST                          R7 R8 16 [33]
      120 LOADK                            R8 K73 ["reflectance"]
      121 LOADK                            R9 K74 ["requiresNeck"]
      122 LOADK                            R10 K75 ["rigType"]
      123 LOADK                            R11 K76 ["rightArmColor"]
      124 LOADK                            R12 K77 ["rightLegColor"]
      125 LOADK                            R13 K78 ["roughnessMap"]
      126 LOADK                            R14 K79 ["shrinkFactor"]
      127 LOADK                            R15 K80 ["sit"]
      128 LOADK                            R16 K81 ["size"]
      129 LOADK                            R17 K82 ["texture"]
      130 LOADK                            R18 K83 ["textureId"]
      131 LOADK                            R19 K84 ["torsoColor"]
      132 LOADK                            R20 K85 ["transparency"]
      133 LOADK                            R21 K86 ["useJumpPower"]
      134 LOADK                            R22 K87 ["value"]
      135 LOADK                            R23 K88 ["walkSpeed"]
      136 SETLIST                          R7 R8 16 [49]
      138 LENGTH                           R10 R7
      139 LOADN                            R11 64
      140 JUMPIFLE                         R10 R11 ; [+2]
      142 LOADB                            R9 0 +1
      143 LOADB                            R9 1
      144 FASTCALL2K                       ASSERT R9 K89 ; [+4]
      146 LOADK                            R10 K89 ["Too many well known ids"]
      147 GETIMPORT                        R8 K91 [assert]
      149 CALL                             R8 2 0
      150 NEWTABLE                         R8 0 0
      152 MOVE                             R9 R7
      153 LOADNIL                          R10
      154 LOADNIL                          R11
      155 FORGPREP                         R9
      156 LOADK                            R16 K92 ["0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+-"]
      157 FASTCALL2                        STRING_BYTE R16 R12 ; [+4]
      159 MOVE                             R17 R12
      160 GETIMPORT                        R15 K95 [string.byte]
      162 CALL                             R15 2 -1
      163 FASTCALL                         STRING_CHAR ; [+2]
      164 GETIMPORT                        R14 K97 [string.char]
      166 CALL                             R14 -1 1
      167 SETTABLE                         R14 R8 R13
      168 FORGLOOP                         R9 2 ; [-13]
      170 DUPCLOSURE                       R9 K98 [PROTO_4]
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R8
      174 SETTABLEKS                       R9 R6 K99 ["serialize"]
      176 DUPCLOSURE                       R9 K100 [PROTO_5]
      177 CAPTURE                          VAL R6
      178 SETTABLEKS                       R9 R6 K101 ["serializeSize"]
      180 DUPCLOSURE                       R9 K102 [PROTO_6]
      181 CAPTURE                          VAL R6
      182 SETTABLEKS                       R9 R6 K103 ["serializePartCFrame"]
      184 DUPCLOSURE                       R9 K104 [PROTO_7]
      185 CAPTURE                          VAL R6
      186 SETTABLEKS                       R9 R6 K105 ["serializePosition"]
      188 DUPCLOSURE                       R9 K106 [PROTO_8]
      189 CAPTURE                          VAL R6
      190 SETTABLEKS                       R9 R6 K107 ["serializeAttachmentCFrame"]
      192 DUPCLOSURE                       R9 K108 [PROTO_9]
      193 CAPTURE                          VAL R6
      194 SETTABLEKS                       R9 R6 K109 ["serializeAttachmentPosition"]
      196 DUPCLOSURE                       R9 K110 [PROTO_10]
      197 CAPTURE                          VAL R6
      198 SETTABLEKS                       R9 R6 K111 ["serializeScalingHumanoidNumber"]
      200 DUPCLOSURE                       R9 K112 [PROTO_11]
      201 CAPTURE                          VAL R6
      202 SETTABLEKS                       R9 R6 K113 ["serializeReferenceInstance"]
      204 NEWTABLE                         R9 4 0
      206 LOADB                            R10 1
      207 SETTABLEKS                       R10 R9 K114 ["BodyHeightScale"]
      209 LOADB                            R10 1
      210 SETTABLEKS                       R10 R9 K115 ["BodyWidthScale"]
      212 LOADB                            R10 1
      213 SETTABLEKS                       R10 R9 K116 ["BodyDepthScale"]
      215 LOADB                            R10 1
      216 SETTABLEKS                       R10 R9 K117 ["HeadScale"]
      218 DUPCLOSURE                       R10 K118 [PROTO_12]
      219 CAPTURE                          VAL R9
      220 SETTABLEKS                       R10 R6 K119 ["isScalingHumanoidNumber"]
      222 DUPCLOSURE                       R10 K120 [PROTO_13]
      223 SETTABLEKS                       R10 R6 K121 ["isAttachmentOriginalPositionValue"]
      225 DUPCLOSURE                       R10 K122 [PROTO_14]
      226 CAPTURE                          VAL R6
      227 CAPTURE                          VAL R5
      228 CAPTURE                          VAL R4
      229 SETTABLEKS                       R10 R6 K123 ["serializeInstanceRaw"]
      231 DUPCLOSURE                       R10 K124 [PROTO_16]
      232 CAPTURE                          VAL R6
      233 SETTABLEKS                       R10 R6 K125 ["serializeChildren"]
      235 DUPCLOSURE                       R10 K126 [PROTO_18]
      236 CAPTURE                          VAL R4
      237 CAPTURE                          VAL R3
      238 SETTABLEKS                       R10 R6 K127 ["computeHashSerializeContext"]
      240 LOADNIL                          R10
      241 DUPCLOSURE                       R11 K128 [PROTO_19]
      242 CAPTURE                          VAL R11
      243 NEWCLOSURE                       R12 P18
      244 CAPTURE                          VAL R6
      245 CAPTURE                          VAL R0
      246 CAPTURE                          VAL R2
      247 CAPTURE                          REF R10
      248 CAPTURE                          VAL R11
      249 SETTABLEKS                       R12 R6 K129 ["hashCharacter"]
      251 CLOSEUPVALS                      R10
      252 RETURN                           R6 1
