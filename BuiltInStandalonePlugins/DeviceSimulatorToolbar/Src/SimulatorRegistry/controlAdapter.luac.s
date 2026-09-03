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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R4 0 1
        4 JUMPIF                           R4 ; [+10]
        5 DUPTABLE                         R4 K7 [{["items"], ["value"] = "", ["hasValue"] = False, ["itemIdToValue"]}]
        6 NEWTABLE                         R5 0 0
        8 SETTABLEKS                       R5 R4 K1 ["items"]
       10 NEWTABLE                         R5 0 0
       12 SETTABLEKS                       R5 R4 K6 ["itemIdToValue"]
       14 RETURN                           R4 1
       15 GETIMPORT                        R4 K10 [table.create]
       17 GETTABLEKS                       R6 R0 K11 ["Options"]
       19 LENGTH                           R5 R6
       20 CALL                             R4 1 1
       21 NEWTABLE                         R5 0 0
       23 NEWTABLE                         R6 0 0
       25 GETTABLEKS                       R7 R0 K11 ["Options"]
       27 LOADNIL                          R8
       28 LOADNIL                          R9
       29 FORGPREP                         R7
       30 GETUPVAL                         R13 0
       31 GETTABLEKS                       R13 R13 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
       33 CALL                             R13 0 1
       34 JUMPIF                           R13 ; [+2]
       35 LOADK                            R12 K3 [""]
       36 JUMP                             ; [+7]
       37 LOADK                            R13 K12 ["%*/option/%*"]
       38 MOVE                             R15 R1
       39 MOVE                             R16 R10
       40 NAMECALL                         R13 R13 K13 ["format"]
       42 CALL                             R13 3 1
       43 MOVE                             R12 R13
       44 DUPTABLE                         R15 K16 [{"id", "text"}]
       45 SETTABLEKS                       R12 R15 K14 ["id"]
       47 JUMPIFEQKNIL                     R3 ; [+4]
       49 GETTABLE                         R17 R3 R11
       50 OR                               R16 R17 R11
       51 JUMP                             ; [+1]
       52 MOVE                             R16 R11
       53 SETTABLEKS                       R16 R15 K15 ["text"]
       55 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
       57 MOVE                             R14 R4
       58 GETIMPORT                        R13 K18 [table.insert]
       60 CALL                             R13 2 0
       61 SETTABLE                         R11 R6 R12
       62 GETTABLE                         R13 R5 R11
       63 JUMPIFNOTEQKNIL                  R13 ; [+2]
       65 SETTABLE                         R12 R5 R11
       66 FORGLOOP                         R7 2 ; [-37]
       68 FASTCALL1                        TYPE R2 ; [+3]
       69 MOVE                             R9 R2
       70 GETIMPORT                        R8 K20 [type]
       72 CALL                             R8 1 1
       73 JUMPIFNOTEQKS                    R8 K21 ["string"] ; [+3]
       75 MOVE                             R7 R2
       76 JUMP                             ; [+1]
       77 LOADNIL                          R7
       78 JUMPIFEQKNIL                     R7 ; [+3]
       80 GETTABLE                         R8 R5 R7
       81 JUMP                             ; [+1]
       82 LOADNIL                          R8
       83 DUPTABLE                         R9 K23 [{"items", "value", "hasValue", "placeholder", "itemIdToValue"}]
       84 SETTABLEKS                       R4 R9 K1 ["items"]
       86 SETTABLEKS                       R8 R9 K2 ["value"]
       88 JUMPIFNOTEQKNIL                  R7 ; [+2]
       90 LOADB                            R10 0 +1
       91 LOADB                            R10 1
       92 SETTABLEKS                       R10 R9 K4 ["hasValue"]
       94 JUMPIFNOTEQKNIL                  R8 ; [+8]
       96 JUMPIFEQKNIL                     R7 ; [+6]
       98 JUMPIFEQKNIL                     R3 ; [+4]
      100 GETTABLE                         R11 R3 R7
      101 OR                               R10 R11 R7
      102 JUMP                             ; [+5]
      103 JUMPIFNOTEQKNIL                  R8 ; [+3]
      105 MOVE                             R10 R7
      106 JUMP                             ; [+1]
      107 LOADNIL                          R10
      108 SETTABLEKS                       R10 R9 K22 ["placeholder"]
      110 SETTABLEKS                       R6 R9 K6 ["itemIdToValue"]
      112 RETURN                           R9 1

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
