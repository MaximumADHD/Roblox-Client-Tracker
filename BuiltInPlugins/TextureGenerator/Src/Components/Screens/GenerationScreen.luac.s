PROTO_0:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["GENERATION_SELECTION_THRESHOLD"]
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
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K3 ["generations"]
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 GETTABLEKS                       R7 R6 K4 ["textureIds"]
       24 JUMPIFNOTEQ                      R7 R0 ; [+3]
       26 MOVE                             R1 R5
       27 JUMP                             ; [+2]
       28 FORGLOOP                         R2 2 ; [-7]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K5 ["setSelected"]
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
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["generations"]
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
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K11 ["setSeed"]
       31 GETTABLEKS                       R4 R0 K10 ["seed"]
       33 CALL                             R3 1 0
       34 GETTABLEKS                       R3 R0 K12 ["status"]
       36 GETUPVAL                         R4 4
       37 GETTABLEKS                       R4 R4 K13 ["STATUS"]
       39 GETTABLEKS                       R4 R4 K14 ["COMPLETED"]
       41 JUMPIFNOTEQ                      R3 R4 ; [+39]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K15 ["quota"]
       46 GETUPVAL                         R5 4
       47 GETTABLEKS                       R5 R5 K16 ["COMPLETED_GENERATIONS_INDEX"]
       49 ADD                              R3 R4 R5
       50 SETTABLEKS                       R3 R0 K17 ["layoutOrder"]
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R3 R3 K18 ["setSelected"]
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
       81 GETUPVAL                         R3 1
       82 GETTABLEKS                       R3 R3 K28 ["updateGeneration"]
       84 DUPTABLE                         R4 K31 [{"action", "uuid", "data"}]
       85 GETUPVAL                         R5 4
       86 GETTABLEKS                       R5 R5 K32 ["GENERATION_ACTIONS"]
       88 GETTABLEKS                       R5 R5 K33 ["UPDATE"]
       90 SETTABLEKS                       R5 R4 K29 ["action"]
       92 GETTABLEKS                       R5 R0 K4 ["uuid"]
       94 SETTABLEKS                       R5 R4 K4 ["uuid"]
       96 SETTABLEKS                       R0 R4 K30 ["data"]
       98 CALL                             R3 1 0
       99 GETTABLEKS                       R3 R0 K12 ["status"]
      101 GETUPVAL                         R4 4
      102 GETTABLEKS                       R4 R4 K13 ["STATUS"]
      104 GETTABLEKS                       R4 R4 K14 ["COMPLETED"]
      106 JUMPIFEQ                         R3 R4 ; [+2]
      108 RETURN                           R0 0
      109 GETTABLEKS                       R3 R0 K34 ["unwrappingRequest"]
      111 JUMPIFNOT                        R3 ; [+74]
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
      129 GETUPVAL                         R5 1
      130 GETTABLEKS                       R5 R5 K37 ["updateModelToGenerations"]
      132 DUPTABLE                         R6 K39 [{"action", "hash", "uuid"}]
      133 GETUPVAL                         R7 4
      134 GETTABLEKS                       R7 R7 K32 ["GENERATION_ACTIONS"]
      136 GETTABLEKS                       R7 R7 K40 ["REMOVE"]
      138 SETTABLEKS                       R7 R6 K29 ["action"]
      140 SETTABLEKS                       R3 R6 K38 ["hash"]
      142 GETTABLEKS                       R7 R0 K4 ["uuid"]
      144 SETTABLEKS                       R7 R6 K4 ["uuid"]
      146 CALL                             R5 1 0
      147 GETUPVAL                         R5 1
      148 GETTABLEKS                       R5 R5 K37 ["updateModelToGenerations"]
      150 DUPTABLE                         R6 K39 [{"action", "hash", "uuid"}]
      151 GETUPVAL                         R7 4
      152 GETTABLEKS                       R7 R7 K32 ["GENERATION_ACTIONS"]
      154 GETTABLEKS                       R7 R7 K41 ["ADD"]
      156 SETTABLEKS                       R7 R6 K29 ["action"]
      158 SETTABLEKS                       R4 R6 K38 ["hash"]
      160 GETTABLEKS                       R7 R0 K4 ["uuid"]
      162 SETTABLEKS                       R7 R6 K4 ["uuid"]
      164 CALL                             R5 1 0
      165 GETUPVAL                         R5 8
      166 GETTABLEKS                       R5 R5 K42 ["updateGenerationAngle"]
      168 DUPTABLE                         R6 K44 [{"action", "hash", "angle"}]
      169 GETUPVAL                         R7 4
      170 GETTABLEKS                       R7 R7 K45 ["GENERATION_ANGLE_ACTIONS"]
      172 GETTABLEKS                       R7 R7 K46 ["SET"]
      174 SETTABLEKS                       R7 R6 K29 ["action"]
      176 SETTABLEKS                       R4 R6 K38 ["hash"]
      178 GETTABLEKS                       R7 R2 K23 ["rotation"]
      180 SETTABLEKS                       R7 R6 K43 ["angle"]
      182 CALL                             R5 1 0
      183 GETUPVAL                         R5 9
      184 LOADB                            R6 1
      185 CALL                             R5 1 0
      186 GETTABLEKS                       R4 R0 K26 ["textureIds"]
      188 FASTCALL2K                       ASSERT R4 K47 ; [+4]
      190 LOADK                            R5 K47 ["Notification should have saved TextureIDs"]
      191 GETIMPORT                        R3 K49 [assert]
      193 CALL                             R3 2 0
      194 GETTABLEKS                       R3 R2 K21 ["meshParts"]
      196 LOADNIL                          R4
      197 LOADNIL                          R5
      198 FORGPREP                         R3
      199 GETUPVAL                         R8 10
      200 MOVE                             R9 R7
      201 GETTABLEKS                       R10 R0 K26 ["textureIds"]
      203 CALL                             R8 2 0
      204 FORGLOOP                         R3 2 ; [-6]
      206 GETUPVAL                         R3 11
      207 GETUPVAL                         R4 1
      208 GETUPVAL                         R5 12
      209 GETUPVAL                         R6 7
      210 CALL                             R3 3 0
      211 RETURN                           R0 0

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
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["setSeed"]
       14 GETTABLEKS                       R2 R0 K3 ["seed"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K5 ["previews"]
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
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K11 ["STATUS"]
       47 GETTABLEKS                       R3 R3 K12 ["COMPLETED"]
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
       74 GETUPVAL                         R3 3
       75 GETTABLEKS                       R3 R3 K11 ["STATUS"]
       77 GETTABLEKS                       R3 R3 K21 ["FAILED"]
       79 JUMPIFNOTEQ                      R2 R3 ; [+29]
       81 GETTABLEKS                       R2 R0 K22 ["message"]
       83 GETUPVAL                         R3 2
       84 GETTABLEKS                       R3 R3 K23 ["addError"]
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
      102 GETUPVAL                         R3 2
      103 GETTABLEKS                       R3 R3 K28 ["removePreview"]
      105 GETTABLEKS                       R4 R0 K6 ["uuid"]
      107 CALL                             R3 1 0
      108 JUMP                             ; [+5]
      109 GETUPVAL                         R2 2
      110 GETTABLEKS                       R2 R2 K29 ["updatePreview"]
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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R3 R3 K0 ["use"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K2 ["useContext"]
       17 GETUPVAL                         R6 5
       18 CALL                             R5 1 1
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R6 R6 K2 ["useContext"]
       22 GETUPVAL                         R7 6
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R7 R7 K2 ["useContext"]
       27 GETUPVAL                         R8 7
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K2 ["useContext"]
       32 GETUPVAL                         R9 8
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R9 R9 K2 ["useContext"]
       37 GETUPVAL                         R10 9
       38 CALL                             R9 1 1
       39 GETUPVAL                         R10 4
       40 GETTABLEKS                       R10 R10 K3 ["useState"]
       42 GETTABLEKS                       R12 R0 K5 ["ShowUVUnwrapWarning"]
       44 ORK                              R11 R12 K4 [False]
       45 CALL                             R10 1 2
       46 GETUPVAL                         R12 4
       47 GETTABLEKS                       R12 R12 K3 ["useState"]
       49 GETTABLEKS                       R14 R0 K6 ["ShowLargeMeshCountWarning"]
       51 ORK                              R13 R14 K4 [False]
       52 CALL                             R12 1 2
       53 GETUPVAL                         R14 4
       54 GETTABLEKS                       R14 R14 K7 ["useEffect"]
       56 NEWCLOSURE                       R15 P0
       57 CAPTURE                          VAL R4
       58 CAPTURE                          UPVAL U10
       59 CAPTURE                          VAL R13
       60 NEWTABLE                         R16 0 1
       62 MOVE                             R17 R4
       63 SETLIST                          R16 R17 1 [1]
       65 CALL                             R14 2 0
       66 LOADNIL                          R14
       67 LOADNIL                          R15
       68 LOADNIL                          R16
       69 LOADNIL                          R17
       70 LOADNIL                          R18
       71 JUMPIFNOT                        R10 ; [+17]
       72 MOVE                             R14 R10
       73 LOADK                            R21 K8 ["Generation"]
       74 LOADK                            R22 K9 ["UVUnwrapWarningTitle"]
       75 NAMECALL                         R19 R3 K10 ["getText"]
       77 CALL                             R19 3 1
       78 MOVE                             R15 R19
       79 LOADK                            R21 K8 ["Generation"]
       80 LOADK                            R22 K11 ["UVUnwrapWarningDescription"]
       81 NAMECALL                         R19 R3 K10 ["getText"]
       83 CALL                             R19 3 1
       84 MOVE                             R16 R19
       85 LOADK                            R17 K12 ["Notice"]
       86 NEWCLOSURE                       R18 P1
       87 CAPTURE                          VAL R11
       88 JUMP                             ; [+17]
       89 JUMPIFNOT                        R12 ; [+16]
       90 MOVE                             R14 R12
       91 LOADK                            R21 K13 ["General"]
       92 LOADK                            R22 K14 ["Warning"]
       93 NAMECALL                         R19 R3 K10 ["getText"]
       95 CALL                             R19 3 1
       96 MOVE                             R15 R19
       97 LOADK                            R21 K13 ["General"]
       98 LOADK                            R22 K15 ["LargeMeshCountWarning"]
       99 NAMECALL                         R19 R3 K10 ["getText"]
      101 CALL                             R19 3 1
      102 MOVE                             R16 R19
      103 LOADK                            R17 K14 ["Warning"]
      104 NEWCLOSURE                       R18 P2
      105 CAPTURE                          VAL R13
      106 GETUPVAL                         R19 4
      107 GETTABLEKS                       R19 R19 K7 ["useEffect"]
      109 NEWCLOSURE                       R20 P3
      110 CAPTURE                          UPVAL U11
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R5
      114 NEWTABLE                         R21 0 0
      116 CALL                             R19 2 0
      117 GETUPVAL                         R19 4
      118 GETTABLEKS                       R19 R19 K7 ["useEffect"]
      120 NEWCLOSURE                       R20 P4
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R6
      123 NEWTABLE                         R21 0 2
      125 MOVE                             R22 R4
      126 GETTABLEKS                       R23 R6 K16 ["setSelected"]
      128 SETLIST                          R21 R22 2 [1]
      130 CALL                             R19 2 0
      131 NEWTABLE                         R19 0 8
      133 GETTABLEKS                       R20 R6 K17 ["generations"]
      135 GETTABLEKS                       R21 R6 K18 ["updateGeneration"]
      137 GETTABLEKS                       R22 R6 K19 ["updateModelToGenerations"]
      139 GETTABLEKS                       R23 R6 K16 ["setSelected"]
      141 GETTABLEKS                       R24 R8 K20 ["setSeed"]
      143 MOVE                             R25 R4
      144 MOVE                             R26 R10
      145 MOVE                             R27 R5
      146 SETLIST                          R19 R20 8 [1]
      148 GETTABLEKS                       R22 R7 K21 ["generationAngles"]
      150 FASTCALL2                        TABLE_INSERT R19 R22 ; [+4]
      152 MOVE                             R21 R19
      153 GETIMPORT                        R20 K24 [table.insert]
      155 CALL                             R20 2 0
      156 GETTABLEKS                       R22 R7 K25 ["updateGenerationAngle"]
      158 FASTCALL2                        TABLE_INSERT R19 R22 ; [+4]
      160 MOVE                             R21 R19
      161 GETIMPORT                        R20 K24 [table.insert]
      163 CALL                             R20 2 0
      164 GETUPVAL                         R20 12
      165 GETTABLEKS                       R21 R5 K26 ["generationNotificationSignal"]
      167 CALL                             R21 0 1
      168 NEWCLOSURE                       R22 P5
      169 CAPTURE                          UPVAL U13
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R8
      173 CAPTURE                          UPVAL U10
      174 CAPTURE                          VAL R1
      175 CAPTURE                          UPVAL U14
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R7
      178 CAPTURE                          VAL R11
      179 CAPTURE                          UPVAL U15
      180 CAPTURE                          UPVAL U11
      181 CAPTURE                          VAL R9
      182 MOVE                             R23 R19
      183 CALL                             R20 3 0
      184 GETUPVAL                         R20 12
      185 GETTABLEKS                       R21 R5 K27 ["previewNotificationSignal"]
      187 CALL                             R21 0 1
      188 NEWCLOSURE                       R22 P6
      189 CAPTURE                          UPVAL U13
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R9
      192 CAPTURE                          UPVAL U10
      193 CAPTURE                          VAL R1
      194 CAPTURE                          UPVAL U14
      195 CAPTURE                          VAL R5
      196 CAPTURE                          VAL R3
      197 CAPTURE                          UPVAL U11
      198 CAPTURE                          VAL R6
      199 NEWTABLE                         R23 0 5
      201 MOVE                             R24 R6
      202 GETTABLEKS                       R25 R8 K20 ["setSeed"]
      204 MOVE                             R26 R9
      205 MOVE                             R27 R4
      206 MOVE                             R28 R5
      207 SETLIST                          R23 R24 5 [1]
      209 CALL                             R20 3 0
      210 GETUPVAL                         R20 4
      211 GETTABLEKS                       R20 R20 K28 ["createElement"]
      213 GETUPVAL                         R21 16
      214 DUPTABLE                         R22 K31 [{"AutomaticCanvasSize", "Size"}]
      215 GETIMPORT                        R23 K35 [Enum.AutomaticSize.Y]
      217 SETTABLEKS                       R23 R22 K29 ["AutomaticCanvasSize"]
      219 GETIMPORT                        R23 K38 [UDim2.fromScale]
      221 LOADN                            R24 1
      222 LOADN                            R25 1
      223 CALL                             R23 2 1
      224 SETTABLEKS                       R23 R22 K30 ["Size"]
      226 DUPTABLE                         R23 K40 [{"Main", "Notice"}]
      227 GETUPVAL                         R24 4
      228 GETTABLEKS                       R24 R24 K28 ["createElement"]
      230 GETUPVAL                         R25 17
      231 DUPTABLE                         R26 K44 [{"HorizontalAlignment", "Layout", "VerticalAlignment"}]
      232 GETIMPORT                        R27 K46 [Enum.HorizontalAlignment.Center]
      234 SETTABLEKS                       R27 R26 K41 ["HorizontalAlignment"]
      236 GETIMPORT                        R27 K49 [Enum.FillDirection.Vertical]
      238 SETTABLEKS                       R27 R26 K42 ["Layout"]
      240 GETIMPORT                        R27 K51 [Enum.VerticalAlignment.Top]
      242 SETTABLEKS                       R27 R26 K43 ["VerticalAlignment"]
      244 DUPTABLE                         R27 K54 [{"EntryArea", "Generations"}]
      245 GETUPVAL                         R28 4
      246 GETTABLEKS                       R28 R28 K28 ["createElement"]
      248 GETUPVAL                         R29 18
      249 DUPTABLE                         R30 K56 [{"LayoutOrder"}]
      250 NAMECALL                         R31 R2 K57 ["getNextOrder"]
      252 CALL                             R31 1 1
      253 SETTABLEKS                       R31 R30 K55 ["LayoutOrder"]
      255 CALL                             R28 2 1
      256 SETTABLEKS                       R28 R27 K52 ["EntryArea"]
      258 GETUPVAL                         R28 4
      259 GETTABLEKS                       R28 R28 K28 ["createElement"]
      261 GETUPVAL                         R29 19
      262 DUPTABLE                         R30 K59 [{"LayoutOrder", "MeshParts"}]
      263 NAMECALL                         R31 R2 K57 ["getNextOrder"]
      265 CALL                             R31 1 1
      266 SETTABLEKS                       R31 R30 K55 ["LayoutOrder"]
      268 SETTABLEKS                       R4 R30 K58 ["MeshParts"]
      270 CALL                             R28 2 1
      271 SETTABLEKS                       R28 R27 K53 ["Generations"]
      273 CALL                             R24 3 1
      274 SETTABLEKS                       R24 R23 K39 ["Main"]
      276 MOVE                             R24 R14
      277 JUMPIFNOT                        R24 ; [+14]
      278 GETUPVAL                         R24 4
      279 GETTABLEKS                       R24 R24 K28 ["createElement"]
      281 GETUPVAL                         R25 20
      282 DUPTABLE                         R26 K66 [{["Title"], ["Description"], ["Style"], ["ZIndex"] = 2, ["OnClose"]}]
      283 SETTABLEKS                       R15 R26 K60 ["Title"]
      285 SETTABLEKS                       R16 R26 K61 ["Description"]
      287 SETTABLEKS                       R17 R26 K62 ["Style"]
      289 SETTABLEKS                       R18 R26 K65 ["OnClose"]
      291 CALL                             R24 2 1
      292 SETTABLEKS                       R24 R23 K12 ["Notice"]
      294 CALL                             R20 3 -1
      295 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["useEventConnection"]
       30 GETTABLEKS                       R5 R0 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K12 ["Components"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K13 ["EntryArea"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R5 K14 ["Generations"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R3 K15 ["ContextServices"]
       46 GETTABLEKS                       R9 R8 K16 ["Analytics"]
       48 GETTABLEKS                       R10 R8 K17 ["Localization"]
       50 GETTABLEKS                       R11 R0 K11 ["Src"]
       52 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       54 GETIMPORT                        R12 K5 [require]
       56 GETTABLEKS                       R13 R11 K19 ["useSelectedMeshParts"]
       58 CALL                             R12 1 1
       59 GETIMPORT                        R13 K5 [require]
       61 GETTABLEKS                       R14 R0 K11 ["Src"]
       63 GETTABLEKS                       R14 R14 K12 ["Components"]
       65 GETTABLEKS                       R14 R14 K20 ["TextureGenerationServiceContext"]
       67 CALL                             R13 1 1
       68 GETTABLEKS                       R14 R3 K21 ["UI"]
       70 GETTABLEKS                       R15 R14 K22 ["Alert"]
       72 GETTABLEKS                       R16 R14 K23 ["ScrollingFrame"]
       74 GETTABLEKS                       R17 R14 K24 ["Pane"]
       76 GETIMPORT                        R18 K5 [require]
       78 GETTABLEKS                       R19 R0 K11 ["Src"]
       80 GETTABLEKS                       R19 R19 K25 ["Util"]
       82 GETTABLEKS                       R19 R19 K26 ["Constants"]
       84 CALL                             R18 1 1
       85 GETIMPORT                        R19 K5 [require]
       87 GETTABLEKS                       R20 R0 K11 ["Src"]
       89 GETTABLEKS                       R20 R20 K25 ["Util"]
       91 GETTABLEKS                       R20 R20 K27 ["GenerationsContext"]
       93 CALL                             R19 1 1
       94 GETIMPORT                        R20 K5 [require]
       96 GETTABLEKS                       R21 R0 K11 ["Src"]
       98 GETTABLEKS                       R21 R21 K25 ["Util"]
      100 GETTABLEKS                       R21 R21 K28 ["GenerationAnglesContext"]
      102 CALL                             R20 1 1
      103 GETIMPORT                        R21 K5 [require]
      105 GETTABLEKS                       R22 R0 K11 ["Src"]
      107 GETTABLEKS                       R22 R22 K25 ["Util"]
      109 GETTABLEKS                       R22 R22 K29 ["OptionsContext"]
      111 CALL                             R21 1 1
      112 GETIMPORT                        R22 K5 [require]
      114 GETTABLEKS                       R23 R0 K11 ["Src"]
      116 GETTABLEKS                       R23 R23 K25 ["Util"]
      118 GETTABLEKS                       R23 R23 K30 ["PreviewsContext"]
      120 CALL                             R22 1 1
      121 GETIMPORT                        R23 K5 [require]
      123 GETTABLEKS                       R24 R0 K11 ["Src"]
      125 GETTABLEKS                       R24 R24 K25 ["Util"]
      127 GETTABLEKS                       R24 R24 K31 ["createHashFromMeshParts"]
      129 CALL                             R23 1 1
      130 GETIMPORT                        R24 K5 [require]
      132 GETTABLEKS                       R25 R0 K11 ["Src"]
      134 GETTABLEKS                       R25 R25 K25 ["Util"]
      136 GETTABLEKS                       R25 R25 K32 ["fetchAndSetQuotas"]
      138 CALL                             R24 1 1
      139 GETIMPORT                        R25 K5 [require]
      141 GETTABLEKS                       R26 R0 K11 ["Src"]
      143 GETTABLEKS                       R26 R26 K25 ["Util"]
      145 GETTABLEKS                       R26 R26 K33 ["setTexture"]
      147 CALL                             R25 1 1
      148 GETTABLEKS                       R26 R3 K25 ["Util"]
      150 GETTABLEKS                       R26 R26 K34 ["LayoutOrderIterator"]
      152 GETIMPORT                        R27 K5 [require]
      154 GETTABLEKS                       R28 R0 K11 ["Src"]
      156 GETTABLEKS                       R28 R28 K35 ["Flags"]
      158 GETTABLEKS                       R28 R28 K36 ["getFFlagDebugTextureGeneratorLogging"]
      160 CALL                             R27 1 1
      161 DUPCLOSURE                       R28 K37 [PROTO_7]
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R26
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R20
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R27
      176 CAPTURE                          VAL R23
      177 CAPTURE                          VAL R25
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R15
      183 RETURN                           R28 1
