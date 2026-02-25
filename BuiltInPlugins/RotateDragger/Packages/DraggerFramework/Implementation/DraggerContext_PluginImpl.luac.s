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
       88 RETURN                           R4 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_ignoreNextHoverChange"]
        3 JUMPIF                           R0 ; [+9]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["_studioService"]
        7 GETTABLEKS                       R0 R1 K2 ["HoverInstance"]
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
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R2 K1 ["UseLocalSpace"]
        4 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        2 GETTABLEKS                       R1 R2 K1 ["CollisionEnabled"]
        4 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R2 K1 ["DraggerSolveConstraints"]
        4 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R2 K1 ["ShowConstraintDetails"]
        4 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R2 K1 ["DrawConstraintsOnTop"]
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
        0 GETTABLEKS                       R2 R0 K0 ["_selectionService"]
        2 GETTABLEKS                       R1 R2 K1 ["RenderMode"]
        4 LOADB                            R2 1
        5 GETIMPORT                        R3 K5 [Enum.SelectionRenderMode.BoundingBoxes]
        7 JUMPIFEQ                         R1 R3 ; [+7]
        9 GETIMPORT                        R3 K7 [Enum.SelectionRenderMode.Both]
       11 JUMPIFEQ                         R1 R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_selectionService"]
        2 GETTABLEKS                       R1 R2 K1 ["RenderMode"]
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
        0 GETTABLEKS                       R2 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R2 K1 ["HoverThickness"]
        4 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R2 K1 ["HoverLineThickness"]
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
        0 GETTABLEKS                       R2 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R2 K1 ["GeometrySnapColor"]
        4 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K1 ["DraggerPassiveColor"]
        4 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K1 ["DraggerActiveColor"]
        4 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R2 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K1 ["DraggerShowHoverRuler"]
        4 RETURN                           R1 1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K1 ["DraggerShowTargetSnap"]
        4 RETURN                           R1 1

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K1 ["DraggerShowMeasurement"]
        4 RETURN                           R1 1

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K1 ["DraggerMajorGridIncrement"]
        4 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K1 ["DraggerTiltRotateDuration"]
        4 RETURN                           R1 1

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K1 ["DraggerMaxSoftSnaps"]
        4 RETURN                           R1 1

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K1 ["DraggerSoftSnapMarginFactor"]
        4 RETURN                           R1 1

PROTO_34:
        0 GETTABLEKS                       R2 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R1 R2 K1 ["DraggerSummonMarginFactor"]
        4 RETURN                           R1 1

PROTO_35:
        0 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R2 R3 K1 ["CurrentCamera"]
        4 GETTABLEKS                       R1 R2 K2 ["CFrame"]
        6 RETURN                           R1 1

PROTO_36:
        0 GETTABLEKS                       R2 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R1 R2 K1 ["CurrentCamera"]
        4 RETURN                           R1 1

PROTO_37:
        0 GETTABLEKS                       R2 R0 K0 ["_mouse"]
        2 GETTABLEKS                       R1 R2 K1 ["UnitRay"]
        4 RETURN                           R1 1

