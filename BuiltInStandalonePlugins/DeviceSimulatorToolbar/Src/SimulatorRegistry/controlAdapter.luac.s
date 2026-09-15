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
       17 LOADK                            R2 K4 ["%*.%*"]
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 NAMECALL                         R2 R2 K5 ["format"]
       22 CALL                             R2 3 1
       23 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADK                            R2 K1 [""]
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["getFFlagStudioDeviceSimulatorRequireExplicitControlIds"]
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+24]
       12 LOADB                            R3 0
       13 GETTABLEKS                       R5 R0 K3 ["Id"]
       15 FASTCALL1                        TYPE R5 ; [+2]
       16 GETIMPORT                        R4 K5 [type]
       18 CALL                             R4 1 1
       19 JUMPIFNOTEQKS                    R4 K6 ["string"] ; [+7]
       21 GETTABLEKS                       R4 R0 K3 ["Id"]
       23 JUMPIFNOTEQKS                    R4 K1 [""] ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       29 LOADK                            R4 K7 ["Simulator controls require a stable Id"]
       30 GETIMPORT                        R2 K9 [assert]
       32 CALL                             R2 2 0
       33 GETTABLEKS                       R2 R0 K3 ["Id"]
       35 RETURN                           R2 1
       36 GETTABLEKS                       R3 R0 K3 ["Id"]
       38 OR                               R2 R3 R1
       39 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADK                            R1 K1 [""]
        6 RETURN                           R1 1
        7 LOADK                            R1 K2 ["simulator-control-%*"]
        8 GETIMPORT                        R3 K5 [string.gsub]
       10 MOVE                             R4 R0
       11 LOADK                            R5 K6 ["%."]
       12 LOADK                            R6 K7 ["-"]
       13 CALL                             R3 3 1
       14 NAMECALL                         R1 R1 K8 ["format"]
       16 CALL                             R1 2 1
       17 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADK                            R2 K1 [""]
        6 RETURN                           R2 1
        7 LOADK                            R2 K2 ["%*/option/%*"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 NAMECALL                         R2 R2 K3 ["format"]
       12 CALL                             R2 3 1
       13 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagDeviceSimulatorBoundDropdownLabels"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K3 [utf8.len]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 JUMPIFEQKNIL                     R1 ; [+4]
       12 LOADN                            R2 28
       13 JUMPIFNOTLE                      R1 R2 ; [+2]
       15 RETURN                           R0 1
       16 GETIMPORT                        R2 K5 [utf8.offset]
       18 MOVE                             R3 R0
       19 LOADN                            R4 28
       20 CALL                             R2 2 1
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 RETURN                           R0 1
       24 LOADN                            R8 1
       25 SUBK                             R9 R2 K6 [1]
       26 FASTCALL3                        STRING_SUB R0 R8 R9
       28 MOVE                             R7 R0
       29 GETIMPORT                        R6 K9 [string.sub]
       31 CALL                             R6 3 1
       32 MOVE                             R4 R6
       33 LOADK                            R5 K10 ["…"]
       34 CONCAT                           R3 R4 R5
       35 RETURN                           R3 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       36 JUMP                             ; [+6]
       37 LOADK                            R12 K12 ["%*/option/%*"]
       38 MOVE                             R14 R1
       39 MOVE                             R15 R10
       40 NAMECALL                         R12 R12 K13 ["format"]
       42 CALL                             R12 3 1
       43 JUMPIFEQKNIL                     R3 ; [+4]
       45 GETTABLE                         R14 R3 R11
       46 OR                               R13 R14 R11
       47 JUMP                             ; [+1]
       48 MOVE                             R13 R11
       49 DUPTABLE                         R16 K16 [{"id", "text"}]
       50 SETTABLEKS                       R12 R16 K14 ["id"]
       52 GETUPVAL                         R17 1
       53 MOVE                             R18 R13
       54 CALL                             R17 1 1
       55 SETTABLEKS                       R17 R16 K15 ["text"]
       57 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
       59 MOVE                             R15 R4
       60 GETIMPORT                        R14 K18 [table.insert]
       62 CALL                             R14 2 0
       63 SETTABLE                         R11 R6 R12
       64 GETTABLE                         R14 R5 R11
       65 JUMPIFNOTEQKNIL                  R14 ; [+2]
       67 SETTABLE                         R12 R5 R11
       68 FORGLOOP                         R7 2 ; [-39]
       70 FASTCALL1                        TYPE R2 ; [+3]
       71 MOVE                             R9 R2
       72 GETIMPORT                        R8 K20 [type]
       74 CALL                             R8 1 1
       75 JUMPIFNOTEQKS                    R8 K21 ["string"] ; [+3]
       77 MOVE                             R7 R2
       78 JUMP                             ; [+1]
       79 LOADNIL                          R7
       80 JUMPIFEQKNIL                     R7 ; [+3]
       82 GETTABLE                         R8 R5 R7
       83 JUMP                             ; [+1]
       84 LOADNIL                          R8
       85 DUPTABLE                         R9 K23 [{"items", "value", "hasValue", "placeholder", "itemIdToValue"}]
       86 SETTABLEKS                       R4 R9 K1 ["items"]
       88 SETTABLEKS                       R8 R9 K2 ["value"]
       90 JUMPIFNOTEQKNIL                  R7 ; [+2]
       92 LOADB                            R10 0 +1
       93 LOADB                            R10 1
       94 SETTABLEKS                       R10 R9 K4 ["hasValue"]
       96 JUMPIFNOTEQKNIL                  R8 ; [+10]
       98 JUMPIFEQKNIL                     R7 ; [+8]
      100 JUMPIFEQKNIL                     R3 ; [+6]
      102 GETUPVAL                         R10 1
      103 GETTABLE                         R12 R3 R7
      104 OR                               R11 R12 R7
      105 CALL                             R10 1 1
      106 JUMP                             ; [+9]
      107 JUMPIFNOTEQKNIL                  R8 ; [+7]
      109 JUMPIFEQKNIL                     R7 ; [+5]
      111 GETUPVAL                         R10 1
      112 MOVE                             R11 R7
      113 CALL                             R10 1 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R10
      116 SETTABLEKS                       R10 R9 K22 ["placeholder"]
      118 SETTABLEKS                       R6 R9 K6 ["itemIdToValue"]
      120 RETURN                           R9 1

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
       54 DUPCLOSURE                       R7 K23 [PROTO_6]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R7 R4 K24 ["resolveNumber"]
       59 DUPCLOSURE                       R7 K25 [PROTO_7]
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R7 R4 K26 ["resolveBoolean"]
       63 DUPCLOSURE                       R7 K27 [PROTO_8]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R7 R4 K28 ["makeDropdownItems"]
       68 RETURN                           R4 1
