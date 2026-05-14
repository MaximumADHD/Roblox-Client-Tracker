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
        1 LOADN                            R2 152
        2 JUMPIFNOTLE                      R2 R0 ; [+6]
        4 LOADN                            R2 104
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
       23 LOADN                            R3 152
       24 JUMPIFNOTLE                      R3 R2 ; [+6]
       26 LOADN                            R3 104
       27 JUMPIFLE                         R2 R3 ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 JUMPIFNOT                        R1 ; [+22]
       32 GETTABLEN                        R2 R0 2
       33 LOADB                            R1 0
       34 LOADN                            R3 152
       35 JUMPIFNOTLE                      R3 R2 ; [+6]
       37 LOADN                            R3 104
       38 JUMPIFLE                         R2 R3 ; [+2]
       40 LOADB                            R1 0 +1
       41 LOADB                            R1 1
       42 JUMPIFNOT                        R1 ; [+11]
       43 GETTABLEN                        R2 R0 3
       44 LOADB                            R1 0
       45 LOADN                            R3 152
       46 JUMPIFNOTLE                      R3 R2 ; [+6]
       48 LOADN                            R3 104
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
        2 DUPTABLE                         R3 K3 [{"Id", "Expandable", "Children"}]
        3 LOADK                            R4 K4 ["Generation Angle"]
        4 SETTABLEKS                       R4 R3 K0 ["Id"]
        6 LOADB                            R4 0
        7 SETTABLEKS                       R4 R3 K1 ["Expandable"]
        9 NEWTABLE                         R4 0 1
       11 DUPTABLE                         R5 K8 [{"Id", "Label", "Validate", "Schema"}]
       12 LOADK                            R6 K9 ["GenerationAngle"]
       13 SETTABLEKS                       R6 R5 K0 ["Id"]
       15 LOADK                            R8 K10 ["Options"]
       16 LOADK                            R9 K11 ["Rotation"]
       17 NAMECALL                         R6 R0 K12 ["getText"]
       19 CALL                             R6 3 1
       20 SETTABLEKS                       R6 R5 K5 ["Label"]
       22 GETTABLEKS                       R6 R1 K11 ["Rotation"]
       24 SETTABLEKS                       R6 R5 K6 ["Validate"]
       26 DUPTABLE                         R6 K17 [{"Type", "Components", "GetValue", "GetComponents"}]
       27 LOADK                            R7 K18 ["Vector"]
       28 SETTABLEKS                       R7 R6 K13 ["Type"]
       30 NEWTABLE                         R7 0 3
       32 LOADK                            R8 K19 ["X"]
       33 LOADK                            R9 K20 ["Y"]
       34 LOADK                            R10 K21 ["Z"]
       35 SETLIST                          R7 R8 3 [1]
       37 SETTABLEKS                       R7 R6 K14 ["Components"]
       39 DUPCLOSURE                       R7 K22 [PROTO_5]
       40 SETTABLEKS                       R7 R6 K15 ["GetValue"]
       42 DUPCLOSURE                       R7 K23 [PROTO_6]
       43 SETTABLEKS                       R7 R6 K16 ["GetComponents"]
       45 SETTABLEKS                       R6 R5 K7 ["Schema"]
       47 SETLIST                          R4 R5 1 [1]
       49 SETTABLEKS                       R4 R3 K2 ["Children"]
       51 SETLIST                          R2 R3 1 [1]
       53 RETURN                           R2 1

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
       41 LOADN                            R3 152
       42 JUMPIFNOTLE                      R3 R2 ; [+6]
       44 LOADN                            R3 104
       45 JUMPIFLE                         R2 R3 ; [+2]
       47 LOADB                            R1 0 +1
       48 LOADB                            R1 1
       49 JUMPIFNOT                        R1 ; [+24]
       50 GETTABLEKS                       R2 R0 K4 ["Y"]
       52 LOADB                            R1 0
       53 LOADN                            R3 152
       54 JUMPIFNOTLE                      R3 R2 ; [+6]
       56 LOADN                            R3 104
       57 JUMPIFLE                         R2 R3 ; [+2]
       59 LOADB                            R1 0 +1
       60 LOADB                            R1 1
       61 JUMPIFNOT                        R1 ; [+12]
       62 GETTABLEKS                       R2 R0 K5 ["Z"]
       64 LOADB                            R1 0
       65 LOADN                            R3 152
       66 JUMPIFNOTLE                      R3 R2 ; [+6]
       68 LOADN                            R3 104
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
      197 JUMPIFNOT                        R28 ; [+311]
      198 JUMPIF                           R20 ; [+293]
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
      214 JUMPIFNOT                        R19 ; [+232]
      215 JUMPIF                           R16 ; [+231]
      216 GETUPVAL                         R28 0
      217 GETTABLEKS                       R28 R28 K22 ["createElement"]
      219 GETUPVAL                         R29 16
      220 DUPTABLE                         R30 K40 [{"AutomaticSize", "BackgroundColor", "Expansion", "ExpandByDefault", "Expandable", "Items", "LabelHeight", "LabelWidth", "LayoutOrder", "OnChange", "OnExpansionChange", "Position", "Size", "UseScrollingFrame"}]
      221 GETIMPORT                        R31 K43 [Enum.AutomaticSize.Y]
      223 SETTABLEKS                       R31 R30 K27 ["AutomaticSize"]
      225 GETTABLEKS                       R31 R6 K28 ["BackgroundColor"]
      227 SETTABLEKS                       R31 R30 K28 ["BackgroundColor"]
      229 SETTABLEKS                       R21 R30 K29 ["Expansion"]
      231 LOADB                            R31 1
      232 SETTABLEKS                       R31 R30 K30 ["ExpandByDefault"]
      234 LOADB                            R31 0
      235 SETTABLEKS                       R31 R30 K31 ["Expandable"]
      237 SETTABLEKS                       R25 R30 K32 ["Items"]
      239 LOADN                            R31 24
      240 SETTABLEKS                       R31 R30 K33 ["LabelHeight"]
      242 GETIMPORT                        R31 K45 [UDim.new]
      244 LOADN                            R32 1
      245 LOADN                            R33 32
      246 CALL                             R31 2 1
      247 SETTABLEKS                       R31 R30 K34 ["LabelWidth"]
      249 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      251 CALL                             R31 1 1
      252 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      254 SETTABLEKS                       R26 R30 K35 ["OnChange"]
      256 SETTABLEKS                       R22 R30 K36 ["OnExpansionChange"]
      258 GETIMPORT                        R31 K48 [UDim2.fromScale]
      260 LOADK                            R32 K49 [0.5]
      261 LOADK                            R33 K49 [0.5]
      262 CALL                             R31 2 1
      263 SETTABLEKS                       R31 R30 K37 ["Position"]
      265 GETIMPORT                        R31 K48 [UDim2.fromScale]
      267 LOADN                            R32 1
      268 LOADN                            R33 0
      269 CALL                             R31 2 1
      270 SETTABLEKS                       R31 R30 K38 ["Size"]
      272 LOADB                            R31 0
      273 SETTABLEKS                       R31 R30 K39 ["UseScrollingFrame"]
      275 CALL                             R28 2 1
      276 SETTABLEKS                       R28 R27 K50 ["GenerationAngleEntry"]
      278 GETUPVAL                         R28 0
      279 GETTABLEKS                       R28 R28 K22 ["createElement"]
      281 GETUPVAL                         R29 17
      282 DUPTABLE                         R30 K51 [{"BackgroundColor", "Size", "LayoutOrder"}]
      283 GETTABLEKS                       R31 R6 K28 ["BackgroundColor"]
      285 SETTABLEKS                       R31 R30 K28 ["BackgroundColor"]
      287 GETIMPORT                        R31 K52 [UDim2.new]
      289 LOADN                            R32 1
      290 LOADN                            R33 0
      291 LOADN                            R34 0
      292 LOADN                            R35 32
      293 CALL                             R31 4 1
      294 SETTABLEKS                       R31 R30 K38 ["Size"]
      296 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      298 CALL                             R31 1 1
      299 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      301 DUPTABLE                         R31 K56 [{"Padding", "CancelButton", "SetGenerationAngleButton"}]
      302 GETUPVAL                         R32 0
      303 GETTABLEKS                       R32 R32 K22 ["createElement"]
      305 LOADK                            R33 K57 ["UIPadding"]
      306 DUPTABLE                         R34 K60 [{"PaddingLeft", "PaddingRight"}]
      307 GETIMPORT                        R35 K45 [UDim.new]
      309 LOADN                            R36 0
      310 LOADN                            R37 10
      311 CALL                             R35 2 1
      312 SETTABLEKS                       R35 R34 K58 ["PaddingLeft"]
      314 GETIMPORT                        R35 K45 [UDim.new]
      316 LOADN                            R36 0
      317 LOADN                            R37 10
      318 CALL                             R35 2 1
      319 SETTABLEKS                       R35 R34 K59 ["PaddingRight"]
      321 CALL                             R32 2 1
      322 SETTABLEKS                       R32 R31 K53 ["Padding"]
      324 JUMPIFNOT                        R15 ; [+53]
      325 GETUPVAL                         R32 0
      326 GETTABLEKS                       R32 R32 K22 ["createElement"]
      328 GETUPVAL                         R33 18
      329 DUPTABLE                         R34 K66 [{"LayoutOrder", "AnchorPoint", "LeftIcon", "Position", "Size", "Style", "OnClick", "Text"}]
      330 LOADN                            R35 1
      331 SETTABLEKS                       R35 R34 K23 ["LayoutOrder"]
      333 GETIMPORT                        R35 K68 [Vector2.new]
      335 LOADN                            R36 0
      336 LOADK                            R37 K49 [0.5]
      337 CALL                             R35 2 1
      338 SETTABLEKS                       R35 R34 K61 ["AnchorPoint"]
      340 LOADK                            R35 K69 ["rbxasset://textures/StudioSharedUI/Undo.png"]
      341 SETTABLEKS                       R35 R34 K62 ["LeftIcon"]
      343 GETIMPORT                        R35 K48 [UDim2.fromScale]
      345 LOADN                            R36 0
      346 LOADK                            R37 K49 [0.5]
      347 CALL                             R35 2 1
      348 SETTABLEKS                       R35 R34 K37 ["Position"]
      350 GETIMPORT                        R35 K71 [UDim2.fromOffset]
      352 LOADN                            R36 100
      353 LOADN                            R37 32
      354 CALL                             R35 2 1
      355 SETTABLEKS                       R35 R34 K38 ["Size"]
      357 LOADK                            R35 K72 ["EntryAreaCancelAngleButton"]
      358 SETTABLEKS                       R35 R34 K63 ["Style"]
      360 NEWCLOSURE                       R35 P4
      361 CAPTURE                          VAL R10
      362 CAPTURE                          VAL R3
      363 CAPTURE                          UPVAL U11
      364 CAPTURE                          VAL R1
      365 CAPTURE                          UPVAL U19
      366 CAPTURE                          VAL R9
      367 SETTABLEKS                       R35 R34 K64 ["OnClick"]
      369 LOADK                            R37 K73 ["General"]
      370 LOADK                            R38 K74 ["Cancel"]
      371 NAMECALL                         R35 R5 K75 ["getText"]
      373 CALL                             R35 3 1
      374 SETTABLEKS                       R35 R34 K65 ["Text"]
      376 CALL                             R32 2 1
      377 JUMP                             ; [+1]
      378 LOADNIL                          R32
      379 SETTABLEKS                       R32 R31 K54 ["CancelButton"]
      381 GETUPVAL                         R32 0
      382 GETTABLEKS                       R32 R32 K22 ["createElement"]
      384 GETUPVAL                         R33 18
      385 DUPTABLE                         R34 K77 [{"LayoutOrder", "AnchorPoint", "OnClick", "Position", "Size", "Style", "Text", "TooltipText"}]
      386 LOADN                            R35 2
      387 SETTABLEKS                       R35 R34 K23 ["LayoutOrder"]
      389 GETIMPORT                        R35 K68 [Vector2.new]
      391 LOADN                            R36 1
      392 LOADK                            R37 K49 [0.5]
      393 CALL                             R35 2 1
      394 SETTABLEKS                       R35 R34 K61 ["AnchorPoint"]
      396 NEWCLOSURE                       R35 P5
      397 CAPTURE                          REF R11
      398 CAPTURE                          REF R12
      399 CAPTURE                          REF R13
      400 CAPTURE                          VAL R3
      401 CAPTURE                          VAL R1
      402 CAPTURE                          UPVAL U19
      403 CAPTURE                          VAL R9
      404 CAPTURE                          UPVAL U11
      405 SETTABLEKS                       R35 R34 K64 ["OnClick"]
      407 GETIMPORT                        R35 K48 [UDim2.fromScale]
      409 LOADN                            R36 1
      410 LOADK                            R37 K49 [0.5]
      411 CALL                             R35 2 1
      412 SETTABLEKS                       R35 R34 K37 ["Position"]
      414 GETIMPORT                        R35 K52 [UDim2.new]
      416 LOADN                            R36 0
      417 LOADN                            R37 180
      418 LOADN                            R38 0
      419 LOADN                            R39 30
      420 CALL                             R35 4 1
      421 SETTABLEKS                       R35 R34 K38 ["Size"]
      423 LOADK                            R35 K78 ["Primary"]
      424 SETTABLEKS                       R35 R34 K63 ["Style"]
      426 LOADK                            R37 K2 ["EntryArea"]
      427 LOADK                            R38 K79 ["SetGenerationAngle"]
      428 NAMECALL                         R35 R5 K75 ["getText"]
      430 CALL                             R35 3 1
      431 SETTABLEKS                       R35 R34 K65 ["Text"]
      433 LOADK                            R37 K2 ["EntryArea"]
      434 LOADK                            R38 K80 ["SetGenerationAngleTooltip"]
      435 NAMECALL                         R35 R5 K75 ["getText"]
      437 CALL                             R35 3 1
      438 SETTABLEKS                       R35 R34 K76 ["TooltipText"]
      440 CALL                             R32 2 1
      441 SETTABLEKS                       R32 R31 K55 ["SetGenerationAngleButton"]
      443 CALL                             R28 3 1
      444 SETTABLEKS                       R28 R27 K81 ["AngleButtons"]
      446 JUMP                             ; [+195]
      447 JUMPIFNOT                        R19 ; [+194]
      448 JUMPIFNOT                        R16 ; [+193]
      449 GETUPVAL                         R28 0
      450 GETTABLEKS                       R28 R28 K22 ["createElement"]
      452 GETUPVAL                         R29 20
      453 DUPTABLE                         R30 K82 [{"LayoutOrder"}]
      454 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      456 CALL                             R31 1 1
      457 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      459 CALL                             R28 2 1
      460 SETTABLEKS                       R28 R27 K83 ["PromptEntry"]
      462 GETUPVAL                         R28 21
      463 CALL                             R28 0 1
      464 JUMPIFNOT                        R28 ; [+13]
      465 GETUPVAL                         R28 0
      466 GETTABLEKS                       R28 R28 K22 ["createElement"]
      468 GETUPVAL                         R29 22
      469 DUPTABLE                         R30 K82 [{"LayoutOrder"}]
      470 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      472 CALL                             R31 1 1
      473 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      475 CALL                             R28 2 1
      476 SETTABLEKS                       R28 R27 K84 ["ArtStyle"]
      478 GETUPVAL                         R28 0
      479 GETTABLEKS                       R28 R28 K22 ["createElement"]
      481 GETUPVAL                         R29 23
      482 DUPTABLE                         R30 K82 [{"LayoutOrder"}]
      483 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      485 CALL                             R31 1 1
      486 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      488 CALL                             R28 2 1
      489 SETTABLEKS                       R28 R27 K85 ["Options"]
      491 JUMP                             ; [+150]
      492 JUMPIFNOT                        R20 ; [+149]
      493 GETUPVAL                         R28 0
      494 GETTABLEKS                       R28 R28 K22 ["createElement"]
      496 GETUPVAL                         R29 24
      497 DUPTABLE                         R30 K86 [{"LayoutOrder", "PreviewData"}]
      498 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      500 CALL                             R31 1 1
      501 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      503 SETTABLEKS                       R17 R30 K14 ["PreviewData"]
      505 CALL                             R28 2 1
      506 SETTABLEKS                       R28 R27 K87 ["PreviewArea"]
      508 JUMP                             ; [+133]
      509 JUMPIF                           R19 ; [+56]
      510 JUMPIF                           R20 ; [+55]
      511 GETUPVAL                         R28 0
      512 GETTABLEKS                       R28 R28 K22 ["createElement"]
      514 GETUPVAL                         R29 25
      515 DUPTABLE                         R30 K92 [{"AutomaticSize", "AnchorPoint", "Size", "Position", "RichText", "Text", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      516 GETIMPORT                        R31 K94 [Enum.AutomaticSize.XY]
      518 SETTABLEKS                       R31 R30 K27 ["AutomaticSize"]
      520 GETIMPORT                        R31 K68 [Vector2.new]
      522 LOADK                            R32 K49 [0.5]
      523 LOADK                            R33 K49 [0.5]
      524 CALL                             R31 2 1
      525 SETTABLEKS                       R31 R30 K61 ["AnchorPoint"]
      527 GETIMPORT                        R31 K71 [UDim2.fromOffset]
      529 LOADN                            R32 150
      530 LOADN                            R33 100
      531 CALL                             R31 2 1
      532 SETTABLEKS                       R31 R30 K38 ["Size"]
      534 GETIMPORT                        R31 K48 [UDim2.fromScale]
      536 LOADK                            R32 K49 [0.5]
      537 LOADK                            R33 K49 [0.5]
      538 CALL                             R31 2 1
      539 SETTABLEKS                       R31 R30 K37 ["Position"]
      541 LOADB                            R31 1
      542 SETTABLEKS                       R31 R30 K88 ["RichText"]
      544 LOADK                            R33 K2 ["EntryArea"]
      545 LOADK                            R34 K95 ["NoSelectionMessage"]
      546 NAMECALL                         R31 R5 K75 ["getText"]
      548 CALL                             R31 3 1
      549 SETTABLEKS                       R31 R30 K65 ["Text"]
      551 LOADB                            R31 1
      552 SETTABLEKS                       R31 R30 K89 ["TextWrapped"]
      554 GETIMPORT                        R31 K97 [Enum.TextXAlignment.Center]
      556 SETTABLEKS                       R31 R30 K90 ["TextXAlignment"]
      558 GETIMPORT                        R31 K98 [Enum.TextYAlignment.Center]
      560 SETTABLEKS                       R31 R30 K91 ["TextYAlignment"]
      562 CALL                             R28 2 1
      563 SETTABLEKS                       R28 R27 K99 ["SelectText"]
      565 JUMP                             ; [+76]
      566 JUMPIFNOT                        R19 ; [+59]
      567 JUMPIF                           R20 ; [+58]
      568 GETUPVAL                         R28 0
      569 GETTABLEKS                       R28 R28 K22 ["createElement"]
      571 GETUPVAL                         R29 15
      572 DUPTABLE                         R30 K24 [{"LayoutOrder", "MeshParts"}]
      573 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      575 CALL                             R31 1 1
      576 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      578 SETTABLEKS                       R8 R30 K4 ["MeshParts"]
      580 CALL                             R28 2 1
      581 SETTABLEKS                       R28 R27 K26 ["ViewSelector"]
      583 GETUPVAL                         R28 0
      584 GETTABLEKS                       R28 R28 K22 ["createElement"]
      586 GETUPVAL                         R29 20
      587 DUPTABLE                         R30 K82 [{"LayoutOrder"}]
      588 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      590 CALL                             R31 1 1
      591 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      593 CALL                             R28 2 1
      594 SETTABLEKS                       R28 R27 K83 ["PromptEntry"]
      596 GETUPVAL                         R28 21
      597 CALL                             R28 0 1
      598 JUMPIFNOT                        R28 ; [+13]
      599 GETUPVAL                         R28 0
      600 GETTABLEKS                       R28 R28 K22 ["createElement"]
      602 GETUPVAL                         R29 22
      603 DUPTABLE                         R30 K82 [{"LayoutOrder"}]
      604 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      606 CALL                             R31 1 1
      607 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      609 CALL                             R28 2 1
      610 SETTABLEKS                       R28 R27 K84 ["ArtStyle"]
      612 GETUPVAL                         R28 0
      613 GETTABLEKS                       R28 R28 K22 ["createElement"]
      615 GETUPVAL                         R29 23
      616 DUPTABLE                         R30 K82 [{"LayoutOrder"}]
      617 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      619 CALL                             R31 1 1
      620 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      622 CALL                             R28 2 1
      623 SETTABLEKS                       R28 R27 K85 ["Options"]
      625 JUMP                             ; [+16]
      626 JUMPIFNOT                        R20 ; [+15]
      627 GETUPVAL                         R28 0
      628 GETTABLEKS                       R28 R28 K22 ["createElement"]
      630 GETUPVAL                         R29 24
      631 DUPTABLE                         R30 K86 [{"LayoutOrder", "PreviewData"}]
      632 NAMECALL                         R31 R7 K25 ["getNextOrder"]
      634 CALL                             R31 1 1
      635 SETTABLEKS                       R31 R30 K23 ["LayoutOrder"]
      637 SETTABLEKS                       R17 R30 K14 ["PreviewData"]
      639 CALL                             R28 2 1
      640 SETTABLEKS                       R28 R27 K87 ["PreviewArea"]
      642 GETUPVAL                         R28 0
      643 GETTABLEKS                       R28 R28 K21 ["useMemo"]
      645 NEWCLOSURE                       R29 P6
      646 CAPTURE                          VAL R9
      647 CAPTURE                          VAL R2
      648 CAPTURE                          VAL R5
      649 NEWTABLE                         R30 0 3
      651 MOVE                             R31 R9
      652 GETTABLEKS                       R32 R2 K100 ["quota"]
      654 GETTABLEKS                       R33 R2 K101 ["total"]
      656 SETLIST                          R30 R31 3 [1]
      658 CALL                             R28 2 0
      659 DUPCLOSURE                       R28 K102 [PROTO_15]
      660 GETUPVAL                         R29 0
      661 GETTABLEKS                       R29 R29 K22 ["createElement"]
      663 GETUPVAL                         R30 17
      664 DUPTABLE                         R31 K103 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "Size", "Style"}]
      665 GETIMPORT                        R32 K43 [Enum.AutomaticSize.Y]
      667 SETTABLEKS                       R32 R31 K27 ["AutomaticSize"]
      669 GETTABLEKS                       R32 R6 K28 ["BackgroundColor"]
      671 SETTABLEKS                       R32 R31 K28 ["BackgroundColor"]
      673 GETTABLEKS                       R32 R0 K23 ["LayoutOrder"]
      675 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      677 GETIMPORT                        R32 K52 [UDim2.new]
      679 LOADN                            R33 1
      680 LOADN                            R34 0
      681 LOADN                            R35 0
      682 LOADN                            R36 200
      683 CALL                             R32 4 1
      684 SETTABLEKS                       R32 R31 K38 ["Size"]
      686 LOADK                            R32 K104 ["Box"]
      687 SETTABLEKS                       R32 R31 K63 ["Style"]
      689 DUPTABLE                         R32 K107 [{"Alert", "List"}]
      690 LOADB                            R33 0
      691 JUMPIFEQKNIL                     R18 ; [+44]
      693 GETUPVAL                         R33 0
      694 GETTABLEKS                       R33 R33 K22 ["createElement"]
      696 GETUPVAL                         R34 26
      697 DUPTABLE                         R35 K112 [{"Title", "Description", "Style", "ZIndex", "OnClose"}]
      698 GETTABLEKS                       R36 R18 K113 ["title"]
      700 SETTABLEKS                       R36 R35 K108 ["Title"]
      702 GETTABLEKS                       R36 R18 K114 ["message"]
      704 SETTABLEKS                       R36 R35 K109 ["Description"]
      706 GETTABLEKS                       R37 R18 K115 ["errorType"]
      708 JUMPIFNOTEQKS                    R37 K116 ["warning"] ; [+3]
      710 LOADK                            R36 K117 ["Warning"]
      711 JUMP                             ; [+13]
      712 JUMPIFNOTEQKS                    R37 K118 ["error"] ; [+3]
      714 LOADK                            R36 K119 ["Error"]
      715 JUMP                             ; [+9]
      716 JUMPIFNOTEQKS                    R37 K120 ["info"] ; [+3]
      718 LOADK                            R36 K121 ["Info"]
      719 JUMP                             ; [+5]
      720 JUMPIFNOTEQKS                    R37 K122 ["success"] ; [+3]
      722 LOADK                            R36 K123 ["Success"]
      723 JUMP                             ; [+1]
      724 LOADK                            R36 K119 ["Error"]
      725 SETTABLEKS                       R36 R35 K63 ["Style"]
      727 LOADN                            R36 2
      728 SETTABLEKS                       R36 R35 K110 ["ZIndex"]
      730 NEWCLOSURE                       R36 P8
      731 CAPTURE                          VAL R2
      732 CAPTURE                          VAL R9
      733 SETTABLEKS                       R36 R35 K111 ["OnClose"]
      735 CALL                             R33 2 1
      736 SETTABLEKS                       R33 R32 K105 ["Alert"]
      738 GETUPVAL                         R33 0
      739 GETTABLEKS                       R33 R33 K22 ["createElement"]
      741 GETUPVAL                         R34 17
      742 DUPTABLE                         R35 K128 [{"HorizontalAlignment", "Layout", "VerticalAlignment", "Spacing", "Size"}]
      743 GETIMPORT                        R36 K129 [Enum.HorizontalAlignment.Center]
      745 SETTABLEKS                       R36 R35 K124 ["HorizontalAlignment"]
      747 GETIMPORT                        R36 K132 [Enum.FillDirection.Vertical]
      749 SETTABLEKS                       R36 R35 K125 ["Layout"]
      751 GETIMPORT                        R36 K133 [Enum.VerticalAlignment.Center]
      753 SETTABLEKS                       R36 R35 K126 ["VerticalAlignment"]
      755 GETUPVAL                         R37 8
      756 CALL                             R37 0 1
      757 JUMPIFNOT                        R37 ; [+2]
      758 LOADN                            R36 5
      759 JUMP                             ; [+1]
      760 LOADN                            R36 0
      761 SETTABLEKS                       R36 R35 K127 ["Spacing"]
      763 GETUPVAL                         R37 8
      764 CALL                             R37 0 1
      765 JUMPIFNOT                        R37 ; [+8]
      766 GETIMPORT                        R36 K52 [UDim2.new]
      768 LOADN                            R37 1
      769 LOADN                            R38 246
      770 LOADN                            R39 1
      771 LOADN                            R40 0
      772 CALL                             R36 4 1
      773 JUMP                             ; [+1]
      774 LOADNIL                          R36
      775 SETTABLEKS                       R36 R35 K38 ["Size"]
      777 MOVE                             R36 R27
      778 CALL                             R33 3 1
      779 SETTABLEKS                       R33 R32 K106 ["List"]
      781 CALL                             R29 3 -1
      782 CLOSEUPVALS                      R11
      783 RETURN                           R29 -1

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
