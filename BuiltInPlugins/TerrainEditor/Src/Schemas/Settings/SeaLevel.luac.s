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
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 NEWTABLE                         R7 0 5
        6 DUPTABLE                         R8 K7 [{["Id"], ["Height"] = 26, ["Schema"], ["Validate"], ["Value"]}]
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R9 R9 K8 ["Size"]
       10 SETTABLEKS                       R9 R8 K1 ["Id"]
       12 DUPTABLE                         R9 K14 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
       13 NEWTABLE                         R10 0 3
       15 LOADK                            R11 K15 ["X"]
       16 LOADK                            R12 K16 ["Y"]
       17 LOADK                            R13 K17 ["Z"]
       18 SETLIST                          R10 R11 3 [1]
       20 SETTABLEKS                       R10 R9 K11 ["Components"]
       22 DUPCLOSURE                       R10 K18 [PROTO_0]
       23 SETTABLEKS                       R10 R9 K12 ["GetValue"]
       25 DUPCLOSURE                       R10 K19 [PROTO_1]
       26 SETTABLEKS                       R10 R9 K13 ["GetComponents"]
       28 SETTABLEKS                       R9 R8 K4 ["Schema"]
       30 NEWCLOSURE                       R9 P2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U3
       34 SETTABLEKS                       R9 R8 K5 ["Validate"]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K8 ["Size"]
       39 GETTABLE                         R9 R1 R10
       40 SETTABLEKS                       R9 R8 K6 ["Value"]
       42 DUPTABLE                         R9 K23 [{["DataId"], ["Hidden"] = False, ["Id"], ["Height"] = 26, ["Schema"], ["Validate"], ["Value"]}]
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K24 ["Transform"]
       46 SETTABLEKS                       R10 R9 K20 ["DataId"]
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K25 ["Position"]
       51 SETTABLEKS                       R10 R9 K1 ["Id"]
       53 DUPTABLE                         R10 K14 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
       54 NEWTABLE                         R11 0 3
       56 LOADK                            R12 K15 ["X"]
       57 LOADK                            R13 K16 ["Y"]
       58 LOADK                            R14 K17 ["Z"]
       59 SETLIST                          R11 R12 3 [1]
       61 SETTABLEKS                       R11 R10 K11 ["Components"]
       63 NEWCLOSURE                       R11 P3
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U1
       66 SETTABLEKS                       R11 R10 K12 ["GetValue"]
       68 DUPCLOSURE                       R11 K26 [PROTO_4]
       69 SETTABLEKS                       R11 R10 K13 ["GetComponents"]
       71 SETTABLEKS                       R10 R9 K4 ["Schema"]
       73 NEWCLOSURE                       R10 P5
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          VAL R4
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          UPVAL U1
       80 SETTABLEKS                       R10 R9 K5 ["Validate"]
       82 GETUPVAL                         R11 1
       83 GETTABLEKS                       R11 R11 K24 ["Transform"]
       85 GETTABLE                         R10 R1 R11
       86 SETTABLEKS                       R10 R9 K6 ["Value"]
       88 DUPTABLE                         R10 K27 [{"Id", "Schema"}]
       89 GETUPVAL                         R11 1
       90 GETTABLEKS                       R11 R11 K28 ["SnapToVoxels"]
       92 SETTABLEKS                       R11 R10 K1 ["Id"]
       94 DUPTABLE                         R11 K30 [{["Type"] = "Checkbox"}]
       95 SETTABLEKS                       R11 R10 K4 ["Schema"]
       97 DUPTABLE                         R11 K32 [{"Id", "Layout", "Schema"}]
       98 GETUPVAL                         R12 1
       99 GETTABLEKS                       R12 R12 K33 ["Evaporate"]
      101 SETTABLEKS                       R12 R11 K1 ["Id"]
      103 GETIMPORT                        R12 K37 [Enum.FillDirection.Vertical]
      105 SETTABLEKS                       R12 R11 K31 ["Layout"]
      107 DUPTABLE                         R12 K40 [{["Label"], ["Type"] = "Button"}]
      108 GETUPVAL                         R15 5
      109 GETUPVAL                         R16 1
      110 GETTABLEKS                       R16 R16 K33 ["Evaporate"]
      112 NAMECALL                         R13 R4 K41 ["getText"]
      114 CALL                             R13 3 1
      115 SETTABLEKS                       R13 R12 K38 ["Label"]
      117 SETTABLEKS                       R12 R11 K4 ["Schema"]
      119 DUPTABLE                         R12 K32 [{"Id", "Layout", "Schema"}]
      120 GETUPVAL                         R13 1
      121 GETTABLEKS                       R13 R13 K42 ["Create"]
      123 SETTABLEKS                       R13 R12 K1 ["Id"]
      125 GETIMPORT                        R13 K37 [Enum.FillDirection.Vertical]
      127 SETTABLEKS                       R13 R12 K31 ["Layout"]
      129 DUPTABLE                         R13 K40 [{["Label"], ["Type"] = "Button"}]
      130 GETUPVAL                         R16 5
      131 GETUPVAL                         R17 1
      132 GETTABLEKS                       R17 R17 K42 ["Create"]
      134 NAMECALL                         R14 R4 K41 ["getText"]
      136 CALL                             R14 3 1
      137 SETTABLEKS                       R14 R13 K38 ["Label"]
      139 SETTABLEKS                       R13 R12 K4 ["Schema"]
      141 SETLIST                          R7 R8 5 [1]
      143 DUPTABLE                         R8 K46 [{"Category", "Data", "Overrides"}]
      144 GETUPVAL                         R9 5
      145 SETTABLEKS                       R9 R8 K43 ["Category"]
      147 SETTABLEKS                       R1 R8 K44 ["Data"]
      149 SETTABLEKS                       R3 R8 K45 ["Overrides"]
      151 CALL                             R5 3 -1
      152 RETURN                           R5 -1

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
       25 GETTABLEKS                       R4 R2 K11 ["SeaLevelSettings"]
       27 GETTABLEKS                       R5 R2 K12 ["Storage"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Src"]
       33 GETTABLEKS                       R7 R7 K13 ["Resources"]
       35 GETTABLEKS                       R7 R7 K14 ["Constants"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R3 K11 ["SeaLevelSettings"]
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
       60 NEWTABLE                         R11 8 0
       62 GETTABLEKS                       R12 R4 K17 ["Evaporate"]
       64 GETTABLEKS                       R13 R5 K18 ["LocalSession"]
       66 SETTABLE                         R13 R11 R12
       67 GETTABLEKS                       R12 R4 K19 ["Create"]
       69 GETTABLEKS                       R13 R5 K18 ["LocalSession"]
       71 SETTABLE                         R13 R11 R12
       72 GETTABLEKS                       R12 R4 K20 ["Size"]
       74 GETTABLEKS                       R13 R5 K21 ["LocalPersistent"]
       76 SETTABLE                         R13 R11 R12
       77 GETTABLEKS                       R12 R4 K22 ["SnapToVoxels"]
       79 GETTABLEKS                       R13 R5 K21 ["LocalPersistent"]
       81 SETTABLE                         R13 R11 R12
       82 GETTABLEKS                       R12 R4 K23 ["Transform"]
       84 GETTABLEKS                       R13 R5 K21 ["LocalPersistent"]
       86 SETTABLE                         R13 R11 R12
       87 SETTABLEKS                       R11 R10 K12 ["Storage"]
       89 DUPCLOSURE                       R11 K24 [PROTO_6]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R7
       96 SETTABLEKS                       R11 R10 K25 ["Generator"]
       98 RETURN                           R10 1
