PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL1                        ASSERT R4 ; [+2]
        5 GETIMPORT                        R3 K1 [assert]
        7 CALL                             R3 1 0
        8 DUPTABLE                         R4 K32 [{"_realCamera", "_workspace", "_guiTarget", "_useLocalSpace", "_areCollisionsEnabled", "_areConstraintsEnabled", "_areConstraintDetailsShown", "_drawConstraintsOnTop", "_shouldJoinSurfaces", "_shouldAlignDraggedObjects", "_mouseLocation", "_mouseUnitRay", "_cameraCFrame", "_cameraSize", "_mouseIcon", "_isSimulating", "_gridSize", "_gridSnapEnabled", "_partSnapEnabled", "_rotateIncrement", "_rotateSnapEnabled", "_selection", "_undoWaypoints", "_isTabDown", "_isAltDown", "_isCtrlDown", "_isShiftDown", "_settingValues", "_navigationModel", "_newCameraControlsBetaUpdate"}]
        9 JUMPIFEQKB                       R2 TRUE ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 SETTABLEKS                       R5 R4 K2 ["_realCamera"]
       15 JUMPIFNOTEQKB                    R2 TRUE ; [+8]
       17 GETIMPORT                        R5 K34 [game]
       19 LOADK                            R7 K35 ["Workspace"]
       20 NAMECALL                         R5 R5 K36 ["GetService"]
       22 CALL                             R5 2 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 SETTABLEKS                       R5 R4 K3 ["_workspace"]
       27 SETTABLEKS                       R0 R4 K4 ["_guiTarget"]
       29 LOADB                            R5 0
       30 SETTABLEKS                       R5 R4 K5 ["_useLocalSpace"]
       32 LOADB                            R5 1
       33 SETTABLEKS                       R5 R4 K6 ["_areCollisionsEnabled"]
       35 LOADB                            R5 0
       36 SETTABLEKS                       R5 R4 K7 ["_areConstraintsEnabled"]
       38 LOADB                            R5 0
       39 SETTABLEKS                       R5 R4 K8 ["_areConstraintDetailsShown"]
       41 LOADB                            R5 0
       42 SETTABLEKS                       R5 R4 K9 ["_drawConstraintsOnTop"]
       44 LOADB                            R5 1
       45 SETTABLEKS                       R5 R4 K10 ["_shouldJoinSurfaces"]
       47 LOADB                            R5 1
       48 SETTABLEKS                       R5 R4 K11 ["_shouldAlignDraggedObjects"]
       50 GETIMPORT                        R5 K39 [Vector2.new]
       52 CALL                             R5 0 1
       53 SETTABLEKS                       R5 R4 K12 ["_mouseLocation"]
       55 GETIMPORT                        R5 K41 [Ray.new]
       57 FASTCALL                         VECTOR ; [+2]
       58 GETIMPORT                        R6 K43 [Vector3.new]
       60 CALL                             R6 0 1
       61 FASTCALL                         VECTOR ; [+2]
       62 GETIMPORT                        R7 K43 [Vector3.new]
       64 CALL                             R7 0 1
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R4 K13 ["_mouseUnitRay"]
       68 GETIMPORT                        R5 K45 [CFrame.new]
       70 CALL                             R5 0 1
       71 SETTABLEKS                       R5 R4 K14 ["_cameraCFrame"]
       73 LOADN                            R5 10
       74 SETTABLEKS                       R5 R4 K15 ["_cameraSize"]
       76 LOADK                            R5 K46 [""]
       77 SETTABLEKS                       R5 R4 K16 ["_mouseIcon"]
       79 LOADB                            R5 0
       80 SETTABLEKS                       R5 R4 K17 ["_isSimulating"]
       82 LOADN                            R5 1
       83 SETTABLEKS                       R5 R4 K18 ["_gridSize"]
       85 LOADB                            R5 1
       86 SETTABLEKS                       R5 R4 K19 ["_gridSnapEnabled"]
       88 LOADB                            R5 1
       89 SETTABLEKS                       R5 R4 K20 ["_partSnapEnabled"]
       91 LOADK                            R5 K47 [0.523598775598299]
       92 SETTABLEKS                       R5 R4 K21 ["_rotateIncrement"]
       94 LOADB                            R5 1
       95 SETTABLEKS                       R5 R4 K22 ["_rotateSnapEnabled"]
       97 SETTABLEKS                       R1 R4 K23 ["_selection"]
       99 NEWTABLE                         R5 0 0
      101 SETTABLEKS                       R5 R4 K24 ["_undoWaypoints"]
      103 LOADB                            R5 0
      104 SETTABLEKS                       R5 R4 K25 ["_isTabDown"]
      106 LOADB                            R5 0
      107 SETTABLEKS                       R5 R4 K26 ["_isAltDown"]
      109 LOADB                            R5 0
      110 SETTABLEKS                       R5 R4 K27 ["_isCtrlDown"]
      112 LOADB                            R5 0
      113 SETTABLEKS                       R5 R4 K28 ["_isShiftDown"]
      115 NEWTABLE                         R5 0 0
      117 SETTABLEKS                       R5 R4 K29 ["_settingValues"]
      119 LOADNIL                          R5
      120 SETTABLEKS                       R5 R4 K30 ["_navigationModel"]
      122 GETUPVAL                         R5 0
      123 SETTABLEKS                       R5 R4 K31 ["_newCameraControlsBetaUpdate"]
      125 GETUPVAL                         R5 1
      126 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
      128 GETIMPORT                        R3 K49 [setmetatable]
      130 CALL                             R3 2 1
      131 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_guiTarget"]
        2 RETURN                           R1 1

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["_hoverInstance"]
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_onInstanceHovered"]
        4 RETURN                           R0 0

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["_onInstanceHovered"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_onInstanceHovered"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R3 R0 K0 ["_onInstanceHovered"]
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_hoverInstance"]
        2 JUMPIFEQ                         R2 R1 ; [+25]
        4 JUMPIFNOT                        R1 ; [+4]
        5 NAMECALL                         R2 R1 K1 ["GetFullName"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 LOADK                            R2 K2 ["nil"]
       10 GETTABLEKS                       R4 R0 K0 ["_hoverInstance"]
       12 JUMPIFNOT                        R4 ; [+6]
       13 GETTABLEKS                       R3 R0 K0 ["_hoverInstance"]
       15 NAMECALL                         R3 R3 K1 ["GetFullName"]
       17 CALL                             R3 1 1
       18 JUMPIF                           R3 ; [+1]
       19 LOADK                            R3 K2 ["nil"]
       20 GETIMPORT                        R4 K4 [error]
       22 LOADK                            R6 K5 ["Wrong hover instance,\n    Expected: "]
       23 MOVE                             R7 R2
       24 LOADK                            R8 K6 ["\n    Got: "]
       25 MOVE                             R9 R3
       26 CONCAT                           R5 R6 R9
       27 CALL                             R4 1 0
       28 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_useLocalSpace"]
        2 RETURN                           R1 1

PROTO_8:
        0 SETTABLEKS                       R1 R0 K0 ["_useLocalSpace"]
        2 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_areCollisionsEnabled"]
        2 RETURN                           R1 1

PROTO_10:
        0 SETTABLEKS                       R1 R0 K0 ["_areCollisionsEnabled"]
        2 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_areConstraintsEnabled"]
        2 RETURN                           R1 1

PROTO_12:
        0 SETTABLEKS                       R1 R0 K0 ["_areConstraintsEnabled"]
        2 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_areConstraintDetailsShown"]
        2 RETURN                           R1 1

PROTO_14:
        0 SETTABLEKS                       R1 R0 K0 ["_areConstraintDetailsShown"]
        2 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_drawConstraintsOnTop"]
        2 RETURN                           R1 1

PROTO_16:
        0 SETTABLEKS                       R1 R0 K0 ["_drawConstraintsOnTop"]
        2 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_shouldJoinSurfaces"]
        2 RETURN                           R1 1

PROTO_18:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["boolean"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 SETTABLEKS                       R1 R0 K5 ["_shouldJoinSurfaces"]
       15 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_20:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_21:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_22:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_23:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_24:
        0 LOADK                            R1 K0 [0.5]
        1 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R2 K2 [Color3.new]
        2 CALL                             R2 0 -1
        3 RETURN                           R2 -1

PROTO_26:
        0 LOADK                            R1 K0 [0.04]
        1 RETURN                           R1 1

PROTO_27:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_28:
        0 GETIMPORT                        R2 K2 [Color3.new]
        2 CALL                             R2 0 -1
        3 RETURN                           R2 -1

PROTO_29:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_30:
        0 GETIMPORT                        R1 K2 [Color3.new]
        2 CALL                             R1 0 -1
        3 RETURN                           R1 -1

PROTO_31:
        0 GETIMPORT                        R1 K2 [Color3.new]
        2 CALL                             R1 0 -1
        3 RETURN                           R1 -1

PROTO_32:
        0 GETIMPORT                        R1 K2 [Color3.new]
        2 CALL                             R1 0 -1
        3 RETURN                           R1 -1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["X_AXIS"]
        3 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Y_AXIS"]
        3 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Z_AXIS"]
        3 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["V_AXIS"]
        3 RETURN                           R1 1

PROTO_37:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_38:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_39:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_40:
        0 LOADN                            R1 5
        1 RETURN                           R1 1

PROTO_41:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_42:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_43:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_44:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_45:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_46:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_47:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_48:
        0 LOADK                            R1 K0 [0.13]
        1 RETURN                           R1 1

PROTO_49:
        0 LOADN                            R1 100
        1 RETURN                           R1 1

PROTO_50:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_51:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_52:
        0 GETTABLEKS                       R1 R0 K0 ["_realCamera"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K1 ["_workspace"]
        5 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        7 GETTABLEKS                       R1 R1 K3 ["CFrame"]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K4 ["_cameraCFrame"]
       12 RETURN                           R1 1

PROTO_53:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R1 R1 K1 ["CurrentCamera"]
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_54:
        0 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R3 R3 K1 ["CurrentCamera"]
        7 SETTABLEKS                       R1 R3 K2 ["CFrame"]
        9 SETTABLEKS                       R1 R0 K3 ["_cameraCFrame"]
       11 ORK                              R3 R2 K4 [10]
       12 SETTABLEKS                       R3 R0 K5 ["_cameraSize"]
       14 RETURN                           R0 0

PROTO_55:
        0 GETTABLEKS                       R2 R0 K0 ["_realCamera"]
        2 JUMPIFNOT                        R2 ; [+29]
        3 NAMECALL                         R2 R0 K1 ["getCameraCFrame"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R2 K2 ["Position"]
        8 SUB                              R3 R1 R4
        9 GETTABLEKS                       R5 R2 K3 ["LookVector"]
       11 NAMECALL                         R3 R3 K4 ["Dot"]
       13 CALL                             R3 2 1
       14 GETTABLEKS                       R6 R0 K5 ["_workspace"]
       16 GETTABLEKS                       R6 R6 K6 ["CurrentCamera"]
       18 GETTABLEKS                       R6 R6 K7 ["FieldOfView"]
       20 FASTCALL1                        MATH_RAD R6 ; [+2]
       21 GETIMPORT                        R5 K10 [math.rad]
       23 CALL                             R5 1 1
       24 FASTCALL1                        MATH_SIN R5 ; [+2]
       25 GETIMPORT                        R4 K12 [math.sin]
       27 CALL                             R4 1 1
       28 MUL                              R6 R4 R3
       29 GETUPVAL                         R7 0
       30 MUL                              R5 R6 R7
       31 RETURN                           R5 1
       32 LOADN                            R2 1
       33 RETURN                           R2 1

PROTO_56:
        0 GETTABLEKS                       R3 R0 K0 ["_mouseLocation"]
        2 NAMECALL                         R1 R0 K1 ["viewportPointToRay"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_57:
        0 NAMECALL                         R1 R0 K0 ["getMouseUnitRay"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [Ray.new]
        5 GETTABLEKS                       R3 R1 K4 ["Origin"]
        7 GETTABLEKS                       R5 R1 K6 ["Direction"]
        9 MULK                             R4 R5 K5 [10000]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_58:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseLocation"]
        2 RETURN                           R1 1

PROTO_59:
        0 SETTABLEKS                       R1 R0 K0 ["_mouseLocation"]
        2 RETURN                           R0 0

PROTO_60:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R2 R2 K1 ["CurrentCamera"]
        7 GETTABLEKS                       R4 R1 K2 ["X"]
        9 GETTABLEKS                       R5 R1 K3 ["Y"]
       11 NAMECALL                         R2 R2 K4 ["ViewportPointToRay"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1
       15 GETTABLEKS                       R5 R1 K2 ["X"]
       17 DIVK                             R4 R5 K6 [1000]
       18 SUBK                             R3 R4 K5 [0.5]
       19 GETTABLEKS                       R4 R0 K7 ["_cameraSize"]
       21 MUL                              R2 R3 R4
       22 GETTABLEKS                       R6 R1 K3 ["Y"]
       24 DIVK                             R5 R6 K6 [1000]
       25 SUBK                             R4 R5 K5 [0.5]
       26 GETTABLEKS                       R5 R0 K7 ["_cameraSize"]
       28 MUL                              R3 R4 R5
       29 GETTABLEKS                       R4 R0 K8 ["_cameraCFrame"]
       31 LOADN                            R9 0
       32 FASTCALL3                        VECTOR R2 R3 R9
       34 MOVE                             R7 R2
       35 MOVE                             R8 R3
       36 GETIMPORT                        R6 K11 [Vector3.new]
       38 CALL                             R6 3 1
       39 NAMECALL                         R4 R4 K12 ["PointToWorldSpace"]
       41 CALL                             R4 2 1
       42 GETIMPORT                        R5 K14 [Ray.new]
       44 MOVE                             R6 R4
       45 GETTABLEKS                       R7 R0 K8 ["_cameraCFrame"]
       47 GETTABLEKS                       R7 R7 K15 ["LookVector"]
       49 CALL                             R5 2 -1
       50 RETURN                           R5 -1

PROTO_61:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R2 R2 K1 ["CurrentCamera"]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K2 ["WorldToViewportPoint"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 GETTABLEKS                       R3 R0 K3 ["_cameraCFrame"]
       14 NAMECALL                         R3 R3 K4 ["Inverse"]
       16 CALL                             R3 1 1
       17 MUL                              R2 R3 R1
       18 GETTABLEKS                       R6 R2 K7 ["X"]
       20 GETTABLEKS                       R7 R0 K8 ["_cameraSize"]
       22 DIV                              R5 R6 R7
       23 ADDK                             R4 R5 K6 [0.5]
       24 MULK                             R3 R4 K5 [1000]
       25 GETTABLEKS                       R7 R2 K9 ["Y"]
       27 GETTABLEKS                       R8 R0 K8 ["_cameraSize"]
       29 DIV                              R6 R7 R8
       30 ADDK                             R5 R6 K6 [0.5]
       31 MULK                             R4 R5 K5 [1000]
       32 LOADB                            R5 0
       33 LOADN                            R6 0
       34 JUMPIFNOTLE                      R6 R3 ; [+20]
       36 LOADB                            R5 0
       37 LOADN                            R6 232
       38 JUMPIFNOTLE                      R3 R6 ; [+16]
       40 LOADB                            R5 0
       41 LOADN                            R6 0
       42 JUMPIFNOTLE                      R6 R4 ; [+12]
       44 LOADB                            R5 0
       45 LOADN                            R6 232
       46 JUMPIFNOTLE                      R4 R6 ; [+8]
       48 GETTABLEKS                       R6 R2 K10 ["Z"]
       50 LOADN                            R7 0
       51 JUMPIFLT                         R6 R7 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 LOADN                            R9 0
       56 FASTCALL3                        VECTOR R3 R4 R9
       58 MOVE                             R7 R3
       59 MOVE                             R8 R4
       60 GETIMPORT                        R6 K13 [Vector3.new]
       62 CALL                             R6 3 1
       63 MOVE                             R7 R5
       64 RETURN                           R6 2

PROTO_62:
        0 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R1 R1 K1 ["CurrentCamera"]
        7 GETTABLEKS                       R1 R1 K2 ["ViewportSize"]
        9 RETURN                           R1 1
       10 GETIMPORT                        R1 K5 [Vector2.new]
       12 LOADN                            R2 232
       13 LOADN                            R3 232
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_63:
        0 SETTABLEKS                       R1 R0 K0 ["_mouseIcon"]
        2 RETURN                           R0 0

PROTO_64:
        0 GETTABLEKS                       R2 R0 K0 ["_mouseIcon"]
        2 JUMPIFEQ                         R2 R1 ; [+13]
        4 ORK                              R2 R1 K1 ["nil"]
        5 GETTABLEKS                       R4 R0 K0 ["_mouseIcon"]
        7 ORK                              R3 R4 K1 ["nil"]
        8 GETIMPORT                        R4 K3 [error]
       10 LOADK                            R6 K4 ["Wrong mouse icon,\n    Expected: "]
       11 MOVE                             R7 R2
       12 LOADK                            R8 K5 ["\n    Got: "]
       13 MOVE                             R9 R3
       14 CONCAT                           R5 R6 R9
       15 CALL                             R4 1 0
       16 RETURN                           R0 0

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_66:
        0 GETTABLEKS                       R1 R0 K0 ["_isSimulating"]
        2 RETURN                           R1 1

PROTO_67:
        0 SETTABLEKS                       R1 R0 K0 ["_isSimulating"]
        2 RETURN                           R0 0

PROTO_68:
        0 GETTABLEKS                       R1 R0 K0 ["_isTabDown"]
        2 RETURN                           R1 1

PROTO_69:
        0 GETTABLEKS                       R1 R0 K0 ["_isAltDown"]
        2 RETURN                           R1 1

PROTO_70:
        0 GETTABLEKS                       R1 R0 K0 ["_isCtrlDown"]
        2 RETURN                           R1 1

PROTO_71:
        0 GETTABLEKS                       R1 R0 K0 ["_isShiftDown"]
        2 RETURN                           R1 1

PROTO_72:
        0 GETTABLEKS                       R1 R0 K0 ["_navigationModel"]
        2 RETURN                           R1 1

PROTO_73:
        0 SETTABLEKS                       R1 R0 K0 ["_navigationModel"]
        2 RETURN                           R0 0

PROTO_74:
        0 SETTABLEKS                       R1 R0 K0 ["_newCameraControlsBetaUpdate"]
        2 RETURN                           R0 0

PROTO_75:
        0 GETTABLEKS                       R1 R0 K0 ["_newCameraControlsBetaUpdate"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 NAMECALL                         R1 R0 K1 ["isShiftKeyDown"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 NAMECALL                         R1 R0 K2 ["isCtrlKeyDown"]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+3]
       11 NAMECALL                         R1 R0 K1 ["isShiftKeyDown"]
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

PROTO_76:
        0 SETTABLEKS                       R1 R0 K0 ["_isCtrlDown"]
        2 SETTABLEKS                       R2 R0 K1 ["_isAltDown"]
        4 SETTABLEKS                       R3 R0 K2 ["_isShiftDown"]
        6 RETURN                           R0 0

PROTO_77:
        0 SETTABLEKS                       R1 R0 K0 ["_isTabDown"]
        2 RETURN                           R0 0

PROTO_78:
        0 GETTABLEKS                       R1 R0 K0 ["_gridSize"]
        2 RETURN                           R1 1

PROTO_79:
        0 GETTABLEKS                       R1 R0 K0 ["_gridSnapEnabled"]
        2 RETURN                           R1 1

PROTO_80:
        0 SETTABLEKS                       R1 R0 K0 ["_partSnapEnabled"]
        2 RETURN                           R0 0

PROTO_81:
        0 GETTABLEKS                       R1 R0 K0 ["_partSnapEnabled"]
        2 RETURN                           R1 1

PROTO_82:
        0 NAMECALL                         R1 R0 K0 ["getPartSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_83:
        0 NAMECALL                         R1 R0 K0 ["getGridSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_84:
        0 GETTABLEKS                       R1 R0 K0 ["_rotateSnapEnabled"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        5 CALL                             R2 1 1
        6 NOT                              R1 R2
        7 RETURN                           R1 1

PROTO_85:
        0 GETTABLEKS                       R2 R0 K0 ["_gridSnapEnabled"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R6 R0 K2 ["_gridSize"]
        5 DIV                              R5 R1 R6
        6 ADDK                             R4 R5 K1 [0.5]
        7 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        8 GETIMPORT                        R3 K5 [math.floor]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R4 R0 K2 ["_gridSize"]
       13 MUL                              R2 R3 R4
       14 RETURN                           R2 1
       15 RETURN                           R1 1

PROTO_86:
        0 GETTABLEKS                       R1 R0 K0 ["_rotateIncrement"]
        2 RETURN                           R1 1

PROTO_87:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        6 LOADK                            R5 K0 ["Missing enabled"]
        7 GETIMPORT                        R3 K2 [assert]
        9 CALL                             R3 2 0
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       16 LOADK                            R5 K3 ["Missing snap"]
       17 GETIMPORT                        R3 K2 [assert]
       19 CALL                             R3 2 0
       20 SETTABLEKS                       R1 R0 K4 ["_gridSnapEnabled"]
       22 SETTABLEKS                       R2 R0 K5 ["_gridSize"]
       24 RETURN                           R0 0

PROTO_88:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        6 LOADK                            R5 K0 ["Missing enabled"]
        7 GETIMPORT                        R3 K2 [assert]
        9 CALL                             R3 2 0
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       16 LOADK                            R5 K3 ["Missing snap"]
       17 GETIMPORT                        R3 K2 [assert]
       19 CALL                             R3 2 0
       20 SETTABLEKS                       R1 R0 K4 ["_rotateSnapEnabled"]
       22 SETTABLEKS                       R2 R0 K5 ["_rotateIncrement"]
       24 RETURN                           R0 0

PROTO_89:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_90:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 NAMECALL                         R4 R4 K0 ["GizmoRaycast"]
        6 CALL                             R4 4 -1
        7 RETURN                           R4 -1

PROTO_91:
        0 SETTABLEKS                       R1 R0 K0 ["_insertPoint"]
        2 RETURN                           R0 0

PROTO_92:
        0 GETTABLEKS                       R2 R0 K0 ["_insertPoint"]
        2 JUMPIFEQ                         R2 R1 ; [+20]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K2 [tostring]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R0 K0 ["_insertPoint"]
       11 FASTCALL1                        TOSTRING R4 ; [+2]
       12 GETIMPORT                        R3 K2 [tostring]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K4 [error]
       17 LOADK                            R6 K5 ["Wrong insert point,\n    Expected: "]
       18 MOVE                             R7 R2
       19 LOADK                            R8 K6 ["\n    Got: "]
       20 MOVE                             R9 R3
       21 CONCAT                           R5 R6 R9
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_93:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_94:
        0 GETTABLEKS                       R1 R0 K0 ["_shouldAlignDraggedObjects"]
        2 RETURN                           R1 1

PROTO_95:
        0 SETTABLEKS                       R1 R0 K0 ["_shouldAlignDraggedObjects"]
        2 RETURN                           R0 0

PROTO_96:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K0 ["SetWaypoint"]
        6 CALL                             R3 2 0
        7 GETTABLEKS                       R4 R0 K1 ["_undoWaypoints"]
        9 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R3 K4 [table.insert]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R4 R0 K1 ["_undoWaypoints"]
       17 LENGTH                           R3 R4
       18 LOADN                            R4 20
       19 JUMPIFNOTLT                      R4 R3 ; [+8]
       21 GETIMPORT                        R3 K6 [table.remove]
       23 GETTABLEKS                       R4 R0 K1 ["_undoWaypoints"]
       25 LOADN                            R5 1
       26 CALL                             R3 2 0
       27 JUMPBACK                         ; [-13]
       28 RETURN                           R0 0

PROTO_97:
        0 GETTABLEKS                       R3 R0 K0 ["_undoWaypoints"]
        2 GETTABLEKS                       R5 R0 K0 ["_undoWaypoints"]
        4 LENGTH                           R4 R5
        5 GETTABLE                         R2 R3 R4
        6 JUMPIFEQ                         R2 R1 ; [+9]
        8 GETIMPORT                        R3 K2 [error]
       10 LOADK                            R5 K3 ["Wrong last undo waypoint,\n    Expected: "]
       11 MOVE                             R6 R1
       12 LOADK                            R7 K4 ["\n    Got: "]
       13 ORK                              R8 R2 K5 ["<none>"]
       14 CONCAT                           R4 R5 R8
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_98:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["expectMostRecentUndoWaypoint"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R0 K1 ["_undoWaypoints"]
        6 GETTABLEKS                       R4 R0 K1 ["_undoWaypoints"]
        8 LENGTH                           R3 R4
        9 LOADNIL                          R4
       10 SETTABLE                         R4 R2 R3
       11 GETUPVAL                         R2 0
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R2 0
       14 NAMECALL                         R2 R2 K2 ["Undo"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_99:
        0 JUMPIFNOT                        R3 ; [+12]
        1 LOADK                            R4 K0 ["%s.%s (%s)"]
        2 GETTABLEKS                       R4 R4 K1 ["format"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 GETIMPORT                        R7 K4 [table.concat]
        8 MOVE                             R8 R3
        9 LOADK                            R9 K5 [","]
       10 CALL                             R7 2 -1
       11 CALL                             R4 -1 -1
       12 RETURN                           R4 -1
       13 LOADK                            R4 K6 ["%s.%s"]
       14 GETTABLEKS                       R4 R4 K1 ["format"]
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 CALL                             R4 2 -1
       19 RETURN                           R4 -1

PROTO_100:
        0 GETIMPORT                        R3 K3 [Enum.StudioStyleGuideColor.MainBackground]
        2 JUMPIFNOTEQ                      R1 R3 ; [+5]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K4 ["WHITE"]
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K5 ["BLACK"]
       11 RETURN                           R3 1

PROTO_101:
        0 LOADK                            R1 K0 ["Dark"]
        1 RETURN                           R1 1

PROTO_102:
        0 GETTABLEKS                       R3 R0 K0 ["_settingValues"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_103:
        0 GETTABLEKS                       R3 R0 K0 ["_settingValues"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_104:
        0 LOADB                            R2 0
        1 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["NewCameraControls_BetaUpdate"]
       16 NAMECALL                         R2 R2 K6 ["GetEngineFeature"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K8 [script]
       21 GETTABLEKS                       R3 R3 K9 ["Parent"]
       23 GETTABLEKS                       R3 R3 K9 ["Parent"]
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Utility"]
       29 GETTABLEKS                       R5 R5 K13 ["Colors"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K12 ["Utility"]
       36 GETTABLEKS                       R6 R6 K14 ["MockAnalytics"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R3 K15 ["Flags"]
       43 GETTABLEKS                       R7 R7 K16 ["getFFlagNextGenDraggers"]
       45 CALL                             R6 1 1
       46 NEWTABLE                         R7 128 0
       48 SETTABLEKS                       R7 R7 K17 ["__index"]
       50 MOVE                             R9 R6
       51 CALL                             R9 0 1
       52 JUMPIFNOT                        R9 ; [+2]
       53 LOADK                            R8 K18 [0.033]
       54 JUMP                             ; [+1]
       55 LOADK                            R8 K19 [0.05]
       56 DUPCLOSURE                       R9 K20 [PROTO_0]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R7
       59 SETTABLEKS                       R9 R7 K21 ["new"]
       61 DUPCLOSURE                       R9 K22 [PROTO_1]
       62 SETTABLEKS                       R9 R7 K23 ["getGuiParent"]
       64 DUPCLOSURE                       R9 K24 [PROTO_2]
       65 SETTABLEKS                       R9 R7 K25 ["setHoverInstance"]
       67 DUPCLOSURE                       R9 K26 [PROTO_4]
       68 SETTABLEKS                       R9 R7 K27 ["onInstanceHovered"]
       70 DUPCLOSURE                       R9 K28 [PROTO_5]
       71 SETTABLEKS                       R9 R7 K29 ["invokeInstanceHovered"]
       73 DUPCLOSURE                       R9 K30 [PROTO_6]
       74 SETTABLEKS                       R9 R7 K31 ["expectHoverInstance"]
       76 DUPCLOSURE                       R9 K32 [PROTO_7]
       77 SETTABLEKS                       R9 R7 K33 ["shouldUseLocalSpace"]
       79 DUPCLOSURE                       R9 K34 [PROTO_8]
       80 SETTABLEKS                       R9 R7 K35 ["setUseLocalSpace"]
       82 DUPCLOSURE                       R9 K36 [PROTO_9]
       83 SETTABLEKS                       R9 R7 K37 ["areCollisionsEnabled"]
       85 DUPCLOSURE                       R9 K38 [PROTO_10]
       86 SETTABLEKS                       R9 R7 K39 ["setCollisionsEnabled"]
       88 DUPCLOSURE                       R9 K40 [PROTO_11]
       89 SETTABLEKS                       R9 R7 K41 ["areConstraintsEnabled"]
       91 DUPCLOSURE                       R9 K42 [PROTO_12]
       92 SETTABLEKS                       R9 R7 K43 ["setConstraintsEnabled"]
       94 DUPCLOSURE                       R9 K44 [PROTO_13]
       95 SETTABLEKS                       R9 R7 K45 ["areConstraintDetailsShown"]
       97 DUPCLOSURE                       R9 K46 [PROTO_14]
       98 SETTABLEKS                       R9 R7 K47 ["setConstraintDetailsShown"]
      100 DUPCLOSURE                       R9 K48 [PROTO_15]
      101 SETTABLEKS                       R9 R7 K49 ["shouldDrawConstraintsOnTop"]
      103 DUPCLOSURE                       R9 K50 [PROTO_16]
      104 SETTABLEKS                       R9 R7 K51 ["setDrawConstraintsOnTop"]
      106 DUPCLOSURE                       R9 K52 [PROTO_17]
      107 SETTABLEKS                       R9 R7 K53 ["shouldJoinSurfaces"]
      109 DUPCLOSURE                       R9 K54 [PROTO_18]
      110 SETTABLEKS                       R9 R7 K55 ["setJoinSurfaces"]
      112 DUPCLOSURE                       R9 K56 [PROTO_19]
      113 SETTABLEKS                       R9 R7 K57 ["getShowBoundingBox"]
      115 DUPCLOSURE                       R9 K58 [PROTO_20]
      116 SETTABLEKS                       R9 R7 K59 ["getShowOutline"]
      118 DUPCLOSURE                       R9 K60 [PROTO_21]
      119 SETTABLEKS                       R9 R7 K61 ["shouldShowHover"]
      121 DUPCLOSURE                       R9 K62 [PROTO_22]
      122 SETTABLEKS                       R9 R7 K63 ["shouldAnimateHover"]
      124 DUPCLOSURE                       R9 K64 [PROTO_23]
      125 SETTABLEKS                       R9 R7 K65 ["shouldSelectScopeByDefault"]
      127 DUPCLOSURE                       R9 K66 [PROTO_24]
      128 SETTABLEKS                       R9 R7 K67 ["getHoverAnimationSpeedInSeconds"]
      130 DUPCLOSURE                       R9 K68 [PROTO_25]
      131 SETTABLEKS                       R9 R7 K69 ["getHoverBoxColor"]
      133 DUPCLOSURE                       R9 K70 [PROTO_26]
      134 SETTABLEKS                       R9 R7 K71 ["getHoverThickness"]
      136 DUPCLOSURE                       R9 K72 [PROTO_27]
      137 SETTABLEKS                       R9 R7 K73 ["getHoverLineThickness"]
      139 DUPCLOSURE                       R9 K74 [PROTO_28]
      140 SETTABLEKS                       R9 R7 K75 ["getSelectionBoxColor"]
      142 DUPCLOSURE                       R9 K76 [PROTO_29]
      143 SETTABLEKS                       R9 R7 K77 ["useBoundingBoxMoveHandles"]
      145 DUPCLOSURE                       R9 K78 [PROTO_30]
      146 SETTABLEKS                       R9 R7 K79 ["getGeometrySnapColor"]
      148 DUPCLOSURE                       R9 K80 [PROTO_31]
      149 SETTABLEKS                       R9 R7 K81 ["getGridColor"]
      151 DUPCLOSURE                       R9 K82 [PROTO_32]
      152 SETTABLEKS                       R9 R7 K83 ["getChosenColor"]
      154 DUPCLOSURE                       R9 K84 [PROTO_33]
      155 CAPTURE                          VAL R4
      156 SETTABLEKS                       R9 R7 K85 ["getXAxisColor"]
      158 DUPCLOSURE                       R9 K86 [PROTO_34]
      159 CAPTURE                          VAL R4
      160 SETTABLEKS                       R9 R7 K87 ["getYAxisColor"]
      162 DUPCLOSURE                       R9 K88 [PROTO_35]
      163 CAPTURE                          VAL R4
      164 SETTABLEKS                       R9 R7 K89 ["getZAxisColor"]
      166 DUPCLOSURE                       R9 K90 [PROTO_36]
      167 CAPTURE                          VAL R4
      168 SETTABLEKS                       R9 R7 K91 ["getVAxisColor"]
      170 DUPCLOSURE                       R9 K92 [PROTO_37]
      171 SETTABLEKS                       R9 R7 K93 ["shouldShowHoverGrids"]
      173 DUPCLOSURE                       R9 K94 [PROTO_38]
      174 SETTABLEKS                       R9 R7 K95 ["shouldShowTargetGrids"]
      176 DUPCLOSURE                       R9 K96 [PROTO_39]
      177 SETTABLEKS                       R9 R7 K97 ["shouldShowPreciseInput"]
      179 DUPCLOSURE                       R9 K98 [PROTO_40]
      180 SETTABLEKS                       R9 R7 K99 ["getMajorGridIncrement"]
      182 DUPCLOSURE                       R9 K100 [PROTO_41]
      183 SETTABLEKS                       R9 R7 K101 ["getDraggerScaleFactor"]
      185 DUPCLOSURE                       R9 K102 [PROTO_42]
      186 SETTABLEKS                       R9 R7 K103 ["getDraggerLengthFactor"]
      188 DUPCLOSURE                       R9 K104 [PROTO_43]
      189 SETTABLEKS                       R9 R7 K105 ["getDraggerShowNegativeAxes"]
      191 DUPCLOSURE                       R9 K106 [PROTO_44]
      192 SETTABLEKS                       R9 R7 K107 ["getDraggerShowPlanes"]
      194 DUPCLOSURE                       R9 K108 [PROTO_45]
      195 SETTABLEKS                       R9 R7 K109 ["getDraggerShowTrackball"]
      197 DUPCLOSURE                       R9 K110 [PROTO_46]
      198 SETTABLEKS                       R9 R7 K111 ["getDraggerShowWhileDragging"]
      200 DUPCLOSURE                       R9 K112 [PROTO_47]
      201 SETTABLEKS                       R9 R7 K113 ["getDraggerShowAxisTicks"]
      203 DUPCLOSURE                       R9 K114 [PROTO_48]
      204 SETTABLEKS                       R9 R7 K115 ["getTiltRotateDuration"]
      206 DUPCLOSURE                       R9 K116 [PROTO_49]
      207 SETTABLEKS                       R9 R7 K117 ["getMaxSoftSnaps"]
      209 DUPCLOSURE                       R9 K118 [PROTO_50]
      210 SETTABLEKS                       R9 R7 K119 ["getSoftSnapMarginFactor"]
      212 DUPCLOSURE                       R9 K120 [PROTO_51]
      213 SETTABLEKS                       R9 R7 K121 ["getSummonMarginFactor"]
      215 DUPCLOSURE                       R9 K122 [PROTO_52]
      216 SETTABLEKS                       R9 R7 K123 ["getCameraCFrame"]
      218 DUPCLOSURE                       R9 K124 [PROTO_53]
      219 SETTABLEKS                       R9 R7 K125 ["getCamera"]
      221 DUPCLOSURE                       R9 K126 [PROTO_54]
      222 SETTABLEKS                       R9 R7 K127 ["setCamera"]
      224 DUPCLOSURE                       R9 K128 [PROTO_55]
      225 CAPTURE                          VAL R8
      226 SETTABLEKS                       R9 R7 K129 ["getHandleScale"]
      228 DUPCLOSURE                       R9 K130 [PROTO_56]
      229 SETTABLEKS                       R9 R7 K131 ["getMouseUnitRay"]
      231 DUPCLOSURE                       R9 K132 [PROTO_57]
      232 SETTABLEKS                       R9 R7 K133 ["getMouseRay"]
      234 DUPCLOSURE                       R9 K134 [PROTO_58]
      235 SETTABLEKS                       R9 R7 K135 ["getMouseLocation"]
      237 DUPCLOSURE                       R9 K136 [PROTO_59]
      238 SETTABLEKS                       R9 R7 K137 ["setMouseLocation"]
      240 DUPCLOSURE                       R9 K138 [PROTO_60]
      241 SETTABLEKS                       R9 R7 K139 ["viewportPointToRay"]
      243 DUPCLOSURE                       R9 K140 [PROTO_61]
      244 SETTABLEKS                       R9 R7 K141 ["worldToViewportPoint"]
      246 DUPCLOSURE                       R9 K142 [PROTO_62]
      247 SETTABLEKS                       R9 R7 K143 ["getViewportSize"]
      249 DUPCLOSURE                       R9 K144 [PROTO_63]
      250 SETTABLEKS                       R9 R7 K145 ["setMouseIcon"]
      252 DUPCLOSURE                       R9 K146 [PROTO_64]
      253 SETTABLEKS                       R9 R7 K147 ["expectMouseIcon"]
      255 DUPCLOSURE                       R9 K148 [PROTO_65]
      256 SETTABLEKS                       R9 R7 K149 ["getSelection"]
      258 DUPCLOSURE                       R9 K150 [PROTO_66]
      259 SETTABLEKS                       R9 R7 K151 ["isSimulating"]
      261 DUPCLOSURE                       R9 K152 [PROTO_67]
      262 SETTABLEKS                       R9 R7 K153 ["setSimulating"]
      264 DUPCLOSURE                       R9 K154 [PROTO_68]
      265 SETTABLEKS                       R9 R7 K155 ["isTabKeyDown"]
      267 DUPCLOSURE                       R9 K156 [PROTO_69]
      268 SETTABLEKS                       R9 R7 K157 ["isAltKeyDown"]
      270 DUPCLOSURE                       R9 K158 [PROTO_70]
      271 SETTABLEKS                       R9 R7 K159 ["isCtrlKeyDown"]
      273 DUPCLOSURE                       R9 K160 [PROTO_71]
      274 SETTABLEKS                       R9 R7 K161 ["isShiftKeyDown"]
      276 DUPCLOSURE                       R9 K162 [PROTO_72]
      277 SETTABLEKS                       R9 R7 K163 ["getNavigationModel"]
      279 DUPCLOSURE                       R9 K164 [PROTO_73]
      280 SETTABLEKS                       R9 R7 K165 ["setNavigationModel"]
      282 DUPCLOSURE                       R9 K166 [PROTO_74]
      283 SETTABLEKS                       R9 R7 K167 ["setNewCameraControlsBetaUpdate"]
      285 DUPCLOSURE                       R9 K168 [PROTO_75]
      286 SETTABLEKS                       R9 R7 K169 ["shouldExtendSelection"]
      288 DUPCLOSURE                       R9 K170 [PROTO_76]
      289 SETTABLEKS                       R9 R7 K171 ["setCtrlAltShift"]
      291 DUPCLOSURE                       R9 K172 [PROTO_77]
      292 SETTABLEKS                       R9 R7 K173 ["setTab"]
      294 DUPCLOSURE                       R9 K174 [PROTO_78]
      295 SETTABLEKS                       R9 R7 K175 ["getGridSize"]
      297 DUPCLOSURE                       R9 K176 [PROTO_79]
      298 SETTABLEKS                       R9 R7 K177 ["getGridSnapEnabled"]
      300 DUPCLOSURE                       R9 K178 [PROTO_80]
      301 SETTABLEKS                       R9 R7 K179 ["setPartSnapEnabled"]
      303 DUPCLOSURE                       R9 K180 [PROTO_81]
      304 SETTABLEKS                       R9 R7 K181 ["getPartSnapEnabled"]
      306 DUPCLOSURE                       R9 K182 [PROTO_82]
      307 SETTABLEKS                       R9 R7 K183 ["shouldPartSnap"]
      309 DUPCLOSURE                       R9 K184 [PROTO_83]
      310 SETTABLEKS                       R9 R7 K185 ["shouldGridSnap"]
      312 DUPCLOSURE                       R9 K186 [PROTO_84]
      313 SETTABLEKS                       R9 R7 K187 ["shouldAngleSnap"]
      315 DUPCLOSURE                       R9 K188 [PROTO_85]
      316 SETTABLEKS                       R9 R7 K189 ["snapToGridSize"]
      318 DUPCLOSURE                       R9 K190 [PROTO_86]
      319 SETTABLEKS                       R9 R7 K191 ["getRotateIncrement"]
      321 DUPCLOSURE                       R9 K192 [PROTO_87]
      322 SETTABLEKS                       R9 R7 K193 ["setGridSnap"]
      324 DUPCLOSURE                       R9 K194 [PROTO_88]
      325 SETTABLEKS                       R9 R7 K195 ["setRotateSnap"]
      327 DUPCLOSURE                       R9 K196 [PROTO_89]
      328 CAPTURE                          VAL R5
      329 SETTABLEKS                       R9 R7 K197 ["getAnalytics"]
      331 DUPCLOSURE                       R9 K198 [PROTO_90]
      332 CAPTURE                          VAL R0
      333 SETTABLEKS                       R9 R7 K199 ["gizmoRaycast"]
      335 DUPCLOSURE                       R9 K200 [PROTO_91]
      336 SETTABLEKS                       R9 R7 K201 ["setInsertPoint"]
      338 DUPCLOSURE                       R9 K202 [PROTO_92]
      339 SETTABLEKS                       R9 R7 K203 ["expectInsertPoint"]
      341 DUPCLOSURE                       R9 K204 [PROTO_93]
      342 SETTABLEKS                       R9 R7 K205 ["shouldShowActiveInstanceHighlight"]
      344 DUPCLOSURE                       R9 K206 [PROTO_94]
      345 SETTABLEKS                       R9 R7 K207 ["shouldAlignDraggedObjects"]
      347 DUPCLOSURE                       R9 K208 [PROTO_95]
      348 SETTABLEKS                       R9 R7 K209 ["setAlignDraggedObjects"]
      350 DUPCLOSURE                       R9 K210 [PROTO_96]
      351 CAPTURE                          VAL R1
      352 SETTABLEKS                       R9 R7 K211 ["addUndoWaypoint"]
      354 DUPCLOSURE                       R9 K212 [PROTO_97]
      355 SETTABLEKS                       R9 R7 K213 ["expectMostRecentUndoWaypoint"]
      357 DUPCLOSURE                       R9 K214 [PROTO_98]
      358 CAPTURE                          VAL R1
      359 SETTABLEKS                       R9 R7 K215 ["expectAndUndo"]
      361 DUPCLOSURE                       R9 K216 [PROTO_99]
      362 SETTABLEKS                       R9 R7 K217 ["getText"]
      364 DUPCLOSURE                       R9 K218 [PROTO_100]
      365 CAPTURE                          VAL R4
      366 SETTABLEKS                       R9 R7 K219 ["getThemeColor"]
      368 DUPCLOSURE                       R9 K220 [PROTO_101]
      369 SETTABLEKS                       R9 R7 K221 ["getTheme"]
      371 DUPCLOSURE                       R9 K222 [PROTO_102]
      372 SETTABLEKS                       R9 R7 K223 ["getSetting"]
      374 DUPCLOSURE                       R9 K224 [PROTO_103]
      375 SETTABLEKS                       R9 R7 K225 ["setSetting"]
      377 DUPCLOSURE                       R9 K226 [PROTO_104]
      378 SETTABLEKS                       R9 R7 K227 ["setPivotIndicator"]
      380 RETURN                           R7 1
