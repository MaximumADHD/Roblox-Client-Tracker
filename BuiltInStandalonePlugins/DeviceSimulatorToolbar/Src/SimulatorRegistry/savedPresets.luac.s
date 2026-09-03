PROTO_0:
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
       12 JUMPIFNOTEQKS                    R1 K3 ["number"] ; [+15]
       14 LOADB                            R2 0
       15 JUMPIFNOTEQ                      R0 R0 ; [+11]
       17 FASTCALL1                        MATH_ABS R0 ; [+3]
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K6 [math.abs]
       21 CALL                             R3 1 1
       22 LOADK                            R4 K7 [∞]
       23 JUMPIFLT                         R3 R4 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 RETURN                           R2 1
       28 LOADB                            R2 1
       29 JUMPIFEQKS                       R1 K8 ["string"] ; [+5]
       31 JUMPIFEQKS                       R1 K9 ["boolean"] ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+3]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K2 [type]
       12 CALL                             R1 1 1
       13 JUMPIFEQKS                       R1 K3 ["table"] ; [+4]
       15 NEWTABLE                         R1 0 0
       17 RETURN                           R1 1
       18 NEWTABLE                         R1 0 0
       20 MOVE                             R2 R0
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 FASTCALL1                        TYPE R5 ; [+3]
       25 MOVE                             R8 R5
       26 GETIMPORT                        R7 K2 [type]
       28 CALL                             R7 1 1
       29 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+121]
       31 FASTCALL1                        TYPE R6 ; [+3]
       32 MOVE                             R8 R6
       33 GETIMPORT                        R7 K2 [type]
       35 CALL                             R7 1 1
       36 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+114]
       38 NEWTABLE                         R7 0 0
       40 MOVE                             R8 R6
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 FORGPREP                         R8
       44 FASTCALL1                        TYPE R12 ; [+3]
       45 MOVE                             R14 R12
       46 GETIMPORT                        R13 K2 [type]
       48 CALL                             R13 1 1
       49 JUMPIFNOTEQKS                    R13 K3 ["table"] ; [+94]
       51 GETTABLEKS                       R14 R12 K5 ["name"]
       53 FASTCALL1                        TYPE R14 ; [+2]
       54 GETIMPORT                        R13 K2 [type]
       56 CALL                             R13 1 1
       57 JUMPIFNOTEQKS                    R13 K4 ["string"] ; [+86]
       59 GETTABLEKS                       R13 R12 K5 ["name"]
       61 JUMPIFEQKS                       R13 K6 [""] ; [+82]
       63 GETUPVAL                         R13 1
       64 GETTABLEKS                       R13 R13 K7 ["isReservedName"]
       66 GETTABLEKS                       R14 R12 K5 ["name"]
       68 CALL                             R13 1 1
       69 JUMPIF                           R13 ; [+74]
       70 GETTABLEKS                       R14 R12 K8 ["values"]
       72 FASTCALL1                        TYPE R14 ; [+2]
       73 GETIMPORT                        R13 K2 [type]
       75 CALL                             R13 1 1
       76 JUMPIFNOTEQKS                    R13 K3 ["table"] ; [+67]
       78 NEWTABLE                         R13 0 0
       80 GETTABLEKS                       R14 R12 K8 ["values"]
       82 LOADNIL                          R15
       83 LOADNIL                          R16
       84 FORGPREP                         R14
       85 FASTCALL1                        TYPE R17 ; [+3]
       86 MOVE                             R20 R17
       87 GETIMPORT                        R19 K2 [type]
       89 CALL                             R19 1 1
       90 JUMPIFNOTEQKS                    R19 K4 ["string"] ; [+38]
       92 GETUPVAL                         R20 0
       93 GETTABLEKS                       R20 R20 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
       95 CALL                             R20 0 1
       96 JUMPIF                           R20 ; [+2]
       97 LOADB                            R19 0
       98 JUMP                             ; [+28]
       99 FASTCALL1                        TYPE R18 ; [+3]
      100 MOVE                             R21 R18
      101 GETIMPORT                        R20 K2 [type]
      103 CALL                             R20 1 1
      104 JUMPIFNOTEQKS                    R20 K9 ["number"] ; [+15]
      106 LOADB                            R19 0
      107 JUMPIFNOTEQ                      R18 R18 ; [+19]
      109 FASTCALL1                        MATH_ABS R18 ; [+3]
      110 MOVE                             R22 R18
      111 GETIMPORT                        R21 K12 [math.abs]
      113 CALL                             R21 1 1
      114 LOADK                            R22 K13 [∞]
      115 JUMPIFLT                         R21 R22 ; [+2]
      117 LOADB                            R19 0 +1
      118 LOADB                            R19 1
      119 JUMP                             ; [+7]
      120 LOADB                            R19 1
      121 JUMPIFEQKS                       R20 K4 ["string"] ; [+5]
      123 JUMPIFEQKS                       R20 K14 ["boolean"] ; [+2]
      125 LOADB                            R19 0 +1
      126 LOADB                            R19 1
      127 JUMPIFNOT                        R19 ; [+1]
      128 SETTABLE                         R18 R13 R17
      129 FORGLOOP                         R14 2 ; [-45]
      131 DUPTABLE                         R16 K15 [{"name", "values"}]
      132 GETTABLEKS                       R17 R12 K5 ["name"]
      134 SETTABLEKS                       R17 R16 K5 ["name"]
      136 SETTABLEKS                       R13 R16 K8 ["values"]
      138 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
      140 MOVE                             R15 R7
      141 GETIMPORT                        R14 K17 [table.insert]
      143 CALL                             R14 2 0
      144 FORGLOOP                         R8 2 ; [-101]
      146 LENGTH                           R8 R7
      147 LOADN                            R9 0
      148 JUMPIFNOTLT                      R9 R8 ; [+2]
      150 SETTABLE                         R7 R1 R5
      151 FORGLOOP                         R2 2 ; [-128]
      153 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DeviceSimulatorSavedPresets"]
        2 NAMECALL                         R0 R0 K1 ["GetSetting"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+3]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1
        8 GETIMPORT                        R0 K2 [pcall]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U1
       12 CALL                             R0 1 2
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K3 ["sanitize"]
       16 JUMPIFNOT                        R0 ; [+2]
       17 MOVE                             R3 R1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DeviceSimulatorSavedPresets"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["SetSetting"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K2 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+8]
        5 DUPTABLE                         R1 K3 [{"get", "set"}]
        6 DUPCLOSURE                       R2 K4 [PROTO_2]
        7 SETTABLEKS                       R2 R1 K1 ["get"]
        9 DUPCLOSURE                       R2 K5 [PROTO_3]
       10 SETTABLEKS                       R2 R1 K2 ["set"]
       12 RETURN                           R1 1
       13 DUPTABLE                         R1 K3 [{"get", "set"}]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 SETTABLEKS                       R2 R1 K1 ["get"]
       20 NEWCLOSURE                       R2 P3
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R1 K2 ["set"]
       25 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+3]
        5 NEWTABLE                         R2 0 0
        7 RETURN                           R2 1
        8 GETTABLE                         R2 R0 R1
        9 JUMPIF                           R2 ; [+2]
       10 NEWTABLE                         R2 0 0
       12 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+3]
        5 NEWTABLE                         R2 0 0
        7 RETURN                           R2 1
        8 NEWTABLE                         R2 0 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["list"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 CALL                             R3 2 3
       16 FORGPREP                         R3
       17 GETTABLEKS                       R10 R7 K2 ["name"]
       19 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       21 MOVE                             R9 R2
       22 GETIMPORT                        R8 K5 [table.insert]
       24 CALL                             R8 2 0
       25 FORGLOOP                         R3 2 ; [-9]
       27 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["list"]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 CALL                             R3 2 3
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R7 K2 ["name"]
       16 JUMPIFNOTEQ                      R8 R2 ; [+2]
       18 RETURN                           R7 1
       19 FORGLOOP                         R3 2 ; [-6]
       21 LOADNIL                          R3
       22 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R4 0 1
        4 JUMPIF                           R4 ; [+1]
        5 RETURN                           R0 1
        6 JUMPIFEQKS                       R2 K1 [""] ; [+7]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["isReservedName"]
       11 MOVE                             R5 R2
       12 CALL                             R4 1 1
       13 JUMPIFNOT                        R4 ; [+1]
       14 RETURN                           R0 1
       15 GETIMPORT                        R4 K5 [table.clone]
       17 MOVE                             R5 R0
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K5 [table.clone]
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K6 ["list"]
       24 MOVE                             R7 R0
       25 MOVE                             R8 R1
       26 CALL                             R6 2 -1
       27 CALL                             R5 -1 1
       28 DUPTABLE                         R6 K9 [{"name", "values"}]
       29 SETTABLEKS                       R2 R6 K7 ["name"]
       31 GETIMPORT                        R7 K5 [table.clone]
       33 MOVE                             R8 R3
       34 CALL                             R7 1 1
       35 SETTABLEKS                       R7 R6 K8 ["values"]
       37 LOADB                            R7 0
       38 MOVE                             R8 R5
       39 LOADNIL                          R9
       40 LOADNIL                          R10
       41 FORGPREP                         R8
       42 GETTABLEKS                       R13 R12 K7 ["name"]
       44 JUMPIFNOTEQ                      R13 R2 ; [+4]
       46 SETTABLE                         R6 R5 R11
       47 LOADB                            R7 1
       48 JUMP                             ; [+2]
       49 FORGLOOP                         R8 2 ; [-8]
       51 JUMPIF                           R7 ; [+7]
       52 FASTCALL2                        TABLE_INSERT R5 R6 ; [+5]
       54 MOVE                             R9 R5
       55 MOVE                             R10 R6
       56 GETIMPORT                        R8 K11 [table.insert]
       58 CALL                             R8 2 0
       59 SETTABLE                         R5 R4 R1
       60 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 1
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["list"]
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 CALL                             R4 2 3
       14 FORGPREP                         R4
       15 GETTABLEKS                       R9 R8 K2 ["name"]
       17 JUMPIFEQ                         R9 R2 ; [+8]
       19 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       21 MOVE                             R10 R3
       22 MOVE                             R11 R8
       23 GETIMPORT                        R9 K5 [table.insert]
       25 CALL                             R9 2 0
       26 FORGLOOP                         R4 2 ; [-12]
       28 GETIMPORT                        R4 K7 [table.clone]
       30 MOVE                             R5 R0
       31 CALL                             R4 1 1
       32 LENGTH                           R6 R3
       33 LOADN                            R7 0
       34 JUMPIFNOTLT                      R7 R6 ; [+3]
       36 MOVE                             R5 R3
       37 JUMP                             ; [+1]
       38 LOADNIL                          R5
       39 SETTABLE                         R5 R4 R1
       40 RETURN                           R4 1

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
       22 GETTABLEKS                       R3 R3 K10 ["presetSchema"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K9 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["Types"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 8 0
       36 DUPCLOSURE                       R5 K12 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 DUPCLOSURE                       R6 K13 [PROTO_1]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R6 R4 K14 ["sanitize"]
       43 DUPCLOSURE                       R6 K15 [PROTO_8]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R6 R4 K16 ["fromPlugin"]
       48 DUPCLOSURE                       R6 K17 [PROTO_9]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R6 R4 K18 ["list"]
       52 DUPCLOSURE                       R6 K19 [PROTO_10]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R6 R4 K20 ["names"]
       57 DUPCLOSURE                       R6 K21 [PROTO_11]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R6 R4 K22 ["find"]
       62 DUPCLOSURE                       R6 K23 [PROTO_12]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R4
       66 SETTABLEKS                       R6 R4 K24 ["upsert"]
       68 DUPCLOSURE                       R6 K25 [PROTO_13]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R4
       71 SETTABLEKS                       R6 R4 K26 ["remove"]
       73 RETURN                           R4 1
