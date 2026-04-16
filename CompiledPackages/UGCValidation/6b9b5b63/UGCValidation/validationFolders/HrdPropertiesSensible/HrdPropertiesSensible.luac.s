PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R2
        4 LOADK                            R5 K1 ["MeshPart"]
        5 CALL                             R3 2 3
        6 FORGPREP                         R3
        7 LOADK                            R10 K2 ["HumanoidRigDescription"]
        8 NAMECALL                         R8 R7 K3 ["FindFirstChildWhichIsA"]
       10 CALL                             R8 2 1
       11 JUMPIFEQKNIL                     R8 ; [+250]
       13 GETTABLEKS                       R9 R8 K4 ["OriginOffset"]
       15 GETTABLEKS                       R10 R7 K5 ["Name"]
       17 JUMPIFNOTEQKS                    R10 K6 ["LowerTorso"] ; [+39]
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R10 R11 K7 ["fuzzyEq"]
       22 GETTABLEKS                       R11 R9 K8 ["Rotation"]
       24 GETIMPORT                        R12 K11 [CFrame.identity]
       26 CALL                             R10 2 1
       27 JUMPIFNOT                        R10 ; [+9]
       28 GETUPVAL                         R11 2
       29 GETTABLEKS                       R10 R11 K12 ["isInRange"]
       31 GETTABLEKS                       R11 R9 K13 ["Position"]
       33 GETUPVAL                         R12 3
       34 GETUPVAL                         R13 4
       35 CALL                             R10 3 1
       36 JUMPIF                           R10 ; [+44]
       37 GETUPVAL                         R14 5
       38 GETTABLEKS                       R13 R14 K14 ["Keys"]
       40 GETTABLEKS                       R12 R13 K15 ["HrdProperties_OriginOutsideBounds"]
       42 DUPTABLE                         R13 K18 [{"valueMin", "valueMax"}]
       43 GETUPVAL                         R14 6
       44 GETUPVAL                         R15 3
       45 CALL                             R14 1 1
       46 SETTABLEKS                       R14 R13 K16 ["valueMin"]
       48 GETUPVAL                         R14 6
       49 GETUPVAL                         R15 4
       50 CALL                             R14 1 1
       51 SETTABLEKS                       R14 R13 K17 ["valueMax"]
       53 NAMECALL                         R10 R0 K19 ["fail"]
       55 CALL                             R10 3 0
       56 JUMP                             ; [+24]
       57 GETUPVAL                         R11 1
       58 GETTABLEKS                       R10 R11 K7 ["fuzzyEq"]
       60 MOVE                             R11 R9
       61 GETIMPORT                        R12 K11 [CFrame.identity]
       63 CALL                             R10 2 1
       64 JUMPIF                           R10 ; [+16]
       65 GETUPVAL                         R14 5
       66 GETTABLEKS                       R13 R14 K14 ["Keys"]
       68 GETTABLEKS                       R12 R13 K20 ["HrdProperties_UncontainedJoint"]
       70 DUPTABLE                         R13 K23 [{"jointName", "foundMeshName"}]
       71 LOADK                            R14 K24 ["originOffset"]
       72 SETTABLEKS                       R14 R13 K21 ["jointName"]
       74 GETTABLEKS                       R14 R7 K5 ["Name"]
       76 SETTABLEKS                       R14 R13 K22 ["foundMeshName"]
       78 NAMECALL                         R10 R0 K19 ["fail"]
       80 CALL                             R10 3 0
       81 GETTABLEKS                       R12 R7 K5 ["Name"]
       83 NAMECALL                         R10 R8 K25 ["GetContainedJointLabels"]
       85 CALL                             R10 2 1
       86 GETUPVAL                         R12 7
       87 GETTABLEKS                       R11 R12 K26 ["getHrdJointLabels"]
       89 CALL                             R11 0 3
       90 FORGPREP                         R11
       91 MOVE                             R18 R15
       92 NAMECALL                         R16 R8 K27 ["GetJoint"]
       94 CALL                             R16 2 1
       95 JUMPIF                           R16 ; [+1]
       96 JUMP                             ; [+163]
       97 GETIMPORT                        R16 K30 [table.find]
       99 MOVE                             R17 R10
      100 MOVE                             R18 R15
      101 CALL                             R16 2 1
      102 JUMPIF                           R16 ; [+18]
      103 GETUPVAL                         R20 5
      104 GETTABLEKS                       R19 R20 K14 ["Keys"]
      106 GETTABLEKS                       R18 R19 K20 ["HrdProperties_UncontainedJoint"]
      108 DUPTABLE                         R19 K23 [{"jointName", "foundMeshName"}]
      109 GETTABLEKS                       R20 R15 K5 ["Name"]
      111 SETTABLEKS                       R20 R19 K21 ["jointName"]
      113 GETTABLEKS                       R20 R7 K5 ["Name"]
      115 SETTABLEKS                       R20 R19 K22 ["foundMeshName"]
      117 NAMECALL                         R16 R0 K19 ["fail"]
      119 CALL                             R16 3 0
      120 JUMP                             ; [+139]
      121 MOVE                             R18 R15
      122 NAMECALL                         R16 R8 K31 ["GetJointSize"]
      124 CALL                             R16 2 1
      125 MOVE                             R19 R15
      126 NAMECALL                         R17 R8 K32 ["GetJointRangeMin"]
      128 CALL                             R17 2 1
      129 MOVE                             R20 R15
      130 NAMECALL                         R18 R8 K33 ["GetJointRangeMax"]
      132 CALL                             R18 2 1
      133 GETUPVAL                         R20 8
      134 DIVK                             R19 R20 K34 [100]
      135 LOADN                            R20 0
      136 JUMPIFLT                         R16 R20 ; [+3]
      138 JUMPIFNOTLT                      R19 R16 ; [+29]
      140 GETUPVAL                         R24 5
      141 GETTABLEKS                       R23 R24 K14 ["Keys"]
      143 GETTABLEKS                       R22 R23 K35 ["HrdProperties_PropertyOutOfRange"]
      145 DUPTABLE                         R23 K38 [{"jointName", "propertyName", "currentValue", "valueMin", "valueMax"}]
      146 GETTABLEKS                       R24 R15 K5 ["Name"]
      148 SETTABLEKS                       R24 R23 K21 ["jointName"]
      150 LOADK                            R24 K39 ["size"]
      151 SETTABLEKS                       R24 R23 K36 ["propertyName"]
      153 SETTABLEKS                       R16 R23 K37 ["currentValue"]
      155 GETUPVAL                         R24 6
      156 LOADN                            R25 0
      157 CALL                             R24 1 1
      158 SETTABLEKS                       R24 R23 K16 ["valueMin"]
      160 GETUPVAL                         R24 6
      161 MOVE                             R25 R19
      162 CALL                             R24 1 1
      163 SETTABLEKS                       R24 R23 K17 ["valueMax"]
      165 NAMECALL                         R20 R0 K19 ["fail"]
      167 CALL                             R20 3 0
      168 GETUPVAL                         R21 2
      169 GETTABLEKS                       R20 R21 K12 ["isInRange"]
      171 MOVE                             R21 R17
      172 GETUPVAL                         R22 9
      173 GETUPVAL                         R23 10
      174 CALL                             R20 3 1
      175 JUMPIF                           R20 ; [+28]
      176 GETUPVAL                         R24 5
      177 GETTABLEKS                       R23 R24 K14 ["Keys"]
      179 GETTABLEKS                       R22 R23 K35 ["HrdProperties_PropertyOutOfRange"]
      181 DUPTABLE                         R23 K38 [{"jointName", "propertyName", "currentValue", "valueMin", "valueMax"}]
      182 GETTABLEKS                       R24 R15 K5 ["Name"]
      184 SETTABLEKS                       R24 R23 K21 ["jointName"]
      186 LOADK                            R24 K40 ["rangeMin"]
      187 SETTABLEKS                       R24 R23 K36 ["propertyName"]
      189 SETTABLEKS                       R17 R23 K37 ["currentValue"]
      191 GETUPVAL                         R24 6
      192 GETUPVAL                         R25 9
      193 CALL                             R24 1 1
      194 SETTABLEKS                       R24 R23 K16 ["valueMin"]
      196 GETUPVAL                         R24 6
      197 GETUPVAL                         R25 10
      198 CALL                             R24 1 1
      199 SETTABLEKS                       R24 R23 K17 ["valueMax"]
      201 NAMECALL                         R20 R0 K19 ["fail"]
      203 CALL                             R20 3 0
      204 GETUPVAL                         R21 2
      205 GETTABLEKS                       R20 R21 K12 ["isInRange"]
      207 MOVE                             R21 R18
      208 GETUPVAL                         R22 9
      209 GETUPVAL                         R23 10
      210 CALL                             R20 3 1
      211 JUMPIF                           R20 ; [+28]
      212 GETUPVAL                         R24 5
      213 GETTABLEKS                       R23 R24 K14 ["Keys"]
      215 GETTABLEKS                       R22 R23 K35 ["HrdProperties_PropertyOutOfRange"]
      217 DUPTABLE                         R23 K38 [{"jointName", "propertyName", "currentValue", "valueMin", "valueMax"}]
      218 GETTABLEKS                       R24 R15 K5 ["Name"]
      220 SETTABLEKS                       R24 R23 K21 ["jointName"]
      222 LOADK                            R24 K41 ["rangeMax"]
      223 SETTABLEKS                       R24 R23 K36 ["propertyName"]
      225 SETTABLEKS                       R18 R23 K37 ["currentValue"]
      227 GETUPVAL                         R24 6
      228 GETUPVAL                         R25 9
      229 CALL                             R24 1 1
      230 SETTABLEKS                       R24 R23 K16 ["valueMin"]
      232 GETUPVAL                         R24 6
      233 GETUPVAL                         R25 10
      234 CALL                             R24 1 1
      235 SETTABLEKS                       R24 R23 K17 ["valueMax"]
      237 NAMECALL                         R20 R0 K19 ["fail"]
      239 CALL                             R20 3 0
      240 GETUPVAL                         R21 2
      241 GETTABLEKS                       R20 R21 K42 ["isFirstLessOrEqual"]
      243 MOVE                             R21 R17
      244 MOVE                             R22 R18
      245 CALL                             R20 2 1
      246 JUMPIF                           R20 ; [+13]
      247 GETUPVAL                         R24 5
      248 GETTABLEKS                       R23 R24 K14 ["Keys"]
      250 GETTABLEKS                       R22 R23 K43 ["HrdProperties_MinAboveMax"]
      252 DUPTABLE                         R23 K44 [{"jointName"}]
      253 GETTABLEKS                       R24 R15 K5 ["Name"]
      255 SETTABLEKS                       R24 R23 K21 ["jointName"]
      257 NAMECALL                         R20 R0 K19 ["fail"]
      259 CALL                             R20 3 0
      260 FORGLOOP                         R11 2 ; [-170]
      262 FORGLOOP                         R3 2 ; [-256]
      264 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R4 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R5 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["util"]
       34 GETTABLEKS                       R5 R6 K10 ["getAllInstancesIsA"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R7 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R7 K11 ["R15plusUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R8 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R8 K12 ["Vector3Utils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R9 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R9 K13 ["valueToString"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R10 R0 K5 ["util"]
       62 GETTABLEKS                       R9 R10 K14 ["CFrameUtils"]
       64 CALL                             R8 1 1
       65 NEWTABLE                         R9 4 0
       67 NEWTABLE                         R10 0 2
       69 GETTABLEKS                       R12 R2 K15 ["UploadCategory"]
       71 GETTABLEKS                       R11 R12 K16 ["TORSO_AND_LIMBS"]
       73 GETTABLEKS                       R13 R2 K15 ["UploadCategory"]
       75 GETTABLEKS                       R12 R13 K17 ["DYNAMIC_HEAD"]
       77 SETLIST                          R10 R11 2 [1]
       79 SETTABLEKS                       R10 R9 K18 ["categories"]
       81 NEWTABLE                         R10 0 1
       83 GETTABLEKS                       R12 R2 K19 ["SharedDataMember"]
       85 GETTABLEKS                       R11 R12 K20 ["rootInstance"]
       87 SETLIST                          R10 R11 1 [1]
       89 SETTABLEKS                       R10 R9 K21 ["requiredData"]
       91 GETTABLEKS                       R10 R5 K22 ["checkFlagEnabledForAllowHrd"]
       93 SETTABLEKS                       R10 R9 K23 ["fflag"]
       95 GETIMPORT                        R10 K25 [game]
       97 LOADK                            R12 K26 ["UGCValidationHrdDrdJointSizeHundredthsLimit"]
       98 LOADN                            R13 150
       99 NAMECALL                         R10 R10 K27 ["DefineFastInt"]
      101 CALL                             R10 3 1
      102 GETIMPORT                        R11 K25 [game]
      104 LOADK                            R13 K28 ["UGCValidationHrdJointRangeMinXHundredths"]
      105 LOADN                            R14 0
      106 NAMECALL                         R11 R11 K27 ["DefineFastInt"]
      108 CALL                             R11 3 1
      109 GETIMPORT                        R12 K25 [game]
      111 LOADK                            R14 K29 ["UGCValidationHrdJointRangeMaxXHundredths"]
      112 LOADN                            R15 0
      113 NAMECALL                         R12 R12 K27 ["DefineFastInt"]
      115 CALL                             R12 3 1
      116 GETIMPORT                        R13 K25 [game]
      118 LOADK                            R15 K30 ["UGCValidationHrdJointRangeMinYHundredths"]
      119 LOADN                            R16 0
      120 NAMECALL                         R13 R13 K27 ["DefineFastInt"]
      122 CALL                             R13 3 1
      123 GETIMPORT                        R14 K25 [game]
      125 LOADK                            R16 K31 ["UGCValidationHrdJointRangeMaxYHundredths"]
      126 LOADN                            R17 0
      127 NAMECALL                         R14 R14 K27 ["DefineFastInt"]
      129 CALL                             R14 3 1
      130 GETIMPORT                        R15 K25 [game]
      132 LOADK                            R17 K32 ["UGCValidationHrdJointRangeMinZHundredths"]
      133 LOADN                            R18 0
      134 NAMECALL                         R15 R15 K27 ["DefineFastInt"]
      136 CALL                             R15 3 1
      137 GETIMPORT                        R16 K25 [game]
      139 LOADK                            R18 K33 ["UGCValidationHrdJointRangeMaxZHundredths"]
      140 LOADN                            R19 0
      141 NAMECALL                         R16 R16 K27 ["DefineFastInt"]
      143 CALL                             R16 3 1
      144 GETIMPORT                        R17 K25 [game]
      146 LOADK                            R19 K34 ["UGCValidationHrdOriginOffsetMinYHundredths"]
      147 LOADN                            R20 12
      148 NAMECALL                         R17 R17 K27 ["DefineFastInt"]
      150 CALL                             R17 3 1
      151 GETIMPORT                        R18 K25 [game]
      153 LOADK                            R20 K35 ["UGCValidationHrdOriginOffsetMaxYHundredths"]
      154 LOADN                            R21 244
      155 NAMECALL                         R18 R18 K27 ["DefineFastInt"]
      157 CALL                             R18 3 1
      158 DIVK                             R20 R11 K36 [100]
      159 DIVK                             R21 R13 K36 [100]
      160 DIVK                             R22 R15 K36 [100]
      161 FASTCALL                         VECTOR ; [+2]
      162 GETIMPORT                        R19 K39 [Vector3.new]
      164 CALL                             R19 3 1
      165 DIVK                             R21 R12 K36 [100]
      166 DIVK                             R22 R14 K36 [100]
      167 DIVK                             R23 R16 K36 [100]
      168 FASTCALL                         VECTOR ; [+2]
      169 GETIMPORT                        R20 K39 [Vector3.new]
      171 CALL                             R20 3 1
      172 LOADN                            R22 0
      173 DIVK                             R23 R17 K36 [100]
      174 LOADN                            R24 0
      175 FASTCALL                         VECTOR ; [+2]
      176 GETIMPORT                        R21 K39 [Vector3.new]
      178 CALL                             R21 3 1
      179 LOADN                            R23 0
      180 DIVK                             R24 R18 K36 [100]
      181 LOADN                            R25 0
      182 FASTCALL                         VECTOR ; [+2]
      183 GETIMPORT                        R22 K39 [Vector3.new]
      185 CALL                             R22 3 1
      186 DUPCLOSURE                       R23 K40 [PROTO_0]
      187 CAPTURE                          VAL R4
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R10
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R20
      198 SETTABLEKS                       R23 R9 K41 ["run"]
      200 RETURN                           R9 1
