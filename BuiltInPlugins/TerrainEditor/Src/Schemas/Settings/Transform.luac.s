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
        6 DUPTABLE                         R8 K6 [{["Id"], ["Height"] = 26, ["Schema"], ["Validate"]}]
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R9 R9 K7 ["Size"]
       10 SETTABLEKS                       R9 R8 K1 ["Id"]
       12 DUPTABLE                         R9 K13 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
       13 NEWTABLE                         R10 0 3
       15 LOADK                            R11 K14 ["X"]
       16 LOADK                            R12 K15 ["Y"]
       17 LOADK                            R13 K16 ["Z"]
       18 SETLIST                          R10 R11 3 [1]
       20 SETTABLEKS                       R10 R9 K10 ["Components"]
       22 DUPCLOSURE                       R10 K17 [PROTO_0]
       23 SETTABLEKS                       R10 R9 K11 ["GetValue"]
       25 DUPCLOSURE                       R10 K18 [PROTO_1]
       26 SETTABLEKS                       R10 R9 K12 ["GetComponents"]
       28 SETTABLEKS                       R9 R8 K4 ["Schema"]
       30 NEWCLOSURE                       R9 P2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U3
       34 SETTABLEKS                       R9 R8 K5 ["Validate"]
       36 DUPTABLE                         R9 K23 [{["DataId"], ["Id"], ["Height"] = 26, ["Hidden"] = False, ["Schema"], ["Validate"], ["Value"]}]
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K24 ["Transform"]
       40 SETTABLEKS                       R10 R9 K19 ["DataId"]
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R10 R10 K25 ["Position"]
       45 SETTABLEKS                       R10 R9 K1 ["Id"]
       47 DUPTABLE                         R10 K13 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
       48 NEWTABLE                         R11 0 3
       50 LOADK                            R12 K14 ["X"]
       51 LOADK                            R13 K15 ["Y"]
       52 LOADK                            R14 K16 ["Z"]
       53 SETLIST                          R11 R12 3 [1]
       55 SETTABLEKS                       R11 R10 K10 ["Components"]
       57 NEWCLOSURE                       R11 P3
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U1
       60 SETTABLEKS                       R11 R10 K11 ["GetValue"]
       62 DUPCLOSURE                       R11 K26 [PROTO_4]
       63 SETTABLEKS                       R11 R10 K12 ["GetComponents"]
       65 SETTABLEKS                       R10 R9 K4 ["Schema"]
       67 NEWCLOSURE                       R10 P5
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R10 R9 K5 ["Validate"]
       72 GETUPVAL                         R11 1
       73 GETTABLEKS                       R11 R11 K24 ["Transform"]
       75 GETTABLE                         R10 R1 R11
       76 SETTABLEKS                       R10 R9 K22 ["Value"]
       78 DUPTABLE                         R10 K27 [{["DataId"], ["Id"], ["Height"] = 26, ["Schema"], ["Validate"], ["Value"]}]
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R11 R11 K24 ["Transform"]
       82 SETTABLEKS                       R11 R10 K19 ["DataId"]
       84 GETUPVAL                         R11 1
       85 GETTABLEKS                       R11 R11 K28 ["Rotation"]
       87 SETTABLEKS                       R11 R10 K1 ["Id"]
       89 DUPTABLE                         R11 K13 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
       90 NEWTABLE                         R12 0 3
       92 LOADK                            R13 K14 ["X"]
       93 LOADK                            R14 K15 ["Y"]
       94 LOADK                            R15 K16 ["Z"]
       95 SETLIST                          R12 R13 3 [1]
       97 SETTABLEKS                       R12 R11 K10 ["Components"]
       99 NEWCLOSURE                       R12 P6
      100 CAPTURE                          VAL R1
      101 CAPTURE                          UPVAL U1
      102 SETTABLEKS                       R12 R11 K11 ["GetValue"]
      104 DUPCLOSURE                       R12 K29 [PROTO_7]
      105 SETTABLEKS                       R12 R11 K12 ["GetComponents"]
      107 SETTABLEKS                       R11 R10 K4 ["Schema"]
      109 NEWCLOSURE                       R11 P8
      110 CAPTURE                          VAL R0
      111 CAPTURE                          UPVAL U2
      112 CAPTURE                          VAL R4
      113 CAPTURE                          UPVAL U4
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          UPVAL U1
      116 SETTABLEKS                       R11 R10 K5 ["Validate"]
      118 GETUPVAL                         R12 1
      119 GETTABLEKS                       R12 R12 K24 ["Transform"]
      121 GETTABLE                         R11 R1 R12
      122 SETTABLEKS                       R11 R10 K22 ["Value"]
      124 DUPTABLE                         R11 K30 [{"Id", "Schema"}]
      125 GETUPVAL                         R12 1
      126 GETTABLEKS                       R12 R12 K31 ["MergeEmpty"]
      128 SETTABLEKS                       R12 R11 K1 ["Id"]
      130 DUPTABLE                         R12 K33 [{["Type"] = "Checkbox"}]
      131 SETTABLEKS                       R12 R11 K4 ["Schema"]
      133 DUPTABLE                         R12 K30 [{"Id", "Schema"}]
      134 GETUPVAL                         R13 1
      135 GETTABLEKS                       R13 R13 K34 ["LiveEdit"]
      137 SETTABLEKS                       R13 R12 K1 ["Id"]
      139 DUPTABLE                         R13 K33 [{["Type"] = "Checkbox"}]
      140 SETTABLEKS                       R13 R12 K4 ["Schema"]
      142 DUPTABLE                         R13 K30 [{"Id", "Schema"}]
      143 GETUPVAL                         R14 1
      144 GETTABLEKS                       R14 R14 K35 ["SnapToVoxels"]
      146 SETTABLEKS                       R14 R13 K1 ["Id"]
      148 DUPTABLE                         R14 K33 [{["Type"] = "Checkbox"}]
      149 SETTABLEKS                       R14 R13 K4 ["Schema"]
      151 DUPTABLE                         R14 K37 [{"Id", "Layout", "Schema"}]
      152 GETUPVAL                         R15 1
      153 GETTABLEKS                       R15 R15 K38 ["Apply"]
      155 SETTABLEKS                       R15 R14 K1 ["Id"]
      157 GETIMPORT                        R15 K42 [Enum.FillDirection.Vertical]
      159 SETTABLEKS                       R15 R14 K36 ["Layout"]
      161 DUPTABLE                         R15 K45 [{["Label"], ["Type"] = "Button"}]
      162 GETUPVAL                         R18 5
      163 GETUPVAL                         R19 1
      164 GETTABLEKS                       R19 R19 K38 ["Apply"]
      166 NAMECALL                         R16 R4 K46 ["getText"]
      168 CALL                             R16 3 1
      169 SETTABLEKS                       R16 R15 K43 ["Label"]
      171 SETTABLEKS                       R15 R14 K4 ["Schema"]
      173 SETLIST                          R7 R8 7 [1]
      175 DUPTABLE                         R8 K50 [{"Category", "Data", "Overrides"}]
      176 GETUPVAL                         R9 5
      177 SETTABLEKS                       R9 R8 K47 ["Category"]
      179 SETTABLEKS                       R1 R8 K48 ["Data"]
      181 SETTABLEKS                       R3 R8 K49 ["Overrides"]
      183 CALL                             R5 3 -1
      184 RETURN                           R5 -1

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
       58 NEWTABLE                         R10 2 0
       60 NEWTABLE                         R11 16 0
       62 GETTABLEKS                       R12 R4 K17 ["Apply"]
       64 GETTABLEKS                       R13 R5 K18 ["LocalSession"]
       66 SETTABLE                         R13 R11 R12
       67 GETTABLEKS                       R12 R4 K19 ["ForcePreview"]
       69 GETTABLEKS                       R13 R5 K18 ["LocalSession"]
       71 SETTABLE                         R13 R11 R12
       72 GETTABLEKS                       R12 R4 K20 ["LiveEdit"]
       74 GETTABLEKS                       R13 R5 K21 ["LocalPersistent"]
       76 SETTABLE                         R13 R11 R12
       77 GETTABLEKS                       R12 R4 K22 ["MergeEmpty"]
       79 GETTABLEKS                       R13 R5 K21 ["LocalPersistent"]
       81 SETTABLE                         R13 R11 R12
       82 GETTABLEKS                       R12 R4 K23 ["OperationSource"]
       84 GETTABLEKS                       R13 R5 K21 ["LocalPersistent"]
       86 SETTABLE                         R13 R11 R12
       87 GETTABLEKS                       R12 R4 K24 ["Position"]
       89 GETTABLEKS                       R13 R5 K25 ["GlobalPersistent"]
       91 SETTABLE                         R13 R11 R12
       92 GETTABLEKS                       R12 R4 K26 ["Size"]
       94 GETTABLEKS                       R13 R5 K25 ["GlobalPersistent"]
       96 SETTABLE                         R13 R11 R12
       97 GETTABLEKS                       R12 R4 K27 ["SnapToVoxels"]
       99 GETTABLEKS                       R13 R5 K25 ["GlobalPersistent"]
      101 SETTABLE                         R13 R11 R12
      102 GETTABLEKS                       R12 R4 K28 ["TerrainRegion"]
      104 GETTABLEKS                       R13 R5 K29 ["GlobalSession"]
      106 SETTABLE                         R13 R11 R12
      107 GETTABLEKS                       R12 R4 K30 ["TerrainRegionBuffer"]
      109 GETTABLEKS                       R13 R5 K29 ["GlobalSession"]
      111 SETTABLE                         R13 R11 R12
      112 GETTABLEKS                       R12 R4 K31 ["TerrainRegionBufferSize"]
      114 GETTABLEKS                       R13 R5 K29 ["GlobalSession"]
      116 SETTABLE                         R13 R11 R12
      117 GETTABLEKS                       R12 R4 K32 ["TerrainRegionBufferTransform"]
      119 GETTABLEKS                       R13 R5 K29 ["GlobalSession"]
      121 SETTABLE                         R13 R11 R12
      122 GETTABLEKS                       R12 R4 K33 ["TerrainRegionSize"]
      124 GETTABLEKS                       R13 R5 K29 ["GlobalSession"]
      126 SETTABLE                         R13 R11 R12
      127 GETTABLEKS                       R12 R4 K34 ["TerrainRegionTransform"]
      129 GETTABLEKS                       R13 R5 K29 ["GlobalSession"]
      131 SETTABLE                         R13 R11 R12
      132 GETTABLEKS                       R12 R4 K35 ["Transform"]
      134 GETTABLEKS                       R13 R5 K25 ["GlobalPersistent"]
      136 SETTABLE                         R13 R11 R12
      137 GETTABLEKS                       R12 R4 K36 ["TransformMode"]
      139 GETTABLEKS                       R13 R5 K29 ["GlobalSession"]
      141 SETTABLE                         R13 R11 R12
      142 SETTABLEKS                       R11 R10 K12 ["Storage"]
      144 DUPCLOSURE                       R11 K37 [PROTO_9]
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R7
      151 SETTABLEKS                       R11 R10 K38 ["Generator"]
      153 RETURN                           R10 1
