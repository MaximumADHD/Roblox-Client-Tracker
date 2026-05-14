PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K3 [{"Controls", "Actions", "Settings"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K0 ["Controls"]
        7 NEWTABLE                         R3 0 0
        9 SETTABLEKS                       R3 R2 K1 ["Actions"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K2 ["Settings"]
       15 LOADN                            R3 0
       16 LOADN                            R4 0
       17 MOVE                             R5 R1
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 ADDK                             R4 R4 K4 [1]
       22 MOVE                             R10 R9
       23 MOVE                             R11 R0
       24 CALL                             R10 1 1
       25 GETTABLEKS                       R11 R10 K5 ["state"]
       27 JUMPIFNOTEQKS                    R11 K6 ["loading"] ; [+2]
       29 ADDK                             R3 R3 K4 [1]
       30 GETTABLEKS                       R11 R10 K5 ["state"]
       32 JUMPIFNOTEQKS                    R11 K7 ["ready"] ; [+20]
       34 GETTABLEKS                       R11 R10 K8 ["kind"]
       36 JUMPIFNOTEQKS                    R11 K9 ["action"] ; [+7]
       38 GETTABLEKS                       R11 R2 K1 ["Actions"]
       40 GETTABLEKS                       R12 R10 K10 ["value"]
       42 SETTABLE                         R12 R11 R8
       43 JUMP                             ; [+9]
       44 GETTABLEKS                       R11 R10 K8 ["kind"]
       46 JUMPIFNOTEQKS                    R11 K11 ["setting"] ; [+6]
       48 GETTABLEKS                       R11 R2 K2 ["Settings"]
       50 GETTABLEKS                       R12 R10 K10 ["value"]
       52 SETTABLE                         R12 R11 R8
       53 FORGLOOP                         R5 2 ; [-33]
       55 GETUPVAL                         R5 2
       56 JUMPIF                           R5 ; [+47]
       57 JUMPIFNOTEQKN                    R3 K12 [0] ; [+46]
       59 LOADN                            R5 0
       60 JUMPIFNOTLT                      R5 R4 ; [+43]
       62 LOADB                            R5 1
       63 SETUPVAL                         R5 2
       64 GETIMPORT                        R7 K16 [os.clock]
       66 CALL                             R7 0 1
       67 GETUPVAL                         R8 3
       68 SUB                              R6 R7 R8
       69 MULK                             R5 R6 K13 [1000]
       70 DIV                              R6 R5 R4
       71 GETUPVAL                         R7 4
       72 GETUPVAL                         R9 5
       73 GETTABLEKS                       R9 R9 K17 ["USE_CONTROLS_TIME_TO_FETCH_MS"]
       75 GETUPVAL                         R10 5
       76 GETTABLEKS                       R10 R10 K18 ["DEFAULT_METADATA"]
       78 MOVE                             R11 R5
       79 NAMECALL                         R7 R7 K19 ["LogStat"]
       81 CALL                             R7 4 0
       82 GETUPVAL                         R7 4
       83 GETUPVAL                         R9 5
       84 GETTABLEKS                       R9 R9 K20 ["USE_CONTROLS_NUM_ITEMS"]
       86 GETUPVAL                         R10 5
       87 GETTABLEKS                       R10 R10 K18 ["DEFAULT_METADATA"]
       89 MOVE                             R11 R4
       90 NAMECALL                         R7 R7 K19 ["LogStat"]
       92 CALL                             R7 4 0
       93 GETUPVAL                         R7 4
       94 GETUPVAL                         R9 5
       95 GETTABLEKS                       R9 R9 K21 ["USE_CONTROLS_TIME_PER_ITEM_FETCHED_MS"]
       97 GETUPVAL                         R10 5
       98 GETTABLEKS                       R10 R10 K18 ["DEFAULT_METADATA"]
      100 MOVE                             R11 R6
      101 NAMECALL                         R7 R7 K19 ["LogStat"]
      103 CALL                             R7 4 0
      104 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 1
        3 LOADB                            R1 0
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 NAMECALL                         R2 R2 K3 ["watchControls"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K4 ["createComputed"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          REF R1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CALL                             R3 1 -1
       20 CLOSEUPVALS                      R1
       21 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 2
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 NEWTABLE                         R4 0 2
       12 MOVE                             R5 R1
       13 MOVE                             R6 R0
       14 SETLIST                          R4 R5 2 [1]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 6
       18 GETTABLEKS                       R3 R3 K0 ["useSignalState"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["TelemetryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["useContext"]
       22 GETTABLEKS                       R4 R2 K13 ["useMemo"]
       24 GETIMPORT                        R5 K9 [require]
       26 GETTABLEKS                       R6 R0 K14 ["Src"]
       28 GETTABLEKS                       R6 R6 K15 ["Contexts"]
       30 GETTABLEKS                       R6 R6 K16 ["ControlSignalStoreContext"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K9 [require]
       35 GETTABLEKS                       R7 R0 K10 ["Packages"]
       37 GETTABLEKS                       R7 R7 K17 ["Signals"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K9 [require]
       42 GETTABLEKS                       R8 R0 K10 ["Packages"]
       44 GETTABLEKS                       R8 R8 K18 ["SignalsReact"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K9 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Src"]
       51 GETTABLEKS                       R9 R9 K19 ["Types"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K9 [require]
       56 GETTABLEKS                       R10 R0 K14 ["Src"]
       58 GETTABLEKS                       R10 R10 K20 ["Resources"]
       60 GETTABLEKS                       R10 R10 K21 ["TelemetryConfigs"]
       62 CALL                             R9 1 1
       63 DUPCLOSURE                       R10 K22 [PROTO_2]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R7
       71 RETURN                           R10 1
