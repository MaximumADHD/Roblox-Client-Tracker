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
        2 GETTABLEKS                       R1 R1 K1 ["DraggerMajorGridIncrement"]
        4 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerScaleFactor"]
        4 RETURN                           R1 1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerLengthFactor"]
        4 RETURN                           R1 1

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowNegativeAxes"]
        4 RETURN                           R1 1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowPlanes"]
        4 RETURN                           R1 1

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowTrackball"]
        4 RETURN                           R1 1

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowWhileDragging"]
        4 RETURN                           R1 1

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerShowAxisTicks"]
        4 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["XAxisColor"]
        4 RETURN                           R1 1

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["YAxisColor"]
        4 RETURN                           R1 1

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["ZAxisColor"]
        4 RETURN                           R1 1

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["VAxisColor"]
        4 RETURN                           R1 1

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerTiltRotateDuration"]
        4 RETURN                           R1 1

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerMaxSoftSnaps"]
        4 RETURN                           R1 1

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerSoftSnapMarginFactor"]
        4 RETURN                           R1 1

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerSummonMarginFactor"]
        4 RETURN                           R1 1

PROTO_46:
        0 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R1 R1 K1 ["CurrentCamera"]
        4 GETTABLEKS                       R1 R1 K2 ["CFrame"]
        6 RETURN                           R1 1

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R1 R1 K1 ["CurrentCamera"]
        4 RETURN                           R1 1

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["_mouse"]
        2 GETTABLEKS                       R1 R1 K1 ["UnitRay"]
        4 RETURN                           R1 1

PROTO_49:
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

