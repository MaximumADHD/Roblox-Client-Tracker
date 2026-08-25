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
       57 RETURN                           R1 1

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
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["formValue"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["deserializeDeviceForm"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["deserializePlatform"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K7 ["deserializeDevice"]
       16 DUPCLOSURE                       R1 K8 [PROTO_4]
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K9 ["deserializeDevices"]
       20 RETURN                           R0 1
