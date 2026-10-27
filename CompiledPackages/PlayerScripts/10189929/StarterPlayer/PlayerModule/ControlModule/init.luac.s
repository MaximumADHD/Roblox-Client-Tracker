PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["OnCharacterAdded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["OnCharacterRemoving"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateMovementMode"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateMovementMode"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateMovementMode"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateMovementMode"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateAbilitiesControllers"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateMovementMode"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["UpdateActiveControlModuleEnabled"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateMovementMode"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R3 K0 ["PlayerGui"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+17]
        5 GETUPVAL                         R1 0
        6 SETTABLEKS                       R0 R1 K2 ["playerGui"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["playerGuiAddedConn"]
       11 NAMECALL                         R1 R1 K4 ["Disconnect"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K3 ["playerGuiAddedConn"]
       18 GETUPVAL                         R1 0
       19 NAMECALL                         R1 R1 K5 ["UpdateMovementMode"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 32 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K2 ["IsServer"]
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 1
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K3 ["controllers"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K4 ["activeControlModule"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K5 ["activeController"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K6 ["touchJumpController"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K7 ["touchAbilitiesController"]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K8 ["LocalPlayer"]
       33 GETTABLEKS                       R1 R1 K9 ["Move"]
       35 SETTABLEKS                       R1 R0 K10 ["moveFunction"]
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K11 ["humanoid"]
       40 LOADB                            R1 1
       41 SETTABLEKS                       R1 R0 K12 ["controlsEnabled"]
       43 LOADB                            R1 0
       44 SETTABLEKS                       R1 R0 K13 ["enabled"]
       46 LOADNIL                          R1
       47 SETTABLEKS                       R1 R0 K14 ["humanoidSeatedConn"]
       49 LOADNIL                          R1
       50 SETTABLEKS                       R1 R0 K15 ["vehicleController"]
       52 LOADNIL                          R1
       53 SETTABLEKS                       R1 R0 K16 ["touchControlFrame"]
       55 LOADN                            R1 0
       56 SETTABLEKS                       R1 R0 K17 ["currentTorsoAngle"]
       58 LOADK                            R1 K18 [{0, 0, 0}]
       59 SETTABLEKS                       R1 R0 K19 ["inputMoveVector"]
       61 GETUPVAL                         R1 3
       62 GETTABLEKS                       R1 R1 K20 ["new"]
       64 CALL                             R1 0 1
       65 SETTABLEKS                       R1 R0 K15 ["vehicleController"]
       67 GETUPVAL                         R1 2
       68 GETTABLEKS                       R1 R1 K8 ["LocalPlayer"]
       70 GETTABLEKS                       R1 R1 K21 ["CharacterAdded"]
       72 NEWCLOSURE                       R3 P0
       73 CAPTURE                          VAL R0
       74 NAMECALL                         R1 R1 K22 ["Connect"]
       76 CALL                             R1 2 0
       77 GETUPVAL                         R1 2
       78 GETTABLEKS                       R1 R1 K8 ["LocalPlayer"]
       80 GETTABLEKS                       R1 R1 K23 ["CharacterRemoving"]
       82 NEWCLOSURE                       R3 P1
       83 CAPTURE                          VAL R0
       84 NAMECALL                         R1 R1 K22 ["Connect"]
       86 CALL                             R1 2 0
       87 GETUPVAL                         R1 2
       88 GETTABLEKS                       R1 R1 K8 ["LocalPlayer"]
       90 GETTABLEKS                       R1 R1 K24 ["Character"]
       92 JUMPIFNOT                        R1 ; [+8]
       93 GETUPVAL                         R3 2
       94 GETTABLEKS                       R3 R3 K8 ["LocalPlayer"]
       96 GETTABLEKS                       R3 R3 K24 ["Character"]
       98 NAMECALL                         R1 R0 K25 ["OnCharacterAdded"]
      100 CALL                             R1 2 0
      101 GETUPVAL                         R1 4
      102 LOADK                            R3 K26 ["TouchMovementMode"]
      103 NAMECALL                         R1 R1 K27 ["GetPropertyChangedSignal"]
      105 CALL                             R1 2 1
      106 NEWCLOSURE                       R3 P2
      107 CAPTURE                          VAL R0
      108 NAMECALL                         R1 R1 K22 ["Connect"]
      110 CALL                             R1 2 0
      111 GETUPVAL                         R1 2
      112 GETTABLEKS                       R1 R1 K8 ["LocalPlayer"]
      114 LOADK                            R3 K28 ["DevTouchMovementMode"]
      115 NAMECALL                         R1 R1 K27 ["GetPropertyChangedSignal"]
      117 CALL                             R1 2 1
      118 NEWCLOSURE                       R3 P3
      119 CAPTURE                          VAL R0
      120 NAMECALL                         R1 R1 K22 ["Connect"]
      122 CALL                             R1 2 0
      123 GETUPVAL                         R1 4
      124 LOADK                            R3 K29 ["ComputerMovementMode"]
      125 NAMECALL                         R1 R1 K27 ["GetPropertyChangedSignal"]
      127 CALL                             R1 2 1
      128 NEWCLOSURE                       R3 P4
      129 CAPTURE                          VAL R0
      130 NAMECALL                         R1 R1 K22 ["Connect"]
      132 CALL                             R1 2 0
      133 GETUPVAL                         R1 2
      134 GETTABLEKS                       R1 R1 K8 ["LocalPlayer"]
      136 LOADK                            R3 K30 ["DevComputerMovementMode"]
      137 NAMECALL                         R1 R1 K27 ["GetPropertyChangedSignal"]
      139 CALL                             R1 2 1
      140 NEWCLOSURE                       R3 P5
      141 CAPTURE                          VAL R0
      142 NAMECALL                         R1 R1 K22 ["Connect"]
      144 CALL                             R1 2 0
      145 GETUPVAL                         R1 5
      146 JUMPIFNOT                        R1 ; [+9]
      147 GETUPVAL                         R1 6
      148 NAMECALL                         R1 R1 K31 ["GetEnabledChangedSignal"]
      150 CALL                             R1 1 1
      151 NEWCLOSURE                       R3 P6
      152 CAPTURE                          VAL R0
      153 NAMECALL                         R1 R1 K22 ["Connect"]
      155 CALL                             R1 2 0
      156 LOADNIL                          R1
      157 SETTABLEKS                       R1 R0 K32 ["playerGui"]
      159 LOADNIL                          R1
      160 SETTABLEKS                       R1 R0 K33 ["touchGui"]
      162 LOADNIL                          R1
      163 SETTABLEKS                       R1 R0 K34 ["playerGuiAddedConn"]
      165 GETUPVAL                         R1 7
      166 LOADK                            R3 K35 ["TouchControlsEnabled"]
      167 NAMECALL                         R1 R1 K27 ["GetPropertyChangedSignal"]
      169 CALL                             R1 2 1
      170 NEWCLOSURE                       R3 P7
      171 CAPTURE                          VAL R0
      172 NAMECALL                         R1 R1 K22 ["Connect"]
      174 CALL                             R1 2 0
      175 GETUPVAL                         R1 8
      176 LOADK                            R3 K36 ["PreferredInput"]
      177 NAMECALL                         R1 R1 K27 ["GetPropertyChangedSignal"]
      179 CALL                             R1 2 1
      180 NEWCLOSURE                       R3 P8
      181 CAPTURE                          VAL R0
      182 NAMECALL                         R1 R1 K22 ["Connect"]
      184 CALL                             R1 2 0
      185 GETUPVAL                         R1 2
      186 GETTABLEKS                       R1 R1 K8 ["LocalPlayer"]
      188 LOADK                            R3 K37 ["PlayerGui"]
      189 NAMECALL                         R1 R1 K38 ["FindFirstChildOfClass"]
      191 CALL                             R1 2 1
      192 SETTABLEKS                       R1 R0 K32 ["playerGui"]
      194 GETTABLEKS                       R1 R0 K32 ["playerGui"]
      196 JUMPIF                           R1 ; [+12]
      197 GETUPVAL                         R1 2
      198 GETTABLEKS                       R1 R1 K8 ["LocalPlayer"]
      200 GETTABLEKS                       R1 R1 K39 ["ChildAdded"]
      202 NEWCLOSURE                       R3 P9
      203 CAPTURE                          VAL R0
      204 NAMECALL                         R1 R1 K22 ["Connect"]
      206 CALL                             R1 2 1
      207 SETTABLEKS                       R1 R0 K34 ["playerGuiAddedConn"]
      209 GETUPVAL                         R1 9
      210 JUMPIFNOT                        R1 ; [+8]
      211 GETUPVAL                         R1 10
      212 GETIMPORT                        R3 K43 [Enum.UserInputType.Gamepad1]
      214 GETIMPORT                        R4 K46 [Enum.KeyCode.ButtonR2]
      216 NAMECALL                         R1 R1 K47 ["BindActivate"]
      218 CALL                             R1 3 0
      219 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCameraState"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K5 ["CFrame"]
        9 GETTABLEKS                       R2 R2 K6 ["LookVector"]
       11 NAMECALL                         R0 R0 K7 ["Fire"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K5 ["RotationType"]
        9 GETIMPORT                        R4 K7 [Enum.RotationType.CameraRelative]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 NAMECALL                         R0 R0 K8 ["Fire"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_14:
        0 LOADK                            R3 K0 ["InputContexts"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 0
        7 LOADK                            R4 K2 ["CharacterContext"]
        8 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 RETURN                           R0 0
       14 LOADK                            R5 K3 ["CameraContext"]
       15 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 0
       19 JUMPIFNOT                        R4 ; [+23]
       20 LOADK                            R6 K4 ["RotationAction"]
       21 NAMECALL                         R4 R2 K1 ["FindFirstChild"]
       23 CALL                             R4 2 1
       24 JUMPIFNOT                        R4 ; [+155]
       25 LOADK                            R7 K5 ["RotationScriptableBinding"]
       26 NAMECALL                         R5 R4 K1 ["FindFirstChild"]
       28 CALL                             R5 2 1
       29 JUMPIFNOT                        R5 ; [+150]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K6 ["RotationType"]
       33 GETIMPORT                        R10 K9 [Enum.RotationType.CameraRelative]
       35 JUMPIFEQ                         R9 R10 ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 NAMECALL                         R6 R5 K10 ["Fire"]
       41 CALL                             R6 2 0
       42 RETURN                           R0 0
       43 LOADB                            R4 1
       44 GETUPVAL                         R5 2
       45 JUMPIFNOT                        R5 ; [+26]
       46 GETIMPORT                        R5 K12 [pcall]
       48 NEWCLOSURE                       R6 P0
       49 CAPTURE                          VAL R0
       50 CALL                             R5 1 2
       51 JUMPIFNOT                        R5 ; [+20]
       52 JUMPIFNOT                        R6 ; [+19]
       53 GETTABLEKS                       R7 R6 K13 ["CFrame"]
       55 GETIMPORT                        R8 K15 [CFrame.identity]
       57 JUMPIFEQ                         R7 R8 ; [+14]
       59 GETTABLEKS                       R8 R6 K16 ["FieldOfView"]
       61 LOADN                            R9 0
       62 JUMPIFNOTLT                      R9 R8 ; [+9]
       64 GETTABLEKS                       R8 R6 K17 ["ViewportSize"]
       66 GETTABLEKS                       R8 R8 K18 ["Magnitude"]
       68 LOADN                            R9 0
       69 JUMPIFNOTLT                      R9 R8 ; [+2]
       71 LOADB                            R4 0
       72 JUMPIFNOT                        R4 ; [+47]
       73 MOVE                             R5 R3
       74 JUMPIFNOT                        R5 ; [+4]
       75 LOADK                            R7 K19 ["CameraAction"]
       76 NAMECALL                         R5 R3 K1 ["FindFirstChild"]
       78 CALL                             R5 2 1
       79 JUMPIFNOT                        R5 ; [+40]
       80 GETUPVAL                         R6 3
       81 GETTABLEKS                       R6 R6 K20 ["CurrentCamera"]
       83 GETUPVAL                         R7 4
       84 JUMPIFNOT                        R7 ; [+28]
       85 LOADK                            R9 K21 ["CameraScriptableBinding"]
       86 NAMECALL                         R7 R5 K1 ["FindFirstChild"]
       88 CALL                             R7 2 1
       89 JUMPIFNOT                        R7 ; [+15]
       90 GETIMPORT                        R8 K12 [pcall]
       92 NEWCLOSURE                       R9 P1
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R6
       95 CALL                             R8 1 2
       96 JUMPIF                           R8 ; [+23]
       97 GETTABLEKS                       R12 R6 K13 ["CFrame"]
       99 GETTABLEKS                       R12 R12 K22 ["LookVector"]
      101 NAMECALL                         R10 R5 K10 ["Fire"]
      103 CALL                             R10 2 0
      104 JUMP                             ; [+15]
      105 GETTABLEKS                       R10 R6 K13 ["CFrame"]
      107 GETTABLEKS                       R10 R10 K22 ["LookVector"]
      109 NAMECALL                         R8 R5 K10 ["Fire"]
      111 CALL                             R8 2 0
      112 JUMP                             ; [+7]
      113 GETTABLEKS                       R9 R6 K13 ["CFrame"]
      115 GETTABLEKS                       R9 R9 K22 ["LookVector"]
      117 NAMECALL                         R7 R5 K10 ["Fire"]
      119 CALL                             R7 2 0
      120 GETUPVAL                         R5 4
      121 JUMPIFNOT                        R5 ; [+43]
      122 LOADK                            R7 K4 ["RotationAction"]
      123 NAMECALL                         R5 R2 K1 ["FindFirstChild"]
      125 CALL                             R5 2 1
      126 JUMPIFNOT                        R5 ; [+53]
      127 LOADK                            R8 K5 ["RotationScriptableBinding"]
      128 NAMECALL                         R6 R5 K1 ["FindFirstChild"]
      130 CALL                             R6 2 1
      131 JUMPIFNOT                        R6 ; [+20]
      132 GETIMPORT                        R7 K12 [pcall]
      134 NEWCLOSURE                       R8 P2
      135 CAPTURE                          VAL R6
      136 CAPTURE                          UPVAL U1
      137 CALL                             R7 1 2
      138 JUMPIF                           R7 ; [+41]
      139 GETUPVAL                         R12 1
      140 GETTABLEKS                       R12 R12 K6 ["RotationType"]
      142 GETIMPORT                        R13 K9 [Enum.RotationType.CameraRelative]
      144 JUMPIFEQ                         R12 R13 ; [+2]
      146 LOADB                            R11 0 +1
      147 LOADB                            R11 1
      148 NAMECALL                         R9 R5 K10 ["Fire"]
      150 CALL                             R9 2 0
      151 RETURN                           R0 0
      152 GETUPVAL                         R10 1
      153 GETTABLEKS                       R10 R10 K6 ["RotationType"]
      155 GETIMPORT                        R11 K9 [Enum.RotationType.CameraRelative]
      157 JUMPIFEQ                         R10 R11 ; [+2]
      159 LOADB                            R9 0 +1
      160 LOADB                            R9 1
      161 NAMECALL                         R7 R5 K10 ["Fire"]
      163 CALL                             R7 2 0
      164 RETURN                           R0 0
      165 GETTABLEKS                       R5 R2 K4 ["RotationAction"]
      167 JUMPIFNOT                        R5 ; [+12]
      168 GETUPVAL                         R9 1
      169 GETTABLEKS                       R9 R9 K6 ["RotationType"]
      171 GETIMPORT                        R10 K9 [Enum.RotationType.CameraRelative]
      173 JUMPIFEQ                         R9 R10 ; [+2]
      175 LOADB                            R8 0 +1
      176 LOADB                            R8 1
      177 NAMECALL                         R6 R5 K10 ["Fire"]
      179 CALL                             R6 2 0
      180 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlayerModule"]
        3 GETTABLEKS                       R1 R1 K1 ["InputContexts"]
        5 NAMECALL                         R1 R1 K2 ["Clone"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K3 ["CharacterContext"]
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K4 ["Enabled"]
       13 GETTABLEKS                       R2 R1 K5 ["CameraContext"]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K4 ["Enabled"]
       18 SETTABLEKS                       R0 R1 K6 ["Parent"]
       20 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetPlayers"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 GETUPVAL                         R6 1
        6 MOVE                             R8 R5
        7 MOVE                             R9 R0
        8 NAMECALL                         R6 R6 K1 ["ProcessInputs"]
       10 CALL                             R6 3 0
       11 FORGLOOP                         R1 2 ; [-7]
       13 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetPlayers"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 GETUPVAL                         R6 1
        6 MOVE                             R8 R5
        7 MOVE                             R9 R0
        8 NAMECALL                         R6 R6 K1 ["ProcessInputs"]
       10 CALL                             R6 3 0
       11 FORGLOOP                         R1 2 ; [-7]
       13 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["writeInputToPCS"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["LocalPlayer"]
        8 GETUPVAL                         R2 3
        9 LOADB                            R3 1
       10 CALL                             R0 3 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 4
       13 JUMPIFNOT                        R0 ; [+8]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K2 ["FireCustomInputs"]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K1 ["LocalPlayer"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 5
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K1 ["LocalPlayer"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["LocalPlayer"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["ProcessInputs"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["LocalPlayer"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["ProcessInputs"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsServer"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+103]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+22]
        7 GETUPVAL                         R1 2
        8 NAMECALL                         R1 R1 K1 ["GetPlayers"]
       10 CALL                             R1 1 3
       11 FORGPREP                         R1
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R6 R6 K2 ["CloneInputsIfAbsent"]
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-6]
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K3 ["PlayerAdded"]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K2 ["CloneInputsIfAbsent"]
       25 NAMECALL                         R1 R1 K4 ["Connect"]
       27 CALL                             R1 2 0
       28 JUMP                             ; [+34]
       29 GETUPVAL                         R1 2
       30 NAMECALL                         R1 R1 K1 ["GetPlayers"]
       32 CALL                             R1 1 3
       33 FORGPREP                         R1
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R6 R6 K5 ["PlayerModule"]
       37 GETTABLEKS                       R6 R6 K6 ["InputContexts"]
       39 NAMECALL                         R6 R6 K7 ["Clone"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R6 K8 ["CharacterContext"]
       44 LOADB                            R8 1
       45 SETTABLEKS                       R8 R7 K9 ["Enabled"]
       47 GETTABLEKS                       R7 R6 K10 ["CameraContext"]
       49 LOADB                            R8 1
       50 SETTABLEKS                       R8 R7 K9 ["Enabled"]
       52 SETTABLEKS                       R5 R6 K11 ["Parent"]
       54 FORGLOOP                         R1 2 ; [-21]
       56 GETUPVAL                         R1 2
       57 GETTABLEKS                       R1 R1 K3 ["PlayerAdded"]
       59 GETUPVAL                         R3 5
       60 NAMECALL                         R1 R1 K4 ["Connect"]
       62 CALL                             R1 2 0
       63 GETUPVAL                         R1 6
       64 JUMPIFNOT                        R1 ; [+21]
       65 GETUPVAL                         R1 2
       66 NAMECALL                         R1 R1 K1 ["GetPlayers"]
       68 CALL                             R1 1 3
       69 FORGPREP                         R1
       70 GETUPVAL                         R6 3
       71 GETTABLEKS                       R6 R6 K12 ["createPlayerControlState"]
       73 MOVE                             R7 R5
       74 CALL                             R6 1 0
       75 FORGLOOP                         R1 2 ; [-6]
       77 GETUPVAL                         R1 2
       78 GETTABLEKS                       R1 R1 K3 ["PlayerAdded"]
       80 GETUPVAL                         R3 3
       81 GETTABLEKS                       R3 R3 K12 ["createPlayerControlState"]
       83 NAMECALL                         R1 R1 K4 ["Connect"]
       85 CALL                             R1 2 0
       86 GETUPVAL                         R1 7
       87 JUMPIFNOT                        R1 ; [+10]
       88 GETUPVAL                         R1 0
       89 NEWCLOSURE                       R3 P0
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          VAL R0
       92 GETIMPORT                        R4 K16 [Enum.StepFrequency.Hz60]
       94 NAMECALL                         R1 R1 K17 ["BindToAnimation"]
       96 CALL                             R1 3 0
       97 JUMP                             ; [+56]
       98 GETUPVAL                         R1 0
       99 NEWCLOSURE                       R3 P1
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          VAL R0
      102 GETIMPORT                        R4 K16 [Enum.StepFrequency.Hz60]
      104 NAMECALL                         R1 R1 K18 ["BindToSimulation"]
      106 CALL                             R1 3 0
      107 JUMP                             ; [+46]
      108 GETUPVAL                         R1 6
      109 JUMPIFNOT                        R1 ; [+7]
      110 GETUPVAL                         R1 3
      111 GETTABLEKS                       R1 R1 K19 ["watchForPlayerControlState"]
      113 GETUPVAL                         R2 2
      114 GETTABLEKS                       R2 R2 K20 ["LocalPlayer"]
      116 CALL                             R1 1 0
      117 GETUPVAL                         R1 0
      118 LOADK                            R3 K21 ["CameraInput"]
      119 GETIMPORT                        R4 K24 [Enum.RenderPriority.Last]
      121 GETTABLEKS                       R4 R4 K25 ["Value"]
      123 NEWCLOSURE                       R5 P2
      124 CAPTURE                          UPVAL U6
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          UPVAL U2
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U1
      129 CAPTURE                          UPVAL U8
      130 NAMECALL                         R1 R1 K26 ["BindToRenderStep"]
      132 CALL                             R1 4 0
      133 GETUPVAL                         R1 7
      134 JUMPIFNOT                        R1 ; [+10]
      135 GETUPVAL                         R1 0
      136 NEWCLOSURE                       R3 P3
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U2
      139 GETIMPORT                        R4 K16 [Enum.StepFrequency.Hz60]
      141 NAMECALL                         R1 R1 K17 ["BindToAnimation"]
      143 CALL                             R1 3 0
      144 JUMP                             ; [+9]
      145 GETUPVAL                         R1 0
      146 NEWCLOSURE                       R3 P4
      147 CAPTURE                          VAL R0
      148 CAPTURE                          UPVAL U2
      149 GETIMPORT                        R4 K16 [Enum.StepFrequency.Hz60]
      151 NAMECALL                         R1 R1 K18 ["BindToSimulation"]
      153 CALL                             R1 3 0
      154 GETTABLEKS                       R1 R0 K27 ["data"]
      156 JUMPIFNOT                        R1 ; [+19]
      157 GETTABLEKS                       R1 R0 K27 ["data"]
      159 GETTABLEKS                       R1 R1 K28 ["eventBus"]
      161 JUMPIFNOT                        R1 ; [+14]
      162 GETTABLEKS                       R1 R0 K27 ["data"]
      164 LOADB                            R2 1
      165 SETTABLEKS                       R2 R1 K29 ["isServerAuthority"]
      167 GETTABLEKS                       R1 R0 K27 ["data"]
      169 GETTABLEKS                       R1 R1 K28 ["eventBus"]
      171 LOADK                            R3 K30 ["SERVER_AUTHORITY_CHANGED"]
      172 LOADB                            R4 1
      173 NAMECALL                         R1 R1 K31 ["publish"]
      175 CALL                             R1 3 0
      176 RETURN                           R0 0

PROTO_22:
        0 ADDK                             R1 R0 K1 [12.566370614359172]
        1 MODK                             R0 R1 K0 [6.283185307179586]
        2 LOADK                            R1 K2 [3.141592653589793]
        3 JUMPIFNOTLT                      R1 R0 ; [+2]
        5 SUBK                             R0 R0 K0 [6.283185307179586]
        6 RETURN                           R0 1

PROTO_23:
        0 SUB                              R3 R1 R0
        1 ADDK                             R4 R3 K1 [12.566370614359172]
        2 MODK                             R3 R4 K0 [6.283185307179586]
        3 LOADK                            R4 K2 [3.141592653589793]
        4 JUMPIFNOTLT                      R4 R3 ; [+2]
        6 SUBK                             R3 R3 K0 [6.283185307179586]
        7 MOVE                             R2 R3
        8 DIVK                             R5 R2 K3 [2]
        9 ADD                              R4 R0 R5
       10 ADDK                             R5 R4 K1 [12.566370614359172]
       11 MODK                             R4 R5 K0 [6.283185307179586]
       12 LOADK                            R5 K2 [3.141592653589793]
       13 JUMPIFNOTLT                      R5 R4 ; [+2]
       15 SUBK                             R4 R4 K0 [6.283185307179586]
       16 MOVE                             R3 R4
       17 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.UserCFrame.Head]
        3 NAMECALL                         R1 R1 K4 ["GetUserCFrame"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R2 R1 K5 ["ToEulerAnglesYXZ"]
        8 CALL                             R2 1 3
        9 MINUS                            R3 R3
       10 GETUPVAL                         R5 0
       11 GETIMPORT                        R7 K7 [Enum.UserCFrame.RightHand]
       13 NAMECALL                         R5 R5 K8 ["GetUserCFrameEnabled"]
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+7]
       17 GETUPVAL                         R5 0
       18 GETIMPORT                        R7 K10 [Enum.UserCFrame.LeftHand]
       20 NAMECALL                         R5 R5 K8 ["GetUserCFrameEnabled"]
       22 CALL                             R5 2 1
       23 JUMPIF                           R5 ; [+3]
       24 SETTABLEKS                       R3 R0 K11 ["currentTorsoAngle"]
       26 JUMP                             ; [+119]
       27 GETUPVAL                         R5 0
       28 GETIMPORT                        R7 K10 [Enum.UserCFrame.LeftHand]
       30 NAMECALL                         R5 R5 K4 ["GetUserCFrame"]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 0
       34 GETIMPORT                        R8 K7 [Enum.UserCFrame.RightHand]
       36 NAMECALL                         R6 R6 K4 ["GetUserCFrame"]
       38 CALL                             R6 2 1
       39 GETTABLEKS                       R8 R1 K12 ["Position"]
       41 GETTABLEKS                       R9 R5 K12 ["Position"]
       43 SUB                              R7 R8 R9
       44 GETTABLEKS                       R9 R1 K12 ["Position"]
       46 GETTABLEKS                       R10 R6 K12 ["Position"]
       48 SUB                              R8 R9 R10
       49 GETTABLEKS                       R11 R7 K13 ["X"]
       51 GETTABLEKS                       R12 R7 K14 ["Z"]
       53 FASTCALL2                        MATH_ATAN2 R11 R12 ; [+3]
       55 GETIMPORT                        R10 K17 [math.atan2]
       57 CALL                             R10 2 1
       58 MINUS                            R9 R10
       59 GETTABLEKS                       R12 R8 K13 ["X"]
       61 GETTABLEKS                       R13 R8 K14 ["Z"]
       63 FASTCALL2                        MATH_ATAN2 R12 R13 ; [+3]
       65 GETIMPORT                        R11 K17 [math.atan2]
       67 CALL                             R11 2 1
       68 MINUS                            R10 R11
       69 SUB                              R13 R10 R9
       70 ADDK                             R14 R13 K19 [12.566370614359172]
       71 MODK                             R13 R14 K18 [6.283185307179586]
       72 LOADK                            R14 K20 [3.141592653589793]
       73 JUMPIFNOTLT                      R14 R13 ; [+2]
       75 SUBK                             R13 R13 K18 [6.283185307179586]
       76 MOVE                             R12 R13
       77 DIVK                             R14 R12 K21 [2]
       78 ADD                              R13 R9 R14
       79 ADDK                             R14 R13 K19 [12.566370614359172]
       80 MODK                             R13 R14 K18 [6.283185307179586]
       81 LOADK                            R14 K20 [3.141592653589793]
       82 JUMPIFNOTLT                      R14 R13 ; [+2]
       84 SUBK                             R13 R13 K18 [6.283185307179586]
       85 MOVE                             R11 R13
       86 GETTABLEKS                       R14 R0 K11 ["currentTorsoAngle"]
       88 SUB                              R13 R3 R14
       89 ADDK                             R14 R13 K19 [12.566370614359172]
       90 MODK                             R13 R14 K18 [6.283185307179586]
       91 LOADK                            R14 K20 [3.141592653589793]
       92 JUMPIFNOTLT                      R14 R13 ; [+2]
       94 SUBK                             R13 R13 K18 [6.283185307179586]
       95 MOVE                             R12 R13
       96 GETTABLEKS                       R15 R0 K11 ["currentTorsoAngle"]
       98 SUB                              R14 R11 R15
       99 ADDK                             R15 R14 K19 [12.566370614359172]
      100 MODK                             R14 R15 K18 [6.283185307179586]
      101 LOADK                            R15 K20 [3.141592653589793]
      102 JUMPIFNOTLT                      R15 R14 ; [+2]
      104 SUBK                             R14 R14 K18 [6.283185307179586]
      105 MOVE                             R13 R14
      106 LOADB                            R14 0
      107 LOADK                            R15 K22 [-1.5707963267948966]
      108 JUMPIFNOTLT                      R15 R13 ; [+6]
      110 LOADK                            R15 K23 [1.5707963267948966]
      111 JUMPIFLT                         R13 R15 ; [+2]
      113 LOADB                            R14 0 +1
      114 LOADB                            R14 1
      115 JUMPIF                           R14 ; [+1]
      116 MOVE                             R13 R12
      117 FASTCALL2                        MATH_MIN R13 R12 ; [+5]
      119 MOVE                             R16 R13
      120 MOVE                             R17 R12
      121 GETIMPORT                        R15 K25 [math.min]
      123 CALL                             R15 2 1
      124 FASTCALL2                        MATH_MAX R13 R12 ; [+5]
      126 MOVE                             R17 R13
      127 MOVE                             R18 R12
      128 GETIMPORT                        R16 K27 [math.max]
      130 CALL                             R16 2 1
      131 LOADN                            R17 0
      132 LOADN                            R18 0
      133 JUMPIFNOTLT                      R18 R15 ; [+3]
      135 MOVE                             R17 R15
      136 JUMP                             ; [+4]
      137 LOADN                            R18 0
      138 JUMPIFNOTLT                      R16 R18 ; [+2]
      140 MOVE                             R17 R16
      141 GETTABLEKS                       R19 R0 K11 ["currentTorsoAngle"]
      143 ADD                              R18 R17 R19
      144 SETTABLEKS                       R18 R0 K11 ["currentTorsoAngle"]
      146 GETIMPORT                        R6 K30 [CFrame.new]
      148 GETTABLEKS                       R7 R1 K12 ["Position"]
      150 CALL                             R6 1 1
      151 GETIMPORT                        R7 K32 [CFrame.fromEulerAnglesYXZ]
      153 LOADN                            R8 0
      154 GETTABLEKS                       R10 R0 K11 ["currentTorsoAngle"]
      156 MINUS                            R9 R10
      157 LOADN                            R10 0
      158 CALL                             R7 3 1
      159 MUL                              R5 R6 R7
      160 RETURN                           R5 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["activeController"]
        2 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["enabled"]
        2 JUMPIFNOT                        R1 ; [+30]
        3 GETTABLEKS                       R1 R0 K1 ["touchControlFrame"]
        5 JUMPIFNOT                        R1 ; [+27]
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["PreferredInput"]
       10 GETIMPORT                        R3 K5 [Enum.PreferredInput.Touch]
       12 JUMPIFNOTEQ                      R2 R3 ; [+20]
       14 LOADB                            R1 1
       15 GETTABLEKS                       R2 R0 K6 ["activeControlModule"]
       17 GETUPVAL                         R3 1
       18 JUMPIFEQ                         R2 R3 ; [+14]
       20 LOADB                            R1 1
       21 GETTABLEKS                       R2 R0 K6 ["activeControlModule"]
       23 GETUPVAL                         R3 2
       24 JUMPIFEQ                         R2 R3 ; [+8]
       26 GETTABLEKS                       R2 R0 K6 ["activeControlModule"]
       28 GETUPVAL                         R3 3
       29 JUMPIFEQ                         R2 R3 ; [+2]
       31 LOADB                            R1 0 +1
       32 LOADB                            R1 1
       33 MOVE                             R2 R1
       34 JUMPIFNOT                        R2 ; [+5]
       35 GETUPVAL                         R3 4
       36 NAMECALL                         R3 R3 K7 ["isEnabled"]
       38 CALL                             R3 1 1
       39 NOT                              R2 R3
       40 MOVE                             R3 R1
       41 JUMPIFNOT                        R3 ; [+4]
       42 GETUPVAL                         R3 4
       43 NAMECALL                         R3 R3 K7 ["isEnabled"]
       45 CALL                             R3 1 1
       46 JUMPIFNOT                        R2 ; [+32]
       47 GETTABLEKS                       R5 R0 K8 ["controllers"]
       49 GETUPVAL                         R6 5
       50 GETTABLE                         R4 R5 R6
       51 JUMPIF                           R4 ; [+12]
       52 GETTABLEKS                       R4 R0 K8 ["controllers"]
       54 GETUPVAL                         R5 5
       55 GETUPVAL                         R6 5
       56 GETTABLEKS                       R6 R6 K9 ["new"]
       58 GETTABLEKS                       R7 R0 K10 ["data"]
       60 GETTABLEKS                       R8 R0 K11 ["playerData"]
       62 CALL                             R6 2 1
       63 SETTABLE                         R6 R4 R5
       64 GETTABLEKS                       R5 R0 K8 ["controllers"]
       66 GETUPVAL                         R6 5
       67 GETTABLE                         R4 R5 R6
       68 SETTABLEKS                       R4 R0 K12 ["touchJumpController"]
       70 GETTABLEKS                       R4 R0 K12 ["touchJumpController"]
       72 LOADB                            R6 1
       73 GETTABLEKS                       R7 R0 K1 ["touchControlFrame"]
       75 NAMECALL                         R4 R4 K13 ["Enable"]
       77 CALL                             R4 3 0
       78 JUMP                             ; [+9]
       79 GETTABLEKS                       R4 R0 K12 ["touchJumpController"]
       81 JUMPIFNOT                        R4 ; [+6]
       82 GETTABLEKS                       R4 R0 K12 ["touchJumpController"]
       84 LOADB                            R6 0
       85 NAMECALL                         R4 R4 K13 ["Enable"]
       87 CALL                             R4 2 0
       88 JUMPIFNOT                        R3 ; [+28]
       89 GETTABLEKS                       R5 R0 K8 ["controllers"]
       91 GETUPVAL                         R6 6
       92 GETTABLE                         R4 R5 R6
       93 JUMPIF                           R4 ; [+10]
       94 GETTABLEKS                       R4 R0 K8 ["controllers"]
       96 GETUPVAL                         R5 6
       97 GETUPVAL                         R6 6
       98 GETTABLEKS                       R6 R6 K9 ["new"]
      100 GETTABLEKS                       R7 R0 K1 ["touchControlFrame"]
      102 CALL                             R6 1 1
      103 SETTABLE                         R6 R4 R5
      104 GETTABLEKS                       R5 R0 K8 ["controllers"]
      106 GETUPVAL                         R6 6
      107 GETTABLE                         R4 R5 R6
      108 SETTABLEKS                       R4 R0 K14 ["touchAbilitiesController"]
      110 GETTABLEKS                       R4 R0 K14 ["touchAbilitiesController"]
      112 LOADB                            R6 1
      113 NAMECALL                         R4 R4 K13 ["Enable"]
      115 CALL                             R4 2 0
      116 RETURN                           R0 0
      117 GETTABLEKS                       R4 R0 K14 ["touchAbilitiesController"]
      119 JUMPIFNOT                        R4 ; [+6]
      120 GETTABLEKS                       R4 R0 K14 ["touchAbilitiesController"]
      122 LOADB                            R6 0
      123 NAMECALL                         R4 R4 K13 ["Enable"]
      125 CALL                             R4 2 0
      126 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["enabled"]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["activeController"]
        9 LOADB                            R2 0
       10 NAMECALL                         R0 R0 K2 ["Enable"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 0
       14 JUMPIFNOT                        R0 ; [+5]
       15 GETUPVAL                         R0 1
       16 NAMECALL                         R0 R0 K3 ["UpdateAbilitiesControllers"]
       18 CALL                             R0 1 0
       19 JUMP                             ; [+11]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K4 ["touchJumpController"]
       23 JUMPIFNOT                        R0 ; [+7]
       24 GETUPVAL                         R0 1
       25 GETTABLEKS                       R0 R0 K4 ["touchJumpController"]
       27 LOADB                            R2 0
       28 NAMECALL                         R0 R0 K2 ["Enable"]
       30 CALL                             R0 2 0
       31 GETUPVAL                         R0 1
       32 GETTABLEKS                       R0 R0 K5 ["moveFunction"]
       34 JUMPIFNOT                        R0 ; [+16]
       35 GETUPVAL                         R0 0
       36 JUMPIFNOT                        R0 ; [+5]
       37 GETUPVAL                         R0 2
       38 NAMECALL                         R0 R0 K6 ["isEnabled"]
       40 CALL                             R0 1 1
       41 JUMPIF                           R0 ; [+9]
       42 GETUPVAL                         R0 1
       43 GETTABLEKS                       R0 R0 K5 ["moveFunction"]
       45 GETUPVAL                         R1 3
       46 GETTABLEKS                       R1 R1 K7 ["LocalPlayer"]
       48 LOADK                            R2 K8 [{0, 0, 0}]
       49 LOADB                            R3 1
       50 CALL                             R0 3 0
       51 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["enabled"]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["UpdateAbilitiesControllers"]
        9 CALL                             R0 1 0
       10 JUMP                             ; [+80]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K2 ["touchControlFrame"]
       14 JUMPIFNOT                        R0 ; [+65]
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K3 ["PreferredInput"]
       18 GETIMPORT                        R1 K6 [Enum.PreferredInput.Touch]
       20 JUMPIFNOTEQ                      R0 R1 ; [+59]
       22 GETUPVAL                         R0 1
       23 GETTABLEKS                       R0 R0 K7 ["activeControlModule"]
       25 GETUPVAL                         R1 3
       26 JUMPIFEQ                         R0 R1 ; [+13]
       28 GETUPVAL                         R0 1
       29 GETTABLEKS                       R0 R0 K7 ["activeControlModule"]
       31 GETUPVAL                         R1 4
       32 JUMPIFEQ                         R0 R1 ; [+7]
       34 GETUPVAL                         R0 1
       35 GETTABLEKS                       R0 R0 K7 ["activeControlModule"]
       37 GETUPVAL                         R1 5
       38 JUMPIFNOTEQ                      R0 R1 ; [+41]
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R1 R1 K8 ["controllers"]
       43 GETUPVAL                         R2 6
       44 GETTABLE                         R0 R1 R2
       45 JUMPIF                           R0 ; [+15]
       46 GETUPVAL                         R0 1
       47 GETTABLEKS                       R0 R0 K8 ["controllers"]
       49 GETUPVAL                         R1 6
       50 GETUPVAL                         R2 6
       51 GETTABLEKS                       R2 R2 K9 ["new"]
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K10 ["data"]
       56 GETUPVAL                         R4 1
       57 GETTABLEKS                       R4 R4 K11 ["playerData"]
       59 CALL                             R2 2 1
       60 SETTABLE                         R2 R0 R1
       61 GETUPVAL                         R0 1
       62 GETUPVAL                         R2 1
       63 GETTABLEKS                       R2 R2 K8 ["controllers"]
       65 GETUPVAL                         R3 6
       66 GETTABLE                         R1 R2 R3
       67 SETTABLEKS                       R1 R0 K12 ["touchJumpController"]
       69 GETUPVAL                         R0 1
       70 GETTABLEKS                       R0 R0 K12 ["touchJumpController"]
       72 LOADB                            R2 1
       73 GETUPVAL                         R3 1
       74 GETTABLEKS                       R3 R3 K2 ["touchControlFrame"]
       76 NAMECALL                         R0 R0 K13 ["Enable"]
       78 CALL                             R0 3 0
       79 JUMP                             ; [+11]
       80 GETUPVAL                         R0 1
       81 GETTABLEKS                       R0 R0 K12 ["touchJumpController"]
       83 JUMPIFNOT                        R0 ; [+7]
       84 GETUPVAL                         R0 1
       85 GETTABLEKS                       R0 R0 K12 ["touchJumpController"]
       87 LOADB                            R2 0
       88 NAMECALL                         R0 R0 K13 ["Enable"]
       90 CALL                             R0 2 0
       91 GETUPVAL                         R0 1
       92 GETTABLEKS                       R0 R0 K7 ["activeControlModule"]
       94 GETUPVAL                         R1 3
       95 JUMPIFNOTEQ                      R0 R1 ; [+23]
       97 GETUPVAL                         R0 1
       98 GETTABLEKS                       R0 R0 K14 ["activeController"]
      100 LOADB                            R2 1
      101 GETUPVAL                         R4 7
      102 GETTABLEKS                       R4 R4 K15 ["LocalPlayer"]
      104 GETTABLEKS                       R4 R4 K16 ["DevComputerMovementMode"]
      106 GETIMPORT                        R5 K18 [Enum.DevComputerMovementMode.UserChoice]
      108 JUMPIFEQ                         R4 R5 ; [+2]
      110 LOADB                            R3 0 +1
      111 LOADB                            R3 1
      112 GETUPVAL                         R4 1
      113 GETTABLEKS                       R4 R4 K12 ["touchJumpController"]
      115 NAMECALL                         R0 R0 K13 ["Enable"]
      117 CALL                             R0 4 0
      118 RETURN                           R0 0
      119 GETUPVAL                         R0 1
      120 GETTABLEKS                       R0 R0 K2 ["touchControlFrame"]
      122 JUMPIFNOT                        R0 ; [+11]
      123 GETUPVAL                         R0 1
      124 GETTABLEKS                       R0 R0 K14 ["activeController"]
      126 LOADB                            R2 1
      127 GETUPVAL                         R3 1
      128 GETTABLEKS                       R3 R3 K2 ["touchControlFrame"]
      130 NAMECALL                         R0 R0 K13 ["Enable"]
      132 CALL                             R0 3 0
      133 RETURN                           R0 0
      134 GETUPVAL                         R0 1
      135 GETTABLEKS                       R0 R0 K14 ["activeController"]
      137 LOADB                            R2 1
      138 NAMECALL                         R0 R0 K13 ["Enable"]
      140 CALL                             R0 2 0
      141 RETURN                           R0 0

PROTO_29:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U2
       14 GETTABLEKS                       R3 R0 K0 ["activeController"]
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R3 R0 K1 ["controlsEnabled"]
       20 JUMPIF                           R3 ; [+3]
       21 MOVE                             R3 R1
       22 CALL                             R3 0 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R3 8
       25 GETTABLEKS                       R3 R3 K2 ["TouchControlsEnabled"]
       27 JUMPIF                           R3 ; [+25]
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K3 ["PreferredInput"]
       31 GETIMPORT                        R4 K6 [Enum.PreferredInput.Touch]
       33 JUMPIFNOTEQ                      R3 R4 ; [+19]
       35 GETTABLEKS                       R3 R0 K7 ["activeControlModule"]
       37 GETUPVAL                         R4 4
       38 JUMPIFEQ                         R3 R4 ; [+11]
       40 GETTABLEKS                       R3 R0 K7 ["activeControlModule"]
       42 GETUPVAL                         R4 5
       43 JUMPIFEQ                         R3 R4 ; [+6]
       45 GETTABLEKS                       R3 R0 K7 ["activeControlModule"]
       47 GETUPVAL                         R4 6
       48 JUMPIFNOTEQ                      R3 R4 ; [+4]
       50 MOVE                             R3 R1
       51 CALL                             R3 0 0
       52 RETURN                           R0 0
       53 MOVE                             R3 R2
       54 CALL                             R3 0 0
       55 RETURN                           R0 0

PROTO_30:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R1 1
        3 GETTABLEKS                       R2 R0 K0 ["controlsEnabled"]
        5 JUMPIFNOTEQ                      R2 R1 ; [+2]
        7 RETURN                           R0 0
        8 SETTABLEKS                       R1 R0 K0 ["controlsEnabled"]
       10 GETTABLEKS                       R2 R0 K1 ["activeController"]
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 NAMECALL                         R2 R0 K2 ["UpdateActiveControlModuleEnabled"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_31:
        0 LOADB                            R3 0
        1 NAMECALL                         R1 R0 K0 ["Enable"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["PreferredInput"]
        3 GETIMPORT                        R2 K3 [Enum.PreferredInput.MicroGamepad]
        5 JUMPIFEQ                         R1 R2 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_33:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETIMPORT                        R2 K1 [pcall]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["PreferredInput"]
       12 GETIMPORT                        R3 K5 [Enum.PreferredInput.KeyboardAndMouse]
       14 JUMPIFEQ                         R2 R3 ; [+13]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K2 ["PreferredInput"]
       19 GETIMPORT                        R3 K7 [Enum.PreferredInput.Gamepad]
       21 JUMPIFEQ                         R2 R3 ; [+6]
       23 JUMPIF                           R1 ; [+4]
       24 LOADNIL                          R2
       25 LOADB                            R3 0
       26 CLOSEUPVALS                      R1
       27 RETURN                           R2 2
       28 GETUPVAL                         R2 2
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K8 ["LocalPlayer"]
       32 GETTABLEKS                       R3 R3 K9 ["DevComputerMovementMode"]
       34 GETIMPORT                        R4 K11 [Enum.DevComputerMovementMode.UserChoice]
       36 JUMPIFNOTEQ                      R3 R4 ; [+10]
       38 GETUPVAL                         R4 4
       39 GETTABLEKS                       R4 R4 K12 ["ComputerMovementMode"]
       41 GETIMPORT                        R5 K14 [Enum.ComputerMovementMode.ClickToMove]
       43 JUMPIFNOTEQ                      R4 R5 ; [+15]
       45 GETUPVAL                         R2 5
       46 JUMP                             ; [+12]
       47 GETUPVAL                         R4 6
       48 GETTABLE                         R2 R4 R3
       49 JUMPIF                           R2 ; [+9]
       50 GETIMPORT                        R4 K16 [Enum.DevComputerMovementMode.Scriptable]
       52 JUMPIFEQ                         R3 R4 ; [+6]
       54 GETIMPORT                        R4 K18 [warn]
       56 LOADK                            R5 K19 ["No character control module is associated with DevComputerMovementMode "]
       57 MOVE                             R6 R3
       58 CALL                             R4 2 0
       59 JUMPIFNOT                        R2 ; [+4]
       60 MOVE                             R4 R2
       61 LOADB                            R5 1
       62 CLOSEUPVALS                      R1
       63 RETURN                           R4 2
       64 GETIMPORT                        R4 K16 [Enum.DevComputerMovementMode.Scriptable]
       66 JUMPIFNOTEQ                      R3 R4 ; [+5]
       68 LOADNIL                          R4
       69 LOADB                            R5 1
       70 CLOSEUPVALS                      R1
       71 RETURN                           R4 2
       72 LOADNIL                          R4
       73 LOADB                            R5 0
       74 CLOSEUPVALS                      R1
       75 RETURN                           R4 2

PROTO_34:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["LocalPlayer"]
        4 GETTABLEKS                       R2 R2 K1 ["DevTouchMovementMode"]
        6 GETIMPORT                        R3 K4 [Enum.DevTouchMovementMode.UserChoice]
        8 JUMPIFNOTEQ                      R2 R3 ; [+7]
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K5 ["TouchMovementMode"]
       14 GETTABLE                         R1 R3 R4
       15 JUMP                             ; [+9]
       16 GETIMPORT                        R3 K7 [Enum.DevTouchMovementMode.Scriptable]
       18 JUMPIFNOTEQ                      R2 R3 ; [+4]
       20 LOADNIL                          R3
       21 LOADB                            R4 1
       22 RETURN                           R3 2
       23 GETUPVAL                         R3 1
       24 GETTABLE                         R1 R3 R2
       25 MOVE                             R3 R1
       26 LOADB                            R4 1
       27 RETURN                           R3 2

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["CurrentCamera"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R2 1
        5 GETTABLEKS                       R4 R3 K1 ["CFrame"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K2 ["VREnabled"]
       10 JUMPIFNOT                        R5 ; [+31]
       11 GETTABLEKS                       R5 R1 K3 ["RootPart"]
       13 JUMPIFNOT                        R5 ; [+28]
       14 NAMECALL                         R5 R0 K4 ["GetEstimatedVRTorsoFrame"]
       16 CALL                             R5 1 1
       17 GETTABLEKS                       R7 R3 K5 ["Focus"]
       19 GETTABLEKS                       R7 R7 K6 ["Position"]
       21 GETTABLEKS                       R8 R4 K6 ["Position"]
       23 SUB                              R6 R7 R8
       24 GETTABLEKS                       R7 R6 K7 ["Magnitude"]
       26 LOADN                            R8 3
       27 JUMPIFNOTLT                      R7 R8 ; [+3]
       29 MUL                              R4 R4 R5
       30 JUMP                             ; [+11]
       31 GETTABLEKS                       R7 R3 K1 ["CFrame"]
       33 GETTABLEKS                       R9 R5 K8 ["Rotation"]
       35 GETTABLEKS                       R11 R5 K6 ["Position"]
       37 GETTABLEKS                       R12 R3 K9 ["HeadScale"]
       39 MUL                              R10 R11 R12
       40 ADD                              R8 R9 R10
       41 MUL                              R4 R7 R8
       42 NAMECALL                         R5 R1 K10 ["GetState"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K14 [Enum.HumanoidStateType.Swimming]
       47 JUMPIFNOTEQ                      R5 R6 ; [+66]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K2 ["VREnabled"]
       52 JUMPIFNOT                        R5 ; [+56]
       53 GETTABLEKS                       R6 R2 K15 ["X"]
       55 LOADN                            R7 0
       56 GETTABLEKS                       R8 R2 K16 ["Z"]
       58 FASTCALL                         VECTOR ; [+2]
       59 GETIMPORT                        R5 K19 [Vector3.new]
       61 CALL                             R5 3 1
       62 MOVE                             R2 R5
       63 GETTABLEKS                       R5 R2 K7 ["Magnitude"]
       65 LOADK                            R6 K20 [0.01]
       66 JUMPIFNOTLT                      R5 R6 ; [+3]
       68 LOADK                            R5 K21 [{0, 0, 0}]
       69 RETURN                           R5 1
       70 LOADN                            R5 0
       71 GETUPVAL                         R6 2
       72 JUMPIFNOT                        R6 ; [+12]
       73 GETUPVAL                         R6 2
       74 GETTABLEKS                       R6 R6 K22 ["Enabled"]
       76 JUMPIFNOT                        R6 ; [+8]
       77 GETUPVAL                         R7 2
       78 NAMECALL                         R7 R7 K10 ["GetState"]
       80 CALL                             R7 1 1
       81 GETTABLEKS                       R7 R7 K24 ["Y"]
       83 MINUS                            R6 R7
       84 DIVK                             R5 R6 K23 [2.31]
       85 GETTABLEKS                       R8 R2 K15 ["X"]
       87 MINUS                            R7 R8
       88 GETTABLEKS                       R9 R2 K16 ["Z"]
       90 MINUS                            R8 R9
       91 FASTCALL2                        MATH_ATAN2 R7 R8 ; [+3]
       93 GETIMPORT                        R6 K27 [math.atan2]
       95 CALL                             R6 2 1
       96 NAMECALL                         R7 R4 K28 ["ToEulerAnglesYXZ"]
       98 CALL                             R7 1 3
       99 ADD                              R6 R6 R8
      100 GETIMPORT                        R10 K30 [CFrame.fromEulerAnglesYXZ]
      102 MOVE                             R11 R5
      103 MOVE                             R12 R6
      104 LOADN                            R13 0
      105 CALL                             R10 3 1
      106 GETTABLEKS                       R11 R10 K31 ["LookVector"]
      108 RETURN                           R11 1
      109 MOVE                             R7 R2
      110 NAMECALL                         R5 R4 K32 ["VectorToWorldSpace"]
      112 CALL                             R5 2 -1
      113 RETURN                           R5 -1
      114 LOADNIL                          R5
      115 LOADNIL                          R6
      116 NAMECALL                         R7 R4 K33 ["GetComponents"]
      118 CALL                             R7 1 12
      119 LOADN                            R19 1
      120 JUMPIFNOTLT                      R15 R19 ; [+7]
      122 LOADN                            R19 -1
      123 JUMPIFNOTLT                      R19 R15 ; [+4]
      125 MOVE                             R5 R18
      126 MOVE                             R6 R12
      127 JUMP                             ; [+8]
      128 MOVE                             R5 R10
      129 MINUS                            R19 R11
      130 FASTCALL1                        MATH_SIGN R15 ; [+3]
      131 MOVE                             R21 R15
      132 GETIMPORT                        R20 K35 [math.sign]
      134 CALL                             R20 1 1
      135 MUL                              R6 R19 R20
      136 MUL                              R21 R5 R5
      137 MUL                              R22 R6 R6
      138 ADD                              R20 R21 R22
      139 FASTCALL1                        MATH_SQRT R20 ; [+2]
      140 GETIMPORT                        R19 K37 [math.sqrt]
      142 CALL                             R19 1 1
      143 GETTABLEKS                       R24 R2 K15 ["X"]
      145 MUL                              R23 R5 R24
      146 GETTABLEKS                       R25 R2 K16 ["Z"]
      148 MUL                              R24 R6 R25
      149 ADD                              R22 R23 R24
      150 DIV                              R21 R22 R19
      151 LOADN                            R22 0
      152 GETTABLEKS                       R26 R2 K16 ["Z"]
      154 MUL                              R25 R5 R26
      155 GETTABLEKS                       R27 R2 K15 ["X"]
      157 MUL                              R26 R6 R27
      158 SUB                              R24 R25 R26
      159 DIV                              R23 R24 R19
      160 FASTCALL                         VECTOR ; [+2]
      161 GETIMPORT                        R20 K19 [Vector3.new]
      163 CALL                             R20 3 1
      164 RETURN                           R20 1

PROTO_36:
        0 SETTABLEKS                       R1 R0 K0 ["data"]
        2 SETTABLEKS                       R2 R0 K1 ["playerData"]
        4 NAMECALL                         R3 R0 K2 ["UpdateMovementMode"]
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["initializeActions"]
       10 GETTABLEKS                       R4 R0 K0 ["data"]
       12 GETTABLEKS                       R5 R0 K1 ["playerData"]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 1
       16 JUMPIFNOT                        R3 ; [+12]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K4 ["setupSlotActions"]
       20 GETTABLEKS                       R4 R0 K1 ["playerData"]
       22 GETTABLEKS                       R4 R4 K5 ["player"]
       24 GETTABLEKS                       R5 R0 K0 ["data"]
       26 GETTABLEKS                       R5 R5 K6 ["isServerAuthority"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R5 R2 K0 ["player"]
        2 FASTCALL1                        ASSERT R5 ; [+2]
        3 GETIMPORT                        R4 K2 [assert]
        5 CALL                             R4 1 0
        6 GETTABLEKS                       R5 R2 K3 ["character"]
        8 FASTCALL1                        ASSERT R5 ; [+2]
        9 GETIMPORT                        R4 K2 [assert]
       11 CALL                             R4 1 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["initializeActions"]
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 CALL                             R4 2 0
       18 GETTABLEKS                       R5 R2 K6 ["actions"]
       20 GETTABLEKS                       R4 R5 K5 ["MoveAction"]
       22 JUMPIFNOT                        R4 ; [+5]
       23 GETTABLEKS                       R5 R2 K6 ["actions"]
       25 GETTABLEKS                       R4 R5 K7 ["JumpAction"]
       27 JUMPIF                           R4 ; [+1]
       28 RETURN                           R0 0
       29 GETTABLEKS                       R4 R0 K8 ["activeController"]
       31 JUMPIFNOT                        R4 ; [+129]
       32 GETTABLEKS                       R4 R0 K8 ["activeController"]
       34 GETTABLEKS                       R4 R4 K9 ["enabled"]
       36 JUMPIFNOT                        R4 ; [+124]
       37 GETTABLEKS                       R4 R0 K10 ["humanoid"]
       39 JUMPIFNOT                        R4 ; [+121]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K11 ["update"]
       43 MOVE                             R5 R2
       44 CALL                             R4 1 0
       45 NAMECALL                         R4 R0 K12 ["GetClickToMoveController"]
       47 CALL                             R4 1 1
       48 MOVE                             R7 R2
       49 MOVE                             R8 R3
       50 NAMECALL                         R5 R4 K13 ["Update"]
       52 CALL                             R5 3 0
       53 GETTABLEKS                       R6 R2 K14 ["moveVector"]
       55 GETTABLEKS                       R6 R6 K15 ["X"]
       57 LOADN                            R7 0
       58 GETTABLEKS                       R9 R2 K14 ["moveVector"]
       60 GETTABLEKS                       R9 R9 K16 ["Y"]
       62 MINUS                            R8 R9
       63 FASTCALL                         VECTOR ; [+2]
       64 GETIMPORT                        R5 K19 [Vector3.new]
       66 CALL                             R5 3 1
       67 LOADB                            R6 0
       68 GETTABLEKS                       R7 R0 K20 ["vehicleController"]
       70 JUMPIFNOT                        R7 ; [+9]
       71 GETTABLEKS                       R7 R0 K20 ["vehicleController"]
       73 MOVE                             R9 R5
       74 LOADB                            R10 1
       75 NAMECALL                         R7 R7 K13 ["Update"]
       77 CALL                             R7 3 2
       78 MOVE                             R5 R7
       79 MOVE                             R6 R8
       80 GETTABLEKS                       R9 R0 K10 ["humanoid"]
       82 MOVE                             R10 R5
       83 NAMECALL                         R7 R0 K21 ["calculateRawMoveVector"]
       85 CALL                             R7 3 1
       86 MOVE                             R5 R7
       87 SETTABLEKS                       R5 R0 K22 ["inputMoveVector"]
       89 GETUPVAL                         R7 1
       90 GETTABLEKS                       R7 R7 K23 ["VREnabled"]
       92 JUMPIFNOT                        R7 ; [+5]
       93 MOVE                             R9 R5
       94 NAMECALL                         R7 R0 K24 ["updateVRMoveVector"]
       96 CALL                             R7 2 1
       97 MOVE                             R5 R7
       98 GETUPVAL                         R7 2
       99 JUMPIFNOT                        R7 ; [+35]
      100 GETTABLEKS                       R7 R1 K25 ["isServerAuthority"]
      102 JUMPIF                           R7 ; [+58]
      103 GETUPVAL                         R7 3
      104 JUMPIFNOT                        R7 ; [+15]
      105 GETUPVAL                         R7 4
      106 NAMECALL                         R7 R7 K26 ["isEnabled"]
      108 CALL                             R7 1 1
      109 JUMPIFNOT                        R7 ; [+10]
      110 GETUPVAL                         R7 5
      111 GETTABLEKS                       R7 R7 K27 ["writeInputToPCS"]
      113 GETUPVAL                         R8 6
      114 GETTABLEKS                       R8 R8 K28 ["LocalPlayer"]
      116 MOVE                             R9 R0
      117 LOADB                            R10 0
      118 CALL                             R7 3 0
      119 RETURN                           R0 0
      120 GETTABLEKS                       R7 R0 K29 ["moveFunction"]
      122 GETUPVAL                         R8 6
      123 GETTABLEKS                       R8 R8 K28 ["LocalPlayer"]
      125 MOVE                             R9 R5
      126 LOADB                            R10 0
      127 CALL                             R7 3 0
      128 GETTABLEKS                       R7 R0 K10 ["humanoid"]
      130 GETTABLEKS                       R8 R2 K30 ["isJumping"]
      132 SETTABLEKS                       R8 R7 K31 ["Jump"]
      134 RETURN                           R0 0
      135 GETUPVAL                         R7 7
      136 JUMPIFNOT                        R7 ; [+3]
      137 GETTABLEKS                       R7 R1 K25 ["isServerAuthority"]
      139 JUMPIF                           R7 ; [+21]
      140 GETUPVAL                         R7 3
      141 JUMPIFNOT                        R7 ; [+5]
      142 GETUPVAL                         R7 4
      143 NAMECALL                         R7 R7 K26 ["isEnabled"]
      145 CALL                             R7 1 1
      146 JUMPIF                           R7 ; [+14]
      147 GETTABLEKS                       R7 R0 K29 ["moveFunction"]
      149 GETUPVAL                         R8 6
      150 GETTABLEKS                       R8 R8 K28 ["LocalPlayer"]
      152 MOVE                             R9 R5
      153 LOADB                            R10 0
      154 CALL                             R7 3 0
      155 GETTABLEKS                       R7 R0 K10 ["humanoid"]
      157 GETTABLEKS                       R8 R2 K30 ["isJumping"]
      159 SETTABLEKS                       R8 R7 K31 ["Jump"]
      161 RETURN                           R0 0

PROTO_38:
        0 GETIMPORT                        R2 K1 [workspace]
        2 GETTABLEKS                       R2 R2 K2 ["CurrentCamera"]
        4 GETTABLEKS                       R4 R2 K3 ["Focus"]
        6 GETTABLEKS                       R4 R4 K4 ["Position"]
        8 GETTABLEKS                       R5 R2 K5 ["CFrame"]
       10 GETTABLEKS                       R5 R5 K4 ["Position"]
       12 SUB                              R3 R4 R5
       13 LOADB                            R4 0
       14 GETTABLEKS                       R5 R3 K6 ["Magnitude"]
       16 LOADN                            R6 5
       17 JUMPIFNOTLT                      R5 R6 ; [+2]
       19 LOADB                            R4 1
       20 GETTABLEKS                       R5 R1 K6 ["Magnitude"]
       22 JUMPIFNOTEQKN                    R5 K7 [0] ; [+70]
       24 JUMPIFNOT                        R4 ; [+68]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K8 ["AvatarGestures"]
       28 JUMPIFNOT                        R5 ; [+64]
       29 GETTABLEKS                       R5 R0 K9 ["humanoid"]
       31 JUMPIFNOT                        R5 ; [+61]
       32 GETTABLEKS                       R5 R0 K9 ["humanoid"]
       34 GETTABLEKS                       R5 R5 K10 ["Sit"]
       36 JUMPIF                           R5 ; [+56]
       37 GETUPVAL                         R5 0
       38 GETIMPORT                        R7 K14 [Enum.UserCFrame.Head]
       40 NAMECALL                         R5 R5 K15 ["GetUserCFrame"]
       42 CALL                             R5 2 1
       43 GETTABLEKS                       R6 R5 K16 ["Rotation"]
       45 GETTABLEKS                       R8 R5 K4 ["Position"]
       47 GETTABLEKS                       R9 R2 K17 ["HeadScale"]
       49 MUL                              R7 R8 R9
       50 ADD                              R5 R6 R7
       51 LOADK                            R8 K19 [-0.7]
       52 GETTABLEKS                       R9 R0 K9 ["humanoid"]
       54 GETTABLEKS                       R9 R9 K20 ["RootPart"]
       56 GETTABLEKS                       R9 R9 K21 ["Size"]
       58 GETTABLEKS                       R9 R9 K22 ["Y"]
       60 MUL                              R7 R8 R9
       61 DIVK                             R6 R7 K18 [2]
       62 GETTABLEKS                       R9 R2 K5 ["CFrame"]
       64 MUL                              R8 R9 R5
       65 GETIMPORT                        R9 K24 [CFrame.new]
       67 LOADN                            R10 0
       68 MOVE                             R11 R6
       69 LOADN                            R12 0
       70 CALL                             R9 3 1
       71 MUL                              R7 R8 R9
       72 GETTABLEKS                       R9 R7 K4 ["Position"]
       74 GETTABLEKS                       R10 R0 K9 ["humanoid"]
       76 GETTABLEKS                       R10 R10 K20 ["RootPart"]
       78 GETTABLEKS                       R10 R10 K5 ["CFrame"]
       80 GETTABLEKS                       R10 R10 K4 ["Position"]
       82 SUB                              R8 R9 R10
       83 GETTABLEKS                       R10 R8 K25 ["x"]
       85 LOADN                            R11 0
       86 GETTABLEKS                       R12 R8 K26 ["z"]
       88 FASTCALL                         VECTOR ; [+2]
       89 GETIMPORT                        R9 K28 [Vector3.new]
       91 CALL                             R9 3 1
       92 RETURN                           R9 1
       93 RETURN                           R1 1

PROTO_39:
        0 JUMPIFNOT                        R1 ; [+24]
        1 JUMPIFNOT                        R2 ; [+33]
        2 LOADK                            R5 K0 ["VehicleSeat"]
        3 NAMECALL                         R3 R2 K1 ["IsA"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+28]
        7 GETTABLEKS                       R3 R0 K2 ["vehicleController"]
        9 JUMPIF                           R3 ; [+7]
       10 GETTABLEKS                       R3 R0 K2 ["vehicleController"]
       12 GETTABLEKS                       R3 R3 K3 ["new"]
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R0 K2 ["vehicleController"]
       17 GETTABLEKS                       R3 R0 K2 ["vehicleController"]
       19 LOADB                            R5 1
       20 MOVE                             R6 R2
       21 NAMECALL                         R3 R3 K4 ["Enable"]
       23 CALL                             R3 3 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R3 R0 K2 ["vehicleController"]
       27 JUMPIFNOT                        R3 ; [+7]
       28 GETTABLEKS                       R3 R0 K2 ["vehicleController"]
       30 LOADB                            R5 0
       31 MOVE                             R6 R2
       32 NAMECALL                         R3 R3 K4 ["Enable"]
       34 CALL                             R3 3 0
       35 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["OnHumanoidSeated"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_41:
        0 LOADK                            R4 K0 ["Humanoid"]
        1 NAMECALL                         R2 R1 K1 ["FindFirstChildOfClass"]
        3 CALL                             R2 2 1
        4 SETTABLEKS                       R2 R0 K2 ["humanoid"]
        6 GETTABLEKS                       R2 R0 K2 ["humanoid"]
        8 JUMPIF                           R2 ; [+12]
        9 GETTABLEKS                       R2 R1 K3 ["ChildAdded"]
       11 NAMECALL                         R2 R2 K4 ["wait"]
       13 CALL                             R2 1 0
       14 LOADK                            R4 K0 ["Humanoid"]
       15 NAMECALL                         R2 R1 K1 ["FindFirstChildOfClass"]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R0 K2 ["humanoid"]
       20 JUMPBACK                         ; [-15]
       21 GETTABLEKS                       R2 R0 K5 ["humanoidSeatedConn"]
       23 JUMPIFNOT                        R2 ; [+8]
       24 GETTABLEKS                       R2 R0 K5 ["humanoidSeatedConn"]
       26 NAMECALL                         R2 R2 K6 ["Disconnect"]
       28 CALL                             R2 1 0
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R0 K5 ["humanoidSeatedConn"]
       32 GETTABLEKS                       R2 R0 K2 ["humanoid"]
       34 GETTABLEKS                       R2 R2 K7 ["Seated"]
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          VAL R0
       38 NAMECALL                         R2 R2 K8 ["Connect"]
       40 CALL                             R2 2 1
       41 SETTABLEKS                       R2 R0 K5 ["humanoidSeatedConn"]
       43 NAMECALL                         R2 R0 K9 ["UpdateMovementMode"]
       45 CALL                             R2 1 0
       46 RETURN                           R0 0

PROTO_42:
        0 LOADNIL                          R2
        1 SETTABLEKS                       R2 R0 K0 ["humanoid"]
        3 NAMECALL                         R2 R0 K1 ["UpdateMovementMode"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["humanoid"]
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["TouchControlsEnabled"]
        6 JUMPIFNOT                        R1 ; [+9]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["PreferredInput"]
       10 GETIMPORT                        R3 K5 [Enum.PreferredInput.Touch]
       12 JUMPIFEQ                         R2 R3 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETTABLEKS                       R2 R0 K6 ["touchGui"]
       19 JUMPIF                           R2 ; [+3]
       20 NAMECALL                         R2 R0 K7 ["CreateTouchGuiContainer"]
       22 CALL                             R2 1 0
       23 GETTABLEKS                       R2 R0 K6 ["touchGui"]
       25 JUMPIFNOT                        R2 ; [+6]
       26 GETTABLEKS                       R2 R0 K6 ["touchGui"]
       28 NOT                              R4 R1
       29 NOT                              R3 R4
       30 SETTABLEKS                       R3 R2 K8 ["Enabled"]
       32 RETURN                           R0 0

PROTO_44:
        0 JUMPIF                           R1 ; [+16]
        1 GETTABLEKS                       R2 R0 K0 ["activeController"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETTABLEKS                       R2 R0 K0 ["activeController"]
        6 LOADB                            R4 0
        7 NAMECALL                         R2 R2 K1 ["Enable"]
        9 CALL                             R2 2 0
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R0 K0 ["activeController"]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R0 K2 ["activeControlModule"]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R0 K3 ["controllers"]
       19 GETTABLE                         R2 R3 R1
       20 JUMPIF                           R2 ; [+8]
       21 GETTABLEKS                       R2 R0 K3 ["controllers"]
       23 GETTABLEKS                       R3 R1 K4 ["new"]
       25 GETTABLEKS                       R4 R0 K5 ["playerData"]
       27 CALL                             R3 1 1
       28 SETTABLE                         R3 R2 R1
       29 GETTABLEKS                       R2 R0 K0 ["activeController"]
       31 GETTABLEKS                       R4 R0 K3 ["controllers"]
       33 GETTABLE                         R3 R4 R1
       34 JUMPIFEQ                         R2 R3 ; [+20]
       36 GETTABLEKS                       R2 R0 K0 ["activeController"]
       38 JUMPIFNOT                        R2 ; [+6]
       39 GETTABLEKS                       R2 R0 K0 ["activeController"]
       41 LOADB                            R4 0
       42 NAMECALL                         R2 R2 K1 ["Enable"]
       44 CALL                             R2 2 0
       45 GETTABLEKS                       R3 R0 K3 ["controllers"]
       47 GETTABLE                         R2 R3 R1
       48 SETTABLEKS                       R2 R0 K0 ["activeController"]
       50 SETTABLEKS                       R1 R0 K2 ["activeControlModule"]
       52 NAMECALL                         R2 R0 K6 ["UpdateActiveControlModuleEnabled"]
       54 CALL                             R2 1 0
       55 RETURN                           R0 0

PROTO_45:
        0 NAMECALL                         R1 R0 K0 ["UpdateTouchGuiVisibility"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["PreferredInput"]
        6 GETIMPORT                        R2 K4 [Enum.PreferredInput.Touch]
        8 JUMPIFNOTEQ                      R1 R2 ; [+13]
       10 NAMECALL                         R1 R0 K5 ["SelectTouchModule"]
       12 CALL                             R1 1 2
       13 JUMPIFNOT                        R2 ; [+15]
       14 GETTABLEKS                       R3 R0 K6 ["touchControlFrame"]
       16 JUMPIFNOT                        R3 ; [+12]
       17 MOVE                             R5 R1
       18 NAMECALL                         R3 R0 K7 ["SwitchToController"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0
       22 NAMECALL                         R1 R0 K8 ["SelectComputerMovementModule"]
       24 CALL                             R1 1 1
       25 MOVE                             R4 R1
       26 NAMECALL                         R2 R0 K7 ["SwitchToController"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_46:
        0 GETTABLEKS                       R1 R0 K0 ["playerGui"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["touchGui"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETTABLEKS                       R1 R0 K1 ["touchGui"]
        9 NAMECALL                         R1 R1 K2 ["Destroy"]
       11 CALL                             R1 1 0
       12 GETIMPORT                        R1 K5 [Instance.new]
       14 LOADK                            R2 K6 ["ScreenGui"]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K1 ["touchGui"]
       18 GETTABLEKS                       R1 R0 K1 ["touchGui"]
       20 LOADK                            R2 K7 ["TouchGui"]
       21 SETTABLEKS                       R2 R1 K8 ["Name"]
       23 GETTABLEKS                       R1 R0 K1 ["touchGui"]
       25 LOADB                            R2 0
       26 SETTABLEKS                       R2 R1 K9 ["ResetOnSpawn"]
       28 GETTABLEKS                       R1 R0 K1 ["touchGui"]
       30 GETIMPORT                        R2 K13 [Enum.ZIndexBehavior.Sibling]
       32 SETTABLEKS                       R2 R1 K11 ["ZIndexBehavior"]
       34 GETUPVAL                         R1 0
       35 JUMPIFNOT                        R1 ; [+8]
       36 GETUPVAL                         R1 1
       37 JUMPIFNOT                        R1 ; [+6]
       38 GETTABLEKS                       R1 R0 K1 ["touchGui"]
       40 GETIMPORT                        R2 K16 [Enum.ScreenInsets.DeviceSafeInsets]
       42 SETTABLEKS                       R2 R1 K14 ["ScreenInsets"]
       44 GETTABLEKS                       R1 R0 K1 ["touchGui"]
       46 LOADB                            R2 0
       47 SETTABLEKS                       R2 R1 K17 ["ClipToDeviceSafeArea"]
       49 GETIMPORT                        R1 K5 [Instance.new]
       51 LOADK                            R2 K18 ["Frame"]
       52 CALL                             R1 1 1
       53 SETTABLEKS                       R1 R0 K19 ["touchControlFrame"]
       55 GETTABLEKS                       R1 R0 K19 ["touchControlFrame"]
       57 LOADK                            R2 K20 ["TouchControlFrame"]
       58 SETTABLEKS                       R2 R1 K8 ["Name"]
       60 GETTABLEKS                       R1 R0 K19 ["touchControlFrame"]
       62 GETIMPORT                        R2 K22 [UDim2.new]
       64 LOADN                            R3 1
       65 LOADN                            R4 0
       66 LOADN                            R5 1
       67 LOADN                            R6 0
       68 CALL                             R2 4 1
       69 SETTABLEKS                       R2 R1 K23 ["Size"]
       71 GETTABLEKS                       R1 R0 K19 ["touchControlFrame"]
       73 LOADN                            R2 1
       74 SETTABLEKS                       R2 R1 K24 ["BackgroundTransparency"]
       76 GETTABLEKS                       R1 R0 K19 ["touchControlFrame"]
       78 GETTABLEKS                       R2 R0 K1 ["touchGui"]
       80 SETTABLEKS                       R2 R1 K25 ["Parent"]
       82 GETTABLEKS                       R1 R0 K1 ["touchGui"]
       84 GETTABLEKS                       R2 R0 K0 ["playerGui"]
       86 SETTABLEKS                       R2 R1 K25 ["Parent"]
       88 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R2 R0 K0 ["controllers"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R1 R2 R3
        4 JUMPIF                           R1 ; [+8]
        5 GETTABLEKS                       R1 R0 K0 ["controllers"]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["new"]
       11 CALL                             R3 0 1
       12 SETTABLE                         R3 R1 R2
       13 GETTABLEKS                       R2 R0 K0 ["controllers"]
       15 GETUPVAL                         R3 0
       16 GETTABLE                         R1 R2 R3
       17 RETURN                           R1 1

PROTO_48:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R0 K0 ["X"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+19]
        7 LOADB                            R2 1
        8 GETTABLEKS                       R3 R0 K1 ["Y"]
       10 GETTABLEKS                       R4 R0 K1 ["Y"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+12]
       14 LOADB                            R2 1
       15 GETTABLEKS                       R3 R0 K0 ["X"]
       17 JUMPIFEQKN                       R3 K2 [Infinity] ; [+7]
       19 GETTABLEKS                       R3 R0 K1 ["Y"]
       21 JUMPIFEQKN                       R3 K2 [Infinity] ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 NOT                              R1 R2
       26 RETURN                           R1 1

PROTO_49:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R0 K0 ["X"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+31]
        7 LOADB                            R2 1
        8 GETTABLEKS                       R3 R0 K1 ["Y"]
       10 GETTABLEKS                       R4 R0 K1 ["Y"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+24]
       14 LOADB                            R2 1
       15 GETTABLEKS                       R3 R0 K2 ["Z"]
       17 GETTABLEKS                       R4 R0 K2 ["Z"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+17]
       21 LOADB                            R2 1
       22 GETTABLEKS                       R3 R0 K0 ["X"]
       24 JUMPIFEQKN                       R3 K3 [Infinity] ; [+12]
       26 LOADB                            R2 1
       27 GETTABLEKS                       R3 R0 K1 ["Y"]
       29 JUMPIFEQKN                       R3 K3 [Infinity] ; [+7]
       31 GETTABLEKS                       R3 R0 K2 ["Z"]
       33 JUMPIFEQKN                       R3 K3 [Infinity] ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 NOT                              R1 R2
       38 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCameraState"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_51:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+23]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["get"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 NAMECALL                         R4 R3 K1 ["isEnabled"]
        9 CALL                             R4 1 1
       10 JUMPIF                           R4 ; [+297]
       11 GETUPVAL                         R4 2
       12 JUMPIFNOT                        R4 ; [+6]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K2 ["processPCSInputs"]
       16 MOVE                             R5 R1
       17 CALL                             R4 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K3 ["SendInputToHumanoidForServerAuth"]
       22 MOVE                             R5 R1
       23 CALL                             R4 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 2
       26 JUMPIFNOT                        R3 ; [+6]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K2 ["processPCSInputs"]
       30 MOVE                             R4 R1
       31 CALL                             R3 1 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R3 R1 K4 ["Character"]
       35 JUMPIFNOTEQKNIL                  R3 ; [+2]
       37 RETURN                           R0 0
       38 LOADK                            R6 K5 ["Humanoid"]
       39 NAMECALL                         R4 R3 K6 ["FindFirstChild"]
       41 CALL                             R4 2 1
       42 JUMPIFNOTEQKNIL                  R4 ; [+2]
       44 RETURN                           R0 0
       45 LOADK                            R7 K7 ["InputContexts"]
       46 NAMECALL                         R5 R1 K6 ["FindFirstChild"]
       48 CALL                             R5 2 1
       49 JUMPIFNOTEQKNIL                  R5 ; [+2]
       51 RETURN                           R0 0
       52 LOADK                            R8 K8 ["CharacterContext"]
       53 NAMECALL                         R6 R5 K6 ["FindFirstChild"]
       55 CALL                             R6 2 1
       56 JUMPIFNOTEQKNIL                  R6 ; [+2]
       58 RETURN                           R0 0
       59 LOADK                            R9 K9 ["CameraContext"]
       60 NAMECALL                         R7 R5 K6 ["FindFirstChild"]
       62 CALL                             R7 2 1
       63 GETTABLEKS                       R8 R6 K10 ["MoveAction"]
       65 MOVE                             R9 R7
       66 JUMPIFNOT                        R9 ; [+2]
       67 GETTABLEKS                       R9 R7 K11 ["CameraAction"]
       69 GETTABLEKS                       R10 R6 K12 ["RotationAction"]
       71 GETTABLEKS                       R11 R6 K13 ["JumpAction"]
       73 DUPCLOSURE                       R12 K14 [PROTO_48]
       74 DUPCLOSURE                       R13 K15 [PROTO_49]
       75 JUMPIFEQKNIL                     R8 ; [+5]
       77 NAMECALL                         R14 R8 K16 ["GetState"]
       79 CALL                             R14 1 1
       80 JUMP                             ; [+5]
       81 GETIMPORT                        R14 K19 [Vector2.new]
       83 LOADN                            R15 0
       84 LOADN                            R16 0
       85 CALL                             R14 2 1
       86 LOADNIL                          R15
       87 GETUPVAL                         R16 4
       88 JUMPIFNOT                        R16 ; [+8]
       89 NAMECALL                         R16 R1 K20 ["GetCameraState"]
       91 CALL                             R16 1 1
       92 GETTABLEKS                       R16 R16 K21 ["CFrame"]
       94 GETTABLEKS                       R15 R16 K22 ["LookVector"]
       96 JUMP                             ; [+47]
       97 GETUPVAL                         R16 5
       98 JUMPIFNOT                        R16 ; [+37]
       99 GETIMPORT                        R16 K24 [pcall]
      101 NEWCLOSURE                       R17 P2
      102 CAPTURE                          VAL R1
      103 CALL                             R16 1 2
      104 JUMPIFNOT                        R16 ; [+21]
      105 JUMPIFNOT                        R17 ; [+20]
      106 GETTABLEKS                       R18 R17 K21 ["CFrame"]
      108 GETIMPORT                        R19 K26 [CFrame.identity]
      110 JUMPIFEQ                         R18 R19 ; [+15]
      112 GETTABLEKS                       R19 R17 K27 ["FieldOfView"]
      114 LOADN                            R20 0
      115 JUMPIFNOTLT                      R20 R19 ; [+10]
      117 GETTABLEKS                       R19 R17 K28 ["ViewportSize"]
      119 GETTABLEKS                       R19 R19 K29 ["Magnitude"]
      121 LOADN                            R20 0
      122 JUMPIFNOTLT                      R20 R19 ; [+3]
      124 GETTABLEKS                       R15 R18 K22 ["LookVector"]
      126 JUMPIF                           R15 ; [+17]
      127 JUMPIFEQKNIL                     R9 ; [+6]
      129 NAMECALL                         R18 R9 K16 ["GetState"]
      131 CALL                             R18 1 1
      132 MOVE                             R15 R18
      133 JUMP                             ; [+10]
      134 LOADK                            R15 K30 [{0, 0, 0}]
      135 JUMP                             ; [+8]
      136 JUMPIFEQKNIL                     R9 ; [+6]
      138 NAMECALL                         R16 R9 K16 ["GetState"]
      140 CALL                             R16 1 1
      141 MOVE                             R15 R16
      142 JUMP                             ; [+1]
      143 LOADK                            R15 K30 [{0, 0, 0}]
      144 LOADB                            R17 1
      145 GETTABLEKS                       R18 R14 K31 ["X"]
      147 GETTABLEKS                       R19 R14 K31 ["X"]
      149 JUMPIFNOTEQ                      R18 R19 ; [+19]
      151 LOADB                            R17 1
      152 GETTABLEKS                       R18 R14 K32 ["Y"]
      154 GETTABLEKS                       R19 R14 K32 ["Y"]
      156 JUMPIFNOTEQ                      R18 R19 ; [+12]
      158 LOADB                            R17 1
      159 GETTABLEKS                       R18 R14 K31 ["X"]
      161 JUMPIFEQKN                       R18 K33 [Infinity] ; [+7]
      163 GETTABLEKS                       R18 R14 K32 ["Y"]
      165 JUMPIFEQKN                       R18 K33 [Infinity] ; [+2]
      167 LOADB                            R17 0 +1
      168 LOADB                            R17 1
      169 NOT                              R16 R17
      170 JUMPIFNOT                        R16 ; [+128]
      171 MOVE                             R17 R15
      172 LOADB                            R18 1
      173 GETTABLEKS                       R19 R17 K31 ["X"]
      175 GETTABLEKS                       R20 R17 K31 ["X"]
      177 JUMPIFNOTEQ                      R19 R20 ; [+31]
      179 LOADB                            R18 1
      180 GETTABLEKS                       R19 R17 K32 ["Y"]
      182 GETTABLEKS                       R20 R17 K32 ["Y"]
      184 JUMPIFNOTEQ                      R19 R20 ; [+24]
      186 LOADB                            R18 1
      187 GETTABLEKS                       R19 R17 K34 ["Z"]
      189 GETTABLEKS                       R20 R17 K34 ["Z"]
      191 JUMPIFNOTEQ                      R19 R20 ; [+17]
      193 LOADB                            R18 1
      194 GETTABLEKS                       R19 R17 K31 ["X"]
      196 JUMPIFEQKN                       R19 K33 [Infinity] ; [+12]
      198 LOADB                            R18 1
      199 GETTABLEKS                       R19 R17 K32 ["Y"]
      201 JUMPIFEQKN                       R19 K33 [Infinity] ; [+7]
      203 GETTABLEKS                       R19 R17 K34 ["Z"]
      205 JUMPIFEQKN                       R19 K33 [Infinity] ; [+2]
      207 LOADB                            R18 0 +1
      208 LOADB                            R18 1
      209 NOT                              R16 R18
      210 JUMPIFNOT                        R16 ; [+88]
      211 GETTABLEKS                       R16 R15 K29 ["Magnitude"]
      213 LOADN                            R17 0
      214 JUMPIFNOTLT                      R17 R16 ; [+84]
      216 NAMECALL                         R16 R4 K16 ["GetState"]
      218 CALL                             R16 1 1
      219 GETIMPORT                        R17 K38 [Enum.HumanoidStateType.Swimming]
      221 JUMPIFEQ                         R16 R17 ; [+12]
      223 GETTABLEKS                       R17 R15 K31 ["X"]
      225 LOADN                            R18 0
      226 GETTABLEKS                       R19 R15 K34 ["Z"]
      228 FASTCALL                         VECTOR ; [+2]
      229 GETIMPORT                        R16 K40 [Vector3.new]
      231 CALL                             R16 3 1
      232 GETTABLEKS                       R15 R16 K41 ["Unit"]
      234 LOADK                            R18 K42 [{0, 1, 0}]
      235 NAMECALL                         R16 R15 K43 ["Cross"]
      237 CALL                             R16 2 1
      238 GETTABLEKS                       R16 R16 K41 ["Unit"]
      240 GETTABLEKS                       R19 R14 K32 ["Y"]
      242 MUL                              R18 R15 R19
      243 GETTABLEKS                       R20 R14 K31 ["X"]
      245 MUL                              R19 R16 R20
      246 ADD                              R17 R18 R19
      247 MOVE                             R20 R17
      248 NAMECALL                         R18 R4 K44 ["Move"]
      250 CALL                             R18 2 0
      251 NAMECALL                         R18 R10 K16 ["GetState"]
      253 CALL                             R18 1 1
      254 JUMPIFNOT                        R18 ; [+41]
      255 LOADB                            R19 0
      256 SETTABLEKS                       R19 R4 K45 ["AutoRotate"]
      258 GETTABLEKS                       R19 R4 K46 ["SeatPart"]
      260 JUMPIFNOTEQKNIL                  R19 ; [+38]
      262 GETTABLEKS                       R19 R4 K47 ["RootPart"]
      264 JUMPIFEQKNIL                     R19 ; [+34]
      266 GETTABLEKS                       R19 R4 K48 ["Sit"]
      268 JUMPIF                           R19 ; [+30]
      269 GETTABLEKS                       R19 R4 K47 ["RootPart"]
      271 NAMECALL                         R19 R19 K49 ["IsGrounded"]
      273 CALL                             R19 1 1
      274 JUMPIF                           R19 ; [+24]
      275 GETTABLEKS                       R19 R4 K47 ["RootPart"]
      277 GETIMPORT                        R20 K50 [CFrame.new]
      279 GETTABLEKS                       R21 R4 K47 ["RootPart"]
      281 GETTABLEKS                       R21 R21 K21 ["CFrame"]
      283 GETTABLEKS                       R21 R21 K51 ["Position"]
      285 GETTABLEKS                       R23 R4 K47 ["RootPart"]
      287 GETTABLEKS                       R23 R23 K21 ["CFrame"]
      289 GETTABLEKS                       R23 R23 K51 ["Position"]
      291 ADD                              R22 R23 R15
      292 CALL                             R20 2 1
      293 SETTABLEKS                       R20 R19 K21 ["CFrame"]
      295 JUMP                             ; [+3]
      296 LOADB                            R19 1
      297 SETTABLEKS                       R19 R4 K45 ["AutoRotate"]
      299 JUMPIFEQKNIL                     R11 ; [+5]
      301 NAMECALL                         R16 R11 K16 ["GetState"]
      303 CALL                             R16 1 1
      304 JUMP                             ; [+1]
      305 LOADB                            R16 0
      306 SETTABLEKS                       R16 R4 K52 ["Jump"]
      308 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [game]
        7 LOADK                            R3 K3 ["Players"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K2 [game]
       13 LOADK                            R4 K5 ["RunService"]
       14 NAMECALL                         R2 R2 K4 ["GetService"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K2 [game]
       19 LOADK                            R5 K6 ["UserInputService"]
       20 NAMECALL                         R3 R3 K4 ["GetService"]
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K2 [game]
       25 LOADK                            R6 K7 ["GuiService"]
       26 NAMECALL                         R4 R4 K4 ["GetService"]
       28 CALL                             R4 2 1
       29 GETIMPORT                        R5 K2 [game]
       31 LOADK                            R7 K8 ["Workspace"]
       32 NAMECALL                         R5 R5 K4 ["GetService"]
       34 CALL                             R5 2 1
       35 GETIMPORT                        R6 K2 [game]
       37 LOADK                            R8 K9 ["StarterPlayer"]
       38 NAMECALL                         R6 R6 K4 ["GetService"]
       40 CALL                             R6 2 1
       41 GETIMPORT                        R7 K11 [UserSettings]
       43 CALL                             R7 0 1
       44 LOADK                            R9 K12 ["UserGameSettings"]
       45 NAMECALL                         R7 R7 K4 ["GetService"]
       47 CALL                             R7 2 1
       48 GETIMPORT                        R8 K2 [game]
       50 LOADK                            R10 K13 ["VRService"]
       51 NAMECALL                         R8 R8 K4 ["GetService"]
       53 CALL                             R8 2 1
       54 GETIMPORT                        R9 K2 [game]
       56 LOADK                            R11 K14 ["ContextActionService"]
       57 NAMECALL                         R9 R9 K4 ["GetService"]
       59 CALL                             R9 2 1
       60 GETIMPORT                        R10 K16 [require]
       62 GETIMPORT                        R11 K18 [script]
       64 GETTABLEKS                       R11 R11 K19 ["Parent"]
       66 LOADK                            R13 K20 ["CommonUtils"]
       67 NAMECALL                         R11 R11 K21 ["WaitForChild"]
       69 CALL                             R11 2 -1
       70 CALL                             R10 -1 1
       71 GETTABLEKS                       R11 R10 K22 ["get"]
       73 LOADK                            R12 K23 ["FlagUtil"]
       74 CALL                             R11 1 1
       75 GETTABLEKS                       R12 R11 K24 ["getUserFlag"]
       77 LOADK                            R13 K25 ["UserPlayerScriptsCCLIntegrationD"]
       78 CALL                             R12 1 1
       79 GETTABLEKS                       R13 R11 K24 ["getUserFlag"]
       81 LOADK                            R14 K26 ["UserPlayerScriptsBindActivateOnIAS"]
       82 CALL                             R13 1 1
       83 GETTABLEKS                       R14 R11 K24 ["getUserFlag"]
       85 LOADK                            R15 K27 ["UserPlayerScriptsFireThroughScriptableBindings"]
       86 CALL                             R14 1 1
       87 GETTABLEKS                       R15 R11 K24 ["getUserFlag"]
       89 LOADK                            R16 K28 ["UserPlayerScriptsUseReplicatedCameraAPI"]
       90 CALL                             R15 1 1
       91 GETTABLEKS                       R16 R11 K24 ["getUserFlag"]
       93 LOADK                            R17 K29 ["UserPlayerScriptsStopFireCameraAction"]
       94 CALL                             R16 1 1
       95 GETTABLEKS                       R17 R11 K24 ["getUserFlag"]
       97 LOADK                            R18 K30 ["UserPlayerScriptsSAuthDirectAPIs2"]
       98 CALL                             R17 1 1
       99 GETTABLEKS                       R18 R11 K24 ["getUserFlag"]
      101 LOADK                            R19 K31 ["UserPlayerScriptsPlayerControlState2"]
      102 CALL                             R18 1 1
      103 GETTABLEKS                       R19 R11 K24 ["getUserFlag"]
      105 LOADK                            R20 K32 ["UserPlayerScriptsFixSAuthRenderStepMove"]
      106 CALL                             R19 1 1
      107 GETTABLEKS                       R20 R11 K24 ["getUserFlag"]
      109 LOADK                            R21 K33 ["UserPlayerScriptsSupportMicroGamepad"]
      110 CALL                             R20 1 1
      111 GETTABLEKS                       R21 R11 K24 ["getUserFlag"]
      113 LOADK                            R22 K34 ["UserAbilitiesUserInterfaceC"]
      114 CALL                             R21 1 1
      115 GETTABLEKS                       R22 R11 K24 ["getUserFlag"]
      117 LOADK                            R23 K35 ["UserPSUseBindToAnimation"]
      118 CALL                             R22 1 1
      119 DUPTABLE                         R23 K37 [{["SERVER_AUTHORITY_CHANGED"] = "SERVER_AUTHORITY_CHANGED"}]
      120 GETIMPORT                        R24 K16 [require]
      122 GETIMPORT                        R25 K18 [script]
      124 LOADK                            R27 K38 ["ActionController"]
      125 NAMECALL                         R25 R25 K21 ["WaitForChild"]
      127 CALL                             R25 2 -1
      128 CALL                             R24 -1 1
      129 JUMPIF                           R12 ; [+1]
      130 JUMPIFNOT                        R18 ; [+10]
      131 GETIMPORT                        R25 K16 [require]
      133 GETIMPORT                        R26 K18 [script]
      135 LOADK                            R28 K39 ["InputReplication"]
      136 NAMECALL                         R26 R26 K21 ["WaitForChild"]
      138 CALL                             R26 2 -1
      139 CALL                             R25 -1 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R25
      142 JUMPIFNOT                        R12 ; [+10]
      143 GETIMPORT                        R26 K16 [require]
      145 GETIMPORT                        R27 K18 [script]
      147 LOADK                            R29 K40 ["InputSlots"]
      148 NAMECALL                         R27 R27 K21 ["WaitForChild"]
      150 CALL                             R27 2 -1
      151 CALL                             R26 -1 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R26
      154 LOADNIL                          R27
      155 NAMECALL                         R28 R2 K41 ["IsClient"]
      157 CALL                             R28 1 1
      158 JUMPIFNOT                        R28 ; [+10]
      159 GETIMPORT                        R28 K16 [require]
      161 GETIMPORT                        R29 K18 [script]
      163 LOADK                            R31 K42 ["DynamicThumbstick"]
      164 NAMECALL                         R29 R29 K21 ["WaitForChild"]
      166 CALL                             R29 2 -1
      167 CALL                             R28 -1 1
      168 MOVE                             R27 R28
      169 GETIMPORT                        R28 K16 [require]
      171 GETIMPORT                        R29 K18 [script]
      173 LOADK                            R31 K43 ["ClassicThumbstick"]
      174 NAMECALL                         R29 R29 K21 ["WaitForChild"]
      176 CALL                             R29 2 -1
      177 CALL                             R28 -1 1
      178 GETIMPORT                        R29 K16 [require]
      180 GETIMPORT                        R30 K18 [script]
      182 LOADK                            R32 K44 ["ClickToMoveController"]
      183 NAMECALL                         R30 R30 K21 ["WaitForChild"]
      185 CALL                             R30 2 -1
      186 CALL                             R29 -1 1
      187 GETIMPORT                        R30 K16 [require]
      189 GETIMPORT                        R31 K18 [script]
      191 LOADK                            R33 K45 ["TouchJump"]
      192 NAMECALL                         R31 R31 K21 ["WaitForChild"]
      194 CALL                             R31 2 -1
      195 CALL                             R30 -1 1
      196 JUMPIFNOT                        R12 ; [+10]
      197 GETIMPORT                        R31 K16 [require]
      199 GETIMPORT                        R32 K18 [script]
      201 LOADK                            R34 K46 ["TouchAbilities"]
      202 NAMECALL                         R32 R32 K21 ["WaitForChild"]
      204 CALL                             R32 2 -1
      205 CALL                             R31 -1 1
      206 JUMP                             ; [+1]
      207 LOADNIL                          R31
      208 GETIMPORT                        R32 K16 [require]
      210 GETIMPORT                        R33 K18 [script]
      212 LOADK                            R35 K47 ["VehicleController"]
      213 NAMECALL                         R33 R33 K21 ["WaitForChild"]
      215 CALL                             R33 2 -1
      216 CALL                             R32 -1 1
      217 LOADNIL                          R33
      218 LOADNIL                          R34
      219 JUMPIFNOT                        R12 ; [+16]
      220 GETIMPORT                        R35 K16 [require]
      222 GETIMPORT                        R36 K18 [script]
      224 LOADK                            R38 K48 ["AvatarAbilitiesInterface"]
      225 NAMECALL                         R36 R36 K21 ["WaitForChild"]
      227 CALL                             R36 2 -1
      228 CALL                             R35 -1 1
      229 MOVE                             R33 R35
      230 GETTABLEKS                       R35 R33 K22 ["get"]
      232 GETTABLEKS                       R36 R1 K49 ["LocalPlayer"]
      234 CALL                             R35 1 1
      235 MOVE                             R34 R35
      236 GETIMPORT                        R35 K18 [script]
      238 GETTABLEKS                       R35 R35 K19 ["Parent"]
      240 LOADK                            R37 K50 ["InputContexts"]
      241 NAMECALL                         R35 R35 K21 ["WaitForChild"]
      243 CALL                             R35 2 1
      244 LOADK                            R38 K51 ["CameraContext"]
      245 NAMECALL                         R36 R35 K21 ["WaitForChild"]
      247 CALL                             R36 2 1
      248 LOADK                            R39 K52 ["CameraRotationAction"]
      249 NAMECALL                         R37 R36 K21 ["WaitForChild"]
      251 CALL                             R37 2 1
      252 GETIMPORT                        R38 K56 [Enum.ContextActionPriority.Medium]
      254 GETTABLEKS                       R38 R38 K57 ["Value"]
      256 NEWTABLE                         R39 32 0
      258 GETIMPORT                        R40 K60 [Enum.TouchMovementMode.DPad]
      260 SETTABLE                         R27 R39 R40
      261 GETIMPORT                        R40 K62 [Enum.DevTouchMovementMode.DPad]
      263 SETTABLE                         R27 R39 R40
      264 GETIMPORT                        R40 K64 [Enum.TouchMovementMode.Thumbpad]
      266 SETTABLE                         R27 R39 R40
      267 GETIMPORT                        R40 K65 [Enum.DevTouchMovementMode.Thumbpad]
      269 SETTABLE                         R27 R39 R40
      270 GETIMPORT                        R40 K67 [Enum.TouchMovementMode.Thumbstick]
      272 SETTABLE                         R28 R39 R40
      273 GETIMPORT                        R40 K68 [Enum.DevTouchMovementMode.Thumbstick]
      275 SETTABLE                         R28 R39 R40
      276 GETIMPORT                        R40 K69 [Enum.TouchMovementMode.DynamicThumbstick]
      278 SETTABLE                         R27 R39 R40
      279 GETIMPORT                        R40 K70 [Enum.DevTouchMovementMode.DynamicThumbstick]
      281 SETTABLE                         R27 R39 R40
      282 GETIMPORT                        R40 K72 [Enum.TouchMovementMode.ClickToMove]
      284 SETTABLE                         R29 R39 R40
      285 GETIMPORT                        R40 K73 [Enum.DevTouchMovementMode.ClickToMove]
      287 SETTABLE                         R29 R39 R40
      288 GETIMPORT                        R40 K75 [Enum.TouchMovementMode.Default]
      290 SETTABLE                         R27 R39 R40
      291 GETIMPORT                        R40 K77 [Enum.ComputerMovementMode.Default]
      293 SETTABLE                         R24 R39 R40
      294 GETIMPORT                        R40 K79 [Enum.ComputerMovementMode.KeyboardMouse]
      296 SETTABLE                         R24 R39 R40
      297 GETIMPORT                        R40 K81 [Enum.DevComputerMovementMode.KeyboardMouse]
      299 SETTABLE                         R24 R39 R40
      300 GETIMPORT                        R40 K83 [Enum.DevComputerMovementMode.Scriptable]
      302 LOADNIL                          R41
      303 SETTABLE                         R41 R39 R40
      304 GETIMPORT                        R40 K84 [Enum.ComputerMovementMode.ClickToMove]
      306 SETTABLE                         R29 R39 R40
      307 GETIMPORT                        R40 K85 [Enum.DevComputerMovementMode.ClickToMove]
      309 SETTABLE                         R29 R39 R40
      310 NEWCLOSURE                       R40 P0
      311 CAPTURE                          VAL R0
      312 CAPTURE                          VAL R2
      313 CAPTURE                          VAL R1
      314 CAPTURE                          VAL R32
      315 CAPTURE                          VAL R7
      316 CAPTURE                          VAL R12
      317 CAPTURE                          REF R34
      318 CAPTURE                          VAL R4
      319 CAPTURE                          VAL R3
      320 CAPTURE                          VAL R13
      321 CAPTURE                          VAL R9
      322 SETTABLEKS                       R40 R0 K86 ["new"]
      324 DUPCLOSURE                       R40 K87 [PROTO_14]
      325 CAPTURE                          VAL R17
      326 CAPTURE                          VAL R7
      327 CAPTURE                          VAL R16
      328 CAPTURE                          VAL R5
      329 CAPTURE                          VAL R14
      330 DUPCLOSURE                       R41 K88 [PROTO_15]
      331 CAPTURE                          VAL R6
      332 DUPCLOSURE                       R42 K89 [PROTO_21]
      333 CAPTURE                          VAL R2
      334 CAPTURE                          VAL R12
      335 CAPTURE                          VAL R1
      336 CAPTURE                          VAL R25
      337 CAPTURE                          VAL R6
      338 CAPTURE                          VAL R41
      339 CAPTURE                          VAL R18
      340 CAPTURE                          VAL R22
      341 CAPTURE                          VAL R40
      342 SETTABLEKS                       R42 R0 K90 ["InitializeServerAuthority"]
      344 DUPCLOSURE                       R42 K91 [PROTO_22]
      345 DUPCLOSURE                       R43 K92 [PROTO_23]
      346 DUPCLOSURE                       R44 K93 [PROTO_24]
      347 CAPTURE                          VAL R8
      348 SETTABLEKS                       R44 R0 K94 ["GetEstimatedVRTorsoFrame"]
      350 DUPCLOSURE                       R44 K95 [PROTO_25]
      351 SETTABLEKS                       R44 R0 K96 ["GetActiveController"]
      353 NEWCLOSURE                       R44 P8
      354 CAPTURE                          VAL R3
      355 CAPTURE                          VAL R29
      356 CAPTURE                          VAL R28
      357 CAPTURE                          REF R27
      358 CAPTURE                          REF R34
      359 CAPTURE                          VAL R30
      360 CAPTURE                          VAL R31
      361 SETTABLEKS                       R44 R0 K97 ["UpdateAbilitiesControllers"]
      363 NEWCLOSURE                       R44 P9
      364 CAPTURE                          VAL R12
      365 CAPTURE                          REF R34
      366 CAPTURE                          VAL R1
      367 CAPTURE                          VAL R3
      368 CAPTURE                          VAL R29
      369 CAPTURE                          VAL R28
      370 CAPTURE                          REF R27
      371 CAPTURE                          VAL R30
      372 CAPTURE                          VAL R4
      373 SETTABLEKS                       R44 R0 K98 ["UpdateActiveControlModuleEnabled"]
      375 DUPCLOSURE                       R44 K99 [PROTO_30]
      376 SETTABLEKS                       R44 R0 K100 ["Enable"]
      378 DUPCLOSURE                       R44 K101 [PROTO_31]
      379 SETTABLEKS                       R44 R0 K102 ["Disable"]
      381 DUPCLOSURE                       R44 K103 [PROTO_33]
      382 CAPTURE                          VAL R20
      383 CAPTURE                          VAL R3
      384 CAPTURE                          VAL R24
      385 CAPTURE                          VAL R1
      386 CAPTURE                          VAL R7
      387 CAPTURE                          VAL R29
      388 CAPTURE                          VAL R39
      389 SETTABLEKS                       R44 R0 K104 ["SelectComputerMovementModule"]
      391 DUPCLOSURE                       R44 K105 [PROTO_34]
      392 CAPTURE                          VAL R1
      393 CAPTURE                          VAL R39
      394 CAPTURE                          VAL R7
      395 SETTABLEKS                       R44 R0 K106 ["SelectTouchModule"]
      397 DUPCLOSURE                       R44 K107 [PROTO_35]
      398 CAPTURE                          VAL R5
      399 CAPTURE                          VAL R8
      400 CAPTURE                          VAL R37
      401 SETTABLEKS                       R44 R0 K108 ["calculateRawMoveVector"]
      403 DUPCLOSURE                       R44 K109 [PROTO_36]
      404 CAPTURE                          VAL R24
      405 CAPTURE                          VAL R12
      406 CAPTURE                          VAL R26
      407 SETTABLEKS                       R44 R0 K110 ["initialize"]
      409 NEWCLOSURE                       R44 P16
      410 CAPTURE                          VAL R24
      411 CAPTURE                          VAL R8
      412 CAPTURE                          VAL R18
      413 CAPTURE                          VAL R12
      414 CAPTURE                          REF R34
      415 CAPTURE                          VAL R25
      416 CAPTURE                          VAL R1
      417 CAPTURE                          VAL R19
      418 SETTABLEKS                       R44 R0 K111 ["Update"]
      420 DUPCLOSURE                       R44 K112 [PROTO_38]
      421 CAPTURE                          VAL R8
      422 SETTABLEKS                       R44 R0 K113 ["updateVRMoveVector"]
      424 DUPCLOSURE                       R44 K114 [PROTO_39]
      425 SETTABLEKS                       R44 R0 K115 ["OnHumanoidSeated"]
      427 DUPCLOSURE                       R44 K116 [PROTO_41]
      428 SETTABLEKS                       R44 R0 K117 ["OnCharacterAdded"]
      430 DUPCLOSURE                       R44 K118 [PROTO_42]
      431 SETTABLEKS                       R44 R0 K119 ["OnCharacterRemoving"]
      433 DUPCLOSURE                       R44 K120 [PROTO_43]
      434 CAPTURE                          VAL R4
      435 CAPTURE                          VAL R3
      436 SETTABLEKS                       R44 R0 K121 ["UpdateTouchGuiVisibility"]
      438 DUPCLOSURE                       R44 K122 [PROTO_44]
      439 SETTABLEKS                       R44 R0 K123 ["SwitchToController"]
      441 DUPCLOSURE                       R44 K124 [PROTO_45]
      442 CAPTURE                          VAL R3
      443 SETTABLEKS                       R44 R0 K125 ["UpdateMovementMode"]
      445 DUPCLOSURE                       R44 K126 [PROTO_46]
      446 CAPTURE                          VAL R12
      447 CAPTURE                          VAL R21
      448 SETTABLEKS                       R44 R0 K127 ["CreateTouchGuiContainer"]
      450 DUPCLOSURE                       R44 K128 [PROTO_47]
      451 CAPTURE                          VAL R29
      452 SETTABLEKS                       R44 R0 K129 ["GetClickToMoveController"]
      454 NEWCLOSURE                       R44 P26
      455 CAPTURE                          VAL R12
      456 CAPTURE                          REF R33
      457 CAPTURE                          VAL R18
      458 CAPTURE                          VAL R25
      459 CAPTURE                          VAL R17
      460 CAPTURE                          VAL R15
      461 SETTABLEKS                       R44 R0 K130 ["ProcessInputs"]
      463 NAMECALL                         R44 R2 K41 ["IsClient"]
      465 CALL                             R44 1 1
      466 JUMPIFNOT                        R44 ; [+5]
      467 GETTABLEKS                       R44 R0 K86 ["new"]
      469 CALL                             R44 0 -1
      470 CLOSEUPVALS                      R27
      471 RETURN                           R44 -1
      472 CLOSEUPVALS                      R27
      473 RETURN                           R0 1