PROTO_50:
        0 NAMECALL                         R1 R0 K0 ["getMouseUnitRay"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [Ray.new]
        5 GETTABLEKS                       R3 R1 K4 ["Origin"]
        7 GETTABLEKS                       R5 R1 K6 ["Direction"]
        9 MULK                             R4 R5 K5 [10000]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_51:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 NAMECALL                         R1 R1 K1 ["GetMouseLocation"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_52:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R2 R2 K1 ["CurrentCamera"]
        4 GETTABLEKS                       R4 R1 K2 ["X"]
        6 GETTABLEKS                       R5 R1 K3 ["Y"]
        8 NAMECALL                         R2 R2 K4 ["ViewportPointToRay"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_53:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R2 R2 K1 ["CurrentCamera"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["WorldToViewportPoint"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_54:
        0 GETTABLEKS                       R1 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R1 R1 K1 ["CurrentCamera"]
        4 GETTABLEKS                       R1 R1 K2 ["ViewportSize"]
        6 RETURN                           R1 1

PROTO_55:
        0 GETTABLEKS                       R2 R0 K0 ["_mouse"]
        2 SETTABLEKS                       R1 R2 K1 ["Icon"]
        4 RETURN                           R0 0

PROTO_56:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_57:
        0 GETTABLEKS                       R1 R0 K0 ["_runService"]
        2 NAMECALL                         R1 R1 K1 ["IsRunning"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_58:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 GETIMPORT                        R3 K4 [Enum.KeyCode.Tab]
        4 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        5 GETTABLEKS                       R1 R1 K1 ["LinearSnapIncrement"]
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K2 ["_studioService"]
       10 GETTABLEKS                       R1 R1 K3 ["GridSize"]
       12 RETURN                           R1 1

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R1 K1 ["LinearSnapEnabled"]
        4 RETURN                           R1 1

PROTO_66:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R1 K1 ["PartSnapEnabled"]
        4 RETURN                           R1 1

PROTO_67:
        0 NAMECALL                         R1 R0 K0 ["getPartSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_68:
        0 NAMECALL                         R1 R0 K0 ["getGridSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_69:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R1 K1 ["AngleSnapEnabled"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 NAMECALL                         R2 R0 K2 ["isShiftKeyDown"]
        7 CALL                             R2 1 1
        8 NOT                              R1 R2
        9 RETURN                           R1 1

PROTO_70:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+17]
        3 NAMECALL                         R2 R0 K0 ["shouldGridSnap"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+12]
        7 GETTABLEKS                       R2 R0 K1 ["_draggerService"]
        9 GETTABLEKS                       R2 R2 K2 ["LinearSnapIncrement"]
       11 DIV                              R6 R1 R2
       12 ADDK                             R5 R6 K3 [0.5]
       13 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       14 GETIMPORT                        R4 K6 [math.floor]
       16 CALL                             R4 1 1
       17 MUL                              R3 R4 R2
       18 RETURN                           R3 1
       19 RETURN                           R1 1
       20 GETTABLEKS                       R2 R0 K1 ["_draggerService"]
       22 GETTABLEKS                       R2 R2 K7 ["LinearSnapEnabled"]
       24 JUMPIFNOT                        R2 ; [+12]
       25 GETTABLEKS                       R2 R0 K1 ["_draggerService"]
       27 GETTABLEKS                       R2 R2 K2 ["LinearSnapIncrement"]
       29 DIV                              R6 R1 R2
       30 ADDK                             R5 R6 K3 [0.5]
       31 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       32 GETIMPORT                        R4 K6 [math.floor]
       34 CALL                             R4 1 1
       35 MUL                              R3 R4 R2
       36 RETURN                           R3 1
       37 RETURN                           R1 1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+11]
        3 NAMECALL                         R1 R0 K0 ["shouldAngleSnap"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETTABLEKS                       R1 R0 K1 ["_draggerService"]
        9 GETTABLEKS                       R1 R1 K2 ["AngleSnapIncrement"]
       11 RETURN                           R1 1
       12 LOADN                            R1 0
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R0 K1 ["_draggerService"]
       16 GETTABLEKS                       R1 R1 K3 ["AngleSnapEnabled"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K1 ["_draggerService"]
       21 GETTABLEKS                       R1 R1 K2 ["AngleSnapIncrement"]
       23 RETURN                           R1 1
       24 LOADN                            R1 0
       25 RETURN                           R1 1

PROTO_72:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_73:
        0 GETTABLEKS                       R4 R0 K0 ["_studioService"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 NAMECALL                         R4 R4 K1 ["GizmoRaycast"]
        7 CALL                             R4 4 -1
        8 RETURN                           R4 -1

PROTO_74:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_75:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionService"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowActiveInstanceHighlight"]
        4 RETURN                           R1 1

PROTO_76:
        0 GETTABLEKS                       R1 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R1 K1 ["AlignDraggedObjects"]
        4 RETURN                           R1 1

PROTO_77:
        0 GETTABLEKS                       R3 R0 K0 ["_changeHistoryService"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["SetWaypoint"]
        5 CALL                             R3 2 0
        6 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_79:
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

PROTO_80:
        0 GETTABLEKS                       R3 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R3 R3 K1 ["Theme"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 NAMECALL                         R3 R3 K2 ["GetColor"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_81:
        0 GETTABLEKS                       R1 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R1 K1 ["Theme"]
        4 GETTABLEKS                       R1 R1 K2 ["Name"]
        6 RETURN                           R1 1

PROTO_82:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+20]
        3 GETTABLEKS                       R3 R0 K0 ["_settingCache"]
        5 GETTABLE                         R2 R3 R1
        6 JUMPIF                           R2 ; [+13]
        7 DUPTABLE                         R3 K2 [{"Value"}]
        8 GETTABLEKS                       R4 R0 K3 ["_plugin"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R4 R4 K4 ["GetSetting"]
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K1 ["Value"]
       16 MOVE                             R2 R3
       17 GETTABLEKS                       R3 R0 K0 ["_settingCache"]
       19 SETTABLE                         R2 R3 R1
       20 GETTABLEKS                       R3 R2 K1 ["Value"]
       22 RETURN                           R3 1
       23 GETTABLEKS                       R2 R0 K3 ["_plugin"]
       25 MOVE                             R4 R1
       26 NAMECALL                         R2 R2 K4 ["GetSetting"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_83:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+32]
        3 GETTABLEKS                       R4 R0 K0 ["_settingCache"]
        5 GETTABLE                         R3 R4 R1
        6 JUMPIFNOT                        R3 ; [+14]
        7 GETTABLEKS                       R4 R3 K1 ["Value"]
        9 JUMPIFEQ                         R4 R2 ; [+32]
       11 GETTABLEKS                       R4 R0 K2 ["_plugin"]
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 NAMECALL                         R4 R4 K3 ["SetSetting"]
       17 CALL                             R4 3 0
       18 SETTABLEKS                       R2 R3 K1 ["Value"]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R4 R0 K2 ["_plugin"]
       23 MOVE                             R6 R1
       24 MOVE                             R7 R2
       25 NAMECALL                         R4 R4 K3 ["SetSetting"]
       27 CALL                             R4 3 0
       28 GETTABLEKS                       R4 R0 K0 ["_settingCache"]
       30 DUPTABLE                         R5 K4 [{"Value"}]
       31 SETTABLEKS                       R2 R5 K1 ["Value"]
       33 SETTABLE                         R5 R4 R1
       34 RETURN                           R0 0
       35 GETTABLEKS                       R3 R0 K2 ["_plugin"]
       37 MOVE                             R5 R1
       38 MOVE                             R6 R2
       39 NAMECALL                         R3 R3 K3 ["SetSetting"]
       41 CALL                             R3 3 0
       42 RETURN                           R0 0

PROTO_84:
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
       40 GETTABLEKS                       R7 R7 K13 ["getFFlagDraggerImprovements"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Flags"]
       47 GETTABLEKS                       R8 R8 K14 ["getFFlagNextGenDraggers"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K16 [game]
       52 LOADK                            R10 K17 ["NewCameraControls_BetaUpdate"]
       53 NAMECALL                         R8 R8 K18 ["GetEngineFeature"]
       55 CALL                             R8 2 1
       56 NEWTABLE                         R9 128 0
       58 SETTABLEKS                       R9 R9 K19 ["__index"]
       60 MOVE                             R11 R7
       61 CALL                             R11 0 1
       62 JUMPIFNOT                        R11 ; [+2]
       63 LOADK                            R10 K20 [0.033]
       64 JUMP                             ; [+1]
       65 LOADK                            R10 K21 [0.05]
       66 DUPCLOSURE                       R11 K22 [PROTO_0]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R11 R9 K23 ["new"]
       72 DUPCLOSURE                       R11 K24 [PROTO_1]
       73 SETTABLEKS                       R11 R9 K25 ["getGuiParent"]
       75 DUPCLOSURE                       R11 K26 [PROTO_3]
       76 SETTABLEKS                       R11 R9 K27 ["setHoverInstance"]
       78 DUPCLOSURE                       R11 K28 [PROTO_6]
       79 SETTABLEKS                       R11 R9 K29 ["onInstanceHovered"]
       81 DUPCLOSURE                       R11 K30 [PROTO_7]
       82 SETTABLEKS                       R11 R9 K31 ["shouldUseLocalSpace"]
       84 DUPCLOSURE                       R11 K32 [PROTO_8]
       85 SETTABLEKS                       R11 R9 K33 ["areCollisionsEnabled"]
       87 DUPCLOSURE                       R11 K34 [PROTO_9]
       88 SETTABLEKS                       R11 R9 K35 ["areConstraintsEnabled"]
       90 DUPCLOSURE                       R11 K36 [PROTO_10]
       91 SETTABLEKS                       R11 R9 K37 ["areConstraintDetailsShown"]
       93 DUPCLOSURE                       R11 K38 [PROTO_11]
       94 SETTABLEKS                       R11 R9 K39 ["shouldDrawConstraintsOnTop"]
       96 DUPCLOSURE                       R11 K40 [PROTO_12]
       97 SETTABLEKS                       R11 R9 K41 ["shouldJoinSurfaces"]
       99 DUPCLOSURE                       R11 K42 [PROTO_13]
      100 SETTABLEKS                       R11 R9 K43 ["getShowBoundingBox"]
      102 DUPCLOSURE                       R11 K44 [PROTO_14]
      103 SETTABLEKS                       R11 R9 K45 ["getShowOutline"]
      105 DUPCLOSURE                       R11 K46 [PROTO_15]
      106 SETTABLEKS                       R11 R9 K47 ["shouldShowHover"]
      108 DUPCLOSURE                       R11 K48 [PROTO_16]
      109 SETTABLEKS                       R11 R9 K49 ["shouldAnimateHover"]
      111 DUPCLOSURE                       R11 K50 [PROTO_17]
      112 SETTABLEKS                       R11 R9 K51 ["shouldSelectScopeByDefault"]
      114 DUPCLOSURE                       R11 K52 [PROTO_18]
      115 SETTABLEKS                       R11 R9 K53 ["getHoverAnimationSpeedInSeconds"]
      117 DUPCLOSURE                       R11 K54 [PROTO_19]
      118 SETTABLEKS                       R11 R9 K55 ["getHoverBoxColor"]
      120 DUPCLOSURE                       R11 K56 [PROTO_20]
      121 SETTABLEKS                       R11 R9 K57 ["getHoverThickness"]
      123 DUPCLOSURE                       R11 K58 [PROTO_21]
      124 SETTABLEKS                       R11 R9 K59 ["getHoverLineThickness"]
      126 DUPCLOSURE                       R11 K60 [PROTO_22]
      127 SETTABLEKS                       R11 R9 K61 ["getSelectionBoxColor"]
      129 DUPCLOSURE                       R11 K62 [PROTO_23]
      130 SETTABLEKS                       R11 R9 K63 ["useBoundingBoxMoveHandles"]
      132 DUPCLOSURE                       R11 K64 [PROTO_24]
      133 SETTABLEKS                       R11 R9 K65 ["getGeometrySnapColor"]
      135 DUPCLOSURE                       R11 K66 [PROTO_25]
      136 SETTABLEKS                       R11 R9 K67 ["getGridColor"]
      138 DUPCLOSURE                       R11 K68 [PROTO_26]
      139 SETTABLEKS                       R11 R9 K69 ["getChosenColor"]
      141 DUPCLOSURE                       R11 K70 [PROTO_27]
      142 SETTABLEKS                       R11 R9 K71 ["shouldShowHoverGrids"]
      144 DUPCLOSURE                       R11 K72 [PROTO_28]
      145 SETTABLEKS                       R11 R9 K73 ["shouldShowTargetGrids"]
      147 DUPCLOSURE                       R11 K74 [PROTO_29]
      148 SETTABLEKS                       R11 R9 K75 ["shouldShowPreciseInput"]
      150 DUPCLOSURE                       R11 K76 [PROTO_30]
      151 SETTABLEKS                       R11 R9 K77 ["getMajorGridIncrement"]
      153 DUPCLOSURE                       R11 K78 [PROTO_31]
      154 SETTABLEKS                       R11 R9 K79 ["getDraggerScaleFactor"]
      156 DUPCLOSURE                       R11 K80 [PROTO_32]
      157 SETTABLEKS                       R11 R9 K81 ["getDraggerLengthFactor"]
      159 DUPCLOSURE                       R11 K82 [PROTO_33]
      160 SETTABLEKS                       R11 R9 K83 ["getDraggerShowNegativeAxes"]
      162 DUPCLOSURE                       R11 K84 [PROTO_34]
      163 SETTABLEKS                       R11 R9 K85 ["getDraggerShowPlanes"]
      165 DUPCLOSURE                       R11 K86 [PROTO_35]
      166 SETTABLEKS                       R11 R9 K87 ["getDraggerShowTrackball"]
      168 DUPCLOSURE                       R11 K88 [PROTO_36]
      169 SETTABLEKS                       R11 R9 K89 ["getDraggerShowWhileDragging"]
      171 DUPCLOSURE                       R11 K90 [PROTO_37]
      172 SETTABLEKS                       R11 R9 K91 ["getDraggerShowAxisTicks"]
      174 DUPCLOSURE                       R11 K92 [PROTO_38]
      175 SETTABLEKS                       R11 R9 K93 ["getXAxisColor"]
      177 DUPCLOSURE                       R11 K94 [PROTO_39]
      178 SETTABLEKS                       R11 R9 K95 ["getYAxisColor"]
      180 DUPCLOSURE                       R11 K96 [PROTO_40]
      181 SETTABLEKS                       R11 R9 K97 ["getZAxisColor"]
      183 DUPCLOSURE                       R11 K98 [PROTO_41]
      184 SETTABLEKS                       R11 R9 K99 ["getVAxisColor"]
      186 DUPCLOSURE                       R11 K100 [PROTO_42]
      187 SETTABLEKS                       R11 R9 K101 ["getTiltRotateDuration"]
      189 DUPCLOSURE                       R11 K102 [PROTO_43]
      190 SETTABLEKS                       R11 R9 K103 ["getMaxSoftSnaps"]
      192 DUPCLOSURE                       R11 K104 [PROTO_44]
      193 SETTABLEKS                       R11 R9 K105 ["getSoftSnapMarginFactor"]
      195 DUPCLOSURE                       R11 K106 [PROTO_45]
      196 SETTABLEKS                       R11 R9 K107 ["getSummonMarginFactor"]
      198 DUPCLOSURE                       R11 K108 [PROTO_46]
      199 SETTABLEKS                       R11 R9 K109 ["getCameraCFrame"]
      201 DUPCLOSURE                       R11 K110 [PROTO_47]
      202 SETTABLEKS                       R11 R9 K111 ["getCamera"]
      204 DUPCLOSURE                       R11 K112 [PROTO_48]
      205 SETTABLEKS                       R11 R9 K113 ["getMouseUnitRay"]
      207 DUPCLOSURE                       R11 K114 [PROTO_49]
      208 CAPTURE                          VAL R10
      209 CAPTURE                          VAL R7
      210 SETTABLEKS                       R11 R9 K115 ["getHandleScale"]
      212 DUPCLOSURE                       R11 K116 [PROTO_50]
      213 SETTABLEKS                       R11 R9 K117 ["getMouseRay"]
      215 DUPCLOSURE                       R11 K118 [PROTO_51]
      216 SETTABLEKS                       R11 R9 K119 ["getMouseLocation"]
      218 DUPCLOSURE                       R11 K120 [PROTO_52]
      219 SETTABLEKS                       R11 R9 K121 ["viewportPointToRay"]
      221 DUPCLOSURE                       R11 K122 [PROTO_53]
      222 SETTABLEKS                       R11 R9 K123 ["worldToViewportPoint"]
      224 DUPCLOSURE                       R11 K124 [PROTO_54]
      225 SETTABLEKS                       R11 R9 K125 ["getViewportSize"]
      227 DUPCLOSURE                       R11 K126 [PROTO_55]
      228 SETTABLEKS                       R11 R9 K127 ["setMouseIcon"]
      230 DUPCLOSURE                       R11 K128 [PROTO_56]
      231 SETTABLEKS                       R11 R9 K129 ["getSelection"]
      233 DUPCLOSURE                       R11 K130 [PROTO_57]
      234 SETTABLEKS                       R11 R9 K131 ["isSimulating"]
      236 DUPCLOSURE                       R11 K132 [PROTO_58]
      237 SETTABLEKS                       R11 R9 K133 ["isTabKeyDown"]
      239 DUPCLOSURE                       R11 K134 [PROTO_59]
      240 SETTABLEKS                       R11 R9 K135 ["isAltKeyDown"]
      242 DUPCLOSURE                       R11 K136 [PROTO_60]
      243 SETTABLEKS                       R11 R9 K137 ["isCtrlKeyDown"]
      245 DUPCLOSURE                       R11 K138 [PROTO_61]
      246 SETTABLEKS                       R11 R9 K139 ["isShiftKeyDown"]
      248 DUPCLOSURE                       R11 K140 [PROTO_62]
      249 CAPTURE                          VAL R8
      250 SETTABLEKS                       R11 R9 K141 ["shouldExtendSelection"]
      252 DUPCLOSURE                       R11 K142 [PROTO_63]
      253 CAPTURE                          VAL R8
      254 SETTABLEKS                       R11 R9 K143 ["isSelectionCycleModifierDown"]
      256 DUPCLOSURE                       R11 K144 [PROTO_64]
      257 CAPTURE                          VAL R6
      258 SETTABLEKS                       R11 R9 K145 ["getGridSize"]
      260 DUPCLOSURE                       R11 K146 [PROTO_65]
      261 SETTABLEKS                       R11 R9 K147 ["getGridSnapEnabled"]
      263 DUPCLOSURE                       R11 K148 [PROTO_66]
      264 SETTABLEKS                       R11 R9 K149 ["getPartSnapEnabled"]
      266 DUPCLOSURE                       R11 K150 [PROTO_67]
      267 SETTABLEKS                       R11 R9 K151 ["shouldPartSnap"]
      269 DUPCLOSURE                       R11 K152 [PROTO_68]
      270 SETTABLEKS                       R11 R9 K153 ["shouldGridSnap"]
      272 DUPCLOSURE                       R11 K154 [PROTO_69]
      273 SETTABLEKS                       R11 R9 K155 ["shouldAngleSnap"]
      275 DUPCLOSURE                       R11 K156 [PROTO_70]
      276 CAPTURE                          VAL R6
      277 SETTABLEKS                       R11 R9 K157 ["snapToGridSize"]
      279 DUPCLOSURE                       R11 K158 [PROTO_71]
      280 CAPTURE                          VAL R6
      281 SETTABLEKS                       R11 R9 K159 ["getRotateIncrement"]
      283 DUPCLOSURE                       R11 K160 [PROTO_72]
      284 CAPTURE                          VAL R1
      285 SETTABLEKS                       R11 R9 K161 ["getAnalytics"]
      287 DUPCLOSURE                       R11 K162 [PROTO_73]
      288 SETTABLEKS                       R11 R9 K163 ["gizmoRaycast"]
      290 DUPCLOSURE                       R11 K164 [PROTO_74]
      291 CAPTURE                          VAL R2
      292 SETTABLEKS                       R11 R9 K7 ["setInsertPoint"]
      294 DUPCLOSURE                       R11 K165 [PROTO_75]
      295 SETTABLEKS                       R11 R9 K166 ["shouldShowActiveInstanceHighlight"]
      297 DUPCLOSURE                       R11 K167 [PROTO_76]
      298 SETTABLEKS                       R11 R9 K168 ["shouldAlignDraggedObjects"]
      300 DUPCLOSURE                       R11 K169 [PROTO_77]
      301 SETTABLEKS                       R11 R9 K170 ["addUndoWaypoint"]
      303 DUPCLOSURE                       R11 K171 [PROTO_79]
      304 CAPTURE                          VAL R4
      305 CAPTURE                          VAL R5
      306 SETTABLEKS                       R11 R9 K172 ["getText"]
      308 DUPCLOSURE                       R11 K173 [PROTO_80]
      309 SETTABLEKS                       R11 R9 K174 ["getThemeColor"]
      311 DUPCLOSURE                       R11 K175 [PROTO_81]
      312 SETTABLEKS                       R11 R9 K176 ["getTheme"]
      314 DUPCLOSURE                       R11 K177 [PROTO_82]
      315 CAPTURE                          VAL R6
      316 SETTABLEKS                       R11 R9 K178 ["getSetting"]
      318 DUPCLOSURE                       R11 K179 [PROTO_83]
      319 CAPTURE                          VAL R6
      320 SETTABLEKS                       R11 R9 K180 ["setSetting"]
      322 DUPCLOSURE                       R11 K181 [PROTO_84]
      323 SETTABLEKS                       R11 R9 K182 ["setPivotIndicator"]
      325 RETURN                           R9 1
