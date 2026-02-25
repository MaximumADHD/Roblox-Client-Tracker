PROTO_0:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEN                        R3 R0 2
        2 GETTABLEN                        R4 R0 3
        3 FASTCALL                         VECTOR ; [+2]
        4 GETIMPORT                        R1 K2 [Vector3.new]
        6 CALL                             R1 3 1
        7 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 3
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 GETTABLEKS                       R3 R0 K1 ["Y"]
        6 GETTABLEKS                       R4 R0 K2 ["Z"]
        8 SETLIST                          R1 R2 3 [1]
       10 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K4 ["SelectionWarning"]
        8 LOADK                            R5 K5 ["NaN"]
        9 NAMECALL                         R2 R2 K6 ["getText"]
       11 CALL                             R2 3 -1
       12 RETURN                           R1 -1
       13 GETTABLEKS                       R1 R0 K7 ["X"]
       15 LOADN                            R2 4
       16 JUMPIFLT                         R1 R2 ; [+11]
       18 GETTABLEKS                       R1 R0 K8 ["Y"]
       20 LOADN                            R2 4
       21 JUMPIFLT                         R1 R2 ; [+6]
       23 GETTABLEKS                       R1 R0 K9 ["Z"]
       25 LOADN                            R2 4
       26 JUMPIFNOTLT                      R1 R2 ; [+10]
       28 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
       30 GETUPVAL                         R2 1
       31 LOADK                            R4 K4 ["SelectionWarning"]
       32 LOADK                            R5 K10 ["Size"]
       33 NAMECALL                         R2 R2 K6 ["getText"]
       35 CALL                             R2 3 -1
       36 RETURN                           R1 -1
       37 GETTABLEKS                       R1 R0 K7 ["X"]
       39 GETUPVAL                         R3 2
       40 GETTABLEKS                       R2 R3 K11 ["MaxRegion"]
       42 JUMPIFLT                         R2 R1 ; [+15]
       44 GETTABLEKS                       R1 R0 K8 ["Y"]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R2 R3 K11 ["MaxRegion"]
       49 JUMPIFLT                         R2 R1 ; [+8]
       51 GETTABLEKS                       R1 R0 K9 ["Z"]
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R2 R3 K11 ["MaxRegion"]
       56 JUMPIFNOTLT                      R2 R1 ; [+10]
       58 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
       60 GETUPVAL                         R2 1
       61 LOADK                            R4 K4 ["SelectionWarning"]
       62 LOADK                            R5 K12 ["SizeMax"]
       63 NAMECALL                         R2 R2 K6 ["getText"]
       65 CALL                             R2 3 -1
       66 RETURN                           R1 -1
       67 GETIMPORT                        R1 K14 [Enum.PropertyStatus.Ok]
       69 LOADK                            R2 K15 [""]
       70 RETURN                           R1 2

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["Transform"]
        4 GETTABLE                         R2 R3 R4
        5 GETTABLEKS                       R1 R2 K1 ["Rotation"]
        7 GETTABLEN                        R4 R0 1
        8 GETTABLEN                        R5 R0 2
        9 GETTABLEN                        R6 R0 3
       10 FASTCALL                         VECTOR ; [+2]
       11 GETIMPORT                        R3 K4 [Vector3.new]
       13 CALL                             R3 3 1
       14 ADD                              R2 R1 R3
       15 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 NEWTABLE                         R2 0 3
        4 GETTABLEKS                       R3 R1 K1 ["X"]
        6 GETTABLEKS                       R4 R1 K2 ["Y"]
        8 GETTABLEKS                       R5 R1 K3 ["Z"]
       10 SETLIST                          R2 R3 3 [1]
       12 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Position"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R1 K4 [Enum.PropertyStatus.Error]
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K5 ["SelectionWarning"]
        9 LOADK                            R5 K6 ["NaN"]
       10 NAMECALL                         R2 R2 K7 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R1 -1
       14 GETIMPORT                        R1 K9 [Enum.PropertyStatus.Ok]
       16 LOADK                            R2 K10 [""]
       17 RETURN                           R1 2

