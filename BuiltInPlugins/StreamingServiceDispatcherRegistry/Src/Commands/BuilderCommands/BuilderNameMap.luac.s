PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R2 R0
        2 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 LOADNIL                          R2
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETUPVAL                         R3 0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R0
       10 NAMECALL                         R3 R3 K1 ["GetInstance"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 MOVE                             R3 R2
       15 JUMPIF                           R3 ; [+2]
       16 GETUPVAL                         R4 1
       17 GETTABLE                         R3 R4 R0
       18 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+12]
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K0 ["IsRecordingInProgress"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+4]
        8 GETIMPORT                        R2 K2 [warn]
       10 LOADK                            R3 K3 ["StartRecordingActions failed: currentRecording is set but not running"]
       11 CALL                             R2 1 0
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 MOVE                             R2 R1
       15 JUMPIF                           R2 ; [+4]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K4 ["requestToRecordName"]
       19 GETTABLE                         R2 R3 R0
       20 JUMPIF                           R2 ; [+18]
       21 LOADK                            R3 K5 ["Assistant Actions %*"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K6 ["recordingActionNumber"]
       25 NAMECALL                         R3 R3 K7 ["format"]
       27 CALL                             R3 2 1
       28 MOVE                             R2 R3
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R4 R3 K6 ["recordingActionNumber"]
       32 ADDK                             R4 R4 K8 [1]
       33 SETTABLEKS                       R4 R3 K6 ["recordingActionNumber"]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R3 R4 K4 ["requestToRecordName"]
       38 SETTABLE                         R2 R3 R0
       39 GETUPVAL                         R3 1
       40 MOVE                             R5 R2
       41 NAMECALL                         R3 R3 K9 ["TryBeginRecording"]
       43 CALL                             R3 2 1
       44 JUMPIF                           R3 ; [+6]
       45 GETIMPORT                        R4 K2 [warn]
       47 LOADK                            R5 K10 ["StartRecordingActions failed: TryBeginRecording returned nil"]
       48 CALL                             R4 1 0
       49 LOADB                            R4 0
       50 RETURN                           R4 1
       51 SETUPVAL                         R3 0
       52 LOADB                            R4 1
       53 MOVE                             R5 R3
       54 RETURN                           R4 2

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 0
        5 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        7 LOADK                            R4 K0 ["Luau"]
        8 GETIMPORT                        R2 K2 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 1
       12 NAMECALL                         R2 R2 K3 ["GetCanUndo"]
       14 CALL                             R2 1 2
       15 GETIMPORT                        R4 K7 [Enum.FinishRecordingOperation.Append]
       17 MOVE                             R5 R1
       18 JUMPIF                           R5 ; [+4]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K8 ["requestToRecordName"]
       22 GETTABLE                         R5 R6 R0
       23 JUMPIF                           R5 ; [+2]
       24 LOADB                            R6 0
       25 RETURN                           R6 1
       26 GETUPVAL                         R6 3
       27 JUMPIFNOTEQ                      R6 R0 ; [+3]
       29 JUMPIFEQ                         R3 R5 ; [+3]
       31 GETIMPORT                        R4 K10 [Enum.FinishRecordingOperation.Commit]
       33 GETUPVAL                         R6 1
       34 GETUPVAL                         R8 0
       35 MOVE                             R9 R4
       36 NAMECALL                         R6 R6 K11 ["FinishRecording"]
       38 CALL                             R6 3 0
       39 JUMPIF                           R1 ; [+6]
       40 GETUPVAL                         R6 4
       41 MOVE                             R8 R0
       42 MOVE                             R9 R5
       43 NAMECALL                         R6 R6 K12 ["RecordingActionEnded"]
       45 CALL                             R6 3 0
       46 SETUPVAL                         R0 3
       47 LOADNIL                          R6
       48 SETUPVAL                         R6 0
       49 LOADB                            R6 1
       50 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["requestMetadata"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R0 R1 K1 ["RequestId"]
       10 GETIMPORT                        R2 K4 [os.clock]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K5 ["Time_Start"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["requestMetadata"]
       18 SETTABLE                         R1 R2 R0
       19 RETURN                           R1 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["Instance"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 NAMECALL                         R2 R2 K3 ["SetAttribute"]
       13 CALL                             R2 3 0
       14 JUMPIFNOTEQKS                    R0 K4 ["Query"] ; [+19]
       16 GETUPVAL                         R2 0
       17 LOADK                            R4 K5 ["PROMPT: "]
       18 LOADK                            R8 K6 ["^("]
       19 LOADK                            R11 K7 ["."]
       20 LOADN                            R13 30
       21 NAMECALL                         R11 R11 K8 ["rep"]
       23 CALL                             R11 2 1
       24 MOVE                             R9 R11
       25 LOADK                            R10 K9 [".-)( .*)$"]
       26 CONCAT                           R7 R8 R10
       27 LOADK                            R8 K10 ["%1..."]
       28 NAMECALL                         R5 R1 K11 ["gsub"]
       30 CALL                             R5 3 1
       31 CONCAT                           R3 R4 R5
       32 SETTABLEKS                       R3 R2 K12 ["Name"]
       34 RETURN                           R0 0

PROTO_6:
        0 FASTCALL1                        TYPEOF R2 ; [+3]
        1 MOVE                             R4 R2
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["Instance"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R3 K3 ["SetAttribute"]
       13 CALL                             R3 3 0
       14 JUMPIFNOTEQKS                    R1 K4 ["Query"] ; [+19]
       16 GETUPVAL                         R3 0
       17 LOADK                            R5 K5 ["PROMPT: "]
       18 LOADK                            R9 K6 ["^("]
       19 LOADK                            R12 K7 ["."]
       20 LOADN                            R14 30
       21 NAMECALL                         R12 R12 K8 ["rep"]
       23 CALL                             R12 2 1
       24 MOVE                             R10 R12
       25 LOADK                            R11 K9 [".-)( .*)$"]
       26 CONCAT                           R8 R9 R11
       27 LOADK                            R9 K10 ["%1..."]
       28 NAMECALL                         R6 R2 K11 ["gsub"]
       30 CALL                             R6 3 1
       31 CONCAT                           R4 R5 R6
       32 SETTABLEKS                       R4 R3 K12 ["Name"]
       34 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R1 R0
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLE                         R1 R2 R0
        7 JUMPIF                           R1 ; [+83]
        8 GETIMPORT                        R2 K3 [Instance.new]
       10 LOADK                            R3 K4 ["Folder"]
       11 CALL                             R2 1 1
       12 MOVE                             R1 R2
       13 GETIMPORT                        R2 K6 [workspace]
       15 SETTABLEKS                       R2 R1 K7 ["Parent"]
       17 GETUPVAL                         R2 0
       18 SETTABLE                         R1 R2 R0
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          REF R1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K8 ["requestMetadata"]
       24 GETTABLE                         R4 R5 R0
       25 JUMPIFNOT                        R4 ; [+2]
       26 MOVE                             R3 R4
       27 JUMP                             ; [+14]
       28 NEWTABLE                         R4 0 0
       30 SETTABLEKS                       R0 R4 K9 ["RequestId"]
       32 GETIMPORT                        R5 K12 [os.clock]
       34 CALL                             R5 0 1
       35 SETTABLEKS                       R5 R4 K13 ["Time_Start"]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R5 R6 K8 ["requestMetadata"]
       40 SETTABLE                         R4 R5 R0
       41 MOVE                             R3 R4
       42 MOVE                             R4 R3
       43 LOADNIL                          R5
       44 LOADNIL                          R6
       45 FORGPREP                         R4
       46 FASTCALL1                        TYPEOF R8 ; [+3]
       47 MOVE                             R10 R8
       48 GETIMPORT                        R9 K15 [typeof]
       50 CALL                             R9 1 1
       51 JUMPIFNOTEQKS                    R9 K1 ["Instance"] ; [+2]
       53 JUMP                             ; [+24]
       54 MOVE                             R11 R7
       55 MOVE                             R12 R8
       56 NAMECALL                         R9 R1 K16 ["SetAttribute"]
       58 CALL                             R9 3 0
       59 JUMPIFNOTEQKS                    R7 K17 ["Query"] ; [+18]
       61 LOADK                            R10 K18 ["PROMPT: "]
       62 LOADK                            R14 K19 ["^("]
       63 LOADK                            R17 K20 ["."]
       64 LOADN                            R19 30
       65 NAMECALL                         R17 R17 K21 ["rep"]
       67 CALL                             R17 2 1
       68 MOVE                             R15 R17
       69 LOADK                            R16 K22 [".-)( .*)$"]
       70 CONCAT                           R13 R14 R16
       71 LOADK                            R14 K23 ["%1..."]
       72 NAMECALL                         R11 R8 K24 ["gsub"]
       74 CALL                             R11 3 1
       75 CONCAT                           R9 R10 R11
       76 SETTABLEKS                       R9 R1 K25 ["Name"]
       78 FORGLOOP                         R4 2 ; [-33]
       80 DUPTABLE                         R6 K27 [{"__newindex"}]
       81 NEWCLOSURE                       R7 P1
       82 CAPTURE                          REF R1
       83 SETTABLEKS                       R7 R6 K26 ["__newindex"]
       85 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       87 MOVE                             R5 R3
       88 GETIMPORT                        R4 K29 [setmetatable]
       90 CALL                             R4 2 0
       91 CLOSEUPVALS                      R1
       92 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["requestMetadata"]
        3 GETTABLE                         R3 R4 R0
        4 JUMPIFNOT                        R3 ; [+2]
        5 MOVE                             R2 R3
        6 JUMP                             ; [+14]
        7 NEWTABLE                         R3 0 0
        9 SETTABLEKS                       R0 R3 K1 ["RequestId"]
       11 GETIMPORT                        R4 K4 [os.clock]
       13 CALL                             R4 0 1
       14 SETTABLEKS                       R4 R3 K5 ["Time_Start"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K0 ["requestMetadata"]
       19 SETTABLE                         R3 R4 R0
       20 MOVE                             R2 R3
       21 GETTABLE                         R3 R2 R1
       22 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["requestMetadata"]
        3 GETTABLE                         R4 R5 R0
        4 JUMPIFNOT                        R4 ; [+2]
        5 MOVE                             R3 R4
        6 JUMP                             ; [+14]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R0 R4 K1 ["RequestId"]
       11 GETIMPORT                        R5 K4 [os.clock]
       13 CALL                             R5 0 1
       14 SETTABLEKS                       R5 R4 K5 ["Time_Start"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["requestMetadata"]
       19 SETTABLE                         R4 R5 R0
       20 MOVE                             R3 R4
       21 SETTABLE                         R2 R3 R1
       22 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 FASTCALL1                        TYPEOF R4 ; [+3]
        5 MOVE                             R6 R4
        6 GETIMPORT                        R5 K1 [typeof]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+3]
       11 NEWTABLE                         R4 0 0
       13 FORGLOOP                         R0 2 ; [-10]
       15 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utils"]
       13 GETTABLEKS                       R2 R3 K8 ["CliAdapter"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["ChangeHistoryService"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K9 ["GetService"]
       22 LOADK                            R4 K11 ["ConversationalAIAcceptanceService"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R1 K9 ["GetService"]
       26 LOADK                            R5 K12 ["StreamingService"]
       27 CALL                             R4 1 1
       28 DUPTABLE                         R5 K26 [{"assetCacheMap", "g2g", "guid2instance", "guidToInfo", "chatBulletMap", "altDataMap", "requestRegionAdornments", "requestMetadata", "activeDraftGuids", "draftModeModels", "cachedAssetAttributionInfo", "recordingActionNumber", "requestToRecordName"}]
       29 NEWTABLE                         R6 0 0
       31 SETTABLEKS                       R6 R5 K13 ["assetCacheMap"]
       33 NEWTABLE                         R6 0 0
       35 SETTABLEKS                       R6 R5 K14 ["g2g"]
       37 NEWTABLE                         R6 0 0
       39 SETTABLEKS                       R6 R5 K15 ["guid2instance"]
       41 NEWTABLE                         R6 0 0
       43 SETTABLEKS                       R6 R5 K16 ["guidToInfo"]
       45 NEWTABLE                         R6 0 0
       47 SETTABLEKS                       R6 R5 K17 ["chatBulletMap"]
       49 NEWTABLE                         R6 0 0
       51 SETTABLEKS                       R6 R5 K18 ["altDataMap"]
       53 NEWTABLE                         R6 0 0
       55 SETTABLEKS                       R6 R5 K19 ["requestRegionAdornments"]
       57 NEWTABLE                         R6 0 0
       59 SETTABLEKS                       R6 R5 K20 ["requestMetadata"]
       61 LOADNIL                          R6
       62 SETTABLEKS                       R6 R5 K21 ["activeDraftGuids"]
       64 NEWTABLE                         R6 0 0
       66 SETTABLEKS                       R6 R5 K22 ["draftModeModels"]
       68 NEWTABLE                         R6 0 0
       70 SETTABLEKS                       R6 R5 K23 ["cachedAssetAttributionInfo"]
       72 LOADN                            R6 1
       73 SETTABLEKS                       R6 R5 K24 ["recordingActionNumber"]
       75 NEWTABLE                         R6 0 0
       77 SETTABLEKS                       R6 R5 K25 ["requestToRecordName"]
       79 NEWTABLE                         R6 0 0
       81 NEWTABLE                         R7 0 0
       83 DUPCLOSURE                       R8 K27 [PROTO_0]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R8 R5 K28 ["get"]
       88 DUPCLOSURE                       R8 K29 [PROTO_1]
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R8 R5 K30 ["set"]
       92 LOADNIL                          R8
       93 LOADNIL                          R9
       94 NEWCLOSURE                       R10 P2
       95 CAPTURE                          REF R9
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R5
       98 SETTABLEKS                       R10 R5 K31 ["StartRecordingActions"]
      100 NEWCLOSURE                       R10 P3
      101 CAPTURE                          REF R9
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R5
      104 CAPTURE                          REF R8
      105 CAPTURE                          VAL R3
      106 SETTABLEKS                       R10 R5 K32 ["EndRecordingActions"]
      108 DUPCLOSURE                       R10 K33 [PROTO_4]
      109 CAPTURE                          VAL R5
      110 DUPCLOSURE                       R11 K34 [PROTO_7]
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R5
      113 SETTABLEKS                       R11 R5 K35 ["GetRequestFolder"]
      115 DUPCLOSURE                       R11 K36 [PROTO_8]
      116 CAPTURE                          VAL R5
      117 SETTABLEKS                       R11 R5 K37 ["GetRequestMetadata"]
      119 DUPCLOSURE                       R11 K38 [PROTO_9]
      120 CAPTURE                          VAL R5
      121 SETTABLEKS                       R11 R5 K39 ["SetRequestMetadata"]
      123 DUPCLOSURE                       R11 K40 [PROTO_10]
      124 CAPTURE                          VAL R5
      125 SETTABLEKS                       R11 R5 K41 ["clear"]
      127 DUPCLOSURE                       R11 K42 [PROTO_11]
      128 SETTABLEKS                       R11 R5 K43 ["destroy"]
      130 CLOSEUPVALS                      R8
      131 RETURN                           R5 1
