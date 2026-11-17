PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["previews"]
        2 MOVE                             R3 R2
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R0 K1 ["modelToPreview"]
        8 GETTABLE                         R8 R9 R1
        9 JUMPIFNOTEQ                      R8 R6 ; [+19]
       11 GETIMPORT                        R8 K4 [table.clone]
       13 MOVE                             R9 R7
       14 CALL                             R8 1 1
       15 SETTABLEKS                       R6 R8 K5 ["uuid"]
       17 GETTABLEKS                       R9 R7 K6 ["status"]
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R10 R10 K7 ["STATUS"]
       22 GETTABLEKS                       R10 R10 K8 ["FAILED"]
       24 JUMPIFNOTEQ                      R9 R10 ; [+3]
       26 LOADNIL                          R9
       27 RETURN                           R9 1
       28 RETURN                           R8 1
       29 FORGLOOP                         R3 2 ; [-24]
       31 LOADNIL                          R3
       32 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["generationAngles"]
        2 GETTABLE                         R3 R2 R1
        3 RETURN                           R3 1

PROTO_2:
        0 LOADB                            R1 0
        1 LOADN                            R2 -360
        2 JUMPIFNOTLE                      R2 R0 ; [+6]
        4 LOADN                            R2 360
        5 JUMPIFLE                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEKS                       R2 R2 K0 ["Children"]
        3 GETTABLEKS                       R3 R1 K1 ["rotation"]
        5 NAMECALL                         R3 R3 K2 ["ToEulerAnglesYXZ"]
        7 CALL                             R3 1 3
        8 GETTABLEN                        R6 R2 1
        9 FASTCALL1                        MATH_DEG R3 ; [+3]
       10 MOVE                             R9 R3
       11 GETIMPORT                        R8 K5 [math.deg]
       13 CALL                             R8 1 1
       14 FASTCALL1                        MATH_DEG R4 ; [+3]
       15 MOVE                             R10 R4
       16 GETIMPORT                        R9 K5 [math.deg]
       18 CALL                             R9 1 1
       19 FASTCALL1                        MATH_DEG R5 ; [+3]
       20 MOVE                             R11 R5
       21 GETIMPORT                        R10 K5 [math.deg]
       23 CALL                             R10 1 1
       24 FASTCALL                         VECTOR ; [+2]
       25 GETIMPORT                        R7 K8 [Vector3.new]
       27 CALL                             R7 3 1
       28 SETTABLEKS                       R7 R6 K9 ["Value"]
       30 RETURN                           R0 0

PROTO_4:
        0 GETTABLEN                        R3 R1 1
        1 GETTABLEKS                       R3 R3 K0 ["Children"]
        3 GETTABLEN                        R4 R3 1
        4 GETTABLEKS                       R4 R4 K1 ["Value"]
        6 GETTABLEKS                       R8 R4 K4 ["X"]
        8 ADDK                             R7 R8 K2 [180]
        9 MODK                             R6 R7 K3 [360]
       10 SUBK                             R5 R6 K2 [180]
       11 GETTABLEKS                       R9 R4 K5 ["Y"]
       13 ADDK                             R8 R9 K2 [180]
       14 MODK                             R7 R8 K3 [360]
       15 SUBK                             R6 R7 K2 [180]
       16 GETTABLEKS                       R10 R4 K6 ["Z"]
       18 ADDK                             R9 R10 K2 [180]
       19 MODK                             R8 R9 K3 [360]
       20 SUBK                             R7 R8 K2 [180]
       21 GETIMPORT                        R8 K9 [CFrame.fromEulerAnglesYXZ]
       23 FASTCALL1                        MATH_RAD R5 ; [+3]
       24 MOVE                             R10 R5
       25 GETIMPORT                        R9 K12 [math.rad]
       27 CALL                             R9 1 1
       28 FASTCALL1                        MATH_RAD R6 ; [+3]
       29 MOVE                             R11 R6
       30 GETIMPORT                        R10 K12 [math.rad]
       32 CALL                             R10 1 1
       33 FASTCALL1                        MATH_RAD R7 ; [+3]
       34 MOVE                             R12 R7
       35 GETIMPORT                        R11 K12 [math.rad]
       37 CALL                             R11 1 1
       38 CALL                             R8 3 1
       39 GETTABLEKS                       R9 R0 K13 ["setRotation"]
       41 MOVE                             R10 R8
       42 CALL                             R9 1 0
       43 RETURN                           R0 0

