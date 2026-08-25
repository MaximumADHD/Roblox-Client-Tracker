PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 LOADB                            R1 0
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K2 [type]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K3 ["number"] ; [+5]
       15 JUMPIFEQ                         R0 R0 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADK                            R2 K1 [""]
        6 RETURN                           R2 1
        7 JUMPIFEQKNIL                     R0 ; [+3]
        9 JUMPIFNOTEQKS                    R0 K1 [""] ; [+7]
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K3 [tostring]
       15 CALL                             R2 1 1
       16 RETURN                           R2 1
       17 LOADK                            R3 K4 ["%*.%*"]
       18 MOVE                             R5 R0
       19 MOVE                             R6 R1
       20 NAMECALL                         R3 R3 K5 ["format"]
       22 CALL                             R3 3 1
       23 MOVE                             R2 R3
       24 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADK                            R2 K1 [""]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R0 K2 ["Id"]
        9 OR                               R2 R3 R1
       10 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADK                            R1 K1 [""]
        6 RETURN                           R1 1
        7 LOADK                            R2 K2 ["simulator-control-%*"]
        8 GETIMPORT                        R4 K5 [string.gsub]
       10 MOVE                             R5 R0
       11 LOADK                            R6 K6 ["%."]
       12 LOADK                            R7 K7 ["-"]
       13 CALL                             R4 3 1
       14 NAMECALL                         R2 R2 K8 ["format"]
       16 CALL                             R2 2 1
       17 MOVE                             R1 R2
       18 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADK                            R2 K1 [""]
        6 RETURN                           R2 1
        7 LOADK                            R3 K2 ["%*/option/%*"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K3 ["format"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+3]
        5 MOVE                             R2 R1
        6 LOADB                            R3 0
        7 RETURN                           R2 2
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["isNumber"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 JUMPIFNOT                        R2 ; [+3]
       14 MOVE                             R2 R0
       15 LOADB                            R3 1
       16 RETURN                           R2 2
       17 MOVE                             R2 R1
       18 LOADB                            R3 0
       19 RETURN                           R2 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+3]
        5 LOADB                            R1 0
        6 LOADB                            R2 0
        7 RETURN                           R1 2
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K2 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K3 ["boolean"] ; [+4]
       15 MOVE                             R1 R0
       16 LOADB                            R2 1
       17 RETURN                           R1 2
       18 LOADB                            R1 0
       19 LOADB                            R2 0
       20 RETURN                           R1 2

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+10]
        5 DUPTABLE                         R3 K7 [{["items"], ["value"] = "", ["hasValue"] = False, ["itemIdToValue"]}]
        6 NEWTABLE                         R4 0 0
        8 SETTABLEKS                       R4 R3 K1 ["items"]
       10 NEWTABLE                         R4 0 0
       12 SETTABLEKS                       R4 R3 K6 ["itemIdToValue"]
       14 RETURN                           R3 1
       15 GETIMPORT                        R3 K10 [table.create]
       17 GETTABLEKS                       R5 R0 K11 ["Options"]
       19 LENGTH                           R4 R5
       20 CALL                             R3 1 1
       21 NEWTABLE                         R4 0 0
       23 NEWTABLE                         R5 0 0
       25 GETTABLEKS                       R6 R0 K11 ["Options"]
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 FORGPREP                         R6
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R12 R12 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
       33 CALL                             R12 0 1
       34 JUMPIF                           R12 ; [+2]
       35 LOADK                            R11 K3 [""]
       36 JUMP                             ; [+7]
       37 LOADK                            R12 K12 ["%*/option/%*"]
       38 MOVE                             R14 R1
       39 MOVE                             R15 R9
       40 NAMECALL                         R12 R12 K13 ["format"]
       42 CALL                             R12 3 1
       43 MOVE                             R11 R12
       44 DUPTABLE                         R14 K16 [{"id", "text"}]
       45 SETTABLEKS                       R11 R14 K14 ["id"]
       47 SETTABLEKS                       R10 R14 K15 ["text"]
       49 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       51 MOVE                             R13 R3
       52 GETIMPORT                        R12 K18 [table.insert]
       54 CALL                             R12 2 0
       55 SETTABLE                         R10 R5 R11
       56 GETTABLE                         R12 R4 R10
       57 JUMPIFNOTEQKNIL                  R12 ; [+2]
       59 SETTABLE                         R11 R4 R10
       60 FORGLOOP                         R6 2 ; [-31]
       62 FASTCALL1                        TYPE R2 ; [+3]
       63 MOVE                             R8 R2
       64 GETIMPORT                        R7 K20 [type]
       66 CALL                             R7 1 1
       67 JUMPIFNOTEQKS                    R7 K21 ["string"] ; [+3]
       69 MOVE                             R6 R2
       70 JUMP                             ; [+1]
       71 LOADNIL                          R6
       72 JUMPIFEQKNIL                     R6 ; [+3]
       74 GETTABLE                         R7 R4 R6
       75 JUMP                             ; [+1]
       76 LOADNIL                          R7
       77 DUPTABLE                         R8 K23 [{"items", "value", "hasValue", "placeholder", "itemIdToValue"}]
       78 SETTABLEKS                       R3 R8 K1 ["items"]
       80 SETTABLEKS                       R7 R8 K2 ["value"]
       82 JUMPIFNOTEQKNIL                  R6 ; [+2]
       84 LOADB                            R9 0 +1
       85 LOADB                            R9 1
       86 SETTABLEKS                       R9 R8 K4 ["hasValue"]
       88 JUMPIFNOTEQKNIL                  R7 ; [+3]
       90 MOVE                             R9 R6
       91 JUMP                             ; [+1]
       92 LOADNIL                          R9
       93 SETTABLEKS                       R9 R8 K22 ["placeholder"]
       95 SETTABLEKS                       R5 R8 K6 ["itemIdToValue"]
       97 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["Types"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 8 0
       34 DUPCLOSURE                       R5 K13 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R5 R4 K14 ["isNumber"]
       38 DUPCLOSURE                       R5 K15 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R5 R4 K16 ["makeControlPath"]
       42 DUPCLOSURE                       R5 K17 [PROTO_2]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R5 R4 K18 ["makeControlKey"]
       46 DUPCLOSURE                       R5 K19 [PROTO_3]
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R5 R4 K20 ["makeControlTestId"]
       50 DUPCLOSURE                       R5 K21 [PROTO_4]
       51 CAPTURE                          VAL R2
       52 DUPCLOSURE                       R6 K22 [PROTO_5]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R6 R4 K23 ["resolveNumber"]
       57 DUPCLOSURE                       R6 K24 [PROTO_6]
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R6 R4 K25 ["resolveBoolean"]
       61 DUPCLOSURE                       R6 K26 [PROTO_7]
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R6 R4 K27 ["makeDropdownItems"]
       65 RETURN                           R4 1
