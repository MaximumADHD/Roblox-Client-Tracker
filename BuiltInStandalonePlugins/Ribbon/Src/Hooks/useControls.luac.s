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
       27 GETUPVAL                         R12 2
       28 GETTABLEKS                       R12 R12 K6 ["Status"]
       30 GETTABLEKS                       R12 R12 K7 ["Loading"]
       32 JUMPIFNOTEQ                      R11 R12 ; [+2]
       34 ADDK                             R3 R3 K4 [1]
       35 GETTABLEKS                       R11 R10 K5 ["state"]
       37 GETUPVAL                         R12 2
       38 GETTABLEKS                       R12 R12 K6 ["Status"]
       40 GETTABLEKS                       R12 R12 K8 ["Nonexistent"]
       42 JUMPIFNOTEQ                      R11 R12 ; [+20]
       44 GETTABLEKS                       R11 R10 K9 ["kind"]
       46 GETUPVAL                         R12 2
       47 GETTABLEKS                       R12 R12 K10 ["Kind"]
       49 GETTABLEKS                       R12 R12 K11 ["Action"]
       51 JUMPIFNOTEQ                      R11 R12 ; [+49]
       53 GETTABLEKS                       R11 R2 K12 ["NonexistentActions"]
       55 JUMPIF                           R11 ; [+2]
       56 NEWTABLE                         R11 0 0
       58 SETTABLEKS                       R11 R2 K12 ["NonexistentActions"]
       60 LOADB                            R12 1
       61 SETTABLE                         R12 R11 R8
       62 JUMP                             ; [+38]
       63 GETTABLEKS                       R11 R10 K5 ["state"]
       65 GETUPVAL                         R12 2
       66 GETTABLEKS                       R12 R12 K6 ["Status"]
       68 GETTABLEKS                       R12 R12 K13 ["Ready"]
       70 JUMPIFNOTEQ                      R11 R12 ; [+30]
       72 GETTABLEKS                       R11 R10 K9 ["kind"]
       74 GETUPVAL                         R12 2
       75 GETTABLEKS                       R12 R12 K10 ["Kind"]
       77 GETTABLEKS                       R12 R12 K11 ["Action"]
       79 JUMPIFNOTEQ                      R11 R12 ; [+7]
       81 GETTABLEKS                       R11 R2 K1 ["Actions"]
       83 GETTABLEKS                       R12 R10 K14 ["value"]
       85 SETTABLE                         R12 R11 R8
       86 JUMP                             ; [+14]
       87 GETTABLEKS                       R11 R10 K9 ["kind"]
       89 GETUPVAL                         R12 2
       90 GETTABLEKS                       R12 R12 K10 ["Kind"]
       92 GETTABLEKS                       R12 R12 K15 ["Setting"]
       94 JUMPIFNOTEQ                      R11 R12 ; [+6]
       96 GETTABLEKS                       R11 R2 K2 ["Settings"]
       98 GETTABLEKS                       R12 R10 K14 ["value"]
      100 SETTABLE                         R12 R11 R8
      101 FORGLOOP                         R5 2 ; [-81]
      103 GETUPVAL                         R5 3
      104 JUMPIF                           R5 ; [+47]
      105 JUMPIFNOTEQKN                    R3 K16 [0] ; [+46]
      107 LOADN                            R5 0
      108 JUMPIFNOTLT                      R5 R4 ; [+43]
      110 LOADB                            R5 1
      111 SETUPVAL                         R5 3
      112 GETIMPORT                        R7 K20 [os.clock]
      114 CALL                             R7 0 1
      115 GETUPVAL                         R8 4
      116 SUB                              R6 R7 R8
      117 MULK                             R5 R6 K17 [1000]
      118 DIV                              R6 R5 R4
      119 GETUPVAL                         R7 5
      120 GETUPVAL                         R9 6
      121 GETTABLEKS                       R9 R9 K21 ["USE_CONTROLS_TIME_TO_FETCH_MS"]
      123 GETUPVAL                         R10 6
      124 GETTABLEKS                       R10 R10 K22 ["DEFAULT_METADATA"]
      126 MOVE                             R11 R5
      127 NAMECALL                         R7 R7 K23 ["LogStat"]
      129 CALL                             R7 4 0
      130 GETUPVAL                         R7 5
      131 GETUPVAL                         R9 6
      132 GETTABLEKS                       R9 R9 K24 ["USE_CONTROLS_NUM_ITEMS"]
      134 GETUPVAL                         R10 6
      135 GETTABLEKS                       R10 R10 K22 ["DEFAULT_METADATA"]
      137 MOVE                             R11 R4
      138 NAMECALL                         R7 R7 K23 ["LogStat"]
      140 CALL                             R7 4 0
      141 GETUPVAL                         R7 5
      142 GETUPVAL                         R9 6
      143 GETTABLEKS                       R9 R9 K25 ["USE_CONTROLS_TIME_PER_ITEM_FETCHED_MS"]
      145 GETUPVAL                         R10 6
      146 GETTABLEKS                       R10 R10 K22 ["DEFAULT_METADATA"]
      148 MOVE                             R11 R6
      149 NAMECALL                         R7 R7 K23 ["LogStat"]
      151 CALL                             R7 4 0
      152 RETURN                           R2 1

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
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          REF R1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CALL                             R3 1 -1
       21 CLOSEUPVALS                      R1
       22 RETURN                           R3 -1

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
       10 CAPTURE                          UPVAL U6
       11 NEWTABLE                         R4 0 2
       13 MOVE                             R5 R1
       14 MOVE                             R6 R0
       15 SETLIST                          R4 R5 2 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 7
       19 GETTABLEKS                       R3 R3 K0 ["useSignalState"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 -1
       23 RETURN                           R3 -1

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
       35 GETTABLEKS                       R7 R0 K14 ["Src"]
       37 GETTABLEKS                       R7 R7 K17 ["Util"]
       39 GETTABLEKS                       R7 R7 K18 ["ControlState"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K9 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Packages"]
       46 GETTABLEKS                       R8 R8 K19 ["Signals"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K9 [require]
       51 GETTABLEKS                       R9 R0 K10 ["Packages"]
       53 GETTABLEKS                       R9 R9 K20 ["SignalsReact"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K9 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Src"]
       60 GETTABLEKS                       R10 R10 K21 ["Types"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K9 [require]
       65 GETTABLEKS                       R11 R0 K14 ["Src"]
       67 GETTABLEKS                       R11 R11 K22 ["Resources"]
       69 GETTABLEKS                       R11 R11 K23 ["TelemetryConfigs"]
       71 CALL                             R10 1 1
       72 DUPCLOSURE                       R11 K24 [PROTO_2]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R8
       81 RETURN                           R11 1
