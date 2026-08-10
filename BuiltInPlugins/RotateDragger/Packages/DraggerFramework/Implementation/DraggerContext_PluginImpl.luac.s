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
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+4]
        5 NAMECALL                         R1 R0 K0 ["isShiftKeyDown"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 NAMECALL                         R1 R0 K1 ["isCtrlKeyDown"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+3]
       13 NAMECALL                         R1 R0 K0 ["isShiftKeyDown"]
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_64:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+11]
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+8]
        5 NAMECALL                         R1 R0 K0 ["isAltKeyDown"]
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+3]
        9 NAMECALL                         R1 R0 K1 ["isCtrlKeyDown"]
       11 CALL                             R1 1 1
       12 RETURN                           R1 1
       13 NAMECALL                         R1 R0 K0 ["isAltKeyDown"]
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

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
       48 GETIMPORT                        R8 K4 [require]
       50 GETTABLEKS                       R9 R0 K13 ["Flags"]
       52 GETTABLEKS                       R9 R9 K15 ["getFFlagDraggerReenableCtrlSelect"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K17 [game]
       57 LOADK                            R11 K18 ["NewCameraControls_BetaUpdate"]
       58 NAMECALL                         R9 R9 K19 ["GetEngineFeature"]
       60 CALL                             R9 2 1
       61 NEWTABLE                         R10 128 0
       63 SETTABLEKS                       R10 R10 K20 ["__index"]
       65 MOVE                             R12 R7
       66 CALL                             R12 0 1
       67 JUMPIFNOT                        R12 ; [+2]
       68 LOADK                            R11 K21 [0.033]
       69 JUMP                             ; [+1]
       70 LOADK                            R11 K22 [0.05]
       71 DUPCLOSURE                       R12 K23 [PROTO_0]
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R12 R10 K24 ["new"]
       77 DUPCLOSURE                       R12 K25 [PROTO_1]
       78 SETTABLEKS                       R12 R10 K26 ["getGuiParent"]
       80 DUPCLOSURE                       R12 K27 [PROTO_3]
       81 SETTABLEKS                       R12 R10 K28 ["setHoverInstance"]
       83 DUPCLOSURE                       R12 K29 [PROTO_6]
       84 SETTABLEKS                       R12 R10 K30 ["onInstanceHovered"]
       86 DUPCLOSURE                       R12 K31 [PROTO_7]
       87 SETTABLEKS                       R12 R10 K32 ["shouldUseLocalSpace"]
       89 DUPCLOSURE                       R12 K33 [PROTO_8]
       90 SETTABLEKS                       R12 R10 K34 ["areCollisionsEnabled"]
       92 DUPCLOSURE                       R12 K35 [PROTO_9]
       93 SETTABLEKS                       R12 R10 K36 ["areConstraintsEnabled"]
       95 DUPCLOSURE                       R12 K37 [PROTO_10]
       96 SETTABLEKS                       R12 R10 K38 ["areConstraintDetailsShown"]
       98 DUPCLOSURE                       R12 K39 [PROTO_11]
       99 SETTABLEKS                       R12 R10 K40 ["shouldDrawConstraintsOnTop"]
      101 DUPCLOSURE                       R12 K41 [PROTO_12]
      102 SETTABLEKS                       R12 R10 K42 ["shouldJoinSurfaces"]
      104 DUPCLOSURE                       R12 K43 [PROTO_13]
      105 SETTABLEKS                       R12 R10 K44 ["getShowBoundingBox"]
      107 DUPCLOSURE                       R12 K45 [PROTO_14]
      108 SETTABLEKS                       R12 R10 K46 ["getShowOutline"]
      110 DUPCLOSURE                       R12 K47 [PROTO_15]
      111 SETTABLEKS                       R12 R10 K48 ["shouldShowHover"]
      113 DUPCLOSURE                       R12 K49 [PROTO_16]
      114 SETTABLEKS                       R12 R10 K50 ["shouldAnimateHover"]
      116 DUPCLOSURE                       R12 K51 [PROTO_17]
      117 SETTABLEKS                       R12 R10 K52 ["shouldSelectScopeByDefault"]
      119 DUPCLOSURE                       R12 K53 [PROTO_18]
      120 SETTABLEKS                       R12 R10 K54 ["getHoverAnimationSpeedInSeconds"]
      122 DUPCLOSURE                       R12 K55 [PROTO_19]
      123 SETTABLEKS                       R12 R10 K56 ["getHoverBoxColor"]
      125 DUPCLOSURE                       R12 K57 [PROTO_20]
      126 SETTABLEKS                       R12 R10 K58 ["getHoverThickness"]
      128 DUPCLOSURE                       R12 K59 [PROTO_21]
      129 SETTABLEKS                       R12 R10 K60 ["getHoverLineThickness"]
      131 DUPCLOSURE                       R12 K61 [PROTO_22]
      132 SETTABLEKS                       R12 R10 K62 ["getSelectionBoxColor"]
      134 DUPCLOSURE                       R12 K63 [PROTO_23]
      135 SETTABLEKS                       R12 R10 K64 ["useBoundingBoxMoveHandles"]
      137 DUPCLOSURE                       R12 K65 [PROTO_24]
      138 SETTABLEKS                       R12 R10 K66 ["getGeometrySnapColor"]
      140 DUPCLOSURE                       R12 K67 [PROTO_25]
      141 SETTABLEKS                       R12 R10 K68 ["getGridColor"]
      143 DUPCLOSURE                       R12 K69 [PROTO_26]
      144 SETTABLEKS                       R12 R10 K70 ["getChosenColor"]
      146 DUPCLOSURE                       R12 K71 [PROTO_27]
      147 SETTABLEKS                       R12 R10 K72 ["shouldShowHoverGrids"]
      149 DUPCLOSURE                       R12 K73 [PROTO_28]
      150 SETTABLEKS                       R12 R10 K74 ["shouldShowTargetGrids"]
      152 DUPCLOSURE                       R12 K75 [PROTO_29]
      153 SETTABLEKS                       R12 R10 K76 ["shouldShowPreciseInput"]
      155 DUPCLOSURE                       R12 K77 [PROTO_30]
      156 SETTABLEKS                       R12 R10 K78 ["shouldShowDraggedPoint"]
      158 DUPCLOSURE                       R12 K79 [PROTO_31]
      159 SETTABLEKS                       R12 R10 K80 ["getMajorGridIncrement"]
      161 DUPCLOSURE                       R12 K81 [PROTO_32]
      162 SETTABLEKS                       R12 R10 K82 ["getDraggerScaleFactor"]
      164 DUPCLOSURE                       R12 K83 [PROTO_33]
      165 SETTABLEKS                       R12 R10 K84 ["getDraggerLengthFactor"]
      167 DUPCLOSURE                       R12 K85 [PROTO_34]
      168 SETTABLEKS                       R12 R10 K86 ["getDraggerShowNegativeAxes"]
      170 DUPCLOSURE                       R12 K87 [PROTO_35]
      171 SETTABLEKS                       R12 R10 K88 ["getDraggerShowPlanes"]
      173 DUPCLOSURE                       R12 K89 [PROTO_36]
      174 SETTABLEKS                       R12 R10 K90 ["getDraggerShowTrackball"]
      176 DUPCLOSURE                       R12 K91 [PROTO_37]
      177 SETTABLEKS                       R12 R10 K92 ["getDraggerShowWhileDragging"]
      179 DUPCLOSURE                       R12 K93 [PROTO_38]
      180 SETTABLEKS                       R12 R10 K94 ["getDraggerShowAxisTicks"]
      182 DUPCLOSURE                       R12 K95 [PROTO_39]
      183 SETTABLEKS                       R12 R10 K96 ["getXAxisColor"]
      185 DUPCLOSURE                       R12 K97 [PROTO_40]
      186 SETTABLEKS                       R12 R10 K98 ["getYAxisColor"]
      188 DUPCLOSURE                       R12 K99 [PROTO_41]
      189 SETTABLEKS                       R12 R10 K100 ["getZAxisColor"]
      191 DUPCLOSURE                       R12 K101 [PROTO_42]
      192 SETTABLEKS                       R12 R10 K102 ["getVAxisColor"]
      194 DUPCLOSURE                       R12 K103 [PROTO_43]
      195 SETTABLEKS                       R12 R10 K104 ["getTiltRotateDuration"]
      197 DUPCLOSURE                       R12 K105 [PROTO_44]
      198 SETTABLEKS                       R12 R10 K106 ["getMaxSoftSnaps"]
      200 DUPCLOSURE                       R12 K107 [PROTO_45]
      201 SETTABLEKS                       R12 R10 K108 ["getSoftSnapMarginFactor"]
      203 DUPCLOSURE                       R12 K109 [PROTO_46]
      204 SETTABLEKS                       R12 R10 K110 ["getSummonMarginFactor"]
      206 DUPCLOSURE                       R12 K111 [PROTO_47]
      207 SETTABLEKS                       R12 R10 K112 ["getCameraCFrame"]
      209 DUPCLOSURE                       R12 K113 [PROTO_48]
      210 SETTABLEKS                       R12 R10 K114 ["getCamera"]
      212 DUPCLOSURE                       R12 K115 [PROTO_49]
      213 SETTABLEKS                       R12 R10 K116 ["getMouseUnitRay"]
      215 DUPCLOSURE                       R12 K117 [PROTO_50]
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R7
      218 SETTABLEKS                       R12 R10 K118 ["getHandleScale"]
      220 DUPCLOSURE                       R12 K119 [PROTO_51]
      221 SETTABLEKS                       R12 R10 K120 ["getMouseRay"]
      223 DUPCLOSURE                       R12 K121 [PROTO_52]
      224 SETTABLEKS                       R12 R10 K122 ["getMouseLocation"]
      226 DUPCLOSURE                       R12 K123 [PROTO_53]
      227 SETTABLEKS                       R12 R10 K124 ["viewportPointToRay"]
      229 DUPCLOSURE                       R12 K125 [PROTO_54]
      230 SETTABLEKS                       R12 R10 K126 ["worldToViewportPoint"]
      232 DUPCLOSURE                       R12 K127 [PROTO_55]
      233 SETTABLEKS                       R12 R10 K128 ["getViewportSize"]
      235 DUPCLOSURE                       R12 K129 [PROTO_56]
      236 SETTABLEKS                       R12 R10 K130 ["setMouseIcon"]
      238 DUPCLOSURE                       R12 K131 [PROTO_57]
      239 SETTABLEKS                       R12 R10 K132 ["getSelection"]
      241 DUPCLOSURE                       R12 K133 [PROTO_58]
      242 SETTABLEKS                       R12 R10 K134 ["isSimulating"]
      244 DUPCLOSURE                       R12 K135 [PROTO_59]
      245 SETTABLEKS                       R12 R10 K136 ["isTabKeyDown"]
      247 DUPCLOSURE                       R12 K137 [PROTO_60]
      248 SETTABLEKS                       R12 R10 K138 ["isAltKeyDown"]
      250 DUPCLOSURE                       R12 K139 [PROTO_61]
      251 SETTABLEKS                       R12 R10 K140 ["isCtrlKeyDown"]
      253 DUPCLOSURE                       R12 K141 [PROTO_62]
      254 SETTABLEKS                       R12 R10 K142 ["isShiftKeyDown"]
      256 DUPCLOSURE                       R12 K143 [PROTO_63]
      257 CAPTURE                          VAL R9
      258 CAPTURE                          VAL R8
      259 SETTABLEKS                       R12 R10 K144 ["shouldExtendSelection"]
      261 DUPCLOSURE                       R12 K145 [PROTO_64]
      262 CAPTURE                          VAL R9
      263 CAPTURE                          VAL R8
      264 SETTABLEKS                       R12 R10 K146 ["isSelectionCycleModifierDown"]
      266 DUPCLOSURE                       R12 K147 [PROTO_65]
      267 SETTABLEKS                       R12 R10 K148 ["getGridSize"]
      269 DUPCLOSURE                       R12 K149 [PROTO_66]
      270 SETTABLEKS                       R12 R10 K150 ["getGridSnapEnabled"]
      272 DUPCLOSURE                       R12 K151 [PROTO_67]
      273 SETTABLEKS                       R12 R10 K152 ["getPartSnapEnabled"]
      275 DUPCLOSURE                       R12 K153 [PROTO_68]
      276 SETTABLEKS                       R12 R10 K154 ["shouldPartSnap"]
      278 DUPCLOSURE                       R12 K155 [PROTO_69]
      279 SETTABLEKS                       R12 R10 K156 ["shouldGridSnap"]
      281 DUPCLOSURE                       R12 K157 [PROTO_70]
      282 SETTABLEKS                       R12 R10 K158 ["shouldAngleSnap"]
      284 DUPCLOSURE                       R12 K159 [PROTO_71]
      285 SETTABLEKS                       R12 R10 K160 ["snapToGridSize"]
      287 DUPCLOSURE                       R12 K161 [PROTO_72]
      288 SETTABLEKS                       R12 R10 K162 ["getRotateIncrement"]
      290 DUPCLOSURE                       R12 K163 [PROTO_73]
      291 CAPTURE                          VAL R1
      292 SETTABLEKS                       R12 R10 K164 ["getAnalytics"]
      294 DUPCLOSURE                       R12 K165 [PROTO_74]
      295 SETTABLEKS                       R12 R10 K166 ["gizmoRaycast"]
      297 DUPCLOSURE                       R12 K167 [PROTO_75]
      298 CAPTURE                          VAL R2
      299 SETTABLEKS                       R12 R10 K7 ["setInsertPoint"]
      301 DUPCLOSURE                       R12 K168 [PROTO_76]
      302 SETTABLEKS                       R12 R10 K169 ["shouldShowActiveInstanceHighlight"]
      304 DUPCLOSURE                       R12 K170 [PROTO_77]
      305 SETTABLEKS                       R12 R10 K171 ["shouldAlignDraggedObjects"]
      307 DUPCLOSURE                       R12 K172 [PROTO_78]
      308 SETTABLEKS                       R12 R10 K173 ["shouldUseBoundingBoxes"]
      310 DUPCLOSURE                       R12 K174 [PROTO_79]
      311 SETTABLEKS                       R12 R10 K175 ["addUndoWaypoint"]
      313 DUPCLOSURE                       R12 K176 [PROTO_81]
      314 CAPTURE                          VAL R5
      315 CAPTURE                          VAL R6
      316 SETTABLEKS                       R12 R10 K177 ["getText"]
      318 DUPCLOSURE                       R12 K178 [PROTO_82]
      319 SETTABLEKS                       R12 R10 K179 ["getThemeColor"]
      321 DUPCLOSURE                       R12 K180 [PROTO_83]
      322 SETTABLEKS                       R12 R10 K181 ["getTheme"]
      324 DUPCLOSURE                       R12 K182 [PROTO_84]
      325 SETTABLEKS                       R12 R10 K183 ["getSetting"]
      327 DUPCLOSURE                       R12 K184 [PROTO_85]
      328 SETTABLEKS                       R12 R10 K185 ["setSetting"]
      330 DUPCLOSURE                       R12 K186 [PROTO_86]
      331 SETTABLEKS                       R12 R10 K187 ["setPivotIndicator"]
      333 RETURN                           R10 1