PROTO_6:
        0 GETIMPORT                        R1 K2 [CFrame.fromEulerAnglesXYZ]
        2 GETTABLEN                        R3 R0 1
        3 FASTCALL1                        MATH_RAD R3 ; [+2]
        4 GETIMPORT                        R2 K5 [math.rad]
        6 CALL                             R2 1 1
        7 GETTABLEN                        R4 R0 2
        8 FASTCALL1                        MATH_RAD R4 ; [+2]
        9 GETIMPORT                        R3 K5 [math.rad]
       11 CALL                             R3 1 1
       12 GETTABLEN                        R5 R0 3
       13 FASTCALL1                        MATH_RAD R5 ; [+2]
       14 GETIMPORT                        R4 K5 [math.rad]
       16 CALL                             R4 1 1
       17 CALL                             R1 3 1
       18 GETUPVAL                         R5 0
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K6 ["Transform"]
       22 GETTABLE                         R4 R5 R6
       23 GETTABLEKS                       R3 R4 K7 ["Position"]
       25 ADD                              R2 R1 R3
       26 RETURN                           R2 1

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["ToEulerAnglesXYZ"]
        2 CALL                             R1 1 3
        3 NEWTABLE                         R4 0 3
        5 FASTCALL1                        MATH_DEG R1 ; [+3]
        6 MOVE                             R6 R1
        7 GETIMPORT                        R5 K3 [math.deg]
        9 CALL                             R5 1 1
       10 FASTCALL1                        MATH_DEG R2 ; [+3]
       11 MOVE                             R7 R2
       12 GETIMPORT                        R6 K3 [math.deg]
       14 CALL                             R6 1 1
       15 FASTCALL1                        MATH_DEG R3 ; [+3]
       16 MOVE                             R8 R3
       17 GETIMPORT                        R7 K3 [math.deg]
       19 CALL                             R7 1 1
       20 SETLIST                          R4 R5 3 [1]
       22 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Tool"]
        3 NAMECALL                         R1 R1 K1 ["getPayload"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R0 K2 ["Position"]
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+9]
       11 GETIMPORT                        R2 K6 [Enum.PropertyStatus.Error]
       13 GETUPVAL                         R3 2
       14 LOADK                            R5 K7 ["SelectionWarning"]
       15 LOADK                            R6 K8 ["NaN"]
       16 NAMECALL                         R3 R3 K9 ["getText"]
       18 CALL                             R3 3 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R0
       22 GETUPVAL                         R6 4
       23 GETTABLE                         R5 R1 R6
       24 GETUPVAL                         R7 5
       25 GETTABLEKS                       R6 R7 K10 ["Size"]
       27 GETTABLE                         R4 R5 R6
       28 CALL                             R2 2 1
       29 JUMPIF                           R2 ; [+9]
       30 GETIMPORT                        R2 K6 [Enum.PropertyStatus.Error]
       32 GETUPVAL                         R3 2
       33 LOADK                            R5 K7 ["SelectionWarning"]
       34 LOADK                            R6 K11 ["OutOfBounds"]
       35 NAMECALL                         R3 R3 K9 ["getText"]
       37 CALL                             R3 3 -1
       38 RETURN                           R2 -1
       39 GETIMPORT                        R2 K13 [Enum.PropertyStatus.Ok]
       41 LOADK                            R3 K14 [""]
       42 RETURN                           R2 2

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 NEWTABLE                         R7 0 7
        6 DUPTABLE                         R8 K5 [{"Id", "Height", "Schema", "Validate"}]
        7 GETUPVAL                         R10 1
        8 GETTABLEKS                       R9 R10 K6 ["Size"]
       10 SETTABLEKS                       R9 R8 K1 ["Id"]
       12 GETUPVAL                         R10 2
       13 CALL                             R10 0 1
       14 JUMPIFNOT                        R10 ; [+2]
       15 LOADN                            R9 26
       16 JUMP                             ; [+1]
       17 LOADNIL                          R9
       18 SETTABLEKS                       R9 R8 K2 ["Height"]
       20 DUPTABLE                         R9 K11 [{"Type", "Components", "GetValue", "GetComponents"}]
       21 LOADK                            R10 K12 ["Vector"]
       22 SETTABLEKS                       R10 R9 K7 ["Type"]
       24 NEWTABLE                         R10 0 3
       26 LOADK                            R11 K13 ["X"]
       27 LOADK                            R12 K14 ["Y"]
       28 LOADK                            R13 K15 ["Z"]
       29 SETLIST                          R10 R11 3 [1]
       31 SETTABLEKS                       R10 R9 K8 ["Components"]
       33 DUPCLOSURE                       R10 K16 [PROTO_0]
       34 SETTABLEKS                       R10 R9 K9 ["GetValue"]
       36 DUPCLOSURE                       R10 K17 [PROTO_1]
       37 SETTABLEKS                       R10 R9 K10 ["GetComponents"]
       39 SETTABLEKS                       R9 R8 K3 ["Schema"]
       41 NEWCLOSURE                       R9 P2
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U4
       45 SETTABLEKS                       R9 R8 K4 ["Validate"]
       47 DUPTABLE                         R9 K21 [{"DataId", "Id", "Height", "Hidden", "Schema", "Validate", "Value"}]
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R10 R11 K22 ["Transform"]
       51 SETTABLEKS                       R10 R9 K18 ["DataId"]
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R10 R11 K23 ["Position"]
       56 SETTABLEKS                       R10 R9 K1 ["Id"]
       58 GETUPVAL                         R11 2
       59 CALL                             R11 0 1
       60 JUMPIFNOT                        R11 ; [+2]
       61 LOADN                            R10 26
       62 JUMP                             ; [+1]
       63 LOADNIL                          R10
       64 SETTABLEKS                       R10 R9 K2 ["Height"]
       66 LOADB                            R10 0
       67 SETTABLEKS                       R10 R9 K19 ["Hidden"]
       69 DUPTABLE                         R10 K11 [{"Type", "Components", "GetValue", "GetComponents"}]
       70 LOADK                            R11 K12 ["Vector"]
       71 SETTABLEKS                       R11 R10 K7 ["Type"]
       73 NEWTABLE                         R11 0 3
       75 LOADK                            R12 K13 ["X"]
       76 LOADK                            R13 K14 ["Y"]
       77 LOADK                            R14 K15 ["Z"]
       78 SETLIST                          R11 R12 3 [1]
       80 SETTABLEKS                       R11 R10 K8 ["Components"]
       82 NEWCLOSURE                       R11 P3
       83 CAPTURE                          VAL R1
       84 CAPTURE                          UPVAL U1
       85 SETTABLEKS                       R11 R10 K9 ["GetValue"]
       87 DUPCLOSURE                       R11 K24 [PROTO_4]
       88 SETTABLEKS                       R11 R10 K10 ["GetComponents"]
       90 SETTABLEKS                       R10 R9 K3 ["Schema"]
       92 NEWCLOSURE                       R10 P5
       93 CAPTURE                          UPVAL U3
       94 CAPTURE                          VAL R4
       95 SETTABLEKS                       R10 R9 K4 ["Validate"]
       97 GETUPVAL                         R12 1
       98 GETTABLEKS                       R11 R12 K22 ["Transform"]
      100 GETTABLE                         R10 R1 R11
      101 SETTABLEKS                       R10 R9 K20 ["Value"]
      103 DUPTABLE                         R10 K25 [{"DataId", "Id", "Height", "Schema", "Validate", "Value"}]
      104 GETUPVAL                         R12 1
      105 GETTABLEKS                       R11 R12 K22 ["Transform"]
      107 SETTABLEKS                       R11 R10 K18 ["DataId"]
      109 GETUPVAL                         R12 1
      110 GETTABLEKS                       R11 R12 K26 ["Rotation"]
      112 SETTABLEKS                       R11 R10 K1 ["Id"]
      114 GETUPVAL                         R12 2
      115 CALL                             R12 0 1
      116 JUMPIFNOT                        R12 ; [+2]
      117 LOADN                            R11 26
      118 JUMP                             ; [+1]
      119 LOADNIL                          R11
      120 SETTABLEKS                       R11 R10 K2 ["Height"]
      122 DUPTABLE                         R11 K11 [{"Type", "Components", "GetValue", "GetComponents"}]
      123 LOADK                            R12 K12 ["Vector"]
      124 SETTABLEKS                       R12 R11 K7 ["Type"]
      126 NEWTABLE                         R12 0 3
      128 LOADK                            R13 K13 ["X"]
      129 LOADK                            R14 K14 ["Y"]
      130 LOADK                            R15 K15 ["Z"]
      131 SETLIST                          R12 R13 3 [1]
      133 SETTABLEKS                       R12 R11 K8 ["Components"]
      135 NEWCLOSURE                       R12 P6
      136 CAPTURE                          VAL R1
      137 CAPTURE                          UPVAL U1
      138 SETTABLEKS                       R12 R11 K9 ["GetValue"]
      140 DUPCLOSURE                       R12 K27 [PROTO_7]
      141 SETTABLEKS                       R12 R11 K10 ["GetComponents"]
      143 SETTABLEKS                       R11 R10 K3 ["Schema"]
      145 NEWCLOSURE                       R11 P8
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U3
      148 CAPTURE                          VAL R4
      149 CAPTURE                          UPVAL U5
      150 CAPTURE                          UPVAL U6
      151 CAPTURE                          UPVAL U1
      152 SETTABLEKS                       R11 R10 K4 ["Validate"]
      154 GETUPVAL                         R13 1
      155 GETTABLEKS                       R12 R13 K22 ["Transform"]
      157 GETTABLE                         R11 R1 R12
      158 SETTABLEKS                       R11 R10 K20 ["Value"]
      160 DUPTABLE                         R11 K28 [{"Id", "Schema"}]
      161 GETUPVAL                         R13 1
      162 GETTABLEKS                       R12 R13 K29 ["MergeEmpty"]
      164 SETTABLEKS                       R12 R11 K1 ["Id"]
      166 DUPTABLE                         R12 K30 [{"Type"}]
      167 LOADK                            R13 K31 ["Checkbox"]
      168 SETTABLEKS                       R13 R12 K7 ["Type"]
      170 SETTABLEKS                       R12 R11 K3 ["Schema"]
      172 DUPTABLE                         R12 K28 [{"Id", "Schema"}]
      173 GETUPVAL                         R14 1
      174 GETTABLEKS                       R13 R14 K32 ["LiveEdit"]
      176 SETTABLEKS                       R13 R12 K1 ["Id"]
      178 DUPTABLE                         R13 K30 [{"Type"}]
      179 LOADK                            R14 K31 ["Checkbox"]
      180 SETTABLEKS                       R14 R13 K7 ["Type"]
      182 SETTABLEKS                       R13 R12 K3 ["Schema"]
      184 DUPTABLE                         R13 K28 [{"Id", "Schema"}]
      185 GETUPVAL                         R15 1
      186 GETTABLEKS                       R14 R15 K33 ["SnapToVoxels"]
      188 SETTABLEKS                       R14 R13 K1 ["Id"]
      190 DUPTABLE                         R14 K30 [{"Type"}]
      191 LOADK                            R15 K31 ["Checkbox"]
      192 SETTABLEKS                       R15 R14 K7 ["Type"]
      194 SETTABLEKS                       R14 R13 K3 ["Schema"]
      196 DUPTABLE                         R14 K35 [{"Id", "Layout", "Schema"}]
      197 GETUPVAL                         R16 1
      198 GETTABLEKS                       R15 R16 K36 ["Apply"]
      200 SETTABLEKS                       R15 R14 K1 ["Id"]
      202 GETIMPORT                        R15 K40 [Enum.FillDirection.Vertical]
      204 SETTABLEKS                       R15 R14 K34 ["Layout"]
      206 DUPTABLE                         R15 K42 [{"Label", "Type"}]
      207 GETUPVAL                         R18 6
      208 GETUPVAL                         R20 1
      209 GETTABLEKS                       R19 R20 K36 ["Apply"]
      211 NAMECALL                         R16 R4 K43 ["getText"]
      213 CALL                             R16 3 1
      214 SETTABLEKS                       R16 R15 K41 ["Label"]
      216 LOADK                            R16 K44 ["Button"]
      217 SETTABLEKS                       R16 R15 K7 ["Type"]
      219 SETTABLEKS                       R15 R14 K3 ["Schema"]
      221 SETLIST                          R7 R8 7 [1]
      223 DUPTABLE                         R8 K48 [{"Category", "Data", "Overrides"}]
      224 GETUPVAL                         R9 6
      225 SETTABLEKS                       R9 R8 K45 ["Category"]
      227 SETTABLEKS                       R1 R8 K46 ["Data"]
      229 SETTABLEKS                       R3 R8 K47 ["Overrides"]
      231 CALL                             R5 3 -1
      232 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["ApplyById"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Category"]
       25 GETTABLEKS                       R4 R2 K11 ["TransformSettings"]
       27 GETTABLEKS                       R5 R2 K12 ["Storage"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R9 R0 K6 ["Src"]
       33 GETTABLEKS                       R8 R9 K13 ["Resources"]
       35 GETTABLEKS                       R7 R8 K14 ["Constants"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R3 K11 ["TransformSettings"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R11 R0 K6 ["Src"]
       44 GETTABLEKS                       R10 R11 K7 ["Util"]
       46 GETTABLEKS                       R9 R10 K15 ["getWithinTerrainBounds"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R12 R0 K6 ["Src"]
       53 GETTABLEKS                       R11 R12 K7 ["Util"]
       55 GETTABLEKS                       R10 R11 K16 ["isVectorNaNOrInf"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R13 R0 K6 ["Src"]
       62 GETTABLEKS                       R12 R13 K17 ["Flags"]
       64 GETTABLEKS                       R11 R12 K18 ["getFFlagTerrainEditorExplicitVectorHeight"]
       66 CALL                             R10 1 1
       67 NEWTABLE                         R11 2 0
       69 NEWTABLE                         R12 16 0
       71 GETTABLEKS                       R13 R4 K19 ["Apply"]
       73 GETTABLEKS                       R14 R5 K20 ["LocalSession"]
       75 SETTABLE                         R14 R12 R13
       76 GETTABLEKS                       R13 R4 K21 ["ForcePreview"]
       78 GETTABLEKS                       R14 R5 K20 ["LocalSession"]
       80 SETTABLE                         R14 R12 R13
       81 GETTABLEKS                       R13 R4 K22 ["LiveEdit"]
       83 GETTABLEKS                       R14 R5 K23 ["LocalPersistent"]
       85 SETTABLE                         R14 R12 R13
       86 GETTABLEKS                       R13 R4 K24 ["MergeEmpty"]
       88 GETTABLEKS                       R14 R5 K23 ["LocalPersistent"]
       90 SETTABLE                         R14 R12 R13
       91 GETTABLEKS                       R13 R4 K25 ["OperationSource"]
       93 GETTABLEKS                       R14 R5 K23 ["LocalPersistent"]
       95 SETTABLE                         R14 R12 R13
       96 GETTABLEKS                       R13 R4 K26 ["Position"]
       98 GETTABLEKS                       R14 R5 K27 ["GlobalPersistent"]
      100 SETTABLE                         R14 R12 R13
      101 GETTABLEKS                       R13 R4 K28 ["Size"]
      103 GETTABLEKS                       R14 R5 K27 ["GlobalPersistent"]
      105 SETTABLE                         R14 R12 R13
      106 GETTABLEKS                       R13 R4 K29 ["SnapToVoxels"]
      108 GETTABLEKS                       R14 R5 K27 ["GlobalPersistent"]
      110 SETTABLE                         R14 R12 R13
      111 GETTABLEKS                       R13 R4 K30 ["TerrainRegion"]
      113 GETTABLEKS                       R14 R5 K31 ["GlobalSession"]
      115 SETTABLE                         R14 R12 R13
      116 GETTABLEKS                       R13 R4 K32 ["TerrainRegionBuffer"]
      118 GETTABLEKS                       R14 R5 K31 ["GlobalSession"]
      120 SETTABLE                         R14 R12 R13
      121 GETTABLEKS                       R13 R4 K33 ["TerrainRegionBufferSize"]
      123 GETTABLEKS                       R14 R5 K31 ["GlobalSession"]
      125 SETTABLE                         R14 R12 R13
      126 GETTABLEKS                       R13 R4 K34 ["TerrainRegionBufferTransform"]
      128 GETTABLEKS                       R14 R5 K31 ["GlobalSession"]
      130 SETTABLE                         R14 R12 R13
      131 GETTABLEKS                       R13 R4 K35 ["TerrainRegionSize"]
      133 GETTABLEKS                       R14 R5 K31 ["GlobalSession"]
      135 SETTABLE                         R14 R12 R13
      136 GETTABLEKS                       R13 R4 K36 ["TerrainRegionTransform"]
      138 GETTABLEKS                       R14 R5 K31 ["GlobalSession"]
      140 SETTABLE                         R14 R12 R13
      141 GETTABLEKS                       R13 R4 K37 ["Transform"]
      143 GETTABLEKS                       R14 R5 K27 ["GlobalPersistent"]
      145 SETTABLE                         R14 R12 R13
      146 GETTABLEKS                       R13 R4 K38 ["TransformMode"]
      148 GETTABLEKS                       R14 R5 K31 ["GlobalSession"]
      150 SETTABLE                         R14 R12 R13
      151 SETTABLEKS                       R12 R11 K12 ["Storage"]
      153 DUPCLOSURE                       R12 K39 [PROTO_9]
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R7
      161 SETTABLEKS                       R12 R11 K40 ["Generator"]
      163 RETURN                           R11 1
