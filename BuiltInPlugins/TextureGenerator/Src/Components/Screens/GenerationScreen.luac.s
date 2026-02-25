PROTO_0:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["GENERATION_SELECTION_THRESHOLD"]
        5 JUMPIFNOTLT                      R1 R0 ; [+5]
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 LOADB                            R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 LOADK                            R8 K0 ["SurfaceAppearance"]
        6 NAMECALL                         R6 R5 K1 ["FindFirstChildOfClass"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+2]
       10 GETTABLEKS                       R0 R6 K2 ["ColorMap"]
       12 FORGLOOP                         R1 2 ; [-8]
       14 LOADNIL                          R1
       15 JUMPIFNOT                        R0 ; [+14]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R2 R5 K3 ["generations"]
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 GETTABLEKS                       R7 R6 K4 ["textureIds"]
       24 JUMPIFNOTEQ                      R7 R0 ; [+3]
       26 MOVE                             R1 R5
       27 JUMP                             ; [+2]
       28 FORGLOOP                         R2 2 ; [-7]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R2 R3 K5 ["setSelected"]
       33 MOVE                             R3 R1
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETIMPORT                        R1 K1 [print]
        5 LOADK                            R2 K2 ["generation notification table"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["generations"]
       11 GETTABLEKS                       R3 R0 K4 ["uuid"]
       13 GETTABLE                         R2 R1 R3
       14 JUMPIF                           R2 ; [+10]
       15 GETIMPORT                        R3 K6 [warn]
       17 GETUPVAL                         R4 2
       18 LOADK                            R6 K7 ["Generation"]
       19 LOADK                            R7 K8 ["Warning"]
       20 NAMECALL                         R4 R4 K9 ["getText"]
       22 CALL                             R4 3 -1
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R3 R0 K10 ["seed"]
       27 JUMPIFNOT                        R3 ; [+6]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R3 R4 K11 ["setSeed"]
       31 GETTABLEKS                       R4 R0 K10 ["seed"]
       33 CALL                             R3 1 0
       34 GETTABLEKS                       R3 R0 K12 ["status"]
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R5 R6 K13 ["STATUS"]
       39 GETTABLEKS                       R4 R5 K14 ["COMPLETED"]
       41 JUMPIFNOTEQ                      R3 R4 ; [+39]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R4 R5 K15 ["quota"]
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R5 R6 K16 ["COMPLETED_GENERATIONS_INDEX"]
       49 ADD                              R3 R4 R5
       50 SETTABLEKS                       R3 R0 K17 ["layoutOrder"]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R3 R4 K18 ["setSelected"]
       55 GETTABLEKS                       R4 R0 K4 ["uuid"]
       57 CALL                             R3 1 0
       58 GETUPVAL                         R3 5
       59 LOADK                            R5 K19 ["ReceivedTexture"]
       60 GETTABLEKS                       R6 R2 K20 ["serverId"]
       62 GETTABLEKS                       R7 R2 K21 ["meshParts"]
       64 GETTABLEKS                       R8 R2 K22 ["prompt"]
       66 GETTABLEKS                       R9 R2 K10 ["seed"]
       68 GETTABLEKS                       R10 R2 K23 ["rotation"]
       70 GETTABLEKS                       R11 R2 K24 ["smartUVUnwrap"]
       72 GETTABLEKS                       R12 R2 K25 ["promptMasking"]
       74 GETTABLEKS                       R13 R0 K26 ["textureIds"]
       76 GETTABLEKS                       R14 R2 K4 ["uuid"]
       78 NAMECALL                         R3 R3 K27 ["report"]
       80 CALL                             R3 11 0
       81 GETUPVAL                         R4 1
       82 GETTABLEKS                       R3 R4 K28 ["updateGeneration"]
       84 DUPTABLE                         R4 K31 [{"action", "uuid", "data"}]
       85 GETUPVAL                         R7 4
       86 GETTABLEKS                       R6 R7 K32 ["GENERATION_ACTIONS"]
       88 GETTABLEKS                       R5 R6 K33 ["UPDATE"]
       90 SETTABLEKS                       R5 R4 K29 ["action"]
       92 GETTABLEKS                       R5 R0 K4 ["uuid"]
       94 SETTABLEKS                       R5 R4 K4 ["uuid"]
       96 SETTABLEKS                       R0 R4 K30 ["data"]
       98 CALL                             R3 1 0
       99 GETTABLEKS                       R3 R0 K12 ["status"]
      101 GETUPVAL                         R6 4
      102 GETTABLEKS                       R5 R6 K13 ["STATUS"]
      104 GETTABLEKS                       R4 R5 K14 ["COMPLETED"]
      106 JUMPIFEQ                         R3 R4 ; [+2]
      108 RETURN                           R0 0
      109 GETTABLEKS                       R3 R0 K34 ["unwrappingRequest"]
      111 JUMPIFNOT                        R3 ; [+77]
      112 GETUPVAL                         R3 6
      113 GETTABLEKS                       R4 R2 K21 ["meshParts"]
      115 GETUPVAL                         R5 7
      116 CALL                             R3 2 1
      117 GETTABLEKS                       R4 R0 K34 ["unwrappingRequest"]
      119 GETTABLEKS                       R6 R2 K35 ["partGroup"]
      121 NAMECALL                         R4 R4 K36 ["ApplyToDataModel"]
      123 CALL                             R4 2 0
      124 GETUPVAL                         R4 6
      125 GETTABLEKS                       R5 R2 K21 ["meshParts"]
      127 GETUPVAL                         R6 7
      128 CALL                             R4 2 1
      129 GETUPVAL                         R6 1
      130 GETTABLEKS                       R5 R6 K37 ["updateModelToGenerations"]
      132 DUPTABLE                         R6 K39 [{"action", "hash", "uuid"}]
      133 GETUPVAL                         R9 4
      134 GETTABLEKS                       R8 R9 K32 ["GENERATION_ACTIONS"]
      136 GETTABLEKS                       R7 R8 K40 ["REMOVE"]
      138 SETTABLEKS                       R7 R6 K29 ["action"]
      140 SETTABLEKS                       R3 R6 K38 ["hash"]
      142 GETTABLEKS                       R7 R0 K4 ["uuid"]
      144 SETTABLEKS                       R7 R6 K4 ["uuid"]
      146 CALL                             R5 1 0
      147 GETUPVAL                         R6 1
      148 GETTABLEKS                       R5 R6 K37 ["updateModelToGenerations"]
      150 DUPTABLE                         R6 K39 [{"action", "hash", "uuid"}]
      151 GETUPVAL                         R9 4
      152 GETTABLEKS                       R8 R9 K32 ["GENERATION_ACTIONS"]
      154 GETTABLEKS                       R7 R8 K41 ["ADD"]
      156 SETTABLEKS                       R7 R6 K29 ["action"]
      158 SETTABLEKS                       R4 R6 K38 ["hash"]
      160 GETTABLEKS                       R7 R0 K4 ["uuid"]
      162 SETTABLEKS                       R7 R6 K4 ["uuid"]
      164 CALL                             R5 1 0
      165 GETUPVAL                         R5 8
      166 CALL                             R5 0 1
      167 JUMPIFNOT                        R5 ; [+18]
      168 GETUPVAL                         R6 9
      169 GETTABLEKS                       R5 R6 K42 ["updateGenerationAngle"]
      171 DUPTABLE                         R6 K44 [{"action", "hash", "angle"}]
      172 GETUPVAL                         R9 4
      173 GETTABLEKS                       R8 R9 K45 ["GENERATION_ANGLE_ACTIONS"]
      175 GETTABLEKS                       R7 R8 K46 ["SET"]
      177 SETTABLEKS                       R7 R6 K29 ["action"]
      179 SETTABLEKS                       R4 R6 K38 ["hash"]
      181 GETTABLEKS                       R7 R2 K23 ["rotation"]
      183 SETTABLEKS                       R7 R6 K43 ["angle"]
      185 CALL                             R5 1 0
      186 GETUPVAL                         R5 10
      187 LOADB                            R6 1
      188 CALL                             R5 1 0
      189 GETTABLEKS                       R4 R0 K26 ["textureIds"]
      191 FASTCALL2K                       ASSERT R4 K47 ; [+4]
      193 LOADK                            R5 K47 ["Notification should have saved TextureIDs"]
      194 GETIMPORT                        R3 K49 [assert]
      196 CALL                             R3 2 0
      197 GETTABLEKS                       R3 R2 K21 ["meshParts"]
      199 LOADNIL                          R4
      200 LOADNIL                          R5
      201 FORGPREP                         R3
      202 GETUPVAL                         R8 11
      203 MOVE                             R9 R7
      204 GETTABLEKS                       R10 R0 K26 ["textureIds"]
      206 CALL                             R8 2 0
      207 FORGLOOP                         R3 2 ; [-6]
      209 GETUPVAL                         R3 12
      210 GETUPVAL                         R4 1
      211 GETUPVAL                         R5 13
      212 GETUPVAL                         R6 7
      213 CALL                             R3 3 0
      214 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETIMPORT                        R1 K1 [print]
        5 LOADK                            R2 K2 ["preview notification table"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["seed"]
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K4 ["setSeed"]
       14 GETTABLEKS                       R2 R0 K3 ["seed"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K5 ["previews"]
       20 GETTABLEKS                       R3 R0 K6 ["uuid"]
       22 GETTABLE                         R1 R2 R3
       23 JUMPIFNOT                        R1 ; [+7]
       24 GETTABLEKS                       R2 R1 K7 ["imageFailed"]
       26 JUMPIF                           R2 ; [+4]
       27 LOADN                            R2 0
       28 SETTABLEKS                       R2 R0 K7 ["imageFailed"]
       30 JUMP                             ; [+11]
       31 GETTABLEKS                       R2 R0 K8 ["previewUrlFailed"]
       33 JUMPIFNOT                        R2 ; [+8]
       34 GETTABLEKS                       R2 R1 K7 ["imageFailed"]
       36 JUMPIFNOT                        R2 ; [+5]
       37 GETTABLEKS                       R3 R1 K7 ["imageFailed"]
       39 ADDK                             R2 R3 K9 [1]
       40 SETTABLEKS                       R2 R0 K7 ["imageFailed"]
       42 GETTABLEKS                       R2 R0 K10 ["status"]
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R4 R5 K11 ["STATUS"]
       47 GETTABLEKS                       R3 R4 K12 ["COMPLETED"]
       49 JUMPIFNOTEQ                      R2 R3 ; [+22]
       51 GETUPVAL                         R2 4
       52 LOADK                            R4 K13 ["ReceivedPreview"]
       53 GETTABLEKS                       R5 R1 K14 ["serverId"]
       55 GETTABLEKS                       R6 R1 K15 ["meshParts"]
       57 GETTABLEKS                       R7 R1 K16 ["prompt"]
       59 GETTABLEKS                       R8 R1 K3 ["seed"]
       61 GETTABLEKS                       R9 R1 K17 ["rotation"]
       63 GETTABLEKS                       R10 R1 K18 ["smartUVUnwrap"]
       65 GETTABLEKS                       R11 R1 K19 ["promptMasking"]
       67 GETTABLEKS                       R12 R0 K6 ["uuid"]
       69 NAMECALL                         R2 R2 K20 ["report"]
       71 CALL                             R2 10 0
       72 GETTABLEKS                       R2 R0 K10 ["status"]
       74 GETUPVAL                         R5 3
       75 GETTABLEKS                       R4 R5 K11 ["STATUS"]
       77 GETTABLEKS                       R3 R4 K21 ["FAILED"]
       79 JUMPIFNOTEQ                      R2 R3 ; [+29]
       81 GETTABLEKS                       R2 R0 K22 ["message"]
       83 GETUPVAL                         R4 2
       84 GETTABLEKS                       R3 R4 K23 ["addError"]
       86 GETUPVAL                         R4 5
       87 GETTABLEKS                       R5 R1 K15 ["meshParts"]
       89 GETUPVAL                         R6 6
       90 CALL                             R4 2 1
       91 MOVE                             R5 R2
       92 GETUPVAL                         R6 7
       93 LOADK                            R8 K24 ["EntryArea"]
       94 LOADK                            R9 K25 ["ErrorAlertTitle"]
       95 NAMECALL                         R6 R6 K26 ["getText"]
       97 CALL                             R6 3 1
       98 GETTABLEKS                       R7 R0 K22 ["message"]
      100 LOADK                            R8 K27 ["error"]
      101 CALL                             R3 5 0
      102 GETUPVAL                         R4 2
      103 GETTABLEKS                       R3 R4 K28 ["removePreview"]
      105 GETTABLEKS                       R4 R0 K6 ["uuid"]
      107 CALL                             R3 1 0
      108 JUMP                             ; [+5]
      109 GETUPVAL                         R3 2
      110 GETTABLEKS                       R2 R3 K29 ["updatePreview"]
      112 MOVE                             R3 R0
      113 CALL                             R2 1 0
      114 GETUPVAL                         R2 8
      115 GETUPVAL                         R3 9
      116 GETUPVAL                         R4 2
      117 GETUPVAL                         R5 6
      118 CALL                             R2 3 0
      119 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R3 R3 K0 ["use"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R6 4
       15 GETTABLEKS                       R5 R6 K2 ["useContext"]
       17 GETUPVAL                         R6 5
       18 CALL                             R5 1 1
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R6 R7 K2 ["useContext"]
       22 GETUPVAL                         R7 6
       23 CALL                             R6 1 1
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R7 R8 K2 ["useContext"]
       27 GETUPVAL                         R8 7
       28 CALL                             R7 1 1
       29 GETUPVAL                         R9 4
       30 GETTABLEKS                       R8 R9 K2 ["useContext"]
       32 GETUPVAL                         R9 8
       33 CALL                             R8 1 1
       34 GETUPVAL                         R10 4
       35 GETTABLEKS                       R9 R10 K2 ["useContext"]
       37 GETUPVAL                         R10 9
       38 CALL                             R9 1 1
       39 GETUPVAL                         R11 4
       40 GETTABLEKS                       R10 R11 K3 ["useState"]
       42 GETTABLEKS                       R12 R0 K5 ["ShowUVUnwrapWarning"]
       44 ORK                              R11 R12 K4 [False]
       45 CALL                             R10 1 2
       46 GETUPVAL                         R13 4
       47 GETTABLEKS                       R12 R13 K3 ["useState"]
       49 GETTABLEKS                       R14 R0 K6 ["ShowLargeMeshCountWarning"]
       51 ORK                              R13 R14 K4 [False]
       52 CALL                             R12 1 2
       53 GETUPVAL                         R14 10
       54 CALL                             R14 0 1
       55 JUMPIFNOT                        R14 ; [+13]
       56 GETUPVAL                         R15 4
       57 GETTABLEKS                       R14 R15 K7 ["useEffect"]
       59 NEWCLOSURE                       R15 P0
       60 CAPTURE                          VAL R4
       61 CAPTURE                          UPVAL U11
       62 CAPTURE                          VAL R13
       63 NEWTABLE                         R16 0 1
       65 MOVE                             R17 R4
       66 SETLIST                          R16 R17 1 [1]
       68 CALL                             R14 2 0
       69 LOADNIL                          R14
       70 LOADNIL                          R15
       71 LOADNIL                          R16
       72 LOADNIL                          R17
       73 LOADNIL                          R18
       74 GETUPVAL                         R19 10
       75 CALL                             R19 0 1
       76 JUMPIFNOT                        R19 ; [+35]
       77 JUMPIFNOT                        R10 ; [+17]
       78 MOVE                             R14 R10
       79 LOADK                            R21 K8 ["Generation"]
       80 LOADK                            R22 K9 ["UVUnwrapWarningTitle"]
       81 NAMECALL                         R19 R3 K10 ["getText"]
       83 CALL                             R19 3 1
       84 MOVE                             R15 R19
       85 LOADK                            R21 K8 ["Generation"]
       86 LOADK                            R22 K11 ["UVUnwrapWarningDescription"]
       87 NAMECALL                         R19 R3 K10 ["getText"]
       89 CALL                             R19 3 1
       90 MOVE                             R16 R19
       91 LOADK                            R17 K12 ["Notice"]
       92 NEWCLOSURE                       R18 P1
       93 CAPTURE                          VAL R11
       94 JUMP                             ; [+17]
       95 JUMPIFNOT                        R12 ; [+16]
       96 MOVE                             R14 R12
       97 LOADK                            R21 K13 ["General"]
       98 LOADK                            R22 K14 ["Warning"]
       99 NAMECALL                         R19 R3 K10 ["getText"]
      101 CALL                             R19 3 1
      102 MOVE                             R15 R19
      103 LOADK                            R21 K13 ["General"]
      104 LOADK                            R22 K15 ["LargeMeshCountWarning"]
      105 NAMECALL                         R19 R3 K10 ["getText"]
      107 CALL                             R19 3 1
      108 MOVE                             R16 R19
      109 LOADK                            R17 K14 ["Warning"]
      110 NEWCLOSURE                       R18 P2
      111 CAPTURE                          VAL R13
      112 GETUPVAL                         R20 4
      113 GETTABLEKS                       R19 R20 K7 ["useEffect"]
      115 NEWCLOSURE                       R20 P3
      116 CAPTURE                          UPVAL U12
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R5
      120 NEWTABLE                         R21 0 0
      122 CALL                             R19 2 0
      123 GETUPVAL                         R20 4
      124 GETTABLEKS                       R19 R20 K7 ["useEffect"]
      126 NEWCLOSURE                       R20 P4
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R6
      129 NEWTABLE                         R21 0 2
      131 MOVE                             R22 R4
      132 GETTABLEKS                       R23 R6 K16 ["setSelected"]
      134 SETLIST                          R21 R22 2 [1]
      136 CALL                             R19 2 0
      137 LOADNIL                          R19
      138 GETUPVAL                         R20 10
      139 CALL                             R20 0 1
      140 JUMPIFNOT                        R20 ; [+19]
      141 NEWTABLE                         R20 0 8
      143 GETTABLEKS                       R21 R6 K17 ["generations"]
      145 GETTABLEKS                       R22 R6 K18 ["updateGeneration"]
      147 GETTABLEKS                       R23 R6 K19 ["updateModelToGenerations"]
      149 GETTABLEKS                       R24 R6 K16 ["setSelected"]
      151 GETTABLEKS                       R25 R8 K20 ["setSeed"]
      153 MOVE                             R26 R4
      154 MOVE                             R27 R10
      155 MOVE                             R28 R5
      156 SETLIST                          R20 R21 8 [1]
      158 MOVE                             R19 R20
      159 JUMP                             ; [+17]
      160 NEWTABLE                         R20 0 7
      162 GETTABLEKS                       R21 R6 K17 ["generations"]
      164 GETTABLEKS                       R22 R6 K18 ["updateGeneration"]
      166 GETTABLEKS                       R23 R6 K19 ["updateModelToGenerations"]
      168 GETTABLEKS                       R24 R6 K16 ["setSelected"]
      170 GETTABLEKS                       R25 R8 K20 ["setSeed"]
      172 MOVE                             R26 R4
      173 MOVE                             R27 R5
      174 SETLIST                          R20 R21 7 [1]
      176 MOVE                             R19 R20
      177 GETUPVAL                         R20 13
      178 CALL                             R20 0 1
      179 JUMPIFNOT                        R20 ; [+16]
      180 GETTABLEKS                       R22 R7 K21 ["generationAngles"]
      182 FASTCALL2                        TABLE_INSERT R19 R22 ; [+4]
      184 MOVE                             R21 R19
      185 GETIMPORT                        R20 K24 [table.insert]
      187 CALL                             R20 2 0
      188 GETTABLEKS                       R22 R7 K25 ["updateGenerationAngle"]
      190 FASTCALL2                        TABLE_INSERT R19 R22 ; [+4]
      192 MOVE                             R21 R19
      193 GETIMPORT                        R20 K24 [table.insert]
      195 CALL                             R20 2 0
      196 GETUPVAL                         R20 14
      197 GETTABLEKS                       R21 R5 K26 ["generationNotificationSignal"]
      199 CALL                             R21 0 1
      200 NEWCLOSURE                       R22 P5
      201 CAPTURE                          UPVAL U15
      202 CAPTURE                          VAL R6
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R8
      205 CAPTURE                          UPVAL U11
      206 CAPTURE                          VAL R1
      207 CAPTURE                          UPVAL U16
      208 CAPTURE                          VAL R5
      209 CAPTURE                          UPVAL U13
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R11
      212 CAPTURE                          UPVAL U17
      213 CAPTURE                          UPVAL U12
      214 CAPTURE                          VAL R9
      215 MOVE                             R23 R19
      216 CALL                             R20 3 0
      217 GETUPVAL                         R20 14
      218 GETTABLEKS                       R21 R5 K27 ["previewNotificationSignal"]
      220 CALL                             R21 0 1
      221 NEWCLOSURE                       R22 P6
      222 CAPTURE                          UPVAL U15
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R9
      225 CAPTURE                          UPVAL U11
      226 CAPTURE                          VAL R1
      227 CAPTURE                          UPVAL U16
      228 CAPTURE                          VAL R5
      229 CAPTURE                          VAL R3
      230 CAPTURE                          UPVAL U12
      231 CAPTURE                          VAL R6
      232 NEWTABLE                         R23 0 5
      234 MOVE                             R24 R6
      235 GETTABLEKS                       R25 R8 K20 ["setSeed"]
      237 MOVE                             R26 R9
      238 MOVE                             R27 R4
      239 MOVE                             R28 R5
      240 SETLIST                          R23 R24 5 [1]
      242 CALL                             R20 3 0
      243 GETUPVAL                         R21 4
      244 GETTABLEKS                       R20 R21 K28 ["createElement"]
      246 GETUPVAL                         R21 18
      247 DUPTABLE                         R22 K31 [{"AutomaticCanvasSize", "Size"}]
      248 GETIMPORT                        R23 K35 [Enum.AutomaticSize.Y]
      250 SETTABLEKS                       R23 R22 K29 ["AutomaticCanvasSize"]
      252 GETIMPORT                        R23 K38 [UDim2.fromScale]
      254 LOADN                            R24 1
      255 LOADN                            R25 1
      256 CALL                             R23 2 1
      257 SETTABLEKS                       R23 R22 K30 ["Size"]
      259 DUPTABLE                         R23 K40 [{"Main", "Notice"}]
      260 GETUPVAL                         R25 4
      261 GETTABLEKS                       R24 R25 K28 ["createElement"]
      263 GETUPVAL                         R25 19
      264 DUPTABLE                         R26 K44 [{"HorizontalAlignment", "Layout", "VerticalAlignment"}]
      265 GETIMPORT                        R27 K46 [Enum.HorizontalAlignment.Center]
      267 SETTABLEKS                       R27 R26 K41 ["HorizontalAlignment"]
      269 GETIMPORT                        R27 K49 [Enum.FillDirection.Vertical]
      271 SETTABLEKS                       R27 R26 K42 ["Layout"]
      273 GETIMPORT                        R27 K51 [Enum.VerticalAlignment.Top]
      275 SETTABLEKS                       R27 R26 K43 ["VerticalAlignment"]
      277 DUPTABLE                         R27 K54 [{"EntryArea", "Generations"}]
      278 GETUPVAL                         R29 4
      279 GETTABLEKS                       R28 R29 K28 ["createElement"]
      281 GETUPVAL                         R29 20
      282 DUPTABLE                         R30 K56 [{"LayoutOrder"}]
      283 NAMECALL                         R31 R2 K57 ["getNextOrder"]
      285 CALL                             R31 1 1
      286 SETTABLEKS                       R31 R30 K55 ["LayoutOrder"]
      288 CALL                             R28 2 1
      289 SETTABLEKS                       R28 R27 K52 ["EntryArea"]
      291 GETUPVAL                         R29 4
      292 GETTABLEKS                       R28 R29 K28 ["createElement"]
      294 GETUPVAL                         R29 21
      295 DUPTABLE                         R30 K59 [{"LayoutOrder", "MeshParts"}]
      296 NAMECALL                         R31 R2 K57 ["getNextOrder"]
      298 CALL                             R31 1 1
      299 SETTABLEKS                       R31 R30 K55 ["LayoutOrder"]
      301 SETTABLEKS                       R4 R30 K58 ["MeshParts"]
      303 CALL                             R28 2 1
      304 SETTABLEKS                       R28 R27 K53 ["Generations"]
      306 CALL                             R24 3 1
      307 SETTABLEKS                       R24 R23 K39 ["Main"]
      309 MOVE                             R24 R14
      310 JUMPIFNOT                        R24 ; [+17]
      311 GETUPVAL                         R25 4
      312 GETTABLEKS                       R24 R25 K28 ["createElement"]
      314 GETUPVAL                         R25 22
      315 DUPTABLE                         R26 K65 [{"Title", "Description", "Style", "ZIndex", "OnClose"}]
      316 SETTABLEKS                       R15 R26 K60 ["Title"]
      318 SETTABLEKS                       R16 R26 K61 ["Description"]
      320 SETTABLEKS                       R17 R26 K62 ["Style"]
      322 LOADN                            R27 2
      323 SETTABLEKS                       R27 R26 K63 ["ZIndex"]
      325 SETTABLEKS                       R18 R26 K64 ["OnClose"]
      327 CALL                             R24 2 1
      328 SETTABLEKS                       R24 R23 K12 ["Notice"]
      330 CALL                             R20 3 -1
      331 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["useEventConnection"]
       30 GETTABLEKS                       R6 R0 K11 ["Src"]
       32 GETTABLEKS                       R5 R6 K12 ["Components"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K13 ["EntryArea"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R5 K14 ["Generations"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R3 K15 ["ContextServices"]
       46 GETTABLEKS                       R9 R8 K16 ["Analytics"]
       48 GETTABLEKS                       R10 R8 K17 ["Localization"]
       50 GETTABLEKS                       R12 R0 K11 ["Src"]
       52 GETTABLEKS                       R11 R12 K18 ["Hooks"]
       54 GETIMPORT                        R12 K5 [require]
       56 GETTABLEKS                       R13 R11 K19 ["useSelectedMeshParts"]
       58 CALL                             R12 1 1
       59 GETIMPORT                        R13 K5 [require]
       61 GETTABLEKS                       R16 R0 K11 ["Src"]
       63 GETTABLEKS                       R15 R16 K12 ["Components"]
       65 GETTABLEKS                       R14 R15 K20 ["TextureGenerationServiceContext"]
       67 CALL                             R13 1 1
       68 GETTABLEKS                       R14 R3 K21 ["UI"]
       70 GETTABLEKS                       R15 R14 K22 ["Alert"]
       72 GETTABLEKS                       R16 R14 K23 ["ScrollingFrame"]
       74 GETTABLEKS                       R17 R14 K24 ["Pane"]
       76 GETIMPORT                        R18 K5 [require]
       78 GETTABLEKS                       R21 R0 K11 ["Src"]
       80 GETTABLEKS                       R20 R21 K25 ["Util"]
       82 GETTABLEKS                       R19 R20 K26 ["Constants"]
       84 CALL                             R18 1 1
       85 GETIMPORT                        R19 K5 [require]
       87 GETTABLEKS                       R22 R0 K11 ["Src"]
       89 GETTABLEKS                       R21 R22 K25 ["Util"]
       91 GETTABLEKS                       R20 R21 K27 ["GenerationsContext"]
       93 CALL                             R19 1 1
       94 GETIMPORT                        R20 K5 [require]
       96 GETTABLEKS                       R23 R0 K11 ["Src"]
       98 GETTABLEKS                       R22 R23 K25 ["Util"]
      100 GETTABLEKS                       R21 R22 K28 ["GenerationAnglesContext"]
      102 CALL                             R20 1 1
      103 GETIMPORT                        R21 K5 [require]
      105 GETTABLEKS                       R24 R0 K11 ["Src"]
      107 GETTABLEKS                       R23 R24 K25 ["Util"]
      109 GETTABLEKS                       R22 R23 K29 ["OptionsContext"]
      111 CALL                             R21 1 1
      112 GETIMPORT                        R22 K5 [require]
      114 GETTABLEKS                       R25 R0 K11 ["Src"]
      116 GETTABLEKS                       R24 R25 K25 ["Util"]
      118 GETTABLEKS                       R23 R24 K30 ["PreviewsContext"]
      120 CALL                             R22 1 1
      121 GETIMPORT                        R23 K5 [require]
      123 GETTABLEKS                       R26 R0 K11 ["Src"]
      125 GETTABLEKS                       R25 R26 K25 ["Util"]
      127 GETTABLEKS                       R24 R25 K31 ["createHashFromMeshParts"]
      129 CALL                             R23 1 1
      130 GETIMPORT                        R24 K5 [require]
      132 GETTABLEKS                       R27 R0 K11 ["Src"]
      134 GETTABLEKS                       R26 R27 K25 ["Util"]
      136 GETTABLEKS                       R25 R26 K32 ["fetchAndSetQuotas"]
      138 CALL                             R24 1 1
      139 GETIMPORT                        R25 K5 [require]
      141 GETTABLEKS                       R28 R0 K11 ["Src"]
      143 GETTABLEKS                       R27 R28 K25 ["Util"]
      145 GETTABLEKS                       R26 R27 K33 ["setTexture"]
      147 CALL                             R25 1 1
      148 GETTABLEKS                       R27 R3 K25 ["Util"]
      150 GETTABLEKS                       R26 R27 K34 ["LayoutOrderIterator"]
      152 GETIMPORT                        R27 K5 [require]
      154 GETTABLEKS                       R30 R0 K11 ["Src"]
      156 GETTABLEKS                       R29 R30 K35 ["Flags"]
      158 GETTABLEKS                       R28 R29 K36 ["getFFlagDebugTextureGeneratorLogging"]
      160 CALL                             R27 1 1
      161 GETIMPORT                        R28 K5 [require]
      163 GETTABLEKS                       R31 R0 K11 ["Src"]
      165 GETTABLEKS                       R30 R31 K35 ["Flags"]
      167 GETTABLEKS                       R29 R30 K37 ["getFFlagTextureGeneratorBanners"]
      169 CALL                             R28 1 1
      170 GETIMPORT                        R29 K5 [require]
      172 GETTABLEKS                       R32 R0 K11 ["Src"]
      174 GETTABLEKS                       R31 R32 K35 ["Flags"]
      176 GETTABLEKS                       R30 R31 K38 ["getFFlagTextureGeneratorMultiStagePreview"]
      178 CALL                             R29 1 1
      179 DUPCLOSURE                       R30 K39 [PROTO_7]
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R26
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R28
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R24
      193 CAPTURE                          VAL R29
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R27
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R15
      203 RETURN                           R30 1
