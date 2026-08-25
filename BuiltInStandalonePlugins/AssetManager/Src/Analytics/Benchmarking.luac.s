PROTO_0:
        0 DUPTABLE                         R0 K7 [{[1] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K2 ["eventContext"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["BenchmarkingEvent"]
        3 GETTABLEKS                       R2 R2 K1 ["LoadNewScope"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+7]
        7 DUPTABLE                         R2 K3 [{"isBackgroundFetch"}]
        8 GETTABLEKS                       R3 R1 K2 ["isBackgroundFetch"]
       10 SETTABLEKS                       R3 R2 K2 ["isBackgroundFetch"]
       12 RETURN                           R2 1
       13 NEWTABLE                         R2 0 0
       15 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 LOADNIL                          R5
        5 SETTABLEKS                       R5 R4 K0 ["startTs"]
        7 LOADB                            R5 0
        8 SETTABLEKS                       R5 R4 K1 ["firstEventCompleted"]
       10 NEWTABLE                         R5 0 0
       12 SETTABLEKS                       R5 R4 K2 ["eventContext"]
       14 LOADNIL                          R5
       15 SETTABLEKS                       R5 R4 K3 ["eventUuid"]
       17 FORGLOOP                         R0 2 ; [-14]
       19 RETURN                           R0 0

PROTO_3:
        0 MULK                             R3 R1 K0 [1000]
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 JUMPIFNOT                        R4 ; [+10]
        4 GETIMPORT                        R4 K2 [print]
        6 LOADK                            R6 K3 ["Sending AssetManager Stat, Event: %*, durationMs: %*"]
        7 MOVE                             R8 R0
        8 MOVE                             R9 R3
        9 NAMECALL                         R6 R6 K4 ["format"]
       11 CALL                             R6 3 1
       12 MOVE                             R5 R6
       13 CALL                             R4 1 0
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K5 ["join"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K6 ["ASSETMANAGER_STAT_CONFIG"]
       20 DUPTABLE                         R6 K8 [{"eventName"}]
       21 LOADK                            R8 K9 ["%*%*"]
       22 GETUPVAL                         R10 2
       23 GETTABLEKS                       R10 R10 K10 ["ASSETMANAGER_PREFIX"]
       25 MOVE                             R11 R0
       26 NAMECALL                         R8 R8 K4 ["format"]
       28 CALL                             R8 3 1
       29 MOVE                             R7 R8
       30 SETTABLEKS                       R7 R6 K7 ["eventName"]
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 3
       34 MOVE                             R7 R4
       35 DUPTABLE                         R8 K12 [{"customFields"}]
       36 SETTABLEKS                       R2 R8 K11 ["customFields"]
       38 MOVE                             R9 R3
       39 NAMECALL                         R5 R5 K13 ["LogStat"]
       41 CALL                             R5 4 0
       42 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETIMPORT                        R4 K2 [os.clock]
        4 CALL                             R4 0 1
        5 SETTABLEKS                       R4 R3 K3 ["startTs"]
        7 GETUPVAL                         R4 0
        8 GETTABLE                         R3 R4 R0
        9 MOVE                             R4 R1
       10 JUMPIF                           R4 ; [+2]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K4 ["eventContext"]
       15 GETUPVAL                         R4 0
       16 GETTABLE                         R3 R4 R0
       17 SETTABLEKS                       R2 R3 K5 ["eventUuid"]
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+15]
        4 GETTABLEKS                       R4 R3 K0 ["startTs"]
        6 JUMPIFEQKNIL                     R4 ; [+11]
        8 GETTABLEKS                       R4 R3 K1 ["onlyTrackFirstEvent"]
       10 JUMPIFNOT                        R4 ; [+3]
       11 GETTABLEKS                       R4 R3 K2 ["firstEventCompleted"]
       13 JUMPIF                           R4 ; [+4]
       14 GETTABLEKS                       R4 R3 K3 ["eventUuid"]
       16 JUMPIFEQ                         R4 R1 ; [+2]
       18 RETURN                           R0 0
       19 GETIMPORT                        R5 K6 [os.clock]
       21 CALL                             R5 0 1
       22 GETTABLEKS                       R6 R3 K0 ["startTs"]
       24 SUB                              R4 R5 R6
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K7 ["sendBenchmarkingStat"]
       28 MOVE                             R6 R0
       29 MOVE                             R7 R4
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K8 ["join"]
       33 MOVE                             R9 R2
       34 JUMPIF                           R9 ; [+2]
       35 NEWTABLE                         R9 0 0
       37 GETTABLEKS                       R11 R3 K9 ["eventContext"]
       39 GETUPVAL                         R12 3
       40 GETTABLEKS                       R12 R12 K10 ["BenchmarkingEvent"]
       42 GETTABLEKS                       R12 R12 K11 ["LoadNewScope"]
       44 JUMPIFNOTEQ                      R0 R12 ; [+7]
       46 DUPTABLE                         R10 K13 [{"isBackgroundFetch"}]
       47 GETTABLEKS                       R12 R11 K12 ["isBackgroundFetch"]
       49 SETTABLEKS                       R12 R10 K12 ["isBackgroundFetch"]
       51 JUMP                             ; [+2]
       52 NEWTABLE                         R10 0 0
       54 CALL                             R8 2 -1
       55 CALL                             R5 -1 0
       56 LOADB                            R5 1
       57 SETTABLEKS                       R5 R3 K2 ["firstEventCompleted"]
       59 LOADNIL                          R5
       60 SETTABLEKS                       R5 R3 K0 ["startTs"]
       62 NEWTABLE                         R5 0 0
       64 SETTABLEKS                       R5 R3 K9 ["eventContext"]
       66 LOADNIL                          R5
       67 SETTABLEKS                       R5 R3 K3 ["eventUuid"]
       69 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K8 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["Services"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K14 ["GetService"]
       43 LOADK                            R6 K15 ["TelemetryService"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R0 K11 ["Src"]
       49 GETTABLEKS                       R7 R7 K16 ["Flags"]
       51 GETTABLEKS                       R7 R7 K17 ["getFFlagDebugAmrPrintAnalytics"]
       53 CALL                             R6 1 1
       54 NEWTABLE                         R7 4 0
       56 DUPCLOSURE                       R8 K18 [PROTO_0]
       57 NEWTABLE                         R9 8 0
       59 GETTABLEKS                       R10 R2 K19 ["BenchmarkingEvent"]
       61 GETTABLEKS                       R10 R10 K20 ["FirstLoad"]
       63 GETTABLEKS                       R11 R1 K21 ["join"]
       65 DUPTABLE                         R12 K29 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
       66 NEWTABLE                         R13 0 0
       68 SETTABLEKS                       R13 R12 K24 ["eventContext"]
       70 DUPTABLE                         R13 K31 [{["onlyTrackFirstEvent"] = True}]
       71 CALL                             R11 2 1
       72 SETTABLE                         R11 R9 R10
       73 GETTABLEKS                       R10 R2 K19 ["BenchmarkingEvent"]
       75 GETTABLEKS                       R10 R10 K32 ["Insert"]
       77 DUPTABLE                         R11 K29 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
       78 NEWTABLE                         R12 0 0
       80 SETTABLEKS                       R12 R11 K24 ["eventContext"]
       82 SETTABLE                         R11 R9 R10
       83 GETTABLEKS                       R10 R2 K19 ["BenchmarkingEvent"]
       85 GETTABLEKS                       R10 R10 K33 ["Share"]
       87 DUPTABLE                         R11 K29 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
       88 NEWTABLE                         R12 0 0
       90 SETTABLEKS                       R12 R11 K24 ["eventContext"]
       92 SETTABLE                         R11 R9 R10
       93 GETTABLEKS                       R10 R2 K19 ["BenchmarkingEvent"]
       95 GETTABLEKS                       R10 R10 K34 ["LoadNewScope"]
       97 DUPTABLE                         R11 K29 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
       98 NEWTABLE                         R12 0 0
      100 SETTABLEKS                       R12 R11 K24 ["eventContext"]
      102 SETTABLE                         R11 R9 R10
      103 GETTABLEKS                       R10 R2 K19 ["BenchmarkingEvent"]
      105 GETTABLEKS                       R10 R10 K35 ["Sort"]
      107 DUPTABLE                         R11 K29 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
      108 NEWTABLE                         R12 0 0
      110 SETTABLEKS                       R12 R11 K24 ["eventContext"]
      112 SETTABLE                         R11 R9 R10
      113 GETTABLEKS                       R10 R2 K19 ["BenchmarkingEvent"]
      115 GETTABLEKS                       R10 R10 K36 ["Filter"]
      117 DUPTABLE                         R11 K29 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
      118 NEWTABLE                         R12 0 0
      120 SETTABLEKS                       R12 R11 K24 ["eventContext"]
      122 SETTABLE                         R11 R9 R10
      123 DUPCLOSURE                       R10 K37 [PROTO_1]
      124 CAPTURE                          VAL R2
      125 DUPCLOSURE                       R11 K38 [PROTO_2]
      126 CAPTURE                          VAL R9
      127 SETTABLEKS                       R11 R7 K39 ["resetTrackerForUnitTests"]
      129 DUPCLOSURE                       R11 K40 [PROTO_3]
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R5
      134 SETTABLEKS                       R11 R7 K41 ["sendBenchmarkingStat"]
      136 DUPCLOSURE                       R11 K42 [PROTO_4]
      137 CAPTURE                          VAL R9
      138 SETTABLEKS                       R11 R7 K43 ["eventStart"]
      140 DUPCLOSURE                       R11 K44 [PROTO_5]
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R2
      145 SETTABLEKS                       R11 R7 K45 ["eventEnd"]
      147 RETURN                           R7 1
