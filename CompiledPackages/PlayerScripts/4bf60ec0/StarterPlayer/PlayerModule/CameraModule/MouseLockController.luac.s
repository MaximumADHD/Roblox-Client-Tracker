PROTO_0:
        0 JUMPIFEQKS                       R0 K0 ["ControlMode"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["ComputerMovementMode"] ; [+5]
        4 GETUPVAL                         R1 0
        5 NAMECALL                         R1 R1 K2 ["UpdateMouseLockAvailability"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateMouseLockAvailability"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateMouseLockAvailability"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateMouseLockAvailability"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnMouseLockToggled"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["isMouseLocked"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K3 ["savedMouseCursor"]
       14 LOADB                            R1 0
       15 SETTABLEKS                       R1 R0 K4 ["enabled"]
       17 GETIMPORT                        R1 K7 [Instance.new]
       19 LOADK                            R2 K8 ["BindableEvent"]
       20 CALL                             R1 1 1
       21 SETTABLEKS                       R1 R0 K9 ["mouseLockToggledEvent"]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K10 ["Changed"]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R0
       28 NAMECALL                         R1 R1 K11 ["Connect"]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 2
       32 GETTABLEKS                       R1 R1 K12 ["LocalPlayer"]
       34 LOADK                            R3 K13 ["DevEnableMouseLock"]
       35 NAMECALL                         R1 R1 K14 ["GetPropertyChangedSignal"]
       37 CALL                             R1 2 1
       38 NEWCLOSURE                       R3 P1
       39 CAPTURE                          VAL R0
       40 NAMECALL                         R1 R1 K11 ["Connect"]
       42 CALL                             R1 2 0
       43 GETUPVAL                         R1 2
       44 GETTABLEKS                       R1 R1 K12 ["LocalPlayer"]
       46 LOADK                            R3 K15 ["DevComputerMovementMode"]
       47 NAMECALL                         R1 R1 K14 ["GetPropertyChangedSignal"]
       49 CALL                             R1 2 1
       50 NEWCLOSURE                       R3 P2
       51 CAPTURE                          VAL R0
       52 NAMECALL                         R1 R1 K11 ["Connect"]
       54 CALL                             R1 2 0
       55 GETUPVAL                         R1 3
       56 LOADK                            R3 K16 ["PreferredInput"]
       57 NAMECALL                         R1 R1 K14 ["GetPropertyChangedSignal"]
       59 CALL                             R1 2 1
       60 NEWCLOSURE                       R3 P3
       61 CAPTURE                          VAL R0
       62 NAMECALL                         R1 R1 K11 ["Connect"]
       64 CALL                             R1 2 0
       65 NAMECALL                         R1 R0 K17 ["UpdateMouseLockAvailability"]
       67 CALL                             R1 1 0
       68 GETUPVAL                         R1 4
       69 GETTABLEKS                       R1 R1 K18 ["Pressed"]
       71 NEWCLOSURE                       R3 P4
       72 CAPTURE                          VAL R0
       73 NAMECALL                         R1 R1 K11 ["Connect"]
       75 CALL                             R1 2 0
       76 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["isMouseLocked"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["mouseLockToggledEvent"]
        2 GETTABLEKS                       R1 R1 K1 ["Event"]
        4 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R1 K0 [{1.75, 0, 0}]
        1 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["LocalPlayer"]
        3 GETTABLEKS                       R1 R1 K1 ["DevEnableMouseLock"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["LocalPlayer"]
        8 GETTABLEKS                       R3 R3 K2 ["DevComputerMovementMode"]
       10 GETIMPORT                        R4 K5 [Enum.DevComputerMovementMode.Scriptable]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K6 ["ControlMode"]
       19 GETIMPORT                        R5 K8 [Enum.ControlMode.MouseLockSwitch]
       21 JUMPIFEQ                         R4 R5 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K9 ["ComputerMovementMode"]
       28 GETIMPORT                        R6 K11 [Enum.ComputerMovementMode.ClickToMove]
       30 JUMPIFEQ                         R5 R6 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K12 ["PreferredInput"]
       37 GETIMPORT                        R7 K14 [Enum.PreferredInput.KeyboardAndMouse]
       39 JUMPIFEQ                         R6 R7 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 MOVE                             R6 R5
       44 JUMPIFNOT                        R6 ; [+7]
       45 MOVE                             R6 R1
       46 JUMPIFNOT                        R6 ; [+5]
       47 MOVE                             R6 R3
       48 JUMPIFNOT                        R6 ; [+3]
       49 NOT                              R6 R4
       50 JUMPIFNOT                        R6 ; [+1]
       51 NOT                              R6 R2
       52 GETTABLEKS                       R7 R0 K15 ["enabled"]
       54 JUMPIFEQ                         R6 R7 ; [+5]
       56 MOVE                             R9 R6
       57 NAMECALL                         R7 R0 K16 ["EnableMouseLock"]
       59 CALL                             R7 2 0
       60 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["isMouseLocked"]
        2 NOT                              R1 R2
        3 SETTABLEKS                       R1 R0 K0 ["isMouseLocked"]
        5 GETTABLEKS                       R1 R0 K0 ["isMouseLocked"]
        7 JUMPIFNOT                        R1 ; [+54]
        8 GETIMPORT                        R1 K2 [script]
       10 LOADK                            R3 K3 ["CursorImage"]
       11 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+15]
       15 LOADK                            R4 K5 ["StringValue"]
       16 NAMECALL                         R2 R1 K6 ["IsA"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+10]
       20 GETTABLEKS                       R2 R1 K7 ["Value"]
       22 JUMPIFNOT                        R2 ; [+7]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K8 ["setMouseIconOverride"]
       26 GETTABLEKS                       R3 R1 K7 ["Value"]
       28 CALL                             R2 1 0
       29 JUMP                             ; [+36]
       30 JUMPIFNOT                        R1 ; [+3]
       31 NAMECALL                         R2 R1 K9 ["Destroy"]
       33 CALL                             R2 1 0
       34 GETIMPORT                        R2 K12 [Instance.new]
       36 LOADK                            R3 K5 ["StringValue"]
       37 CALL                             R2 1 1
       38 MOVE                             R1 R2
       39 FASTCALL2K                       ASSERT R1 K13 ; [+5]
       41 MOVE                             R3 R1
       42 LOADK                            R4 K13 [""]
       43 GETIMPORT                        R2 K15 [assert]
       45 CALL                             R2 2 0
       46 LOADK                            R2 K3 ["CursorImage"]
       47 SETTABLEKS                       R2 R1 K16 ["Name"]
       49 LOADK                            R2 K17 ["rbxasset://textures/MouseLockedCursor.png"]
       50 SETTABLEKS                       R2 R1 K7 ["Value"]
       52 GETIMPORT                        R2 K2 [script]
       54 SETTABLEKS                       R2 R1 K18 ["Parent"]
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K8 ["setMouseIconOverride"]
       59 LOADK                            R3 K17 ["rbxasset://textures/MouseLockedCursor.png"]
       60 CALL                             R2 1 0
       61 JUMP                             ; [+4]
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R1 R1 K19 ["restoreMouseIcon"]
       65 CALL                             R1 0 0
       66 GETTABLEKS                       R1 R0 K20 ["mouseLockToggledEvent"]
       68 NAMECALL                         R1 R1 K21 ["Fire"]
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["enabled"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETTABLEKS                       R1 R0 K1 ["isMouseLocked"]
        5 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["enabled"]
        2 JUMPIFNOTEQ                      R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["enabled"]
        7 GETTABLEKS                       R2 R0 K0 ["enabled"]
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R2 0
       11 LOADB                            R3 1
       12 SETTABLEKS                       R3 R2 K1 ["Enabled"]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K2 ["restoreMouseIcon"]
       18 CALL                             R2 0 0
       19 GETUPVAL                         R2 0
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K1 ["Enabled"]
       23 GETUPVAL                         R2 2
       24 JUMPIFNOT                        R2 ; [+12]
       25 GETTABLEKS                       R2 R0 K3 ["isMouseLocked"]
       27 JUMPIFNOT                        R2 ; [+20]
       28 LOADB                            R2 0
       29 SETTABLEKS                       R2 R0 K3 ["isMouseLocked"]
       31 GETTABLEKS                       R2 R0 K4 ["mouseLockToggledEvent"]
       33 NAMECALL                         R2 R2 K5 ["Fire"]
       35 CALL                             R2 1 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R2 R0 K3 ["isMouseLocked"]
       39 JUMPIFNOT                        R2 ; [+5]
       40 GETTABLEKS                       R2 R0 K4 ["mouseLockToggledEvent"]
       42 NAMECALL                         R2 R2 K5 ["Fire"]
       44 CALL                             R2 1 0
       45 LOADB                            R2 0
       46 SETTABLEKS                       R2 R0 K3 ["isMouseLocked"]
       48 RETURN                           R0 0

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
       18 GETIMPORT                        R2 K3 [script]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K4 ["Parent"]
       24 LOADK                            R4 K9 ["InputContexts"]
       25 NAMECALL                         R2 R2 K6 ["WaitForChild"]
       27 CALL                             R2 2 1
       28 LOADK                            R5 K10 ["CameraContext"]
       29 NAMECALL                         R3 R2 K6 ["WaitForChild"]
       31 CALL                             R3 2 1
       32 LOADK                            R6 K11 ["MouseLockSwitchAction"]
       33 NAMECALL                         R4 R3 K6 ["WaitForChild"]
       35 CALL                             R4 2 1
       36 GETIMPORT                        R5 K13 [game]
       38 LOADK                            R7 K14 ["Players"]
       39 NAMECALL                         R5 R5 K15 ["GetService"]
       41 CALL                             R5 2 1
       42 GETIMPORT                        R6 K13 [game]
       44 LOADK                            R8 K16 ["UserInputService"]
       45 NAMECALL                         R6 R6 K15 ["GetService"]
       47 CALL                             R6 2 1
       48 GETIMPORT                        R7 K18 [UserSettings]
       50 CALL                             R7 0 1
       51 GETTABLEKS                       R8 R7 K19 ["GameSettings"]
       53 GETIMPORT                        R9 K1 [require]
       55 GETIMPORT                        R10 K3 [script]
       57 GETTABLEKS                       R10 R10 K4 ["Parent"]
       59 LOADK                            R12 K20 ["CameraUtils"]
       60 NAMECALL                         R10 R10 K6 ["WaitForChild"]
       62 CALL                             R10 2 -1
       63 CALL                             R9 -1 1
       64 GETTABLEKS                       R10 R1 K21 ["getUserFlag"]
       66 LOADK                            R11 K22 ["UserFixStuckShiftLock"]
       67 CALL                             R10 1 1
       68 NEWTABLE                         R11 16 0
       70 SETTABLEKS                       R11 R11 K23 ["__index"]
       72 DUPCLOSURE                       R12 K24 [PROTO_5]
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R12 R11 K25 ["new"]
       80 DUPCLOSURE                       R12 K26 [PROTO_6]
       81 SETTABLEKS                       R12 R11 K27 ["GetIsMouseLocked"]
       83 DUPCLOSURE                       R12 K28 [PROTO_7]
       84 SETTABLEKS                       R12 R11 K29 ["GetBindableToggleEvent"]
       86 DUPCLOSURE                       R12 K30 [PROTO_8]
       87 SETTABLEKS                       R12 R11 K31 ["GetMouseLockOffset"]
       89 DUPCLOSURE                       R12 K32 [PROTO_9]
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R6
       93 SETTABLEKS                       R12 R11 K33 ["UpdateMouseLockAvailability"]
       95 DUPCLOSURE                       R12 K34 [PROTO_10]
       96 CAPTURE                          VAL R9
       97 SETTABLEKS                       R12 R11 K35 ["OnMouseLockToggled"]
       99 DUPCLOSURE                       R12 K36 [PROTO_11]
      100 SETTABLEKS                       R12 R11 K37 ["IsMouseLocked"]
      102 DUPCLOSURE                       R12 K38 [PROTO_12]
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R10
      106 SETTABLEKS                       R12 R11 K39 ["EnableMouseLock"]
      108 RETURN                           R11 1
