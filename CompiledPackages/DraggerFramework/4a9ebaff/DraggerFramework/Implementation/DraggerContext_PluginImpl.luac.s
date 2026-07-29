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
       28 GETTABLEKS                       R4 R0 K9 ["Resources"]
       30 GETTABLEKS                       R4 R4 K10 ["SourceStrings"]
       32 GETTABLEKS                       R5 R0 K9 ["Resources"]
       34 GETTABLEKS                       R5 R5 K11 ["LocalizedStrings"]
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Flags"]
       40 GETTABLEKS                       R7 R7 K13 ["getFFlagNextGenDraggers"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K15 [game]
       45 LOADK                            R9 K16 ["NewCameraControls_BetaUpdate"]
       46 NAMECALL                         R7 R7 K17 ["GetEngineFeature"]
       48 CALL                             R7 2 1
       49 NEWTABLE                         R8 128 0
       51 SETTABLEKS                       R8 R8 K18 ["__index"]
       53 MOVE                             R10 R6
       54 CALL                             R10 0 1
       55 JUMPIFNOT                        R10 ; [+2]
       56 LOADK                            R9 K19 [0.033]
       57 JUMP                             ; [+1]
       58 LOADK                            R9 K20 [0.05]
       59 DUPCLOSURE                       R10 K21 [PROTO_0]
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R10 R8 K22 ["new"]
       65 DUPCLOSURE                       R10 K23 [PROTO_1]
       66 SETTABLEKS                       R10 R8 K24 ["getGuiParent"]
       68 DUPCLOSURE                       R10 K25 [PROTO_3]
       69 SETTABLEKS                       R10 R8 K26 ["setHoverInstance"]
       71 DUPCLOSURE                       R10 K27 [PROTO_6]
       72 SETTABLEKS                       R10 R8 K28 ["onInstanceHovered"]
       74 DUPCLOSURE                       R10 K29 [PROTO_7]
       75 SETTABLEKS                       R10 R8 K30 ["shouldUseLocalSpace"]
       77 DUPCLOSURE                       R10 K31 [PROTO_8]
       78 SETTABLEKS                       R10 R8 K32 ["areCollisionsEnabled"]
       80 DUPCLOSURE                       R10 K33 [PROTO_9]
       81 SETTABLEKS                       R10 R8 K34 ["areConstraintsEnabled"]
       83 DUPCLOSURE                       R10 K35 [PROTO_10]
       84 SETTABLEKS                       R10 R8 K36 ["areConstraintDetailsShown"]
       86 DUPCLOSURE                       R10 K37 [PROTO_11]
       87 SETTABLEKS                       R10 R8 K38 ["shouldDrawConstraintsOnTop"]
       89 DUPCLOSURE                       R10 K39 [PROTO_12]
       90 SETTABLEKS                       R10 R8 K40 ["shouldJoinSurfaces"]
       92 DUPCLOSURE                       R10 K41 [PROTO_13]
       93 SETTABLEKS                       R10 R8 K42 ["getShowBoundingBox"]
       95 DUPCLOSURE                       R10 K43 [PROTO_14]
       96 SETTABLEKS                       R10 R8 K44 ["getShowOutline"]
       98 DUPCLOSURE                       R10 K45 [PROTO_15]
       99 SETTABLEKS                       R10 R8 K46 ["shouldShowHover"]
      101 DUPCLOSURE                       R10 K47 [PROTO_16]
      102 SETTABLEKS                       R10 R8 K48 ["shouldAnimateHover"]
      104 DUPCLOSURE                       R10 K49 [PROTO_17]
      105 SETTABLEKS                       R10 R8 K50 ["shouldSelectScopeByDefault"]
      107 DUPCLOSURE                       R10 K51 [PROTO_18]
      108 SETTABLEKS                       R10 R8 K52 ["getHoverAnimationSpeedInSeconds"]
      110 DUPCLOSURE                       R10 K53 [PROTO_19]
      111 SETTABLEKS                       R10 R8 K54 ["getHoverBoxColor"]
      113 DUPCLOSURE                       R10 K55 [PROTO_20]
      114 SETTABLEKS                       R10 R8 K56 ["getHoverThickness"]
      116 DUPCLOSURE                       R10 K57 [PROTO_21]
      117 SETTABLEKS                       R10 R8 K58 ["getHoverLineThickness"]
      119 DUPCLOSURE                       R10 K59 [PROTO_22]
      120 SETTABLEKS                       R10 R8 K60 ["getSelectionBoxColor"]
      122 DUPCLOSURE                       R10 K61 [PROTO_23]
      123 SETTABLEKS                       R10 R8 K62 ["useBoundingBoxMoveHandles"]
      125 DUPCLOSURE                       R10 K63 [PROTO_24]
      126 SETTABLEKS                       R10 R8 K64 ["getGeometrySnapColor"]
      128 DUPCLOSURE                       R10 K65 [PROTO_25]
      129 SETTABLEKS                       R10 R8 K66 ["getGridColor"]
      131 DUPCLOSURE                       R10 K67 [PROTO_26]
      132 SETTABLEKS                       R10 R8 K68 ["getChosenColor"]
      134 DUPCLOSURE                       R10 K69 [PROTO_27]
      135 SETTABLEKS                       R10 R8 K70 ["shouldShowHoverGrids"]
      137 DUPCLOSURE                       R10 K71 [PROTO_28]
      138 SETTABLEKS                       R10 R8 K72 ["shouldShowTargetGrids"]
      140 DUPCLOSURE                       R10 K73 [PROTO_29]
      141 SETTABLEKS                       R10 R8 K74 ["shouldShowPreciseInput"]
      143 DUPCLOSURE                       R10 K75 [PROTO_30]
      144 SETTABLEKS                       R10 R8 K76 ["shouldShowDraggedPoint"]
      146 DUPCLOSURE                       R10 K77 [PROTO_31]
      147 SETTABLEKS                       R10 R8 K78 ["getMajorGridIncrement"]
      149 DUPCLOSURE                       R10 K79 [PROTO_32]
      150 SETTABLEKS                       R10 R8 K80 ["getDraggerScaleFactor"]
      152 DUPCLOSURE                       R10 K81 [PROTO_33]
      153 SETTABLEKS                       R10 R8 K82 ["getDraggerLengthFactor"]
      155 DUPCLOSURE                       R10 K83 [PROTO_34]
      156 SETTABLEKS                       R10 R8 K84 ["getDraggerShowNegativeAxes"]
      158 DUPCLOSURE                       R10 K85 [PROTO_35]
      159 SETTABLEKS                       R10 R8 K86 ["getDraggerShowPlanes"]
      161 DUPCLOSURE                       R10 K87 [PROTO_36]
      162 SETTABLEKS                       R10 R8 K88 ["getDraggerShowTrackball"]
      164 DUPCLOSURE                       R10 K89 [PROTO_37]
      165 SETTABLEKS                       R10 R8 K90 ["getDraggerShowWhileDragging"]
      167 DUPCLOSURE                       R10 K91 [PROTO_38]
      168 SETTABLEKS                       R10 R8 K92 ["getDraggerShowAxisTicks"]
      170 DUPCLOSURE                       R10 K93 [PROTO_39]
      171 SETTABLEKS                       R10 R8 K94 ["getXAxisColor"]
      173 DUPCLOSURE                       R10 K95 [PROTO_40]
      174 SETTABLEKS                       R10 R8 K96 ["getYAxisColor"]
      176 DUPCLOSURE                       R10 K97 [PROTO_41]
      177 SETTABLEKS                       R10 R8 K98 ["getZAxisColor"]
      179 DUPCLOSURE                       R10 K99 [PROTO_42]
      180 SETTABLEKS                       R10 R8 K100 ["getVAxisColor"]
      182 DUPCLOSURE                       R10 K101 [PROTO_43]
      183 SETTABLEKS                       R10 R8 K102 ["getTiltRotateDuration"]
      185 DUPCLOSURE                       R10 K103 [PROTO_44]
      186 SETTABLEKS                       R10 R8 K104 ["getMaxSoftSnaps"]
      188 DUPCLOSURE                       R10 K105 [PROTO_45]
      189 SETTABLEKS                       R10 R8 K106 ["getSoftSnapMarginFactor"]
      191 DUPCLOSURE                       R10 K107 [PROTO_46]
      192 SETTABLEKS                       R10 R8 K108 ["getSummonMarginFactor"]
      194 DUPCLOSURE                       R10 K109 [PROTO_47]
      195 SETTABLEKS                       R10 R8 K110 ["getCameraCFrame"]
      197 DUPCLOSURE                       R10 K111 [PROTO_48]
      198 SETTABLEKS                       R10 R8 K112 ["getCamera"]
      200 DUPCLOSURE                       R10 K113 [PROTO_49]
      201 SETTABLEKS                       R10 R8 K114 ["getMouseUnitRay"]
      203 DUPCLOSURE                       R10 K115 [PROTO_50]
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R6
      206 SETTABLEKS                       R10 R8 K116 ["getHandleScale"]
      208 DUPCLOSURE                       R10 K117 [PROTO_51]
      209 SETTABLEKS                       R10 R8 K118 ["getMouseRay"]
      211 DUPCLOSURE                       R10 K119 [PROTO_52]
      212 SETTABLEKS                       R10 R8 K120 ["getMouseLocation"]
      214 DUPCLOSURE                       R10 K121 [PROTO_53]
      215 SETTABLEKS                       R10 R8 K122 ["viewportPointToRay"]
      217 DUPCLOSURE                       R10 K123 [PROTO_54]
      218 SETTABLEKS                       R10 R8 K124 ["worldToViewportPoint"]
      220 DUPCLOSURE                       R10 K125 [PROTO_55]
      221 SETTABLEKS                       R10 R8 K126 ["getViewportSize"]
      223 DUPCLOSURE                       R10 K127 [PROTO_56]
      224 SETTABLEKS                       R10 R8 K128 ["setMouseIcon"]
      226 DUPCLOSURE                       R10 K129 [PROTO_57]
      227 SETTABLEKS                       R10 R8 K130 ["getSelection"]
      229 DUPCLOSURE                       R10 K131 [PROTO_58]
      230 SETTABLEKS                       R10 R8 K132 ["isSimulating"]
      232 DUPCLOSURE                       R10 K133 [PROTO_59]
      233 SETTABLEKS                       R10 R8 K134 ["isTabKeyDown"]
      235 DUPCLOSURE                       R10 K135 [PROTO_60]
      236 SETTABLEKS                       R10 R8 K136 ["isAltKeyDown"]
      238 DUPCLOSURE                       R10 K137 [PROTO_61]
      239 SETTABLEKS                       R10 R8 K138 ["isCtrlKeyDown"]
      241 DUPCLOSURE                       R10 K139 [PROTO_62]
      242 SETTABLEKS                       R10 R8 K140 ["isShiftKeyDown"]
      244 DUPCLOSURE                       R10 K141 [PROTO_63]
      245 CAPTURE                          VAL R7
      246 SETTABLEKS                       R10 R8 K142 ["shouldExtendSelection"]
      248 DUPCLOSURE                       R10 K143 [PROTO_64]
      249 CAPTURE                          VAL R7
      250 SETTABLEKS                       R10 R8 K144 ["isSelectionCycleModifierDown"]
      252 DUPCLOSURE                       R10 K145 [PROTO_65]
      253 SETTABLEKS                       R10 R8 K146 ["getGridSize"]
      255 DUPCLOSURE                       R10 K147 [PROTO_66]
      256 SETTABLEKS                       R10 R8 K148 ["getGridSnapEnabled"]
      258 DUPCLOSURE                       R10 K149 [PROTO_67]
      259 SETTABLEKS                       R10 R8 K150 ["getPartSnapEnabled"]
      261 DUPCLOSURE                       R10 K151 [PROTO_68]
      262 SETTABLEKS                       R10 R8 K152 ["shouldPartSnap"]
      264 DUPCLOSURE                       R10 K153 [PROTO_69]
      265 SETTABLEKS                       R10 R8 K154 ["shouldGridSnap"]
      267 DUPCLOSURE                       R10 K155 [PROTO_70]
      268 SETTABLEKS                       R10 R8 K156 ["shouldAngleSnap"]
      270 DUPCLOSURE                       R10 K157 [PROTO_71]
      271 SETTABLEKS                       R10 R8 K158 ["snapToGridSize"]
      273 DUPCLOSURE                       R10 K159 [PROTO_72]
      274 SETTABLEKS                       R10 R8 K160 ["getRotateIncrement"]
      276 DUPCLOSURE                       R10 K161 [PROTO_73]
      277 CAPTURE                          VAL R1
      278 SETTABLEKS                       R10 R8 K162 ["getAnalytics"]
      280 DUPCLOSURE                       R10 K163 [PROTO_74]
      281 SETTABLEKS                       R10 R8 K164 ["gizmoRaycast"]
      283 DUPCLOSURE                       R10 K165 [PROTO_75]
      284 CAPTURE                          VAL R2
      285 SETTABLEKS                       R10 R8 K7 ["setInsertPoint"]
      287 DUPCLOSURE                       R10 K166 [PROTO_76]
      288 SETTABLEKS                       R10 R8 K167 ["shouldShowActiveInstanceHighlight"]
      290 DUPCLOSURE                       R10 K168 [PROTO_77]
      291 SETTABLEKS                       R10 R8 K169 ["shouldAlignDraggedObjects"]
      293 DUPCLOSURE                       R10 K170 [PROTO_78]
      294 SETTABLEKS                       R10 R8 K171 ["shouldUseBoundingBoxes"]
      296 DUPCLOSURE                       R10 K172 [PROTO_79]
      297 SETTABLEKS                       R10 R8 K173 ["addUndoWaypoint"]
      299 DUPCLOSURE                       R10 K174 [PROTO_81]
      300 CAPTURE                          VAL R4
      301 CAPTURE                          VAL R5
      302 SETTABLEKS                       R10 R8 K175 ["getText"]
      304 DUPCLOSURE                       R10 K176 [PROTO_82]
      305 SETTABLEKS                       R10 R8 K177 ["getThemeColor"]
      307 DUPCLOSURE                       R10 K178 [PROTO_83]
      308 SETTABLEKS                       R10 R8 K179 ["getTheme"]
      310 DUPCLOSURE                       R10 K180 [PROTO_84]
      311 SETTABLEKS                       R10 R8 K181 ["getSetting"]
      313 DUPCLOSURE                       R10 K182 [PROTO_85]
      314 SETTABLEKS                       R10 R8 K183 ["setSetting"]
      316 DUPCLOSURE                       R10 K184 [PROTO_86]
      317 SETTABLEKS                       R10 R8 K185 ["setPivotIndicator"]
      319 RETURN                           R8 1
