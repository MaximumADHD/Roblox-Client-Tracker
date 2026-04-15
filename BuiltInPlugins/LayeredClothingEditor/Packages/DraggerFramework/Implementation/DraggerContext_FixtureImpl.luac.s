PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL1                        ASSERT R4 ; [+2]
        5 GETIMPORT                        R3 K1 [assert]
        7 CALL                             R3 1 0
        8 DUPTABLE                         R4 K30 [{"_realCamera", "_workspace", "_guiTarget", "_useLocalSpace", "_areCollisionsEnabled", "_areConstraintsEnabled", "_areConstraintDetailsShown", "_drawConstraintsOnTop", "_shouldJoinSurfaces", "_shouldAlignDraggedObjects", "_mouseLocation", "_mouseUnitRay", "_cameraCFrame", "_cameraSize", "_mouseIcon", "_isSimulating", "_gridSize", "_gridSnapEnabled", "_partSnapEnabled", "_rotateIncrement", "_rotateSnapEnabled", "_selection", "_undoWaypoints", "_isTabDown", "_isAltDown", "_isCtrlDown", "_isShiftDown", "_settingValues"}]
        9 JUMPIFEQKB                       R2 TRUE ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 SETTABLEKS                       R5 R4 K2 ["_realCamera"]
       15 JUMPIFNOTEQKB                    R2 TRUE ; [+8]
       17 GETIMPORT                        R5 K32 [game]
       19 LOADK                            R7 K33 ["Workspace"]
       20 NAMECALL                         R5 R5 K34 ["GetService"]
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
       50 GETIMPORT                        R5 K37 [Vector2.new]
       52 CALL                             R5 0 1
       53 SETTABLEKS                       R5 R4 K12 ["_mouseLocation"]
       55 GETIMPORT                        R5 K39 [Ray.new]
       57 FASTCALL                         VECTOR ; [+2]
       58 GETIMPORT                        R6 K41 [Vector3.new]
       60 CALL                             R6 0 1
       61 FASTCALL                         VECTOR ; [+2]
       62 GETIMPORT                        R7 K41 [Vector3.new]
       64 CALL                             R7 0 1
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R4 K13 ["_mouseUnitRay"]
       68 GETIMPORT                        R5 K43 [CFrame.new]
       70 CALL                             R5 0 1
       71 SETTABLEKS                       R5 R4 K14 ["_cameraCFrame"]
       73 LOADN                            R5 10
       74 SETTABLEKS                       R5 R4 K15 ["_cameraSize"]
       76 LOADK                            R5 K44 [""]
       77 SETTABLEKS                       R5 R4 K16 ["_mouseIcon"]
       79 LOADB                            R5 0
       80 SETTABLEKS                       R5 R4 K17 ["_isSimulating"]
       82 LOADN                            R5 1
       83 SETTABLEKS                       R5 R4 K18 ["_gridSize"]
       85 LOADB                            R5 1
       86 SETTABLEKS                       R5 R4 K19 ["_gridSnapEnabled"]
       88 LOADB                            R5 1
       89 SETTABLEKS                       R5 R4 K20 ["_partSnapEnabled"]
       91 LOADK                            R5 K45 [0.523598775598299]
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
      119 GETUPVAL                         R5 0
      120 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
      122 GETIMPORT                        R3 K47 [setmetatable]
      124 CALL                             R3 2 1
      125 RETURN                           R3 1

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
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_34:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_35:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_36:
        0 LOADN                            R1 5
        1 RETURN                           R1 1

PROTO_37:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_38:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_39:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_40:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_41:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_42:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_43:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_44:
        0 LOADK                            R1 K0 [0.13]
        1 RETURN                           R1 1

PROTO_45:
        0 LOADN                            R1 100
        1 RETURN                           R1 1

