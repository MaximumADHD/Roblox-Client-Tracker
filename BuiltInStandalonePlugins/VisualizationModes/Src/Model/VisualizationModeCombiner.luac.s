PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+29]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R3 R0 K3 ["visualizationModeCategoryName"]
       11 FASTCALL1                        TYPEOF R3 ; [+2]
       12 GETIMPORT                        R2 K1 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+20]
       17 LOADB                            R1 0
       18 GETTABLEKS                       R3 R0 K5 ["visualizationModeName"]
       20 FASTCALL1                        TYPEOF R3 ; [+2]
       21 GETIMPORT                        R2 K1 [typeof]
       23 CALL                             R2 1 1
       24 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+11]
       26 GETTABLEKS                       R3 R0 K6 ["lastEditUnixTimeStamp"]
       28 FASTCALL1                        TYPEOF R3 ; [+2]
       29 GETIMPORT                        R2 K1 [typeof]
       31 CALL                             R2 1 1
       32 JUMPIFEQKS                       R2 K7 ["number"] ; [+2]
       34 LOADB                            R1 0 +1
       35 LOADB                            R1 1
       36 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["visualizationModeCategoryName"]
        3 GETTABLEKS                       R4 R1 K0 ["visualizationModeCategoryName"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+9]
        7 GETTABLEKS                       R3 R0 K1 ["visualizationModeName"]
        9 GETTABLEKS                       R4 R1 K1 ["visualizationModeName"]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_lastReportedClientCombinerStateMap"]
        3 GETTABLEKS                       R2 R0 K1 ["hostDataModelType"]
        5 SETTABLE                         R0 R1 R2
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K2 ["_queueUpdateState"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["new"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K3 ["_maid"]
       14 FASTCALL2K                       ASSERT R0 K4 ; [+5]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K4 ["No plugin"]
       18 GETIMPORT                        R2 K6 [assert]
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R1 K7 ["_plugin"]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R1 K8 ["_recentModeRecordList"]
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R1 K9 ["_lastReportedClientCombinerStateMap"]
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R1 K10 ["_state"]
       34 LOADNIL                          R2
       35 SETTABLEKS                       R2 R1 K11 ["_session"]
       37 GETTABLEKS                       R2 R1 K3 ["_maid"]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K2 ["new"]
       42 CALL                             R4 0 -1
       43 NAMECALL                         R2 R2 K12 ["add"]
       45 CALL                             R2 -1 1
       46 SETTABLEKS                       R2 R1 K13 ["changed"]
       48 NAMECALL                         R2 R1 K14 ["_connectToFocusedDataModelSession"]
       50 CALL                             R2 1 0
       51 GETTABLEKS                       R2 R1 K3 ["_maid"]
       53 GETTABLEKS                       R4 R1 K7 ["_plugin"]
       55 LOADK                            R6 K15 ["reportClientCombinerState"]
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          VAL R1
       58 NAMECALL                         R4 R4 K16 ["OnInvoke"]
       60 CALL                             R4 3 -1
       61 NAMECALL                         R2 R2 K17 ["giveTask"]
       63 CALL                             R2 -1 0
       64 NAMECALL                         R2 R1 K18 ["_loadRecentRecords"]
       66 CALL                             R2 1 0
       67 GETTABLEKS                       R2 R1 K7 ["_plugin"]
       69 LOADK                            R4 K19 ["queryClientCombinerState"]
       70 NAMECALL                         R2 R2 K20 ["Invoke"]
       72 CALL                             R2 2 0
       73 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_maid"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_stateUpdateQueue"]
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K2 ["_updateState"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 GETTABLEKS                       R1 R1 K1 ["_stateUpdateQueue"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K0 ["_maid"]
        8 GETIMPORT                        R2 K4 [task.defer]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K1 ["_stateUpdateQueue"]
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K3 [Enum.StudioDataModelType.None]
        4 GETTABLEKS                       R3 R0 K4 ["_session"]
        6 JUMPIFEQKNIL                     R3 ; [+5]
        8 GETTABLEKS                       R3 R0 K4 ["_session"]
       10 GETTABLEKS                       R2 R3 K5 ["CurrentDataModelType"]
       12 GETTABLEKS                       R3 R0 K6 ["_lastReportedClientCombinerStateMap"]
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETTABLEKS                       R8 R7 K7 ["visualizationModeServiceState"]
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 FORGPREP                         R8
       22 GETTABLEKS                       R14 R12 K8 ["name"]
       24 GETTABLE                         R13 R1 R14
       25 JUMPIFNOTEQKNIL                  R13 ; [+12]
       27 DUPTABLE                         R14 K11 [{"lastState", "visualizationModes"}]
       28 SETTABLEKS                       R12 R14 K9 ["lastState"]
       30 NEWTABLE                         R15 0 0
       32 SETTABLEKS                       R15 R14 K10 ["visualizationModes"]
       34 MOVE                             R13 R14
       35 GETTABLEKS                       R14 R12 K8 ["name"]
       37 SETTABLE                         R13 R1 R14
       38 JUMPIFNOTEQ                      R6 R2 ; [+3]
       40 SETTABLEKS                       R12 R13 K9 ["lastState"]
       42 GETTABLEKS                       R14 R12 K12 ["visualizationModeList"]
       44 LOADNIL                          R15
       45 LOADNIL                          R16
       46 FORGPREP                         R14
       47 GETTABLEKS                       R19 R13 K10 ["visualizationModes"]
       49 GETTABLEKS                       R20 R18 K8 ["name"]
       51 SETTABLE                         R18 R19 R20
       52 FORGLOOP                         R14 2 ; [-6]
       54 FORGLOOP                         R8 2 ; [-33]
       56 FORGLOOP                         R3 2 ; [-40]
       58 NEWTABLE                         R3 0 0
       60 MOVE                             R4 R1
       61 LOADNIL                          R5
       62 LOADNIL                          R6
       63 FORGPREP                         R4
       64 GETTABLEKS                       R11 R8 K9 ["lastState"]
       66 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       68 MOVE                             R10 R3
       69 GETIMPORT                        R9 K15 [table.insert]
       71 CALL                             R9 2 0
       72 FORGLOOP                         R4 2 ; [-9]
       74 NEWTABLE                         R4 0 0
       76 MOVE                             R5 R3
       77 LOADNIL                          R6
       78 LOADNIL                          R7
       79 FORGPREP                         R5
       80 GETIMPORT                        R10 K18 [string.lower]
       82 GETTABLEKS                       R11 R9 K19 ["title"]
       84 CALL                             R10 1 1
       85 SETTABLE                         R10 R4 R9
       86 FORGLOOP                         R5 2 ; [-7]
       88 GETIMPORT                        R5 K21 [table.sort]
       90 MOVE                             R6 R3
       91 NEWCLOSURE                       R7 P0
       92 CAPTURE                          VAL R4
       93 CALL                             R5 2 0
       94 NEWTABLE                         R5 0 0
       96 GETTABLEKS                       R6 R0 K22 ["_recentModeRecordList"]
       98 LOADNIL                          R7
       99 LOADNIL                          R8
      100 FORGPREP                         R6
      101 GETTABLEKS                       R12 R10 K23 ["visualizationModeCategoryName"]
      103 GETTABLE                         R11 R1 R12
      104 JUMPIFEQKNIL                     R11 ; [+23]
      106 GETTABLEKS                       R13 R11 K10 ["visualizationModes"]
      108 GETTABLEKS                       R14 R10 K24 ["visualizationModeName"]
      110 GETTABLE                         R12 R13 R14
      111 JUMPIFEQKNIL                     R12 ; [+16]
      113 GETIMPORT                        R13 K26 [table.clone]
      115 MOVE                             R14 R12
      116 CALL                             R13 1 1
      117 GETTABLEKS                       R14 R10 K23 ["visualizationModeCategoryName"]
      119 SETTABLEKS                       R14 R13 K23 ["visualizationModeCategoryName"]
      121 FASTCALL2                        TABLE_INSERT R5 R13 ; [+5]
      123 MOVE                             R15 R5
      124 MOVE                             R16 R13
      125 GETIMPORT                        R14 K15 [table.insert]
      127 CALL                             R14 2 0
      128 FORGLOOP                         R6 2 ; [-28]
      130 GETIMPORT                        R8 K28 [table.freeze]
      132 DUPTABLE                         R9 K31 [{"categories", "recentModes"}]
      133 SETTABLEKS                       R3 R9 K29 ["categories"]
      135 GETIMPORT                        R10 K28 [table.freeze]
      137 MOVE                             R11 R5
      138 CALL                             R10 1 1
      139 SETTABLEKS                       R10 R9 K30 ["recentModes"]
      141 CALL                             R8 1 -1
      142 NAMECALL                         R6 R0 K32 ["_setState"]
      144 CALL                             R6 -1 0
      145 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_state"]
        7 GETTABLEKS                       R2 R0 K1 ["changed"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K2 ["Fire"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_state"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["Dictionary"]
        9 GETTABLEKS                       R1 R1 K2 ["join"]
       11 MOVE                             R2 R0
       12 DUPTABLE                         R3 K4 [{"enabled"}]
       13 GETUPVAL                         R4 2
       14 SETTABLEKS                       R4 R3 K3 ["enabled"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_plugin"]
        2 LOADK                            R5 K1 ["updateVisualizationModeCategoryIsEnabled"]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 NAMECALL                         R3 R3 K2 ["Invoke"]
        7 CALL                             R3 4 0
        8 GETTABLEKS                       R3 R0 K3 ["_lastReportedClientCombinerStateMap"]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETTABLEKS                       R8 R0 K3 ["_lastReportedClientCombinerStateMap"]
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R9 R9 K4 ["Dictionary"]
       18 GETTABLEKS                       R9 R9 K5 ["join"]
       20 MOVE                             R10 R7
       21 DUPTABLE                         R11 K7 [{"visualizationModeServiceState"}]
       22 GETUPVAL                         R12 1
       23 GETTABLEKS                       R12 R12 K8 ["map"]
       25 GETTABLEKS                       R13 R7 K6 ["visualizationModeServiceState"]
       27 NEWCLOSURE                       R14 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R2
       31 CALL                             R12 2 1
       32 SETTABLEKS                       R12 R11 K6 ["visualizationModeServiceState"]
       34 CALL                             R9 2 1
       35 SETTABLE                         R9 R8 R6
       36 FORGLOOP                         R3 2 ; [-24]
       38 NAMECALL                         R3 R0 K9 ["_queueUpdateState"]
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["Dictionary"]
        9 GETTABLEKS                       R1 R1 K2 ["join"]
       11 MOVE                             R2 R0
       12 DUPTABLE                         R3 K4 [{"enabled"}]
       13 GETUPVAL                         R4 2
       14 SETTABLEKS                       R4 R3 K3 ["enabled"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["map"]
        9 GETTABLEKS                       R2 R0 K2 ["visualizationModeList"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K3 ["Dictionary"]
       19 GETTABLEKS                       R2 R2 K4 ["join"]
       21 MOVE                             R3 R0
       22 DUPTABLE                         R4 K5 [{"visualizationModeList"}]
       23 SETTABLEKS                       R1 R4 K2 ["visualizationModeList"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_14:
        0 GETTABLEKS                       R4 R0 K0 ["_plugin"]
        2 LOADK                            R6 K1 ["updateVisualizationModeIsEnabled"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 NAMECALL                         R4 R4 K2 ["Invoke"]
        8 CALL                             R4 5 0
        9 GETTABLEKS                       R4 R0 K3 ["_lastReportedClientCombinerStateMap"]
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K4 ["Dictionary"]
       17 GETTABLEKS                       R9 R9 K5 ["join"]
       19 MOVE                             R10 R8
       20 DUPTABLE                         R11 K7 [{"visualizationModeServiceState"}]
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R12 R12 K8 ["map"]
       24 GETTABLEKS                       R13 R8 K6 ["visualizationModeServiceState"]
       26 NEWCLOSURE                       R14 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R3
       32 CALL                             R12 2 1
       33 SETTABLEKS                       R12 R11 K6 ["visualizationModeServiceState"]
       35 CALL                             R9 2 1
       36 GETTABLEKS                       R10 R0 K3 ["_lastReportedClientCombinerStateMap"]
       38 SETTABLE                         R9 R10 R7
       39 FORGLOOP                         R4 2 ; [-26]
       41 NAMECALL                         R4 R0 K9 ["_queueUpdateState"]
       43 CALL                             R4 1 0
       44 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["lastEditUnixTimeStamp"]
        2 GETTABLEKS                       R4 R1 K0 ["lastEditUnixTimeStamp"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        2 LOADK                            R3 K1 ["RecentVisualizationModes"]
        3 NAMECALL                         R1 R1 K2 ["GetSetting"]
        5 CALL                             R1 2 1
        6 FASTCALL1                        TYPEOF R1 ; [+3]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K4 [typeof]
       10 CALL                             R2 1 1
       11 JUMPIFEQKS                       R2 K5 ["table"] ; [+2]
       13 RETURN                           R0 0
       14 NEWTABLE                         R2 0 0
       16 MOVE                             R3 R1
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 LOADB                            R8 0
       21 FASTCALL1                        TYPEOF R7 ; [+3]
       22 MOVE                             R10 R7
       23 GETIMPORT                        R9 K4 [typeof]
       25 CALL                             R9 1 1
       26 JUMPIFNOTEQKS                    R9 K5 ["table"] ; [+29]
       28 LOADB                            R8 0
       29 GETTABLEKS                       R10 R7 K6 ["visualizationModeCategoryName"]
       31 FASTCALL1                        TYPEOF R10 ; [+2]
       32 GETIMPORT                        R9 K4 [typeof]
       34 CALL                             R9 1 1
       35 JUMPIFNOTEQKS                    R9 K7 ["string"] ; [+20]
       37 LOADB                            R8 0
       38 GETTABLEKS                       R10 R7 K8 ["visualizationModeName"]
       40 FASTCALL1                        TYPEOF R10 ; [+2]
       41 GETIMPORT                        R9 K4 [typeof]
       43 CALL                             R9 1 1
       44 JUMPIFNOTEQKS                    R9 K7 ["string"] ; [+11]
       46 GETTABLEKS                       R10 R7 K9 ["lastEditUnixTimeStamp"]
       48 FASTCALL1                        TYPEOF R10 ; [+2]
       49 GETIMPORT                        R9 K4 [typeof]
       51 CALL                             R9 1 1
       52 JUMPIFEQKS                       R9 K10 ["number"] ; [+2]
       54 LOADB                            R8 0 +1
       55 LOADB                            R8 1
       56 JUMPIFNOT                        R8 ; [+7]
       57 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       59 MOVE                             R9 R2
       60 MOVE                             R10 R7
       61 GETIMPORT                        R8 K12 [table.insert]
       63 CALL                             R8 2 0
       64 FORGLOOP                         R3 2 ; [-45]
       66 GETIMPORT                        R3 K14 [table.sort]
       68 MOVE                             R4 R2
       69 DUPCLOSURE                       R5 K15 [PROTO_15]
       70 CALL                             R3 2 0
       71 LENGTH                           R3 R2
       72 LOADN                            R4 3
       73 JUMPIFNOTLT                      R4 R3 ; [+6]
       75 GETIMPORT                        R3 K17 [table.remove]
       77 MOVE                             R4 R2
       78 CALL                             R3 1 0
       79 JUMPBACK                         ; [-9]
       80 SETTABLEKS                       R2 R0 K18 ["_recentModeRecordList"]
       82 NAMECALL                         R3 R0 K19 ["_queueUpdateState"]
       84 CALL                             R3 1 0
       85 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_queueUpdateState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        2 GETTABLEKS                       R1 R1 K1 ["MultipleDocumentInterfaceInstance"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K2 ["FocusedDataModelSession"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 RETURN                           R0 0
       12 SETTABLEKS                       R2 R0 K3 ["_session"]
       14 GETTABLEKS                       R3 R0 K4 ["_maid"]
       16 GETTABLEKS                       R5 R2 K5 ["CurrentDataModelTypeChanged"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R5 R5 K6 ["Connect"]
       22 CALL                             R5 2 -1
       23 NAMECALL                         R3 R3 K7 ["giveTask"]
       25 CALL                             R3 -1 0
       26 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R3 K3 [{"visualizationModeCategoryName", "visualizationModeName", "lastEditUnixTimeStamp"}]
        1 SETTABLEKS                       R1 R3 K0 ["visualizationModeCategoryName"]
        3 SETTABLEKS                       R2 R3 K1 ["visualizationModeName"]
        5 GETIMPORT                        R4 K6 [DateTime.now]
        7 CALL                             R4 0 1
        8 GETTABLEKS                       R4 R4 K7 ["UnixTimestamp"]
       10 SETTABLEKS                       R4 R3 K2 ["lastEditUnixTimeStamp"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 GETTABLEKS                       R6 R0 K8 ["_recentModeRecordList"]
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 LOADB                            R11 0
       20 GETTABLEKS                       R12 R10 K0 ["visualizationModeCategoryName"]
       22 GETTABLEKS                       R13 R3 K0 ["visualizationModeCategoryName"]
       24 JUMPIFNOTEQ                      R12 R13 ; [+9]
       26 GETTABLEKS                       R12 R10 K1 ["visualizationModeName"]
       28 GETTABLEKS                       R13 R3 K1 ["visualizationModeName"]
       30 JUMPIFEQ                         R12 R13 ; [+2]
       32 LOADB                            R11 0 +1
       33 LOADB                            R11 1
       34 JUMPIFNOT                        R11 ; [+2]
       35 MOVE                             R4 R9
       36 JUMP                             ; [+14]
       37 JUMPIFNOTEQKNIL                  R5 ; [+3]
       39 MOVE                             R5 R9
       40 JUMP                             ; [+10]
       41 GETTABLEKS                       R11 R10 K2 ["lastEditUnixTimeStamp"]
       43 GETTABLEKS                       R13 R0 K8 ["_recentModeRecordList"]
       45 GETTABLE                         R12 R13 R5
       46 GETTABLEKS                       R12 R12 K2 ["lastEditUnixTimeStamp"]
       48 JUMPIFNOTLT                      R11 R12 ; [+2]
       50 MOVE                             R5 R9
       51 FORGLOOP                         R6 2 ; [-33]
       53 LOADNIL                          R6
       54 JUMPIFEQKNIL                     R4 ; [+3]
       56 MOVE                             R6 R4
       57 JUMP                             ; [+14]
       58 GETTABLEKS                       R8 R0 K8 ["_recentModeRecordList"]
       60 LENGTH                           R7 R8
       61 LOADN                            R8 3
       62 JUMPIFNOTLE                      R8 R7 ; [+5]
       64 JUMPIFEQKNIL                     R5 ; [+3]
       66 MOVE                             R6 R5
       67 JUMP                             ; [+4]
       68 GETTABLEKS                       R8 R0 K8 ["_recentModeRecordList"]
       70 LENGTH                           R7 R8
       71 ADDK                             R6 R7 K9 [1]
       72 GETIMPORT                        R7 K12 [table.clone]
       74 GETTABLEKS                       R8 R0 K8 ["_recentModeRecordList"]
       76 CALL                             R7 1 1
       77 SETTABLE                         R3 R7 R6
       78 GETIMPORT                        R8 K14 [table.freeze]
       80 MOVE                             R9 R7
       81 CALL                             R8 1 1
       82 SETTABLEKS                       R8 R0 K8 ["_recentModeRecordList"]
       84 GETTABLEKS                       R8 R0 K15 ["_plugin"]
       86 LOADK                            R10 K16 ["RecentVisualizationModes"]
       87 MOVE                             R11 R7
       88 NAMECALL                         R8 R8 K17 ["SetSetting"]
       90 CALL                             R8 3 0
       91 NAMECALL                         R8 R0 K18 ["_queueUpdateState"]
       93 CALL                             R8 1 0
       94 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["Maid"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["Signal"]
       45 CALL                             R5 1 1
       46 NEWTABLE                         R6 16 0
       48 SETTABLEKS                       R6 R6 K14 ["__index"]
       50 DUPCLOSURE                       R7 K15 [PROTO_0]
       51 DUPCLOSURE                       R8 K16 [PROTO_1]
       52 DUPCLOSURE                       R9 K17 [PROTO_3]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R9 R6 K18 ["new"]
       58 DUPCLOSURE                       R9 K19 [PROTO_5]
       59 SETTABLEKS                       R9 R6 K20 ["_queueUpdateState"]
       61 DUPCLOSURE                       R9 K21 [PROTO_7]
       62 SETTABLEKS                       R9 R6 K22 ["_updateState"]
       64 DUPCLOSURE                       R9 K23 [PROTO_8]
       65 SETTABLEKS                       R9 R6 K24 ["_setState"]
       67 DUPCLOSURE                       R9 K25 [PROTO_9]
       68 SETTABLEKS                       R9 R6 K26 ["getState"]
       70 DUPCLOSURE                       R9 K27 [PROTO_11]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R9 R6 K28 ["updateVisualizationModeCategoryIsEnabled"]
       75 DUPCLOSURE                       R9 K29 [PROTO_14]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R9 R6 K30 ["updateVisualizationModeIsEnabled"]
       80 DUPCLOSURE                       R9 K31 [PROTO_16]
       81 SETTABLEKS                       R9 R6 K32 ["_loadRecentRecords"]
       83 DUPCLOSURE                       R9 K33 [PROTO_18]
       84 SETTABLEKS                       R9 R6 K34 ["_connectToFocusedDataModelSession"]
       86 DUPCLOSURE                       R9 K35 [PROTO_19]
       87 SETTABLEKS                       R9 R6 K36 ["recordRecentVisualizationMode"]
       89 DUPCLOSURE                       R9 K37 [PROTO_20]
       90 SETTABLEKS                       R9 R6 K38 ["destroy"]
       92 RETURN                           R6 1
