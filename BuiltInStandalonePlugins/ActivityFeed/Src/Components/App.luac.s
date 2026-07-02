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

PROTO_10:
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
       53 GETUPVAL                         R8 4
       54 DUPTABLE                         R9 K26 [{["Intent"] = "Warning", ["Heading"], ["Body"], ["ActionPrimary"], ["Modal"] = True, ["OnClosed"]}]
       55 GETTABLEKS                       R10 R0 K27 ["errorHeader"]
       57 SETTABLEKS                       R10 R9 K20 ["Heading"]
       59 GETTABLEKS                       R10 R0 K28 ["errorMsg"]
       61 SETTABLEKS                       R10 R9 K21 ["Body"]
       63 GETUPVAL                         R10 5
       64 GETTABLEKS                       R10 R10 K29 ["Dictionary"]
       66 GETTABLEKS                       R10 R10 K30 ["join"]
       68 GETUPVAL                         R11 6
       69 GETTABLEKS                       R11 R11 K31 ["OK"]
       71 DUPTABLE                         R12 K33 [{"OnActivated"}]
       72 SETTABLEKS                       R7 R12 K32 ["OnActivated"]
       74 CALL                             R10 2 1
       75 SETTABLEKS                       R10 R9 K22 ["ActionPrimary"]
       77 SETTABLEKS                       R7 R9 K25 ["OnClosed"]
       79 CALL                             R8 1 1
       80 GETUPVAL                         R9 1
       81 GETTABLEKS                       R9 R9 K34 ["useEffect"]
       83 NEWCLOSURE                       R10 P7
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R8
       86 NEWTABLE                         R11 0 3
       88 MOVE                             R12 R8
       89 GETTABLEKS                       R13 R0 K28 ["errorMsg"]
       91 GETTABLEKS                       R14 R0 K27 ["errorHeader"]
       93 SETLIST                          R11 R12 3 [1]
       95 CALL                             R9 2 0
       96 GETUPVAL                         R9 1
       97 GETTABLEKS                       R9 R9 K35 ["createElement"]
       99 GETUPVAL                         R10 7
      100 MOVE                             R11 R6
      101 DUPTABLE                         R12 K37 [{"ActivityHistoryMain"}]
      102 GETUPVAL                         R13 1
      103 GETTABLEKS                       R13 R13 K35 ["createElement"]
      105 GETUPVAL                         R14 8
      106 DUPTABLE                         R15 K39 [{"isPublishedGame", "enabled"}]
      107 SETTABLEKS                       R3 R15 K38 ["isPublishedGame"]
      109 GETTABLEKS                       R16 R0 K13 ["enabled"]
      111 SETTABLEKS                       R16 R15 K13 ["enabled"]
      113 CALL                             R13 2 1
      114 SETTABLEKS                       R13 R12 K36 ["ActivityHistoryMain"]
      116 CALL                             R9 3 -1
      117 RETURN                           R9 -1

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
       93 GETTABLEKS                       R11 R9 K21 ["UI"]
       95 GETTABLEKS                       R11 R11 K16 ["Hooks"]
       97 GETTABLEKS                       R11 R11 K22 ["useDialog"]
       99 GETTABLEKS                       R12 R9 K23 ["Util"]
      101 GETTABLEKS                       R12 R12 K24 ["DialogAction"]
      103 DUPCLOSURE                       R13 K25 [PROTO_10]
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R5
      113 RETURN                           R13 1
