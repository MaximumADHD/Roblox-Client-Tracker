PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETTABLEKS                       R2 R0 K0 ["platform"]
        5 GETIMPORT                        R3 K4 [Enum.Platform.Android]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETTABLEKS                       R2 R0 K0 ["deviceId"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["DEFAULT_DEVICE_ID"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Checked"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["BindToChangedAsync"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R1 R0 K1 ["Connect"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 3
       11 JUMPIFNOT                        R2 ; [+4]
       12 NAMECALL                         R2 R1 K2 ["Disconnect"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 SETUPVAL                         R1 4
       17 GETUPVAL                         R3 0
       18 NEWTABLE                         R5 0 1
       20 GETUPVAL                         R6 1
       21 SETLIST                          R5 R6 1 [1]
       23 NAMECALL                         R3 R3 K3 ["GetAsync"]
       25 CALL                             R3 2 1
       26 GETTABLEN                        R2 R3 1
       27 JUMPIFNOT                        R2 ; [+6]
       28 GETUPVAL                         R3 3
       29 JUMPIF                           R3 ; [+4]
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R4 R2 K4 ["Checked"]
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 2
        9 JUMPIF                           R0 ; [+10]
       10 GETIMPORT                        R2 K3 [warn]
       12 LOADK                            R4 K4 ["[DeviceSimulatorToolbar] Failed to synchronize controller emulator state: "]
       13 FASTCALL1                        TOSTRING R1 ; [+3]
       14 MOVE                             R6 R1
       15 GETIMPORT                        R5 K6 [tostring]
       17 CALL                             R5 1 1
       18 CONCAT                           R3 R4 R5
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 0
        1 LOADNIL                          R1
        2 GETIMPORT                        R2 K2 [task.spawn]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          REF R0
        9 CAPTURE                          REF R1
       10 CALL                             R2 1 0
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          REF R0
       13 CAPTURE                          REF R1
       14 CLOSEUPVALS                      R0
       15 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["RotateDeviceToNextPosAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+10]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R4 K4 ["[DeviceSimulatorToolbar] Failed to rotate device: "]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R6 R1
       11 GETIMPORT                        R5 K6 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R3 R4 R5
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["MockBackButtonPressedAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+10]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R4 K4 ["[DeviceSimulatorToolbar] Failed to press Back: "]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R6 R1
       11 GETIMPORT                        R5 K6 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R3 R4 R5
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+10]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R4 K4 ["[DeviceSimulatorToolbar] Failed to toggle controller emulator: "]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K6 [tostring]
       14 CALL                             R5 1 1
       15 CONCAT                           R3 R4 R5
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["activeCategory"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["Category"]
        7 GETTABLEKS                       R4 R4 K2 ["PHONE_TABLET"]
        9 JUMPIFEQ                         R2 R4 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETTABLEKS                       R4 R0 K3 ["simulatorService"]
       15 GETTABLEKS                       R5 R0 K4 ["actions"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K5 ["useState"]
       20 LOADB                            R7 0
       21 CALL                             R6 1 2
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K6 ["useEffect"]
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          VAL R5
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R7
       29 NEWTABLE                         R10 0 1
       31 MOVE                             R11 R5
       32 SETLIST                          R10 R11 1 [1]
       34 CALL                             R8 2 0
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       38 NEWCLOSURE                       R9 P1
       39 CAPTURE                          VAL R4
       40 NEWTABLE                         R10 0 1
       42 MOVE                             R11 R4
       43 SETLIST                          R10 R11 1 [1]
       45 CALL                             R8 2 1
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       49 NEWCLOSURE                       R10 P2
       50 CAPTURE                          VAL R4
       51 NEWTABLE                         R11 0 1
       53 MOVE                             R12 R4
       54 SETLIST                          R11 R12 1 [1]
       56 CALL                             R9 2 1
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       60 NEWCLOSURE                       R11 P3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          UPVAL U3
       63 NEWTABLE                         R12 0 1
       65 MOVE                             R13 R5
       66 SETLIST                          R12 R13 1 [1]
       68 CALL                             R10 2 1
       69 NEWTABLE                         R11 8 0
       71 LOADN                            R12 0
       72 JUMPIFNOT                        R3 ; [+70]
       73 ADDK                             R12 R12 K8 [1]
       74 GETUPVAL                         R13 2
       75 GETTABLEKS                       R13 R13 K9 ["createElement"]
       77 GETUPVAL                         R14 4
       78 DUPTABLE                         R15 K17 [{["LayoutOrder"], ["testId"] = "Rotate", ["iconAsset"] = "rbxasset://textures/DeviceEmulator/sim_rotate@32.png", ["tooltipText"], ["onActivated"]}]
       79 SETTABLEKS                       R12 R15 K10 ["LayoutOrder"]
       81 LOADK                            R18 K18 ["Toolbar"]
       82 LOADK                            R19 K12 ["Rotate"]
       83 NAMECALL                         R16 R1 K19 ["getText"]
       85 CALL                             R16 3 1
       86 SETTABLEKS                       R16 R15 K15 ["tooltipText"]
       88 SETTABLEKS                       R8 R15 K16 ["onActivated"]
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R11 K12 ["Rotate"]
       93 GETTABLEKS                       R14 R0 K20 ["currentDevice"]
       95 JUMPIF                           R14 ; [+2]
       96 LOADB                            R13 0
       97 JUMP                             ; [+8]
       98 GETTABLEKS                       R15 R14 K21 ["platform"]
      100 GETIMPORT                        R16 K25 [Enum.Platform.Android]
      102 JUMPIFEQ                         R15 R16 ; [+2]
      104 LOADB                            R13 0 +1
      105 LOADB                            R13 1
      106 JUMPIFNOT                        R13 ; [+25]
      107 ADDK                             R12 R12 K8 [1]
      108 GETUPVAL                         R13 2
      109 GETTABLEKS                       R13 R13 K9 ["createElement"]
      111 GETUPVAL                         R14 4
      112 DUPTABLE                         R15 K29 [{["LayoutOrder"], ["testId"] = "Back", ["iconAsset"] = "rbxasset://textures/DeviceEmulator/sim_back@32.png", ["tooltipText"], ["isDisabled"], ["onActivated"]}]
      113 SETTABLEKS                       R12 R15 K10 ["LayoutOrder"]
      115 LOADK                            R18 K18 ["Toolbar"]
      116 LOADK                            R19 K26 ["Back"]
      117 NAMECALL                         R16 R1 K19 ["getText"]
      119 CALL                             R16 3 1
      120 SETTABLEKS                       R16 R15 K15 ["tooltipText"]
      122 GETTABLEKS                       R17 R0 K30 ["isClientView"]
      124 NOT                              R16 R17
      125 SETTABLEKS                       R16 R15 K28 ["isDisabled"]
      127 SETTABLEKS                       R9 R15 K16 ["onActivated"]
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R11 K26 ["Back"]
      132 ADDK                             R12 R12 K8 [1]
      133 GETUPVAL                         R13 2
      134 GETTABLEKS                       R13 R13 K9 ["createElement"]
      136 GETUPVAL                         R14 5
      137 DUPTABLE                         R15 K32 [{["LayoutOrder"], ["testId"] = "Touch"}]
      138 SETTABLEKS                       R12 R15 K10 ["LayoutOrder"]
      140 CALL                             R13 2 1
      141 SETTABLEKS                       R13 R11 K31 ["Touch"]
      143 ADDK                             R12 R12 K8 [1]
      144 GETUPVAL                         R13 2
      145 GETTABLEKS                       R13 R13 K9 ["createElement"]
      147 GETUPVAL                         R14 4
      148 DUPTABLE                         R15 K36 [{["LayoutOrder"], ["testId"] = "VirtualController", ["iconAsset"] = "rbxasset://textures/DeviceEmulator/sim_virtual_controller@32.png", ["tooltipText"], ["pressed"], ["onActivated"]}]
      149 SETTABLEKS                       R12 R15 K10 ["LayoutOrder"]
      151 LOADK                            R18 K18 ["Toolbar"]
      152 LOADK                            R19 K33 ["VirtualController"]
      153 NAMECALL                         R16 R1 K19 ["getText"]
      155 CALL                             R16 3 1
      156 SETTABLEKS                       R16 R15 K15 ["tooltipText"]
      158 SETTABLEKS                       R6 R15 K35 ["pressed"]
      160 SETTABLEKS                       R10 R15 K16 ["onActivated"]
      162 CALL                             R13 2 1
      163 SETTABLEKS                       R13 R11 K33 ["VirtualController"]
      165 GETTABLEKS                       R14 R0 K20 ["currentDevice"]
      167 JUMPIF                           R14 ; [+2]
      168 LOADB                            R13 0
      169 JUMP                             ; [+9]
      170 GETTABLEKS                       R15 R14 K37 ["deviceId"]
      172 GETUPVAL                         R16 6
      173 GETTABLEKS                       R16 R16 K38 ["DEFAULT_DEVICE_ID"]
      175 JUMPIFNOTEQ                      R15 R16 ; [+2]
      177 LOADB                            R13 0 +1
      178 LOADB                            R13 1
      179 JUMPIFNOT                        R13 ; [+41]
      180 ADDK                             R12 R12 K8 [1]
      181 GETUPVAL                         R13 7
      182 GETTABLEKS                       R13 R13 K39 ["getEngineFeatureStudioDeviceEmulatorDefaultScreenDpiFromSystem"]
      184 CALL                             R13 0 1
      185 GETUPVAL                         R14 2
      186 GETTABLEKS                       R14 R14 K9 ["createElement"]
      188 GETUPVAL                         R15 8
      189 DUPTABLE                         R16 K45 [{"LayoutOrder", "mode", "onModeChanged", "onCalibrate", "onToggleAutoDetect", "isAutoDetectScaling"}]
      190 SETTABLEKS                       R12 R16 K10 ["LayoutOrder"]
      192 GETTABLEKS                       R17 R0 K46 ["scalingMode"]
      194 SETTABLEKS                       R17 R16 K40 ["mode"]
      196 GETTABLEKS                       R17 R0 K47 ["onScalingModeChanged"]
      198 SETTABLEKS                       R17 R16 K41 ["onModeChanged"]
      200 GETTABLEKS                       R17 R0 K48 ["onCalibrateScaling"]
      202 SETTABLEKS                       R17 R16 K42 ["onCalibrate"]
      204 JUMPIFNOT                        R13 ; [+3]
      205 GETTABLEKS                       R17 R0 K49 ["onToggleAutoDetectScaling"]
      207 JUMP                             ; [+1]
      208 LOADNIL                          R17
      209 SETTABLEKS                       R17 R16 K43 ["onToggleAutoDetect"]
      211 JUMPIFNOT                        R13 ; [+3]
      212 GETTABLEKS                       R17 R0 K44 ["isAutoDetectScaling"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R17
      216 SETTABLEKS                       R17 R16 K44 ["isAutoDetectScaling"]
      218 CALL                             R14 2 1
      219 SETTABLEKS                       R14 R11 K50 ["Scaling"]
      221 GETUPVAL                         R13 2
      222 GETTABLEKS                       R13 R13 K9 ["createElement"]
      224 GETUPVAL                         R14 9
      225 DUPTABLE                         R15 K53 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xxsmall auto-xy"}]
      226 GETTABLEKS                       R16 R0 K10 ["LayoutOrder"]
      228 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      230 MOVE                             R16 R11
      231 CALL                             R13 3 -1
      232 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["DeviceConstants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K12 ["Parent"]
       36 GETTABLEKS                       R6 R6 K13 ["ImageIconButton"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K12 ["Parent"]
       45 GETTABLEKS                       R7 R7 K12 ["Parent"]
       47 GETTABLEKS                       R7 R7 K14 ["DeviceModel"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETIMPORT                        R8 K1 [script]
       54 GETTABLEKS                       R8 R8 K12 ["Parent"]
       56 GETTABLEKS                       R8 R8 K15 ["ScalingControl"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETIMPORT                        R9 K1 [script]
       63 GETTABLEKS                       R9 R9 K12 ["Parent"]
       65 GETTABLEKS                       R9 R9 K16 ["TouchPopover"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K10 ["Src"]
       72 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       74 GETTABLEKS                       R10 R10 K18 ["useLocalization"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R0 K19 ["Bin"]
       81 GETTABLEKS                       R11 R11 K20 ["Common"]
       83 GETTABLEKS                       R11 R11 K21 ["defineLuaFlags"]
       85 CALL                             R10 1 1
       86 DUPTABLE                         R11 K30 [{["DataModel"] = "Standalone", ["PluginId"] = "ControlsEmulator", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       87 DUPCLOSURE                       R12 K31 [PROTO_0]
       88 DUPCLOSURE                       R13 K32 [PROTO_1]
       89 CAPTURE                          VAL R6
       90 DUPCLOSURE                       R14 K33 [PROTO_16]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R3
      101 RETURN                           R14 1