PROTO_38:
        0 NAMECALL                         R2 R0 K0 ["getCameraCFrame"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Position"]
        5 SUB                              R3 R1 R4
        6 GETTABLEKS                       R5 R2 K2 ["LookVector"]
        8 NAMECALL                         R3 R3 K3 ["Dot"]
       10 CALL                             R3 2 1
       11 GETTABLEKS                       R8 R0 K4 ["_workspace"]
       13 GETTABLEKS                       R7 R8 K5 ["CurrentCamera"]
       15 GETTABLEKS                       R6 R7 K6 ["FieldOfView"]
       17 FASTCALL1                        MATH_RAD R6 ; [+2]
       18 GETIMPORT                        R5 K9 [math.rad]
       20 CALL                             R5 1 1
       21 FASTCALL1                        MATH_SIN R5 ; [+2]
       22 GETIMPORT                        R4 K11 [math.sin]
       24 CALL                             R4 1 1
       25 MUL                              R6 R4 R3
       26 MULK                             R5 R6 K12 [0.05]
       27 RETURN                           R5 1

PROTO_39:
        0 NAMECALL                         R1 R0 K0 ["getMouseUnitRay"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [Ray.new]
        5 GETTABLEKS                       R3 R1 K4 ["Origin"]
        7 GETTABLEKS                       R5 R1 K6 ["Direction"]
        9 MULK                             R4 R5 K5 [10000]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 NAMECALL                         R1 R1 K1 ["GetMouseLocation"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_41:
        0 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R2 R3 K1 ["CurrentCamera"]
        4 GETTABLEKS                       R4 R1 K2 ["X"]
        6 GETTABLEKS                       R5 R1 K3 ["Y"]
        8 NAMECALL                         R2 R2 K4 ["ViewportPointToRay"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_42:
        0 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R2 R3 K1 ["CurrentCamera"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["WorldToViewportPoint"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_43:
        0 GETTABLEKS                       R3 R0 K0 ["_workspace"]
        2 GETTABLEKS                       R2 R3 K1 ["CurrentCamera"]
        4 GETTABLEKS                       R1 R2 K2 ["ViewportSize"]
        6 RETURN                           R1 1

PROTO_44:
        0 GETTABLEKS                       R2 R0 K0 ["_mouse"]
        2 SETTABLEKS                       R1 R2 K1 ["Icon"]
        4 RETURN                           R0 0

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_46:
        0 GETTABLEKS                       R1 R0 K0 ["_runService"]
        2 NAMECALL                         R1 R1 K1 ["IsRunning"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 GETIMPORT                        R3 K4 [Enum.KeyCode.Tab]
        4 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
        0 NAMECALL                         R1 R0 K0 ["isCtrlKeyDown"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+3]
        4 NAMECALL                         R1 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R1 1 1
        7 RETURN                           R1 1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["_draggerService"]
        5 GETTABLEKS                       R1 R2 K1 ["LinearSnapIncrement"]
        7 RETURN                           R1 1
        8 GETTABLEKS                       R2 R0 K2 ["_studioService"]
       10 GETTABLEKS                       R1 R2 K3 ["GridSize"]
       12 RETURN                           R1 1

PROTO_53:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R2 K1 ["LinearSnapEnabled"]
        4 RETURN                           R1 1

PROTO_54:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R2 K1 ["PartSnapEnabled"]
        4 RETURN                           R1 1

PROTO_55:
        0 NAMECALL                         R1 R0 K0 ["getPartSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_56:
        0 NAMECALL                         R1 R0 K0 ["getGridSnapEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["isShiftKeyDown"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_57:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R1 R2 K1 ["AngleSnapEnabled"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 NAMECALL                         R2 R0 K2 ["isShiftKeyDown"]
        7 CALL                             R2 1 1
        8 NOT                              R1 R2
        9 RETURN                           R1 1

PROTO_58:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+17]
        3 NAMECALL                         R2 R0 K0 ["shouldGridSnap"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+12]
        7 GETTABLEKS                       R3 R0 K1 ["_draggerService"]
        9 GETTABLEKS                       R2 R3 K2 ["LinearSnapIncrement"]
       11 DIV                              R6 R1 R2
       12 ADDK                             R5 R6 K3 [0.5]
       13 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       14 GETIMPORT                        R4 K6 [math.floor]
       16 CALL                             R4 1 1
       17 MUL                              R3 R4 R2
       18 RETURN                           R3 1
       19 RETURN                           R1 1
       20 GETTABLEKS                       R3 R0 K1 ["_draggerService"]
       22 GETTABLEKS                       R2 R3 K7 ["LinearSnapEnabled"]
       24 JUMPIFNOT                        R2 ; [+12]
       25 GETTABLEKS                       R3 R0 K1 ["_draggerService"]
       27 GETTABLEKS                       R2 R3 K2 ["LinearSnapIncrement"]
       29 DIV                              R6 R1 R2
       30 ADDK                             R5 R6 K3 [0.5]
       31 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       32 GETIMPORT                        R4 K6 [math.floor]
       34 CALL                             R4 1 1
       35 MUL                              R3 R4 R2
       36 RETURN                           R3 1
       37 RETURN                           R1 1

PROTO_59:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+11]
        3 NAMECALL                         R1 R0 K0 ["shouldAngleSnap"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETTABLEKS                       R2 R0 K1 ["_draggerService"]
        9 GETTABLEKS                       R1 R2 K2 ["AngleSnapIncrement"]
       11 RETURN                           R1 1
       12 LOADN                            R1 0
       13 RETURN                           R1 1
       14 GETTABLEKS                       R2 R0 K1 ["_draggerService"]
       16 GETTABLEKS                       R1 R2 K3 ["AngleSnapEnabled"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R2 R0 K1 ["_draggerService"]
       21 GETTABLEKS                       R1 R2 K2 ["AngleSnapIncrement"]
       23 RETURN                           R1 1
       24 LOADN                            R1 0
       25 RETURN                           R1 1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_61:
        0 GETTABLEKS                       R4 R0 K0 ["_studioService"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 NAMECALL                         R4 R4 K1 ["GizmoRaycast"]
        7 CALL                             R4 4 -1
        8 RETURN                           R4 -1

PROTO_62:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_63:
        0 GETTABLEKS                       R2 R0 K0 ["_selectionService"]
        2 GETTABLEKS                       R1 R2 K1 ["ShowActiveInstanceHighlight"]
        4 RETURN                           R1 1

PROTO_64:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R2 K1 ["AlignDraggedObjects"]
        4 RETURN                           R1 1

PROTO_65:
        0 GETTABLEKS                       R3 R0 K0 ["_changeHistoryService"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["SetWaypoint"]
        5 CALL                             R3 2 0
        6 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_67:
        0 LOADK                            R4 K0 ["Studio.DraggerFramework.%s.%s"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 MOVE                             R2 R4
        7 GETTABLEKS                       R5 R0 K2 ["_studioService"]
        9 GETTABLEKS                       R4 R5 K3 ["StudioLocaleId"]
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

PROTO_68:
        0 GETTABLEKS                       R4 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R3 R4 K1 ["Theme"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 NAMECALL                         R3 R3 K2 ["GetColor"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_69:
        0 GETTABLEKS                       R3 R0 K0 ["_studioSettings"]
        2 GETTABLEKS                       R2 R3 K1 ["Theme"]
        4 GETTABLEKS                       R1 R2 K2 ["Name"]
        6 RETURN                           R1 1

PROTO_70:
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

PROTO_71:
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

PROTO_72:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerService"]
        2 GETTABLEKS                       R2 R3 K1 ["ShowPivotIndicator"]
        4 GETTABLEKS                       R3 R0 K0 ["_draggerService"]
        6 SETTABLEKS                       R1 R3 K1 ["ShowPivotIndicator"]
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Utility"]
       11 GETTABLEKS                       R2 R3 K6 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Utility"]
       18 GETTABLEKS                       R3 R4 K7 ["setInsertPoint"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R0 K8 ["Resources"]
       23 GETTABLEKS                       R3 R4 K9 ["SourceStrings"]
       25 GETTABLEKS                       R5 R0 K8 ["Resources"]
       27 GETTABLEKS                       R4 R5 K10 ["LocalizedStrings"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Flags"]
       33 GETTABLEKS                       R6 R7 K12 ["getFFlagDraggerImprovements"]
       35 CALL                             R5 1 1
       36 NEWTABLE                         R6 128 0
       38 SETTABLEKS                       R6 R6 K13 ["__index"]
       40 DUPCLOSURE                       R7 K14 [PROTO_0]
       41 CAPTURE                          VAL R6
       42 SETTABLEKS                       R7 R6 K15 ["new"]
       44 DUPCLOSURE                       R7 K16 [PROTO_1]
       45 SETTABLEKS                       R7 R6 K17 ["getGuiParent"]
       47 DUPCLOSURE                       R7 K18 [PROTO_3]
       48 SETTABLEKS                       R7 R6 K19 ["setHoverInstance"]
       50 DUPCLOSURE                       R7 K20 [PROTO_6]
       51 SETTABLEKS                       R7 R6 K21 ["onInstanceHovered"]
       53 DUPCLOSURE                       R7 K22 [PROTO_7]
       54 SETTABLEKS                       R7 R6 K23 ["shouldUseLocalSpace"]
       56 DUPCLOSURE                       R7 K24 [PROTO_8]
       57 SETTABLEKS                       R7 R6 K25 ["areCollisionsEnabled"]
       59 DUPCLOSURE                       R7 K26 [PROTO_9]
       60 SETTABLEKS                       R7 R6 K27 ["areConstraintsEnabled"]
       62 DUPCLOSURE                       R7 K28 [PROTO_10]
       63 SETTABLEKS                       R7 R6 K29 ["areConstraintDetailsShown"]
       65 DUPCLOSURE                       R7 K30 [PROTO_11]
       66 SETTABLEKS                       R7 R6 K31 ["shouldDrawConstraintsOnTop"]
       68 DUPCLOSURE                       R7 K32 [PROTO_12]
       69 SETTABLEKS                       R7 R6 K33 ["shouldJoinSurfaces"]
       71 DUPCLOSURE                       R7 K34 [PROTO_13]
       72 SETTABLEKS                       R7 R6 K35 ["getShowBoundingBox"]
       74 DUPCLOSURE                       R7 K36 [PROTO_14]
       75 SETTABLEKS                       R7 R6 K37 ["getShowOutline"]
       77 DUPCLOSURE                       R7 K38 [PROTO_15]
       78 SETTABLEKS                       R7 R6 K39 ["shouldShowHover"]
       80 DUPCLOSURE                       R7 K40 [PROTO_16]
       81 SETTABLEKS                       R7 R6 K41 ["shouldAnimateHover"]
       83 DUPCLOSURE                       R7 K42 [PROTO_17]
       84 SETTABLEKS                       R7 R6 K43 ["shouldSelectScopeByDefault"]
       86 DUPCLOSURE                       R7 K44 [PROTO_18]
       87 SETTABLEKS                       R7 R6 K45 ["getHoverAnimationSpeedInSeconds"]
       89 DUPCLOSURE                       R7 K46 [PROTO_19]
       90 SETTABLEKS                       R7 R6 K47 ["getHoverBoxColor"]
       92 DUPCLOSURE                       R7 K48 [PROTO_20]
       93 SETTABLEKS                       R7 R6 K49 ["getHoverThickness"]
       95 DUPCLOSURE                       R7 K50 [PROTO_21]
       96 SETTABLEKS                       R7 R6 K51 ["getHoverLineThickness"]
       98 DUPCLOSURE                       R7 K52 [PROTO_22]
       99 SETTABLEKS                       R7 R6 K53 ["getSelectionBoxColor"]
      101 DUPCLOSURE                       R7 K54 [PROTO_23]
      102 SETTABLEKS                       R7 R6 K55 ["useBoundingBoxMoveHandles"]
      104 DUPCLOSURE                       R7 K56 [PROTO_24]
      105 SETTABLEKS                       R7 R6 K57 ["getGeometrySnapColor"]
      107 DUPCLOSURE                       R7 K58 [PROTO_25]
      108 SETTABLEKS                       R7 R6 K59 ["getGridColor"]
      110 DUPCLOSURE                       R7 K60 [PROTO_26]
      111 SETTABLEKS                       R7 R6 K61 ["getChosenColor"]
      113 DUPCLOSURE                       R7 K62 [PROTO_27]
      114 SETTABLEKS                       R7 R6 K63 ["shouldShowHoverGrids"]
      116 DUPCLOSURE                       R7 K64 [PROTO_28]
      117 SETTABLEKS                       R7 R6 K65 ["shouldShowTargetGrids"]
      119 DUPCLOSURE                       R7 K66 [PROTO_29]
      120 SETTABLEKS                       R7 R6 K67 ["shouldShowPreciseInput"]
      122 DUPCLOSURE                       R7 K68 [PROTO_30]
      123 SETTABLEKS                       R7 R6 K69 ["getMajorGridIncrement"]
      125 DUPCLOSURE                       R7 K70 [PROTO_31]
      126 SETTABLEKS                       R7 R6 K71 ["getTiltRotateDuration"]
      128 DUPCLOSURE                       R7 K72 [PROTO_32]
      129 SETTABLEKS                       R7 R6 K73 ["getMaxSoftSnaps"]
      131 DUPCLOSURE                       R7 K74 [PROTO_33]
      132 SETTABLEKS                       R7 R6 K75 ["getSoftSnapMarginFactor"]
      134 DUPCLOSURE                       R7 K76 [PROTO_34]
      135 SETTABLEKS                       R7 R6 K77 ["getSummonMarginFactor"]
      137 DUPCLOSURE                       R7 K78 [PROTO_35]
      138 SETTABLEKS                       R7 R6 K79 ["getCameraCFrame"]
      140 DUPCLOSURE                       R7 K80 [PROTO_36]
      141 SETTABLEKS                       R7 R6 K81 ["getCamera"]
      143 DUPCLOSURE                       R7 K82 [PROTO_37]
      144 SETTABLEKS                       R7 R6 K83 ["getMouseUnitRay"]
      146 DUPCLOSURE                       R7 K84 [PROTO_38]
      147 SETTABLEKS                       R7 R6 K85 ["getHandleScale"]
      149 DUPCLOSURE                       R7 K86 [PROTO_39]
      150 SETTABLEKS                       R7 R6 K87 ["getMouseRay"]
      152 DUPCLOSURE                       R7 K88 [PROTO_40]
      153 SETTABLEKS                       R7 R6 K89 ["getMouseLocation"]
      155 DUPCLOSURE                       R7 K90 [PROTO_41]
      156 SETTABLEKS                       R7 R6 K91 ["viewportPointToRay"]
      158 DUPCLOSURE                       R7 K92 [PROTO_42]
      159 SETTABLEKS                       R7 R6 K93 ["worldToViewportPoint"]
      161 DUPCLOSURE                       R7 K94 [PROTO_43]
      162 SETTABLEKS                       R7 R6 K95 ["getViewportSize"]
      164 DUPCLOSURE                       R7 K96 [PROTO_44]
      165 SETTABLEKS                       R7 R6 K97 ["setMouseIcon"]
      167 DUPCLOSURE                       R7 K98 [PROTO_45]
      168 SETTABLEKS                       R7 R6 K99 ["getSelection"]
      170 DUPCLOSURE                       R7 K100 [PROTO_46]
      171 SETTABLEKS                       R7 R6 K101 ["isSimulating"]
      173 DUPCLOSURE                       R7 K102 [PROTO_47]
      174 SETTABLEKS                       R7 R6 K103 ["isTabKeyDown"]
      176 DUPCLOSURE                       R7 K104 [PROTO_48]
      177 SETTABLEKS                       R7 R6 K105 ["isAltKeyDown"]
      179 DUPCLOSURE                       R7 K106 [PROTO_49]
      180 SETTABLEKS                       R7 R6 K107 ["isCtrlKeyDown"]
      182 DUPCLOSURE                       R7 K108 [PROTO_50]
      183 SETTABLEKS                       R7 R6 K109 ["isShiftKeyDown"]
      185 DUPCLOSURE                       R7 K110 [PROTO_51]
      186 SETTABLEKS                       R7 R6 K111 ["shouldExtendSelection"]
      188 DUPCLOSURE                       R7 K112 [PROTO_52]
      189 CAPTURE                          VAL R5
      190 SETTABLEKS                       R7 R6 K113 ["getGridSize"]
      192 DUPCLOSURE                       R7 K114 [PROTO_53]
      193 SETTABLEKS                       R7 R6 K115 ["getGridSnapEnabled"]
      195 DUPCLOSURE                       R7 K116 [PROTO_54]
      196 SETTABLEKS                       R7 R6 K117 ["getPartSnapEnabled"]
      198 DUPCLOSURE                       R7 K118 [PROTO_55]
      199 SETTABLEKS                       R7 R6 K119 ["shouldPartSnap"]
      201 DUPCLOSURE                       R7 K120 [PROTO_56]
      202 SETTABLEKS                       R7 R6 K121 ["shouldGridSnap"]
      204 DUPCLOSURE                       R7 K122 [PROTO_57]
      205 SETTABLEKS                       R7 R6 K123 ["shouldAngleSnap"]
      207 DUPCLOSURE                       R7 K124 [PROTO_58]
      208 CAPTURE                          VAL R5
      209 SETTABLEKS                       R7 R6 K125 ["snapToGridSize"]
      211 DUPCLOSURE                       R7 K126 [PROTO_59]
      212 CAPTURE                          VAL R5
      213 SETTABLEKS                       R7 R6 K127 ["getRotateIncrement"]
      215 DUPCLOSURE                       R7 K128 [PROTO_60]
      216 CAPTURE                          VAL R1
      217 SETTABLEKS                       R7 R6 K129 ["getAnalytics"]
      219 DUPCLOSURE                       R7 K130 [PROTO_61]
      220 SETTABLEKS                       R7 R6 K131 ["gizmoRaycast"]
      222 DUPCLOSURE                       R7 K132 [PROTO_62]
      223 CAPTURE                          VAL R2
      224 SETTABLEKS                       R7 R6 K7 ["setInsertPoint"]
      226 DUPCLOSURE                       R7 K133 [PROTO_63]
      227 SETTABLEKS                       R7 R6 K134 ["shouldShowActiveInstanceHighlight"]
      229 DUPCLOSURE                       R7 K135 [PROTO_64]
      230 SETTABLEKS                       R7 R6 K136 ["shouldAlignDraggedObjects"]
      232 DUPCLOSURE                       R7 K137 [PROTO_65]
      233 SETTABLEKS                       R7 R6 K138 ["addUndoWaypoint"]
      235 DUPCLOSURE                       R7 K139 [PROTO_67]
      236 CAPTURE                          VAL R3
      237 CAPTURE                          VAL R4
      238 SETTABLEKS                       R7 R6 K140 ["getText"]
      240 DUPCLOSURE                       R7 K141 [PROTO_68]
      241 SETTABLEKS                       R7 R6 K142 ["getThemeColor"]
      243 DUPCLOSURE                       R7 K143 [PROTO_69]
      244 SETTABLEKS                       R7 R6 K144 ["getTheme"]
      246 DUPCLOSURE                       R7 K145 [PROTO_70]
      247 CAPTURE                          VAL R5
      248 SETTABLEKS                       R7 R6 K146 ["getSetting"]
      250 DUPCLOSURE                       R7 K147 [PROTO_71]
      251 CAPTURE                          VAL R5
      252 SETTABLEKS                       R7 R6 K148 ["setSetting"]
      254 DUPCLOSURE                       R7 K149 [PROTO_72]
      255 SETTABLEKS                       R7 R6 K150 ["setPivotIndicator"]
      257 RETURN                           R6 1