PROTO_46:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_47:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["_realCamera"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R3 R0 K1 ["_workspace"]
        5 GETTABLEKS                       R2 R3 K2 ["CurrentCamera"]
        7 GETTABLEKS                       R1 R2 K3 ["CFrame"]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K4 ["_cameraCFrame"]
       12 RETURN                           R1 1

PROTO_49:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R1 R2 K1 ["CurrentCamera"]
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_50:
        0 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETTABLEKS                       R4 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R3 R4 K1 ["CurrentCamera"]
        7 SETTABLEKS                       R1 R3 K2 ["CFrame"]
        9 SETTABLEKS                       R1 R0 K3 ["_cameraCFrame"]
       11 ORK                              R3 R2 K4 [10]
       12 SETTABLEKS                       R3 R0 K5 ["_cameraSize"]
       14 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R2 R0 K0 ["_realCamera"]
        2 JUMPIFNOT                        R2 ; [+29]
        3 NAMECALL                         R2 R0 K1 ["getCameraCFrame"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R2 K2 ["Position"]
        8 SUB                              R3 R1 R4
        9 GETTABLEKS                       R5 R2 K3 ["LookVector"]
       11 NAMECALL                         R3 R3 K4 ["Dot"]
       13 CALL                             R3 2 1
       14 GETTABLEKS                       R8 R0 K5 ["_workspace"]
       16 GETTABLEKS                       R7 R8 K6 ["CurrentCamera"]
       18 GETTABLEKS                       R6 R7 K7 ["FieldOfView"]
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

PROTO_52:
        0 GETTABLEKS                       R3 R0 K0 ["_mouseLocation"]
        2 NAMECALL                         R1 R0 K1 ["viewportPointToRay"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_53:
        0 NAMECALL                         R1 R0 K0 ["getMouseUnitRay"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [Ray.new]
        5 GETTABLEKS                       R3 R1 K4 ["Origin"]
        7 GETTABLEKS                       R5 R1 K6 ["Direction"]
        9 MULK                             R4 R5 K5 [10000]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_54:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseLocation"]
        2 RETURN                           R1 1

PROTO_55:
        0 SETTABLEKS                       R1 R0 K0 ["_mouseLocation"]
        2 RETURN                           R0 0

PROTO_56:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R2 R3 K1 ["CurrentCamera"]
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
       45 GETTABLEKS                       R8 R0 K8 ["_cameraCFrame"]
       47 GETTABLEKS                       R7 R8 K15 ["LookVector"]
       49 CALL                             R5 2 -1
       50 RETURN                           R5 -1

PROTO_57:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R2 R3 K1 ["CurrentCamera"]
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

PROTO_58:
        0 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R2 R3 K1 ["CurrentCamera"]
        7 GETTABLEKS                       R1 R2 K2 ["ViewportSize"]
        9 RETURN                           R1 1
       10 GETIMPORT                        R1 K5 [Vector2.new]
       12 LOADN                            R2 232
       13 LOADN                            R3 232
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_59:
        0 SETTABLEKS                       R1 R0 K0 ["_mouseIcon"]
        2 RETURN                           R0 0

PROTO_60:
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

PROTO_61:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_62:
        0 GETTABLEKS                       R1 R0 K0 ["_isSimulating"]
        2 RETURN                           R1 1

PROTO_63:
        0 SETTABLEKS                       R1 R0 K0 ["_isSimulating"]
        2 RETURN                           R0 0

PROTO_64:
        0 GETTABLEKS                       R1 R0 K0 ["_isTabDown"]
        2 RETURN                           R1 1

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["_isAltDown"]
        2 RETURN                           R1 1

PROTO_66:
        0 GETTABLEKS                       R1 R0 K0 ["_isCtrlDown"]
        2 RETURN                           R1 1

PROTO_67:
        0 GETTABLEKS                       R1 R0 K0 ["_isShiftDown"]
        2 RETURN                           R1 1

PROTO_68:
        0 NAMECALL                         R1 R0 K0 ["isCtrlKeyDown"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+3]
        4 NAMECALL                         R1 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R1 1 1
        7 RETURN                           R1 1

PROTO_69:
        0 SETTABLEKS                       R1 R0 K0 ["_isCtrlDown"]
        2 SETTABLEKS                       R2 R0 K1 ["_isAltDown"]
        4 SETTABLEKS                       R3 R0 K2 ["_isShiftDown"]
        6 RETURN                           R0 0

PROTO_70:
        0 SETTABLEKS                       R1 R0 K0 ["_isTabDown"]
        2 RETURN                           R0 0

PROTO_71:
        0 GETTABLEKS                       R1 R0 K0 ["_gridSize"]
        2 RETURN                           R1 1

PROTO_72:
        0 GETTABLEKS                       R1 R0 K0 ["_gridSnapEnabled"]
        2 RETURN                           R1 1

PROTO_73:
        0 SETTABLEKS                       R1 R0 K0 ["_partSnapEnabled"]
        2 RETURN                           R0 0

PROTO_74:
        0 GETTABLEKS                       R1 R0 K0 ["_partSnapEnabled"]
        2 RETURN                           R1 1

PROTO_75:
        0 NAMECALL                         R1 R0 K0 ["getPartSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_76:
        0 NAMECALL                         R1 R0 K0 ["getGridSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_77:
        0 GETTABLEKS                       R1 R0 K0 ["_rotateSnapEnabled"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        5 CALL                             R2 1 1
        6 NOT                              R1 R2
        7 RETURN                           R1 1

PROTO_78:
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

PROTO_79:
        0 GETTABLEKS                       R1 R0 K0 ["_rotateIncrement"]
        2 RETURN                           R1 1

PROTO_80:
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

PROTO_81:
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

PROTO_82:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_83:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 NAMECALL                         R4 R4 K0 ["GizmoRaycast"]
        6 CALL                             R4 4 -1
        7 RETURN                           R4 -1

PROTO_84:
        0 SETTABLEKS                       R1 R0 K0 ["_insertPoint"]
        2 RETURN                           R0 0

PROTO_85:
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

PROTO_86:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_87:
        0 GETTABLEKS                       R1 R0 K0 ["_shouldAlignDraggedObjects"]
        2 RETURN                           R1 1

PROTO_88:
        0 SETTABLEKS                       R1 R0 K0 ["_shouldAlignDraggedObjects"]
        2 RETURN                           R0 0

PROTO_89:
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

PROTO_90:
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

PROTO_91:
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

PROTO_92:
        0 JUMPIFNOT                        R3 ; [+12]
        1 LOADK                            R5 K0 ["%s.%s (%s)"]
        2 GETTABLEKS                       R4 R5 K1 ["format"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 GETIMPORT                        R7 K4 [table.concat]
        8 MOVE                             R8 R3
        9 LOADK                            R9 K5 [","]
       10 CALL                             R7 2 -1
       11 CALL                             R4 -1 -1
       12 RETURN                           R4 -1
       13 LOADK                            R5 K6 ["%s.%s"]
       14 GETTABLEKS                       R4 R5 K1 ["format"]
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 CALL                             R4 2 -1
       19 RETURN                           R4 -1

PROTO_93:
        0 GETIMPORT                        R3 K3 [Enum.StudioStyleGuideColor.MainBackground]
        2 JUMPIFNOTEQ                      R1 R3 ; [+5]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K4 ["WHITE"]
        7 RETURN                           R3 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K5 ["BLACK"]
       11 RETURN                           R3 1

PROTO_94:
        0 LOADK                            R1 K0 ["Dark"]
        1 RETURN                           R1 1

PROTO_95:
        0 GETTABLEKS                       R3 R0 K0 ["_settingValues"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_96:
        0 GETTABLEKS                       R3 R0 K0 ["_settingValues"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_97:
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
       13 GETIMPORT                        R4 K6 [script]
       15 GETTABLEKS                       R3 R4 K7 ["Parent"]
       17 GETTABLEKS                       R2 R3 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R5 R2 K10 ["Utility"]
       23 GETTABLEKS                       R4 R5 K11 ["Colors"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R6 R2 K10 ["Utility"]
       30 GETTABLEKS                       R5 R6 K12 ["MockAnalytics"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R7 R2 K13 ["Flags"]
       37 GETTABLEKS                       R6 R7 K14 ["getFFlagNextGenDraggers"]
       39 CALL                             R5 1 1
       40 NEWTABLE                         R6 128 0
       42 SETTABLEKS                       R6 R6 K15 ["__index"]
       44 MOVE                             R8 R5
       45 CALL                             R8 0 1
       46 JUMPIFNOT                        R8 ; [+2]
       47 LOADK                            R7 K16 [0.033]
       48 JUMP                             ; [+1]
       49 LOADK                            R7 K17 [0.05]
       50 DUPCLOSURE                       R8 K18 [PROTO_0]
       51 CAPTURE                          VAL R6
       52 SETTABLEKS                       R8 R6 K19 ["new"]
       54 DUPCLOSURE                       R8 K20 [PROTO_1]
       55 SETTABLEKS                       R8 R6 K21 ["getGuiParent"]
       57 DUPCLOSURE                       R8 K22 [PROTO_2]
       58 SETTABLEKS                       R8 R6 K23 ["setHoverInstance"]
       60 DUPCLOSURE                       R8 K24 [PROTO_4]
       61 SETTABLEKS                       R8 R6 K25 ["onInstanceHovered"]
       63 DUPCLOSURE                       R8 K26 [PROTO_5]
       64 SETTABLEKS                       R8 R6 K27 ["invokeInstanceHovered"]
       66 DUPCLOSURE                       R8 K28 [PROTO_6]
       67 SETTABLEKS                       R8 R6 K29 ["expectHoverInstance"]
       69 DUPCLOSURE                       R8 K30 [PROTO_7]
       70 SETTABLEKS                       R8 R6 K31 ["shouldUseLocalSpace"]
       72 DUPCLOSURE                       R8 K32 [PROTO_8]
       73 SETTABLEKS                       R8 R6 K33 ["setUseLocalSpace"]
       75 DUPCLOSURE                       R8 K34 [PROTO_9]
       76 SETTABLEKS                       R8 R6 K35 ["areCollisionsEnabled"]
       78 DUPCLOSURE                       R8 K36 [PROTO_10]
       79 SETTABLEKS                       R8 R6 K37 ["setCollisionsEnabled"]
       81 DUPCLOSURE                       R8 K38 [PROTO_11]
       82 SETTABLEKS                       R8 R6 K39 ["areConstraintsEnabled"]
       84 DUPCLOSURE                       R8 K40 [PROTO_12]
       85 SETTABLEKS                       R8 R6 K41 ["setConstraintsEnabled"]
       87 DUPCLOSURE                       R8 K42 [PROTO_13]
       88 SETTABLEKS                       R8 R6 K43 ["areConstraintDetailsShown"]
       90 DUPCLOSURE                       R8 K44 [PROTO_14]
       91 SETTABLEKS                       R8 R6 K45 ["setConstraintDetailsShown"]
       93 DUPCLOSURE                       R8 K46 [PROTO_15]
       94 SETTABLEKS                       R8 R6 K47 ["shouldDrawConstraintsOnTop"]
       96 DUPCLOSURE                       R8 K48 [PROTO_16]
       97 SETTABLEKS                       R8 R6 K49 ["setDrawConstraintsOnTop"]
       99 DUPCLOSURE                       R8 K50 [PROTO_17]
      100 SETTABLEKS                       R8 R6 K51 ["shouldJoinSurfaces"]
      102 DUPCLOSURE                       R8 K52 [PROTO_18]
      103 SETTABLEKS                       R8 R6 K53 ["setJoinSurfaces"]
      105 DUPCLOSURE                       R8 K54 [PROTO_19]
      106 SETTABLEKS                       R8 R6 K55 ["getShowBoundingBox"]
      108 DUPCLOSURE                       R8 K56 [PROTO_20]
      109 SETTABLEKS                       R8 R6 K57 ["getShowOutline"]
      111 DUPCLOSURE                       R8 K58 [PROTO_21]
      112 SETTABLEKS                       R8 R6 K59 ["shouldShowHover"]
      114 DUPCLOSURE                       R8 K60 [PROTO_22]
      115 SETTABLEKS                       R8 R6 K61 ["shouldAnimateHover"]
      117 DUPCLOSURE                       R8 K62 [PROTO_23]
      118 SETTABLEKS                       R8 R6 K63 ["shouldSelectScopeByDefault"]
      120 DUPCLOSURE                       R8 K64 [PROTO_24]
      121 SETTABLEKS                       R8 R6 K65 ["getHoverAnimationSpeedInSeconds"]
      123 DUPCLOSURE                       R8 K66 [PROTO_25]
      124 SETTABLEKS                       R8 R6 K67 ["getHoverBoxColor"]
      126 DUPCLOSURE                       R8 K68 [PROTO_26]
      127 SETTABLEKS                       R8 R6 K69 ["getHoverThickness"]
      129 DUPCLOSURE                       R8 K70 [PROTO_27]
      130 SETTABLEKS                       R8 R6 K71 ["getHoverLineThickness"]
      132 DUPCLOSURE                       R8 K72 [PROTO_28]
      133 SETTABLEKS                       R8 R6 K73 ["getSelectionBoxColor"]
      135 DUPCLOSURE                       R8 K74 [PROTO_29]
      136 SETTABLEKS                       R8 R6 K75 ["useBoundingBoxMoveHandles"]
      138 DUPCLOSURE                       R8 K76 [PROTO_30]
      139 SETTABLEKS                       R8 R6 K77 ["getGeometrySnapColor"]
      141 DUPCLOSURE                       R8 K78 [PROTO_31]
      142 SETTABLEKS                       R8 R6 K79 ["getGridColor"]
      144 DUPCLOSURE                       R8 K80 [PROTO_32]
      145 SETTABLEKS                       R8 R6 K81 ["getChosenColor"]
      147 DUPCLOSURE                       R8 K82 [PROTO_33]
      148 SETTABLEKS                       R8 R6 K83 ["shouldShowHoverGrids"]
      150 DUPCLOSURE                       R8 K84 [PROTO_34]
      151 SETTABLEKS                       R8 R6 K85 ["shouldShowTargetGrids"]
      153 DUPCLOSURE                       R8 K86 [PROTO_35]
      154 SETTABLEKS                       R8 R6 K87 ["shouldShowPreciseInput"]
      156 DUPCLOSURE                       R8 K88 [PROTO_36]
      157 SETTABLEKS                       R8 R6 K89 ["getMajorGridIncrement"]
      159 DUPCLOSURE                       R8 K90 [PROTO_37]
      160 SETTABLEKS                       R8 R6 K91 ["getDraggerScaleFactor"]
      162 DUPCLOSURE                       R8 K92 [PROTO_38]
      163 SETTABLEKS                       R8 R6 K93 ["getDraggerLengthFactor"]
      165 DUPCLOSURE                       R8 K94 [PROTO_39]
      166 SETTABLEKS                       R8 R6 K95 ["getDraggerShowNegativeAxes"]
      168 DUPCLOSURE                       R8 K96 [PROTO_40]
      169 SETTABLEKS                       R8 R6 K97 ["getDraggerShowPlanes"]
      171 DUPCLOSURE                       R8 K98 [PROTO_41]
      172 SETTABLEKS                       R8 R6 K99 ["getDraggerShowTrackball"]
      174 DUPCLOSURE                       R8 K100 [PROTO_42]
      175 SETTABLEKS                       R8 R6 K101 ["getDraggerShowWhileDragging"]
      177 DUPCLOSURE                       R8 K102 [PROTO_43]
      178 SETTABLEKS                       R8 R6 K103 ["getDraggerShowAxisTicks"]
      180 DUPCLOSURE                       R8 K104 [PROTO_44]
      181 SETTABLEKS                       R8 R6 K105 ["getTiltRotateDuration"]
      183 DUPCLOSURE                       R8 K106 [PROTO_45]
      184 SETTABLEKS                       R8 R6 K107 ["getMaxSoftSnaps"]
      186 DUPCLOSURE                       R8 K108 [PROTO_46]
      187 SETTABLEKS                       R8 R6 K109 ["getSoftSnapMarginFactor"]
      189 DUPCLOSURE                       R8 K110 [PROTO_47]
      190 SETTABLEKS                       R8 R6 K111 ["getSummonMarginFactor"]
      192 DUPCLOSURE                       R8 K112 [PROTO_48]
      193 SETTABLEKS                       R8 R6 K113 ["getCameraCFrame"]
      195 DUPCLOSURE                       R8 K114 [PROTO_49]
      196 SETTABLEKS                       R8 R6 K115 ["getCamera"]
      198 DUPCLOSURE                       R8 K116 [PROTO_50]
      199 SETTABLEKS                       R8 R6 K117 ["setCamera"]
      201 DUPCLOSURE                       R8 K118 [PROTO_51]
      202 CAPTURE                          VAL R7
      203 SETTABLEKS                       R8 R6 K119 ["getHandleScale"]
      205 DUPCLOSURE                       R8 K120 [PROTO_52]
      206 SETTABLEKS                       R8 R6 K121 ["getMouseUnitRay"]
      208 DUPCLOSURE                       R8 K122 [PROTO_53]
      209 SETTABLEKS                       R8 R6 K123 ["getMouseRay"]
      211 DUPCLOSURE                       R8 K124 [PROTO_54]
      212 SETTABLEKS                       R8 R6 K125 ["getMouseLocation"]
      214 DUPCLOSURE                       R8 K126 [PROTO_55]
      215 SETTABLEKS                       R8 R6 K127 ["setMouseLocation"]
      217 DUPCLOSURE                       R8 K128 [PROTO_56]
      218 SETTABLEKS                       R8 R6 K129 ["viewportPointToRay"]
      220 DUPCLOSURE                       R8 K130 [PROTO_57]
      221 SETTABLEKS                       R8 R6 K131 ["worldToViewportPoint"]
      223 DUPCLOSURE                       R8 K132 [PROTO_58]
      224 SETTABLEKS                       R8 R6 K133 ["getViewportSize"]
      226 DUPCLOSURE                       R8 K134 [PROTO_59]
      227 SETTABLEKS                       R8 R6 K135 ["setMouseIcon"]
      229 DUPCLOSURE                       R8 K136 [PROTO_60]
      230 SETTABLEKS                       R8 R6 K137 ["expectMouseIcon"]
      232 DUPCLOSURE                       R8 K138 [PROTO_61]
      233 SETTABLEKS                       R8 R6 K139 ["getSelection"]
      235 DUPCLOSURE                       R8 K140 [PROTO_62]
      236 SETTABLEKS                       R8 R6 K141 ["isSimulating"]
      238 DUPCLOSURE                       R8 K142 [PROTO_63]
      239 SETTABLEKS                       R8 R6 K143 ["setSimulating"]
      241 DUPCLOSURE                       R8 K144 [PROTO_64]
      242 SETTABLEKS                       R8 R6 K145 ["isTabKeyDown"]
      244 DUPCLOSURE                       R8 K146 [PROTO_65]
      245 SETTABLEKS                       R8 R6 K147 ["isAltKeyDown"]
      247 DUPCLOSURE                       R8 K148 [PROTO_66]
      248 SETTABLEKS                       R8 R6 K149 ["isCtrlKeyDown"]
      250 DUPCLOSURE                       R8 K150 [PROTO_67]
      251 SETTABLEKS                       R8 R6 K151 ["isShiftKeyDown"]
      253 DUPCLOSURE                       R8 K152 [PROTO_68]
      254 SETTABLEKS                       R8 R6 K153 ["shouldExtendSelection"]
      256 DUPCLOSURE                       R8 K154 [PROTO_69]
      257 SETTABLEKS                       R8 R6 K155 ["setCtrlAltShift"]
      259 DUPCLOSURE                       R8 K156 [PROTO_70]
      260 SETTABLEKS                       R8 R6 K157 ["setTab"]
      262 DUPCLOSURE                       R8 K158 [PROTO_71]
      263 SETTABLEKS                       R8 R6 K159 ["getGridSize"]
      265 DUPCLOSURE                       R8 K160 [PROTO_72]
      266 SETTABLEKS                       R8 R6 K161 ["getGridSnapEnabled"]
      268 DUPCLOSURE                       R8 K162 [PROTO_73]
      269 SETTABLEKS                       R8 R6 K163 ["setPartSnapEnabled"]
      271 DUPCLOSURE                       R8 K164 [PROTO_74]
      272 SETTABLEKS                       R8 R6 K165 ["getPartSnapEnabled"]
      274 DUPCLOSURE                       R8 K166 [PROTO_75]
      275 SETTABLEKS                       R8 R6 K167 ["shouldPartSnap"]
      277 DUPCLOSURE                       R8 K168 [PROTO_76]
      278 SETTABLEKS                       R8 R6 K169 ["shouldGridSnap"]
      280 DUPCLOSURE                       R8 K170 [PROTO_77]
      281 SETTABLEKS                       R8 R6 K171 ["shouldAngleSnap"]
      283 DUPCLOSURE                       R8 K172 [PROTO_78]
      284 SETTABLEKS                       R8 R6 K173 ["snapToGridSize"]
      286 DUPCLOSURE                       R8 K174 [PROTO_79]
      287 SETTABLEKS                       R8 R6 K175 ["getRotateIncrement"]
      289 DUPCLOSURE                       R8 K176 [PROTO_80]
      290 SETTABLEKS                       R8 R6 K177 ["setGridSnap"]
      292 DUPCLOSURE                       R8 K178 [PROTO_81]
      293 SETTABLEKS                       R8 R6 K179 ["setRotateSnap"]
      295 DUPCLOSURE                       R8 K180 [PROTO_82]
      296 CAPTURE                          VAL R4
      297 SETTABLEKS                       R8 R6 K181 ["getAnalytics"]
      299 DUPCLOSURE                       R8 K182 [PROTO_83]
      300 CAPTURE                          VAL R0
      301 SETTABLEKS                       R8 R6 K183 ["gizmoRaycast"]
      303 DUPCLOSURE                       R8 K184 [PROTO_84]
      304 SETTABLEKS                       R8 R6 K185 ["setInsertPoint"]
      306 DUPCLOSURE                       R8 K186 [PROTO_85]
      307 SETTABLEKS                       R8 R6 K187 ["expectInsertPoint"]
      309 DUPCLOSURE                       R8 K188 [PROTO_86]
      310 SETTABLEKS                       R8 R6 K189 ["shouldShowActiveInstanceHighlight"]
      312 DUPCLOSURE                       R8 K190 [PROTO_87]
      313 SETTABLEKS                       R8 R6 K191 ["shouldAlignDraggedObjects"]
      315 DUPCLOSURE                       R8 K192 [PROTO_88]
      316 SETTABLEKS                       R8 R6 K193 ["setAlignDraggedObjects"]
      318 DUPCLOSURE                       R8 K194 [PROTO_89]
      319 CAPTURE                          VAL R1
      320 SETTABLEKS                       R8 R6 K195 ["addUndoWaypoint"]
      322 DUPCLOSURE                       R8 K196 [PROTO_90]
      323 SETTABLEKS                       R8 R6 K197 ["expectMostRecentUndoWaypoint"]
      325 DUPCLOSURE                       R8 K198 [PROTO_91]
      326 CAPTURE                          VAL R1
      327 SETTABLEKS                       R8 R6 K199 ["expectAndUndo"]
      329 DUPCLOSURE                       R8 K200 [PROTO_92]
      330 SETTABLEKS                       R8 R6 K201 ["getText"]
      332 DUPCLOSURE                       R8 K202 [PROTO_93]
      333 CAPTURE                          VAL R3
      334 SETTABLEKS                       R8 R6 K203 ["getThemeColor"]
      336 DUPCLOSURE                       R8 K204 [PROTO_94]
      337 SETTABLEKS                       R8 R6 K205 ["getTheme"]
      339 DUPCLOSURE                       R8 K206 [PROTO_95]
      340 SETTABLEKS                       R8 R6 K207 ["getSetting"]
      342 DUPCLOSURE                       R8 K208 [PROTO_96]
      343 SETTABLEKS                       R8 R6 K209 ["setSetting"]
      345 DUPCLOSURE                       R8 K210 [PROTO_97]
      346 SETTABLEKS                       R8 R6 K211 ["setPivotIndicator"]
      348 RETURN                           R6 1
