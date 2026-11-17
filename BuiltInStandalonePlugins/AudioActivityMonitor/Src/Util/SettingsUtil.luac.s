PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["plugin was nil"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 LOADK                            R2 K3 ["AudioActivityMonitorSettings"]
        9 NEWTABLE                         R3 0 0
       11 NAMECALL                         R0 R0 K4 ["SetSetting"]
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K5 ["reportSettingsReset"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["plugin was nil"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 LOADK                            R4 K3 ["AudioActivityMonitorSettings"]
        9 NAMECALL                         R2 R2 K4 ["GetSetting"]
       11 CALL                             R2 2 1
       12 FASTCALL1                        TYPEOF R2 ; [+3]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K6 [typeof]
       16 CALL                             R3 1 1
       17 JUMPIFEQKS                       R3 K7 ["table"] ; [+3]
       19 NEWTABLE                         R2 0 0
       21 SETTABLE                         R1 R2 R0
       22 GETUPVAL                         R3 0
       23 LOADK                            R5 K3 ["AudioActivityMonitorSettings"]
       24 MOVE                             R6 R2
       25 NAMECALL                         R3 R3 K8 ["SetSetting"]
       27 CALL                             R3 3 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["plugin was nil"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 LOADK                            R4 K3 ["AudioActivityMonitorSettings"]
        9 NAMECALL                         R2 R2 K4 ["GetSetting"]
       11 CALL                             R2 2 1
       12 FASTCALL1                        TYPEOF R2 ; [+3]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K6 [typeof]
       16 CALL                             R3 1 1
       17 JUMPIFEQKS                       R3 K7 ["table"] ; [+3]
       19 NEWTABLE                         R2 0 0
       21 GETTABLE                         R3 R2 R0
       22 JUMPIFNOTEQKNIL                  R3 ; [+2]
       24 RETURN                           R1 1
       25 GETTABLE                         R3 R2 R0
       26 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["loadSetting"]
        3 MOVE                             R4 R1
        4 NEWTABLE                         R5 0 0
        6 CALL                             R3 2 1
        7 NEWTABLE                         R4 0 0
        9 MOVE                             R5 R0
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLEKS                       R11 R9 K1 ["name"]
       15 GETTABLE                         R10 R3 R11
       16 JUMPIFNOTEQKNIL                  R10 ; [+10]
       18 MOVE                             R12 R4
       19 MOVE                             R13 R2
       20 MOVE                             R14 R9
       21 CALL                             R13 1 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R11 K4 [table.insert]
       25 CALL                             R11 -1 0
       26 JUMP                             ; [+7]
       27 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       29 MOVE                             R12 R4
       30 MOVE                             R13 R10
       31 GETIMPORT                        R11 K4 [table.insert]
       33 CALL                             R11 2 0
       34 FORGLOOP                         R5 2 ; [-22]
       36 RETURN                           R4 1

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R8 K0 ["name"]
        8 GETTABLE                         R10 R2 R7
        9 SETTABLE                         R10 R3 R9
       10 FORGLOOP                         R4 2 ; [-5]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K1 ["storeSetting"]
       15 MOVE                             R5 R1
       16 MOVE                             R6 R3
       17 CALL                             R4 2 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["defaultVisibility"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["columnVisibilities"]
        3 DUPCLOSURE                       R4 K1 [PROTO_6]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["columnVisibilities"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["defaultWidth"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["columnWidths"]
        3 DUPCLOSURE                       R4 K1 [PROTO_9]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["columnWidths"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["loadSetting"]
        3 LOADK                            R2 K1 ["meteringMode"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["storeSetting"]
        3 LOADK                            R2 K1 ["meteringMode"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["TelemetryUtil"]
       22 CALL                             R2 1 1
       23 LOADNIL                          R3
       24 NEWTABLE                         R4 16 0
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          REF R3
       28 SETTABLEKS                       R5 R4 K10 ["init"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          REF R3
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R5 R4 K11 ["restoreDefaults"]
       35 NEWCLOSURE                       R5 P2
       36 CAPTURE                          REF R3
       37 SETTABLEKS                       R5 R4 K12 ["storeSetting"]
       39 NEWCLOSURE                       R5 P3
       40 CAPTURE                          REF R3
       41 SETTABLEKS                       R5 R4 K13 ["loadSetting"]
       43 DUPCLOSURE                       R5 K14 [PROTO_4]
       44 CAPTURE                          VAL R4
       45 DUPCLOSURE                       R6 K15 [PROTO_5]
       46 CAPTURE                          VAL R4
       47 DUPCLOSURE                       R7 K16 [PROTO_7]
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R7 R4 K17 ["loadColumnVisibilities"]
       51 DUPCLOSURE                       R7 K18 [PROTO_8]
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R7 R4 K19 ["storeColumnVisibilities"]
       55 DUPCLOSURE                       R7 K20 [PROTO_10]
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R7 R4 K21 ["loadColumnWidths"]
       59 DUPCLOSURE                       R7 K22 [PROTO_11]
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R7 R4 K23 ["storeColumnWidths"]
       63 DUPCLOSURE                       R7 K24 [PROTO_12]
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R7 R4 K25 ["loadMeteringMode"]
       67 DUPCLOSURE                       R7 K26 [PROTO_13]
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R7 R4 K27 ["storeMeteringMode"]
       71 CLOSEUPVALS                      R3
       72 RETURN                           R4 1
