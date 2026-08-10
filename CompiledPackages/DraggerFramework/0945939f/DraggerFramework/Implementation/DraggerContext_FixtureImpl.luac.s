PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        6 LOADK                            R5 K0 ["Selection Missing"]
        7 GETIMPORT                        R3 K2 [assert]
        9 CALL                             R3 2 0
       10 NEWTABLE                         R4 64 0
       12 JUMPIFEQKB                       R2 TRUE ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 SETTABLEKS                       R5 R4 K3 ["_realCamera"]
       18 JUMPIFNOTEQKB                    R2 TRUE ; [+8]
       20 GETIMPORT                        R5 K5 [game]
       22 LOADK                            R7 K6 ["Workspace"]
       23 NAMECALL                         R5 R5 K7 ["GetService"]
       25 CALL                             R5 2 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K8 ["_workspace"]
       30 SETTABLEKS                       R0 R4 K9 ["_guiTarget"]
       32 LOADB                            R5 0
       33 SETTABLEKS                       R5 R4 K10 ["_useLocalSpace"]
       35 LOADB                            R5 1
       36 SETTABLEKS                       R5 R4 K11 ["_areCollisionsEnabled"]
       38 LOADB                            R5 0
       39 SETTABLEKS                       R5 R4 K12 ["_areConstraintsEnabled"]
       41 LOADB                            R5 0
       42 SETTABLEKS                       R5 R4 K13 ["_areConstraintDetailsShown"]
       44 LOADB                            R5 0
       45 SETTABLEKS                       R5 R4 K14 ["_drawConstraintsOnTop"]
       47 LOADB                            R5 1
       48 SETTABLEKS                       R5 R4 K15 ["_shouldJoinSurfaces"]
       50 LOADB                            R5 1
       51 SETTABLEKS                       R5 R4 K16 ["_shouldAlignDraggedObjects"]
       53 LOADB                            R5 0
       54 SETTABLEKS                       R5 R4 K17 ["_useBoundingBoxes"]
       56 GETIMPORT                        R5 K20 [Vector2.new]
       58 CALL                             R5 0 1
       59 SETTABLEKS                       R5 R4 K21 ["_mouseLocation"]
       61 GETIMPORT                        R5 K23 [Ray.new]
       63 FASTCALL                         VECTOR ; [+2]
       64 GETIMPORT                        R6 K25 [Vector3.new]
       66 CALL                             R6 0 1
       67 FASTCALL                         VECTOR ; [+2]
       68 GETIMPORT                        R7 K25 [Vector3.new]
       70 CALL                             R7 0 1
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K26 ["_mouseUnitRay"]
       74 GETIMPORT                        R5 K28 [CFrame.new]
       76 CALL                             R5 0 1
       77 SETTABLEKS                       R5 R4 K29 ["_cameraCFrame"]
       79 LOADN                            R5 10
       80 SETTABLEKS                       R5 R4 K30 ["_cameraSize"]
       82 LOADK                            R5 K31 [""]
       83 SETTABLEKS                       R5 R4 K32 ["_mouseIcon"]
       85 LOADB                            R5 0
       86 SETTABLEKS                       R5 R4 K33 ["_isSimulating"]
       88 LOADN                            R5 1
       89 SETTABLEKS                       R5 R4 K34 ["_gridSize"]
       91 LOADB                            R5 1
       92 SETTABLEKS                       R5 R4 K35 ["_gridSnapEnabled"]
       94 LOADB                            R5 1
       95 SETTABLEKS                       R5 R4 K36 ["_partSnapEnabled"]
       97 LOADK                            R5 K37 [0.523598775598299]
       98 SETTABLEKS                       R5 R4 K38 ["_rotateIncrement"]
      100 LOADB                            R5 1
      101 SETTABLEKS                       R5 R4 K39 ["_rotateSnapEnabled"]
      103 SETTABLEKS                       R1 R4 K40 ["_selection"]
      105 NEWTABLE                         R5 0 0
      107 SETTABLEKS                       R5 R4 K41 ["_undoWaypoints"]
      109 LOADB                            R5 0
      110 SETTABLEKS                       R5 R4 K42 ["_isTabDown"]
      112 LOADB                            R5 0
      113 SETTABLEKS                       R5 R4 K43 ["_isAltDown"]
      115 LOADB                            R5 0
      116 SETTABLEKS                       R5 R4 K44 ["_isCtrlDown"]
      118 LOADB                            R5 0
      119 SETTABLEKS                       R5 R4 K45 ["_isShiftDown"]
      121 NEWTABLE                         R5 0 0
      123 SETTABLEKS                       R5 R4 K46 ["_settingValues"]
      125 LOADK                            R5 K47 ["Dark"]
      126 SETTABLEKS                       R5 R4 K48 ["_theme"]
      128 LOADN                            R5 1
      129 SETTABLEKS                       R5 R4 K49 ["_handleScale"]
      131 GETIMPORT                        R5 K51 [Color3.new]
      133 CALL                             R5 0 1
      134 SETTABLEKS                       R5 R4 K52 ["_inactiveSelectionBoxColor"]
      136 GETIMPORT                        R5 K51 [Color3.new]
      138 CALL                             R5 0 1
      139 SETTABLEKS                       R5 R4 K53 ["_activeSelectionBoxColor"]
      141 GETUPVAL                         R5 0
      142 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
      144 GETIMPORT                        R3 K55 [setmetatable]
      146 CALL                             R3 2 1
      147 RETURN                           R3 1

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
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["You accidentally tried to pass the enum, pass a boolean status"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 SETTABLEKS                       R1 R0 K6 ["_shouldJoinSurfaces"]
       17 RETURN                           R0 0

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
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R0 K0 ["_activeSelectionBoxColor"]
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R0 K1 ["_inactiveSelectionBoxColor"]
        6 RETURN                           R2 1

PROTO_29:
        0 SETTABLEKS                       R1 R0 K0 ["_inactiveSelectionBoxColor"]
        2 SETTABLEKS                       R2 R0 K1 ["_activeSelectionBoxColor"]
        4 RETURN                           R0 0

PROTO_30:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_31:
        0 GETIMPORT                        R1 K2 [Color3.new]
        2 CALL                             R1 0 -1
        3 RETURN                           R1 -1

PROTO_32:
        0 GETIMPORT                        R1 K2 [Color3.new]
        2 CALL                             R1 0 -1
        3 RETURN                           R1 -1

PROTO_33:
        0 GETIMPORT                        R1 K2 [Color3.new]
        2 CALL                             R1 0 -1
        3 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["X_AXIS"]
        3 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Y_AXIS"]
        3 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Z_AXIS"]
        3 RETURN                           R1 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["V_AXIS"]
        3 RETURN                           R1 1

PROTO_38:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_39:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_40:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_41:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_42:
        0 LOADN                            R1 5
        1 RETURN                           R1 1

PROTO_43:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_44:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_45:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_46:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_47:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_48:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_49:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_50:
        0 LOADK                            R1 K0 [0.13]
        1 RETURN                           R1 1

PROTO_51:
        0 LOADN                            R1 100
        1 RETURN                           R1 1

PROTO_52:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_53:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_54:
        0 GETTABLEKS                       R1 R0 K0 ["_realCamera"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K1 ["_workspace"]
        5 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        7 GETTABLEKS                       R1 R1 K3 ["CFrame"]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K4 ["_cameraCFrame"]
       12 RETURN                           R1 1

PROTO_55:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R1 R1 K1 ["CurrentCamera"]
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_56:
        0 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R3 R3 K1 ["CurrentCamera"]
        7 SETTABLEKS                       R1 R3 K2 ["CFrame"]
        9 SETTABLEKS                       R1 R0 K3 ["_cameraCFrame"]
       11 ORK                              R3 R2 K4 [10]
       12 SETTABLEKS                       R3 R0 K5 ["_cameraSize"]
       14 RETURN                           R0 0

PROTO_57:
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
       32 GETTABLEKS                       R2 R0 K13 ["_handleScale"]
       34 RETURN                           R2 1

PROTO_58:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["_realCamera"]
        3 SETTABLEKS                       R1 R0 K1 ["_handleScale"]
        5 RETURN                           R0 0

PROTO_59:
        0 GETTABLEKS                       R3 R0 K0 ["_mouseLocation"]
        2 NAMECALL                         R1 R0 K1 ["viewportPointToRay"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_60:
        0 NAMECALL                         R1 R0 K0 ["getMouseUnitRay"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [Ray.new]
        5 GETTABLEKS                       R3 R1 K4 ["Origin"]
        7 GETTABLEKS                       R5 R1 K6 ["Direction"]
        9 MULK                             R4 R5 K5 [10000]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_61:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseLocation"]
        2 RETURN                           R1 1

PROTO_62:
        0 SETTABLEKS                       R1 R0 K0 ["_mouseLocation"]
        2 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R2 R2 K1 ["CurrentCamera"]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K2 ["WorldToViewportPoint"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 GETTABLEKS                       R2 R0 K3 ["_cameraCFrame"]
       14 NAMECALL                         R4 R2 K4 ["Inverse"]
       16 CALL                             R4 1 1
       17 MUL                              R3 R4 R1
       18 GETTABLEKS                       R7 R3 K7 ["X"]
       20 GETTABLEKS                       R8 R0 K8 ["_cameraSize"]
       22 DIV                              R6 R7 R8
       23 ADDK                             R5 R6 K6 [0.5]
       24 MULK                             R4 R5 K5 [1000]
       25 GETTABLEKS                       R8 R3 K9 ["Y"]
       27 GETTABLEKS                       R9 R0 K8 ["_cameraSize"]
       29 DIV                              R7 R8 R9
       30 ADDK                             R6 R7 K6 [0.5]
       31 MULK                             R5 R6 K5 [1000]
       32 LOADB                            R6 0
       33 LOADN                            R7 0
       34 JUMPIFNOTLE                      R7 R4 ; [+20]
       36 LOADB                            R6 0
       37 LOADN                            R7 1000
       38 JUMPIFNOTLE                      R4 R7 ; [+16]
       40 LOADB                            R6 0
       41 LOADN                            R7 0
       42 JUMPIFNOTLE                      R7 R5 ; [+12]
       44 LOADB                            R6 0
       45 LOADN                            R7 1000
       46 JUMPIFNOTLE                      R5 R7 ; [+8]
       48 GETTABLEKS                       R7 R3 K10 ["Z"]
       50 LOADN                            R8 0
       51 JUMPIFLT                         R7 R8 ; [+2]
       53 LOADB                            R6 0 +1
       54 LOADB                            R6 1
       55 LOADN                            R10 0
       56 FASTCALL3                        VECTOR R4 R5 R10
       58 MOVE                             R8 R4
       59 MOVE                             R9 R5
       60 GETIMPORT                        R7 K13 [Vector3.new]
       62 CALL                             R7 3 1
       63 MOVE                             R8 R6
       64 RETURN                           R7 2

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R1 R1 K1 ["CurrentCamera"]
        7 GETTABLEKS                       R1 R1 K2 ["ViewportSize"]
        9 RETURN                           R1 1
       10 GETIMPORT                        R1 K5 [Vector2.new]
       12 LOADN                            R2 1000
       13 LOADN                            R3 1000
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_66:
        0 SETTABLEKS                       R1 R0 K0 ["_mouseIcon"]
        2 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_69:
        0 GETTABLEKS                       R1 R0 K0 ["_isSimulating"]
        2 RETURN                           R1 1

PROTO_70:
        0 SETTABLEKS                       R1 R0 K0 ["_isSimulating"]
        2 RETURN                           R0 0

PROTO_71:
        0 GETTABLEKS                       R1 R0 K0 ["_isTabDown"]
        2 RETURN                           R1 1

PROTO_72:
        0 GETTABLEKS                       R1 R0 K0 ["_isAltDown"]
        2 RETURN                           R1 1

PROTO_73:
        0 GETTABLEKS                       R1 R0 K0 ["_isCtrlDown"]
        2 RETURN                           R1 1

PROTO_74:
        0 GETTABLEKS                       R1 R0 K0 ["_isShiftDown"]
        2 RETURN                           R1 1

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
        0 GETTABLEKS                       R1 R0 K0 ["_newCameraControlsBetaUpdate"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 NAMECALL                         R1 R0 K1 ["isAltKeyDown"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+3]
        7 NAMECALL                         R1 R0 K2 ["isCtrlKeyDown"]
        9 CALL                             R1 1 1
       10 RETURN                           R1 1
       11 NAMECALL                         R1 R0 K1 ["isAltKeyDown"]
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_77:
        0 SETTABLEKS                       R1 R0 K0 ["_newCameraControlsBetaUpdate"]
        2 RETURN                           R0 0

PROTO_78:
        0 SETTABLEKS                       R1 R0 K0 ["_isCtrlDown"]
        2 SETTABLEKS                       R2 R0 K1 ["_isAltDown"]
        4 SETTABLEKS                       R3 R0 K2 ["_isShiftDown"]
        6 RETURN                           R0 0

PROTO_79:
        0 SETTABLEKS                       R1 R0 K0 ["_isTabDown"]
        2 RETURN                           R0 0

PROTO_80:
        0 GETTABLEKS                       R1 R0 K0 ["_gridSize"]
        2 RETURN                           R1 1

PROTO_81:
        0 GETTABLEKS                       R1 R0 K0 ["_gridSnapEnabled"]
        2 RETURN                           R1 1

PROTO_82:
        0 SETTABLEKS                       R1 R0 K0 ["_partSnapEnabled"]
        2 RETURN                           R0 0

PROTO_83:
        0 GETTABLEKS                       R1 R0 K0 ["_partSnapEnabled"]
        2 RETURN                           R1 1

PROTO_84:
        0 NAMECALL                         R1 R0 K0 ["getPartSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_85:
        0 NAMECALL                         R1 R0 K0 ["getGridSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_86:
        0 GETTABLEKS                       R1 R0 K0 ["_rotateSnapEnabled"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        5 CALL                             R2 1 1
        6 NOT                              R1 R2
        7 RETURN                           R1 1

PROTO_87:
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

PROTO_88:
        0 GETTABLEKS                       R1 R0 K0 ["_rotateIncrement"]
        2 RETURN                           R1 1

PROTO_89:
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

PROTO_90:
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

PROTO_91:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_92:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 NAMECALL                         R4 R4 K0 ["GizmoRaycast"]
        6 CALL                             R4 4 -1
        7 RETURN                           R4 -1

PROTO_93:
        0 SETTABLEKS                       R1 R0 K0 ["_insertPoint"]
        2 RETURN                           R0 0

PROTO_94:
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

PROTO_95:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_96:
        0 GETTABLEKS                       R1 R0 K0 ["_shouldAlignDraggedObjects"]
        2 RETURN                           R1 1

PROTO_97:
        0 SETTABLEKS                       R1 R0 K0 ["_shouldAlignDraggedObjects"]
        2 RETURN                           R0 0

PROTO_98:
        0 GETTABLEKS                       R1 R0 K0 ["_useBoundingBoxes"]
        2 RETURN                           R1 1

PROTO_99:
        0 SETTABLEKS                       R1 R0 K0 ["_useBoundingBoxes"]
        2 RETURN                           R0 0

PROTO_100:
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

PROTO_101:
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

PROTO_102:
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

PROTO_103:
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

PROTO_104:
        0 GETIMPORT                        R3 K3 [Enum.StudioStyleGuideColor.MainBackground]
        2 JUMPIFNOTEQ                      R1 R3 ; [+5]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K4 ["WHITE"]
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K5 ["BLACK"]
       11 RETURN                           R3 1

PROTO_105:
        0 GETTABLEKS                       R1 R0 K0 ["_theme"]
        2 RETURN                           R1 1

PROTO_106:
        0 SETTABLEKS                       R1 R0 K0 ["_theme"]
        2 RETURN                           R0 0

PROTO_107:
        0 GETTABLEKS                       R3 R0 K0 ["_settingValues"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_108:
        0 GETTABLEKS                       R3 R0 K0 ["_settingValues"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_109:
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
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Types"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Utility"]
       28 GETTABLEKS                       R5 R5 K12 ["Colors"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K9 [require]
       33 GETTABLEKS                       R6 R2 K11 ["Utility"]
       35 GETTABLEKS                       R6 R6 K13 ["MockAnalytics"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K9 [require]
       40 GETTABLEKS                       R7 R2 K14 ["Flags"]
       42 GETTABLEKS                       R7 R7 K15 ["getFFlagNextGenDraggers"]
       44 CALL                             R6 1 1
       45 NEWTABLE                         R7 128 0
       47 SETTABLEKS                       R7 R7 K16 ["__index"]
       49 MOVE                             R9 R6
       50 CALL                             R9 0 1
       51 JUMPIFNOT                        R9 ; [+2]
       52 LOADK                            R8 K17 [0.033]
       53 JUMP                             ; [+1]
       54 LOADK                            R8 K18 [0.05]
       55 DUPCLOSURE                       R9 K19 [PROTO_0]
       56 CAPTURE                          VAL R7
       57 SETTABLEKS                       R9 R7 K20 ["new"]
       59 DUPCLOSURE                       R9 K21 [PROTO_1]
       60 SETTABLEKS                       R9 R7 K22 ["getGuiParent"]
       62 DUPCLOSURE                       R9 K23 [PROTO_2]
       63 SETTABLEKS                       R9 R7 K24 ["setHoverInstance"]
       65 DUPCLOSURE                       R9 K25 [PROTO_4]
       66 SETTABLEKS                       R9 R7 K26 ["onInstanceHovered"]
       68 DUPCLOSURE                       R9 K27 [PROTO_5]
       69 SETTABLEKS                       R9 R7 K28 ["invokeInstanceHovered"]
       71 DUPCLOSURE                       R9 K29 [PROTO_6]
       72 SETTABLEKS                       R9 R7 K30 ["expectHoverInstance"]
       74 DUPCLOSURE                       R9 K31 [PROTO_7]
       75 SETTABLEKS                       R9 R7 K32 ["shouldUseLocalSpace"]
       77 DUPCLOSURE                       R9 K33 [PROTO_8]
       78 SETTABLEKS                       R9 R7 K34 ["setUseLocalSpace"]
       80 DUPCLOSURE                       R9 K35 [PROTO_9]
       81 SETTABLEKS                       R9 R7 K36 ["areCollisionsEnabled"]
       83 DUPCLOSURE                       R9 K37 [PROTO_10]
       84 SETTABLEKS                       R9 R7 K38 ["setCollisionsEnabled"]
       86 DUPCLOSURE                       R9 K39 [PROTO_11]
       87 SETTABLEKS                       R9 R7 K40 ["areConstraintsEnabled"]
       89 DUPCLOSURE                       R9 K41 [PROTO_12]
       90 SETTABLEKS                       R9 R7 K42 ["setConstraintsEnabled"]
       92 DUPCLOSURE                       R9 K43 [PROTO_13]
       93 SETTABLEKS                       R9 R7 K44 ["areConstraintDetailsShown"]
       95 DUPCLOSURE                       R9 K45 [PROTO_14]
       96 SETTABLEKS                       R9 R7 K46 ["setConstraintDetailsShown"]
       98 DUPCLOSURE                       R9 K47 [PROTO_15]
       99 SETTABLEKS                       R9 R7 K48 ["shouldDrawConstraintsOnTop"]
      101 DUPCLOSURE                       R9 K49 [PROTO_16]
      102 SETTABLEKS                       R9 R7 K50 ["setDrawConstraintsOnTop"]
      104 DUPCLOSURE                       R9 K51 [PROTO_17]
      105 SETTABLEKS                       R9 R7 K52 ["shouldJoinSurfaces"]
      107 DUPCLOSURE                       R9 K53 [PROTO_18]
      108 SETTABLEKS                       R9 R7 K54 ["setJoinSurfaces"]
      110 DUPCLOSURE                       R9 K55 [PROTO_19]
      111 SETTABLEKS                       R9 R7 K56 ["getShowBoundingBox"]
      113 DUPCLOSURE                       R9 K57 [PROTO_20]
      114 SETTABLEKS                       R9 R7 K58 ["getShowOutline"]
      116 DUPCLOSURE                       R9 K59 [PROTO_21]
      117 SETTABLEKS                       R9 R7 K60 ["shouldShowHover"]
      119 DUPCLOSURE                       R9 K61 [PROTO_22]
      120 SETTABLEKS                       R9 R7 K62 ["shouldAnimateHover"]
      122 DUPCLOSURE                       R9 K63 [PROTO_23]
      123 SETTABLEKS                       R9 R7 K64 ["shouldSelectScopeByDefault"]
      125 DUPCLOSURE                       R9 K65 [PROTO_24]
      126 SETTABLEKS                       R9 R7 K66 ["getHoverAnimationSpeedInSeconds"]
      128 DUPCLOSURE                       R9 K67 [PROTO_25]
      129 SETTABLEKS                       R9 R7 K68 ["getHoverBoxColor"]
      131 DUPCLOSURE                       R9 K69 [PROTO_26]
      132 SETTABLEKS                       R9 R7 K70 ["getHoverThickness"]
      134 DUPCLOSURE                       R9 K71 [PROTO_27]
      135 SETTABLEKS                       R9 R7 K72 ["getHoverLineThickness"]
      137 DUPCLOSURE                       R9 K73 [PROTO_28]
      138 SETTABLEKS                       R9 R7 K74 ["getSelectionBoxColor"]
      140 DUPCLOSURE                       R9 K75 [PROTO_29]
      141 SETTABLEKS                       R9 R7 K76 ["setSelectionBoxColor"]
      143 DUPCLOSURE                       R9 K77 [PROTO_30]
      144 SETTABLEKS                       R9 R7 K78 ["useBoundingBoxMoveHandles"]
      146 DUPCLOSURE                       R9 K79 [PROTO_31]
      147 SETTABLEKS                       R9 R7 K80 ["getGeometrySnapColor"]
      149 DUPCLOSURE                       R9 K81 [PROTO_32]
      150 SETTABLEKS                       R9 R7 K82 ["getGridColor"]
      152 DUPCLOSURE                       R9 K83 [PROTO_33]
      153 SETTABLEKS                       R9 R7 K84 ["getChosenColor"]
      155 DUPCLOSURE                       R9 K85 [PROTO_34]
      156 CAPTURE                          VAL R4
      157 SETTABLEKS                       R9 R7 K86 ["getXAxisColor"]
      159 DUPCLOSURE                       R9 K87 [PROTO_35]
      160 CAPTURE                          VAL R4
      161 SETTABLEKS                       R9 R7 K88 ["getYAxisColor"]
      163 DUPCLOSURE                       R9 K89 [PROTO_36]
      164 CAPTURE                          VAL R4
      165 SETTABLEKS                       R9 R7 K90 ["getZAxisColor"]
      167 DUPCLOSURE                       R9 K91 [PROTO_37]
      168 CAPTURE                          VAL R4
      169 SETTABLEKS                       R9 R7 K92 ["getVAxisColor"]
      171 DUPCLOSURE                       R9 K93 [PROTO_38]
      172 SETTABLEKS                       R9 R7 K94 ["shouldShowHoverGrids"]
      174 DUPCLOSURE                       R9 K95 [PROTO_39]
      175 SETTABLEKS                       R9 R7 K96 ["shouldShowTargetGrids"]
      177 DUPCLOSURE                       R9 K97 [PROTO_40]
      178 SETTABLEKS                       R9 R7 K98 ["shouldShowPreciseInput"]
      180 DUPCLOSURE                       R9 K99 [PROTO_41]
      181 SETTABLEKS                       R9 R7 K100 ["shouldShowDraggedPoint"]
      183 DUPCLOSURE                       R9 K101 [PROTO_42]
      184 SETTABLEKS                       R9 R7 K102 ["getMajorGridIncrement"]
      186 DUPCLOSURE                       R9 K103 [PROTO_43]
      187 SETTABLEKS                       R9 R7 K104 ["getDraggerScaleFactor"]
      189 DUPCLOSURE                       R9 K105 [PROTO_44]
      190 SETTABLEKS                       R9 R7 K106 ["getDraggerLengthFactor"]
      192 DUPCLOSURE                       R9 K107 [PROTO_45]
      193 SETTABLEKS                       R9 R7 K108 ["getDraggerShowNegativeAxes"]
      195 DUPCLOSURE                       R9 K109 [PROTO_46]
      196 SETTABLEKS                       R9 R7 K110 ["getDraggerShowPlanes"]
      198 DUPCLOSURE                       R9 K111 [PROTO_47]
      199 SETTABLEKS                       R9 R7 K112 ["getDraggerShowTrackball"]
      201 DUPCLOSURE                       R9 K113 [PROTO_48]
      202 SETTABLEKS                       R9 R7 K114 ["getDraggerShowWhileDragging"]
      204 DUPCLOSURE                       R9 K115 [PROTO_49]
      205 SETTABLEKS                       R9 R7 K116 ["getDraggerShowAxisTicks"]
      207 DUPCLOSURE                       R9 K117 [PROTO_50]
      208 SETTABLEKS                       R9 R7 K118 ["getTiltRotateDuration"]
      210 DUPCLOSURE                       R9 K119 [PROTO_51]
      211 SETTABLEKS                       R9 R7 K120 ["getMaxSoftSnaps"]
      213 DUPCLOSURE                       R9 K121 [PROTO_52]
      214 SETTABLEKS                       R9 R7 K122 ["getSoftSnapMarginFactor"]
      216 DUPCLOSURE                       R9 K123 [PROTO_53]
      217 SETTABLEKS                       R9 R7 K124 ["getSummonMarginFactor"]
      219 DUPCLOSURE                       R9 K125 [PROTO_54]
      220 SETTABLEKS                       R9 R7 K126 ["getCameraCFrame"]
      222 DUPCLOSURE                       R9 K127 [PROTO_55]
      223 SETTABLEKS                       R9 R7 K128 ["getCamera"]
      225 DUPCLOSURE                       R9 K129 [PROTO_56]
      226 SETTABLEKS                       R9 R7 K130 ["setCamera"]
      228 DUPCLOSURE                       R9 K131 [PROTO_57]
      229 CAPTURE                          VAL R8
      230 SETTABLEKS                       R9 R7 K132 ["getHandleScale"]
      232 DUPCLOSURE                       R9 K133 [PROTO_58]
      233 SETTABLEKS                       R9 R7 K134 ["setHandleScale"]
      235 DUPCLOSURE                       R9 K135 [PROTO_59]
      236 SETTABLEKS                       R9 R7 K136 ["getMouseUnitRay"]
      238 DUPCLOSURE                       R9 K137 [PROTO_60]
      239 SETTABLEKS                       R9 R7 K138 ["getMouseRay"]
      241 DUPCLOSURE                       R9 K139 [PROTO_61]
      242 SETTABLEKS                       R9 R7 K140 ["getMouseLocation"]
      244 DUPCLOSURE                       R9 K141 [PROTO_62]
      245 SETTABLEKS                       R9 R7 K142 ["setMouseLocation"]
      247 DUPCLOSURE                       R9 K143 [PROTO_63]
      248 SETTABLEKS                       R9 R7 K144 ["viewportPointToRay"]
      250 DUPCLOSURE                       R9 K145 [PROTO_64]
      251 SETTABLEKS                       R9 R7 K146 ["worldToViewportPoint"]
      253 DUPCLOSURE                       R9 K147 [PROTO_65]
      254 SETTABLEKS                       R9 R7 K148 ["getViewportSize"]
      256 DUPCLOSURE                       R9 K149 [PROTO_66]
      257 SETTABLEKS                       R9 R7 K150 ["setMouseIcon"]
      259 DUPCLOSURE                       R9 K151 [PROTO_67]
      260 SETTABLEKS                       R9 R7 K152 ["expectMouseIcon"]
      262 DUPCLOSURE                       R9 K153 [PROTO_68]
      263 SETTABLEKS                       R9 R7 K154 ["getSelection"]
      265 DUPCLOSURE                       R9 K155 [PROTO_69]
      266 SETTABLEKS                       R9 R7 K156 ["isSimulating"]
      268 DUPCLOSURE                       R9 K157 [PROTO_70]
      269 SETTABLEKS                       R9 R7 K158 ["setSimulating"]
      271 DUPCLOSURE                       R9 K159 [PROTO_71]
      272 SETTABLEKS                       R9 R7 K160 ["isTabKeyDown"]
      274 DUPCLOSURE                       R9 K161 [PROTO_72]
      275 SETTABLEKS                       R9 R7 K162 ["isAltKeyDown"]
      277 DUPCLOSURE                       R9 K163 [PROTO_73]
      278 SETTABLEKS                       R9 R7 K164 ["isCtrlKeyDown"]
      280 DUPCLOSURE                       R9 K165 [PROTO_74]
      281 SETTABLEKS                       R9 R7 K166 ["isShiftKeyDown"]
      283 DUPCLOSURE                       R9 K167 [PROTO_75]
      284 SETTABLEKS                       R9 R7 K168 ["shouldExtendSelection"]
      286 DUPCLOSURE                       R9 K169 [PROTO_76]
      287 SETTABLEKS                       R9 R7 K170 ["isSelectionCycleModifierDown"]
      289 DUPCLOSURE                       R9 K171 [PROTO_77]
      290 SETTABLEKS                       R9 R7 K172 ["setNewCameraControlsBetaUpdate"]
      292 DUPCLOSURE                       R9 K173 [PROTO_78]
      293 SETTABLEKS                       R9 R7 K174 ["setCtrlAltShift"]
      295 DUPCLOSURE                       R9 K175 [PROTO_79]
      296 SETTABLEKS                       R9 R7 K176 ["setTab"]
      298 DUPCLOSURE                       R9 K177 [PROTO_80]
      299 SETTABLEKS                       R9 R7 K178 ["getGridSize"]
      301 DUPCLOSURE                       R9 K179 [PROTO_81]
      302 SETTABLEKS                       R9 R7 K180 ["getGridSnapEnabled"]
      304 DUPCLOSURE                       R9 K181 [PROTO_82]
      305 SETTABLEKS                       R9 R7 K182 ["setPartSnapEnabled"]
      307 DUPCLOSURE                       R9 K183 [PROTO_83]
      308 SETTABLEKS                       R9 R7 K184 ["getPartSnapEnabled"]
      310 DUPCLOSURE                       R9 K185 [PROTO_84]
      311 SETTABLEKS                       R9 R7 K186 ["shouldPartSnap"]
      313 DUPCLOSURE                       R9 K187 [PROTO_85]
      314 SETTABLEKS                       R9 R7 K188 ["shouldGridSnap"]
      316 DUPCLOSURE                       R9 K189 [PROTO_86]
      317 SETTABLEKS                       R9 R7 K190 ["shouldAngleSnap"]
      319 DUPCLOSURE                       R9 K191 [PROTO_87]
      320 SETTABLEKS                       R9 R7 K192 ["snapToGridSize"]
      322 DUPCLOSURE                       R9 K193 [PROTO_88]
      323 SETTABLEKS                       R9 R7 K194 ["getRotateIncrement"]
      325 DUPCLOSURE                       R9 K195 [PROTO_89]
      326 SETTABLEKS                       R9 R7 K196 ["setGridSnap"]
      328 DUPCLOSURE                       R9 K197 [PROTO_90]
      329 SETTABLEKS                       R9 R7 K198 ["setRotateSnap"]
      331 DUPCLOSURE                       R9 K199 [PROTO_91]
      332 CAPTURE                          VAL R5
      333 SETTABLEKS                       R9 R7 K200 ["getAnalytics"]
      335 DUPCLOSURE                       R9 K201 [PROTO_92]
      336 CAPTURE                          VAL R0
      337 SETTABLEKS                       R9 R7 K202 ["gizmoRaycast"]
      339 DUPCLOSURE                       R9 K203 [PROTO_93]
      340 SETTABLEKS                       R9 R7 K204 ["setInsertPoint"]
      342 DUPCLOSURE                       R9 K205 [PROTO_94]
      343 SETTABLEKS                       R9 R7 K206 ["expectInsertPoint"]
      345 DUPCLOSURE                       R9 K207 [PROTO_95]
      346 SETTABLEKS                       R9 R7 K208 ["shouldShowActiveInstanceHighlight"]
      348 DUPCLOSURE                       R9 K209 [PROTO_96]
      349 SETTABLEKS                       R9 R7 K210 ["shouldAlignDraggedObjects"]
      351 DUPCLOSURE                       R9 K211 [PROTO_97]
      352 SETTABLEKS                       R9 R7 K212 ["setAlignDraggedObjects"]
      354 DUPCLOSURE                       R9 K213 [PROTO_98]
      355 SETTABLEKS                       R9 R7 K214 ["shouldUseBoundingBoxes"]
      357 DUPCLOSURE                       R9 K215 [PROTO_99]
      358 SETTABLEKS                       R9 R7 K216 ["setUseBoundingBoxes"]
      360 DUPCLOSURE                       R9 K217 [PROTO_100]
      361 CAPTURE                          VAL R1
      362 SETTABLEKS                       R9 R7 K218 ["addUndoWaypoint"]
      364 DUPCLOSURE                       R9 K219 [PROTO_101]
      365 SETTABLEKS                       R9 R7 K220 ["expectMostRecentUndoWaypoint"]
      367 DUPCLOSURE                       R9 K221 [PROTO_102]
      368 CAPTURE                          VAL R1
      369 SETTABLEKS                       R9 R7 K222 ["expectAndUndo"]
      371 DUPCLOSURE                       R9 K223 [PROTO_103]
      372 SETTABLEKS                       R9 R7 K224 ["getText"]
      374 DUPCLOSURE                       R9 K225 [PROTO_104]
      375 CAPTURE                          VAL R4
      376 SETTABLEKS                       R9 R7 K226 ["getThemeColor"]
      378 DUPCLOSURE                       R9 K227 [PROTO_105]
      379 SETTABLEKS                       R9 R7 K228 ["getTheme"]
      381 DUPCLOSURE                       R9 K229 [PROTO_106]
      382 SETTABLEKS                       R9 R7 K230 ["setTheme"]
      384 DUPCLOSURE                       R9 K231 [PROTO_107]
      385 SETTABLEKS                       R9 R7 K232 ["getSetting"]
      387 DUPCLOSURE                       R9 K233 [PROTO_108]
      388 SETTABLEKS                       R9 R7 K234 ["setSetting"]
      390 DUPCLOSURE                       R9 K235 [PROTO_109]
      391 SETTABLEKS                       R9 R7 K236 ["setPivotIndicator"]
      393 RETURN                           R7 1
