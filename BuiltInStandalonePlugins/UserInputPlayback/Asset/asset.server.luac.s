PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["Cryo"]
        7 CALL                             R1 1 1
        8 SETUPVAL                         R1 0
        9 DUPTABLE                         R1 K9 [{"mouseButton", "mouseMove", "touch", "keyboard", "gamepad"}]
       10 NEWTABLE                         R2 0 3
       12 GETIMPORT                        R3 K13 [Enum.UserInputType.MouseButton1]
       14 GETIMPORT                        R4 K15 [Enum.UserInputType.MouseButton2]
       16 GETIMPORT                        R5 K17 [Enum.UserInputType.MouseButton3]
       18 SETLIST                          R2 R3 3 [1]
       20 SETTABLEKS                       R2 R1 K4 ["mouseButton"]
       22 NEWTABLE                         R2 0 1
       24 GETIMPORT                        R3 K19 [Enum.UserInputType.MouseMovement]
       26 SETLIST                          R2 R3 1 [1]
       28 SETTABLEKS                       R2 R1 K5 ["mouseMove"]
       30 NEWTABLE                         R2 0 1
       32 GETIMPORT                        R3 K21 [Enum.UserInputType.Touch]
       34 SETLIST                          R2 R3 1 [1]
       36 SETTABLEKS                       R2 R1 K6 ["touch"]
       38 NEWTABLE                         R2 0 1
       40 GETIMPORT                        R3 K23 [Enum.UserInputType.Keyboard]
       42 SETLIST                          R2 R3 1 [1]
       44 SETTABLEKS                       R2 R1 K7 ["keyboard"]
       46 NEWTABLE                         R2 0 8
       48 GETIMPORT                        R3 K25 [Enum.UserInputType.Gamepad1]
       50 GETIMPORT                        R4 K27 [Enum.UserInputType.Gamepad2]
       52 GETIMPORT                        R5 K29 [Enum.UserInputType.Gamepad3]
       54 GETIMPORT                        R6 K31 [Enum.UserInputType.Gamepad4]
       56 GETIMPORT                        R7 K33 [Enum.UserInputType.Gamepad5]
       58 GETIMPORT                        R8 K35 [Enum.UserInputType.Gamepad6]
       60 GETIMPORT                        R9 K37 [Enum.UserInputType.Gamepad7]
       62 GETIMPORT                        R10 K39 [Enum.UserInputType.Gamepad8]
       64 SETLIST                          R2 R3 8 [1]
       66 SETTABLEKS                       R2 R1 K8 ["gamepad"]
       68 NEWTABLE                         R2 0 0
       70 GETIMPORT                        R3 K41 [pairs]
       72 MOVE                             R4 R0
       73 CALL                             R3 1 3
       74 FORGPREP_NEXT                    R3
       75 JUMPIF                           R7 ; [+9]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R8 R8 K42 ["List"]
       79 GETTABLEKS                       R8 R8 K43 ["join"]
       81 MOVE                             R9 R2
       82 GETTABLE                         R10 R1 R6
       83 CALL                             R8 2 1
       84 MOVE                             R2 R8
       85 FORGLOOP                         R3 2 ; [-11]
       87 GETUPVAL                         R3 2
       88 MOVE                             R5 R2
       89 NAMECALL                         R3 R3 K44 ["SetInputTypesToIgnore"]
       91 CALL                             R3 2 0
       92 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getRoduxState"]
        3 CALL                             R0 0 1
        4 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K1 ["Access rodux state"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R1 R0 K4 ["playbackTab"]
       13 GETTABLEKS                       R1 R1 K5 ["shouldSetEmulationDevice"]
       15 JUMPIFNOT                        R1 ; [+42]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K6 ["getCurrentPlaybackRecordingDataObj"]
       19 CALL                             R1 0 1
       20 FASTCALL2K                       ASSERT R1 K7 ; [+5]
       22 MOVE                             R3 R1
       23 LOADK                            R4 K7 ["Could not get recording data"]
       24 GETIMPORT                        R2 K3 [assert]
       26 CALL                             R2 2 0
       27 GETTABLEKS                       R2 R1 K8 ["additionalMetadata"]
       29 GETTABLEKS                       R3 R2 K9 ["resolution"]
       31 GETTABLEKS                       R4 R2 K10 ["deviceId"]
       33 GETTABLEKS                       R5 R2 K11 ["orientation"]
       35 JUMPIFNOTEQKS                    R4 K12 ["default"] ; [+12]
       37 GETUPVAL                         R6 1
       38 LOADK                            R8 K13 ["Test Computer Device"]
       39 GETIMPORT                        R9 K16 [Vector2.new]
       41 GETTABLEN                        R10 R3 1
       42 GETTABLEN                        R11 R3 2
       43 CALL                             R9 2 -1
       44 NAMECALL                         R6 R6 K17 ["EmulatePCDeviceWithResolution"]
       46 CALL                             R6 -1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R6 1
       49 MOVE                             R8 R4
       50 NAMECALL                         R6 R6 K18 ["SetCurrentDeviceId"]
       52 CALL                             R6 2 0
       53 GETUPVAL                         R6 1
       54 MOVE                             R8 R5
       55 NAMECALL                         R6 R6 K19 ["SetCurrentOrientation"]
       57 CALL                             R6 2 0
       58 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["Components"]
        7 GETTABLEKS                       R1 R1 K4 ["InputVisualizer"]
        9 CALL                             R0 1 1
       10 SETUPVAL                         R0 0
       11 GETIMPORT                        R0 K1 [require]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K5 ["Packages"]
       16 GETTABLEKS                       R1 R1 K6 ["Roact"]
       18 CALL                             R0 1 1
       19 SETUPVAL                         R0 2
       20 GETIMPORT                        R0 K1 [require]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K5 ["Packages"]
       25 GETTABLEKS                       R1 R1 K7 ["Framework"]
       27 CALL                             R0 1 1
       28 SETUPVAL                         R0 3
       29 GETUPVAL                         R0 3
       30 GETTABLEKS                       R0 R0 K8 ["ContextServices"]
       32 SETUPVAL                         R0 4
       33 GETUPVAL                         R0 4
       34 GETTABLEKS                       R0 R0 K9 ["Plugin"]
       36 SETUPVAL                         R0 5
       37 GETIMPORT                        R0 K1 [require]
       39 GETUPVAL                         R1 1
       40 GETTABLEKS                       R1 R1 K2 ["Src"]
       42 GETTABLEKS                       R1 R1 K10 ["Resources"]
       44 GETTABLEKS                       R1 R1 K11 ["MakeTheme"]
       46 CALL                             R0 1 1
       47 SETUPVAL                         R0 6
       48 GETUPVAL                         R0 4
       49 GETTABLEKS                       R0 R0 K12 ["provide"]
       51 NEWTABLE                         R1 0 2
       53 GETUPVAL                         R2 5
       54 GETTABLEKS                       R2 R2 K13 ["new"]
       56 GETIMPORT                        R3 K15 [plugin]
       58 CALL                             R2 1 1
       59 GETUPVAL                         R3 6
       60 CALL                             R3 0 -1
       61 SETLIST                          R1 R2 -1 [1]
       63 DUPTABLE                         R2 K16 [{"InputVisualizer"}]
       64 GETUPVAL                         R3 2
       65 GETTABLEKS                       R3 R3 K17 ["createElement"]
       67 LOADK                            R4 K18 ["ScreenGui"]
       68 DUPTABLE                         R5 K21 [{"DisplayOrder", "Enabled"}]
       69 LOADN                            R6 232
       70 SETTABLEKS                       R6 R5 K19 ["DisplayOrder"]
       72 LOADB                            R6 1
       73 SETTABLEKS                       R6 R5 K20 ["Enabled"]
       75 DUPTABLE                         R6 K16 [{"InputVisualizer"}]
       76 GETUPVAL                         R7 2
       77 GETTABLEKS                       R7 R7 K17 ["createElement"]
       79 GETUPVAL                         R8 0
       80 CALL                             R7 1 1
       81 SETTABLEKS                       R7 R6 K4 ["InputVisualizer"]
       83 CALL                             R3 3 1
       84 SETTABLEKS                       R3 R2 K4 ["InputVisualizer"]
       86 CALL                             R0 2 1
       87 GETUPVAL                         R3 7
       88 JUMPIFEQKNIL                     R3 ; [+2]
       90 LOADB                            R2 0 +1
       91 LOADB                            R2 1
       92 FASTCALL1                        ASSERT R2 ; [+2]
       93 GETIMPORT                        R1 K23 [assert]
       95 CALL                             R1 1 0
       96 GETUPVAL                         R1 2
       97 GETTABLEKS                       R1 R1 K24 ["mount"]
       99 MOVE                             R2 R0
      100 GETUPVAL                         R3 8
      101 CALL                             R1 2 1
      102 SETUPVAL                         R1 7
      103 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Roact"]
        7 CALL                             R0 1 1
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K4 ["unmount"]
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 2
       18 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K1 [plugin]
        2 GETTABLEKS                       R2 R2 K2 ["HostDataModelType"]
        4 GETIMPORT                        R3 K6 [Enum.StudioDataModelType.PlayClient]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 FASTCALL2K                       ASSERT R1 K7 ; [+4]
       12 LOADK                            R2 K7 ["Correct datamodel game state type"]
       13 GETIMPORT                        R0 K9 [assert]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 0
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R0 0
       19 NAMECALL                         R0 R0 K10 ["Disconnect"]
       21 CALL                             R0 1 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K11 ["getPluginState"]
       27 CALL                             R2 0 1
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K12 ["PluginState"]
       31 GETTABLEKS                       R3 R3 K13 ["Playing"]
       33 JUMPIFEQ                         R2 R3 ; [+2]
       35 LOADB                            R1 0 +1
       36 LOADB                            R1 1
       37 FASTCALL1                        ASSERT R1 ; [+2]
       38 GETIMPORT                        R0 K9 [assert]
       40 CALL                             R0 1 0
       41 GETUPVAL                         R0 1
       42 GETTABLEKS                       R0 R0 K14 ["setPluginState"]
       44 GETUPVAL                         R1 2
       45 GETTABLEKS                       R1 R1 K12 ["PluginState"]
       47 GETTABLEKS                       R1 R1 K15 ["Default"]
       49 CALL                             R0 1 0
       50 GETIMPORT                        R0 K17 [require]
       52 GETUPVAL                         R1 4
       53 GETTABLEKS                       R1 R1 K18 ["Packages"]
       55 GETTABLEKS                       R1 R1 K19 ["Roact"]
       57 CALL                             R0 1 1
       58 SETUPVAL                         R0 3
       59 GETUPVAL                         R0 5
       60 JUMPIFNOT                        R0 ; [+7]
       61 GETUPVAL                         R0 3
       62 GETTABLEKS                       R0 R0 K20 ["unmount"]
       64 GETUPVAL                         R1 5
       65 CALL                             R0 1 0
       66 LOADNIL                          R0
       67 SETUPVAL                         R0 5
       68 GETUPVAL                         R0 6
       69 GETIMPORT                        R1 K23 [Enum.OverrideMouseIconBehavior.None]
       71 SETTABLEKS                       R1 R0 K21 ["OverrideMouseIconBehavior"]
       73 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getPluginState"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["PluginState"]
        7 GETTABLEKS                       R3 R3 K2 ["Playing"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 FASTCALL1                        ASSERT R1 ; [+2]
       14 GETIMPORT                        R0 K4 [assert]
       16 CALL                             R0 1 0
       17 GETIMPORT                        R2 K6 [plugin]
       19 GETTABLEKS                       R2 R2 K7 ["HostDataModelType"]
       21 GETIMPORT                        R3 K11 [Enum.StudioDataModelType.PlayClient]
       23 JUMPIFEQ                         R2 R3 ; [+2]
       25 LOADB                            R1 0 +1
       26 LOADB                            R1 1
       27 FASTCALL2K                       ASSERT R1 K12 ; [+4]
       29 LOADK                            R2 K12 ["Correct datamodel game state type"]
       30 GETIMPORT                        R0 K4 [assert]
       32 CALL                             R0 2 0
       33 GETUPVAL                         R0 2
       34 NAMECALL                         R0 R0 K13 ["StopPlaying"]
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPluginState"]
        3 CALL                             R0 0 1
        4 LOADB                            R2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["PluginState"]
        8 GETTABLEKS                       R3 R3 K2 ["Default"]
       10 JUMPIFEQ                         R0 R3 ; [+10]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["PluginState"]
       15 GETTABLEKS                       R3 R3 K3 ["ShouldStartPlayback"]
       17 JUMPIFEQ                         R0 R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 FASTCALL1                        ASSERT R2 ; [+2]
       22 GETIMPORT                        R1 K5 [assert]
       24 CALL                             R1 1 0
       25 GETIMPORT                        R3 K7 [plugin]
       27 GETTABLEKS                       R3 R3 K8 ["HostDataModelType"]
       29 GETIMPORT                        R4 K12 [Enum.StudioDataModelType.PlayClient]
       31 JUMPIFEQ                         R3 R4 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 FASTCALL2K                       ASSERT R2 K13 ; [+4]
       37 LOADK                            R3 K13 ["Correct datamodel game state type"]
       38 GETIMPORT                        R1 K5 [assert]
       40 CALL                             R1 2 0
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K14 ["getRoduxState"]
       44 CALL                             R1 0 1
       45 FASTCALL2K                       ASSERT R1 K15 ; [+5]
       47 MOVE                             R3 R1
       48 LOADK                            R4 K15 ["Access rodux state"]
       49 GETIMPORT                        R2 K5 [assert]
       51 CALL                             R2 2 0
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R2 R2 K16 ["getCurrentPlaybackRecordingDataStr"]
       55 CALL                             R2 0 1
       56 FASTCALL2K                       ASSERT R2 K17 ; [+5]
       58 MOVE                             R4 R2
       59 LOADK                            R5 K17 ["Recording data string not found"]
       60 GETIMPORT                        R3 K5 [assert]
       62 CALL                             R3 2 0
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K18 ["setPluginState"]
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R4 R4 K1 ["PluginState"]
       69 GETTABLEKS                       R4 R4 K19 ["Disabled"]
       71 CALL                             R3 1 0
       72 GETUPVAL                         R3 2
       73 DUPTABLE                         R4 K25 [{"mouseMove", "mouseButton", "keyboard", "gamepad", "touch"}]
       74 GETTABLEKS                       R5 R1 K26 ["playbackTabFilter"]
       76 GETTABLEKS                       R5 R5 K20 ["mouseMove"]
       78 SETTABLEKS                       R5 R4 K20 ["mouseMove"]
       80 GETTABLEKS                       R5 R1 K26 ["playbackTabFilter"]
       82 GETTABLEKS                       R5 R5 K27 ["mouseClick"]
       84 SETTABLEKS                       R5 R4 K21 ["mouseButton"]
       86 GETTABLEKS                       R5 R1 K26 ["playbackTabFilter"]
       88 GETTABLEKS                       R5 R5 K22 ["keyboard"]
       90 SETTABLEKS                       R5 R4 K22 ["keyboard"]
       92 GETTABLEKS                       R5 R1 K26 ["playbackTabFilter"]
       94 GETTABLEKS                       R5 R5 K23 ["gamepad"]
       96 SETTABLEKS                       R5 R4 K23 ["gamepad"]
       98 GETTABLEKS                       R5 R1 K26 ["playbackTabFilter"]
      100 GETTABLEKS                       R5 R5 K24 ["touch"]
      102 SETTABLEKS                       R5 R4 K24 ["touch"]
      104 CALL                             R3 1 0
      105 GETUPVAL                         R3 3
      106 CALL                             R3 0 0
      107 GETIMPORT                        R3 K29 [game]
      109 GETTABLEKS                       R3 R3 K30 ["Players"]
      111 GETTABLEKS                       R3 R3 K31 ["LocalPlayer"]
      113 JUMPIFNOTEQKNIL                  R3 ; [+5]
      115 GETIMPORT                        R3 K33 [wait]
      117 CALL                             R3 0 0
      118 JUMPBACK                         ; [-12]
      119 GETIMPORT                        R3 K29 [game]
      121 NAMECALL                         R3 R3 K34 ["IsLoaded"]
      123 CALL                             R3 1 1
      124 JUMPIF                           R3 ; [+7]
      125 GETIMPORT                        R3 K29 [game]
      127 GETTABLEKS                       R3 R3 K35 ["Loaded"]
      129 NAMECALL                         R3 R3 K36 ["Wait"]
      131 CALL                             R3 1 0
      132 GETUPVAL                         R3 0
      133 GETTABLEKS                       R3 R3 K18 ["setPluginState"]
      135 GETUPVAL                         R4 1
      136 GETTABLEKS                       R4 R4 K1 ["PluginState"]
      138 GETTABLEKS                       R4 R4 K37 ["Playing"]
      140 CALL                             R3 1 0
      141 GETUPVAL                         R3 4
      142 CALL                             R3 0 0
      143 GETUPVAL                         R3 5
      144 JUMPIFNOT                        R3 ; [+6]
      145 GETUPVAL                         R3 5
      146 NAMECALL                         R3 R3 K38 ["Disconnect"]
      148 CALL                             R3 1 0
      149 LOADNIL                          R3
      150 SETUPVAL                         R3 5
      151 GETUPVAL                         R3 6
      152 GETTABLEKS                       R3 R3 K39 ["PlaybackCompleted"]
      154 GETUPVAL                         R5 7
      155 NAMECALL                         R3 R3 K40 ["Connect"]
      157 CALL                             R3 2 1
      158 SETUPVAL                         R3 5
      159 GETUPVAL                         R3 6
      160 MOVE                             R5 R2
      161 NAMECALL                         R3 R3 K41 ["StartPlayingJSON"]
      163 CALL                             R3 2 0
      164 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPluginState"]
        3 CALL                             R0 0 1
        4 LOADB                            R2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["PluginState"]
        8 GETTABLEKS                       R3 R3 K2 ["Default"]
       10 JUMPIFEQ                         R0 R3 ; [+10]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["PluginState"]
       15 GETTABLEKS                       R3 R3 K3 ["ShouldStartRecording"]
       17 JUMPIFEQ                         R0 R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 FASTCALL1                        ASSERT R2 ; [+2]
       22 GETIMPORT                        R1 K5 [assert]
       24 CALL                             R1 1 0
       25 GETIMPORT                        R3 K7 [plugin]
       27 GETTABLEKS                       R3 R3 K8 ["HostDataModelType"]
       29 GETIMPORT                        R4 K12 [Enum.StudioDataModelType.PlayClient]
       31 JUMPIFEQ                         R3 R4 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 FASTCALL2K                       ASSERT R2 K13 ; [+4]
       37 LOADK                            R3 K13 ["Correct datamodel game state type"]
       38 GETIMPORT                        R1 K5 [assert]
       40 CALL                             R1 2 0
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K14 ["getRoduxState"]
       44 CALL                             R1 0 1
       45 FASTCALL2K                       ASSERT R1 K15 ; [+5]
       47 MOVE                             R3 R1
       48 LOADK                            R4 K15 ["Access rodux state"]
       49 GETIMPORT                        R2 K5 [assert]
       51 CALL                             R2 2 0
       52 GETUPVAL                         R2 2
       53 NAMECALL                         R2 R2 K16 ["StopRecording"]
       55 CALL                             R2 1 0
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K17 ["setPluginState"]
       59 GETUPVAL                         R3 1
       60 GETTABLEKS                       R3 R3 K1 ["PluginState"]
       62 GETTABLEKS                       R3 R3 K18 ["Disabled"]
       64 CALL                             R2 1 0
       65 GETIMPORT                        R2 K20 [game]
       67 NAMECALL                         R2 R2 K21 ["IsLoaded"]
       69 CALL                             R2 1 1
       70 JUMPIF                           R2 ; [+7]
       71 GETIMPORT                        R2 K20 [game]
       73 GETTABLEKS                       R2 R2 K22 ["Loaded"]
       75 NAMECALL                         R2 R2 K23 ["Wait"]
       77 CALL                             R2 1 0
       78 GETIMPORT                        R2 K20 [game]
       80 GETTABLEKS                       R2 R2 K24 ["Players"]
       82 GETTABLEKS                       R2 R2 K25 ["LocalPlayer"]
       84 JUMPIFNOTEQKNIL                  R2 ; [+11]
       86 GETIMPORT                        R2 K20 [game]
       88 GETTABLEKS                       R2 R2 K24 ["Players"]
       90 GETTABLEKS                       R2 R2 K26 ["PlayerAdded"]
       92 NAMECALL                         R2 R2 K23 ["Wait"]
       94 CALL                             R2 1 0
       95 JUMPBACK                         ; [-18]
       96 GETUPVAL                         R2 0
       97 GETTABLEKS                       R2 R2 K17 ["setPluginState"]
       99 GETUPVAL                         R3 1
      100 GETTABLEKS                       R3 R3 K1 ["PluginState"]
      102 GETTABLEKS                       R3 R3 K27 ["Recording"]
      104 CALL                             R2 1 0
      105 GETIMPORT                        R2 K20 [game]
      107 GETTABLEKS                       R2 R2 K28 ["Workspace"]
      109 GETTABLEKS                       R2 R2 K29 ["CurrentCamera"]
      111 GETTABLEKS                       R2 R2 K30 ["ViewportSize"]
      113 FASTCALL2K                       ASSERT R2 K31 ; [+5]
      115 MOVE                             R4 R2
      116 LOADK                            R5 K31 ["Get viewport resolution"]
      117 GETIMPORT                        R3 K5 [assert]
      119 CALL                             R3 2 0
      120 GETUPVAL                         R3 3
      121 NAMECALL                         R3 R3 K32 ["GetCurrentDeviceId"]
      123 CALL                             R3 1 1
      124 FASTCALL1                        ASSERT R3 ; [+3]
      125 MOVE                             R5 R3
      126 GETIMPORT                        R4 K5 [assert]
      128 CALL                             R4 1 0
      129 GETUPVAL                         R4 3
      130 NAMECALL                         R4 R4 K33 ["GetCurrentOrientation"]
      132 CALL                             R4 1 1
      133 GETTABLEKS                       R4 R4 K34 ["Name"]
      135 FASTCALL1                        ASSERT R4 ; [+3]
      136 MOVE                             R6 R4
      137 GETIMPORT                        R5 K5 [assert]
      139 CALL                             R5 1 0
      140 DUPTABLE                         R5 K38 [{"resolution", "deviceId", "orientation"}]
      141 NEWTABLE                         R6 0 2
      143 GETTABLEKS                       R8 R2 K39 ["x"]
      145 FASTCALL1                        MATH_FLOOR R8 ; [+2]
      146 GETIMPORT                        R7 K42 [math.floor]
      148 CALL                             R7 1 1
      149 GETTABLEKS                       R9 R2 K43 ["y"]
      151 FASTCALL1                        MATH_FLOOR R9 ; [+2]
      152 GETIMPORT                        R8 K42 [math.floor]
      154 CALL                             R8 1 1
      155 SETLIST                          R6 R7 2 [1]
      157 SETTABLEKS                       R6 R5 K35 ["resolution"]
      159 SETTABLEKS                       R3 R5 K36 ["deviceId"]
      161 SETTABLEKS                       R4 R5 K37 ["orientation"]
      163 SETUPVAL                         R5 4
      164 GETUPVAL                         R5 5
      165 DUPTABLE                         R6 K49 [{"mouseMove", "mouseButton", "keyboard", "gamepad", "touch"}]
      166 GETTABLEKS                       R7 R1 K50 ["recordTabFilter"]
      168 GETTABLEKS                       R7 R7 K44 ["mouseMove"]
      170 SETTABLEKS                       R7 R6 K44 ["mouseMove"]
      172 GETTABLEKS                       R7 R1 K50 ["recordTabFilter"]
      174 GETTABLEKS                       R7 R7 K51 ["mouseClick"]
      176 SETTABLEKS                       R7 R6 K45 ["mouseButton"]
      178 GETTABLEKS                       R7 R1 K50 ["recordTabFilter"]
      180 GETTABLEKS                       R7 R7 K46 ["keyboard"]
      182 SETTABLEKS                       R7 R6 K46 ["keyboard"]
      184 GETTABLEKS                       R7 R1 K50 ["recordTabFilter"]
      186 GETTABLEKS                       R7 R7 K47 ["gamepad"]
      188 SETTABLEKS                       R7 R6 K47 ["gamepad"]
      190 GETTABLEKS                       R7 R1 K50 ["recordTabFilter"]
      192 GETTABLEKS                       R7 R7 K48 ["touch"]
      194 SETTABLEKS                       R7 R6 K48 ["touch"]
      196 CALL                             R5 1 0
      197 GETUPVAL                         R5 2
      198 NAMECALL                         R5 R5 K52 ["StartRecording"]
      200 CALL                             R5 1 0
      201 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R2 R1 K1 ["additionalMetadata"]
        8 GETTABLEKS                       R2 R1 K2 ["additionalLuaState"]
       10 JUMPIF                           R2 ; [+7]
       11 NEWTABLE                         R2 0 1
       13 LOADK                            R3 K3 ["dummy state"]
       14 SETLIST                          R2 R3 1 [1]
       16 SETTABLEKS                       R2 R1 K2 ["additionalLuaState"]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K4 ["saveRecordingDataToDM"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K5 ["setPluginState"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K6 ["PluginState"]
       29 GETTABLEKS                       R3 R3 K7 ["Default"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 4
       33 JUMPIFNOT                        R2 ; [+4]
       34 GETUPVAL                         R2 4
       35 NAMECALL                         R2 R2 K8 ["Disconnect"]
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getPluginState"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["PluginState"]
        7 GETTABLEKS                       R3 R3 K2 ["Recording"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 FASTCALL1                        ASSERT R1 ; [+2]
       14 GETIMPORT                        R0 K4 [assert]
       16 CALL                             R0 1 0
       17 LOADNIL                          R0
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K5 ["RecordingCompleted"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          REF R0
       27 NAMECALL                         R1 R1 K6 ["Connect"]
       29 CALL                             R1 2 1
       30 MOVE                             R0 R1
       31 GETUPVAL                         R1 2
       32 NAMECALL                         R1 R1 K7 ["StopRecording"]
       34 CALL                             R1 1 0
       35 CLOSEUPVALS                      R0
       36 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPluginState"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["PluginState"]
        7 GETTABLEKS                       R1 R1 K2 ["ShouldStartRecording"]
        9 JUMPIFNOTEQ                      R0 R1 ; [+4]
       11 GETUPVAL                         R1 2
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K1 ["PluginState"]
       17 GETTABLEKS                       R1 R1 K3 ["ShouldStartPlayback"]
       19 JUMPIFNOTEQ                      R0 R1 ; [+3]
       21 GETUPVAL                         R1 3
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K1 [plugin]
        2 GETTABLEKS                       R1 R1 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIFNOT                        R1 ; [+84]
        5 GETIMPORT                        R1 K6 [Enum.StudioDataModelType.Edit]
        7 JUMPIFNOTEQ                      R0 R1 ; [+81]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K7 ["setIsPlayMode"]
       12 LOADB                            R2 0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K8 ["getPluginState"]
       17 CALL                             R1 0 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K9 ["PluginState"]
       21 GETTABLEKS                       R2 R2 K10 ["Recording"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+4]
       25 GETUPVAL                         R2 2
       26 CALL                             R2 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K9 ["PluginState"]
       31 GETTABLEKS                       R2 R2 K11 ["Playing"]
       33 JUMPIFNOTEQ                      R1 R2 ; [+39]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K8 ["getPluginState"]
       38 CALL                             R4 0 1
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K9 ["PluginState"]
       42 GETTABLEKS                       R5 R5 K11 ["Playing"]
       44 JUMPIFEQ                         R4 R5 ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 FASTCALL1                        ASSERT R3 ; [+2]
       49 GETIMPORT                        R2 K13 [assert]
       51 CALL                             R2 1 0
       52 GETIMPORT                        R4 K1 [plugin]
       54 GETTABLEKS                       R4 R4 K14 ["HostDataModelType"]
       56 GETIMPORT                        R5 K16 [Enum.StudioDataModelType.PlayClient]
       58 JUMPIFEQ                         R4 R5 ; [+2]
       60 LOADB                            R3 0 +1
       61 LOADB                            R3 1
       62 FASTCALL2K                       ASSERT R3 K17 ; [+4]
       64 LOADK                            R4 K17 ["Correct datamodel game state type"]
       65 GETIMPORT                        R2 K13 [assert]
       67 CALL                             R2 2 0
       68 GETUPVAL                         R2 3
       69 NAMECALL                         R2 R2 K18 ["StopPlaying"]
       71 CALL                             R2 1 0
       72 RETURN                           R0 0
       73 GETUPVAL                         R2 1
       74 GETTABLEKS                       R2 R2 K9 ["PluginState"]
       76 GETTABLEKS                       R2 R2 K19 ["Disabled"]
       78 JUMPIFNOTEQ                      R1 R2 ; [+10]
       80 GETUPVAL                         R2 0
       81 GETTABLEKS                       R2 R2 K20 ["setPluginState"]
       83 GETUPVAL                         R3 1
       84 GETTABLEKS                       R3 R3 K9 ["PluginState"]
       86 GETTABLEKS                       R3 R3 K21 ["Default"]
       88 CALL                             R2 1 0
       89 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setupPlayClientDMEventListeners"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["connectToStartRecordButtonClicked"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K2 ["connectToStopRecordButtonClicked"]
       12 GETUPVAL                         R1 2
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K3 ["connectToStartPlaybackButtonClicked"]
       17 GETUPVAL                         R1 3
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K4 ["connectToStopPlaybackButtonClicked"]
       22 GETUPVAL                         R1 4
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 5
       25 GETTABLEKS                       R0 R0 K5 ["FocusedDataModelSession"]
       27 GETTABLEKS                       R1 R0 K6 ["CurrentDataModelTypeAboutToChange"]
       29 DUPCLOSURE                       R3 K7 [PROTO_13]
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U7
       34 NAMECALL                         R1 R1 K8 ["Connect"]
       36 CALL                             R1 2 0
       37 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setIsPlayMode"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["onPlayClientSessionStarted"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelType"]
        4 GETIMPORT                        R1 K6 [Enum.StudioDataModelType.PlayClient]
        6 JUMPIFNOTEQ                      R0 R1 ; [+29]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K7 ["EnableDeveloperTools"]
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+23]
       13 GETIMPORT                        R0 K9 [require]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K10 ["Packages"]
       18 GETTABLEKS                       R1 R1 K11 ["DeveloperTools"]
       20 CALL                             R0 1 1
       21 GETTABLEKS                       R0 R0 K12 ["forPlugin"]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K13 ["Name"]
       26 GETIMPORT                        R2 K1 [plugin]
       28 CALL                             R0 2 1
       29 SETUPVAL                         R0 1
       30 GETUPVAL                         R0 1
       31 GETIMPORT                        R2 K1 [plugin]
       33 NAMECALL                         R0 R0 K14 ["addPluginRouter"]
       35 CALL                             R0 2 0
       36 GETIMPORT                        R0 K1 [plugin]
       38 GETTABLEKS                       R0 R0 K2 ["HostDataModelType"]
       40 GETIMPORT                        R1 K16 [Enum.StudioDataModelType.Edit]
       42 JUMPIFNOTEQ                      R0 R1 ; [+6]
       44 GETUPVAL                         R0 3
       45 GETTABLEKS                       R0 R0 K17 ["setupEditDMEventListeners"]
       47 CALL                             R0 0 0
       48 RETURN                           R0 0
       49 GETIMPORT                        R0 K1 [plugin]
       51 GETTABLEKS                       R0 R0 K2 ["HostDataModelType"]
       53 GETIMPORT                        R1 K6 [Enum.StudioDataModelType.PlayClient]
       55 JUMPIFNOTEQ                      R0 R1 ; [+40]
       57 GETUPVAL                         R0 3
       58 GETTABLEKS                       R0 R0 K18 ["getPluginEnabled"]
       60 CALL                             R0 0 1
       61 JUMPIFNOT                        R0 ; [+34]
       62 GETUPVAL                         R0 3
       63 GETTABLEKS                       R0 R0 K19 ["setIsPlayMode"]
       65 LOADB                            R1 1
       66 CALL                             R0 1 0
       67 GETUPVAL                         R0 4
       68 CALL                             R0 0 0
       69 GETUPVAL                         R0 3
       70 GETTABLEKS                       R0 R0 K20 ["onPlayClientSessionStarted"]
       72 CALL                             R0 0 0
       73 GETUPVAL                         R0 3
       74 GETTABLEKS                       R0 R0 K21 ["getPluginState"]
       76 CALL                             R0 0 1
       77 GETUPVAL                         R1 5
       78 GETTABLEKS                       R1 R1 K22 ["PluginState"]
       80 GETTABLEKS                       R1 R1 K23 ["ShouldStartRecording"]
       82 JUMPIFNOTEQ                      R0 R1 ; [+4]
       84 GETUPVAL                         R1 6
       85 CALL                             R1 0 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R1 5
       88 GETTABLEKS                       R1 R1 K22 ["PluginState"]
       90 GETTABLEKS                       R1 R1 K24 ["ShouldStartPlayback"]
       92 JUMPIFNOTEQ                      R0 R1 ; [+3]
       94 GETUPVAL                         R1 7
       95 CALL                             R1 0 0
       96 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FocusedDataModelSession"]
        3 GETTABLEKS                       R1 R0 K1 ["CurrentDataModelTypeAboutToChange"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 NAMECALL                         R1 R1 K2 ["Connect"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 2
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [pcall]
        3 DUPCLOSURE                       R1 K2 [PROTO_0]
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+1]
        6 LOADB                            R1 0
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R2 K4 [script]
       11 GETTABLEKS                       R2 R2 K5 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["Parent"]
       15 GETTABLEKS                       R3 R2 K6 ["Common"]
       17 GETIMPORT                        R4 K8 [require]
       19 GETTABLEKS                       R5 R3 K9 ["commonInit"]
       21 CALL                             R4 1 1
       22 MOVE                             R5 R4
       23 CALL                             R5 0 0
       24 GETIMPORT                        R5 K8 [require]
       26 GETTABLEKS                       R6 R2 K10 ["Src"]
       28 GETTABLEKS                       R6 R6 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["DebugFlags"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R5 K13 ["RunningUnderCLI"]
       35 CALL                             R6 0 1
       36 JUMPIFNOT                        R6 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R6 K15 [game]
       40 LOADK                            R8 K16 ["VirtualInputManager"]
       41 NAMECALL                         R6 R6 K17 ["GetService"]
       43 CALL                             R6 2 1
       44 GETIMPORT                        R7 K15 [game]
       46 LOADK                            R9 K18 ["StudioDeviceEmulatorService"]
       47 NAMECALL                         R7 R7 K17 ["GetService"]
       49 CALL                             R7 2 1
       50 GETIMPORT                        R8 K15 [game]
       52 LOADK                            R10 K19 ["HttpService"]
       53 NAMECALL                         R8 R8 K17 ["GetService"]
       55 CALL                             R8 2 1
       56 GETIMPORT                        R9 K15 [game]
       58 LOADK                            R11 K20 ["CoreGui"]
       59 NAMECALL                         R9 R9 K17 ["GetService"]
       61 CALL                             R9 2 1
       62 GETIMPORT                        R10 K15 [game]
       64 LOADK                            R12 K21 ["UserInputService"]
       65 NAMECALL                         R10 R10 K17 ["GetService"]
       67 CALL                             R10 2 1
       68 GETIMPORT                        R11 K23 [plugin]
       70 GETTABLEKS                       R11 R11 K24 ["MultipleDocumentInterfaceInstance"]
       72 GETIMPORT                        R12 K8 [require]
       74 GETTABLEKS                       R13 R2 K10 ["Src"]
       76 GETTABLEKS                       R13 R13 K11 ["Util"]
       78 GETTABLEKS                       R13 R13 K25 ["DMBridge"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K8 [require]
       83 GETTABLEKS                       R14 R2 K10 ["Src"]
       85 GETTABLEKS                       R14 R14 K26 ["Types"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K8 [require]
       90 GETTABLEKS                       R15 R2 K10 ["Src"]
       92 GETTABLEKS                       R15 R15 K11 ["Util"]
       94 GETTABLEKS                       R15 R15 K27 ["Enums"]
       96 CALL                             R14 1 1
       97 LOADNIL                          R15
       98 LOADNIL                          R16
       99 LOADNIL                          R17
      100 LOADNIL                          R18
      101 LOADNIL                          R19
      102 LOADNIL                          R20
      103 LOADNIL                          R21
      104 GETTABLEKS                       R22 R12 K28 ["setPluginObject"]
      106 GETIMPORT                        R23 K23 [plugin]
      108 CALL                             R22 1 0
      109 LOADNIL                          R22
      110 NEWCLOSURE                       R23 P1
      111 CAPTURE                          REF R16
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R6
      114 DUPCLOSURE                       R24 K29 [PROTO_2]
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R7
      117 LOADNIL                          R25
      118 NEWCLOSURE                       R26 P3
      119 CAPTURE                          REF R25
      120 LOADNIL                          R27
      121 NEWCLOSURE                       R28 P4
      122 CAPTURE                          REF R15
      123 CAPTURE                          VAL R2
      124 CAPTURE                          REF R17
      125 CAPTURE                          REF R18
      126 CAPTURE                          REF R19
      127 CAPTURE                          REF R20
      128 CAPTURE                          REF R21
      129 CAPTURE                          REF R27
      130 CAPTURE                          VAL R9
      131 NEWCLOSURE                       R29 P5
      132 CAPTURE                          REF R17
      133 CAPTURE                          VAL R2
      134 CAPTURE                          REF R27
      135 NEWCLOSURE                       R30 P6
      136 CAPTURE                          REF R25
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R14
      139 CAPTURE                          REF R17
      140 CAPTURE                          VAL R2
      141 CAPTURE                          REF R27
      142 CAPTURE                          VAL R10
      143 DUPCLOSURE                       R31 K30 [PROTO_7]
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R6
      147 NEWCLOSURE                       R32 P8
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R23
      151 CAPTURE                          VAL R28
      152 CAPTURE                          VAL R24
      153 CAPTURE                          REF R25
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R30
      156 NEWCLOSURE                       R33 P9
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R7
      161 CAPTURE                          REF R22
      162 CAPTURE                          VAL R23
      163 NEWCLOSURE                       R34 P10
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R8
      168 CAPTURE                          REF R22
      169 DUPCLOSURE                       R35 K31 [PROTO_12]
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R33
      173 CAPTURE                          VAL R32
      174 DUPCLOSURE                       R36 K32 [PROTO_14]
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R33
      177 CAPTURE                          VAL R34
      178 CAPTURE                          VAL R32
      179 CAPTURE                          VAL R31
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R6
      183 DUPCLOSURE                       R37 K33 [PROTO_15]
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R36
      186 LOADNIL                          R38
      187 NEWCLOSURE                       R39 P14
      188 CAPTURE                          VAL R5
      189 CAPTURE                          REF R38
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R36
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R33
      195 CAPTURE                          VAL R32
      196 NEWCLOSURE                       R40 P15
      197 CAPTURE                          VAL R11
      198 CAPTURE                          REF R38
      199 CAPTURE                          VAL R39
      200 GETTABLEKS                       R41 R11 K34 ["FocusedDataModelSession"]
      202 GETTABLEKS                       R42 R41 K35 ["CurrentDataModelTypeAboutToChange"]
      204 NEWCLOSURE                       R44 P16
      205 CAPTURE                          REF R38
      206 NAMECALL                         R42 R42 K36 ["Connect"]
      208 CALL                             R42 2 0
      209 MOVE                             R42 R39
      210 CALL                             R42 0 0
      211 CLOSEUPVALS                      R15
      212 RETURN                           R0 0
