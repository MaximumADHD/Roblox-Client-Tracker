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
        8 GETUPVAL                         R5 0
        9 CALL                             R5 0 1
       10 JUMPIFNOT                        R5 ; [+17]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["serialize"]
       14 GETTABLEKS                       R6 R0 K4 ["Rotation"]
       16 GETTABLEKS                       R8 R3 K5 ["Position"]
       18 GETTABLEKS                       R9 R1 K0 ["state"]
       20 GETTABLEKS                       R9 R9 K6 ["boundingSize"]
       22 DIV                              R7 R8 R9
       23 ADD                              R5 R6 R7
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 CALL                             R4 3 1
       27 RETURN                           R4 1
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K3 ["serialize"]
       31 GETTABLEKS                       R6 R3 K4 ["Rotation"]
       33 GETTABLEKS                       R8 R3 K5 ["Position"]
       35 GETTABLEKS                       R9 R1 K0 ["state"]
       37 GETTABLEKS                       R9 R9 K6 ["boundingSize"]
       39 DIV                              R7 R8 R9
       40 ADD                              R5 R6 R7
       41 MOVE                             R6 R1
       42 MOVE                             R7 R2
       43 CALL                             R4 3 1
       44 RETURN                           R4 1

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getFFlagAvatarPreviewerAttachmentFix() must be enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADK                            R3 K3 ["Vector3Value"]
        9 NAMECALL                         R1 R0 K4 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+16]
       13 GETTABLEKS                       R1 R0 K5 ["Name"]
       15 JUMPIFNOTEQKS                    R1 K6 ["OriginalPosition"] ; [+13]
       17 GETTABLEKS                       R1 R0 K7 ["Parent"]
       19 JUMPIFNOT                        R1 ; [+9]
       20 GETTABLEKS                       R1 R0 K7 ["Parent"]
       22 LOADK                            R3 K8 ["Attachment"]
       23 NAMECALL                         R1 R1 K4 ["IsA"]
       25 CALL                             R1 2 1
       26 JUMPIFNOT                        R1 ; [+2]
       27 LOADB                            R1 1
       28 RETURN                           R1 1
       29 LOADB                            R1 0
       30 RETURN                           R1 1

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
      378 JUMPIFNOT                        R3 ; [+85]
      379 GETUPVAL                         R3 1
      380 CALL                             R3 0 1
      381 JUMPIFNOT                        R3 ; [+11]
      382 GETTABLEKS                       R3 R1 K57 ["options"]
      384 GETTABLEKS                       R3 R3 K58 ["ignoreAccessories"]
      386 JUMPIFNOT                        R3 ; [+6]
      387 GETTABLEKS                       R3 R0 K17 ["Name"]
      389 JUMPIFNOTEQKS                    R3 K59 ["AccessoryWeld"] ; [+3]
      391 LOADNIL                          R3
      392 RETURN                           R3 1
      393 DUPTABLE                         R3 K64 [{"name", "archivable", "c0", "c1", "part0", "part1", "children"}]
      394 GETUPVAL                         R4 0
      395 GETTABLEKS                       R4 R4 K16 ["serialize"]
      397 GETTABLEKS                       R5 R0 K17 ["Name"]
      399 MOVE                             R6 R1
      400 MOVE                             R7 R2
      401 CALL                             R4 3 1
      402 SETTABLEKS                       R4 R3 K3 ["name"]
      404 GETUPVAL                         R4 0
      405 GETTABLEKS                       R4 R4 K16 ["serialize"]
      407 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      409 MOVE                             R6 R1
      410 MOVE                             R7 R2
      411 CALL                             R4 3 1
      412 SETTABLEKS                       R4 R3 K4 ["archivable"]
      414 GETUPVAL                         R4 0
      415 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      417 GETTABLEKS                       R5 R0 K65 ["C0"]
      419 MOVE                             R6 R1
      420 MOVE                             R7 R2
      421 CALL                             R4 3 1
      422 SETTABLEKS                       R4 R3 K60 ["c0"]
      424 GETUPVAL                         R4 0
      425 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      427 GETTABLEKS                       R5 R0 K66 ["C1"]
      429 MOVE                             R6 R1
      430 MOVE                             R7 R2
      431 CALL                             R4 3 1
      432 SETTABLEKS                       R4 R3 K61 ["c1"]
      434 GETUPVAL                         R4 0
      435 GETTABLEKS                       R4 R4 K67 ["serializeReferenceInstance"]
      437 GETTABLEKS                       R5 R0 K68 ["Part0"]
      439 MOVE                             R6 R1
      440 MOVE                             R7 R2
      441 CALL                             R4 3 1
      442 SETTABLEKS                       R4 R3 K62 ["part0"]
      444 GETUPVAL                         R4 0
      445 GETTABLEKS                       R4 R4 K67 ["serializeReferenceInstance"]
      447 GETTABLEKS                       R5 R0 K69 ["Part1"]
      449 MOVE                             R6 R1
      450 MOVE                             R7 R2
      451 CALL                             R4 3 1
      452 SETTABLEKS                       R4 R3 K63 ["part1"]
      454 GETUPVAL                         R4 0
      455 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      457 MOVE                             R5 R0
      458 MOVE                             R6 R1
      459 MOVE                             R7 R2
      460 CALL                             R4 3 1
      461 SETTABLEKS                       R4 R3 K14 ["children"]
      463 RETURN                           R3 1
      464 LOADK                            R5 K70 ["Attachment"]
      465 NAMECALL                         R3 R0 K2 ["IsA"]
      467 CALL                             R3 2 1
      468 JUMPIFNOT                        R3 ; [+75]
      469 GETUPVAL                         R3 1
      470 CALL                             R3 0 1
      471 JUMPIFNOT                        R3 ; [+31]
      472 DUPTABLE                         R3 K71 [{"name", "archivable", "children"}]
      473 GETUPVAL                         R4 0
      474 GETTABLEKS                       R4 R4 K16 ["serialize"]
      476 GETTABLEKS                       R5 R0 K17 ["Name"]
      478 MOVE                             R6 R1
      479 MOVE                             R7 R2
      480 CALL                             R4 3 1
      481 SETTABLEKS                       R4 R3 K3 ["name"]
      483 GETUPVAL                         R4 0
      484 GETTABLEKS                       R4 R4 K16 ["serialize"]
      486 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      488 MOVE                             R6 R1
      489 MOVE                             R7 R2
      490 CALL                             R4 3 1
      491 SETTABLEKS                       R4 R3 K4 ["archivable"]
      493 GETUPVAL                         R4 0
      494 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      496 MOVE                             R5 R0
      497 MOVE                             R6 R1
      498 MOVE                             R7 R2
      499 CALL                             R4 3 1
      500 SETTABLEKS                       R4 R3 K14 ["children"]
      502 RETURN                           R3 1
      503 DUPTABLE                         R3 K72 [{"name", "archivable", "cframe", "children"}]
      504 GETUPVAL                         R4 0
      505 GETTABLEKS                       R4 R4 K16 ["serialize"]
      507 GETTABLEKS                       R5 R0 K17 ["Name"]
      509 MOVE                             R6 R1
      510 MOVE                             R7 R2
      511 CALL                             R4 3 1
      512 SETTABLEKS                       R4 R3 K3 ["name"]
      514 GETUPVAL                         R4 0
      515 GETTABLEKS                       R4 R4 K16 ["serialize"]
      517 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      519 MOVE                             R6 R1
      520 MOVE                             R7 R2
      521 CALL                             R4 3 1
      522 SETTABLEKS                       R4 R3 K4 ["archivable"]
      524 GETUPVAL                         R4 0
      525 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      527 GETTABLEKS                       R5 R0 K29 ["CFrame"]
      529 MOVE                             R6 R1
      530 MOVE                             R7 R2
      531 CALL                             R4 3 1
      532 SETTABLEKS                       R4 R3 K13 ["cframe"]
      534 GETUPVAL                         R4 0
      535 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      537 MOVE                             R5 R0
      538 MOVE                             R6 R1
      539 MOVE                             R7 R2
      540 CALL                             R4 3 1
      541 SETTABLEKS                       R4 R3 K14 ["children"]
      543 RETURN                           R3 1
      544 LOADK                            R5 K73 ["Decal"]
      545 NAMECALL                         R3 R0 K2 ["IsA"]
      547 CALL                             R3 2 1
      548 JUMPIFNOT                        R3 ; [+42]
      549 DUPTABLE                         R3 K75 [{"name", "archivable", "texture", "transparency"}]
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
      573 GETTABLEKS                       R5 R0 K76 ["Texture"]
      575 MOVE                             R6 R1
      576 MOVE                             R7 R2
      577 CALL                             R4 3 1
      578 SETTABLEKS                       R4 R3 K74 ["texture"]
      580 GETUPVAL                         R4 0
      581 GETTABLEKS                       R4 R4 K16 ["serialize"]
      583 GETTABLEKS                       R5 R0 K23 ["Transparency"]
      585 MOVE                             R6 R1
      586 MOVE                             R7 R2
      587 CALL                             R4 3 1
      588 SETTABLEKS                       R4 R3 K9 ["transparency"]
      590 RETURN                           R3 1
      591 LOADK                            R5 K76 ["Texture"]
      592 NAMECALL                         R3 R0 K2 ["IsA"]
      594 CALL                             R3 2 1
      595 JUMPIFNOT                        R3 ; [+42]
      596 DUPTABLE                         R3 K75 [{"name", "archivable", "texture", "transparency"}]
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
      620 GETTABLEKS                       R5 R0 K76 ["Texture"]
      622 MOVE                             R6 R1
      623 MOVE                             R7 R2
      624 CALL                             R4 3 1
      625 SETTABLEKS                       R4 R3 K74 ["texture"]
      627 GETUPVAL                         R4 0
      628 GETTABLEKS                       R4 R4 K16 ["serialize"]
      630 GETTABLEKS                       R5 R0 K23 ["Transparency"]
      632 MOVE                             R6 R1
      633 MOVE                             R7 R2
      634 CALL                             R4 3 1
      635 SETTABLEKS                       R4 R3 K9 ["transparency"]
      637 RETURN                           R3 1
      638 LOADK                            R5 K77 ["SurfaceAppearance"]
      639 NAMECALL                         R3 R0 K2 ["IsA"]
      641 CALL                             R3 2 1
      642 JUMPIFNOT                        R3 ; [+91]
      643 DUPTABLE                         R3 K83 [{"name", "archivable", "colorMap", "normalMap", "metalnessMap", "roughnessMap", "color", "children", "alphaMode"}]
      644 GETUPVAL                         R4 0
      645 GETTABLEKS                       R4 R4 K16 ["serialize"]
      647 GETTABLEKS                       R5 R0 K17 ["Name"]
      649 MOVE                             R6 R1
      650 MOVE                             R7 R2
      651 CALL                             R4 3 1
      652 SETTABLEKS                       R4 R3 K3 ["name"]
      654 GETUPVAL                         R4 0
      655 GETTABLEKS                       R4 R4 K16 ["serialize"]
      657 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      659 MOVE                             R6 R1
      660 MOVE                             R7 R2
      661 CALL                             R4 3 1
      662 SETTABLEKS                       R4 R3 K4 ["archivable"]
      664 GETUPVAL                         R4 0
      665 GETTABLEKS                       R4 R4 K16 ["serialize"]
      667 GETTABLEKS                       R5 R0 K84 ["ColorMap"]
      669 MOVE                             R6 R1
      670 MOVE                             R7 R2
      671 CALL                             R4 3 1
      672 SETTABLEKS                       R4 R3 K78 ["colorMap"]
      674 GETUPVAL                         R4 0
      675 GETTABLEKS                       R4 R4 K16 ["serialize"]
      677 GETTABLEKS                       R5 R0 K85 ["NormalMap"]
      679 MOVE                             R6 R1
      680 MOVE                             R7 R2
      681 CALL                             R4 3 1
      682 SETTABLEKS                       R4 R3 K79 ["normalMap"]
      684 GETUPVAL                         R4 0
      685 GETTABLEKS                       R4 R4 K16 ["serialize"]
      687 GETTABLEKS                       R5 R0 K86 ["MetalnessMap"]
      689 MOVE                             R6 R1
      690 MOVE                             R7 R2
      691 CALL                             R4 3 1
      692 SETTABLEKS                       R4 R3 K80 ["metalnessMap"]
      694 GETUPVAL                         R4 0
      695 GETTABLEKS                       R4 R4 K16 ["serialize"]
      697 GETTABLEKS                       R5 R0 K87 ["RoughnessMap"]
      699 MOVE                             R6 R1
      700 MOVE                             R7 R2
      701 CALL                             R4 3 1
      702 SETTABLEKS                       R4 R3 K81 ["roughnessMap"]
      704 GETUPVAL                         R4 0
      705 GETTABLEKS                       R4 R4 K16 ["serialize"]
      707 GETTABLEKS                       R5 R0 K25 ["Color"]
      709 MOVE                             R6 R1
      710 MOVE                             R7 R2
      711 CALL                             R4 3 1
      712 SETTABLEKS                       R4 R3 K11 ["color"]
      714 GETUPVAL                         R4 0
      715 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      717 MOVE                             R5 R0
      718 MOVE                             R6 R1
      719 MOVE                             R7 R2
      720 CALL                             R4 3 1
      721 SETTABLEKS                       R4 R3 K14 ["children"]
      723 GETUPVAL                         R4 0
      724 GETTABLEKS                       R4 R4 K16 ["serialize"]
      726 GETTABLEKS                       R5 R0 K88 ["AlphaMode"]
      728 MOVE                             R6 R1
      729 MOVE                             R7 R2
      730 CALL                             R4 3 1
      731 SETTABLEKS                       R4 R3 K82 ["alphaMode"]
      733 RETURN                           R3 1
      734 LOADK                            R5 K89 ["Accessory"]
      735 NAMECALL                         R3 R0 K2 ["IsA"]
      737 CALL                             R3 2 1
      738 JUMPIFNOT                        R3 ; [+51]
      739 GETUPVAL                         R3 1
      740 CALL                             R3 0 1
      741 JUMPIFNOT                        R3 ; [+7]
      742 GETTABLEKS                       R3 R1 K57 ["options"]
      744 GETTABLEKS                       R3 R3 K58 ["ignoreAccessories"]
      746 JUMPIFNOT                        R3 ; [+2]
      747 LOADNIL                          R3
      748 RETURN                           R3 1
      749 DUPTABLE                         R3 K91 [{"name", "archivable", "attachmentPoint", "children"}]
      750 GETUPVAL                         R4 0
      751 GETTABLEKS                       R4 R4 K16 ["serialize"]
      753 GETTABLEKS                       R5 R0 K17 ["Name"]
      755 MOVE                             R6 R1
      756 MOVE                             R7 R2
      757 CALL                             R4 3 1
      758 SETTABLEKS                       R4 R3 K3 ["name"]
      760 GETUPVAL                         R4 0
      761 GETTABLEKS                       R4 R4 K16 ["serialize"]
      763 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      765 MOVE                             R6 R1
      766 MOVE                             R7 R2
      767 CALL                             R4 3 1
      768 SETTABLEKS                       R4 R3 K4 ["archivable"]
      770 GETUPVAL                         R4 0
      771 GETTABLEKS                       R4 R4 K45 ["serializeAttachmentCFrame"]
      773 GETTABLEKS                       R5 R0 K92 ["AttachmentPoint"]
      775 MOVE                             R6 R1
      776 MOVE                             R7 R2
      777 CALL                             R4 3 1
      778 SETTABLEKS                       R4 R3 K90 ["attachmentPoint"]
      780 GETUPVAL                         R4 0
      781 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      783 MOVE                             R5 R0
      784 MOVE                             R6 R1
      785 MOVE                             R7 R2
      786 CALL                             R4 3 1
      787 SETTABLEKS                       R4 R3 K14 ["children"]
      789 RETURN                           R3 1
      790 LOADK                            R5 K93 ["BodyColors"]
      791 NAMECALL                         R3 R0 K2 ["IsA"]
      793 CALL                             R3 2 1
      794 JUMPIFNOT                        R3 ; [+91]
      795 DUPTABLE                         R3 K100 [{"name", "archivable", "headColor", "leftArmColor", "leftLegColor", "rightArmColor", "rightLegColor", "torsoColor", "children"}]
      796 GETUPVAL                         R4 0
      797 GETTABLEKS                       R4 R4 K16 ["serialize"]
      799 GETTABLEKS                       R5 R0 K17 ["Name"]
      801 MOVE                             R6 R1
      802 MOVE                             R7 R2
      803 CALL                             R4 3 1
      804 SETTABLEKS                       R4 R3 K3 ["name"]
      806 GETUPVAL                         R4 0
      807 GETTABLEKS                       R4 R4 K16 ["serialize"]
      809 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      811 MOVE                             R6 R1
      812 MOVE                             R7 R2
      813 CALL                             R4 3 1
      814 SETTABLEKS                       R4 R3 K4 ["archivable"]
      816 GETUPVAL                         R4 0
      817 GETTABLEKS                       R4 R4 K16 ["serialize"]
      819 GETTABLEKS                       R5 R0 K101 ["HeadColor"]
      821 MOVE                             R6 R1
      822 MOVE                             R7 R2
      823 CALL                             R4 3 1
      824 SETTABLEKS                       R4 R3 K94 ["headColor"]
      826 GETUPVAL                         R4 0
      827 GETTABLEKS                       R4 R4 K16 ["serialize"]
      829 GETTABLEKS                       R5 R0 K102 ["LeftArmColor"]
      831 MOVE                             R6 R1
      832 MOVE                             R7 R2
      833 CALL                             R4 3 1
      834 SETTABLEKS                       R4 R3 K95 ["leftArmColor"]
      836 GETUPVAL                         R4 0
      837 GETTABLEKS                       R4 R4 K16 ["serialize"]
      839 GETTABLEKS                       R5 R0 K103 ["LeftLegColor"]
      841 MOVE                             R6 R1
      842 MOVE                             R7 R2
      843 CALL                             R4 3 1
      844 SETTABLEKS                       R4 R3 K96 ["leftLegColor"]
      846 GETUPVAL                         R4 0
      847 GETTABLEKS                       R4 R4 K16 ["serialize"]
      849 GETTABLEKS                       R5 R0 K104 ["RightArmColor"]
      851 MOVE                             R6 R1
      852 MOVE                             R7 R2
      853 CALL                             R4 3 1
      854 SETTABLEKS                       R4 R3 K97 ["rightArmColor"]
      856 GETUPVAL                         R4 0
      857 GETTABLEKS                       R4 R4 K16 ["serialize"]
      859 GETTABLEKS                       R5 R0 K105 ["RightLegColor"]
      861 MOVE                             R6 R1
      862 MOVE                             R7 R2
      863 CALL                             R4 3 1
      864 SETTABLEKS                       R4 R3 K98 ["rightLegColor"]
      866 GETUPVAL                         R4 0
      867 GETTABLEKS                       R4 R4 K16 ["serialize"]
      869 GETTABLEKS                       R5 R0 K106 ["TorsoColor"]
      871 MOVE                             R6 R1
      872 MOVE                             R7 R2
      873 CALL                             R4 3 1
      874 SETTABLEKS                       R4 R3 K99 ["torsoColor"]
      876 GETUPVAL                         R4 0
      877 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      879 MOVE                             R5 R0
      880 MOVE                             R6 R1
      881 MOVE                             R7 R2
      882 CALL                             R4 3 1
      883 SETTABLEKS                       R4 R3 K14 ["children"]
      885 RETURN                           R3 1
      886 LOADK                            R5 K107 ["NumberValue"]
      887 NAMECALL                         R3 R0 K2 ["IsA"]
      889 CALL                             R3 2 1
      890 JUMPIFNOT                        R3 ; [+47]
      891 GETUPVAL                         R3 0
      892 GETTABLEKS                       R3 R3 K108 ["isScalingHumanoidNumber"]
      894 MOVE                             R4 R0
      895 CALL                             R3 1 1
      896 JUMPIFNOT                        R3 ; [+41]
      897 DUPTABLE                         R3 K110 [{"name", "archivable", "value", "children"}]
      898 GETUPVAL                         R4 0
      899 GETTABLEKS                       R4 R4 K16 ["serialize"]
      901 GETTABLEKS                       R5 R0 K17 ["Name"]
      903 MOVE                             R6 R1
      904 MOVE                             R7 R2
      905 CALL                             R4 3 1
      906 SETTABLEKS                       R4 R3 K3 ["name"]
      908 GETUPVAL                         R4 0
      909 GETTABLEKS                       R4 R4 K16 ["serialize"]
      911 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      913 MOVE                             R6 R1
      914 MOVE                             R7 R2
      915 CALL                             R4 3 1
      916 SETTABLEKS                       R4 R3 K4 ["archivable"]
      918 GETUPVAL                         R4 0
      919 GETTABLEKS                       R4 R4 K111 ["serializeScalingHumanoidNumber"]
      921 GETTABLEKS                       R5 R0 K112 ["Value"]
      923 MOVE                             R6 R1
      924 MOVE                             R7 R2
      925 CALL                             R4 3 1
      926 SETTABLEKS                       R4 R3 K109 ["value"]
      928 GETUPVAL                         R4 0
      929 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      931 MOVE                             R5 R0
      932 MOVE                             R6 R1
      933 MOVE                             R7 R2
      934 CALL                             R4 3 1
      935 SETTABLEKS                       R4 R3 K14 ["children"]
      937 RETURN                           R3 1
      938 LOADK                            R5 K113 ["ValueBase"]
      939 NAMECALL                         R3 R0 K2 ["IsA"]
      941 CALL                             R3 2 1
      942 JUMPIFNOT                        R3 ; [+101]
      943 GETUPVAL                         R3 1
      944 CALL                             R3 0 1
      945 JUMPIFNOT                        R3 ; [+47]
      946 GETUPVAL                         R3 0
      947 GETTABLEKS                       R3 R3 K114 ["isAttachmentOriginalPositionValue"]
      949 MOVE                             R4 R0
      950 CALL                             R3 1 1
      951 JUMPIFNOT                        R3 ; [+41]
      952 DUPTABLE                         R3 K116 [{"name", "className", "archivable", "children"}]
      953 GETUPVAL                         R4 0
      954 GETTABLEKS                       R4 R4 K16 ["serialize"]
      956 GETTABLEKS                       R5 R0 K17 ["Name"]
      958 MOVE                             R6 R1
      959 MOVE                             R7 R2
      960 CALL                             R4 3 1
      961 SETTABLEKS                       R4 R3 K3 ["name"]
      963 GETUPVAL                         R4 0
      964 GETTABLEKS                       R4 R4 K16 ["serialize"]
      966 GETTABLEKS                       R5 R0 K117 ["ClassName"]
      968 MOVE                             R6 R1
      969 MOVE                             R7 R2
      970 CALL                             R4 3 1
      971 SETTABLEKS                       R4 R3 K115 ["className"]
      973 GETUPVAL                         R4 0
      974 GETTABLEKS                       R4 R4 K16 ["serialize"]
      976 GETTABLEKS                       R5 R0 K18 ["Archivable"]
      978 MOVE                             R6 R1
      979 MOVE                             R7 R2
      980 CALL                             R4 3 1
      981 SETTABLEKS                       R4 R3 K4 ["archivable"]
      983 GETUPVAL                         R4 0
      984 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
      986 MOVE                             R5 R0
      987 MOVE                             R6 R1
      988 MOVE                             R7 R2
      989 CALL                             R4 3 1
      990 SETTABLEKS                       R4 R3 K14 ["children"]
      992 RETURN                           R3 1
      993 DUPTABLE                         R3 K118 [{"name", "className", "archivable", "value", "children"}]
      994 GETUPVAL                         R4 0
      995 GETTABLEKS                       R4 R4 K16 ["serialize"]
      997 GETTABLEKS                       R5 R0 K17 ["Name"]
      999 MOVE                             R6 R1
     1000 MOVE                             R7 R2
     1001 CALL                             R4 3 1
     1002 SETTABLEKS                       R4 R3 K3 ["name"]
     1004 GETUPVAL                         R4 0
     1005 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1007 GETTABLEKS                       R5 R0 K117 ["ClassName"]
     1009 MOVE                             R6 R1
     1010 MOVE                             R7 R2
     1011 CALL                             R4 3 1
     1012 SETTABLEKS                       R4 R3 K115 ["className"]
     1014 GETUPVAL                         R4 0
     1015 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1017 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1019 MOVE                             R6 R1
     1020 MOVE                             R7 R2
     1021 CALL                             R4 3 1
     1022 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1024 GETUPVAL                         R4 0
     1025 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1027 GETTABLEKS                       R5 R0 K112 ["Value"]
     1029 MOVE                             R6 R1
     1030 MOVE                             R7 R2
     1031 CALL                             R4 3 1
     1032 SETTABLEKS                       R4 R3 K109 ["value"]
     1034 GETUPVAL                         R4 0
     1035 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1037 MOVE                             R5 R0
     1038 MOVE                             R6 R1
     1039 MOVE                             R7 R2
     1040 CALL                             R4 3 1
     1041 SETTABLEKS                       R4 R3 K14 ["children"]
     1043 RETURN                           R3 1
     1044 LOADK                            R5 K119 ["Humanoid"]
     1045 NAMECALL                         R3 R0 K2 ["IsA"]
     1047 CALL                             R3 2 1
     1048 JUMPIFNOT                        R3 ; [+221]
     1049 DUPTABLE                         R3 K139 [{"name", "archivable", "rigType", "autoRotate", "breakJointsOnDeath", "evaluateStateMachine", "requiresNeck", "health", "maxHealth", "hipHeight", "maxSlopeAngle", "autoJumpEnabled", "useJumpPower", "healthDisplayType", "displayName", "displayDistanceType", "cameraOffset", "automaticScalingEnabled", "nameOcclusion", "sit", "jump", "children"}]
     1050 GETUPVAL                         R4 0
     1051 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1053 GETTABLEKS                       R5 R0 K17 ["Name"]
     1055 MOVE                             R6 R1
     1056 MOVE                             R7 R2
     1057 CALL                             R4 3 1
     1058 SETTABLEKS                       R4 R3 K3 ["name"]
     1060 GETUPVAL                         R4 0
     1061 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1063 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1065 MOVE                             R6 R1
     1066 MOVE                             R7 R2
     1067 CALL                             R4 3 1
     1068 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1070 GETUPVAL                         R4 0
     1071 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1073 GETTABLEKS                       R5 R0 K140 ["RigType"]
     1075 MOVE                             R6 R1
     1076 MOVE                             R7 R2
     1077 CALL                             R4 3 1
     1078 SETTABLEKS                       R4 R3 K120 ["rigType"]
     1080 GETUPVAL                         R4 0
     1081 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1083 GETTABLEKS                       R5 R0 K141 ["AutoRotate"]
     1085 MOVE                             R6 R1
     1086 MOVE                             R7 R2
     1087 CALL                             R4 3 1
     1088 SETTABLEKS                       R4 R3 K121 ["autoRotate"]
     1090 GETUPVAL                         R4 0
     1091 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1093 GETTABLEKS                       R5 R0 K142 ["BreakJointsOnDeath"]
     1095 MOVE                             R6 R1
     1096 MOVE                             R7 R2
     1097 CALL                             R4 3 1
     1098 SETTABLEKS                       R4 R3 K122 ["breakJointsOnDeath"]
     1100 GETUPVAL                         R4 0
     1101 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1103 GETTABLEKS                       R5 R0 K143 ["EvaluateStateMachine"]
     1105 MOVE                             R6 R1
     1106 MOVE                             R7 R2
     1107 CALL                             R4 3 1
     1108 SETTABLEKS                       R4 R3 K123 ["evaluateStateMachine"]
     1110 GETUPVAL                         R4 0
     1111 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1113 GETTABLEKS                       R5 R0 K144 ["RequiresNeck"]
     1115 MOVE                             R6 R1
     1116 MOVE                             R7 R2
     1117 CALL                             R4 3 1
     1118 SETTABLEKS                       R4 R3 K124 ["requiresNeck"]
     1120 GETUPVAL                         R4 0
     1121 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1123 GETTABLEKS                       R5 R0 K145 ["Health"]
     1125 MOVE                             R6 R1
     1126 MOVE                             R7 R2
     1127 CALL                             R4 3 1
     1128 SETTABLEKS                       R4 R3 K125 ["health"]
     1130 GETUPVAL                         R4 0
     1131 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1133 GETTABLEKS                       R5 R0 K146 ["MaxHealth"]
     1135 MOVE                             R6 R1
     1136 MOVE                             R7 R2
     1137 CALL                             R4 3 1
     1138 SETTABLEKS                       R4 R3 K126 ["maxHealth"]
     1140 GETUPVAL                         R4 0
     1141 GETTABLEKS                       R4 R4 K111 ["serializeScalingHumanoidNumber"]
     1143 GETTABLEKS                       R5 R0 K147 ["HipHeight"]
     1145 MOVE                             R6 R1
     1146 MOVE                             R7 R2
     1147 CALL                             R4 3 1
     1148 SETTABLEKS                       R4 R3 K127 ["hipHeight"]
     1150 GETUPVAL                         R4 0
     1151 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1153 GETTABLEKS                       R5 R0 K148 ["MaxSlopeAngle"]
     1155 MOVE                             R6 R1
     1156 MOVE                             R7 R2
     1157 CALL                             R4 3 1
     1158 SETTABLEKS                       R4 R3 K128 ["maxSlopeAngle"]
     1160 GETUPVAL                         R4 0
     1161 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1163 GETTABLEKS                       R5 R0 K149 ["AutoJumpEnabled"]
     1165 MOVE                             R6 R1
     1166 MOVE                             R7 R2
     1167 CALL                             R4 3 1
     1168 SETTABLEKS                       R4 R3 K129 ["autoJumpEnabled"]
     1170 GETUPVAL                         R4 0
     1171 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1173 GETTABLEKS                       R5 R0 K150 ["UseJumpPower"]
     1175 MOVE                             R6 R1
     1176 MOVE                             R7 R2
     1177 CALL                             R4 3 1
     1178 SETTABLEKS                       R4 R3 K130 ["useJumpPower"]
     1180 GETUPVAL                         R4 0
     1181 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1183 GETTABLEKS                       R5 R0 K151 ["HealthDisplayType"]
     1185 MOVE                             R6 R1
     1186 MOVE                             R7 R2
     1187 CALL                             R4 3 1
     1188 SETTABLEKS                       R4 R3 K131 ["healthDisplayType"]
     1190 GETUPVAL                         R4 0
     1191 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1193 GETTABLEKS                       R5 R0 K152 ["DisplayName"]
     1195 MOVE                             R6 R1
     1196 MOVE                             R7 R2
     1197 CALL                             R4 3 1
     1198 SETTABLEKS                       R4 R3 K132 ["displayName"]
     1200 GETUPVAL                         R4 0
     1201 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1203 GETTABLEKS                       R5 R0 K153 ["DisplayDistanceType"]
     1205 MOVE                             R6 R1
     1206 MOVE                             R7 R2
     1207 CALL                             R4 3 1
     1208 SETTABLEKS                       R4 R3 K133 ["displayDistanceType"]
     1210 GETUPVAL                         R4 0
     1211 GETTABLEKS                       R4 R4 K154 ["serializeAttachmentPosition"]
     1213 GETTABLEKS                       R5 R0 K155 ["CameraOffset"]
     1215 MOVE                             R6 R1
     1216 MOVE                             R7 R2
     1217 CALL                             R4 3 1
     1218 SETTABLEKS                       R4 R3 K134 ["cameraOffset"]
     1220 GETUPVAL                         R4 0
     1221 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1223 GETTABLEKS                       R5 R0 K156 ["AutomaticScalingEnabled"]
     1225 MOVE                             R6 R1
     1226 MOVE                             R7 R2
     1227 CALL                             R4 3 1
     1228 SETTABLEKS                       R4 R3 K135 ["automaticScalingEnabled"]
     1230 GETUPVAL                         R4 0
     1231 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1233 GETTABLEKS                       R5 R0 K157 ["NameOcclusion"]
     1235 MOVE                             R6 R1
     1236 MOVE                             R7 R2
     1237 CALL                             R4 3 1
     1238 SETTABLEKS                       R4 R3 K136 ["nameOcclusion"]
     1240 GETUPVAL                         R4 0
     1241 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1243 GETTABLEKS                       R5 R0 K158 ["Sit"]
     1245 MOVE                             R6 R1
     1246 MOVE                             R7 R2
     1247 CALL                             R4 3 1
     1248 SETTABLEKS                       R4 R3 K137 ["sit"]
     1250 GETUPVAL                         R4 0
     1251 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1253 GETTABLEKS                       R5 R0 K159 ["Jump"]
     1255 MOVE                             R6 R1
     1256 MOVE                             R7 R2
     1257 CALL                             R4 3 1
     1258 SETTABLEKS                       R4 R3 K138 ["jump"]
     1260 GETUPVAL                         R4 0
     1261 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1263 MOVE                             R5 R0
     1264 MOVE                             R6 R1
     1265 MOVE                             R7 R2
     1266 CALL                             R4 3 1
     1267 SETTABLEKS                       R4 R3 K14 ["children"]
     1269 RETURN                           R3 1
     1270 GETUPVAL                         R3 2
     1271 CALL                             R3 0 1
     1272 JUMPIFNOT                        R3 ; [+51]
     1273 LOADK                            R5 K160 ["Model"]
     1274 NAMECALL                         R3 R0 K2 ["IsA"]
     1276 CALL                             R3 2 1
     1277 JUMPIF                           R3 ; [+5]
     1278 LOADK                            R5 K161 ["Folder"]
     1279 NAMECALL                         R3 R0 K2 ["IsA"]
     1281 CALL                             R3 2 1
     1282 JUMPIFNOT                        R3 ; [+41]
     1283 DUPTABLE                         R3 K116 [{"name", "className", "archivable", "children"}]
     1284 GETUPVAL                         R4 0
     1285 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1287 GETTABLEKS                       R5 R0 K17 ["Name"]
     1289 MOVE                             R6 R1
     1290 MOVE                             R7 R2
     1291 CALL                             R4 3 1
     1292 SETTABLEKS                       R4 R3 K3 ["name"]
     1294 GETUPVAL                         R4 0
     1295 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1297 GETTABLEKS                       R5 R0 K117 ["ClassName"]
     1299 MOVE                             R6 R1
     1300 MOVE                             R7 R2
     1301 CALL                             R4 3 1
     1302 SETTABLEKS                       R4 R3 K115 ["className"]
     1304 GETUPVAL                         R4 0
     1305 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1307 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1309 MOVE                             R6 R1
     1310 MOVE                             R7 R2
     1311 CALL                             R4 3 1
     1312 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1314 GETUPVAL                         R4 0
     1315 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1317 MOVE                             R5 R0
     1318 MOVE                             R6 R1
     1319 MOVE                             R7 R2
     1320 CALL                             R4 3 1
     1321 SETTABLEKS                       R4 R3 K14 ["children"]
     1323 RETURN                           R3 1
     1324 GETUPVAL                         R3 2
     1325 CALL                             R3 0 1
     1326 JUMPIFNOT                        R3 ; [+50]
     1327 GETTABLEKS                       R3 R1 K57 ["options"]
     1329 GETTABLEKS                       R3 R3 K162 ["globalDebugDifferences"]
     1331 JUMPIFNOT                        R3 ; [+13]
     1332 GETIMPORT                        R3 K164 [warn]
     1334 LOADK                            R5 K165 ["[CharacterHashUtils] Unrecognized type serialized as leaf: %* (%*)"]
     1335 GETTABLEKS                       R7 R0 K117 ["ClassName"]
     1337 NAMECALL                         R8 R0 K166 ["GetFullName"]
     1339 CALL                             R8 1 1
     1340 NAMECALL                         R5 R5 K167 ["format"]
     1342 CALL                             R5 3 1
     1343 MOVE                             R4 R5
     1344 CALL                             R3 1 0
     1345 DUPTABLE                         R3 K168 [{"name", "className", "archivable"}]
     1346 GETUPVAL                         R4 0
     1347 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1349 GETTABLEKS                       R5 R0 K17 ["Name"]
     1351 MOVE                             R6 R1
     1352 MOVE                             R7 R2
     1353 CALL                             R4 3 1
     1354 SETTABLEKS                       R4 R3 K3 ["name"]
     1356 GETUPVAL                         R4 0
     1357 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1359 GETTABLEKS                       R5 R0 K117 ["ClassName"]
     1361 MOVE                             R6 R1
     1362 MOVE                             R7 R2
     1363 CALL                             R4 3 1
     1364 SETTABLEKS                       R4 R3 K115 ["className"]
     1366 GETUPVAL                         R4 0
     1367 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1369 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1371 MOVE                             R6 R1
     1372 MOVE                             R7 R2
     1373 CALL                             R4 3 1
     1374 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1376 RETURN                           R3 1
     1377 DUPTABLE                         R3 K116 [{"name", "className", "archivable", "children"}]
     1378 GETUPVAL                         R4 0
     1379 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1381 GETTABLEKS                       R5 R0 K17 ["Name"]
     1383 MOVE                             R6 R1
     1384 MOVE                             R7 R2
     1385 CALL                             R4 3 1
     1386 SETTABLEKS                       R4 R3 K3 ["name"]
     1388 GETUPVAL                         R4 0
     1389 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1391 GETTABLEKS                       R5 R0 K117 ["ClassName"]
     1393 MOVE                             R6 R1
     1394 MOVE                             R7 R2
     1395 CALL                             R4 3 1
     1396 SETTABLEKS                       R4 R3 K115 ["className"]
     1398 GETUPVAL                         R4 0
     1399 GETTABLEKS                       R4 R4 K16 ["serialize"]
     1401 GETTABLEKS                       R5 R0 K18 ["Archivable"]
     1403 MOVE                             R6 R1
     1404 MOVE                             R7 R2
     1405 CALL                             R4 3 1
     1406 SETTABLEKS                       R4 R3 K4 ["archivable"]
     1408 GETUPVAL                         R4 0
     1409 GETTABLEKS                       R4 R4 K30 ["serializeChildren"]
     1411 MOVE                             R5 R0
     1412 MOVE                             R6 R1
     1413 MOVE                             R7 R2
     1414 CALL                             R4 3 1
     1415 SETTABLEKS                       R4 R3 K14 ["children"]
     1417 RETURN                           R3 1

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
       11 GETUPVAL                         R5 0
       12 CALL                             R5 0 1
       13 JUMPIFNOT                        R5 ; [+5]
       14 GETIMPORT                        R5 K4 [table.sort]
       16 MOVE                             R6 R4
       17 DUPCLOSURE                       R7 K5 [PROTO_15]
       18 CALL                             R5 2 0
       19 MOVE                             R5 R4
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 MOVE                             R11 R3
       24 GETUPVAL                         R12 1
       25 GETTABLEKS                       R12 R12 K6 ["serialize"]
       27 MOVE                             R13 R9
       28 MOVE                             R14 R1
       29 MOVE                             R15 R2
       30 CALL                             R12 3 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R10 K8 [table.insert]
       34 CALL                             R10 -1 0
       35 FORGLOOP                         R5 2 ; [-13]
       37 LENGTH                           R5 R3
       38 LOADN                            R6 0
       39 JUMPIFNOTLT                      R6 R5 ; [+2]
       41 RETURN                           R3 1
       42 LOADNIL                          R5
       43 RETURN                           R5 1

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
       52 NAMECALL                         R1 R0 K10 ["GetChildren"]
       54 CALL                             R1 1 3
       55 FORGPREP                         R1
       56 GETUPVAL                         R6 4
       57 MOVE                             R7 R5
       58 CALL                             R6 1 0
       59 FORGLOOP                         R1 2 ; [-4]
       61 RETURN                           R0 0

