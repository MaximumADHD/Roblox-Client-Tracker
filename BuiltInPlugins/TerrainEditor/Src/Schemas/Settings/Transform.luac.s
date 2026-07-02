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
       39 GETUPVAL                         R2 2
       40 GETTABLEKS                       R2 R2 K11 ["MaxRegion"]
       42 JUMPIFLT                         R2 R1 ; [+15]
       44 GETTABLEKS                       R1 R0 K8 ["Y"]
       46 GETUPVAL                         R2 2
       47 GETTABLEKS                       R2 R2 K11 ["MaxRegion"]
       49 JUMPIFLT                         R2 R1 ; [+8]
       51 GETTABLEKS                       R1 R0 K9 ["Z"]
       53 GETUPVAL                         R2 2
       54 GETTABLEKS                       R2 R2 K11 ["MaxRegion"]
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
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Transform"]
        4 GETTABLE                         R1 R2 R3
        5 GETTABLEKS                       R1 R1 K1 ["Rotation"]
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
       18 GETUPVAL                         R4 0
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K6 ["Transform"]
       22 GETTABLE                         R3 R4 R5
       23 GETTABLEKS                       R3 R3 K7 ["Position"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Tool"]
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
       24 GETUPVAL                         R6 5
       25 GETTABLEKS                       R6 R6 K10 ["Size"]
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
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R9 R9 K6 ["Size"]
       10 SETTABLEKS                       R9 R8 K1 ["Id"]
       12 GETUPVAL                         R10 2
       13 CALL                             R10 0 1
       14 JUMPIFNOT                        R10 ; [+2]
       15 LOADN                            R9 26
       16 JUMP                             ; [+1]
       17 LOADNIL                          R9
       18 SETTABLEKS                       R9 R8 K2 ["Height"]
       20 DUPTABLE                         R9 K12 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
       21 NEWTABLE                         R10 0 3
       23 LOADK                            R11 K13 ["X"]
       24 LOADK                            R12 K14 ["Y"]
       25 LOADK                            R13 K15 ["Z"]
       26 SETLIST                          R10 R11 3 [1]
       28 SETTABLEKS                       R10 R9 K9 ["Components"]
       30 DUPCLOSURE                       R10 K16 [PROTO_0]
       31 SETTABLEKS                       R10 R9 K10 ["GetValue"]
       33 DUPCLOSURE                       R10 K17 [PROTO_1]
       34 SETTABLEKS                       R10 R9 K11 ["GetComponents"]
       36 SETTABLEKS                       R9 R8 K3 ["Schema"]
       38 NEWCLOSURE                       R9 P2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          UPVAL U4
       42 SETTABLEKS                       R9 R8 K4 ["Validate"]
       44 DUPTABLE                         R9 K22 [{["DataId"], ["Id"], ["Height"], ["Hidden"] = False, ["Schema"], ["Validate"], ["Value"]}]
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K23 ["Transform"]
       48 SETTABLEKS                       R10 R9 K18 ["DataId"]
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R10 R10 K24 ["Position"]
       53 SETTABLEKS                       R10 R9 K1 ["Id"]
       55 GETUPVAL                         R11 2
       56 CALL                             R11 0 1
       57 JUMPIFNOT                        R11 ; [+2]
       58 LOADN                            R10 26
       59 JUMP                             ; [+1]
       60 LOADNIL                          R10
       61 SETTABLEKS                       R10 R9 K2 ["Height"]
       63 DUPTABLE                         R10 K12 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
       64 NEWTABLE                         R11 0 3
       66 LOADK                            R12 K13 ["X"]
       67 LOADK                            R13 K14 ["Y"]
       68 LOADK                            R14 K15 ["Z"]
       69 SETLIST                          R11 R12 3 [1]
       71 SETTABLEKS                       R11 R10 K9 ["Components"]
       73 NEWCLOSURE                       R11 P3
       74 CAPTURE                          VAL R1
       75 CAPTURE                          UPVAL U1
       76 SETTABLEKS                       R11 R10 K10 ["GetValue"]
       78 DUPCLOSURE                       R11 K25 [PROTO_4]
       79 SETTABLEKS                       R11 R10 K11 ["GetComponents"]
       81 SETTABLEKS                       R10 R9 K3 ["Schema"]
       83 NEWCLOSURE                       R10 P5
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R10 R9 K4 ["Validate"]
       88 GETUPVAL                         R11 1
       89 GETTABLEKS                       R11 R11 K23 ["Transform"]
       91 GETTABLE                         R10 R1 R11
       92 SETTABLEKS                       R10 R9 K21 ["Value"]
       94 DUPTABLE                         R10 K26 [{"DataId", "Id", "Height", "Schema", "Validate", "Value"}]
       95 GETUPVAL                         R11 1
       96 GETTABLEKS                       R11 R11 K23 ["Transform"]
       98 SETTABLEKS                       R11 R10 K18 ["DataId"]
      100 GETUPVAL                         R11 1
      101 GETTABLEKS                       R11 R11 K27 ["Rotation"]
      103 SETTABLEKS                       R11 R10 K1 ["Id"]
      105 GETUPVAL                         R12 2
      106 CALL                             R12 0 1
      107 JUMPIFNOT                        R12 ; [+2]
      108 LOADN                            R11 26
      109 JUMP                             ; [+1]
      110 LOADNIL                          R11
      111 SETTABLEKS                       R11 R10 K2 ["Height"]
      113 DUPTABLE                         R11 K12 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
      114 NEWTABLE                         R12 0 3
      116 LOADK                            R13 K13 ["X"]
      117 LOADK                            R14 K14 ["Y"]
      118 LOADK                            R15 K15 ["Z"]
      119 SETLIST                          R12 R13 3 [1]
      121 SETTABLEKS                       R12 R11 K9 ["Components"]
      123 NEWCLOSURE                       R12 P6
      124 CAPTURE                          VAL R1
      125 CAPTURE                          UPVAL U1
      126 SETTABLEKS                       R12 R11 K10 ["GetValue"]
      128 DUPCLOSURE                       R12 K28 [PROTO_7]
      129 SETTABLEKS                       R12 R11 K11 ["GetComponents"]
      131 SETTABLEKS                       R11 R10 K3 ["Schema"]
      133 NEWCLOSURE                       R11 P8
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          VAL R4
      137 CAPTURE                          UPVAL U5
      138 CAPTURE                          UPVAL U6
      139 CAPTURE                          UPVAL U1
      140 SETTABLEKS                       R11 R10 K4 ["Validate"]
      142 GETUPVAL                         R12 1
      143 GETTABLEKS                       R12 R12 K23 ["Transform"]
      145 GETTABLE                         R11 R1 R12
      146 SETTABLEKS                       R11 R10 K21 ["Value"]
      148 DUPTABLE                         R11 K29 [{"Id", "Schema"}]
      149 GETUPVAL                         R12 1
      150 GETTABLEKS                       R12 R12 K30 ["MergeEmpty"]
      152 SETTABLEKS                       R12 R11 K1 ["Id"]
      154 DUPTABLE                         R12 K32 [{["Type"] = "Checkbox"}]
      155 SETTABLEKS                       R12 R11 K3 ["Schema"]
      157 DUPTABLE                         R12 K29 [{"Id", "Schema"}]
      158 GETUPVAL                         R13 1
      159 GETTABLEKS                       R13 R13 K33 ["LiveEdit"]
      161 SETTABLEKS                       R13 R12 K1 ["Id"]
      163 DUPTABLE                         R13 K32 [{["Type"] = "Checkbox"}]
      164 SETTABLEKS                       R13 R12 K3 ["Schema"]
      166 DUPTABLE                         R13 K29 [{"Id", "Schema"}]
      167 GETUPVAL                         R14 1
      168 GETTABLEKS                       R14 R14 K34 ["SnapToVoxels"]
      170 SETTABLEKS                       R14 R13 K1 ["Id"]
      172 DUPTABLE                         R14 K32 [{["Type"] = "Checkbox"}]
      173 SETTABLEKS                       R14 R13 K3 ["Schema"]
      175 DUPTABLE                         R14 K36 [{"Id", "Layout", "Schema"}]
      176 GETUPVAL                         R15 1
      177 GETTABLEKS                       R15 R15 K37 ["Apply"]
      179 SETTABLEKS                       R15 R14 K1 ["Id"]
      181 GETIMPORT                        R15 K41 [Enum.FillDirection.Vertical]
      183 SETTABLEKS                       R15 R14 K35 ["Layout"]
      185 DUPTABLE                         R15 K44 [{["Label"], ["Type"] = "Button"}]
      186 GETUPVAL                         R18 6
      187 GETUPVAL                         R19 1
      188 GETTABLEKS                       R19 R19 K37 ["Apply"]
      190 NAMECALL                         R16 R4 K45 ["getText"]
      192 CALL                             R16 3 1
      193 SETTABLEKS                       R16 R15 K42 ["Label"]
      195 SETTABLEKS                       R15 R14 K3 ["Schema"]
      197 SETLIST                          R7 R8 7 [1]
      199 DUPTABLE                         R8 K49 [{"Category", "Data", "Overrides"}]
      200 GETUPVAL                         R9 6
      201 SETTABLEKS                       R9 R8 K46 ["Category"]
      203 SETTABLEKS                       R1 R8 K47 ["Data"]
      205 SETTABLEKS                       R3 R8 K48 ["Overrides"]
      207 CALL                             R5 3 -1
      208 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["ApplyById"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Category"]
       25 GETTABLEKS                       R4 R2 K11 ["TransformSettings"]
       27 GETTABLEKS                       R5 R2 K12 ["Storage"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Src"]
       33 GETTABLEKS                       R7 R7 K13 ["Resources"]
       35 GETTABLEKS                       R7 R7 K14 ["Constants"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R3 K11 ["TransformSettings"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K6 ["Src"]
       44 GETTABLEKS                       R9 R9 K7 ["Util"]
       46 GETTABLEKS                       R9 R9 K15 ["getWithinTerrainBounds"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K6 ["Src"]
       53 GETTABLEKS                       R10 R10 K7 ["Util"]
       55 GETTABLEKS                       R10 R10 K16 ["isVectorNaNOrInf"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K6 ["Src"]
       62 GETTABLEKS                       R11 R11 K17 ["Flags"]
       64 GETTABLEKS                       R11 R11 K18 ["getFFlagTerrainEditorExplicitVectorHeight"]
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
