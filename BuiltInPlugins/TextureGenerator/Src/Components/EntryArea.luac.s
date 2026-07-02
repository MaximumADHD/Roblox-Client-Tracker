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
        1 JUMPIFNOT                        R0 ; [+41]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["rotation"]
        5 GETUPVAL                         R1 0
        6 JUMPIFEQ                         R0 R1 ; [+36]
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
       35 GETUPVAL                         R3 2
       36 CALL                             R3 0 1
       37 JUMPIFNOT                        R3 ; [+2]
       38 MOVE                             R2 R0
       39 JUMP                             ; [+1]
       40 GETUPVAL                         R2 0
       41 CALL                             R1 1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R0 3
       44 GETTABLEKS                       R0 R0 K11 ["updateGenerationAngle"]
       46 DUPTABLE                         R1 K14 [{"action", "hash"}]
       47 GETUPVAL                         R2 4
       48 GETTABLEKS                       R2 R2 K15 ["GENERATION_ANGLE_ACTIONS"]
       50 GETTABLEKS                       R2 R2 K16 ["REMOVE"]
       52 SETTABLEKS                       R2 R1 K12 ["action"]
       54 GETUPVAL                         R2 5
       55 SETTABLEKS                       R2 R1 K13 ["hash"]
       57 CALL                             R0 1 0
       58 RETURN                           R0 0

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
       42 GETUPVAL                         R4 7
       43 CALL                             R4 0 1
       44 JUMPIFNOT                        R4 ; [+2]
       45 MOVE                             R3 R0
       46 JUMP                             ; [+3]
       47 GETUPVAL                         R3 3
       48 GETTABLEKS                       R3 R3 K0 ["rotation"]
       50 SETTABLEKS                       R3 R2 K11 ["angle"]
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

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
       34 GETUPVAL                         R9 8
       35 CALL                             R9 0 1
       36 JUMPIFNOT                        R9 ; [+10]
       37 GETTABLEKS                       R9 R0 K4 ["MeshParts"]
       39 JUMPIFNOT                        R9 ; [+3]
       40 GETTABLEKS                       R8 R0 K4 ["MeshParts"]
       42 JUMP                             ; [+7]
       43 GETUPVAL                         R9 9
       44 CALL                             R9 0 1
       45 MOVE                             R8 R9
       46 JUMP                             ; [+3]
       47 GETUPVAL                         R9 9
       48 CALL                             R9 0 1
       49 MOVE                             R8 R9
       50 GETUPVAL                         R9 10
       51 MOVE                             R10 R8
       52 MOVE                             R11 R4
       53 CALL                             R9 2 1
       54 GETTABLEKS                       R11 R1 K5 ["generationAngles"]
       56 GETTABLE                         R10 R11 R9
       57 JUMPIF                           R10 ; [+2]
       58 GETTABLEKS                       R10 R0 K6 ["GenerationAngle"]
       60 GETTABLEKS                       R11 R3 K7 ["rotation"]
       62 NAMECALL                         R11 R11 K8 ["ToEulerAnglesYXZ"]
       64 CALL                             R11 1 3
       65 GETUPVAL                         R15 11
       66 CALL                             R15 0 1
       67 JUMPIFNOT                        R15 ; [+20]
       68 FASTCALL1                        MATH_DEG R11 ; [+3]
       69 MOVE                             R16 R11
       70 GETIMPORT                        R15 K11 [math.deg]
       72 CALL                             R15 1 1
       73 FASTCALL1                        MATH_DEG R12 ; [+3]
       74 MOVE                             R17 R12
       75 GETIMPORT                        R16 K11 [math.deg]
       77 CALL                             R16 1 1
       78 FASTCALL1                        MATH_DEG R13 ; [+3]
       79 MOVE                             R18 R13
       80 GETIMPORT                        R17 K11 [math.deg]
       82 CALL                             R17 1 1
       83 FASTCALL                         VECTOR ; [+2]
       84 GETIMPORT                        R14 K13 [Vector3.new]
       86 CALL                             R14 3 1
       87 JUMP                             ; [+2]
       88 GETTABLEKS                       R14 R3 K7 ["rotation"]
       90 MOVE                             R15 R10
       91 JUMPIFNOT                        R15 ; [+4]
       92 JUMPIFNOTEQ                      R14 R10 ; [+2]
       94 LOADB                            R15 0 +1
       95 LOADB                            R15 1
       96 LOADB                            R16 0
       97 JUMPIFEQKNIL                     R10 ; [+2]
       99 NOT                              R16 R15
      100 GETUPVAL                         R17 12
      101 MOVE                             R18 R2
      102 MOVE                             R19 R9
      103 CALL                             R17 2 1
      104 GETUPVAL                         R18 8
      105 CALL                             R18 0 1
      106 JUMPIFNOT                        R18 ; [+9]
      107 GETUPVAL                         R18 12
      108 MOVE                             R19 R2
      109 MOVE                             R20 R9
      110 CALL                             R18 2 1
      111 JUMPIF                           R18 ; [+2]
      112 GETTABLEKS                       R18 R0 K14 ["PreviewData"]
      114 MOVE                             R17 R18
      115 JUMP                             ; [+5]
      116 GETUPVAL                         R18 12
      117 MOVE                             R19 R2
      118 MOVE                             R20 R9
      119 CALL                             R18 2 1
      120 MOVE                             R17 R18
      121 GETTABLEKS                       R18 R2 K15 ["getTopError"]
      123 MOVE                             R19 R9
      124 CALL                             R18 1 1
      125 GETIMPORT                        R20 K17 [next]
      127 MOVE                             R21 R8
      128 CALL                             R20 1 1
      129 JUMPIFNOTEQKNIL                  R20 ; [+2]
      131 LOADB                            R19 0 +1
      132 LOADB                            R19 1
      133 JUMPIFNOTEQKNIL                  R17 ; [+2]
      135 LOADB                            R20 0 +1
      136 LOADB                            R20 1
      137 GETUPVAL                         R21 0
      138 GETTABLEKS                       R21 R21 K18 ["useState"]
      140 NEWTABLE                         R22 0 0
      142 CALL                             R21 1 2
      143 GETUPVAL                         R23 0
      144 GETTABLEKS                       R23 R23 K19 ["useCallback"]
      146 NEWCLOSURE                       R24 P0
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R5
      149 NEWTABLE                         R25 0 1
      151 GETTABLEKS                       R26 R3 K20 ["setValidRotation"]
      153 SETLIST                          R25 R26 1 [1]
      155 CALL                             R23 2 1
      156 GETUPVAL                         R24 0
      157 GETTABLEKS                       R24 R24 K21 ["useMemo"]
      159 NEWCLOSURE                       R25 P1
      160 CAPTURE                          VAL R23
      161 NEWTABLE                         R26 0 1
      163 MOVE                             R27 R23
      164 SETLIST                          R26 R27 1 [1]
      166 CALL                             R24 2 1
      167 GETUPVAL                         R25 0
      168 GETTABLEKS                       R25 R25 K21 ["useMemo"]
      170 NEWCLOSURE                       R26 P2
      171 CAPTURE                          UPVAL U13
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R3
      175 NEWTABLE                         R27 0 1
      177 MOVE                             R28 R3
      178 SETLIST                          R27 R28 1 [1]
      180 CALL                             R25 2 1
      181 GETUPVAL                         R26 0
      182 GETTABLEKS                       R26 R26 K19 ["useCallback"]
      184 NEWCLOSURE                       R27 P3
      185 CAPTURE                          UPVAL U14
      186 CAPTURE                          VAL R3
      187 NEWTABLE                         R28 0 1
      189 MOVE                             R29 R3
      190 SETLIST                          R28 R29 1 [1]
      192 CALL                             R26 2 1
      193 NEWTABLE                         R27 8 0
      195 GETUPVAL                         R28 8
      196 CALL                             R28 0 1
      197 JUMPIFNOT                        R28 ; [+284]
      198 JUMPIF                           R20 ; [+266]
      199 GETUPVAL                         R28 0
      200 GETTABLEKS                       R28 R28 K22 ["createElement"]
      202 GETUPVAL                         R29 15
      203 DUPTABLE                         R30 K24 [{"LayoutOrder", "MeshParts"}]
      204 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      206 CALL                             R31 1 1
      207 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      209 SETTABLEKS                       R8 R30 K4 ["MeshParts"]
      211 CALL                             R28 2 1
      212 SETTABLEKS                       R28 R27 K26 ["ViewSelector"]
      214 JUMPIFNOT                        R19 ; [+205]
      215 JUMPIF                           R16 ; [+204]
      216 GETUPVAL                         R28 0
      217 GETTABLEKS                       R28 R28 K22 ["createElement"]
      219 GETUPVAL                         R29 16
      220 DUPTABLE                         R30 K43 [{["AutomaticSize"], ["BackgroundColor"], ["Expansion"], ["ExpandByDefault"] = True, ["Expandable"] = False, ["Items"], ["LabelHeight"] = 24, ["LabelWidth"], ["LayoutOrder"], ["OnChange"], ["OnExpansionChange"], ["Position"], ["Size"], ["UseScrollingFrame"] = False}]
      221 GETIMPORT                        R31 K46 [Enum.AutomaticSize.Y]
      223 SETTABLEKS                       R31 R30 K27 ["AutomaticSize"]
      225 GETTABLEKS                       R31 R6 K28 ["BackgroundColor"]
      227 SETTABLEKS                       R31 R30 K28 ["BackgroundColor"]
      229 SETTABLEKS                       R21 R30 K29 ["Expansion"]
      231 SETTABLEKS                       R25 R30 K34 ["Items"]
      233 GETIMPORT                        R31 K48 [UDim.new]
      235 LOADN                            R32 1
      236 LOADN                            R33 -224
      237 CALL                             R31 2 1
      238 SETTABLEKS                       R31 R30 K37 ["LabelWidth"]
      240 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      242 CALL                             R31 1 1
      243 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      245 SETTABLEKS                       R26 R30 K38 ["OnChange"]
      247 SETTABLEKS                       R22 R30 K39 ["OnExpansionChange"]
      249 GETIMPORT                        R31 K51 [UDim2.fromScale]
      251 LOADK                            R32 K52 [0.5]
      252 LOADK                            R33 K52 [0.5]
      253 CALL                             R31 2 1
      254 SETTABLEKS                       R31 R30 K40 ["Position"]
      256 GETIMPORT                        R31 K51 [UDim2.fromScale]
      258 LOADN                            R32 1
      259 LOADN                            R33 0
      260 CALL                             R31 2 1
      261 SETTABLEKS                       R31 R30 K41 ["Size"]
      263 CALL                             R28 2 1
      264 SETTABLEKS                       R28 R27 K53 ["GenerationAngleEntry"]
      266 GETUPVAL                         R28 0
      267 GETTABLEKS                       R28 R28 K22 ["createElement"]
      269 GETUPVAL                         R29 17
      270 DUPTABLE                         R30 K54 [{"BackgroundColor", "Size", "LayoutOrder"}]
      271 GETTABLEKS                       R31 R6 K28 ["BackgroundColor"]
      273 SETTABLEKS                       R31 R30 K28 ["BackgroundColor"]
      275 GETIMPORT                        R31 K55 [UDim2.new]
      277 LOADN                            R32 1
      278 LOADN                            R33 0
      279 LOADN                            R34 0
      280 LOADN                            R35 32
      281 CALL                             R31 4 1
      282 SETTABLEKS                       R31 R30 K41 ["Size"]
      284 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      286 CALL                             R31 1 1
      287 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      289 DUPTABLE                         R31 K59 [{"Padding", "CancelButton", "SetGenerationAngleButton"}]
      290 GETUPVAL                         R32 0
      291 GETTABLEKS                       R32 R32 K22 ["createElement"]
      293 LOADK                            R33 K60 ["UIPadding"]
      294 DUPTABLE                         R34 K63 [{"PaddingLeft", "PaddingRight"}]
      295 GETIMPORT                        R35 K48 [UDim.new]
      297 LOADN                            R36 0
      298 LOADN                            R37 10
      299 CALL                             R35 2 1
      300 SETTABLEKS                       R35 R34 K61 ["PaddingLeft"]
      302 GETIMPORT                        R35 K48 [UDim.new]
      304 LOADN                            R36 0
      305 LOADN                            R37 10
      306 CALL                             R35 2 1
      307 SETTABLEKS                       R35 R34 K62 ["PaddingRight"]
      309 CALL                             R32 2 1
      310 SETTABLEKS                       R32 R31 K56 ["Padding"]
      312 JUMPIFNOT                        R15 ; [+44]
      313 GETUPVAL                         R32 0
      314 GETTABLEKS                       R32 R32 K22 ["createElement"]
      316 GETUPVAL                         R33 18
      317 DUPTABLE                         R34 K72 [{["LayoutOrder"] = 1, ["AnchorPoint"], ["LeftIcon"] = "rbxasset://textures/StudioSharedUI/Undo.png", ["Position"], ["Size"], ["Style"] = "EntryAreaCancelAngleButton", ["OnClick"], ["Text"]}]
      318 GETIMPORT                        R35 K74 [Vector2.new]
      320 LOADN                            R36 0
      321 LOADK                            R37 K52 [0.5]
      322 CALL                             R35 2 1
      323 SETTABLEKS                       R35 R34 K65 ["AnchorPoint"]
      325 GETIMPORT                        R35 K51 [UDim2.fromScale]
      327 LOADN                            R36 0
      328 LOADK                            R37 K52 [0.5]
      329 CALL                             R35 2 1
      330 SETTABLEKS                       R35 R34 K40 ["Position"]
      332 GETIMPORT                        R35 K76 [UDim2.fromOffset]
      334 LOADN                            R36 100
      335 LOADN                            R37 32
      336 CALL                             R35 2 1
      337 SETTABLEKS                       R35 R34 K41 ["Size"]
      339 NEWCLOSURE                       R35 P4
      340 CAPTURE                          VAL R10
      341 CAPTURE                          VAL R3
      342 CAPTURE                          UPVAL U11
      343 CAPTURE                          VAL R1
      344 CAPTURE                          UPVAL U19
      345 CAPTURE                          VAL R9
      346 SETTABLEKS                       R35 R34 K70 ["OnClick"]
      348 LOADK                            R37 K77 ["General"]
      349 LOADK                            R38 K78 ["Cancel"]
      350 NAMECALL                         R35 R5 K79 ["getText"]
      352 CALL                             R35 3 1
      353 SETTABLEKS                       R35 R34 K71 ["Text"]
      355 CALL                             R32 2 1
      356 JUMP                             ; [+1]
      357 LOADNIL                          R32
      358 SETTABLEKS                       R32 R31 K57 ["CancelButton"]
      360 GETUPVAL                         R32 0
      361 GETTABLEKS                       R32 R32 K22 ["createElement"]
      363 GETUPVAL                         R33 18
      364 DUPTABLE                         R34 K83 [{["LayoutOrder"] = 2, ["AnchorPoint"], ["OnClick"], ["Position"], ["Size"], ["Style"] = "Primary", ["Text"], ["TooltipText"]}]
      365 GETIMPORT                        R35 K74 [Vector2.new]
      367 LOADN                            R36 1
      368 LOADK                            R37 K52 [0.5]
      369 CALL                             R35 2 1
      370 SETTABLEKS                       R35 R34 K65 ["AnchorPoint"]
      372 NEWCLOSURE                       R35 P5
      373 CAPTURE                          REF R11
      374 CAPTURE                          REF R12
      375 CAPTURE                          REF R13
      376 CAPTURE                          VAL R3
      377 CAPTURE                          VAL R1
      378 CAPTURE                          UPVAL U19
      379 CAPTURE                          VAL R9
      380 CAPTURE                          UPVAL U11
      381 SETTABLEKS                       R35 R34 K70 ["OnClick"]
      383 GETIMPORT                        R35 K51 [UDim2.fromScale]
      385 LOADN                            R36 1
      386 LOADK                            R37 K52 [0.5]
      387 CALL                             R35 2 1
      388 SETTABLEKS                       R35 R34 K40 ["Position"]
      390 GETIMPORT                        R35 K55 [UDim2.new]
      392 LOADN                            R36 0
      393 LOADN                            R37 180
      394 LOADN                            R38 0
      395 LOADN                            R39 30
      396 CALL                             R35 4 1
      397 SETTABLEKS                       R35 R34 K41 ["Size"]
      399 LOADK                            R37 K2 ["EntryArea"]
      400 LOADK                            R38 K84 ["SetGenerationAngle"]
      401 NAMECALL                         R35 R5 K79 ["getText"]
      403 CALL                             R35 3 1
      404 SETTABLEKS                       R35 R34 K71 ["Text"]
      406 LOADK                            R37 K2 ["EntryArea"]
      407 LOADK                            R38 K85 ["SetGenerationAngleTooltip"]
      408 NAMECALL                         R35 R5 K79 ["getText"]
      410 CALL                             R35 3 1
      411 SETTABLEKS                       R35 R34 K82 ["TooltipText"]
      413 CALL                             R32 2 1
      414 SETTABLEKS                       R32 R31 K58 ["SetGenerationAngleButton"]
      416 CALL                             R28 3 1
      417 SETTABLEKS                       R28 R27 K86 ["AngleButtons"]
      419 JUMP                             ; [+189]
      420 JUMPIFNOT                        R19 ; [+188]
      421 JUMPIFNOT                        R16 ; [+187]
      422 GETUPVAL                         R28 0
      423 GETTABLEKS                       R28 R28 K22 ["createElement"]
      425 GETUPVAL                         R29 20
      426 DUPTABLE                         R30 K87 [{"LayoutOrder"}]
      427 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      429 CALL                             R31 1 1
      430 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      432 CALL                             R28 2 1
      433 SETTABLEKS                       R28 R27 K88 ["PromptEntry"]
      435 GETUPVAL                         R28 21
      436 CALL                             R28 0 1
      437 JUMPIFNOT                        R28 ; [+13]
      438 GETUPVAL                         R28 0
      439 GETTABLEKS                       R28 R28 K22 ["createElement"]
      441 GETUPVAL                         R29 22
      442 DUPTABLE                         R30 K87 [{"LayoutOrder"}]
      443 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      445 CALL                             R31 1 1
      446 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      448 CALL                             R28 2 1
      449 SETTABLEKS                       R28 R27 K89 ["ArtStyle"]
      451 GETUPVAL                         R28 0
      452 GETTABLEKS                       R28 R28 K22 ["createElement"]
      454 GETUPVAL                         R29 23
      455 DUPTABLE                         R30 K87 [{"LayoutOrder"}]
      456 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      458 CALL                             R31 1 1
      459 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      461 CALL                             R28 2 1
      462 SETTABLEKS                       R28 R27 K90 ["Options"]
      464 JUMP                             ; [+144]
      465 JUMPIFNOT                        R20 ; [+143]
      466 GETUPVAL                         R28 0
      467 GETTABLEKS                       R28 R28 K22 ["createElement"]
      469 GETUPVAL                         R29 24
      470 DUPTABLE                         R30 K91 [{"LayoutOrder", "PreviewData"}]
      471 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      473 CALL                             R31 1 1
      474 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      476 SETTABLEKS                       R17 R30 K14 ["PreviewData"]
      478 CALL                             R28 2 1
      479 SETTABLEKS                       R28 R27 K92 ["PreviewArea"]
      481 JUMP                             ; [+127]
      482 JUMPIF                           R19 ; [+50]
      483 JUMPIF                           R20 ; [+49]
      484 GETUPVAL                         R28 0
      485 GETTABLEKS                       R28 R28 K22 ["createElement"]
      487 GETUPVAL                         R29 25
      488 DUPTABLE                         R30 K97 [{["AutomaticSize"], ["AnchorPoint"], ["Size"], ["Position"], ["RichText"] = True, ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      489 GETIMPORT                        R31 K99 [Enum.AutomaticSize.XY]
      491 SETTABLEKS                       R31 R30 K27 ["AutomaticSize"]
      493 GETIMPORT                        R31 K74 [Vector2.new]
      495 LOADK                            R32 K52 [0.5]
      496 LOADK                            R33 K52 [0.5]
      497 CALL                             R31 2 1
      498 SETTABLEKS                       R31 R30 K65 ["AnchorPoint"]
      500 GETIMPORT                        R31 K76 [UDim2.fromOffset]
      502 LOADN                            R32 150
      503 LOADN                            R33 100
      504 CALL                             R31 2 1
      505 SETTABLEKS                       R31 R30 K41 ["Size"]
      507 GETIMPORT                        R31 K51 [UDim2.fromScale]
      509 LOADK                            R32 K52 [0.5]
      510 LOADK                            R33 K52 [0.5]
      511 CALL                             R31 2 1
      512 SETTABLEKS                       R31 R30 K40 ["Position"]
      514 LOADK                            R33 K2 ["EntryArea"]
      515 LOADK                            R34 K100 ["NoSelectionMessage"]
      516 NAMECALL                         R31 R5 K79 ["getText"]
      518 CALL                             R31 3 1
      519 SETTABLEKS                       R31 R30 K71 ["Text"]
      521 GETIMPORT                        R31 K102 [Enum.TextXAlignment.Center]
      523 SETTABLEKS                       R31 R30 K95 ["TextXAlignment"]
      525 GETIMPORT                        R31 K103 [Enum.TextYAlignment.Center]
      527 SETTABLEKS                       R31 R30 K96 ["TextYAlignment"]
      529 CALL                             R28 2 1
      530 SETTABLEKS                       R28 R27 K104 ["SelectText"]
      532 JUMP                             ; [+76]
      533 JUMPIFNOT                        R19 ; [+59]
      534 JUMPIF                           R20 ; [+58]
      535 GETUPVAL                         R28 0
      536 GETTABLEKS                       R28 R28 K22 ["createElement"]
      538 GETUPVAL                         R29 15
      539 DUPTABLE                         R30 K24 [{"LayoutOrder", "MeshParts"}]
      540 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      542 CALL                             R31 1 1
      543 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      545 SETTABLEKS                       R8 R30 K4 ["MeshParts"]
      547 CALL                             R28 2 1
      548 SETTABLEKS                       R28 R27 K26 ["ViewSelector"]
      550 GETUPVAL                         R28 0
      551 GETTABLEKS                       R28 R28 K22 ["createElement"]
      553 GETUPVAL                         R29 20
      554 DUPTABLE                         R30 K87 [{"LayoutOrder"}]
      555 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      557 CALL                             R31 1 1
      558 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      560 CALL                             R28 2 1
      561 SETTABLEKS                       R28 R27 K88 ["PromptEntry"]
      563 GETUPVAL                         R28 21
      564 CALL                             R28 0 1
      565 JUMPIFNOT                        R28 ; [+13]
      566 GETUPVAL                         R28 0
      567 GETTABLEKS                       R28 R28 K22 ["createElement"]
      569 GETUPVAL                         R29 22
      570 DUPTABLE                         R30 K87 [{"LayoutOrder"}]
      571 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      573 CALL                             R31 1 1
      574 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      576 CALL                             R28 2 1
      577 SETTABLEKS                       R28 R27 K89 ["ArtStyle"]
      579 GETUPVAL                         R28 0
      580 GETTABLEKS                       R28 R28 K22 ["createElement"]
      582 GETUPVAL                         R29 23
      583 DUPTABLE                         R30 K87 [{"LayoutOrder"}]
      584 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      586 CALL                             R31 1 1
      587 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      589 CALL                             R28 2 1
      590 SETTABLEKS                       R28 R27 K90 ["Options"]
      592 JUMP                             ; [+16]
      593 JUMPIFNOT                        R20 ; [+15]
      594 GETUPVAL                         R28 0
      595 GETTABLEKS                       R28 R28 K22 ["createElement"]
      597 GETUPVAL                         R29 24
      598 DUPTABLE                         R30 K91 [{"LayoutOrder", "PreviewData"}]
      599 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      601 CALL                             R31 1 1
      602 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      604 SETTABLEKS                       R17 R30 K14 ["PreviewData"]
      606 CALL                             R28 2 1
      607 SETTABLEKS                       R28 R27 K92 ["PreviewArea"]
      609 GETUPVAL                         R28 0
      610 GETTABLEKS                       R28 R28 K21 ["useMemo"]
      612 NEWCLOSURE                       R29 P6
      613 CAPTURE                          VAL R9
      614 CAPTURE                          VAL R2
      615 CAPTURE                          VAL R5
      616 NEWTABLE                         R30 0 3
      618 MOVE                             R31 R9
      619 GETTABLEKS                       R32 R2 K105 ["quota"]
      621 GETTABLEKS                       R33 R2 K106 ["total"]
      623 SETLIST                          R30 R31 3 [1]
      625 CALL                             R28 2 0
      626 DUPCLOSURE                       R28 K107 [PROTO_15]
      627 GETUPVAL                         R29 0
      628 GETTABLEKS                       R29 R29 K22 ["createElement"]
      630 GETUPVAL                         R30 17
      631 DUPTABLE                         R31 K109 [{["AutomaticSize"], ["BackgroundColor"], ["LayoutOrder"], ["Size"], ["Style"] = "Box"}]
      632 GETIMPORT                        R32 K46 [Enum.AutomaticSize.Y]
      634 SETTABLEKS                       R32 R31 K27 ["AutomaticSize"]
      636 GETTABLEKS                       R32 R6 K28 ["BackgroundColor"]
      638 SETTABLEKS                       R32 R31 K28 ["BackgroundColor"]
      640 GETTABLEKS                       R32 R0 K23 ["LayoutOrder"]
      642 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      644 GETIMPORT                        R32 K55 [UDim2.new]
      646 LOADN                            R33 1
      647 LOADN                            R34 0
      648 LOADN                            R35 0
      649 LOADN                            R36 200
      650 CALL                             R32 4 1
      651 SETTABLEKS                       R32 R31 K41 ["Size"]
      653 DUPTABLE                         R32 K112 [{"Alert", "List"}]
      654 LOADB                            R33 0
      655 JUMPIFEQKNIL                     R18 ; [+41]
      657 GETUPVAL                         R33 0
      658 GETTABLEKS                       R33 R33 K22 ["createElement"]
      660 GETUPVAL                         R34 26
      661 DUPTABLE                         R35 K117 [{["Title"], ["Description"], ["Style"], ["ZIndex"] = 2, ["OnClose"]}]
      662 GETTABLEKS                       R36 R18 K118 ["title"]
      664 SETTABLEKS                       R36 R35 K113 ["Title"]
      666 GETTABLEKS                       R36 R18 K119 ["message"]
      668 SETTABLEKS                       R36 R35 K114 ["Description"]
      670 GETTABLEKS                       R37 R18 K120 ["errorType"]
      672 JUMPIFNOTEQKS                    R37 K121 ["warning"] ; [+3]
      674 LOADK                            R36 K122 ["Warning"]
      675 JUMP                             ; [+13]
      676 JUMPIFNOTEQKS                    R37 K123 ["error"] ; [+3]
      678 LOADK                            R36 K124 ["Error"]
      679 JUMP                             ; [+9]
      680 JUMPIFNOTEQKS                    R37 K125 ["info"] ; [+3]
      682 LOADK                            R36 K126 ["Info"]
      683 JUMP                             ; [+5]
      684 JUMPIFNOTEQKS                    R37 K127 ["success"] ; [+3]
      686 LOADK                            R36 K128 ["Success"]
      687 JUMP                             ; [+1]
      688 LOADK                            R36 K124 ["Error"]
      689 SETTABLEKS                       R36 R35 K68 ["Style"]
      691 NEWCLOSURE                       R36 P8
      692 CAPTURE                          VAL R2
      693 CAPTURE                          VAL R9
      694 SETTABLEKS                       R36 R35 K116 ["OnClose"]
      696 CALL                             R33 2 1
      697 SETTABLEKS                       R33 R32 K110 ["Alert"]
      699 GETUPVAL                         R33 0
      700 GETTABLEKS                       R33 R33 K22 ["createElement"]
      702 GETUPVAL                         R34 17
      703 DUPTABLE                         R35 K133 [{"HorizontalAlignment", "Layout", "VerticalAlignment", "Spacing", "Size"}]
      704 GETIMPORT                        R36 K134 [Enum.HorizontalAlignment.Center]
      706 SETTABLEKS                       R36 R35 K129 ["HorizontalAlignment"]
      708 GETIMPORT                        R36 K137 [Enum.FillDirection.Vertical]
      710 SETTABLEKS                       R36 R35 K130 ["Layout"]
      712 GETIMPORT                        R36 K138 [Enum.VerticalAlignment.Center]
      714 SETTABLEKS                       R36 R35 K131 ["VerticalAlignment"]
      716 GETUPVAL                         R37 8
      717 CALL                             R37 0 1
      718 JUMPIFNOT                        R37 ; [+2]
      719 LOADN                            R36 5
      720 JUMP                             ; [+1]
      721 LOADN                            R36 0
      722 SETTABLEKS                       R36 R35 K132 ["Spacing"]
      724 GETUPVAL                         R37 8
      725 CALL                             R37 0 1
      726 JUMPIFNOT                        R37 ; [+8]
      727 GETIMPORT                        R36 K55 [UDim2.new]
      729 LOADN                            R37 1
      730 LOADN                            R38 -10
      731 LOADN                            R39 1
      732 LOADN                            R40 0
      733 CALL                             R36 4 1
      734 JUMP                             ; [+1]
      735 LOADNIL                          R36
      736 SETTABLEKS                       R36 R35 K41 ["Size"]
      738 MOVE                             R36 R27
      739 CALL                             R33 3 1
      740 SETTABLEKS                       R33 R32 K111 ["List"]
      742 CALL                             R29 3 -1
      743 CLOSEUPVALS                      R11
      744 RETURN                           R29 -1

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
       87 GETTABLEKS                       R21 R15 K28 ["Tooltip"]
       89 GETTABLEKS                       R22 R2 K29 ["Style"]
       91 GETTABLEKS                       R22 R22 K30 ["Stylizer"]
       93 GETTABLEKS                       R23 R2 K31 ["Util"]
       95 GETTABLEKS                       R23 R23 K32 ["StyleModifier"]
       97 GETTABLEKS                       R24 R2 K31 ["Util"]
       99 GETTABLEKS                       R24 R24 K33 ["LayoutOrderIterator"]
      101 GETIMPORT                        R25 K5 [require]
      103 GETTABLEKS                       R26 R0 K9 ["Src"]
      105 GETTABLEKS                       R26 R26 K31 ["Util"]
      107 GETTABLEKS                       R26 R26 K34 ["Constants"]
      109 CALL                             R25 1 1
      110 GETIMPORT                        R26 K5 [require]
      112 GETTABLEKS                       R27 R0 K9 ["Src"]
      114 GETTABLEKS                       R27 R27 K31 ["Util"]
      116 GETTABLEKS                       R27 R27 K35 ["createHashFromMeshParts"]
      118 CALL                             R26 1 1
      119 GETIMPORT                        R27 K5 [require]
      121 GETTABLEKS                       R28 R0 K9 ["Src"]
      123 GETTABLEKS                       R28 R28 K31 ["Util"]
      125 GETTABLEKS                       R28 R28 K36 ["GenerationAnglesContext"]
      127 CALL                             R27 1 1
      128 GETIMPORT                        R28 K5 [require]
      130 GETTABLEKS                       R29 R0 K9 ["Src"]
      132 GETTABLEKS                       R29 R29 K31 ["Util"]
      134 GETTABLEKS                       R29 R29 K37 ["OptionsContext"]
      136 CALL                             R28 1 1
      137 GETIMPORT                        R29 K5 [require]
      139 GETTABLEKS                       R30 R0 K9 ["Src"]
      141 GETTABLEKS                       R30 R30 K31 ["Util"]
      143 GETTABLEKS                       R30 R30 K38 ["PreviewsContext"]
      145 CALL                             R29 1 1
      146 GETIMPORT                        R30 K5 [require]
      148 GETTABLEKS                       R31 R0 K9 ["Src"]
      150 GETTABLEKS                       R31 R31 K39 ["Flags"]
      152 GETTABLEKS                       R31 R31 K40 ["getFFlagTextureGeneratorArtStyle"]
      154 CALL                             R30 1 1
      155 GETIMPORT                        R31 K5 [require]
      157 GETTABLEKS                       R32 R0 K9 ["Src"]
      159 GETTABLEKS                       R32 R32 K39 ["Flags"]
      161 GETTABLEKS                       R32 R32 K41 ["getFFlagTextureGeneratorMultiStagePreview"]
      163 CALL                             R31 1 1
      164 GETIMPORT                        R32 K5 [require]
      166 GETTABLEKS                       R33 R0 K9 ["Src"]
      168 GETTABLEKS                       R33 R33 K39 ["Flags"]
      170 GETTABLEKS                       R33 R33 K42 ["getFFlagTextureGeneratorBugFixes"]
      172 CALL                             R32 1 1
      173 DUPCLOSURE                       R33 K43 [PROTO_0]
      174 CAPTURE                          VAL R25
      175 DUPCLOSURE                       R34 K44 [PROTO_1]
      176 DUPCLOSURE                       R35 K45 [PROTO_2]
      177 DUPCLOSURE                       R36 K46 [PROTO_3]
      178 DUPCLOSURE                       R37 K47 [PROTO_4]
      179 DUPCLOSURE                       R38 K48 [PROTO_7]
      180 DUPCLOSURE                       R39 K49 [PROTO_17]
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R27
      183 CAPTURE                          VAL R29
      184 CAPTURE                          VAL R28
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R22
      188 CAPTURE                          VAL R24
      189 CAPTURE                          VAL R31
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R26
      192 CAPTURE                          VAL R32
      193 CAPTURE                          VAL R33
      194 CAPTURE                          VAL R38
      195 CAPTURE                          VAL R37
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R17
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R25
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R30
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R9
      206 CAPTURE                          VAL R20
      207 CAPTURE                          VAL R16
      208 RETURN                           R39 1