PROTO_18:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R1 K4 [table.insert]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 LOADK                            R3 K5 ["Model"]
       14 NAMECALL                         R1 R0 K1 ["IsA"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+11]
       18 GETTABLEKS                       R1 R0 K6 ["PrimaryPart"]
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R3 R0 K6 ["PrimaryPart"]
       24 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       26 GETIMPORT                        R1 K4 [table.insert]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+18]
        7 NEWTABLE                         R4 0 0
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R5
       15 MOVE                             R6 R0
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 MOVE                             R11 R5
       20 MOVE                             R12 R10
       21 CALL                             R11 1 0
       22 FORGLOOP                         R6 2 ; [-4]
       24 JUMP                             ; [+73]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 MOVE                             R5 R0
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 LOADK                            R12 K0 ["BasePart"]
       33 NAMECALL                         R10 R9 K1 ["IsA"]
       35 CALL                             R10 2 1
       36 JUMPIFNOT                        R10 ; [+8]
       37 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       39 MOVE                             R11 R2
       40 MOVE                             R12 R9
       41 GETIMPORT                        R10 K4 [table.insert]
       43 CALL                             R10 2 0
       44 JUMP                             ; [+16]
       45 LOADK                            R12 K5 ["Model"]
       46 NAMECALL                         R10 R9 K1 ["IsA"]
       48 CALL                             R10 2 1
       49 JUMPIFNOT                        R10 ; [+11]
       50 GETTABLEKS                       R10 R9 K6 ["PrimaryPart"]
       52 JUMPIFNOT                        R10 ; [+8]
       53 GETTABLEKS                       R12 R9 K6 ["PrimaryPart"]
       55 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       57 MOVE                             R11 R3
       58 GETIMPORT                        R10 K4 [table.insert]
       60 CALL                             R10 2 0
       61 NAMECALL                         R10 R9 K7 ["GetDescendants"]
       63 CALL                             R10 1 3
       64 FORGPREP                         R10
       65 LOADK                            R17 K0 ["BasePart"]
       66 NAMECALL                         R15 R14 K1 ["IsA"]
       68 CALL                             R15 2 1
       69 JUMPIFNOT                        R15 ; [+8]
       70 FASTCALL2                        TABLE_INSERT R2 R14 ; [+5]
       72 MOVE                             R16 R2
       73 MOVE                             R17 R14
       74 GETIMPORT                        R15 K4 [table.insert]
       76 CALL                             R15 2 0
       77 JUMP                             ; [+16]
       78 LOADK                            R17 K5 ["Model"]
       79 NAMECALL                         R15 R14 K1 ["IsA"]
       81 CALL                             R15 2 1
       82 JUMPIFNOT                        R15 ; [+11]
       83 GETTABLEKS                       R15 R14 K6 ["PrimaryPart"]
       85 JUMPIFNOT                        R15 ; [+8]
       86 GETTABLEKS                       R17 R14 K6 ["PrimaryPart"]
       88 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
       90 MOVE                             R16 R3
       91 GETIMPORT                        R15 K4 [table.insert]
       93 CALL                             R15 2 0
       94 FORGLOOP                         R10 2 ; [-30]
       96 FORGLOOP                         R5 2 ; [-65]
       98 LOADNIL                          R4
       99 LENGTH                           R5 R3
      100 JUMPIFNOTEQKN                    R5 K8 [1] ; [+5]
      102 GETTABLEN                        R5 R3 1
      103 GETTABLEKS                       R4 R5 K9 ["CFrame"]
      105 JUMP                             ; [+27]
      106 LENGTH                           R5 R2
      107 JUMPIFNOTEQKN                    R5 K8 [1] ; [+5]
      109 GETTABLEN                        R5 R2 1
      110 GETTABLEKS                       R4 R5 K9 ["CFrame"]
      112 JUMP                             ; [+20]
      113 LENGTH                           R5 R3
      114 LOADN                            R6 0
      115 JUMPIFNOTLT                      R6 R5 ; [+5]
      117 GETTABLEN                        R5 R3 1
      118 GETTABLEKS                       R4 R5 K9 ["CFrame"]
      120 JUMP                             ; [+12]
      121 LENGTH                           R5 R2
      122 LOADN                            R6 0
      123 JUMPIFNOTLT                      R6 R5 ; [+5]
      125 GETTABLEN                        R5 R2 1
      126 GETTABLEKS                       R4 R5 K9 ["CFrame"]
      128 JUMP                             ; [+4]
      129 GETIMPORT                        R5 K11 [CFrame.new]
      131 CALL                             R5 0 1
      132 MOVE                             R4 R5
      133 LOADNIL                          R5
      134 LOADNIL                          R6
      135 GETUPVAL                         R7 0
      136 CALL                             R7 0 1
      137 JUMPIFNOT                        R7 ; [+7]
      138 LENGTH                           R7 R2
      139 JUMPIFNOTEQKN                    R7 K12 [0] ; [+5]
      141 GETTABLEKS                       R5 R4 K13 ["Position"]
      143 LOADK                            R6 K14 [{1, 1, 1}]
      144 JUMP                             ; [+8]
      145 GETUPVAL                         R7 1
      146 GETTABLEKS                       R7 R7 K15 ["getAABoundingBox"]
      148 MOVE                             R8 R2
      149 MOVE                             R9 R4
      150 CALL                             R7 2 2
      151 MOVE                             R5 R7
      152 MOVE                             R6 R8
      153 GETTABLEKS                       R7 R6 K16 ["Magnitude"]
      155 JUMPIFEQKN                       R7 K12 [0] ; [+6]
      157 GETUPVAL                         R7 0
      158 CALL                             R7 0 1
      159 JUMPIFNOT                        R7 ; [+3]
      160 JUMPIFEQ                         R6 R6 ; [+2]
      162 LOADK                            R6 K14 [{1, 1, 1}]
      163 MOVE                             R10 R5
      164 NAMECALL                         R8 R4 K17 ["VectorToWorldSpace"]
      166 CALL                             R8 2 1
      167 ADD                              R7 R4 R8
      168 LOADNIL                          R8
      169 LOADNIL                          R9
      170 GETTABLEKS                       R10 R1 K18 ["ignoreUniformScaleChanges"]
      172 JUMPIF                           R10 ; [+3]
      173 LOADN                            R9 1
      174 LOADK                            R8 K14 [{1, 1, 1}]
      175 JUMP                             ; [+20]
      176 GETTABLEKS                       R11 R6 K19 ["X"]
      178 GETTABLEKS                       R12 R6 K20 ["Y"]
      180 GETTABLEKS                       R13 R6 K21 ["Z"]
      182 FASTCALL                         MATH_MAX ; [+2]
      183 GETIMPORT                        R10 K24 [math.max]
      185 CALL                             R10 3 1
      186 FASTCALL3                        VECTOR R10 R10 R10
      188 MOVE                             R12 R10
      189 MOVE                             R13 R10
      190 MOVE                             R14 R10
      191 GETIMPORT                        R11 K26 [Vector3.new]
      193 CALL                             R11 3 1
      194 MOVE                             R8 R11
      195 MOVE                             R9 R10
      196 DUPTABLE                         R10 K30 [{"options", "relativeScale", "state"}]
      197 SETTABLEKS                       R1 R10 K27 ["options"]
      199 SETTABLEKS                       R9 R10 K28 ["relativeScale"]
      201 DUPTABLE                         R11 K37 [{"allowedInstancesToSerializeUnder", "boundingCFrame", "boundingSize", "lastInstanceId", "pendingInstances", "serializedInstanceCount"}]
      202 SETTABLEKS                       R0 R11 K31 ["allowedInstancesToSerializeUnder"]
      204 SETTABLEKS                       R7 R11 K32 ["boundingCFrame"]
      206 SETTABLEKS                       R8 R11 K33 ["boundingSize"]
      208 LOADN                            R12 0
      209 SETTABLEKS                       R12 R11 K34 ["lastInstanceId"]
      211 NEWTABLE                         R12 0 0
      213 SETTABLEKS                       R12 R11 K35 ["pendingInstances"]
      215 LOADN                            R12 0
      216 SETTABLEKS                       R12 R11 K36 ["serializedInstanceCount"]
      218 SETTABLEKS                       R11 R10 K29 ["state"]
      220 RETURN                           R10 1

