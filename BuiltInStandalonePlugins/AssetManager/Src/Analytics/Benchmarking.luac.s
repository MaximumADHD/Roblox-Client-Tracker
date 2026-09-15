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
        3 JUMPIFNOT                        R4 ; [+20]
        4 GETUPVAL                         R4 1
        5 JUMPIFNOT                        R4 ; [+9]
        6 GETIMPORT                        R4 K2 [print]
        8 LOADK                            R5 K3 ["[SKIPPED DUE TO LOCAL BUILD] AssetManager Stat: %*"]
        9 MOVE                             R7 R0
       10 NAMECALL                         R5 R5 K4 ["format"]
       12 CALL                             R5 2 1
       13 CALL                             R4 1 0
       14 JUMP                             ; [+9]
       15 GETIMPORT                        R4 K2 [print]
       17 LOADK                            R5 K5 ["Sending AssetManager Stat, Event: %*, durationMs: %*"]
       18 MOVE                             R7 R0
       19 MOVE                             R8 R3
       20 NAMECALL                         R5 R5 K4 ["format"]
       22 CALL                             R5 3 1
       23 CALL                             R4 1 0
       24 GETUPVAL                         R4 1
       25 JUMPIF                           R4 ; [+27]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K6 ["join"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K7 ["ASSETMANAGER_STAT_CONFIG"]
       32 DUPTABLE                         R6 K9 [{"eventName"}]
       33 LOADK                            R7 K10 ["%*%*"]
       34 GETUPVAL                         R9 3
       35 GETTABLEKS                       R9 R9 K11 ["ASSETMANAGER_STAT_PREFIX"]
       37 MOVE                             R10 R0
       38 NAMECALL                         R7 R7 K4 ["format"]
       40 CALL                             R7 3 1
       41 SETTABLEKS                       R7 R6 K8 ["eventName"]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R5 4
       45 MOVE                             R7 R4
       46 DUPTABLE                         R8 K13 [{"customFields"}]
       47 SETTABLEKS                       R2 R8 K12 ["customFields"]
       49 MOVE                             R9 R3
       50 NAMECALL                         R5 R5 K14 ["LogStat"]
       52 CALL                             R5 4 0
       53 RETURN                           R0 0

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
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K11 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["isLocalBuild"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R4 K15 ["GetService"]
       52 LOADK                            R7 K16 ["TelemetryService"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K17 ["Flags"]
       60 GETTABLEKS                       R8 R8 K18 ["getFFlagDebugAmrPrintAnalytics"]
       62 CALL                             R7 1 1
       63 NEWTABLE                         R8 4 0
       65 DUPCLOSURE                       R9 K19 [PROTO_0]
       66 NEWTABLE                         R10 8 0
       68 GETTABLEKS                       R11 R2 K20 ["BenchmarkingEvent"]
       70 GETTABLEKS                       R11 R11 K21 ["FirstLoad"]
       72 GETTABLEKS                       R12 R1 K22 ["join"]
       74 DUPTABLE                         R13 K30 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
       75 NEWTABLE                         R14 0 0
       77 SETTABLEKS                       R14 R13 K25 ["eventContext"]
       79 DUPTABLE                         R14 K32 [{["onlyTrackFirstEvent"] = True}]
       80 CALL                             R12 2 1
       81 SETTABLE                         R12 R10 R11
       82 GETTABLEKS                       R11 R2 K20 ["BenchmarkingEvent"]
       84 GETTABLEKS                       R11 R11 K33 ["Insert"]
       86 DUPTABLE                         R12 K30 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
       87 NEWTABLE                         R13 0 0
       89 SETTABLEKS                       R13 R12 K25 ["eventContext"]
       91 SETTABLE                         R12 R10 R11
       92 GETTABLEKS                       R11 R2 K20 ["BenchmarkingEvent"]
       94 GETTABLEKS                       R11 R11 K34 ["Share"]
       96 DUPTABLE                         R12 K30 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
       97 NEWTABLE                         R13 0 0
       99 SETTABLEKS                       R13 R12 K25 ["eventContext"]
      101 SETTABLE                         R12 R10 R11
      102 GETTABLEKS                       R11 R2 K20 ["BenchmarkingEvent"]
      104 GETTABLEKS                       R11 R11 K35 ["LoadNewScope"]
      106 DUPTABLE                         R12 K30 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
      107 NEWTABLE                         R13 0 0
      109 SETTABLEKS                       R13 R12 K25 ["eventContext"]
      111 SETTABLE                         R12 R10 R11
      112 GETTABLEKS                       R11 R2 K20 ["BenchmarkingEvent"]
      114 GETTABLEKS                       R11 R11 K36 ["Sort"]
      116 DUPTABLE                         R12 K30 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
      117 NEWTABLE                         R13 0 0
      119 SETTABLEKS                       R13 R12 K25 ["eventContext"]
      121 SETTABLE                         R12 R10 R11
      122 GETTABLEKS                       R11 R2 K20 ["BenchmarkingEvent"]
      124 GETTABLEKS                       R11 R11 K37 ["Filter"]
      126 DUPTABLE                         R12 K30 [{["startTs"] = , ["eventContext"], ["eventUuid"] = , ["onlyTrackFirstEvent"] = False, ["firstEventCompleted"] = False}]
      127 NEWTABLE                         R13 0 0
      129 SETTABLEKS                       R13 R12 K25 ["eventContext"]
      131 SETTABLE                         R12 R10 R11
      132 DUPCLOSURE                       R11 K38 [PROTO_1]
      133 CAPTURE                          VAL R2
      134 DUPCLOSURE                       R12 K39 [PROTO_2]
      135 CAPTURE                          VAL R10
      136 SETTABLEKS                       R12 R8 K40 ["resetTrackerForUnitTests"]
      138 DUPCLOSURE                       R12 K41 [PROTO_3]
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R6
      144 SETTABLEKS                       R12 R8 K42 ["sendBenchmarkingStat"]
      146 DUPCLOSURE                       R12 K43 [PROTO_4]
      147 CAPTURE                          VAL R10
      148 SETTABLEKS                       R12 R8 K44 ["eventStart"]
      150 DUPCLOSURE                       R12 K45 [PROTO_5]
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R2
      155 SETTABLEKS                       R12 R8 K46 ["eventEnd"]
      157 RETURN                           R8 1
