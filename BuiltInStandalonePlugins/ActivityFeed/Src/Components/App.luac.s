PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DataModelSessionStarted"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["DataModelSessionEnded"]
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R1 R1 K1 ["Connect"]
       13 CALL                             R1 2 1
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["plugin"]
        3 GETTABLEKS                       R2 R2 K1 ["MultipleDocumentInterfaceInstance"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R5 0 2
       14 MOVE                             R6 R0
       15 MOVE                             R7 R1
       16 SETLIST                          R5 R6 2 [1]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 LOADK                            R2 K1 ["publishgame"]
        4 NAMECALL                         R0 R0 K2 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["plugin"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["plugin"]
        3 LOADK                            R5 K1 ["ActivityFeed.UniversalLinker"]
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 NAMECALL                         R3 R3 K2 ["Invoke"]
        9 CALL                             R3 5 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 LOADK                            R2 K1 ["ActivityHistoryManager"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClearErrorMessage"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnClearErrorMessage"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K4 ["plugin"]
       10 NAMECALL                         R2 R2 K5 ["GetUri"]
       12 CALL                             R2 1 1
       13 DUPTABLE                         R3 K10 [{["Category"] = "Widget", ["ItemId"] = "Dialog/Error"}]
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       17 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["errorMsg"]
        3 JUMPIFEQKNIL                     R0 ; [+29]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["errorHeader"]
        8 JUMPIFEQKNIL                     R0 ; [+24]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["errorMsg"]
       13 FASTCALL1                        STRING_LEN R1 ; [+2]
       14 GETIMPORT                        R0 K4 [string.len]
       16 CALL                             R0 1 1
       17 LOADN                            R1 0
       18 JUMPIFNOTLT                      R1 R0 ; [+14]
       20 GETIMPORT                        R0 K6 [warn]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K1 ["errorHeader"]
       25 LOADK                            R3 K7 [": "]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K0 ["errorMsg"]
       29 CONCAT                           R1 R2 R4
       30 CALL                             R0 1 0
       31 GETUPVAL                         R0 1
       32 CALL                             R0 0 0
       33 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["plugin"]
        3 CALL                             R1 1 2
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 GETIMPORT                        R5 K3 [game]
       13 LOADK                            R7 K4 ["GuiService"]
       14 NAMECALL                         R5 R5 K5 ["GetService"]
       16 CALL                             R5 2 1
       17 DUPTABLE                         R6 K17 [{["activityHistoryClient"], ["showSaveOrPublishPlaceToRobloxFn"], ["useCollaborators"], ["usePlaceAndUniverseId"], ["useConnectToDataModelSessionEffect"], ["DEPRECATED_openBrowserLink"], ["openLink"], ["enabled"], ["contextType"] = "real context", ["getActivityHistoryManager"]}]
       18 GETUPVAL                         R7 2
       19 SETTABLEKS                       R7 R6 K6 ["activityHistoryClient"]
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R7 R6 K7 ["showSaveOrPublishPlaceToRobloxFn"]
       25 GETUPVAL                         R7 3
       26 SETTABLEKS                       R7 R6 K8 ["useCollaborators"]
       28 NEWCLOSURE                       R7 P2
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R7 R6 K9 ["usePlaceAndUniverseId"]
       33 SETTABLEKS                       R4 R6 K10 ["useConnectToDataModelSessionEffect"]
       35 NEWCLOSURE                       R7 P3
       36 CAPTURE                          VAL R5
       37 SETTABLEKS                       R7 R6 K11 ["DEPRECATED_openBrowserLink"]
       39 NEWCLOSURE                       R7 P4
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R7 R6 K12 ["openLink"]
       43 GETTABLEKS                       R7 R0 K13 ["enabled"]
       45 SETTABLEKS                       R7 R6 K13 ["enabled"]
       47 NEWCLOSURE                       R7 P5
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R7 R6 K16 ["getActivityHistoryManager"]
       51 NEWCLOSURE                       R7 P6
       52 CAPTURE                          VAL R0
       53 GETUPVAL                         R9 4
       54 JUMPIFNOT                        R9 ; [+15]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K18 ["useMemo"]
       58 NEWCLOSURE                       R9 P7
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          VAL R0
       62 NEWTABLE                         R10 0 1
       64 GETTABLEKS                       R11 R0 K0 ["plugin"]
       66 SETLIST                          R10 R11 1 [1]
       68 CALL                             R8 2 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R8
       71 GETUPVAL                         R9 7
       72 DUPTABLE                         R10 K28 [{["Intent"] = "Warning", ["Heading"], ["Body"], ["ActionPrimary"], ["Modal"] = True, ["OnClosed"], ["MigrateToStudioFoundation"]}]
       73 GETTABLEKS                       R11 R0 K29 ["errorHeader"]
       75 SETTABLEKS                       R11 R10 K21 ["Heading"]
       77 GETTABLEKS                       R11 R0 K30 ["errorMsg"]
       79 SETTABLEKS                       R11 R10 K22 ["Body"]
       81 GETUPVAL                         R11 8
       82 GETTABLEKS                       R11 R11 K31 ["Dictionary"]
       84 GETTABLEKS                       R11 R11 K32 ["join"]
       86 GETUPVAL                         R12 9
       87 GETTABLEKS                       R12 R12 K33 ["OK"]
       89 DUPTABLE                         R13 K35 [{"OnActivated"}]
       90 SETTABLEKS                       R7 R13 K34 ["OnActivated"]
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K23 ["ActionPrimary"]
       95 SETTABLEKS                       R7 R10 K26 ["OnClosed"]
       97 SETTABLEKS                       R8 R10 K27 ["MigrateToStudioFoundation"]
       99 CALL                             R9 1 1
      100 GETUPVAL                         R10 1
      101 GETTABLEKS                       R10 R10 K36 ["useEffect"]
      103 NEWCLOSURE                       R11 P8
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R9
      106 NEWTABLE                         R12 0 3
      108 MOVE                             R13 R9
      109 GETTABLEKS                       R14 R0 K30 ["errorMsg"]
      111 GETTABLEKS                       R15 R0 K29 ["errorHeader"]
      113 SETLIST                          R12 R13 3 [1]
      115 CALL                             R10 2 0
      116 GETUPVAL                         R10 1
      117 GETTABLEKS                       R10 R10 K37 ["createElement"]
      119 GETUPVAL                         R11 10
      120 MOVE                             R12 R6
      121 DUPTABLE                         R13 K39 [{"ActivityHistoryMain"}]
      122 GETUPVAL                         R14 1
      123 GETTABLEKS                       R14 R14 K37 ["createElement"]
      125 GETUPVAL                         R15 11
      126 DUPTABLE                         R16 K41 [{"isPublishedGame", "enabled"}]
      127 SETTABLEKS                       R3 R16 K40 ["isPublishedGame"]
      129 GETTABLEKS                       R17 R0 K13 ["enabled"]
      131 SETTABLEKS                       R17 R16 K13 ["enabled"]
      133 CALL                             R14 2 1
      134 SETTABLEKS                       R14 R13 K38 ["ActivityHistoryMain"]
      136 CALL                             R10 3 -1
      137 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Clients"]
       22 GETTABLEKS                       R3 R3 K9 ["ActivityHistoryClient"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Clients"]
       31 GETTABLEKS                       R4 R4 K10 ["MockActivityHistoryClient"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K12 ["ActivityHistoryProvider"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K13 ["Components"]
       49 GETTABLEKS                       R6 R6 K14 ["ActivityHistoryMain"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K13 ["Components"]
       58 GETTABLEKS                       R7 R7 K15 ["StylingExamples"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R8 R0 K7 ["Src"]
       65 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       67 GETTABLEKS                       R8 R8 K17 ["useCollaborators"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETTABLEKS                       R9 R0 K7 ["Src"]
       74 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       76 GETTABLEKS                       R9 R9 K18 ["usePlaceAndUniverseId"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K4 [require]
       81 GETTABLEKS                       R10 R0 K5 ["Packages"]
       83 GETTABLEKS                       R10 R10 K19 ["Framework"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K4 [require]
       88 GETTABLEKS                       R11 R0 K5 ["Packages"]
       90 GETTABLEKS                       R11 R11 K20 ["Cryo"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K4 [require]
       95 GETTABLEKS                       R12 R0 K5 ["Packages"]
       97 GETTABLEKS                       R12 R12 K21 ["StudioFoundation"]
       99 CALL                             R11 1 1
      100 GETTABLEKS                       R12 R9 K22 ["UI"]
      102 GETTABLEKS                       R12 R12 K16 ["Hooks"]
      104 GETTABLEKS                       R12 R12 K23 ["RESTRICTED_useDialog"]
      106 GETTABLEKS                       R13 R9 K24 ["Util"]
      108 GETTABLEKS                       R13 R13 K25 ["DialogAction"]
      110 GETTABLEKS                       R14 R11 K13 ["Components"]
      112 GETTABLEKS                       R14 R14 K26 ["Dialog"]
      114 GETTABLEKS                       R15 R11 K24 ["Util"]
      116 GETTABLEKS                       R15 R15 K27 ["StudioUri"]
      118 GETIMPORT                        R16 K4 [require]
      120 GETTABLEKS                       R17 R0 K7 ["Src"]
      122 GETTABLEKS                       R17 R17 K28 ["SharedFlags"]
      124 GETTABLEKS                       R17 R17 K29 ["getFFlagActivityFeedMigrateUseDialog"]
      126 CALL                             R16 1 1
      127 CALL                             R16 0 1
      128 DUPCLOSURE                       R17 K30 [PROTO_11]
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R5
      141 RETURN                           R17 1