PROTO_20:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["getFFlagAvatarPreviewerAttachmentFix() must be enabled"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 MOVE                             R3 R0
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLE                         R8 R1 R6
       13 JUMPIFNOTEQKNIL                  R8 ; [+8]
       15 GETIMPORT                        R8 K4 [print]
       17 LOADK                            R9 K5 ["missing"]
       18 MOVE                             R10 R2
       19 MOVE                             R11 R6
       20 CALL                             R8 3 0
       21 JUMP                             ; [+27]
       22 FASTCALL1                        TYPE R7 ; [+3]
       23 MOVE                             R9 R7
       24 GETIMPORT                        R8 K7 [type]
       26 CALL                             R8 1 1
       27 JUMPIFNOTEQKS                    R8 K8 ["table"] ; [+10]
       29 GETUPVAL                         R8 1
       30 MOVE                             R9 R7
       31 GETTABLE                         R10 R1 R6
       32 MOVE                             R12 R2
       33 LOADK                            R13 K9 ["."]
       34 MOVE                             R14 R6
       35 CONCAT                           R11 R12 R14
       36 CALL                             R8 3 0
       37 JUMP                             ; [+11]
       38 GETTABLE                         R8 R1 R6
       39 JUMPIFEQ                         R7 R8 ; [+9]
       41 GETIMPORT                        R8 K4 [print]
       43 LOADK                            R9 K10 ["different"]
       44 MOVE                             R10 R2
       45 MOVE                             R11 R6
       46 MOVE                             R12 R7
       47 GETTABLE                         R13 R1 R6
       48 CALL                             R8 5 0
       49 FORGLOOP                         R3 2 ; [-38]
       51 MOVE                             R3 R1
       52 LOADNIL                          R4
       53 LOADNIL                          R5
       54 FORGPREP                         R3
       55 GETTABLE                         R8 R0 R6
       56 JUMPIFNOTEQKNIL                  R8 ; [+7]
       58 GETIMPORT                        R8 K4 [print]
       60 LOADK                            R9 K11 ["extra"]
       61 MOVE                             R10 R2
       62 MOVE                             R11 R6
       63 CALL                             R8 3 0
       64 FORGLOOP                         R3 2 ; [-10]
       66 RETURN                           R0 0

PROTO_21:
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
       26 JUMPIFNOT                        R5 ; [+31]
       27 GETUPVAL                         R5 3
       28 CALL                             R5 0 1
       29 JUMPIFNOT                        R5 ; [+28]
       30 GETUPVAL                         R5 4
       31 JUMPIFNOT                        R5 ; [+20]
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K9 ["hash"]
       35 JUMPIFEQ                         R5 R4 ; [+16]
       37 GETIMPORT                        R5 K11 [print]
       39 LOADK                            R6 K12 ["Hash changed: "]
       40 MOVE                             R7 R4
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R8 R8 K9 ["hash"]
       44 CALL                             R5 3 0
       45 GETUPVAL                         R5 5
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K13 ["serialized"]
       49 MOVE                             R7 R2
       50 LOADK                            R8 K6 [""]
       51 CALL                             R5 3 0
       52 DUPTABLE                         R5 K14 [{"hash", "serialized"}]
       53 SETTABLEKS                       R4 R5 K9 ["hash"]
       55 SETTABLEKS                       R2 R5 K13 ["serialized"]
       57 SETUPVAL                         R5 4
       58 RETURN                           R4 1

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
       37 GETTABLEKS                       R5 R5 K15 ["getFFlagAvatarAutosetupOptionsInput"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R1 K11 ["Src"]
       44 GETTABLEKS                       R6 R6 K14 ["Flags"]
       46 GETTABLEKS                       R6 R6 K16 ["getFFlagAvatarPreviewerAttachmentFix"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R1 K11 ["Src"]
       53 GETTABLEKS                       R7 R7 K14 ["Flags"]
       55 GETTABLEKS                       R7 R7 K17 ["getFFlagAvatarPreviewerHashPerformanceFix"]
       57 CALL                             R6 1 1
       58 NEWTABLE                         R7 32 0
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 SETTABLEKS                       R8 R7 K19 ["canEncodeStringSafely"]
       63 DUPCLOSURE                       R8 K20 [PROTO_1]
       64 SETTABLEKS                       R8 R7 K21 ["canEncodeNumberSafely"]
       66 DUPCLOSURE                       R8 K22 [PROTO_2]
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R8 R7 K23 ["cutPrecision"]
       70 DUPCLOSURE                       R8 K24 [PROTO_3]
       71 SETTABLEKS                       R8 R7 K25 ["cutListPrecision"]
       73 NEWTABLE                         R8 0 64
       75 LOADK                            R9 K26 ["alphaMode"]
       76 LOADK                            R10 K27 ["archivable"]
       77 LOADK                            R11 K28 ["attachmentPoint"]
       78 LOADK                            R12 K29 ["autoJumpEnabled"]
       79 LOADK                            R13 K30 ["autoRotate"]
       80 LOADK                            R14 K31 ["autoSkin"]
       81 LOADK                            R15 K32 ["automaticScalingEnabled"]
       82 LOADK                            R16 K33 ["bindOffset"]
       83 LOADK                            R17 K34 ["breakJointsOnDeath"]
       84 LOADK                            R18 K35 ["c0"]
       85 LOADK                            R19 K36 ["c1"]
       86 LOADK                            R20 K37 ["cageOrigin"]
       87 LOADK                            R21 K38 ["cameraOffset"]
       88 LOADK                            R22 K39 ["cframe"]
       89 LOADK                            R23 K40 ["children"]
       90 LOADK                            R24 K41 ["className"]
       91 SETLIST                          R8 R9 16 [1]
       93 LOADK                            R9 K42 ["color"]
       94 LOADK                            R10 K43 ["colorMap"]
       95 LOADK                            R11 K44 ["displayDistanceType"]
       96 LOADK                            R12 K45 ["displayName"]
       97 LOADK                            R13 K46 ["enabled"]
       98 LOADK                            R14 K47 ["evaluateStateMachine"]
       99 LOADK                            R15 K48 ["headColor"]
      100 LOADK                            R16 K49 ["health"]
      101 LOADK                            R17 K50 ["healthDisplayDistance"]
      102 LOADK                            R18 K51 ["healthDisplayType"]
      103 LOADK                            R19 K52 ["hipHeight"]
      104 LOADK                            R20 K53 ["importOrigin"]
      105 LOADK                            R21 K54 ["jump"]
      106 LOADK                            R22 K55 ["jumpPower"]
      107 LOADK                            R23 K56 ["leftArmColor"]
      108 LOADK                            R24 K57 ["leftLegColor"]
      109 SETLIST                          R8 R9 16 [17]
      111 LOADK                            R9 K58 ["material"]
      112 LOADK                            R10 K59 ["materialVariant"]
      113 LOADK                            R11 K60 ["maxHealth"]
      114 LOADK                            R12 K61 ["maxSlopeAngle"]
      115 LOADK                            R13 K62 ["meshId"]
      116 LOADK                            R14 K63 ["metalnessMap"]
      117 LOADK                            R15 K64 ["name"]
      118 LOADK                            R16 K65 ["nameDisplayDistance"]
      119 LOADK                            R17 K66 ["nameOcclusion"]
      120 LOADK                            R18 K67 ["normalMap"]
      121 LOADK                            R19 K68 ["order"]
      122 LOADK                            R20 K69 ["part0"]
      123 LOADK                            R21 K70 ["part1"]
      124 LOADK                            R22 K71 ["puffiness"]
      125 LOADK                            R23 K72 ["referenceMeshId"]
      126 LOADK                            R24 K73 ["referenceOrigin"]
      127 SETLIST                          R8 R9 16 [33]
      129 LOADK                            R9 K74 ["reflectance"]
      130 LOADK                            R10 K75 ["requiresNeck"]
      131 LOADK                            R11 K76 ["rigType"]
      132 LOADK                            R12 K77 ["rightArmColor"]
      133 LOADK                            R13 K78 ["rightLegColor"]
      134 LOADK                            R14 K79 ["roughnessMap"]
      135 LOADK                            R15 K80 ["shrinkFactor"]
      136 LOADK                            R16 K81 ["sit"]
      137 LOADK                            R17 K82 ["size"]
      138 LOADK                            R18 K83 ["texture"]
      139 LOADK                            R19 K84 ["textureId"]
      140 LOADK                            R20 K85 ["torsoColor"]
      141 LOADK                            R21 K86 ["transparency"]
      142 LOADK                            R22 K87 ["useJumpPower"]
      143 LOADK                            R23 K88 ["value"]
      144 LOADK                            R24 K89 ["walkSpeed"]
      145 SETLIST                          R8 R9 16 [49]
      147 LENGTH                           R11 R8
      148 LOADN                            R12 64
      149 JUMPIFLE                         R11 R12 ; [+2]
      151 LOADB                            R10 0 +1
      152 LOADB                            R10 1
      153 FASTCALL2K                       ASSERT R10 K90 ; [+4]
      155 LOADK                            R11 K90 ["Too many well known ids"]
      156 GETIMPORT                        R9 K92 [assert]
      158 CALL                             R9 2 0
      159 NEWTABLE                         R9 0 0
      161 MOVE                             R10 R8
      162 LOADNIL                          R11
      163 LOADNIL                          R12
      164 FORGPREP                         R10
      165 LOADK                            R17 K93 ["0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+-"]
      166 FASTCALL2                        STRING_BYTE R17 R13 ; [+4]
      168 MOVE                             R18 R13
      169 GETIMPORT                        R16 K96 [string.byte]
      171 CALL                             R16 2 -1
      172 FASTCALL                         STRING_CHAR ; [+2]
      173 GETIMPORT                        R15 K98 [string.char]
      175 CALL                             R15 -1 1
      176 SETTABLE                         R15 R9 R14
      177 FORGLOOP                         R10 2 ; [-13]
      179 DUPCLOSURE                       R10 K99 [PROTO_4]
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R9
      183 SETTABLEKS                       R10 R7 K100 ["serialize"]
      185 DUPCLOSURE                       R10 K101 [PROTO_5]
      186 CAPTURE                          VAL R7
      187 SETTABLEKS                       R10 R7 K102 ["serializeSize"]
      189 DUPCLOSURE                       R10 K103 [PROTO_6]
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R7
      192 SETTABLEKS                       R10 R7 K104 ["serializePartCFrame"]
      194 DUPCLOSURE                       R10 K105 [PROTO_7]
      195 CAPTURE                          VAL R7
      196 SETTABLEKS                       R10 R7 K106 ["serializePosition"]
      198 DUPCLOSURE                       R10 K107 [PROTO_8]
      199 CAPTURE                          VAL R7
      200 SETTABLEKS                       R10 R7 K108 ["serializeAttachmentCFrame"]
      202 DUPCLOSURE                       R10 K109 [PROTO_9]
      203 CAPTURE                          VAL R7
      204 SETTABLEKS                       R10 R7 K110 ["serializeAttachmentPosition"]
      206 DUPCLOSURE                       R10 K111 [PROTO_10]
      207 CAPTURE                          VAL R7
      208 SETTABLEKS                       R10 R7 K112 ["serializeScalingHumanoidNumber"]
      210 DUPCLOSURE                       R10 K113 [PROTO_11]
      211 CAPTURE                          VAL R7
      212 SETTABLEKS                       R10 R7 K114 ["serializeReferenceInstance"]
      214 NEWTABLE                         R10 4 0
      216 LOADB                            R11 1
      217 SETTABLEKS                       R11 R10 K115 ["BodyHeightScale"]
      219 LOADB                            R11 1
      220 SETTABLEKS                       R11 R10 K116 ["BodyWidthScale"]
      222 LOADB                            R11 1
      223 SETTABLEKS                       R11 R10 K117 ["BodyDepthScale"]
      225 LOADB                            R11 1
      226 SETTABLEKS                       R11 R10 K118 ["HeadScale"]
      228 DUPCLOSURE                       R11 K119 [PROTO_12]
      229 CAPTURE                          VAL R10
      230 SETTABLEKS                       R11 R7 K120 ["isScalingHumanoidNumber"]
      232 DUPCLOSURE                       R11 K121 [PROTO_13]
      233 CAPTURE                          VAL R5
      234 SETTABLEKS                       R11 R7 K122 ["isAttachmentOriginalPositionValue"]
      236 DUPCLOSURE                       R11 K123 [PROTO_14]
      237 CAPTURE                          VAL R7
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R6
      240 SETTABLEKS                       R11 R7 K124 ["serializeInstanceRaw"]
      242 DUPCLOSURE                       R11 K125 [PROTO_16]
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R7
      245 SETTABLEKS                       R11 R7 K126 ["serializeChildren"]
      247 DUPCLOSURE                       R11 K127 [PROTO_19]
      248 CAPTURE                          VAL R5
      249 CAPTURE                          VAL R3
      250 SETTABLEKS                       R11 R7 K128 ["computeHashSerializeContext"]
      252 LOADNIL                          R11
      253 DUPCLOSURE                       R12 K129 [PROTO_20]
      254 CAPTURE                          VAL R5
      255 CAPTURE                          VAL R12
      256 NEWCLOSURE                       R13 P18
      257 CAPTURE                          VAL R7
      258 CAPTURE                          VAL R0
      259 CAPTURE                          VAL R2
      260 CAPTURE                          VAL R5
      261 CAPTURE                          REF R11
      262 CAPTURE                          VAL R12
      263 SETTABLEKS                       R13 R7 K130 ["hashCharacter"]
      265 CLOSEUPVALS                      R11
      266 RETURN                           R7 1