PROTO_5:
        0 GETTABLEN                        R2 R0 1
        1 FASTCALL1                        TYPE R2 ; [+2]
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+48]
        7 GETTABLEN                        R2 R0 2
        8 FASTCALL1                        TYPE R2 ; [+2]
        9 GETIMPORT                        R1 K1 [type]
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+41]
       14 GETTABLEN                        R2 R0 3
       15 FASTCALL1                        TYPE R2 ; [+2]
       16 GETIMPORT                        R1 K1 [type]
       18 CALL                             R1 1 1
       19 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+34]
       21 GETTABLEN                        R2 R0 1
       22 LOADB                            R1 0
       23 LOADN                            R3 -360
       24 JUMPIFNOTLE                      R3 R2 ; [+6]
       26 LOADN                            R3 360
       27 JUMPIFLE                         R2 R3 ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 JUMPIFNOT                        R1 ; [+22]
       32 GETTABLEN                        R2 R0 2
       33 LOADB                            R1 0
       34 LOADN                            R3 -360
       35 JUMPIFNOTLE                      R3 R2 ; [+6]
       37 LOADN                            R3 360
       38 JUMPIFLE                         R2 R3 ; [+2]
       40 LOADB                            R1 0 +1
       41 LOADB                            R1 1
       42 JUMPIFNOT                        R1 ; [+11]
       43 GETTABLEN                        R2 R0 3
       44 LOADB                            R1 0
       45 LOADN                            R3 -360
       46 JUMPIFNOTLE                      R3 R2 ; [+6]
       48 LOADN                            R3 360
       49 JUMPIFLE                         R2 R3 ; [+2]
       51 LOADB                            R1 0 +1
       52 LOADB                            R1 1
       53 JUMPIF                           R1 ; [+11]
       54 DUPTABLE                         R1 K6 [{"X", "Y", "Z"}]
       55 GETTABLEN                        R2 R0 1
       56 SETTABLEKS                       R2 R1 K3 ["X"]
       58 GETTABLEN                        R2 R0 2
       59 SETTABLEKS                       R2 R1 K4 ["Y"]
       61 GETTABLEN                        R2 R0 3
       62 SETTABLEKS                       R2 R1 K5 ["Z"]
       64 RETURN                           R1 1
       65 GETTABLEN                        R2 R0 1
       66 GETTABLEN                        R3 R0 2
       67 GETTABLEN                        R4 R0 3
       68 FASTCALL                         VECTOR ; [+2]
       69 GETIMPORT                        R1 K9 [Vector3.new]
       71 CALL                             R1 3 1
       72 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R1 0 3
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 GETTABLEKS                       R3 R0 K1 ["Y"]
        6 GETTABLEKS                       R4 R0 K2 ["Z"]
        8 SETLIST                          R1 R2 3 [1]
       10 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R2 0 1
        2 DUPTABLE                         R3 K5 [{[1] = "Generation Angle", ["Expandable"] = False, ["Children"]}]
        3 NEWTABLE                         R4 0 1
        5 DUPTABLE                         R5 K10 [{[1] = "GenerationAngle", ["Label"], ["Validate"], ["Schema"]}]
        6 LOADK                            R8 K11 ["Options"]
        7 LOADK                            R9 K12 ["Rotation"]
        8 NAMECALL                         R6 R0 K13 ["getText"]
       10 CALL                             R6 3 1
       11 SETTABLEKS                       R6 R5 K7 ["Label"]
       13 GETTABLEKS                       R6 R1 K12 ["Rotation"]
       15 SETTABLEKS                       R6 R5 K8 ["Validate"]
       17 DUPTABLE                         R6 K19 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
       18 NEWTABLE                         R7 0 3
       20 LOADK                            R8 K20 ["X"]
       21 LOADK                            R9 K21 ["Y"]
       22 LOADK                            R10 K22 ["Z"]
       23 SETLIST                          R7 R8 3 [1]
       25 SETTABLEKS                       R7 R6 K16 ["Components"]
       27 DUPCLOSURE                       R7 K23 [PROTO_5]
       28 SETTABLEKS                       R7 R6 K17 ["GetValue"]
       30 DUPCLOSURE                       R7 K24 [PROTO_6]
       31 SETTABLEKS                       R7 R6 K18 ["GetComponents"]
       33 SETTABLEKS                       R6 R5 K9 ["Schema"]
       35 SETLIST                          R4 R5 1 [1]
       37 SETTABLEKS                       R4 R3 K4 ["Children"]
       39 SETLIST                          R2 R3 1 [1]
       41 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 FASTCALL1                        TYPE R2 ; [+2]
        3 GETIMPORT                        R1 K2 [type]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["number"] ; [+17]
        8 GETTABLEKS                       R2 R0 K4 ["Y"]
       10 FASTCALL1                        TYPE R2 ; [+2]
       11 GETIMPORT                        R1 K2 [type]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K3 ["number"] ; [+9]
       16 GETTABLEKS                       R2 R0 K5 ["Z"]
       18 FASTCALL1                        TYPE R2 ; [+2]
       19 GETIMPORT                        R1 K2 [type]
       21 CALL                             R1 1 1
       22 JUMPIFEQKS                       R1 K3 ["number"] ; [+15]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K6 ["setValidRotation"]
       27 LOADB                            R2 0
       28 CALL                             R1 1 0
       29 GETIMPORT                        R1 K10 [Enum.PropertyStatus.Error]
       31 GETUPVAL                         R2 1
       32 LOADK                            R4 K11 ["Options"]
       33 LOADK                            R5 K12 ["RotationAnglesNotNumbers"]
       34 NAMECALL                         R2 R2 K13 ["getText"]
       36 CALL                             R2 3 -1
       37 RETURN                           R1 -1
       38 GETTABLEKS                       R2 R0 K0 ["X"]
       40 LOADB                            R1 0
       41 LOADN                            R3 -360
       42 JUMPIFNOTLE                      R3 R2 ; [+6]
       44 LOADN                            R3 360
       45 JUMPIFLE                         R2 R3 ; [+2]
       47 LOADB                            R1 0 +1
       48 LOADB                            R1 1
       49 JUMPIFNOT                        R1 ; [+24]
       50 GETTABLEKS                       R2 R0 K4 ["Y"]
       52 LOADB                            R1 0
       53 LOADN                            R3 -360
       54 JUMPIFNOTLE                      R3 R2 ; [+6]
       56 LOADN                            R3 360
       57 JUMPIFLE                         R2 R3 ; [+2]
       59 LOADB                            R1 0 +1
       60 LOADB                            R1 1
       61 JUMPIFNOT                        R1 ; [+12]
       62 GETTABLEKS                       R2 R0 K5 ["Z"]
       64 LOADB                            R1 0
       65 LOADN                            R3 -360
       66 JUMPIFNOTLE                      R3 R2 ; [+6]
       68 LOADN                            R3 360
       69 JUMPIFLE                         R2 R3 ; [+2]
       71 LOADB                            R1 0 +1
       72 LOADB                            R1 1
       73 JUMPIF                           R1 ; [+14]
       74 GETUPVAL                         R1 0
       75 GETTABLEKS                       R1 R1 K6 ["setValidRotation"]
       77 LOADB                            R2 0
       78 CALL                             R1 1 0
       79 GETIMPORT                        R1 K10 [Enum.PropertyStatus.Error]
       81 GETUPVAL                         R2 1
       82 LOADK                            R4 K11 ["Options"]
       83 LOADK                            R5 K14 ["RotationAnglesOutOfRange"]
       84 NAMECALL                         R2 R2 K13 ["getText"]
       86 CALL                             R2 3 -1
       87 RETURN                           R1 -1
       88 GETUPVAL                         R1 0
       89 GETTABLEKS                       R1 R1 K6 ["setValidRotation"]
       91 LOADB                            R2 1
       92 CALL                             R1 1 0
       93 GETIMPORT                        R1 K16 [Enum.PropertyStatus.Ok]
       95 LOADK                            R2 K17 [""]
       96 RETURN                           R1 2

