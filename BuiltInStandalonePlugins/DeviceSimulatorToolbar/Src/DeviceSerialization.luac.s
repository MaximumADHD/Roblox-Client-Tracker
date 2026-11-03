PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["Value"]
        9 RETURN                           R1 1
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K5 [type]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K6 ["number"] ; [+2]
       17 RETURN                           R0 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+2]
        7 RETURN                           R0 1
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K4 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K5 ["number"] ; [+9]
       15 GETIMPORT                        R1 K8 [Enum.DeviceForm]
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K9 ["FromValue"]
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+1]
       22 RETURN                           R1 1
       23 GETIMPORT                        R1 K11 [error]
       25 LOADK                            R2 K12 ["Invalid deviceForm in device manager output"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+2]
        7 RETURN                           R0 1
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K4 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K5 ["number"] ; [+9]
       15 GETIMPORT                        R1 K8 [Enum.Platform]
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K9 ["FromValue"]
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+1]
       22 RETURN                           R1 1
       23 GETIMPORT                        R1 K11 [error]
       25 LOADK                            R2 K12 ["Invalid platform in device manager output"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K12 [{"deviceForm", "deviceId", "deviceName", "dpi", "height", "isCustom", "landscapeKeyboardHeight", "memoryMB", "platform", "portraitKeyboardHeight", "tier", "width"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K13 ["deserializeDeviceForm"]
        4 GETTABLEKS                       R3 R0 K0 ["deviceForm"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K0 ["deviceForm"]
        9 GETTABLEKS                       R2 R0 K1 ["deviceId"]
       11 SETTABLEKS                       R2 R1 K1 ["deviceId"]
       13 GETTABLEKS                       R2 R0 K2 ["deviceName"]
       15 SETTABLEKS                       R2 R1 K2 ["deviceName"]
       17 GETTABLEKS                       R2 R0 K3 ["dpi"]
       19 SETTABLEKS                       R2 R1 K3 ["dpi"]
       21 GETTABLEKS                       R2 R0 K4 ["height"]
       23 SETTABLEKS                       R2 R1 K4 ["height"]
       25 GETTABLEKS                       R2 R0 K5 ["isCustom"]
       27 SETTABLEKS                       R2 R1 K5 ["isCustom"]
       29 GETTABLEKS                       R2 R0 K6 ["landscapeKeyboardHeight"]
       31 SETTABLEKS                       R2 R1 K6 ["landscapeKeyboardHeight"]
       33 GETTABLEKS                       R2 R0 K7 ["memoryMB"]
       35 SETTABLEKS                       R2 R1 K7 ["memoryMB"]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K14 ["deserializePlatform"]
       40 GETTABLEKS                       R3 R0 K8 ["platform"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R1 K8 ["platform"]
       45 GETTABLEKS                       R2 R0 K9 ["portraitKeyboardHeight"]
       47 SETTABLEKS                       R2 R1 K9 ["portraitKeyboardHeight"]
       49 GETTABLEKS                       R2 R0 K10 ["tier"]
       51 SETTABLEKS                       R2 R1 K10 ["tier"]
       53 GETTABLEKS                       R2 R0 K11 ["width"]
       55 SETTABLEKS                       R2 R1 K11 ["width"]
       57 GETUPVAL                         R2 1
       58 GETTABLEKS                       R2 R2 K15 ["getEngineFeatureDeviceSimulatorNominalMemory"]
       60 CALL                             R2 0 1
       61 JUMPIFNOT                        R2 ; [+14]
       62 GETTABLEKS                       R2 R0 K16 ["nominalMemoryMB"]
       64 FASTCALL1                        TYPE R2 ; [+3]
       65 MOVE                             R4 R2
       66 GETIMPORT                        R3 K18 [type]
       68 CALL                             R3 1 1
       69 JUMPIFNOTEQKS                    R3 K19 ["number"] ; [+6]
       71 LOADN                            R3 0
       72 JUMPIFNOTLT                      R3 R2 ; [+3]
       74 SETTABLEKS                       R2 R1 K16 ["nominalMemoryMB"]
       76 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R8 R1
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R9 R9 K0 ["deserializeDevice"]
       10 MOVE                             R10 R6
       11 CALL                             R9 1 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R7 K3 [table.insert]
       15 CALL                             R7 -1 0
       16 FORGLOOP                         R2 2 ; [-11]
       18 RETURN                           R1 1

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
       16 NEWTABLE                         R2 8 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K10 ["formValue"]
       21 DUPCLOSURE                       R3 K11 [PROTO_1]
       22 SETTABLEKS                       R3 R2 K12 ["deserializeDeviceForm"]
       24 DUPCLOSURE                       R3 K13 [PROTO_2]
       25 SETTABLEKS                       R3 R2 K14 ["deserializePlatform"]
       27 DUPCLOSURE                       R3 K15 [PROTO_3]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R3 R2 K16 ["deserializeDevice"]
       32 DUPCLOSURE                       R3 K17 [PROTO_4]
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R3 R2 K18 ["deserializeDevices"]
       36 RETURN                           R2 1
