PROTO_0:
        0 DUPTABLE                         R5 K17 [{"_editDataModel", "_plugin", "_userSettings", "_studioService", "_draggerService", "_runService", "_studioSettings", "_workspace", "_userInputService", "_changeHistoryService", "_mouse", "_selection", "_selectionService", "LocaleChangedSignal", "_fallbackTranslators", "_translators", "_settingCache"}]
        1 SETTABLEKS                       R1 R5 K0 ["_editDataModel"]
        3 SETTABLEKS                       R0 R5 K1 ["_plugin"]
        5 SETTABLEKS                       R2 R5 K2 ["_userSettings"]
        7 LOADK                            R8 K18 ["StudioService"]
        8 NAMECALL                         R6 R1 K19 ["GetService"]
       10 CALL                             R6 2 1
       11 SETTABLEKS                       R6 R5 K3 ["_studioService"]
       13 LOADK                            R8 K20 ["DraggerService"]
       14 NAMECALL                         R6 R1 K19 ["GetService"]
       16 CALL                             R6 2 1
       17 SETTABLEKS                       R6 R5 K4 ["_draggerService"]
       19 LOADK                            R8 K21 ["RunService"]
       20 NAMECALL                         R6 R1 K19 ["GetService"]
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K5 ["_runService"]
       25 GETTABLEKS                       R6 R2 K22 ["Studio"]
       27 SETTABLEKS                       R6 R5 K6 ["_studioSettings"]
       29 LOADK                            R8 K23 ["Workspace"]
       30 NAMECALL                         R6 R1 K19 ["GetService"]
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R5 K7 ["_workspace"]
       35 LOADK                            R8 K24 ["UserInputService"]
       36 NAMECALL                         R6 R1 K19 ["GetService"]
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K8 ["_userInputService"]
       41 LOADK                            R8 K25 ["ChangeHistoryService"]
       42 NAMECALL                         R6 R1 K19 ["GetService"]
       44 CALL                             R6 2 1
       45 SETTABLEKS                       R6 R5 K9 ["_changeHistoryService"]
       47 NAMECALL                         R6 R0 K26 ["GetMouse"]
       49 CALL                             R6 1 1
       50 SETTABLEKS                       R6 R5 K10 ["_mouse"]
       52 SETTABLEKS                       R3 R5 K11 ["_selection"]
       54 LOADK                            R8 K27 ["Selection"]
       55 NAMECALL                         R6 R1 K19 ["GetService"]
       57 CALL                             R6 2 1
       58 SETTABLEKS                       R6 R5 K12 ["_selectionService"]
       60 LOADK                            R8 K18 ["StudioService"]
       61 NAMECALL                         R6 R1 K19 ["GetService"]
       63 CALL                             R6 2 1
       64 LOADK                            R8 K28 ["StudioLocaleId"]
       65 NAMECALL                         R6 R6 K29 ["GetPropertyChangedSignal"]
       67 CALL                             R6 2 1
       68 SETTABLEKS                       R6 R5 K13 ["LocaleChangedSignal"]
       70 NEWTABLE                         R6 0 0
       72 SETTABLEKS                       R6 R5 K14 ["_fallbackTranslators"]
       74 NEWTABLE                         R6 0 0
       76 SETTABLEKS                       R6 R5 K15 ["_translators"]
       78 NEWTABLE                         R6 0 0
       80 SETTABLEKS                       R6 R5 K16 ["_settingCache"]
       82 GETUPVAL                         R6 0
       83 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       85 GETIMPORT                        R4 K31 [setmetatable]
       87 CALL                             R4 2 1
       88 GETUPVAL                         R5 1
       89 CALL                             R5 0 1
       90 JUMPIFNOT                        R5 ; [+5]
       91 GETUPVAL                         R5 2
       92 GETTABLEKS                       R5 R5 K32 ["init"]
       94 MOVE                             R6 R4
       95 CALL                             R5 1 0
       96 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_editDataModel"]
        2 LOADK                            R3 K1 ["CoreGui"]
        3 NAMECALL                         R1 R1 K2 ["GetService"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_ignoreNextHoverChange"]
        4 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R0 K0 ["_ignoreNextHoverChange"]
        3 GETTABLEKS                       R2 R0 K1 ["_studioService"]
        5 SETTABLEKS                       R1 R2 K2 ["HoverInstance"]
        7 GETIMPORT                        R2 K5 [task.defer]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_ignoreNextHoverChange"]
        3 JUMPIF                           R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["_studioService"]
        7 GETTABLEKS                       R0 R0 K2 ["HoverInstance"]
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 LOADK                            R4 K1 ["HoverInstance"]
        3 NAMECALL                         R2 R2 K2 ["GetPropertyChangedSignal"]
        5 CALL                             R2 2 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 NAMECALL                         R2 R2 K3 ["Connect"]
       11 CALL                             R2 2 1
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          VAL R2
       14 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R1 K1 ["UseLocalSpace"]
        4 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        2 GETTABLEKS                       R1 R1 K1 ["CollisionEnabled"]
        4 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerSolveConstraints"]
        4 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowConstraintDetails"]
        4 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R1 K1 ["DrawConstraintsOnTop"]
        4 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        2 NAMECALL                         R2 R2 K1 ["GetJoinMode"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K5 [Enum.JointCreationMode.None]
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionService"]
        2 GETTABLEKS                       R1 R1 K1 ["RenderMode"]
        4 LOADB                            R2 1
        5 GETIMPORT                        R3 K5 [Enum.SelectionRenderMode.BoundingBoxes]
        7 JUMPIFEQ                         R1 R3 ; [+7]
        9 GETIMPORT                        R3 K7 [Enum.SelectionRenderMode.Both]
       11 JUMPIFEQ                         R1 R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionService"]
        2 GETTABLEKS                       R1 R1 K1 ["RenderMode"]
        4 LOADB                            R2 1
        5 GETIMPORT                        R3 K5 [Enum.SelectionRenderMode.Outlines]
        7 JUMPIFEQ                         R1 R3 ; [+7]
        9 GETIMPORT                        R3 K7 [Enum.SelectionRenderMode.Both]
       11 JUMPIFEQ                         R1 R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K1 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K0 ["Show Hover Over"]
        4 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K1 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K0 ["Animate Hover Over"]
        4 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K1 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K0 ["Physical Draggers Select Scope By Default"]
        4 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K1 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K0 ["Hover Animate Speed"]
        4 GETIMPORT                        R2 K5 [Enum.HoverAnimateSpeed.VerySlow]
        6 JUMPIFNOTEQ                      R1 R2 ; [+3]
        8 LOADN                            R2 2
        9 RETURN                           R2 1
       10 GETIMPORT                        R2 K7 [Enum.HoverAnimateSpeed.Slow]
       12 JUMPIFNOTEQ                      R1 R2 ; [+3]
       14 LOADN                            R2 1
       15 RETURN                           R2 1
       16 GETIMPORT                        R2 K9 [Enum.HoverAnimateSpeed.Medium]
       18 JUMPIFNOTEQ                      R1 R2 ; [+3]
       20 LOADK                            R2 K10 [0.5]
       21 RETURN                           R2 1
       22 GETIMPORT                        R2 K12 [Enum.HoverAnimateSpeed.Fast]
       24 JUMPIFNOTEQ                      R1 R2 ; [+3]
       26 LOADK                            R2 K13 [0.25]
       27 RETURN                           R2 1
       28 GETIMPORT                        R2 K15 [Enum.HoverAnimateSpeed.VeryFast]
       30 JUMPIFNOTEQ                      R1 R2 ; [+3]
       32 LOADK                            R2 K16 [0.1]
       33 RETURN                           R2 1
       34 LOADN                            R2 0
       35 RETURN                           R2 1

PROTO_19:
        0 JUMPIFNOT                        R1 ; [+5]
        1 GETTABLEKS                       R3 R0 K1 ["_studioSettings"]
        3 GETTABLEKS                       R2 R3 K0 ["Active Hover Over Color"]
        5 RETURN                           R2 1
        6 GETTABLEKS                       R3 R0 K1 ["_studioSettings"]
        8 GETTABLEKS                       R2 R3 K2 ["Hover Over Color"]
       10 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R1 K1 ["HoverThickness"]
        4 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R1 K1 ["HoverLineThickness"]
        4 RETURN                           R1 1

PROTO_22:
        0 JUMPIFNOT                        R1 ; [+5]
        1 GETTABLEKS                       R3 R0 K1 ["_studioSettings"]
        3 GETTABLEKS                       R2 R3 K0 ["Active Color"]
        5 RETURN                           R2 1
        6 GETTABLEKS                       R3 R0 K1 ["_studioSettings"]
        8 GETTABLEKS                       R2 R3 K2 ["Select Color"]
       10 RETURN                           R2 1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K1 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K0 ["Use Bounding Box Move Handles"]
        4 RETURN                           R1 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R1 K1 ["GeometrySnapColor"]
        4 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerPassiveColor"]
        4 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerActiveColor"]
        4 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowHoverRuler"]
        4 RETURN                           R1 1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowTargetSnap"]
        4 RETURN                           R1 1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowMeasurement"]
        4 RETURN                           R1 1

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowDraggedPoint"]
        4 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerMajorGridIncrement"]
        4 RETURN                           R1 1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerScaleFactor"]
        4 RETURN                           R1 1

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerLengthFactor"]
        4 RETURN                           R1 1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowNegativeAxes"]
        4 RETURN                           R1 1

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowPlanes"]
        4 RETURN                           R1 1

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowTrackball"]
        4 RETURN                           R1 1

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowWhileDragging"]
        4 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowAxisTicks"]
        4 RETURN                           R1 1

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["XAxisColor"]
        4 RETURN                           R1 1

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["YAxisColor"]
        4 RETURN                           R1 1

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["ZAxisColor"]
        4 RETURN                           R1 1

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["VAxisColor"]
        4 RETURN                           R1 1

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerTiltRotateDuration"]
        4 RETURN                           R1 1

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerMaxSoftSnaps"]
        4 RETURN                           R1 1

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerSoftSnapMarginFactor"]
        4 RETURN                           R1 1

PROTO_46:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerSummonMarginFactor"]
        4 RETURN                           R1 1

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R1 R1 K1 ["CurrentCamera"]
        4 GETTABLEKS                       R1 R1 K2 ["CFrame"]
        6 RETURN                           R1 1

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R1 R1 K1 ["CurrentCamera"]
        4 RETURN                           R1 1

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["_mouse"]
        2 GETTABLEKS                       R1 R1 K1 ["UnitRay"]
        4 RETURN                           R1 1

PROTO_50:
        0 NAMECALL                         R2 R0 K0 ["getCameraCFrame"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Position"]
        5 SUB                              R3 R1 R4
        6 GETTABLEKS                       R5 R2 K2 ["LookVector"]
        8 NAMECALL                         R3 R3 K3 ["Dot"]
       10 CALL                             R3 2 1
       11 GETTABLEKS                       R6 R0 K4 ["_workspace"]
       13 GETTABLEKS                       R6 R6 K5 ["CurrentCamera"]
       15 GETTABLEKS                       R6 R6 K6 ["FieldOfView"]
       17 FASTCALL1                        MATH_RAD R6 ; [+2]
       18 GETIMPORT                        R5 K9 [math.rad]
       20 CALL                             R5 1 1
       21 FASTCALL1                        MATH_SIN R5 ; [+2]
       22 GETIMPORT                        R4 K11 [math.sin]
       24 CALL                             R4 1 1
       25 MUL                              R6 R4 R3
       26 GETUPVAL                         R7 0
       27 MUL                              R5 R6 R7
       28 GETUPVAL                         R6 1
       29 CALL                             R6 0 1
       30 JUMPIFNOT                        R6 ; [+5]
       31 GETTABLEKS                       R6 R0 K12 ["_studioSettings"]
       33 GETTABLEKS                       R6 R6 K13 ["DraggerScaleFactor"]
       35 MUL                              R5 R5 R6
       36 RETURN                           R5 1

PROTO_51:
        0 NAMECALL                         R1 R0 K0 ["getMouseUnitRay"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [Ray.new]
        5 GETTABLEKS                       R3 R1 K4 ["Origin"]
        7 GETTABLEKS                       R5 R1 K6 ["Direction"]
        9 MULK                             R4 R5 K5 [10000]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_52:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 NAMECALL                         R1 R1 K1 ["GetMouseLocation"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_53:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R2 R2 K1 ["CurrentCamera"]
        4 GETTABLEKS                       R4 R1 K2 ["X"]
        6 GETTABLEKS                       R5 R1 K3 ["Y"]
        8 NAMECALL                         R2 R2 K4 ["ViewportPointToRay"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_54:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R2 R2 K1 ["CurrentCamera"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["WorldToViewportPoint"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_55:
        0 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R1 R1 K1 ["CurrentCamera"]
        4 GETTABLEKS                       R1 R1 K2 ["ViewportSize"]
        6 RETURN                           R1 1

PROTO_56:
        0 GETTABLEKS                       R2 R0 K0 ["_mouse"]
        2 SETTABLEKS                       R1 R2 K1 ["Icon"]
        4 RETURN                           R0 0

PROTO_57:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_58:
        0 GETTABLEKS                       R1 R0 K0 ["_runService"]
        2 NAMECALL                         R1 R1 K1 ["IsRunning"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_59:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 GETIMPORT                        R3 K4 [Enum.KeyCode.Tab]
        4 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_60:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 GETIMPORT                        R3 K4 [Enum.KeyCode.LeftAlt]
        4 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+7]
        8 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
       10 GETIMPORT                        R3 K7 [Enum.KeyCode.RightAlt]
       12 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_61:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 GETIMPORT                        R3 K4 [Enum.KeyCode.LeftControl]
        4 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+7]
        8 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
       10 GETIMPORT                        R3 K7 [Enum.KeyCode.RightControl]
       12 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_62:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 GETIMPORT                        R3 K4 [Enum.KeyCode.LeftShift]
        4 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+7]
        8 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
       10 GETIMPORT                        R3 K7 [Enum.KeyCode.RightShift]
       12 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 NAMECALL                         R1 R0 K0 ["isShiftKeyDown"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1
        6 NAMECALL                         R1 R0 K1 ["isCtrlKeyDown"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+3]
       10 NAMECALL                         R1 R0 K0 ["isShiftKeyDown"]
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

PROTO_64:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 NAMECALL                         R1 R0 K0 ["isAltKeyDown"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+3]
        6 NAMECALL                         R1 R0 K1 ["isCtrlKeyDown"]
        8 CALL                             R1 1 1
        9 RETURN                           R1 1
       10 NAMECALL                         R1 R0 K0 ["isAltKeyDown"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R1 K1 ["LinearSnapIncrement"]
        4 RETURN                           R1 1

PROTO_66:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R1 K1 ["LinearSnapEnabled"]
        4 RETURN                           R1 1

PROTO_67:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R1 K1 ["PartSnapEnabled"]
        4 RETURN                           R1 1

PROTO_68:
        0 NAMECALL                         R1 R0 K0 ["getPartSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_69:
        0 NAMECALL                         R1 R0 K0 ["getGridSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_70:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R1 K1 ["AngleSnapEnabled"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 NAMECALL                         R2 R0 K2 ["isShiftKeyDown"]
        7 CALL                             R2 1 1
        8 NOT                              R1 R2
        9 RETURN                           R1 1

PROTO_71:
        0 NAMECALL                         R2 R0 K0 ["shouldGridSnap"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETTABLEKS                       R2 R0 K1 ["_draggerService"]
        6 GETTABLEKS                       R2 R2 K2 ["LinearSnapIncrement"]
        8 DIV                              R6 R1 R2
        9 ADDK                             R5 R6 K3 [0.5]
       10 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       11 GETIMPORT                        R4 K6 [math.floor]
       13 CALL                             R4 1 1
       14 MUL                              R3 R4 R2
       15 RETURN                           R3 1
       16 RETURN                           R1 1

PROTO_72:
        0 NAMECALL                         R1 R0 K0 ["shouldAngleSnap"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETTABLEKS                       R1 R0 K1 ["_draggerService"]
        6 GETTABLEKS                       R1 R1 K2 ["AngleSnapIncrement"]
        8 RETURN                           R1 1
        9 LOADN                            R1 0
       10 RETURN                           R1 1

PROTO_73:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_74:
        0 GETTABLEKS                       R4 R0 K0 ["_studioService"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 NAMECALL                         R4 R4 K1 ["GizmoRaycast"]
        7 CALL                             R4 4 -1
        8 RETURN                           R4 -1

PROTO_75:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_76:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionService"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowActiveInstanceHighlight"]
        4 RETURN                           R1 1

PROTO_77:
        0 GETTABLEKS                       R1 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R1 K1 ["AlignDraggedObjects"]
        4 RETURN                           R1 1

PROTO_78:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R1 K1 ["UseBoundingBoxes"]
        4 RETURN                           R1 1

PROTO_79:
        0 GETTABLEKS                       R3 R0 K0 ["_changeHistoryService"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["SetWaypoint"]
        5 CALL                             R3 2 0
        6 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_81:
        0 LOADK                            R4 K0 ["Studio.DraggerFramework.%s.%s"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 MOVE                             R2 R4
        7 GETTABLEKS                       R4 R0 K2 ["_studioService"]
        9 GETTABLEKS                       R4 R4 K3 ["StudioLocaleId"]
       11 JUMPIFNOTEQKS                    R4 K4 ["en_US"] ; [+21]
       13 GETTABLEKS                       R6 R0 K5 ["_fallbackTranslators"]
       15 GETTABLE                         R5 R6 R4
       16 JUMPIF                           R5 ; [+9]
       17 GETUPVAL                         R6 0
       18 LOADK                            R8 K4 ["en_US"]
       19 NAMECALL                         R6 R6 K6 ["GetTranslator"]
       21 CALL                             R6 2 1
       22 MOVE                             R5 R6
       23 GETTABLEKS                       R6 R0 K5 ["_fallbackTranslators"]
       25 SETTABLE                         R5 R6 R4
       26 MOVE                             R8 R2
       27 MOVE                             R9 R3
       28 NAMECALL                         R6 R5 K7 ["FormatByKey"]
       30 CALL                             R6 3 -1
       31 CLOSEUPVALS                      R2
       32 RETURN                           R6 -1
       33 GETTABLEKS                       R6 R0 K8 ["_translators"]
       35 GETTABLE                         R5 R6 R4
       36 JUMPIF                           R5 ; [+9]
       37 GETUPVAL                         R6 1
       38 MOVE                             R8 R4
       39 NAMECALL                         R6 R6 K6 ["GetTranslator"]
       41 CALL                             R6 2 1
       42 MOVE                             R5 R6
       43 GETTABLEKS                       R6 R0 K8 ["_translators"]
       45 SETTABLE                         R5 R6 R4
       46 GETIMPORT                        R6 K10 [pcall]
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          REF R5
       50 CAPTURE                          REF R2
       51 CAPTURE                          VAL R3
       52 CALL                             R6 1 2
       53 JUMPIFNOT                        R6 ; [+2]
       54 CLOSEUPVALS                      R2
       55 RETURN                           R7 1
       56 GETTABLEKS                       R9 R0 K5 ["_fallbackTranslators"]
       58 GETTABLE                         R8 R9 R4
       59 JUMPIF                           R8 ; [+9]
       60 GETUPVAL                         R9 0
       61 LOADK                            R11 K4 ["en_US"]
       62 NAMECALL                         R9 R9 K6 ["GetTranslator"]
       64 CALL                             R9 2 1
       65 MOVE                             R8 R9
       66 GETTABLEKS                       R9 R0 K5 ["_fallbackTranslators"]
       68 SETTABLE                         R8 R9 R4
       69 MOVE                             R11 R2
       70 MOVE                             R12 R3
       71 NAMECALL                         R9 R8 K7 ["FormatByKey"]
       73 CALL                             R9 3 -1
       74 CLOSEUPVALS                      R2
       75 RETURN                           R9 -1
       76 CLOSEUPVALS                      R5

PROTO_82:
        0 GETTABLEKS                       R3 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R3 R3 K1 ["Theme"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 NAMECALL                         R3 R3 K2 ["GetColor"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_83:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["Theme"]
        4 GETTABLEKS                       R1 R1 K2 ["Name"]
        6 RETURN                           R1 1

PROTO_84:
        0 GETTABLEKS                       R3 R0 K0 ["_settingCache"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+13]
        4 DUPTABLE                         R3 K2 [{"Value"}]
        5 GETTABLEKS                       R4 R0 K3 ["_plugin"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R4 R4 K4 ["GetSetting"]
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R4 R3 K1 ["Value"]
       13 MOVE                             R2 R3
       14 GETTABLEKS                       R3 R0 K0 ["_settingCache"]
       16 SETTABLE                         R2 R3 R1
       17 GETTABLEKS                       R3 R2 K1 ["Value"]
       19 RETURN                           R3 1

PROTO_85:
        0 GETTABLEKS                       R4 R0 K0 ["_settingCache"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+14]
        4 GETTABLEKS                       R4 R3 K1 ["Value"]
        6 JUMPIFEQ                         R4 R2 ; [+24]
        8 GETTABLEKS                       R4 R0 K2 ["_plugin"]
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 NAMECALL                         R4 R4 K3 ["SetSetting"]
       14 CALL                             R4 3 0
       15 SETTABLEKS                       R2 R3 K1 ["Value"]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R4 R0 K2 ["_plugin"]
       20 MOVE                             R6 R1
       21 MOVE                             R7 R2
       22 NAMECALL                         R4 R4 K3 ["SetSetting"]
       24 CALL                             R4 3 0
       25 GETTABLEKS                       R4 R0 K0 ["_settingCache"]
       27 DUPTABLE                         R5 K4 [{"Value"}]
       28 SETTABLEKS                       R2 R5 K1 ["Value"]
       30 SETTABLE                         R5 R4 R1
       31 RETURN                           R0 0

PROTO_86:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R2 R2 K1 ["ShowPivotIndicator"]
        4 GETTABLEKS                       R3 R0 K0 ["_draggerService"]
        6 SETTABLEKS                       R1 R3 K1 ["ShowPivotIndicator"]
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Utility"]
       11 GETTABLEKS                       R2 R2 K6 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Utility"]
       18 GETTABLEKS                       R3 R3 K7 ["setInsertPoint"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Utility"]
       25 GETTABLEKS                       R4 R4 K8 ["Colors"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Types"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R0 K10 ["Resources"]
       35 GETTABLEKS                       R5 R5 K11 ["SourceStrings"]
       37 GETTABLEKS                       R6 R0 K10 ["Resources"]
       39 GETTABLEKS                       R6 R6 K12 ["LocalizedStrings"]
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R8 R0 K13 ["Flags"]
       45 GETTABLEKS                       R8 R8 K14 ["getFFlagNextGenDraggers"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K16 [game]
       50 LOADK                            R10 K17 ["NewCameraControls_BetaUpdate"]
       51 NAMECALL                         R8 R8 K18 ["GetEngineFeature"]
       53 CALL                             R8 2 1
       54 NEWTABLE                         R9 128 0
       56 SETTABLEKS                       R9 R9 K19 ["__index"]
       58 MOVE                             R11 R7
       59 CALL                             R11 0 1
       60 JUMPIFNOT                        R11 ; [+2]
       61 LOADK                            R10 K20 [0.033]
       62 JUMP                             ; [+1]
       63 LOADK                            R10 K21 [0.05]
       64 DUPCLOSURE                       R11 K22 [PROTO_0]
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R11 R9 K23 ["new"]
       70 DUPCLOSURE                       R11 K24 [PROTO_1]
       71 SETTABLEKS                       R11 R9 K25 ["getGuiParent"]
       73 DUPCLOSURE                       R11 K26 [PROTO_3]
       74 SETTABLEKS                       R11 R9 K27 ["setHoverInstance"]
       76 DUPCLOSURE                       R11 K28 [PROTO_6]
       77 SETTABLEKS                       R11 R9 K29 ["onInstanceHovered"]
       79 DUPCLOSURE                       R11 K30 [PROTO_7]
       80 SETTABLEKS                       R11 R9 K31 ["shouldUseLocalSpace"]
       82 DUPCLOSURE                       R11 K32 [PROTO_8]
       83 SETTABLEKS                       R11 R9 K33 ["areCollisionsEnabled"]
       85 DUPCLOSURE                       R11 K34 [PROTO_9]
       86 SETTABLEKS                       R11 R9 K35 ["areConstraintsEnabled"]
       88 DUPCLOSURE                       R11 K36 [PROTO_10]
       89 SETTABLEKS                       R11 R9 K37 ["areConstraintDetailsShown"]
       91 DUPCLOSURE                       R11 K38 [PROTO_11]
       92 SETTABLEKS                       R11 R9 K39 ["shouldDrawConstraintsOnTop"]
       94 DUPCLOSURE                       R11 K40 [PROTO_12]
       95 SETTABLEKS                       R11 R9 K41 ["shouldJoinSurfaces"]
       97 DUPCLOSURE                       R11 K42 [PROTO_13]
       98 SETTABLEKS                       R11 R9 K43 ["getShowBoundingBox"]
      100 DUPCLOSURE                       R11 K44 [PROTO_14]
      101 SETTABLEKS                       R11 R9 K45 ["getShowOutline"]
      103 DUPCLOSURE                       R11 K46 [PROTO_15]
      104 SETTABLEKS                       R11 R9 K47 ["shouldShowHover"]
      106 DUPCLOSURE                       R11 K48 [PROTO_16]
      107 SETTABLEKS                       R11 R9 K49 ["shouldAnimateHover"]
      109 DUPCLOSURE                       R11 K50 [PROTO_17]
      110 SETTABLEKS                       R11 R9 K51 ["shouldSelectScopeByDefault"]
      112 DUPCLOSURE                       R11 K52 [PROTO_18]
      113 SETTABLEKS                       R11 R9 K53 ["getHoverAnimationSpeedInSeconds"]
      115 DUPCLOSURE                       R11 K54 [PROTO_19]
      116 SETTABLEKS                       R11 R9 K55 ["getHoverBoxColor"]
      118 DUPCLOSURE                       R11 K56 [PROTO_20]
      119 SETTABLEKS                       R11 R9 K57 ["getHoverThickness"]
      121 DUPCLOSURE                       R11 K58 [PROTO_21]
      122 SETTABLEKS                       R11 R9 K59 ["getHoverLineThickness"]
      124 DUPCLOSURE                       R11 K60 [PROTO_22]
      125 SETTABLEKS                       R11 R9 K61 ["getSelectionBoxColor"]
      127 DUPCLOSURE                       R11 K62 [PROTO_23]
      128 SETTABLEKS                       R11 R9 K63 ["useBoundingBoxMoveHandles"]
      130 DUPCLOSURE                       R11 K64 [PROTO_24]
      131 SETTABLEKS                       R11 R9 K65 ["getGeometrySnapColor"]
      133 DUPCLOSURE                       R11 K66 [PROTO_25]
      134 SETTABLEKS                       R11 R9 K67 ["getGridColor"]
      136 DUPCLOSURE                       R11 K68 [PROTO_26]
      137 SETTABLEKS                       R11 R9 K69 ["getChosenColor"]
      139 DUPCLOSURE                       R11 K70 [PROTO_27]
      140 SETTABLEKS                       R11 R9 K71 ["shouldShowHoverGrids"]
      142 DUPCLOSURE                       R11 K72 [PROTO_28]
      143 SETTABLEKS                       R11 R9 K73 ["shouldShowTargetGrids"]
      145 DUPCLOSURE                       R11 K74 [PROTO_29]
      146 SETTABLEKS                       R11 R9 K75 ["shouldShowPreciseInput"]
      148 DUPCLOSURE                       R11 K76 [PROTO_30]
      149 SETTABLEKS                       R11 R9 K77 ["shouldShowDraggedPoint"]
      151 DUPCLOSURE                       R11 K78 [PROTO_31]
      152 SETTABLEKS                       R11 R9 K79 ["getMajorGridIncrement"]
      154 DUPCLOSURE                       R11 K80 [PROTO_32]
      155 SETTABLEKS                       R11 R9 K81 ["getDraggerScaleFactor"]
      157 DUPCLOSURE                       R11 K82 [PROTO_33]
      158 SETTABLEKS                       R11 R9 K83 ["getDraggerLengthFactor"]
      160 DUPCLOSURE                       R11 K84 [PROTO_34]
      161 SETTABLEKS                       R11 R9 K85 ["getDraggerShowNegativeAxes"]
      163 DUPCLOSURE                       R11 K86 [PROTO_35]
      164 SETTABLEKS                       R11 R9 K87 ["getDraggerShowPlanes"]
      166 DUPCLOSURE                       R11 K88 [PROTO_36]
      167 SETTABLEKS                       R11 R9 K89 ["getDraggerShowTrackball"]
      169 DUPCLOSURE                       R11 K90 [PROTO_37]
      170 SETTABLEKS                       R11 R9 K91 ["getDraggerShowWhileDragging"]
      172 DUPCLOSURE                       R11 K92 [PROTO_38]
      173 SETTABLEKS                       R11 R9 K93 ["getDraggerShowAxisTicks"]
      175 DUPCLOSURE                       R11 K94 [PROTO_39]
      176 SETTABLEKS                       R11 R9 K95 ["getXAxisColor"]
      178 DUPCLOSURE                       R11 K96 [PROTO_40]
      179 SETTABLEKS                       R11 R9 K97 ["getYAxisColor"]
      181 DUPCLOSURE                       R11 K98 [PROTO_41]
      182 SETTABLEKS                       R11 R9 K99 ["getZAxisColor"]
      184 DUPCLOSURE                       R11 K100 [PROTO_42]
      185 SETTABLEKS                       R11 R9 K101 ["getVAxisColor"]
      187 DUPCLOSURE                       R11 K102 [PROTO_43]
      188 SETTABLEKS                       R11 R9 K103 ["getTiltRotateDuration"]
      190 DUPCLOSURE                       R11 K104 [PROTO_44]
      191 SETTABLEKS                       R11 R9 K105 ["getMaxSoftSnaps"]
      193 DUPCLOSURE                       R11 K106 [PROTO_45]
      194 SETTABLEKS                       R11 R9 K107 ["getSoftSnapMarginFactor"]
      196 DUPCLOSURE                       R11 K108 [PROTO_46]
      197 SETTABLEKS                       R11 R9 K109 ["getSummonMarginFactor"]
      199 DUPCLOSURE                       R11 K110 [PROTO_47]
      200 SETTABLEKS                       R11 R9 K111 ["getCameraCFrame"]
      202 DUPCLOSURE                       R11 K112 [PROTO_48]
      203 SETTABLEKS                       R11 R9 K113 ["getCamera"]
      205 DUPCLOSURE                       R11 K114 [PROTO_49]
      206 SETTABLEKS                       R11 R9 K115 ["getMouseUnitRay"]
      208 DUPCLOSURE                       R11 K116 [PROTO_50]
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R7
      211 SETTABLEKS                       R11 R9 K117 ["getHandleScale"]
      213 DUPCLOSURE                       R11 K118 [PROTO_51]
      214 SETTABLEKS                       R11 R9 K119 ["getMouseRay"]
      216 DUPCLOSURE                       R11 K120 [PROTO_52]
      217 SETTABLEKS                       R11 R9 K121 ["getMouseLocation"]
      219 DUPCLOSURE                       R11 K122 [PROTO_53]
      220 SETTABLEKS                       R11 R9 K123 ["viewportPointToRay"]
      222 DUPCLOSURE                       R11 K124 [PROTO_54]
      223 SETTABLEKS                       R11 R9 K125 ["worldToViewportPoint"]
      225 DUPCLOSURE                       R11 K126 [PROTO_55]
      226 SETTABLEKS                       R11 R9 K127 ["getViewportSize"]
      228 DUPCLOSURE                       R11 K128 [PROTO_56]
      229 SETTABLEKS                       R11 R9 K129 ["setMouseIcon"]
      231 DUPCLOSURE                       R11 K130 [PROTO_57]
      232 SETTABLEKS                       R11 R9 K131 ["getSelection"]
      234 DUPCLOSURE                       R11 K132 [PROTO_58]
      235 SETTABLEKS                       R11 R9 K133 ["isSimulating"]
      237 DUPCLOSURE                       R11 K134 [PROTO_59]
      238 SETTABLEKS                       R11 R9 K135 ["isTabKeyDown"]
      240 DUPCLOSURE                       R11 K136 [PROTO_60]
      241 SETTABLEKS                       R11 R9 K137 ["isAltKeyDown"]
      243 DUPCLOSURE                       R11 K138 [PROTO_61]
      244 SETTABLEKS                       R11 R9 K139 ["isCtrlKeyDown"]
      246 DUPCLOSURE                       R11 K140 [PROTO_62]
      247 SETTABLEKS                       R11 R9 K141 ["isShiftKeyDown"]
      249 DUPCLOSURE                       R11 K142 [PROTO_63]
      250 CAPTURE                          VAL R8
      251 SETTABLEKS                       R11 R9 K143 ["shouldExtendSelection"]
      253 DUPCLOSURE                       R11 K144 [PROTO_64]
      254 CAPTURE                          VAL R8
      255 SETTABLEKS                       R11 R9 K145 ["isSelectionCycleModifierDown"]
      257 DUPCLOSURE                       R11 K146 [PROTO_65]
      258 SETTABLEKS                       R11 R9 K147 ["getGridSize"]
      260 DUPCLOSURE                       R11 K148 [PROTO_66]
      261 SETTABLEKS                       R11 R9 K149 ["getGridSnapEnabled"]
      263 DUPCLOSURE                       R11 K150 [PROTO_67]
      264 SETTABLEKS                       R11 R9 K151 ["getPartSnapEnabled"]
      266 DUPCLOSURE                       R11 K152 [PROTO_68]
      267 SETTABLEKS                       R11 R9 K153 ["shouldPartSnap"]
      269 DUPCLOSURE                       R11 K154 [PROTO_69]
      270 SETTABLEKS                       R11 R9 K155 ["shouldGridSnap"]
      272 DUPCLOSURE                       R11 K156 [PROTO_70]
      273 SETTABLEKS                       R11 R9 K157 ["shouldAngleSnap"]
      275 DUPCLOSURE                       R11 K158 [PROTO_71]
      276 SETTABLEKS                       R11 R9 K159 ["snapToGridSize"]
      278 DUPCLOSURE                       R11 K160 [PROTO_72]
      279 SETTABLEKS                       R11 R9 K161 ["getRotateIncrement"]
      281 DUPCLOSURE                       R11 K162 [PROTO_73]
      282 CAPTURE                          VAL R1
      283 SETTABLEKS                       R11 R9 K163 ["getAnalytics"]
      285 DUPCLOSURE                       R11 K164 [PROTO_74]
      286 SETTABLEKS                       R11 R9 K165 ["gizmoRaycast"]
      288 DUPCLOSURE                       R11 K166 [PROTO_75]
      289 CAPTURE                          VAL R2
      290 SETTABLEKS                       R11 R9 K7 ["setInsertPoint"]
      292 DUPCLOSURE                       R11 K167 [PROTO_76]
      293 SETTABLEKS                       R11 R9 K168 ["shouldShowActiveInstanceHighlight"]
      295 DUPCLOSURE                       R11 K169 [PROTO_77]
      296 SETTABLEKS                       R11 R9 K170 ["shouldAlignDraggedObjects"]
      298 DUPCLOSURE                       R11 K171 [PROTO_78]
      299 SETTABLEKS                       R11 R9 K172 ["shouldUseBoundingBoxes"]
      301 DUPCLOSURE                       R11 K173 [PROTO_79]
      302 SETTABLEKS                       R11 R9 K174 ["addUndoWaypoint"]
      304 DUPCLOSURE                       R11 K175 [PROTO_81]
      305 CAPTURE                          VAL R5
      306 CAPTURE                          VAL R6
      307 SETTABLEKS                       R11 R9 K176 ["getText"]
      309 DUPCLOSURE                       R11 K177 [PROTO_82]
      310 SETTABLEKS                       R11 R9 K178 ["getThemeColor"]
      312 DUPCLOSURE                       R11 K179 [PROTO_83]
      313 SETTABLEKS                       R11 R9 K180 ["getTheme"]
      315 DUPCLOSURE                       R11 K181 [PROTO_84]
      316 SETTABLEKS                       R11 R9 K182 ["getSetting"]
      318 DUPCLOSURE                       R11 K183 [PROTO_85]
      319 SETTABLEKS                       R11 R9 K184 ["setSetting"]
      321 DUPCLOSURE                       R11 K185 [PROTO_86]
      322 SETTABLEKS                       R11 R9 K186 ["setPivotIndicator"]
      324 RETURN                           R9 1
