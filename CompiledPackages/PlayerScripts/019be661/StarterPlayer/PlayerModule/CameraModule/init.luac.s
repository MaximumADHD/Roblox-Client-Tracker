PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["OnPlayerAdded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["OnPlayerRemoving"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnMouseLockToggled"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OnLocalPlayerCameraPropertyChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OnUserGameSettingsPropertyChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnCurrentCameraChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnPreferredInputChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"activeTransparencyController", "connectionUtil"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["new"]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["activeTransparencyController"]
        7 GETUPVAL                         R3 1
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["new"]
       12 CALL                             R2 0 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K1 ["connectionUtil"]
       17 GETUPVAL                         R2 3
       18 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       20 GETIMPORT                        R0 K5 [setmetatable]
       22 CALL                             R0 2 1
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K6 ["activeCameraController"]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K7 ["activeOcclusionModule"]
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K8 ["activeMouseLockController"]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K9 ["currentComputerCameraMovementMode"]
       35 LOADNIL                          R1
       36 SETTABLEKS                       R1 R0 K10 ["cameraSubjectChangedConn"]
       38 LOADNIL                          R1
       39 SETTABLEKS                       R1 R0 K11 ["cameraTypeChangedConn"]
       41 GETIMPORT                        R1 K13 [pairs]
       43 GETUPVAL                         R2 4
       44 NAMECALL                         R2 R2 K14 ["GetPlayers"]
       46 CALL                             R2 1 -1
       47 CALL                             R1 -1 3
       48 FORGPREP_NEXT                    R1
       49 MOVE                             R8 R5
       50 NAMECALL                         R6 R0 K15 ["OnPlayerAdded"]
       52 CALL                             R6 2 0
       53 FORGLOOP                         R1 2 ; [-5]
       55 GETUPVAL                         R1 4
       56 GETTABLEKS                       R1 R1 K16 ["PlayerAdded"]
       58 NEWCLOSURE                       R3 P0
       59 CAPTURE                          VAL R0
       60 NAMECALL                         R1 R1 K17 ["Connect"]
       62 CALL                             R1 2 0
       63 GETUPVAL                         R1 1
       64 JUMPIFNOT                        R1 ; [+8]
       65 GETUPVAL                         R1 4
       66 GETTABLEKS                       R1 R1 K18 ["PlayerRemoving"]
       68 NEWCLOSURE                       R3 P1
       69 CAPTURE                          VAL R0
       70 NAMECALL                         R1 R1 K17 ["Connect"]
       72 CALL                             R1 2 0
       73 GETTABLEKS                       R1 R0 K0 ["activeTransparencyController"]
       75 LOADB                            R3 1
       76 NAMECALL                         R1 R1 K19 ["Enable"]
       78 CALL                             R1 2 0
       79 GETUPVAL                         R1 5
       80 GETTABLEKS                       R1 R1 K3 ["new"]
       82 CALL                             R1 0 1
       83 SETTABLEKS                       R1 R0 K8 ["activeMouseLockController"]
       85 GETTABLEKS                       R2 R0 K8 ["activeMouseLockController"]
       87 FASTCALL2K                       ASSERT R2 K20 ; [+4]
       89 LOADK                            R3 K20 ["Strict typing check"]
       90 GETIMPORT                        R1 K22 [assert]
       92 CALL                             R1 2 0
       93 GETTABLEKS                       R1 R0 K8 ["activeMouseLockController"]
       95 NAMECALL                         R1 R1 K23 ["GetBindableToggleEvent"]
       97 CALL                             R1 1 1
       98 JUMPIFNOT                        R1 ; [+5]
       99 NEWCLOSURE                       R4 P2
      100 CAPTURE                          VAL R0
      101 NAMECALL                         R2 R1 K17 ["Connect"]
      103 CALL                             R2 2 0
      104 NAMECALL                         R2 R0 K24 ["ActivateCameraController"]
      106 CALL                             R2 1 0
      107 GETUPVAL                         R4 4
      108 GETTABLEKS                       R4 R4 K25 ["LocalPlayer"]
      110 GETTABLEKS                       R4 R4 K26 ["DevCameraOcclusionMode"]
      112 NAMECALL                         R2 R0 K27 ["ActivateOcclusionModule"]
      114 CALL                             R2 2 0
      115 NAMECALL                         R2 R0 K28 ["OnCurrentCameraChanged"]
      117 CALL                             R2 1 0
      118 GETIMPORT                        R2 K13 [pairs]
      120 GETUPVAL                         R3 6
      121 CALL                             R2 1 3
      122 FORGPREP_NEXT                    R2
      123 GETUPVAL                         R7 4
      124 GETTABLEKS                       R7 R7 K25 ["LocalPlayer"]
      126 MOVE                             R9 R6
      127 NAMECALL                         R7 R7 K29 ["GetPropertyChangedSignal"]
      129 CALL                             R7 2 1
      130 NEWCLOSURE                       R9 P3
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R6
      133 NAMECALL                         R7 R7 K17 ["Connect"]
      135 CALL                             R7 2 0
      136 FORGLOOP                         R2 2 ; [-14]
      138 GETIMPORT                        R2 K13 [pairs]
      140 GETUPVAL                         R3 7
      141 CALL                             R2 1 3
      142 FORGPREP_NEXT                    R2
      143 GETUPVAL                         R7 8
      144 MOVE                             R9 R6
      145 NAMECALL                         R7 R7 K29 ["GetPropertyChangedSignal"]
      147 CALL                             R7 2 1
      148 NEWCLOSURE                       R9 P4
      149 CAPTURE                          VAL R0
      150 CAPTURE                          VAL R6
      151 NAMECALL                         R7 R7 K17 ["Connect"]
      153 CALL                             R7 2 0
      154 FORGLOOP                         R2 2 ; [-12]
      156 GETIMPORT                        R2 K31 [game]
      158 GETTABLEKS                       R2 R2 K32 ["Workspace"]
      160 LOADK                            R4 K33 ["CurrentCamera"]
      161 NAMECALL                         R2 R2 K29 ["GetPropertyChangedSignal"]
      163 CALL                             R2 2 1
      164 NEWCLOSURE                       R4 P5
      165 CAPTURE                          VAL R0
      166 NAMECALL                         R2 R2 K17 ["Connect"]
      168 CALL                             R2 2 0
      169 GETUPVAL                         R2 9
      170 LOADK                            R4 K34 ["PreferredInput"]
      171 NAMECALL                         R2 R2 K29 ["GetPropertyChangedSignal"]
      173 CALL                             R2 2 1
      174 NEWCLOSURE                       R4 P6
      175 CAPTURE                          VAL R0
      176 NAMECALL                         R2 R2 K17 ["Connect"]
      178 CALL                             R2 2 0
      179 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["LocalPlayer"]
        3 GETTABLEKS                       R1 R1 K1 ["CameraMode"]
        5 GETIMPORT                        R2 K4 [Enum.CameraMode.LockFirstPerson]
        7 JUMPIFNOTEQ                      R1 R2 ; [+8]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K5 ["ConvertCameraModeEnumToStandard"]
       12 GETIMPORT                        R3 K8 [Enum.ComputerCameraMovementMode.Classic]
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K9 ["PreferredInput"]
       21 GETIMPORT                        R5 K11 [Enum.PreferredInput.Touch]
       23 JUMPIFNOTEQ                      R4 R5 ; [+20]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K5 ["ConvertCameraModeEnumToStandard"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["LocalPlayer"]
       31 GETTABLEKS                       R5 R5 K12 ["DevTouchCameraMode"]
       33 CALL                             R4 1 1
       34 MOVE                             R2 R4
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K5 ["ConvertCameraModeEnumToStandard"]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K13 ["TouchCameraMovementMode"]
       41 CALL                             R4 1 1
       42 MOVE                             R3 R4
       43 JUMP                             ; [+18]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K5 ["ConvertCameraModeEnumToStandard"]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K0 ["LocalPlayer"]
       50 GETTABLEKS                       R5 R5 K14 ["DevComputerCameraMode"]
       52 CALL                             R4 1 1
       53 MOVE                             R2 R4
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R4 R4 K5 ["ConvertCameraModeEnumToStandard"]
       57 GETUPVAL                         R5 3
       58 GETTABLEKS                       R5 R5 K6 ["ComputerCameraMovementMode"]
       60 CALL                             R4 1 1
       61 MOVE                             R3 R4
       62 GETIMPORT                        R4 K17 [Enum.DevComputerCameraMovementMode.UserChoice]
       64 JUMPIFNOTEQ                      R2 R4 ; [+2]
       66 RETURN                           R3 1
       67 RETURN                           R2 1

PROTO_9:
        0 LOADNIL                          R2
        1 GETIMPORT                        R3 K3 [Enum.DevCameraOcclusionMode.Zoom]
        3 JUMPIFNOTEQ                      R1 R3 ; [+3]
        5 GETUPVAL                         R2 0
        6 JUMP                             ; [+11]
        7 GETIMPORT                        R3 K5 [Enum.DevCameraOcclusionMode.Invisicam]
        9 JUMPIFNOTEQ                      R1 R3 ; [+3]
       11 GETUPVAL                         R2 1
       12 JUMP                             ; [+5]
       13 GETIMPORT                        R3 K7 [warn]
       15 LOADK                            R4 K8 ["CameraScript ActivateOcclusionModule called with unsupported mode"]
       16 CALL                             R3 1 0
       17 RETURN                           R0 0
       18 SETTABLEKS                       R1 R0 K9 ["occlusionMode"]
       20 GETTABLEKS                       R3 R0 K10 ["activeOcclusionModule"]
       22 JUMPIFNOT                        R3 ; [+20]
       23 GETTABLEKS                       R3 R0 K10 ["activeOcclusionModule"]
       25 NAMECALL                         R3 R3 K11 ["GetOcclusionMode"]
       27 CALL                             R3 1 1
       28 JUMPIFNOTEQ                      R3 R1 ; [+14]
       30 GETTABLEKS                       R3 R0 K10 ["activeOcclusionModule"]
       32 NAMECALL                         R3 R3 K12 ["GetEnabled"]
       34 CALL                             R3 1 1
       35 JUMPIF                           R3 ; [+6]
       36 GETTABLEKS                       R3 R0 K10 ["activeOcclusionModule"]
       38 LOADB                            R5 1
       39 NAMECALL                         R3 R3 K13 ["Enable"]
       41 CALL                             R3 2 0
       42 RETURN                           R0 0
       43 GETTABLEKS                       R3 R0 K10 ["activeOcclusionModule"]
       45 GETUPVAL                         R5 2
       46 GETTABLE                         R4 R5 R2
       47 SETTABLEKS                       R4 R0 K10 ["activeOcclusionModule"]
       49 GETTABLEKS                       R4 R0 K10 ["activeOcclusionModule"]
       51 JUMPIF                           R4 ; [+12]
       52 GETTABLEKS                       R4 R2 K14 ["new"]
       54 CALL                             R4 0 1
       55 SETTABLEKS                       R4 R0 K10 ["activeOcclusionModule"]
       57 GETTABLEKS                       R4 R0 K10 ["activeOcclusionModule"]
       59 JUMPIFNOT                        R4 ; [+4]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R5 R0 K10 ["activeOcclusionModule"]
       63 SETTABLE                         R5 R4 R2
       64 GETTABLEKS                       R4 R0 K10 ["activeOcclusionModule"]
       66 JUMPIFNOT                        R4 ; [+97]
       67 GETTABLEKS                       R4 R0 K10 ["activeOcclusionModule"]
       69 NAMECALL                         R4 R4 K11 ["GetOcclusionMode"]
       71 CALL                             R4 1 1
       72 JUMPIFEQ                         R4 R1 ; [+12]
       74 GETIMPORT                        R5 K7 [warn]
       76 LOADK                            R6 K15 ["CameraScript ActivateOcclusionModule mismatch: "]
       77 GETTABLEKS                       R7 R0 K10 ["activeOcclusionModule"]
       79 NAMECALL                         R7 R7 K11 ["GetOcclusionMode"]
       81 CALL                             R7 1 1
       82 LOADK                            R8 K16 ["~="]
       83 MOVE                             R9 R1
       84 CALL                             R5 4 0
       85 JUMPIFNOT                        R3 ; [+13]
       86 GETTABLEKS                       R5 R0 K10 ["activeOcclusionModule"]
       88 JUMPIFEQ                         R3 R5 ; [+6]
       90 LOADB                            R7 0
       91 NAMECALL                         R5 R3 K13 ["Enable"]
       93 CALL                             R5 2 0
       94 JUMP                             ; [+4]
       95 GETIMPORT                        R5 K7 [warn]
       97 LOADK                            R6 K17 ["CameraScript ActivateOcclusionModule failure to detect already running correct module"]
       98 CALL                             R5 1 0
       99 GETIMPORT                        R5 K5 [Enum.DevCameraOcclusionMode.Invisicam]
      101 JUMPIFNOTEQ                      R1 R5 ; [+21]
      103 GETUPVAL                         R5 3
      104 GETTABLEKS                       R5 R5 K18 ["LocalPlayer"]
      106 GETTABLEKS                       R5 R5 K19 ["Character"]
      108 JUMPIFNOT                        R5 ; [+49]
      109 GETTABLEKS                       R5 R0 K10 ["activeOcclusionModule"]
      111 GETUPVAL                         R7 3
      112 GETTABLEKS                       R7 R7 K18 ["LocalPlayer"]
      114 GETTABLEKS                       R7 R7 K19 ["Character"]
      116 GETUPVAL                         R8 3
      117 GETTABLEKS                       R8 R8 K18 ["LocalPlayer"]
      119 NAMECALL                         R5 R5 K20 ["CharacterAdded"]
      121 CALL                             R5 3 0
      122 JUMP                             ; [+35]
      123 GETIMPORT                        R5 K22 [pairs]
      125 GETUPVAL                         R6 3
      126 NAMECALL                         R6 R6 K23 ["GetPlayers"]
      128 CALL                             R6 1 -1
      129 CALL                             R5 -1 3
      130 FORGPREP_NEXT                    R5
      131 JUMPIFNOT                        R9 ; [+11]
      132 GETTABLEKS                       R10 R9 K19 ["Character"]
      134 JUMPIFNOT                        R10 ; [+8]
      135 GETTABLEKS                       R10 R0 K10 ["activeOcclusionModule"]
      137 GETTABLEKS                       R12 R9 K19 ["Character"]
      139 MOVE                             R13 R9
      140 NAMECALL                         R10 R10 K20 ["CharacterAdded"]
      142 CALL                             R10 3 0
      143 FORGLOOP                         R5 2 ; [-13]
      145 GETTABLEKS                       R5 R0 K10 ["activeOcclusionModule"]
      147 GETIMPORT                        R7 K25 [game]
      149 GETTABLEKS                       R7 R7 K26 ["Workspace"]
      151 GETTABLEKS                       R7 R7 K27 ["CurrentCamera"]
      153 GETTABLEKS                       R7 R7 K28 ["CameraSubject"]
      155 NAMECALL                         R5 R5 K29 ["OnCameraSubjectChanged"]
      157 CALL                             R5 2 0
      158 GETTABLEKS                       R5 R0 K10 ["activeOcclusionModule"]
      160 LOADB                            R7 1
      161 NAMECALL                         R5 R5 K13 ["Enable"]
      163 CALL                             R5 2 0
      164 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K3 ["CameraType"]
        9 GETTABLEKS                       R3 R1 K4 ["CameraSubject"]
       11 LOADB                            R4 1
       12 GETIMPORT                        R5 K7 [Enum.CameraType.Custom]
       14 JUMPIFEQ                         R2 R5 ; [+7]
       16 GETIMPORT                        R5 K9 [Enum.CameraType.Follow]
       18 JUMPIFEQ                         R2 R5 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 JUMPIFNOT                        R3 ; [+5]
       23 LOADK                            R7 K10 ["VehicleSeat"]
       24 NAMECALL                         R5 R3 K11 ["IsA"]
       26 CALL                             R5 2 1
       27 JUMPIF                           R5 ; [+1]
       28 LOADB                            R5 0
       29 GETTABLEKS                       R7 R0 K12 ["occlusionMode"]
       31 GETIMPORT                        R8 K15 [Enum.DevCameraOcclusionMode.Invisicam]
       33 JUMPIFNOTEQ                      R7 R8 ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 MOVE                             R7 R5
       38 JUMPIFNOT                        R7 ; [+3]
       39 MOVE                             R7 R4
       40 JUMPIFNOT                        R7 ; [+1]
       41 MOVE                             R7 R6
       42 RETURN                           R7 1

PROTO_11:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 GETTABLEKS                       R1 R1 K3 ["CameraType"]
        6 NAMECALL                         R2 R0 K4 ["GetCameraMovementModeFromSettings"]
        8 CALL                             R2 1 1
        9 LOADNIL                          R3
       10 GETIMPORT                        R4 K7 [Enum.CameraType.Scriptable]
       12 JUMPIFNOTEQ                      R1 R4 ; [+14]
       14 GETTABLEKS                       R4 R0 K8 ["activeCameraController"]
       16 JUMPIFNOT                        R4 ; [+9]
       17 GETTABLEKS                       R4 R0 K8 ["activeCameraController"]
       19 LOADB                            R6 0
       20 NAMECALL                         R4 R4 K9 ["Enable"]
       22 CALL                             R4 2 0
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R0 K8 ["activeCameraController"]
       26 RETURN                           R0 0
       27 GETIMPORT                        R4 K11 [Enum.CameraType.Custom]
       29 JUMPIFNOTEQ                      R1 R4 ; [+6]
       31 NAMECALL                         R4 R0 K4 ["GetCameraMovementModeFromSettings"]
       33 CALL                             R4 1 1
       34 MOVE                             R2 R4
       35 JUMP                             ; [+40]
       36 GETIMPORT                        R4 K13 [Enum.CameraType.Track]
       38 JUMPIFNOTEQ                      R1 R4 ; [+4]
       40 GETIMPORT                        R2 K16 [Enum.ComputerCameraMovementMode.Classic]
       42 JUMP                             ; [+33]
       43 GETIMPORT                        R4 K18 [Enum.CameraType.Follow]
       45 JUMPIFNOTEQ                      R1 R4 ; [+4]
       47 GETIMPORT                        R2 K19 [Enum.ComputerCameraMovementMode.Follow]
       49 JUMP                             ; [+26]
       50 GETIMPORT                        R4 K21 [Enum.CameraType.Orbital]
       52 JUMPIFNOTEQ                      R1 R4 ; [+4]
       54 GETIMPORT                        R2 K22 [Enum.ComputerCameraMovementMode.Orbital]
       56 JUMP                             ; [+19]
       57 GETIMPORT                        R4 K24 [Enum.CameraType.Attach]
       59 JUMPIFEQ                         R1 R4 ; [+9]
       61 GETIMPORT                        R4 K26 [Enum.CameraType.Watch]
       63 JUMPIFEQ                         R1 R4 ; [+5]
       65 GETIMPORT                        R4 K28 [Enum.CameraType.Fixed]
       67 JUMPIFNOTEQ                      R1 R4 ; [+3]
       69 GETUPVAL                         R3 0
       70 JUMP                             ; [+5]
       71 GETIMPORT                        R4 K30 [warn]
       73 LOADK                            R5 K31 ["CameraScript encountered an unhandled Camera.CameraType value: "]
       74 MOVE                             R6 R1
       75 CALL                             R4 2 0
       76 JUMPIF                           R3 ; [+35]
       77 GETUPVAL                         R4 1
       78 GETTABLEKS                       R4 R4 K32 ["VREnabled"]
       80 JUMPIFNOT                        R4 ; [+2]
       81 GETUPVAL                         R3 2
       82 JUMP                             ; [+29]
       83 GETIMPORT                        R4 K16 [Enum.ComputerCameraMovementMode.Classic]
       85 JUMPIFEQ                         R2 R4 ; [+13]
       87 GETIMPORT                        R4 K19 [Enum.ComputerCameraMovementMode.Follow]
       89 JUMPIFEQ                         R2 R4 ; [+9]
       91 GETIMPORT                        R4 K34 [Enum.ComputerCameraMovementMode.Default]
       93 JUMPIFEQ                         R2 R4 ; [+5]
       95 GETIMPORT                        R4 K36 [Enum.ComputerCameraMovementMode.CameraToggle]
       97 JUMPIFNOTEQ                      R2 R4 ; [+3]
       99 GETUPVAL                         R3 3
      100 JUMP                             ; [+11]
      101 GETIMPORT                        R4 K22 [Enum.ComputerCameraMovementMode.Orbital]
      103 JUMPIFNOTEQ                      R2 R4 ; [+3]
      105 GETUPVAL                         R3 4
      106 JUMP                             ; [+5]
      107 GETIMPORT                        R4 K30 [warn]
      109 LOADK                            R5 K37 ["ActivateCameraController did not select a module."]
      110 CALL                             R4 1 0
      111 RETURN                           R0 0
      112 NAMECALL                         R4 R0 K38 ["ShouldUseVehicleCamera"]
      114 CALL                             R4 1 1
      115 JUMPIFNOT                        R4 ; [+7]
      116 GETUPVAL                         R5 1
      117 GETTABLEKS                       R5 R5 K32 ["VREnabled"]
      119 JUMPIFNOT                        R5 ; [+2]
      120 GETUPVAL                         R3 5
      121 JUMP                             ; [+1]
      122 GETUPVAL                         R3 6
      123 LOADNIL                          R5
      124 GETUPVAL                         R7 7
      125 GETTABLE                         R6 R7 R3
      126 JUMPIF                           R6 ; [+7]
      127 GETTABLEKS                       R6 R3 K39 ["new"]
      129 CALL                             R6 0 1
      130 MOVE                             R5 R6
      131 GETUPVAL                         R6 7
      132 SETTABLE                         R5 R6 R3
      133 JUMP                             ; [+21]
      134 GETUPVAL                         R6 7
      135 GETTABLE                         R5 R6 R3
      136 GETUPVAL                         R6 8
      137 JUMPIFNOT                        R6 ; [+11]
      138 GETTABLEKS                       R6 R5 K40 ["Reset"]
      140 JUMPIFNOT                        R6 ; [+14]
      141 GETTABLEKS                       R6 R0 K8 ["activeCameraController"]
      143 JUMPIFEQ                         R6 R5 ; [+11]
      145 NAMECALL                         R6 R5 K40 ["Reset"]
      147 CALL                             R6 1 0
      148 JUMP                             ; [+6]
      149 GETTABLEKS                       R6 R5 K40 ["Reset"]
      151 JUMPIFNOT                        R6 ; [+3]
      152 NAMECALL                         R6 R5 K40 ["Reset"]
      154 CALL                             R6 1 0
      155 GETTABLEKS                       R6 R0 K8 ["activeCameraController"]
      157 JUMPIFNOT                        R6 ; [+40]
      158 GETTABLEKS                       R6 R0 K8 ["activeCameraController"]
      160 JUMPIFEQ                         R6 R5 ; [+24]
      162 GETTABLEKS                       R6 R5 K41 ["HandleSubjectDistance"]
      164 JUMPIFNOT                        R6 ; [+5]
      165 GETTABLEKS                       R8 R0 K8 ["activeCameraController"]
      167 NAMECALL                         R6 R5 K41 ["HandleSubjectDistance"]
      169 CALL                             R6 2 0
      170 GETTABLEKS                       R6 R0 K8 ["activeCameraController"]
      172 LOADB                            R8 0
      173 NAMECALL                         R6 R6 K9 ["Enable"]
      175 CALL                             R6 2 0
      176 SETTABLEKS                       R5 R0 K8 ["activeCameraController"]
      178 GETTABLEKS                       R6 R0 K8 ["activeCameraController"]
      180 LOADB                            R8 1
      181 NAMECALL                         R6 R6 K9 ["Enable"]
      183 CALL                             R6 2 0
      184 JUMP                             ; [+31]
      185 GETTABLEKS                       R6 R0 K8 ["activeCameraController"]
      187 NAMECALL                         R6 R6 K42 ["GetEnabled"]
      189 CALL                             R6 1 1
      190 JUMPIF                           R6 ; [+25]
      191 GETTABLEKS                       R6 R0 K8 ["activeCameraController"]
      193 LOADB                            R8 1
      194 NAMECALL                         R6 R6 K9 ["Enable"]
      196 CALL                             R6 2 0
      197 JUMP                             ; [+18]
      198 JUMPIFEQKNIL                     R5 ; [+17]
      200 SETTABLEKS                       R5 R0 K8 ["activeCameraController"]
      202 GETTABLEKS                       R7 R0 K8 ["activeCameraController"]
      204 FASTCALL2K                       ASSERT R7 K43 ; [+4]
      206 LOADK                            R8 K43 ["Strict typing check"]
      207 GETIMPORT                        R6 K45 [assert]
      209 CALL                             R6 2 0
      210 GETTABLEKS                       R6 R0 K8 ["activeCameraController"]
      212 LOADB                            R8 1
      213 NAMECALL                         R6 R6 K9 ["Enable"]
      215 CALL                             R6 2 0
      216 GETTABLEKS                       R6 R0 K8 ["activeCameraController"]
      218 JUMPIFNOT                        R6 ; [+12]
      219 GETTABLEKS                       R6 R0 K8 ["activeCameraController"]
      221 MOVE                             R8 R2
      222 NAMECALL                         R6 R6 K46 ["SetCameraMovementMode"]
      224 CALL                             R6 2 0
      225 GETTABLEKS                       R6 R0 K8 ["activeCameraController"]
      227 MOVE                             R8 R1
      228 NAMECALL                         R6 R6 K47 ["SetCameraType"]
      230 CALL                             R6 2 0
      231 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R2 R1 K3 ["CameraSubject"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 GETTABLEKS                       R3 R0 K4 ["activeTransparencyController"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETTABLEKS                       R3 R0 K4 ["activeTransparencyController"]
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R3 K5 ["SetSubject"]
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R3 R0 K6 ["activeOcclusionModule"]
       20 JUMPIFNOT                        R3 ; [+6]
       21 GETTABLEKS                       R3 R0 K6 ["activeOcclusionModule"]
       23 MOVE                             R5 R2
       24 NAMECALL                         R3 R3 K7 ["OnCameraSubjectChanged"]
       26 CALL                             R3 2 0
       27 NAMECALL                         R3 R0 K8 ["ActivateCameraController"]
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R2 K3 [Enum.CameraType.Scriptable]
        2 JUMPIFNOTEQ                      R1 R2 ; [+12]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K4 ["MouseBehavior"]
        7 GETIMPORT                        R3 K6 [Enum.MouseBehavior.LockCenter]
        9 JUMPIFNOTEQ                      R2 R3 ; [+5]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K7 ["restoreMouseBehavior"]
       14 CALL                             R2 0 0
       15 NAMECALL                         R2 R0 K8 ["ActivateCameraController"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnCameraSubjectChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["CameraType"]
        4 NAMECALL                         R0 R0 K1 ["OnCameraTypeChanged"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R0 K4 ["cameraSubjectChangedConn"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETTABLEKS                       R2 R0 K4 ["cameraSubjectChangedConn"]
       13 NAMECALL                         R2 R2 K5 ["Disconnect"]
       15 CALL                             R2 1 0
       16 GETTABLEKS                       R2 R0 K6 ["cameraTypeChangedConn"]
       18 JUMPIFNOT                        R2 ; [+5]
       19 GETTABLEKS                       R2 R0 K6 ["cameraTypeChangedConn"]
       21 NAMECALL                         R2 R2 K5 ["Disconnect"]
       23 CALL                             R2 1 0
       24 LOADK                            R4 K7 ["CameraSubject"]
       25 NAMECALL                         R2 R1 K8 ["GetPropertyChangedSignal"]
       27 CALL                             R2 2 1
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R2 R2 K9 ["Connect"]
       32 CALL                             R2 2 1
       33 SETTABLEKS                       R2 R0 K4 ["cameraSubjectChangedConn"]
       35 LOADK                            R4 K10 ["CameraType"]
       36 NAMECALL                         R2 R1 K8 ["GetPropertyChangedSignal"]
       38 CALL                             R2 2 1
       39 NEWCLOSURE                       R4 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 NAMECALL                         R2 R2 K9 ["Connect"]
       44 CALL                             R2 2 1
       45 SETTABLEKS                       R2 R0 K6 ["cameraTypeChangedConn"]
       47 NAMECALL                         R2 R0 K11 ["OnCameraSubjectChanged"]
       49 CALL                             R2 1 0
       50 GETTABLEKS                       R4 R1 K10 ["CameraType"]
       52 NAMECALL                         R2 R0 K12 ["OnCameraTypeChanged"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_17:
        0 JUMPIFNOTEQKS                    R1 K0 ["CameraMode"] ; [+55]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["LocalPlayer"]
        5 GETTABLEKS                       R2 R2 K0 ["CameraMode"]
        7 GETIMPORT                        R3 K4 [Enum.CameraMode.LockFirstPerson]
        9 JUMPIFNOTEQ                      R2 R3 ; [+23]
       11 GETTABLEKS                       R2 R0 K5 ["activeCameraController"]
       13 JUMPIFNOT                        R2 ; [+7]
       14 GETTABLEKS                       R2 R0 K5 ["activeCameraController"]
       16 NAMECALL                         R2 R2 K6 ["GetModuleName"]
       18 CALL                             R2 1 1
       19 JUMPIFEQKS                       R2 K7 ["ClassicCamera"] ; [+4]
       21 NAMECALL                         R2 R0 K8 ["ActivateCameraController"]
       23 CALL                             R2 1 0
       24 GETTABLEKS                       R2 R0 K5 ["activeCameraController"]
       26 JUMPIFNOT                        R2 ; [+69]
       27 GETTABLEKS                       R2 R0 K5 ["activeCameraController"]
       29 NAMECALL                         R2 R2 K9 ["UpdateForDistancePropertyChange"]
       31 CALL                             R2 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K1 ["LocalPlayer"]
       36 GETTABLEKS                       R2 R2 K0 ["CameraMode"]
       38 GETIMPORT                        R3 K11 [Enum.CameraMode.Classic]
       40 JUMPIFNOTEQ                      R2 R3 ; [+5]
       42 NAMECALL                         R2 R0 K8 ["ActivateCameraController"]
       44 CALL                             R2 1 0
       45 RETURN                           R0 0
       46 GETIMPORT                        R2 K13 [warn]
       48 LOADK                            R3 K14 ["Unhandled value for property player.CameraMode: "]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K1 ["LocalPlayer"]
       52 GETTABLEKS                       R4 R4 K0 ["CameraMode"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0
       56 JUMPIFEQKS                       R1 K15 ["DevComputerCameraMode"] ; [+3]
       58 JUMPIFNOTEQKS                    R1 K16 ["DevTouchCameraMode"] ; [+5]
       60 NAMECALL                         R2 R0 K8 ["ActivateCameraController"]
       62 CALL                             R2 1 0
       63 RETURN                           R0 0
       64 JUMPIFNOTEQKS                    R1 K17 ["DevCameraOcclusionMode"] ; [+10]
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R4 R4 K1 ["LocalPlayer"]
       69 GETTABLEKS                       R4 R4 K17 ["DevCameraOcclusionMode"]
       71 NAMECALL                         R2 R0 K18 ["ActivateOcclusionModule"]
       73 CALL                             R2 2 0
       74 RETURN                           R0 0
       75 JUMPIFEQKS                       R1 K19 ["CameraMinZoomDistance"] ; [+3]
       77 JUMPIFNOTEQKS                    R1 K20 ["CameraMaxZoomDistance"] ; [+10]
       79 GETTABLEKS                       R2 R0 K5 ["activeCameraController"]
       81 JUMPIFNOT                        R2 ; [+14]
       82 GETTABLEKS                       R2 R0 K5 ["activeCameraController"]
       84 NAMECALL                         R2 R2 K9 ["UpdateForDistancePropertyChange"]
       86 CALL                             R2 1 0
       87 RETURN                           R0 0
       88 JUMPIFNOTEQKS                    R1 K21 ["DevTouchMovementMode"] ; [+2]
       90 RETURN                           R0 0
       91 JUMPIFNOTEQKS                    R1 K22 ["DevComputerMovementMode"] ; [+2]
       93 RETURN                           R0 0
       94 JUMPIFNOTEQKS                    R1 K23 ["DevEnableMouseLock"] ; [+1]
       96 RETURN                           R0 0

PROTO_18:
        0 JUMPIFNOTEQKS                    R1 K0 ["ComputerCameraMovementMode"] ; [+4]
        2 NAMECALL                         R2 R0 K1 ["ActivateCameraController"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 NAMECALL                         R1 R0 K0 ["ActivateCameraController"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["activeCameraController"]
        2 JUMPIFNOT                        R3 ; [+48]
        3 GETTABLEKS                       R3 R0 K0 ["activeCameraController"]
        5 NAMECALL                         R3 R3 K1 ["UpdateMouseBehavior"]
        7 CALL                             R3 1 0
        8 GETTABLEKS                       R3 R0 K0 ["activeCameraController"]
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K2 ["Update"]
       13 CALL                             R3 2 2
       14 GETTABLEKS                       R5 R0 K3 ["activeOcclusionModule"]
       16 JUMPIFNOT                        R5 ; [+15]
       17 GETTABLEKS                       R5 R0 K0 ["activeCameraController"]
       19 GETTABLEKS                       R5 R5 K4 ["skipOcclusion"]
       21 JUMPIF                           R5 ; [+10]
       22 GETTABLEKS                       R5 R0 K3 ["activeOcclusionModule"]
       24 MOVE                             R7 R2
       25 MOVE                             R8 R3
       26 MOVE                             R9 R4
       27 NAMECALL                         R5 R5 K2 ["Update"]
       29 CALL                             R5 4 2
       30 MOVE                             R3 R5
       31 MOVE                             R4 R6
       32 GETIMPORT                        R5 K6 [game]
       34 GETTABLEKS                       R5 R5 K7 ["Workspace"]
       36 GETTABLEKS                       R5 R5 K8 ["CurrentCamera"]
       38 SETTABLEKS                       R3 R5 K9 ["CFrame"]
       40 SETTABLEKS                       R4 R5 K10 ["Focus"]
       42 GETTABLEKS                       R6 R0 K11 ["activeTransparencyController"]
       44 JUMPIFNOT                        R6 ; [+6]
       45 GETTABLEKS                       R6 R0 K11 ["activeTransparencyController"]
       47 MOVE                             R8 R2
       48 NAMECALL                         R6 R6 K2 ["Update"]
       50 CALL                             R6 2 0
       51 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["activeOcclusionModule"]
        2 JUMPIFNOT                        R3 ; [+7]
        3 GETTABLEKS                       R3 R0 K0 ["activeOcclusionModule"]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 NAMECALL                         R3 R3 K1 ["CharacterAdded"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["activeOcclusionModule"]
        2 JUMPIFNOT                        R3 ; [+7]
        3 GETTABLEKS                       R3 R0 K0 ["activeOcclusionModule"]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 NAMECALL                         R3 R3 K1 ["CharacterRemoving"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["OnCharacterAdded"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["OnCharacterRemoving"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["OnCharacterAdded"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["OnCharacterRemoving"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+42]
        2 GETTABLEKS                       R2 R0 K0 ["connectionUtil"]
        4 JUMPIFNOT                        R2 ; [+55]
        5 GETTABLEKS                       R2 R0 K0 ["connectionUtil"]
        7 LOADK                            R4 K1 ["%*CharacterAdded"]
        8 GETTABLEKS                       R6 R1 K2 ["UserId"]
       10 NAMECALL                         R4 R4 K3 ["format"]
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R5 R1 K4 ["CharacterAdded"]
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R5 R5 K5 ["Connect"]
       20 CALL                             R5 2 -1
       21 NAMECALL                         R2 R2 K6 ["trackConnection"]
       23 CALL                             R2 -1 0
       24 GETTABLEKS                       R2 R0 K0 ["connectionUtil"]
       26 LOADK                            R4 K7 ["%*CharacterRemoving"]
       27 GETTABLEKS                       R6 R1 K2 ["UserId"]
       29 NAMECALL                         R4 R4 K3 ["format"]
       31 CALL                             R4 2 1
       32 GETTABLEKS                       R5 R1 K8 ["CharacterRemoving"]
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R5 R5 K5 ["Connect"]
       39 CALL                             R5 2 -1
       40 NAMECALL                         R2 R2 K6 ["trackConnection"]
       42 CALL                             R2 -1 0
       43 RETURN                           R0 0
       44 GETTABLEKS                       R2 R1 K4 ["CharacterAdded"]
       46 NEWCLOSURE                       R4 P2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R1
       49 NAMECALL                         R2 R2 K5 ["Connect"]
       51 CALL                             R2 2 0
       52 GETTABLEKS                       R2 R1 K8 ["CharacterRemoving"]
       54 NEWCLOSURE                       R4 P3
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R1
       57 NAMECALL                         R2 R2 K5 ["Connect"]
       59 CALL                             R2 2 0
       60 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["connectionUtil"]
        2 JUMPIFNOT                        R2 ; [+22]
        3 GETTABLEKS                       R2 R0 K0 ["connectionUtil"]
        5 LOADK                            R4 K1 ["%*CharacterAdded"]
        6 GETTABLEKS                       R6 R1 K2 ["UserId"]
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 2 1
       11 NAMECALL                         R2 R2 K4 ["disconnect"]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R0 K0 ["connectionUtil"]
       16 LOADK                            R4 K5 ["%*CharacterRemoving"]
       17 GETTABLEKS                       R6 R1 K2 ["UserId"]
       19 NAMECALL                         R4 R4 K3 ["format"]
       21 CALL                             R4 2 1
       22 NAMECALL                         R2 R2 K4 ["disconnect"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["activeMouseLockController"]
        2 JUMPIFNOT                        R1 ; [+25]
        3 GETTABLEKS                       R1 R0 K0 ["activeMouseLockController"]
        5 NAMECALL                         R1 R1 K1 ["GetIsMouseLocked"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R0 K0 ["activeMouseLockController"]
       10 NAMECALL                         R2 R2 K2 ["GetMouseLockOffset"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R0 K3 ["activeCameraController"]
       15 JUMPIFNOT                        R3 ; [+12]
       16 GETTABLEKS                       R3 R0 K3 ["activeCameraController"]
       18 MOVE                             R5 R1
       19 NAMECALL                         R3 R3 K4 ["SetIsMouseLocked"]
       21 CALL                             R3 2 0
       22 GETTABLEKS                       R3 R0 K3 ["activeCameraController"]
       24 MOVE                             R5 R2
       25 NAMECALL                         R3 R3 K5 ["SetMouseLockOffset"]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 NEWTABLE                         R1 0 9
        7 LOADK                            R2 K1 ["CameraMinZoomDistance"]
        8 LOADK                            R3 K2 ["CameraMaxZoomDistance"]
        9 LOADK                            R4 K3 ["CameraMode"]
       10 LOADK                            R5 K4 ["DevCameraOcclusionMode"]
       11 LOADK                            R6 K5 ["DevComputerCameraMode"]
       12 LOADK                            R7 K6 ["DevTouchCameraMode"]
       13 LOADK                            R8 K7 ["DevComputerMovementMode"]
       14 LOADK                            R9 K8 ["DevTouchMovementMode"]
       15 LOADK                            R10 K9 ["DevEnableMouseLock"]
       16 SETLIST                          R1 R2 9 [1]
       18 NEWTABLE                         R2 0 8
       20 LOADK                            R3 K10 ["ComputerCameraMovementMode"]
       21 LOADK                            R4 K11 ["ComputerMovementMode"]
       22 LOADK                            R5 K12 ["ControlMode"]
       23 LOADK                            R6 K13 ["GamepadCameraSensitivity"]
       24 LOADK                            R7 K14 ["MouseSensitivity"]
       25 LOADK                            R8 K15 ["RotationType"]
       26 LOADK                            R9 K16 ["TouchCameraMovementMode"]
       27 LOADK                            R10 K17 ["TouchMovementMode"]
       28 SETLIST                          R2 R3 8 [1]
       30 GETIMPORT                        R3 K19 [game]
       32 LOADK                            R5 K20 ["Players"]
       33 NAMECALL                         R3 R3 K21 ["GetService"]
       35 CALL                             R3 2 1
       36 GETIMPORT                        R4 K19 [game]
       38 LOADK                            R6 K22 ["RunService"]
       39 NAMECALL                         R4 R4 K21 ["GetService"]
       41 CALL                             R4 2 1
       42 GETIMPORT                        R5 K19 [game]
       44 LOADK                            R7 K23 ["UserInputService"]
       45 NAMECALL                         R5 R5 K21 ["GetService"]
       47 CALL                             R5 2 1
       48 GETIMPORT                        R6 K19 [game]
       50 LOADK                            R8 K24 ["VRService"]
       51 NAMECALL                         R6 R6 K21 ["GetService"]
       53 CALL                             R6 2 1
       54 GETIMPORT                        R7 K26 [UserSettings]
       56 CALL                             R7 0 1
       57 LOADK                            R9 K27 ["UserGameSettings"]
       58 NAMECALL                         R7 R7 K21 ["GetService"]
       60 CALL                             R7 2 1
       61 GETIMPORT                        R8 K29 [require]
       63 GETIMPORT                        R9 K31 [script]
       65 GETTABLEKS                       R9 R9 K32 ["Parent"]
       67 LOADK                            R11 K33 ["CommonUtils"]
       68 NAMECALL                         R9 R9 K34 ["WaitForChild"]
       70 CALL                             R9 2 -1
       71 CALL                             R8 -1 1
       72 GETTABLEKS                       R9 R8 K35 ["get"]
       74 LOADK                            R10 K36 ["ConnectionUtil"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R8 K35 ["get"]
       78 LOADK                            R11 K37 ["FlagUtil"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K29 [require]
       82 GETIMPORT                        R12 K31 [script]
       84 LOADK                            R14 K38 ["CameraUtils"]
       85 NAMECALL                         R12 R12 K34 ["WaitForChild"]
       87 CALL                             R12 2 -1
       88 CALL                             R11 -1 1
       89 GETIMPORT                        R12 K29 [require]
       91 GETIMPORT                        R13 K31 [script]
       93 LOADK                            R15 K39 ["CameraInput"]
       94 NAMECALL                         R13 R13 K34 ["WaitForChild"]
       96 CALL                             R13 2 -1
       97 CALL                             R12 -1 1
       98 GETIMPORT                        R13 K29 [require]
      100 GETIMPORT                        R14 K31 [script]
      102 LOADK                            R16 K40 ["ClassicCamera"]
      103 NAMECALL                         R14 R14 K34 ["WaitForChild"]
      105 CALL                             R14 2 -1
      106 CALL                             R13 -1 1
      107 GETIMPORT                        R14 K29 [require]
      109 GETIMPORT                        R15 K31 [script]
      111 LOADK                            R17 K41 ["OrbitalCamera"]
      112 NAMECALL                         R15 R15 K34 ["WaitForChild"]
      114 CALL                             R15 2 -1
      115 CALL                             R14 -1 1
      116 GETIMPORT                        R15 K29 [require]
      118 GETIMPORT                        R16 K31 [script]
      120 LOADK                            R18 K42 ["LegacyCamera"]
      121 NAMECALL                         R16 R16 K34 ["WaitForChild"]
      123 CALL                             R16 2 -1
      124 CALL                             R15 -1 1
      125 GETIMPORT                        R16 K29 [require]
      127 GETIMPORT                        R17 K31 [script]
      129 LOADK                            R19 K43 ["VehicleCamera"]
      130 NAMECALL                         R17 R17 K34 ["WaitForChild"]
      132 CALL                             R17 2 -1
      133 CALL                             R16 -1 1
      134 GETIMPORT                        R17 K29 [require]
      136 GETIMPORT                        R18 K31 [script]
      138 LOADK                            R20 K44 ["VRCamera"]
      139 NAMECALL                         R18 R18 K34 ["WaitForChild"]
      141 CALL                             R18 2 -1
      142 CALL                             R17 -1 1
      143 GETIMPORT                        R18 K29 [require]
      145 GETIMPORT                        R19 K31 [script]
      147 LOADK                            R21 K45 ["VRVehicleCamera"]
      148 NAMECALL                         R19 R19 K34 ["WaitForChild"]
      150 CALL                             R19 2 -1
      151 CALL                             R18 -1 1
      152 GETIMPORT                        R19 K29 [require]
      154 GETIMPORT                        R20 K31 [script]
      156 LOADK                            R22 K46 ["Invisicam"]
      157 NAMECALL                         R20 R20 K34 ["WaitForChild"]
      159 CALL                             R20 2 -1
      160 CALL                             R19 -1 1
      161 GETIMPORT                        R20 K29 [require]
      163 GETIMPORT                        R21 K31 [script]
      165 LOADK                            R23 K47 ["Poppercam"]
      166 NAMECALL                         R21 R21 K34 ["WaitForChild"]
      168 CALL                             R21 2 -1
      169 CALL                             R20 -1 1
      170 GETIMPORT                        R21 K29 [require]
      172 GETIMPORT                        R22 K31 [script]
      174 LOADK                            R24 K48 ["TransparencyController"]
      175 NAMECALL                         R22 R22 K34 ["WaitForChild"]
      177 CALL                             R22 2 -1
      178 CALL                             R21 -1 1
      179 GETIMPORT                        R22 K29 [require]
      181 GETIMPORT                        R23 K31 [script]
      183 LOADK                            R25 K49 ["MouseLockController"]
      184 NAMECALL                         R23 R23 K34 ["WaitForChild"]
      186 CALL                             R23 2 -1
      187 CALL                             R22 -1 1
      188 NEWTABLE                         R23 0 0
      190 NEWTABLE                         R24 0 0
      192 GETTABLEKS                       R25 R3 K50 ["LocalPlayer"]
      194 JUMPIF                           R25 ; [+3]
      195 NEWTABLE                         R25 0 0
      197 RETURN                           R25 1
      198 GETTABLEKS                       R26 R3 K50 ["LocalPlayer"]
      200 FASTCALL2K                       ASSERT R26 K51 ; [+4]
      202 LOADK                            R27 K51 ["Strict typing check"]
      203 GETIMPORT                        R25 K53 [assert]
      205 CALL                             R25 2 0
      206 GETTABLEKS                       R25 R3 K50 ["LocalPlayer"]
      208 LOADK                            R27 K54 ["PlayerScripts"]
      209 NAMECALL                         R25 R25 K34 ["WaitForChild"]
      211 CALL                             R25 2 1
      212 GETIMPORT                        R28 K57 [Enum.TouchCameraMovementMode.Default]
      214 NAMECALL                         R26 R25 K58 ["RegisterTouchCameraMovementMode"]
      216 CALL                             R26 2 0
      217 GETIMPORT                        R28 K60 [Enum.TouchCameraMovementMode.Follow]
      219 NAMECALL                         R26 R25 K58 ["RegisterTouchCameraMovementMode"]
      221 CALL                             R26 2 0
      222 GETIMPORT                        R28 K62 [Enum.TouchCameraMovementMode.Classic]
      224 NAMECALL                         R26 R25 K58 ["RegisterTouchCameraMovementMode"]
      226 CALL                             R26 2 0
      227 GETIMPORT                        R28 K63 [Enum.ComputerCameraMovementMode.Default]
      229 NAMECALL                         R26 R25 K64 ["RegisterComputerCameraMovementMode"]
      231 CALL                             R26 2 0
      232 GETIMPORT                        R28 K65 [Enum.ComputerCameraMovementMode.Follow]
      234 NAMECALL                         R26 R25 K64 ["RegisterComputerCameraMovementMode"]
      236 CALL                             R26 2 0
      237 GETIMPORT                        R28 K66 [Enum.ComputerCameraMovementMode.Classic]
      239 NAMECALL                         R26 R25 K64 ["RegisterComputerCameraMovementMode"]
      241 CALL                             R26 2 0
      242 GETIMPORT                        R28 K68 [Enum.ComputerCameraMovementMode.CameraToggle]
      244 NAMECALL                         R26 R25 K64 ["RegisterComputerCameraMovementMode"]
      246 CALL                             R26 2 0
      247 GETTABLEKS                       R25 R10 K69 ["getUserFlag"]
      249 LOADK                            R26 K70 ["UserPlayerConnectionMemoryLeak"]
      250 CALL                             R25 1 1
      251 GETTABLEKS                       R26 R10 K69 ["getUserFlag"]
      253 LOADK                            R27 K71 ["UserPSFixCameraControllerReset"]
      254 CALL                             R26 1 1
      255 DUPCLOSURE                       R27 K72 [PROTO_7]
      256 CAPTURE                          VAL R21
      257 CAPTURE                          VAL R25
      258 CAPTURE                          VAL R9
      259 CAPTURE                          VAL R0
      260 CAPTURE                          VAL R3
      261 CAPTURE                          VAL R22
      262 CAPTURE                          VAL R1
      263 CAPTURE                          VAL R2
      264 CAPTURE                          VAL R7
      265 CAPTURE                          VAL R5
      266 SETTABLEKS                       R27 R0 K73 ["new"]
      268 DUPCLOSURE                       R27 K74 [PROTO_8]
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R11
      271 CAPTURE                          VAL R5
      272 CAPTURE                          VAL R7
      273 SETTABLEKS                       R27 R0 K75 ["GetCameraMovementModeFromSettings"]
      275 DUPCLOSURE                       R27 K76 [PROTO_9]
      276 CAPTURE                          VAL R20
      277 CAPTURE                          VAL R19
      278 CAPTURE                          VAL R24
      279 CAPTURE                          VAL R3
      280 SETTABLEKS                       R27 R0 K77 ["ActivateOcclusionModule"]
      282 DUPCLOSURE                       R27 K78 [PROTO_10]
      283 SETTABLEKS                       R27 R0 K79 ["ShouldUseVehicleCamera"]
      285 DUPCLOSURE                       R27 K80 [PROTO_11]
      286 CAPTURE                          VAL R15
      287 CAPTURE                          VAL R6
      288 CAPTURE                          VAL R17
      289 CAPTURE                          VAL R13
      290 CAPTURE                          VAL R14
      291 CAPTURE                          VAL R18
      292 CAPTURE                          VAL R16
      293 CAPTURE                          VAL R23
      294 CAPTURE                          VAL R26
      295 SETTABLEKS                       R27 R0 K81 ["ActivateCameraController"]
      297 DUPCLOSURE                       R27 K82 [PROTO_12]
      298 SETTABLEKS                       R27 R0 K83 ["OnCameraSubjectChanged"]
      300 DUPCLOSURE                       R27 K84 [PROTO_13]
      301 CAPTURE                          VAL R5
      302 CAPTURE                          VAL R11
      303 SETTABLEKS                       R27 R0 K85 ["OnCameraTypeChanged"]
      305 DUPCLOSURE                       R27 K86 [PROTO_16]
      306 SETTABLEKS                       R27 R0 K87 ["OnCurrentCameraChanged"]
      308 DUPCLOSURE                       R27 K88 [PROTO_17]
      309 CAPTURE                          VAL R3
      310 SETTABLEKS                       R27 R0 K89 ["OnLocalPlayerCameraPropertyChanged"]
      312 DUPCLOSURE                       R27 K90 [PROTO_18]
      313 SETTABLEKS                       R27 R0 K91 ["OnUserGameSettingsPropertyChanged"]
      315 DUPCLOSURE                       R27 K92 [PROTO_19]
      316 SETTABLEKS                       R27 R0 K93 ["OnPreferredInputChanged"]
      318 DUPCLOSURE                       R27 K94 [PROTO_20]
      319 SETTABLEKS                       R27 R0 K95 ["Update"]
      321 DUPCLOSURE                       R27 K96 [PROTO_21]
      322 SETTABLEKS                       R27 R0 K97 ["OnCharacterAdded"]
      324 DUPCLOSURE                       R27 K98 [PROTO_22]
      325 SETTABLEKS                       R27 R0 K99 ["OnCharacterRemoving"]
      327 DUPCLOSURE                       R27 K100 [PROTO_27]
      328 CAPTURE                          VAL R25
      329 SETTABLEKS                       R27 R0 K101 ["OnPlayerAdded"]
      331 DUPCLOSURE                       R27 K102 [PROTO_28]
      332 SETTABLEKS                       R27 R0 K103 ["OnPlayerRemoving"]
      334 DUPCLOSURE                       R27 K104 [PROTO_29]
      335 SETTABLEKS                       R27 R0 K105 ["OnMouseLockToggled"]
      337 NAMECALL                         R27 R4 K106 ["IsClient"]
      339 CALL                             R27 1 1
      340 JUMPIFNOT                        R27 ; [+4]
      341 GETTABLEKS                       R27 R0 K73 ["new"]
      343 CALL                             R27 0 -1
      344 RETURN                           R27 -1
      345 RETURN                           R0 1
