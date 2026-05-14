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
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 NEWTABLE                         R7 0 4
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
       47 DUPTABLE                         R9 K21 [{"DataId", "Hidden", "Id", "Height", "Schema", "Validate", "Value"}]
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K22 ["Transform"]
       51 SETTABLEKS                       R10 R9 K18 ["DataId"]
       53 LOADB                            R10 0
       54 SETTABLEKS                       R10 R9 K19 ["Hidden"]
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R10 R10 K23 ["Position"]
       59 SETTABLEKS                       R10 R9 K1 ["Id"]
       61 GETUPVAL                         R11 2
       62 CALL                             R11 0 1
       63 JUMPIFNOT                        R11 ; [+2]
       64 LOADN                            R10 26
       65 JUMP                             ; [+1]
       66 LOADNIL                          R10
       67 SETTABLEKS                       R10 R9 K2 ["Height"]
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
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U3
       95 CAPTURE                          VAL R4
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U1
       99 SETTABLEKS                       R10 R9 K4 ["Validate"]
      101 GETUPVAL                         R11 1
      102 GETTABLEKS                       R11 R11 K22 ["Transform"]
      104 GETTABLE                         R10 R1 R11
      105 SETTABLEKS                       R10 R9 K20 ["Value"]
      107 DUPTABLE                         R10 K25 [{"DataId", "Id", "Height", "Schema", "Value"}]
      108 GETUPVAL                         R11 1
      109 GETTABLEKS                       R11 R11 K22 ["Transform"]
      111 SETTABLEKS                       R11 R10 K18 ["DataId"]
      113 GETUPVAL                         R11 1
      114 GETTABLEKS                       R11 R11 K26 ["Rotation"]
      116 SETTABLEKS                       R11 R10 K1 ["Id"]
      118 GETUPVAL                         R12 2
      119 CALL                             R12 0 1
      120 JUMPIFNOT                        R12 ; [+2]
      121 LOADN                            R11 26
      122 JUMP                             ; [+1]
      123 LOADNIL                          R11
      124 SETTABLEKS                       R11 R10 K2 ["Height"]
      126 DUPTABLE                         R11 K11 [{"Type", "Components", "GetValue", "GetComponents"}]
      127 LOADK                            R12 K12 ["Vector"]
      128 SETTABLEKS                       R12 R11 K7 ["Type"]
      130 NEWTABLE                         R12 0 3
      132 LOADK                            R13 K13 ["X"]
      133 LOADK                            R14 K14 ["Y"]
      134 LOADK                            R15 K15 ["Z"]
      135 SETLIST                          R12 R13 3 [1]
      137 SETTABLEKS                       R12 R11 K8 ["Components"]
      139 NEWCLOSURE                       R12 P6
      140 CAPTURE                          VAL R1
      141 CAPTURE                          UPVAL U1
      142 SETTABLEKS                       R12 R11 K9 ["GetValue"]
      144 DUPCLOSURE                       R12 K27 [PROTO_7]
      145 SETTABLEKS                       R12 R11 K10 ["GetComponents"]
      147 SETTABLEKS                       R11 R10 K3 ["Schema"]
      149 GETUPVAL                         R12 1
      150 GETTABLEKS                       R12 R12 K22 ["Transform"]
      152 GETTABLE                         R11 R1 R12
      153 SETTABLEKS                       R11 R10 K20 ["Value"]
      155 DUPTABLE                         R11 K28 [{"Id", "Schema"}]
      156 GETUPVAL                         R12 1
      157 GETTABLEKS                       R12 R12 K29 ["SnapToVoxels"]
      159 SETTABLEKS                       R12 R11 K1 ["Id"]
      161 DUPTABLE                         R12 K30 [{"Type"}]
      162 LOADK                            R13 K31 ["Checkbox"]
      163 SETTABLEKS                       R13 R12 K7 ["Type"]
      165 SETTABLEKS                       R12 R11 K3 ["Schema"]
      167 SETLIST                          R7 R8 4 [1]
      169 DUPTABLE                         R8 K35 [{"Category", "Data", "Overrides"}]
      170 GETUPVAL                         R9 6
      171 SETTABLEKS                       R9 R8 K32 ["Category"]
      173 SETTABLEKS                       R1 R8 K33 ["Data"]
      175 SETTABLEKS                       R3 R8 K34 ["Overrides"]
      177 CALL                             R5 3 -1
      178 RETURN                           R5 -1

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
       25 GETTABLEKS                       R4 R2 K11 ["SelectionSettings"]
       27 GETTABLEKS                       R5 R2 K12 ["Storage"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Src"]
       33 GETTABLEKS                       R7 R7 K13 ["Resources"]
       35 GETTABLEKS                       R7 R7 K14 ["Constants"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K6 ["Src"]
       42 GETTABLEKS                       R8 R8 K7 ["Util"]
       44 GETTABLEKS                       R8 R8 K15 ["getWithinTerrainBounds"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K6 ["Src"]
       51 GETTABLEKS                       R9 R9 K7 ["Util"]
       53 GETTABLEKS                       R9 R9 K16 ["isVectorNaNOrInf"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Src"]
       60 GETTABLEKS                       R10 R10 K17 ["Flags"]
       62 GETTABLEKS                       R10 R10 K18 ["getFFlagTerrainEditorExplicitVectorHeight"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R10 R3 K11 ["SelectionSettings"]
       67 NEWTABLE                         R11 2 0
       69 NEWTABLE                         R12 4 0
       71 GETTABLEKS                       R13 R4 K19 ["Size"]
       73 GETTABLEKS                       R14 R5 K20 ["GlobalPersistent"]
       75 SETTABLE                         R14 R12 R13
       76 GETTABLEKS                       R13 R4 K21 ["Position"]
       78 GETTABLEKS                       R14 R5 K20 ["GlobalPersistent"]
       80 SETTABLE                         R14 R12 R13
       81 GETTABLEKS                       R13 R4 K22 ["Transform"]
       83 GETTABLEKS                       R14 R5 K20 ["GlobalPersistent"]
       85 SETTABLE                         R14 R12 R13
       86 GETTABLEKS                       R13 R4 K23 ["SnapToVoxels"]
       88 GETTABLEKS                       R14 R5 K20 ["GlobalPersistent"]
       90 SETTABLE                         R14 R12 R13
       91 SETTABLEKS                       R12 R11 K12 ["Storage"]
       93 DUPCLOSURE                       R12 K24 [PROTO_8]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R10
      101 SETTABLEKS                       R12 R11 K25 ["Generator"]
      103 RETURN                           R11 1
