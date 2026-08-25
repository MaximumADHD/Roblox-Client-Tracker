PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R4 0 1
        4 JUMPIF                           R4 ; [+1]
        5 RETURN                           R0 0
        6 MOVE                             R4 R0
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETUPVAL                         R9 1
       11 GETTABLEKS                       R9 R9 K1 ["makeControlPath"]
       13 MOVE                             R10 R1
       14 MOVE                             R11 R7
       15 CALL                             R9 2 1
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R10 R10 K2 ["makeControlKey"]
       19 MOVE                             R11 R8
       20 MOVE                             R12 R9
       21 CALL                             R10 2 1
       22 GETTABLEKS                       R11 R8 K3 ["Type"]
       24 JUMPIFNOTEQKS                    R11 K4 ["Section"] ; [+9]
       26 GETUPVAL                         R11 2
       27 GETTABLEKS                       R12 R8 K5 ["Controls"]
       29 MOVE                             R13 R9
       30 MOVE                             R14 R2
       31 MOVE                             R15 R3
       32 CALL                             R11 4 0
       33 JUMP                             ; [+9]
       34 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       36 MOVE                             R12 R2
       37 MOVE                             R13 R10
       38 GETIMPORT                        R11 K8 [table.insert]
       40 CALL                             R11 2 0
       41 LOADB                            R11 1
       42 SETTABLE                         R11 R3 R10
       43 GETTABLEKS                       R11 R8 K3 ["Type"]
       45 JUMPIFNOTEQKS                    R11 K9 ["Dropdown"] ; [+12]
       47 GETTABLEKS                       R11 R8 K10 ["BundledControls"]
       49 JUMPIFEQKNIL                     R11 ; [+8]
       51 GETUPVAL                         R11 2
       52 GETTABLEKS                       R12 R8 K10 ["BundledControls"]
       54 MOVE                             R13 R9
       55 MOVE                             R14 R2
       56 MOVE                             R15 R3
       57 CALL                             R11 4 0
       58 FORGLOOP                         R4 2 ; [-49]
       60 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 NEWTABLE                         R2 0 0
        9 NEWTABLE                         R3 0 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R5 R0 K1 ["BundledControls"]
       14 JUMPIF                           R5 ; [+2]
       15 NEWTABLE                         R5 0 0
       17 LOADNIL                          R6
       18 MOVE                             R7 R2
       19 MOVE                             R8 R3
       20 CALL                             R4 4 0
       21 DUPTABLE                         R4 K6 [{"control", "controlId", "bundledControlIds", "bundledControlIdSet"}]
       22 SETTABLEKS                       R0 R4 K2 ["control"]
       24 SETTABLEKS                       R1 R4 K3 ["controlId"]
       26 SETTABLEKS                       R2 R4 K4 ["bundledControlIds"]
       28 SETTABLEKS                       R3 R4 K5 ["bundledControlIdSet"]
       30 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K1 ["makeControlPath"]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R5
       16 CALL                             R7 2 1
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K2 ["makeControlKey"]
       20 MOVE                             R9 R6
       21 MOVE                             R10 R7
       22 CALL                             R8 2 1
       23 GETTABLEKS                       R9 R6 K3 ["Type"]
       25 JUMPIFNOTEQKS                    R9 K4 ["Dropdown"] ; [+20]
       27 GETTABLEKS                       R9 R6 K5 ["AllowUserSavedPresets"]
       29 JUMPIFEQKB                       R9 TRUE ; [+11]
       31 GETTABLEKS                       R9 R6 K6 ["Presets"]
       33 JUMPIFEQKNIL                     R9 ; [+12]
       35 GETTABLEKS                       R10 R6 K6 ["Presets"]
       37 LENGTH                           R9 R10
       38 LOADN                            R10 0
       39 JUMPIFNOTLT                      R10 R9 ; [+6]
       41 GETUPVAL                         R9 2
       42 MOVE                             R10 R6
       43 MOVE                             R11 R8
       44 CALL                             R9 2 1
       45 RETURN                           R9 1
       46 GETTABLEKS                       R10 R6 K3 ["Type"]
       48 JUMPIFNOTEQKS                    R10 K7 ["Section"] ; [+7]
       50 GETUPVAL                         R9 3
       51 GETTABLEKS                       R10 R6 K8 ["Controls"]
       53 MOVE                             R11 R7
       54 CALL                             R9 2 1
       55 JUMP                             ; [+15]
       56 GETTABLEKS                       R10 R6 K3 ["Type"]
       58 JUMPIFNOTEQKS                    R10 K4 ["Dropdown"] ; [+11]
       60 GETTABLEKS                       R10 R6 K9 ["BundledControls"]
       62 JUMPIFEQKNIL                     R10 ; [+7]
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R10 R6 K9 ["BundledControls"]
       67 MOVE                             R11 R7
       68 CALL                             R9 2 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R9
       71 JUMPIFEQKNIL                     R9 ; [+2]
       73 RETURN                           R9 1
       74 FORGLOOP                         R2 2 ; [-64]
       76 LOADNIL                          R2
       77 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 CALL                             R1 2 1
       11 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R0 K1 ["control"]
        9 GETTABLEKS                       R2 R2 K2 ["Presets"]
       11 JUMPIF                           R2 ; [+2]
       12 NEWTABLE                         R2 0 0
       14 GETIMPORT                        R3 K4 [ipairs]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 3
       18 FORGPREP_INEXT                   R3
       19 GETTABLEKS                       R8 R7 K5 ["Name"]
       21 JUMPIFNOTEQ                      R8 R1 ; [+2]
       23 RETURN                           R7 1
       24 FORGLOOP                         R3 2 [inext] ; [-6]
       26 LOADNIL                          R3
       27 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R4 0 1
        4 JUMPIF                           R4 ; [+2]
        5 LOADB                            R4 0
        6 RETURN                           R4 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["findPreset"]
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 CALL                             R4 2 1
       13 JUMPIFNOTEQKNIL                  R4 ; [+3]
       15 LOADB                            R5 0
       16 RETURN                           R5 1
       17 NEWTABLE                         R5 0 0
       19 GETTABLEKS                       R6 R4 K2 ["Values"]
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 FORGPREP                         R6
       24 GETTABLEKS                       R12 R10 K3 ["ControlId"]
       26 FASTCALL1                        TYPE R12 ; [+2]
       27 GETIMPORT                        R11 K5 [type]
       29 CALL                             R11 1 1
       30 JUMPIFNOTEQKS                    R11 K6 ["string"] ; [+14]
       32 GETTABLEKS                       R12 R0 K7 ["bundledControlIdSet"]
       34 GETTABLEKS                       R13 R10 K3 ["ControlId"]
       36 GETTABLE                         R11 R12 R13
       37 JUMPIFNOT                        R11 ; [+7]
       38 GETUPVAL                         R11 1
       39 GETTABLEKS                       R11 R11 K8 ["isControlValue"]
       41 GETTABLEKS                       R12 R10 K9 ["Value"]
       43 CALL                             R11 1 1
       44 JUMPIF                           R11 ; [+2]
       45 LOADB                            R11 0
       46 RETURN                           R11 1
       47 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       49 MOVE                             R12 R5
       50 MOVE                             R13 R10
       51 GETIMPORT                        R11 K12 [table.insert]
       53 CALL                             R11 2 0
       54 FORGLOOP                         R6 2 ; [-31]
       56 MOVE                             R6 R2
       57 CALL                             R6 0 0
       58 MOVE                             R6 R5
       59 LOADNIL                          R7
       60 LOADNIL                          R8
       61 FORGPREP                         R6
       62 MOVE                             R11 R3
       63 GETTABLEKS                       R12 R10 K3 ["ControlId"]
       65 GETTABLEKS                       R13 R10 K9 ["Value"]
       67 CALL                             R11 2 0
       68 FORGLOOP                         R6 2 ; [-7]
       70 MOVE                             R6 R3
       71 GETTABLEKS                       R7 R0 K13 ["controlId"]
       73 MOVE                             R8 R1
       74 CALL                             R6 2 0
       75 LOADB                            R6 1
       76 RETURN                           R6 1

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R5 0 1
        4 JUMPIF                           R5 ; [+2]
        5 LOADB                            R5 0
        6 RETURN                           R5 1
        7 NEWTABLE                         R5 0 0
        9 GETTABLEKS                       R6 R0 K1 ["bundledControlIds"]
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 FORGPREP                         R6
       14 GETTABLE                         R11 R2 R10
       15 JUMPIFNOTEQKNIL                  R11 ; [+3]
       17 LOADB                            R12 0
       18 RETURN                           R12 1
       19 DUPTABLE                         R14 K4 [{"controlId", "value"}]
       20 SETTABLEKS                       R10 R14 K2 ["controlId"]
       22 SETTABLEKS                       R11 R14 K3 ["value"]
       24 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       26 MOVE                             R13 R5
       27 GETIMPORT                        R12 K7 [table.insert]
       29 CALL                             R12 2 0
       30 FORGLOOP                         R6 2 ; [-17]
       32 MOVE                             R6 R3
       33 CALL                             R6 0 0
       34 MOVE                             R6 R5
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 FORGPREP                         R6
       38 MOVE                             R11 R4
       39 GETTABLEKS                       R12 R10 K2 ["controlId"]
       41 GETTABLEKS                       R13 R10 K3 ["value"]
       43 CALL                             R11 2 0
       44 FORGLOOP                         R6 2 ; [-7]
       46 MOVE                             R6 R4
       47 GETTABLEKS                       R7 R0 K2 ["controlId"]
       49 MOVE                             R8 R1
       50 CALL                             R6 2 0
       51 LOADB                            R6 1
       52 RETURN                           R6 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+3]
        5 NEWTABLE                         R2 0 0
        7 RETURN                           R2 1
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R0 K1 ["bundledControlIds"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETTABLE                         R8 R1 R7
       16 JUMPIFEQKNIL                     R8 ; [+2]
       18 SETTABLE                         R8 R2 R7
       19 FORGLOOP                         R3 2 ; [-5]
       21 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 FASTCALL1                        TYPE R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K2 [type]
       11 CALL                             R1 1 1
       12 LOADB                            R2 1
       13 JUMPIFEQKS                       R1 K3 ["string"] ; [+8]
       15 LOADB                            R2 1
       16 JUMPIFEQKS                       R1 K4 ["number"] ; [+5]
       18 JUMPIFEQKS                       R1 K5 ["boolean"] ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K9 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["controlAdapter"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K9 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["Types"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 8 0
       36 DUPCLOSURE                       R5 K12 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 DUPCLOSURE                       R6 K13 [PROTO_1]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R7 K14 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R7
       48 DUPCLOSURE                       R8 K15 [PROTO_3]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R8 R4 K16 ["find"]
       53 DUPCLOSURE                       R8 K17 [PROTO_4]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R8 R4 K18 ["findPreset"]
       57 DUPCLOSURE                       R8 K19 [PROTO_5]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R8 R4 K20 ["stageBuiltIn"]
       62 DUPCLOSURE                       R8 K21 [PROTO_6]
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R8 R4 K22 ["stageSaved"]
       66 DUPCLOSURE                       R8 K23 [PROTO_7]
       67 CAPTURE                          VAL R1
       68 SETTABLEKS                       R8 R4 K24 ["capture"]
       70 DUPCLOSURE                       R8 K25 [PROTO_8]
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R8 R4 K26 ["isControlValue"]
       74 RETURN                           R4 1
