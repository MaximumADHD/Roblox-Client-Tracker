PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 GETIMPORT                        R1 K4 [tick]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K5 ["lastUpdate"]
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K6 ["changedSignalConnections"]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K7 ["refAzimuthRad"]
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K8 ["curAzimuthRad"]
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K9 ["minAzimuthAbsoluteRad"]
       28 LOADNIL                          R1
       29 SETTABLEKS                       R1 R0 K10 ["maxAzimuthAbsoluteRad"]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K11 ["useAzimuthLimits"]
       34 LOADNIL                          R1
       35 SETTABLEKS                       R1 R0 K12 ["curElevationRad"]
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K13 ["minElevationRad"]
       40 LOADNIL                          R1
       41 SETTABLEKS                       R1 R0 K14 ["maxElevationRad"]
       43 LOADNIL                          R1
       44 SETTABLEKS                       R1 R0 K15 ["curDistance"]
       46 LOADNIL                          R1
       47 SETTABLEKS                       R1 R0 K16 ["minDistance"]
       49 LOADNIL                          R1
       50 SETTABLEKS                       R1 R0 K17 ["maxDistance"]
       52 LOADN                            R1 1
       53 SETTABLEKS                       R1 R0 K18 ["gamepadDollySpeedMultiplier"]
       55 GETIMPORT                        R1 K4 [tick]
       57 CALL                             R1 0 1
       58 SETTABLEKS                       R1 R0 K19 ["lastUserPanCamera"]
       60 NEWTABLE                         R1 0 0
       62 SETTABLEKS                       R1 R0 K20 ["externalProperties"]
       64 GETTABLEKS                       R1 R0 K20 ["externalProperties"]
       66 LOADN                            R2 25
       67 SETTABLEKS                       R2 R1 K21 ["InitialDistance"]
       69 GETTABLEKS                       R1 R0 K20 ["externalProperties"]
       71 LOADN                            R2 10
       72 SETTABLEKS                       R2 R1 K22 ["MinDistance"]
       74 GETTABLEKS                       R1 R0 K20 ["externalProperties"]
       76 LOADN                            R2 100
       77 SETTABLEKS                       R2 R1 K23 ["MaxDistance"]
       79 GETTABLEKS                       R1 R0 K20 ["externalProperties"]
       81 LOADN                            R2 35
       82 SETTABLEKS                       R2 R1 K24 ["InitialElevation"]
       84 GETTABLEKS                       R1 R0 K20 ["externalProperties"]
       86 LOADN                            R2 35
       87 SETTABLEKS                       R2 R1 K25 ["MinElevation"]
       89 GETTABLEKS                       R1 R0 K20 ["externalProperties"]
       91 LOADN                            R2 35
       92 SETTABLEKS                       R2 R1 K26 ["MaxElevation"]
       94 GETTABLEKS                       R1 R0 K20 ["externalProperties"]
       96 LOADN                            R2 -45
       97 SETTABLEKS                       R2 R1 K27 ["ReferenceAzimuth"]
       99 GETTABLEKS                       R1 R0 K20 ["externalProperties"]
      101 LOADN                            R2 90
      102 SETTABLEKS                       R2 R1 K28 ["CWAzimuthTravel"]
      104 GETTABLEKS                       R1 R0 K20 ["externalProperties"]
      106 LOADN                            R2 90
      107 SETTABLEKS                       R2 R1 K29 ["CCWAzimuthTravel"]
      109 GETTABLEKS                       R1 R0 K20 ["externalProperties"]
      111 LOADB                            R2 0
      112 SETTABLEKS                       R2 R1 K30 ["UseAzimuthLimits"]
      114 NAMECALL                         R1 R0 K31 ["LoadNumberValueParameters"]
      116 CALL                             R1 1 0
      117 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["externalProperties"]
        3 GETUPVAL                         R2 1
        4 SETTABLE                         R0 R1 R2
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R4 K1 [script]
        2 MOVE                             R6 R1
        3 NAMECALL                         R4 R4 K2 ["FindFirstChild"]
        5 CALL                             R4 2 1
        6 JUMPIFNOT                        R4 ; [+11]
        7 MOVE                             R7 R2
        8 NAMECALL                         R5 R4 K3 ["IsA"]
       10 CALL                             R5 2 1
       11 JUMPIFNOT                        R5 ; [+6]
       12 GETTABLEKS                       R5 R0 K4 ["externalProperties"]
       14 GETTABLEKS                       R6 R4 K5 ["Value"]
       16 SETTABLE                         R6 R5 R1
       17 JUMP                             ; [+23]
       18 GETTABLEKS                       R6 R0 K4 ["externalProperties"]
       20 GETTABLE                         R5 R6 R1
       21 JUMPIFEQKNIL                     R5 ; [+18]
       23 GETIMPORT                        R5 K8 [Instance.new]
       25 MOVE                             R6 R2
       26 CALL                             R5 1 1
       27 MOVE                             R4 R5
       28 SETTABLEKS                       R1 R4 K9 ["Name"]
       30 GETIMPORT                        R5 K1 [script]
       32 SETTABLEKS                       R5 R4 K10 ["Parent"]
       34 GETTABLEKS                       R6 R0 K4 ["externalProperties"]
       36 GETTABLE                         R5 R6 R1
       37 SETTABLEKS                       R5 R4 K5 ["Value"]
       39 JUMP                             ; [+1]
       40 RETURN                           R0 0
       41 JUMPIFNOT                        R3 ; [+22]
       42 GETTABLEKS                       R6 R0 K11 ["changedSignalConnections"]
       44 GETTABLE                         R5 R6 R1
       45 JUMPIFNOT                        R5 ; [+6]
       46 GETTABLEKS                       R6 R0 K11 ["changedSignalConnections"]
       48 GETTABLE                         R5 R6 R1
       49 NAMECALL                         R5 R5 K12 ["Disconnect"]
       51 CALL                             R5 1 0
       52 GETTABLEKS                       R5 R0 K11 ["changedSignalConnections"]
       54 GETTABLEKS                       R6 R4 K13 ["Changed"]
       56 NEWCLOSURE                       R8 P0
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 NAMECALL                         R6 R6 K14 ["Connect"]
       62 CALL                             R6 2 1
       63 SETTABLE                         R6 R5 R1
       64 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K1 ["externalProperties"]
        2 GETTABLEKS                       R3 R4 K0 ["ReferenceAzimuth"]
        4 FASTCALL1                        MATH_RAD R3 ; [+2]
        5 GETIMPORT                        R2 K4 [math.rad]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R6 R0 K1 ["externalProperties"]
       10 GETTABLEKS                       R5 R6 K5 ["CWAzimuthTravel"]
       12 FASTCALL1                        MATH_RAD R5 ; [+2]
       13 GETIMPORT                        R4 K4 [math.rad]
       15 CALL                             R4 1 1
       16 FASTCALL1                        MATH_ABS R4 ; [+2]
       17 GETIMPORT                        R3 K7 [math.abs]
       19 CALL                             R3 1 1
       20 SUB                              R1 R2 R3
       21 SETTABLEKS                       R1 R0 K8 ["minAzimuthAbsoluteRad"]
       23 GETTABLEKS                       R4 R0 K1 ["externalProperties"]
       25 GETTABLEKS                       R3 R4 K0 ["ReferenceAzimuth"]
       27 FASTCALL1                        MATH_RAD R3 ; [+2]
       28 GETIMPORT                        R2 K4 [math.rad]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R6 R0 K1 ["externalProperties"]
       33 GETTABLEKS                       R5 R6 K9 ["CCWAzimuthTravel"]
       35 FASTCALL1                        MATH_RAD R5 ; [+2]
       36 GETIMPORT                        R4 K4 [math.rad]
       38 CALL                             R4 1 1
       39 FASTCALL1                        MATH_ABS R4 ; [+2]
       40 GETIMPORT                        R3 K7 [math.abs]
       42 CALL                             R3 1 1
       43 ADD                              R1 R2 R3
       44 SETTABLEKS                       R1 R0 K10 ["maxAzimuthAbsoluteRad"]
       46 GETTABLEKS                       R2 R0 K1 ["externalProperties"]
       48 GETTABLEKS                       R1 R2 K11 ["UseAzimuthLimits"]
       50 SETTABLEKS                       R1 R0 K12 ["useAzimuthLimits"]
       52 GETTABLEKS                       R1 R0 K12 ["useAzimuthLimits"]
       54 JUMPIFNOT                        R1 ; [+22]
       55 GETTABLEKS                       R2 R0 K13 ["curAzimuthRad"]
       57 GETTABLEKS                       R3 R0 K8 ["minAzimuthAbsoluteRad"]
       59 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       61 GETIMPORT                        R1 K15 [math.max]
       63 CALL                             R1 2 1
       64 SETTABLEKS                       R1 R0 K13 ["curAzimuthRad"]
       66 GETTABLEKS                       R2 R0 K13 ["curAzimuthRad"]
       68 GETTABLEKS                       R3 R0 K10 ["maxAzimuthAbsoluteRad"]
       70 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       72 GETIMPORT                        R1 K17 [math.min]
       74 CALL                             R1 2 1
       75 SETTABLEKS                       R1 R0 K13 ["curAzimuthRad"]
       77 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K1 ["externalProperties"]
        2 GETTABLEKS                       R2 R3 K0 ["MinElevation"]
        4 FASTCALL2K                       MATH_MAX R2 K2 ; [+4]
        6 LOADK                            R3 K2 [-80]
        7 GETIMPORT                        R1 K5 [math.max]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R4 R0 K1 ["externalProperties"]
       12 GETTABLEKS                       R3 R4 K6 ["MaxElevation"]
       14 FASTCALL2K                       MATH_MIN R3 K7 ; [+4]
       16 LOADK                            R4 K7 [80]
       17 GETIMPORT                        R2 K9 [math.min]
       19 CALL                             R2 2 1
       20 FASTCALL2                        MATH_MIN R1 R2 ; [+5]
       22 MOVE                             R5 R1
       23 MOVE                             R6 R2
       24 GETIMPORT                        R4 K9 [math.min]
       26 CALL                             R4 2 1
       27 FASTCALL1                        MATH_RAD R4 ; [+2]
       28 GETIMPORT                        R3 K11 [math.rad]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R0 K12 ["minElevationRad"]
       33 FASTCALL2                        MATH_MAX R1 R2 ; [+5]
       35 MOVE                             R5 R1
       36 MOVE                             R6 R2
       37 GETIMPORT                        R4 K5 [math.max]
       39 CALL                             R4 2 1
       40 FASTCALL1                        MATH_RAD R4 ; [+2]
       41 GETIMPORT                        R3 K11 [math.rad]
       43 CALL                             R3 1 1
       44 SETTABLEKS                       R3 R0 K13 ["maxElevationRad"]
       46 GETTABLEKS                       R4 R0 K14 ["curElevationRad"]
       48 GETTABLEKS                       R5 R0 K12 ["minElevationRad"]
       50 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       52 GETIMPORT                        R3 K5 [math.max]
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R0 K14 ["curElevationRad"]
       57 GETTABLEKS                       R4 R0 K14 ["curElevationRad"]
       59 GETTABLEKS                       R5 R0 K13 ["maxElevationRad"]
       61 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       63 GETIMPORT                        R3 K9 [math.min]
       65 CALL                             R3 2 1
       66 SETTABLEKS                       R3 R0 K14 ["curElevationRad"]
       68 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K1 ["externalProperties"]
        2 GETTABLEKS                       R1 R2 K0 ["MinDistance"]
        4 SETTABLEKS                       R1 R0 K2 ["minDistance"]
        6 GETTABLEKS                       R2 R0 K1 ["externalProperties"]
        8 GETTABLEKS                       R1 R2 K3 ["MaxDistance"]
       10 SETTABLEKS                       R1 R0 K4 ["maxDistance"]
       12 GETTABLEKS                       R2 R0 K5 ["curDistance"]
       14 GETTABLEKS                       R3 R0 K2 ["minDistance"]
       16 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       18 GETIMPORT                        R1 K8 [math.max]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K5 ["curDistance"]
       23 GETTABLEKS                       R2 R0 K5 ["curDistance"]
       25 GETTABLEKS                       R3 R0 K4 ["maxDistance"]
       27 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       29 GETIMPORT                        R1 K10 [math.min]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K5 ["curDistance"]
       34 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["InitialElevation"]
        1 LOADK                            R4 K1 ["NumberValue"]
        2 LOADNIL                          R5
        3 NAMECALL                         R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
        5 CALL                             R1 4 0
        6 LOADK                            R3 K3 ["InitialDistance"]
        7 LOADK                            R4 K1 ["NumberValue"]
        8 LOADNIL                          R5
        9 NAMECALL                         R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
       11 CALL                             R1 4 0
       12 LOADK                            R3 K4 ["ReferenceAzimuth"]
       13 LOADK                            R4 K1 ["NumberValue"]
       14 GETUPVAL                         R6 0
       15 JUMPIFNOT                        R6 ; [+3]
       16 GETTABLEKS                       R5 R0 K5 ["SetAndBoundsCheckAzimuthValues"]
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R5 R0 K6 ["SetAndBoundsCheckAzimuthValue"]
       21 NAMECALL                         R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
       23 CALL                             R1 4 0
       24 LOADK                            R3 K7 ["CWAzimuthTravel"]
       25 LOADK                            R4 K1 ["NumberValue"]
       26 GETTABLEKS                       R5 R0 K5 ["SetAndBoundsCheckAzimuthValues"]
       28 NAMECALL                         R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
       30 CALL                             R1 4 0
       31 LOADK                            R3 K8 ["CCWAzimuthTravel"]
       32 LOADK                            R4 K1 ["NumberValue"]
       33 GETTABLEKS                       R5 R0 K5 ["SetAndBoundsCheckAzimuthValues"]
       35 NAMECALL                         R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
       37 CALL                             R1 4 0
       38 LOADK                            R3 K9 ["MinElevation"]
       39 LOADK                            R4 K1 ["NumberValue"]
       40 GETTABLEKS                       R5 R0 K10 ["SetAndBoundsCheckElevationValues"]
       42 NAMECALL                         R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
       44 CALL                             R1 4 0
       45 LOADK                            R3 K11 ["MaxElevation"]
       46 LOADK                            R4 K1 ["NumberValue"]
       47 GETTABLEKS                       R5 R0 K10 ["SetAndBoundsCheckElevationValues"]
       49 NAMECALL                         R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
       51 CALL                             R1 4 0
       52 LOADK                            R3 K12 ["MinDistance"]
       53 LOADK                            R4 K1 ["NumberValue"]
       54 GETTABLEKS                       R5 R0 K13 ["SetAndBoundsCheckDistanceValues"]
       56 NAMECALL                         R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
       58 CALL                             R1 4 0
       59 LOADK                            R3 K14 ["MaxDistance"]
       60 LOADK                            R4 K1 ["NumberValue"]
       61 GETTABLEKS                       R5 R0 K13 ["SetAndBoundsCheckDistanceValues"]
       63 NAMECALL                         R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
       65 CALL                             R1 4 0
       66 LOADK                            R3 K15 ["UseAzimuthLimits"]
       67 LOADK                            R4 K16 ["BoolValue"]
       68 GETTABLEKS                       R5 R0 K5 ["SetAndBoundsCheckAzimuthValues"]
       70 NAMECALL                         R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
       72 CALL                             R1 4 0
       73 GETTABLEKS                       R3 R0 K17 ["externalProperties"]
       75 GETTABLEKS                       R2 R3 K4 ["ReferenceAzimuth"]
       77 FASTCALL1                        MATH_RAD R2 ; [+2]
       78 GETIMPORT                        R1 K20 [math.rad]
       80 CALL                             R1 1 1
       81 SETTABLEKS                       R1 R0 K21 ["curAzimuthRad"]
       83 GETTABLEKS                       R3 R0 K17 ["externalProperties"]
       85 GETTABLEKS                       R2 R3 K0 ["InitialElevation"]
       87 FASTCALL1                        MATH_RAD R2 ; [+2]
       88 GETIMPORT                        R1 K20 [math.rad]
       90 CALL                             R1 1 1
       91 SETTABLEKS                       R1 R0 K22 ["curElevationRad"]
       93 GETTABLEKS                       R2 R0 K17 ["externalProperties"]
       95 GETTABLEKS                       R1 R2 K3 ["InitialDistance"]
       97 SETTABLEKS                       R1 R0 K23 ["curDistance"]
       99 NAMECALL                         R1 R0 K5 ["SetAndBoundsCheckAzimuthValues"]
      101 CALL                             R1 1 0
      102 NAMECALL                         R1 R0 K10 ["SetAndBoundsCheckElevationValues"]
      104 CALL                             R1 1 0
      105 NAMECALL                         R1 R0 K13 ["SetAndBoundsCheckDistanceValues"]
      107 CALL                             R1 1 0
      108 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R1 K0 ["OrbitalCamera"]
        1 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["curDistance"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LocalPlayer"]
        3 JUMPIFNOT                        R2 ; [+23]
        4 GETTABLEKS                       R5 R0 K1 ["minDistance"]
        6 GETTABLEKS                       R6 R0 K2 ["maxDistance"]
        8 FASTCALL3                        MATH_CLAMP R1 R5 R6
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K5 [math.clamp]
       13 CALL                             R3 3 1
       14 SETTABLEKS                       R3 R0 K6 ["currentSubjectDistance"]
       16 GETTABLEKS                       R4 R0 K6 ["currentSubjectDistance"]
       18 GETTABLEKS                       R5 R0 K7 ["FIRST_PERSON_DISTANCE_THRESHOLD"]
       20 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       22 GETIMPORT                        R3 K9 [math.max]
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R0 K6 ["currentSubjectDistance"]
       27 LOADB                            R3 0
       28 SETTABLEKS                       R3 R0 K10 ["inFirstPerson"]
       30 NAMECALL                         R3 R0 K11 ["UpdateMouseBehavior"]
       32 CALL                             R3 1 0
       33 GETTABLEKS                       R3 R0 K6 ["currentSubjectDistance"]
       35 RETURN                           R3 1

PROTO_10:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+3]
        2 NAMECALL                         R3 R0 K0 ["GetCameraLookVector"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R5 R3 K1 ["Y"]
        7 FASTCALL1                        MATH_ASIN R5 ; [+2]
        8 GETIMPORT                        R4 K4 [math.asin]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R6 R2 K1 ["Y"]
       13 SUBK                             R7 R4 K5 [1.3962634015954636]
       14 SUBK                             R8 R4 K6 [-1.3962634015954636]
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R5 K8 [math.clamp]
       18 CALL                             R5 3 1
       19 GETIMPORT                        R6 K11 [Vector2.new]
       21 GETTABLEKS                       R7 R2 K12 ["X"]
       23 MOVE                             R8 R5
       24 CALL                             R6 2 1
       25 GETIMPORT                        R7 K14 [CFrame.new]
       27 LOADK                            R8 K15 [{0, 0, 0}]
       28 MOVE                             R9 R3
       29 CALL                             R7 2 1
       30 GETIMPORT                        R10 K17 [CFrame.Angles]
       32 LOADN                            R11 0
       33 GETTABLEKS                       R13 R6 K12 ["X"]
       35 MINUS                            R12 R13
       36 LOADN                            R13 0
       37 CALL                             R10 3 1
       38 MUL                              R9 R10 R7
       39 GETIMPORT                        R10 K17 [CFrame.Angles]
       41 GETTABLEKS                       R12 R6 K1 ["Y"]
       43 MINUS                            R11 R12
       44 LOADN                            R12 0
       45 LOADN                            R13 0
       46 CALL                             R10 3 1
       47 MUL                              R8 R9 R10
       48 GETTABLEKS                       R8 R8 K18 ["LookVector"]
       50 RETURN                           R8 1

PROTO_11:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R4 R0 K2 ["lastUpdate"]
        5 SUB                              R3 R2 R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["getRotation"]
        9 MOVE                             R6 R1
       10 CALL                             R5 1 1
       11 GETIMPORT                        R6 K6 [Vector2.new]
       13 CALL                             R6 0 1
       14 JUMPIFNOTEQ                      R5 R6 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 GETIMPORT                        R5 K8 [workspace]
       20 GETTABLEKS                       R5 R5 K9 ["CurrentCamera"]
       22 GETTABLEKS                       R6 R5 K10 ["CFrame"]
       24 GETTABLEKS                       R7 R5 K11 ["Focus"]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K12 ["LocalPlayer"]
       29 MOVE                             R9 R5
       30 JUMPIFNOT                        R9 ; [+2]
       31 GETTABLEKS                       R9 R5 K13 ["CameraSubject"]
       33 MOVE                             R10 R9
       34 JUMPIFNOT                        R10 ; [+4]
       35 LOADK                            R12 K14 ["VehicleSeat"]
       36 NAMECALL                         R10 R9 K15 ["IsA"]
       38 CALL                             R10 2 1
       39 MOVE                             R11 R9
       40 JUMPIFNOT                        R11 ; [+4]
       41 LOADK                            R13 K16 ["SkateboardPlatform"]
       42 NAMECALL                         R11 R9 K15 ["IsA"]
       44 CALL                             R11 2 1
       45 GETTABLEKS                       R12 R0 K2 ["lastUpdate"]
       47 JUMPIFEQKNIL                     R12 ; [+4]
       49 LOADN                            R12 1
       50 JUMPIFNOTLT                      R12 R3 ; [+4]
       52 LOADNIL                          R12
       53 SETTABLEKS                       R12 R0 K17 ["lastCameraTransform"]
       55 JUMPIFNOT                        R4 ; [+5]
       56 GETIMPORT                        R12 K1 [tick]
       58 CALL                             R12 0 1
       59 SETTABLEKS                       R12 R0 K18 ["lastUserPanCamera"]
       61 NAMECALL                         R12 R0 K19 ["GetSubjectPosition"]
       63 CALL                             R12 1 1
       64 JUMPIFNOT                        R12 ; [+124]
       65 JUMPIFNOT                        R8 ; [+123]
       66 JUMPIFNOT                        R5 ; [+122]
       67 GETTABLEKS                       R13 R0 K20 ["gamepadDollySpeedMultiplier"]
       69 JUMPIFEQKN                       R13 K21 [1] ; [+9]
       71 GETTABLEKS                       R16 R0 K22 ["currentSubjectDistance"]
       73 GETTABLEKS                       R17 R0 K20 ["gamepadDollySpeedMultiplier"]
       75 MUL                              R15 R16 R17
       76 NAMECALL                         R13 R0 K23 ["SetCameraToSubjectDistance"]
       78 CALL                             R13 2 0
       79 GETIMPORT                        R13 K24 [CFrame.new]
       81 MOVE                             R14 R12
       82 CALL                             R13 1 1
       83 MOVE                             R7 R13
       84 GETUPVAL                         R13 0
       85 GETTABLEKS                       R13 R13 K3 ["getRotation"]
       87 MOVE                             R14 R1
       88 CALL                             R13 1 1
       89 GETTABLEKS                       R15 R0 K25 ["curAzimuthRad"]
       91 GETTABLEKS                       R16 R13 K26 ["X"]
       93 SUB                              R14 R15 R16
       94 SETTABLEKS                       R14 R0 K25 ["curAzimuthRad"]
       96 GETTABLEKS                       R14 R0 K27 ["useAzimuthLimits"]
       98 JUMPIFNOT                        R14 ; [+13]
       99 GETTABLEKS                       R15 R0 K25 ["curAzimuthRad"]
      101 GETTABLEKS                       R16 R0 K28 ["minAzimuthAbsoluteRad"]
      103 GETTABLEKS                       R17 R0 K29 ["maxAzimuthAbsoluteRad"]
      105 FASTCALL                         MATH_CLAMP ; [+2]
      106 GETIMPORT                        R14 K32 [math.clamp]
      108 CALL                             R14 3 1
      109 SETTABLEKS                       R14 R0 K25 ["curAzimuthRad"]
      111 JUMP                             ; [+22]
      112 GETTABLEKS                       R15 R0 K25 ["curAzimuthRad"]
      114 JUMPIFEQKN                       R15 K33 [0] ; [+16]
      116 GETTABLEKS                       R16 R0 K25 ["curAzimuthRad"]
      118 FASTCALL1                        MATH_SIGN R16 ; [+2]
      119 GETIMPORT                        R15 K35 [math.sign]
      121 CALL                             R15 1 1
      122 GETTABLEKS                       R18 R0 K25 ["curAzimuthRad"]
      124 FASTCALL1                        MATH_ABS R18 ; [+2]
      125 GETIMPORT                        R17 K38 [math.abs]
      127 CALL                             R17 1 1
      128 MODK                             R16 R17 K36 [6.283185307179586]
      129 MUL                              R14 R15 R16
      130 JUMPIF                           R14 ; [+1]
      131 LOADN                            R14 0
      132 SETTABLEKS                       R14 R0 K25 ["curAzimuthRad"]
      134 GETTABLEKS                       R16 R0 K39 ["curElevationRad"]
      136 GETTABLEKS                       R17 R13 K40 ["Y"]
      138 ADD                              R15 R16 R17
      139 GETTABLEKS                       R16 R0 K41 ["minElevationRad"]
      141 GETTABLEKS                       R17 R0 K42 ["maxElevationRad"]
      143 FASTCALL                         MATH_CLAMP ; [+2]
      144 GETIMPORT                        R14 K32 [math.clamp]
      146 CALL                             R14 3 1
      147 SETTABLEKS                       R14 R0 K39 ["curElevationRad"]
      149 GETTABLEKS                       R15 R0 K22 ["currentSubjectDistance"]
      151 GETIMPORT                        R17 K44 [CFrame.fromEulerAnglesYXZ]
      153 GETTABLEKS                       R19 R0 K39 ["curElevationRad"]
      155 MINUS                            R18 R19
      156 GETTABLEKS                       R19 R0 K25 ["curAzimuthRad"]
      158 LOADN                            R20 0
      159 CALL                             R17 3 1
      160 LOADK                            R18 K45 [{0, 0, 1}]
      161 MUL                              R16 R17 R18
      162 MUL                              R14 R15 R16
      163 ADD                              R15 R12 R14
      164 GETIMPORT                        R16 K24 [CFrame.new]
      166 MOVE                             R17 R15
      167 MOVE                             R18 R12
      168 CALL                             R16 2 1
      169 MOVE                             R6 R16
      170 SETTABLEKS                       R6 R0 K17 ["lastCameraTransform"]
      172 SETTABLEKS                       R7 R0 K46 ["lastCameraFocus"]
      174 JUMPIF                           R10 ; [+1]
      175 JUMPIFNOT                        R11 ; [+10]
      176 LOADK                            R18 K47 ["BasePart"]
      177 NAMECALL                         R16 R9 K15 ["IsA"]
      179 CALL                             R16 2 1
      180 JUMPIFNOT                        R16 ; [+5]
      181 GETTABLEKS                       R16 R9 K10 ["CFrame"]
      183 SETTABLEKS                       R16 R0 K48 ["lastSubjectCFrame"]
      185 JUMP                             ; [+3]
      186 LOADNIL                          R16
      187 SETTABLEKS                       R16 R0 K48 ["lastSubjectCFrame"]
      189 SETTABLEKS                       R2 R0 K2 ["lastUpdate"]
      191 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 LOADK                            R3 K5 ["CommonUtils"]
       10 NAMECALL                         R1 R1 K6 ["WaitForChild"]
       12 CALL                             R1 2 -1
       13 CALL                             R0 -1 1
       14 GETTABLEKS                       R1 R0 K7 ["get"]
       16 LOADK                            R2 K8 ["FlagUtil"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K9 ["getUserFlag"]
       20 LOADK                            R3 K10 ["UserFixOrbitalCameraAzimuth"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K4 ["Parent"]
       28 LOADK                            R6 K11 ["CameraUtils"]
       29 NAMECALL                         R4 R4 K6 ["WaitForChild"]
       31 CALL                             R4 2 -1
       32 CALL                             R3 -1 1
       33 GETIMPORT                        R4 K1 [require]
       35 GETIMPORT                        R5 K3 [script]
       37 GETTABLEKS                       R5 R5 K4 ["Parent"]
       39 LOADK                            R7 K12 ["CameraInput"]
       40 NAMECALL                         R5 R5 K6 ["WaitForChild"]
       42 CALL                             R5 2 -1
       43 CALL                             R4 -1 1
       44 GETIMPORT                        R5 K14 [game]
       46 LOADK                            R7 K15 ["Players"]
       47 NAMECALL                         R5 R5 K16 ["GetService"]
       49 CALL                             R5 2 1
       50 GETIMPORT                        R6 K1 [require]
       52 GETIMPORT                        R7 K3 [script]
       54 GETTABLEKS                       R7 R7 K4 ["Parent"]
       56 LOADK                            R9 K17 ["BaseCamera"]
       57 NAMECALL                         R7 R7 K6 ["WaitForChild"]
       59 CALL                             R7 2 -1
       60 CALL                             R6 -1 1
       61 NEWTABLE                         R8 16 0
       63 FASTCALL2                        SETMETATABLE R8 R6 ; [+4]
       65 MOVE                             R9 R6
       66 GETIMPORT                        R7 K19 [setmetatable]
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R7 K20 ["__index"]
       71 DUPCLOSURE                       R8 K21 [PROTO_0]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 SETTABLEKS                       R8 R7 K22 ["new"]
       76 DUPCLOSURE                       R8 K23 [PROTO_2]
       77 SETTABLEKS                       R8 R7 K24 ["LoadOrCreateNumberValueParameter"]
       79 DUPCLOSURE                       R8 K25 [PROTO_3]
       80 SETTABLEKS                       R8 R7 K26 ["SetAndBoundsCheckAzimuthValues"]
       82 DUPCLOSURE                       R8 K27 [PROTO_4]
       83 SETTABLEKS                       R8 R7 K28 ["SetAndBoundsCheckElevationValues"]
       85 DUPCLOSURE                       R8 K29 [PROTO_5]
       86 SETTABLEKS                       R8 R7 K30 ["SetAndBoundsCheckDistanceValues"]
       88 DUPCLOSURE                       R8 K31 [PROTO_6]
       89 CAPTURE                          VAL R2
       90 SETTABLEKS                       R8 R7 K32 ["LoadNumberValueParameters"]
       92 DUPCLOSURE                       R8 K33 [PROTO_7]
       93 SETTABLEKS                       R8 R7 K34 ["GetModuleName"]
       95 DUPCLOSURE                       R8 K35 [PROTO_8]
       96 SETTABLEKS                       R8 R7 K36 ["GetCameraToSubjectDistance"]
       98 DUPCLOSURE                       R8 K37 [PROTO_9]
       99 CAPTURE                          VAL R5
      100 SETTABLEKS                       R8 R7 K38 ["SetCameraToSubjectDistance"]
      102 DUPCLOSURE                       R8 K39 [PROTO_10]
      103 SETTABLEKS                       R8 R7 K40 ["CalculateNewLookVector"]
      105 DUPCLOSURE                       R8 K41 [PROTO_11]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R5
      108 SETTABLEKS                       R8 R7 K42 ["Update"]
      110 RETURN                           R7 1