PROTO_9:
        0 DUPTABLE                         R0 K1 [{"Rotation"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Rotation"]
        4 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 3
        5 GETTABLEN                        R2 R0 1
        6 GETTABLEKS                       R2 R2 K0 ["Children"]
        8 GETTABLEKS                       R3 R1 K1 ["rotation"]
       10 NAMECALL                         R3 R3 K2 ["ToEulerAnglesYXZ"]
       12 CALL                             R3 1 3
       13 GETTABLEN                        R6 R2 1
       14 FASTCALL1                        MATH_DEG R3 ; [+3]
       15 MOVE                             R9 R3
       16 GETIMPORT                        R8 K5 [math.deg]
       18 CALL                             R8 1 1
       19 FASTCALL1                        MATH_DEG R4 ; [+3]
       20 MOVE                             R10 R4
       21 GETIMPORT                        R9 K5 [math.deg]
       23 CALL                             R9 1 1
       24 FASTCALL1                        MATH_DEG R5 ; [+3]
       25 MOVE                             R11 R5
       26 GETIMPORT                        R10 K5 [math.deg]
       28 CALL                             R10 1 1
       29 FASTCALL                         VECTOR ; [+2]
       30 GETIMPORT                        R7 K8 [Vector3.new]
       32 CALL                             R7 3 1
       33 SETTABLEKS                       R7 R6 K9 ["Value"]
       35 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+36]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["rotation"]
        5 GETUPVAL                         R1 0
        6 JUMPIFEQ                         R0 R1 ; [+31]
        8 GETIMPORT                        R0 K3 [CFrame.fromEulerAnglesYXZ]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["X"]
       13 FASTCALL1                        MATH_RAD R2 ; [+2]
       14 GETIMPORT                        R1 K7 [math.rad]
       16 CALL                             R1 1 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K8 ["Y"]
       20 FASTCALL1                        MATH_RAD R3 ; [+2]
       21 GETIMPORT                        R2 K7 [math.rad]
       23 CALL                             R2 1 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K9 ["Z"]
       27 FASTCALL1                        MATH_RAD R4 ; [+2]
       28 GETIMPORT                        R3 K7 [math.rad]
       30 CALL                             R3 1 1
       31 CALL                             R0 3 1
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R1 R1 K10 ["setRotation"]
       35 MOVE                             R2 R0
       36 CALL                             R1 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R0 2
       39 GETTABLEKS                       R0 R0 K11 ["updateGenerationAngle"]
       41 DUPTABLE                         R1 K14 [{"action", "hash"}]
       42 GETUPVAL                         R2 3
       43 GETTABLEKS                       R2 R2 K15 ["GENERATION_ANGLE_ACTIONS"]
       45 GETTABLEKS                       R2 R2 K16 ["REMOVE"]
       47 SETTABLEKS                       R2 R1 K12 ["action"]
       49 GETUPVAL                         R2 4
       50 SETTABLEKS                       R2 R1 K13 ["hash"]
       52 CALL                             R0 1 0
       53 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 3
        1 GETTABLEKS                       R0 R0 K0 ["rotation"]
        3 NAMECALL                         R0 R0 K1 ["ToEulerAnglesYXZ"]
        5 CALL                             R0 1 3
        6 SETUPVAL                         R0 0
        7 SETUPVAL                         R1 1
        8 SETUPVAL                         R2 2
        9 GETUPVAL                         R2 0
       10 FASTCALL1                        MATH_DEG R2 ; [+2]
       11 GETIMPORT                        R1 K4 [math.deg]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R3 1
       15 FASTCALL1                        MATH_DEG R3 ; [+2]
       16 GETIMPORT                        R2 K4 [math.deg]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R4 2
       20 FASTCALL1                        MATH_DEG R4 ; [+2]
       21 GETIMPORT                        R3 K4 [math.deg]
       23 CALL                             R3 1 1
       24 FASTCALL                         VECTOR ; [+2]
       25 GETIMPORT                        R0 K7 [Vector3.new]
       27 CALL                             R0 3 1
       28 GETUPVAL                         R1 4
       29 GETTABLEKS                       R1 R1 K8 ["updateGenerationAngle"]
       31 DUPTABLE                         R2 K12 [{"action", "hash", "angle"}]
       32 GETUPVAL                         R3 5
       33 GETTABLEKS                       R3 R3 K13 ["GENERATION_ANGLE_ACTIONS"]
       35 GETTABLEKS                       R3 R3 K14 ["SET"]
       37 SETTABLEKS                       R3 R2 K9 ["action"]
       39 GETUPVAL                         R3 6
       40 SETTABLEKS                       R3 R2 K10 ["hash"]
       42 SETTABLEKS                       R0 R2 K11 ["angle"]
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 0
        3 LENGTH                           R0 R1
        4 LOADN                            R1 0
        5 JUMPIFLT                         R1 R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["total"]
       11 LOADN                            R1 0
       12 JUMPIFNOTLT                      R1 R0 ; [+33]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K1 ["quota"]
       17 LOADN                            R1 0
       18 JUMPIFNOTLE                      R0 R1 ; [+27]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K2 ["addError"]
       23 GETUPVAL                         R1 0
       24 LOADK                            R2 K3 ["PreviewUsageAlert"]
       25 GETUPVAL                         R3 2
       26 LOADK                            R5 K3 ["PreviewUsageAlert"]
       27 LOADK                            R6 K4 ["Title"]
       28 NAMECALL                         R3 R3 K5 ["getText"]
       30 CALL                             R3 3 1
       31 GETUPVAL                         R4 2
       32 LOADK                            R6 K3 ["PreviewUsageAlert"]
       33 LOADK                            R7 K6 ["Description"]
       34 DUPTABLE                         R8 K7 [{"total"}]
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K0 ["total"]
       38 SETTABLEKS                       R9 R8 K0 ["total"]
       40 NAMECALL                         R4 R4 K5 ["getText"]
       42 CALL                             R4 4 1
       43 LOADK                            R5 K8 ["warning"]
       44 CALL                             R0 5 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R0 1
       47 GETTABLEKS                       R0 R0 K9 ["removeErrorById"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R2 K3 ["PreviewUsageAlert"]
       51 CALL                             R0 2 0
       52 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOTEQKS                    R0 K0 ["warning"] ; [+3]
        2 LOADK                            R1 K1 ["Warning"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K2 ["error"] ; [+3]
        6 LOADK                            R1 K3 ["Error"]
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKS                    R0 K4 ["info"] ; [+3]
       10 LOADK                            R1 K5 ["Info"]
       11 RETURN                           R1 1
       12 JUMPIFNOTEQKS                    R0 K6 ["success"] ; [+3]
       14 LOADK                            R1 K7 ["Success"]
       15 RETURN                           R1 1
       16 LOADK                            R1 K3 ["Error"]
       17 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["popError"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useContext"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["useContext"]
       13 GETUPVAL                         R4 3
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["useContext"]
       18 GETUPVAL                         R5 4
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 5
       21 NAMECALL                         R5 R5 K1 ["use"]
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 6
       25 LOADK                            R8 K2 ["EntryArea"]
       26 NAMECALL                         R6 R6 K1 ["use"]
       28 CALL                             R6 2 1
       29 GETUPVAL                         R7 7
       30 GETTABLEKS                       R7 R7 K3 ["new"]
       32 CALL                             R7 0 1
       33 LOADNIL                          R8
       34 GETTABLEKS                       R9 R0 K4 ["MeshParts"]
       36 JUMPIFNOT                        R9 ; [+3]
       37 GETTABLEKS                       R8 R0 K4 ["MeshParts"]
       39 JUMP                             ; [+3]
       40 GETUPVAL                         R9 8
       41 CALL                             R9 0 1
       42 MOVE                             R8 R9
       43 GETUPVAL                         R9 9
       44 MOVE                             R10 R8
       45 MOVE                             R11 R4
       46 CALL                             R9 2 1
       47 GETTABLEKS                       R11 R1 K5 ["generationAngles"]
       49 GETTABLE                         R10 R11 R9
       50 JUMPIF                           R10 ; [+2]
       51 GETTABLEKS                       R10 R0 K6 ["GenerationAngle"]
       53 GETTABLEKS                       R11 R3 K7 ["rotation"]
       55 NAMECALL                         R11 R11 K8 ["ToEulerAnglesYXZ"]
       57 CALL                             R11 1 3
       58 FASTCALL1                        MATH_DEG R11 ; [+3]
       59 MOVE                             R16 R11
       60 GETIMPORT                        R15 K11 [math.deg]
       62 CALL                             R15 1 1
       63 FASTCALL1                        MATH_DEG R12 ; [+3]
       64 MOVE                             R17 R12
       65 GETIMPORT                        R16 K11 [math.deg]
       67 CALL                             R16 1 1
       68 FASTCALL1                        MATH_DEG R13 ; [+3]
       69 MOVE                             R18 R13
       70 GETIMPORT                        R17 K11 [math.deg]
       72 CALL                             R17 1 1
       73 FASTCALL                         VECTOR ; [+2]
       74 GETIMPORT                        R14 K13 [Vector3.new]
       76 CALL                             R14 3 1
       77 MOVE                             R15 R10
       78 JUMPIFNOT                        R15 ; [+4]
       79 JUMPIFNOTEQ                      R14 R10 ; [+2]
       81 LOADB                            R15 0 +1
       82 LOADB                            R15 1
       83 LOADB                            R16 0
       84 JUMPIFEQKNIL                     R10 ; [+2]
       86 NOT                              R16 R15
       87 GETUPVAL                         R17 10
       88 MOVE                             R18 R2
       89 MOVE                             R19 R9
       90 CALL                             R17 2 1
       91 JUMPIF                           R17 ; [+2]
       92 GETTABLEKS                       R17 R0 K14 ["PreviewData"]
       94 GETTABLEKS                       R18 R2 K15 ["getTopError"]
       96 MOVE                             R19 R9
       97 CALL                             R18 1 1
       98 GETIMPORT                        R20 K17 [next]
      100 MOVE                             R21 R8
      101 CALL                             R20 1 1
      102 JUMPIFNOTEQKNIL                  R20 ; [+2]
      104 LOADB                            R19 0 +1
      105 LOADB                            R19 1
      106 JUMPIFNOTEQKNIL                  R17 ; [+2]
      108 LOADB                            R20 0 +1
      109 LOADB                            R20 1
      110 GETUPVAL                         R21 0
      111 GETTABLEKS                       R21 R21 K18 ["useState"]
      113 NEWTABLE                         R22 0 0
      115 CALL                             R21 1 2
      116 GETUPVAL                         R23 0
      117 GETTABLEKS                       R23 R23 K19 ["useCallback"]
      119 NEWCLOSURE                       R24 P0
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R5
      122 NEWTABLE                         R25 0 1
      124 GETTABLEKS                       R26 R3 K20 ["setValidRotation"]
      126 SETLIST                          R25 R26 1 [1]
      128 CALL                             R23 2 1
      129 GETUPVAL                         R24 0
      130 GETTABLEKS                       R24 R24 K21 ["useMemo"]
      132 NEWCLOSURE                       R25 P1
      133 CAPTURE                          VAL R23
      134 NEWTABLE                         R26 0 1
      136 MOVE                             R27 R23
      137 SETLIST                          R26 R27 1 [1]
      139 CALL                             R24 2 1
      140 GETUPVAL                         R25 0
      141 GETTABLEKS                       R25 R25 K21 ["useMemo"]
      143 NEWCLOSURE                       R26 P2
      144 CAPTURE                          UPVAL U11
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R24
      147 CAPTURE                          VAL R3
      148 NEWTABLE                         R27 0 1
      150 MOVE                             R28 R3
      151 SETLIST                          R27 R28 1 [1]
      153 CALL                             R25 2 1
      154 GETUPVAL                         R26 0
      155 GETTABLEKS                       R26 R26 K19 ["useCallback"]
      157 NEWCLOSURE                       R27 P3
      158 CAPTURE                          UPVAL U12
      159 CAPTURE                          VAL R3
      160 NEWTABLE                         R28 0 1
      162 MOVE                             R29 R3
      163 SETLIST                          R28 R29 1 [1]
      165 CALL                             R26 2 1
      166 NEWTABLE                         R27 8 0
      168 JUMPIF                           R20 ; [+264]
      169 GETUPVAL                         R28 0
      170 GETTABLEKS                       R28 R28 K22 ["createElement"]
      172 GETUPVAL                         R29 13
      173 DUPTABLE                         R30 K24 [{"LayoutOrder", "MeshParts"}]
      174 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      176 CALL                             R31 1 1
      177 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      179 SETTABLEKS                       R8 R30 K4 ["MeshParts"]
      181 CALL                             R28 2 1
      182 SETTABLEKS                       R28 R27 K26 ["ViewSelector"]
      184 JUMPIFNOT                        R19 ; [+203]
      185 JUMPIF                           R16 ; [+202]
      186 GETUPVAL                         R28 0
      187 GETTABLEKS                       R28 R28 K22 ["createElement"]
      189 GETUPVAL                         R29 14
      190 DUPTABLE                         R30 K43 [{["AutomaticSize"], ["BackgroundColor"], ["Expansion"], ["ExpandByDefault"] = True, ["Expandable"] = False, ["Items"], ["LabelHeight"] = 24, ["LabelWidth"], ["LayoutOrder"], ["OnChange"], ["OnExpansionChange"], ["Position"], ["Size"], ["UseScrollingFrame"] = False}]
      191 GETIMPORT                        R31 K46 [Enum.AutomaticSize.Y]
      193 SETTABLEKS                       R31 R30 K27 ["AutomaticSize"]
      195 GETTABLEKS                       R31 R6 K28 ["BackgroundColor"]
      197 SETTABLEKS                       R31 R30 K28 ["BackgroundColor"]
      199 SETTABLEKS                       R21 R30 K29 ["Expansion"]
      201 SETTABLEKS                       R25 R30 K34 ["Items"]
      203 GETIMPORT                        R31 K48 [UDim.new]
      205 LOADN                            R32 1
      206 LOADN                            R33 -224
      207 CALL                             R31 2 1
      208 SETTABLEKS                       R31 R30 K37 ["LabelWidth"]
      210 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      212 CALL                             R31 1 1
      213 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      215 SETTABLEKS                       R26 R30 K38 ["OnChange"]
      217 SETTABLEKS                       R22 R30 K39 ["OnExpansionChange"]
      219 GETIMPORT                        R31 K51 [UDim2.fromScale]
      221 LOADK                            R32 K52 [0.5]
      222 LOADK                            R33 K52 [0.5]
      223 CALL                             R31 2 1
      224 SETTABLEKS                       R31 R30 K40 ["Position"]
      226 GETIMPORT                        R31 K51 [UDim2.fromScale]
      228 LOADN                            R32 1
      229 LOADN                            R33 0
      230 CALL                             R31 2 1
      231 SETTABLEKS                       R31 R30 K41 ["Size"]
      233 CALL                             R28 2 1
      234 SETTABLEKS                       R28 R27 K53 ["GenerationAngleEntry"]
      236 GETUPVAL                         R28 0
      237 GETTABLEKS                       R28 R28 K22 ["createElement"]
      239 GETUPVAL                         R29 15
      240 DUPTABLE                         R30 K54 [{"BackgroundColor", "Size", "LayoutOrder"}]
      241 GETTABLEKS                       R31 R6 K28 ["BackgroundColor"]
      243 SETTABLEKS                       R31 R30 K28 ["BackgroundColor"]
      245 GETIMPORT                        R31 K55 [UDim2.new]
      247 LOADN                            R32 1
      248 LOADN                            R33 0
      249 LOADN                            R34 0
      250 LOADN                            R35 32
      251 CALL                             R31 4 1
      252 SETTABLEKS                       R31 R30 K41 ["Size"]
      254 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      256 CALL                             R31 1 1
      257 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      259 DUPTABLE                         R31 K59 [{"Padding", "CancelButton", "SetGenerationAngleButton"}]
      260 GETUPVAL                         R32 0
      261 GETTABLEKS                       R32 R32 K22 ["createElement"]
      263 LOADK                            R33 K60 ["UIPadding"]
      264 DUPTABLE                         R34 K63 [{"PaddingLeft", "PaddingRight"}]
      265 GETIMPORT                        R35 K48 [UDim.new]
      267 LOADN                            R36 0
      268 LOADN                            R37 10
      269 CALL                             R35 2 1
      270 SETTABLEKS                       R35 R34 K61 ["PaddingLeft"]
      272 GETIMPORT                        R35 K48 [UDim.new]
      274 LOADN                            R36 0
      275 LOADN                            R37 10
      276 CALL                             R35 2 1
      277 SETTABLEKS                       R35 R34 K62 ["PaddingRight"]
      279 CALL                             R32 2 1
      280 SETTABLEKS                       R32 R31 K56 ["Padding"]
      282 JUMPIFNOT                        R15 ; [+43]
      283 GETUPVAL                         R32 0
      284 GETTABLEKS                       R32 R32 K22 ["createElement"]
      286 GETUPVAL                         R33 16
      287 DUPTABLE                         R34 K72 [{["LayoutOrder"] = 1, ["AnchorPoint"], ["LeftIcon"] = "rbxasset://textures/StudioSharedUI/Undo.png", ["Position"], ["Size"], ["Style"] = "EntryAreaCancelAngleButton", ["OnClick"], ["Text"]}]
      288 GETIMPORT                        R35 K74 [Vector2.new]
      290 LOADN                            R36 0
      291 LOADK                            R37 K52 [0.5]
      292 CALL                             R35 2 1
      293 SETTABLEKS                       R35 R34 K65 ["AnchorPoint"]
      295 GETIMPORT                        R35 K51 [UDim2.fromScale]
      297 LOADN                            R36 0
      298 LOADK                            R37 K52 [0.5]
      299 CALL                             R35 2 1
      300 SETTABLEKS                       R35 R34 K40 ["Position"]
      302 GETIMPORT                        R35 K76 [UDim2.fromOffset]
      304 LOADN                            R36 100
      305 LOADN                            R37 32
      306 CALL                             R35 2 1
      307 SETTABLEKS                       R35 R34 K41 ["Size"]
      309 NEWCLOSURE                       R35 P4
      310 CAPTURE                          VAL R10
      311 CAPTURE                          VAL R3
      312 CAPTURE                          VAL R1
      313 CAPTURE                          UPVAL U17
      314 CAPTURE                          VAL R9
      315 SETTABLEKS                       R35 R34 K70 ["OnClick"]
      317 LOADK                            R37 K77 ["General"]
      318 LOADK                            R38 K78 ["Cancel"]
      319 NAMECALL                         R35 R5 K79 ["getText"]
      321 CALL                             R35 3 1
      322 SETTABLEKS                       R35 R34 K71 ["Text"]
      324 CALL                             R32 2 1
      325 JUMP                             ; [+1]
      326 LOADNIL                          R32
      327 SETTABLEKS                       R32 R31 K57 ["CancelButton"]
      329 GETUPVAL                         R32 0
      330 GETTABLEKS                       R32 R32 K22 ["createElement"]
      332 GETUPVAL                         R33 16
      333 DUPTABLE                         R34 K83 [{["LayoutOrder"] = 2, ["AnchorPoint"], ["OnClick"], ["Position"], ["Size"], ["Style"] = "Primary", ["Text"], ["TooltipText"]}]
      334 GETIMPORT                        R35 K74 [Vector2.new]
      336 LOADN                            R36 1
      337 LOADK                            R37 K52 [0.5]
      338 CALL                             R35 2 1
      339 SETTABLEKS                       R35 R34 K65 ["AnchorPoint"]
      341 NEWCLOSURE                       R35 P5
      342 CAPTURE                          REF R11
      343 CAPTURE                          REF R12
      344 CAPTURE                          REF R13
      345 CAPTURE                          VAL R3
      346 CAPTURE                          VAL R1
      347 CAPTURE                          UPVAL U17
      348 CAPTURE                          VAL R9
      349 SETTABLEKS                       R35 R34 K70 ["OnClick"]
      351 GETIMPORT                        R35 K51 [UDim2.fromScale]
      353 LOADN                            R36 1
      354 LOADK                            R37 K52 [0.5]
      355 CALL                             R35 2 1
      356 SETTABLEKS                       R35 R34 K40 ["Position"]
      358 GETIMPORT                        R35 K55 [UDim2.new]
      360 LOADN                            R36 0
      361 LOADN                            R37 180
      362 LOADN                            R38 0
      363 LOADN                            R39 30
      364 CALL                             R35 4 1
      365 SETTABLEKS                       R35 R34 K41 ["Size"]
      367 LOADK                            R37 K2 ["EntryArea"]
      368 LOADK                            R38 K84 ["SetGenerationAngle"]
      369 NAMECALL                         R35 R5 K79 ["getText"]
      371 CALL                             R35 3 1
      372 SETTABLEKS                       R35 R34 K71 ["Text"]
      374 LOADK                            R37 K2 ["EntryArea"]
      375 LOADK                            R38 K85 ["SetGenerationAngleTooltip"]
      376 NAMECALL                         R35 R5 K79 ["getText"]
      378 CALL                             R35 3 1
      379 SETTABLEKS                       R35 R34 K82 ["TooltipText"]
      381 CALL                             R32 2 1
      382 SETTABLEKS                       R32 R31 K58 ["SetGenerationAngleButton"]
      384 CALL                             R28 3 1
      385 SETTABLEKS                       R28 R27 K86 ["AngleButtons"]
      387 JUMP                             ; [+61]
      388 JUMPIFNOT                        R19 ; [+60]
      389 JUMPIFNOT                        R16 ; [+59]
      390 GETUPVAL                         R28 0
      391 GETTABLEKS                       R28 R28 K22 ["createElement"]
      393 GETUPVAL                         R29 18
      394 DUPTABLE                         R30 K87 [{"LayoutOrder"}]
      395 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      397 CALL                             R31 1 1
      398 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      400 CALL                             R28 2 1
      401 SETTABLEKS                       R28 R27 K88 ["PromptEntry"]
      403 GETUPVAL                         R28 19
      404 CALL                             R28 0 1
      405 JUMPIFNOT                        R28 ; [+13]
      406 GETUPVAL                         R28 0
      407 GETTABLEKS                       R28 R28 K22 ["createElement"]
      409 GETUPVAL                         R29 20
      410 DUPTABLE                         R30 K87 [{"LayoutOrder"}]
      411 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      413 CALL                             R31 1 1
      414 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      416 CALL                             R28 2 1
      417 SETTABLEKS                       R28 R27 K89 ["ArtStyle"]
      419 GETUPVAL                         R28 0
      420 GETTABLEKS                       R28 R28 K22 ["createElement"]
      422 GETUPVAL                         R29 21
      423 DUPTABLE                         R30 K87 [{"LayoutOrder"}]
      424 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      426 CALL                             R31 1 1
      427 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      429 CALL                             R28 2 1
      430 SETTABLEKS                       R28 R27 K90 ["Options"]
      432 JUMP                             ; [+16]
      433 JUMPIFNOT                        R20 ; [+15]
      434 GETUPVAL                         R28 0
      435 GETTABLEKS                       R28 R28 K22 ["createElement"]
      437 GETUPVAL                         R29 22
      438 DUPTABLE                         R30 K91 [{"LayoutOrder", "PreviewData"}]
      439 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      441 CALL                             R31 1 1
      442 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      444 SETTABLEKS                       R17 R30 K14 ["PreviewData"]
      446 CALL                             R28 2 1
      447 SETTABLEKS                       R28 R27 K92 ["PreviewArea"]
      449 GETUPVAL                         R28 0
      450 GETTABLEKS                       R28 R28 K21 ["useMemo"]
      452 NEWCLOSURE                       R29 P6
      453 CAPTURE                          VAL R9
      454 CAPTURE                          VAL R2
      455 CAPTURE                          VAL R5
      456 NEWTABLE                         R30 0 3
      458 MOVE                             R31 R9
      459 GETTABLEKS                       R32 R2 K93 ["quota"]
      461 GETTABLEKS                       R33 R2 K94 ["total"]
      463 SETLIST                          R30 R31 3 [1]
      465 CALL                             R28 2 0
      466 DUPCLOSURE                       R28 K95 [PROTO_15]
      467 GETUPVAL                         R29 0
      468 GETTABLEKS                       R29 R29 K22 ["createElement"]
      470 GETUPVAL                         R30 15
      471 DUPTABLE                         R31 K97 [{["AutomaticSize"], ["BackgroundColor"], ["LayoutOrder"], ["Size"], ["Style"] = "Box"}]
      472 GETIMPORT                        R32 K46 [Enum.AutomaticSize.Y]
      474 SETTABLEKS                       R32 R31 K27 ["AutomaticSize"]
      476 GETTABLEKS                       R32 R6 K28 ["BackgroundColor"]
      478 SETTABLEKS                       R32 R31 K28 ["BackgroundColor"]
      480 GETTABLEKS                       R32 R0 K23 ["LayoutOrder"]
      482 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      484 GETIMPORT                        R32 K55 [UDim2.new]
      486 LOADN                            R33 1
      487 LOADN                            R34 0
      488 LOADN                            R35 0
      489 LOADN                            R36 200
      490 CALL                             R32 4 1
      491 SETTABLEKS                       R32 R31 K41 ["Size"]
      493 DUPTABLE                         R32 K100 [{"Alert", "List"}]
      494 LOADB                            R33 0
      495 JUMPIFEQKNIL                     R18 ; [+41]
      497 GETUPVAL                         R33 0
      498 GETTABLEKS                       R33 R33 K22 ["createElement"]
      500 GETUPVAL                         R34 23
      501 DUPTABLE                         R35 K105 [{["Title"], ["Description"], ["Style"], ["ZIndex"] = 2, ["OnClose"]}]
      502 GETTABLEKS                       R36 R18 K106 ["title"]
      504 SETTABLEKS                       R36 R35 K101 ["Title"]
      506 GETTABLEKS                       R36 R18 K107 ["message"]
      508 SETTABLEKS                       R36 R35 K102 ["Description"]
      510 GETTABLEKS                       R37 R18 K108 ["errorType"]
      512 JUMPIFNOTEQKS                    R37 K109 ["warning"] ; [+3]
      514 LOADK                            R36 K110 ["Warning"]
      515 JUMP                             ; [+13]
      516 JUMPIFNOTEQKS                    R37 K111 ["error"] ; [+3]
      518 LOADK                            R36 K112 ["Error"]
      519 JUMP                             ; [+9]
      520 JUMPIFNOTEQKS                    R37 K113 ["info"] ; [+3]
      522 LOADK                            R36 K114 ["Info"]
      523 JUMP                             ; [+5]
      524 JUMPIFNOTEQKS                    R37 K115 ["success"] ; [+3]
      526 LOADK                            R36 K116 ["Success"]
      527 JUMP                             ; [+1]
      528 LOADK                            R36 K112 ["Error"]
      529 SETTABLEKS                       R36 R35 K68 ["Style"]
      531 NEWCLOSURE                       R36 P8
      532 CAPTURE                          VAL R2
      533 CAPTURE                          VAL R9
      534 SETTABLEKS                       R36 R35 K104 ["OnClose"]
      536 CALL                             R33 2 1
      537 SETTABLEKS                       R33 R32 K98 ["Alert"]
      539 GETUPVAL                         R33 0
      540 GETTABLEKS                       R33 R33 K22 ["createElement"]
      542 GETUPVAL                         R34 15
      543 DUPTABLE                         R35 K122 [{["HorizontalAlignment"], ["Layout"], ["VerticalAlignment"], ["Spacing"] = 5, ["Size"]}]
      544 GETIMPORT                        R36 K124 [Enum.HorizontalAlignment.Center]
      546 SETTABLEKS                       R36 R35 K117 ["HorizontalAlignment"]
      548 GETIMPORT                        R36 K127 [Enum.FillDirection.Vertical]
      550 SETTABLEKS                       R36 R35 K118 ["Layout"]
      552 GETIMPORT                        R36 K128 [Enum.VerticalAlignment.Center]
      554 SETTABLEKS                       R36 R35 K119 ["VerticalAlignment"]
      556 GETIMPORT                        R36 K55 [UDim2.new]
      558 LOADN                            R37 1
      559 LOADN                            R38 -10
      560 LOADN                            R39 1
      561 LOADN                            R40 0
      562 CALL                             R36 4 1
      563 SETTABLEKS                       R36 R35 K41 ["Size"]
      565 MOVE                             R36 R27
      566 CALL                             R33 3 1
      567 SETTABLEKS                       R33 R32 K99 ["List"]
      569 CALL                             R29 3 -1
      570 CLOSEUPVALS                      R11
      571 RETURN                           R29 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K12 ["Localization"]
       32 GETTABLEKS                       R6 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Components"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K14 ["ArtStyle"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R6 K15 ["Options"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R6 K16 ["PreviewArea"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R6 K17 ["PromptEntry"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R6 K18 ["ViewSelector"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R6 K19 ["TextureGenerationServiceContext"]
       65 CALL                             R12 1 1
       66 GETTABLEKS                       R13 R0 K9 ["Src"]
       68 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       70 GETIMPORT                        R14 K5 [require]
       72 GETTABLEKS                       R15 R13 K21 ["useSelectedMeshParts"]
       74 CALL                             R14 1 1
       75 GETTABLEKS                       R15 R2 K22 ["UI"]
       77 GETTABLEKS                       R16 R15 K23 ["Alert"]
       79 GETTABLEKS                       R17 R15 K24 ["Form"]
       81 GETTABLEKS                       R18 R15 K25 ["IconButton"]
       83 GETTABLEKS                       R19 R15 K26 ["Pane"]
       85 GETTABLEKS                       R20 R15 K27 ["TextLabel"]
       87 GETTABLEKS                       R21 R2 K28 ["Style"]
       89 GETTABLEKS                       R21 R21 K29 ["Stylizer"]
       91 GETTABLEKS                       R22 R2 K30 ["Util"]
       93 GETTABLEKS                       R22 R22 K31 ["LayoutOrderIterator"]
       95 GETIMPORT                        R23 K5 [require]
       97 GETTABLEKS                       R24 R0 K9 ["Src"]
       99 GETTABLEKS                       R24 R24 K30 ["Util"]
      101 GETTABLEKS                       R24 R24 K32 ["Constants"]
      103 CALL                             R23 1 1
      104 GETIMPORT                        R24 K5 [require]
      106 GETTABLEKS                       R25 R0 K9 ["Src"]
      108 GETTABLEKS                       R25 R25 K30 ["Util"]
      110 GETTABLEKS                       R25 R25 K33 ["createHashFromMeshParts"]
      112 CALL                             R24 1 1
      113 GETIMPORT                        R25 K5 [require]
      115 GETTABLEKS                       R26 R0 K9 ["Src"]
      117 GETTABLEKS                       R26 R26 K30 ["Util"]
      119 GETTABLEKS                       R26 R26 K34 ["GenerationAnglesContext"]
      121 CALL                             R25 1 1
      122 GETIMPORT                        R26 K5 [require]
      124 GETTABLEKS                       R27 R0 K9 ["Src"]
      126 GETTABLEKS                       R27 R27 K30 ["Util"]
      128 GETTABLEKS                       R27 R27 K35 ["OptionsContext"]
      130 CALL                             R26 1 1
      131 GETIMPORT                        R27 K5 [require]
      133 GETTABLEKS                       R28 R0 K9 ["Src"]
      135 GETTABLEKS                       R28 R28 K30 ["Util"]
      137 GETTABLEKS                       R28 R28 K36 ["PreviewsContext"]
      139 CALL                             R27 1 1
      140 GETIMPORT                        R28 K5 [require]
      142 GETTABLEKS                       R29 R0 K9 ["Src"]
      144 GETTABLEKS                       R29 R29 K37 ["Flags"]
      146 GETTABLEKS                       R29 R29 K38 ["getFFlagTextureGeneratorArtStyle"]
      148 CALL                             R28 1 1
      149 DUPCLOSURE                       R29 K39 [PROTO_0]
      150 CAPTURE                          VAL R23
      151 DUPCLOSURE                       R30 K40 [PROTO_1]
      152 DUPCLOSURE                       R31 K41 [PROTO_2]
      153 DUPCLOSURE                       R32 K42 [PROTO_3]
      154 DUPCLOSURE                       R33 K43 [PROTO_4]
      155 DUPCLOSURE                       R34 K44 [PROTO_7]
      156 DUPCLOSURE                       R35 K45 [PROTO_17]
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R25
      159 CAPTURE                          VAL R27
      160 CAPTURE                          VAL R26
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R24
      167 CAPTURE                          VAL R29
      168 CAPTURE                          VAL R34
      169 CAPTURE                          VAL R33
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R23
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R28
      177 CAPTURE                          VAL R7
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R16
      181 RETURN                           R35 1
