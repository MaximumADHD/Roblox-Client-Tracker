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

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 NEWTABLE                         R7 0 5
        6 DUPTABLE                         R8 K6 [{"Id", "Height", "Schema", "Validate", "Value"}]
        7 GETUPVAL                         R10 1
        8 GETTABLEKS                       R9 R10 K7 ["Size"]
       10 SETTABLEKS                       R9 R8 K1 ["Id"]
       12 GETUPVAL                         R10 2
       13 CALL                             R10 0 1
       14 JUMPIFNOT                        R10 ; [+2]
       15 LOADN                            R9 26
       16 JUMP                             ; [+1]
       17 LOADNIL                          R9
       18 SETTABLEKS                       R9 R8 K2 ["Height"]
       20 DUPTABLE                         R9 K12 [{"Type", "Components", "GetValue", "GetComponents"}]
       21 LOADK                            R10 K13 ["Vector"]
       22 SETTABLEKS                       R10 R9 K8 ["Type"]
       24 NEWTABLE                         R10 0 3
       26 LOADK                            R11 K14 ["X"]
       27 LOADK                            R12 K15 ["Y"]
       28 LOADK                            R13 K16 ["Z"]
       29 SETLIST                          R10 R11 3 [1]
       31 SETTABLEKS                       R10 R9 K9 ["Components"]
       33 DUPCLOSURE                       R10 K17 [PROTO_0]
       34 SETTABLEKS                       R10 R9 K10 ["GetValue"]
       36 DUPCLOSURE                       R10 K18 [PROTO_1]
       37 SETTABLEKS                       R10 R9 K11 ["GetComponents"]
       39 SETTABLEKS                       R9 R8 K3 ["Schema"]
       41 NEWCLOSURE                       R9 P2
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U4
       45 SETTABLEKS                       R9 R8 K4 ["Validate"]
       47 GETUPVAL                         R11 1
       48 GETTABLEKS                       R10 R11 K7 ["Size"]
       50 GETTABLE                         R9 R1 R10
       51 SETTABLEKS                       R9 R8 K5 ["Value"]
       53 DUPTABLE                         R9 K21 [{"DataId", "Hidden", "Id", "Height", "Schema", "Validate", "Value"}]
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R10 R11 K22 ["Transform"]
       57 SETTABLEKS                       R10 R9 K19 ["DataId"]
       59 LOADB                            R10 0
       60 SETTABLEKS                       R10 R9 K20 ["Hidden"]
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R10 R11 K23 ["Position"]
       65 SETTABLEKS                       R10 R9 K1 ["Id"]
       67 GETUPVAL                         R11 2
       68 CALL                             R11 0 1
       69 JUMPIFNOT                        R11 ; [+2]
       70 LOADN                            R10 26
       71 JUMP                             ; [+1]
       72 LOADNIL                          R10
       73 SETTABLEKS                       R10 R9 K2 ["Height"]
       75 DUPTABLE                         R10 K12 [{"Type", "Components", "GetValue", "GetComponents"}]
       76 LOADK                            R11 K13 ["Vector"]
       77 SETTABLEKS                       R11 R10 K8 ["Type"]
       79 NEWTABLE                         R11 0 3
       81 LOADK                            R12 K14 ["X"]
       82 LOADK                            R13 K15 ["Y"]
       83 LOADK                            R14 K16 ["Z"]
       84 SETLIST                          R11 R12 3 [1]
       86 SETTABLEKS                       R11 R10 K9 ["Components"]
       88 NEWCLOSURE                       R11 P3
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U1
       91 SETTABLEKS                       R11 R10 K10 ["GetValue"]
       93 DUPCLOSURE                       R11 K24 [PROTO_4]
       94 SETTABLEKS                       R11 R10 K11 ["GetComponents"]
       96 SETTABLEKS                       R10 R9 K3 ["Schema"]
       98 NEWCLOSURE                       R10 P5
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          VAL R4
      102 CAPTURE                          UPVAL U5
      103 CAPTURE                          UPVAL U6
      104 CAPTURE                          UPVAL U1
      105 SETTABLEKS                       R10 R9 K4 ["Validate"]
      107 GETUPVAL                         R12 1
      108 GETTABLEKS                       R11 R12 K22 ["Transform"]
      110 GETTABLE                         R10 R1 R11
      111 SETTABLEKS                       R10 R9 K5 ["Value"]
      113 DUPTABLE                         R10 K25 [{"Id", "Schema"}]
      114 GETUPVAL                         R12 1
      115 GETTABLEKS                       R11 R12 K26 ["SnapToVoxels"]
      117 SETTABLEKS                       R11 R10 K1 ["Id"]
      119 DUPTABLE                         R11 K27 [{"Type"}]
      120 LOADK                            R12 K28 ["Checkbox"]
      121 SETTABLEKS                       R12 R11 K8 ["Type"]
      123 SETTABLEKS                       R11 R10 K3 ["Schema"]
      125 DUPTABLE                         R11 K30 [{"Id", "Layout", "Schema"}]
      126 GETUPVAL                         R13 1
      127 GETTABLEKS                       R12 R13 K31 ["Evaporate"]
      129 SETTABLEKS                       R12 R11 K1 ["Id"]
      131 GETIMPORT                        R12 K35 [Enum.FillDirection.Vertical]
      133 SETTABLEKS                       R12 R11 K29 ["Layout"]
      135 DUPTABLE                         R12 K37 [{"Label", "Type"}]
      136 GETUPVAL                         R15 6
      137 GETUPVAL                         R17 1
      138 GETTABLEKS                       R16 R17 K31 ["Evaporate"]
      140 NAMECALL                         R13 R4 K38 ["getText"]
      142 CALL                             R13 3 1
      143 SETTABLEKS                       R13 R12 K36 ["Label"]
      145 LOADK                            R13 K39 ["Button"]
      146 SETTABLEKS                       R13 R12 K8 ["Type"]
      148 SETTABLEKS                       R12 R11 K3 ["Schema"]
      150 DUPTABLE                         R12 K30 [{"Id", "Layout", "Schema"}]
      151 GETUPVAL                         R14 1
      152 GETTABLEKS                       R13 R14 K40 ["Create"]
      154 SETTABLEKS                       R13 R12 K1 ["Id"]
      156 GETIMPORT                        R13 K35 [Enum.FillDirection.Vertical]
      158 SETTABLEKS                       R13 R12 K29 ["Layout"]
      160 DUPTABLE                         R13 K37 [{"Label", "Type"}]
      161 GETUPVAL                         R16 6
      162 GETUPVAL                         R18 1
      163 GETTABLEKS                       R17 R18 K40 ["Create"]
      165 NAMECALL                         R14 R4 K38 ["getText"]
      167 CALL                             R14 3 1
      168 SETTABLEKS                       R14 R13 K36 ["Label"]
      170 LOADK                            R14 K39 ["Button"]
      171 SETTABLEKS                       R14 R13 K8 ["Type"]
      173 SETTABLEKS                       R13 R12 K3 ["Schema"]
      175 SETLIST                          R7 R8 5 [1]
      177 DUPTABLE                         R8 K44 [{"Category", "Data", "Overrides"}]
      178 GETUPVAL                         R9 6
      179 SETTABLEKS                       R9 R8 K41 ["Category"]
      181 SETTABLEKS                       R1 R8 K42 ["Data"]
      183 SETTABLEKS                       R3 R8 K43 ["Overrides"]
      185 CALL                             R5 3 -1
      186 RETURN                           R5 -1

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
       25 GETTABLEKS                       R4 R2 K11 ["SeaLevelSettings"]
       27 GETTABLEKS                       R5 R2 K12 ["Storage"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R9 R0 K6 ["Src"]
       33 GETTABLEKS                       R8 R9 K13 ["Resources"]
       35 GETTABLEKS                       R7 R8 K14 ["Constants"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R3 K11 ["SeaLevelSettings"]
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
       69 NEWTABLE                         R12 8 0
       71 GETTABLEKS                       R13 R4 K19 ["Evaporate"]
       73 GETTABLEKS                       R14 R5 K20 ["LocalSession"]
       75 SETTABLE                         R14 R12 R13
       76 GETTABLEKS                       R13 R4 K21 ["Create"]
       78 GETTABLEKS                       R14 R5 K20 ["LocalSession"]
       80 SETTABLE                         R14 R12 R13
       81 GETTABLEKS                       R13 R4 K22 ["Size"]
       83 GETTABLEKS                       R14 R5 K23 ["LocalPersistent"]
       85 SETTABLE                         R14 R12 R13
       86 GETTABLEKS                       R13 R4 K24 ["SnapToVoxels"]
       88 GETTABLEKS                       R14 R5 K23 ["LocalPersistent"]
       90 SETTABLE                         R14 R12 R13
       91 GETTABLEKS                       R13 R4 K25 ["Transform"]
       93 GETTABLEKS                       R14 R5 K23 ["LocalPersistent"]
       95 SETTABLE                         R14 R12 R13
       96 SETTABLEKS                       R12 R11 K12 ["Storage"]
       98 DUPCLOSURE                       R12 K26 [PROTO_6]
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R12 R11 K27 ["Generator"]
      108 RETURN                           R11 1
