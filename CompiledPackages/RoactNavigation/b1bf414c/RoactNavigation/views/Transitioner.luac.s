PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["navigation"]
        2 GETTABLEKS                       R3 R0 K1 ["options"]
        4 GETTABLEKS                       R4 R1 K2 ["layout"]
        6 GETTABLEKS                       R5 R1 K3 ["position"]
        8 GETTABLEKS                       R6 R1 K4 ["scenes"]
       10 LOADNIL                          R7
       11 GETIMPORT                        R8 K6 [ipairs]
       13 MOVE                             R9 R6
       14 CALL                             R8 1 3
       15 FORGPREP_INEXT                   R8
       16 GETTABLEKS                       R13 R12 K7 ["isActive"]
       18 JUMPIFNOT                        R13 ; [+2]
       19 MOVE                             R7 R12
       20 JUMP                             ; [+2]
       21 FORGLOOP                         R8 2 [inext] ; [-6]
       23 GETUPVAL                         R8 0
       24 MOVE                             R9 R7
       25 LOADK                            R10 K8 ["Could not find active scene"]
       26 CALL                             R8 2 0
       27 DUPTABLE                         R8 K11 [{"layout", "navigation", "position", "scenes", "scene", "options", "index"}]
       28 SETTABLEKS                       R4 R8 K2 ["layout"]
       30 SETTABLEKS                       R2 R8 K0 ["navigation"]
       32 SETTABLEKS                       R5 R8 K3 ["position"]
       34 SETTABLEKS                       R6 R8 K4 ["scenes"]
       36 SETTABLEKS                       R7 R8 K9 ["scene"]
       38 SETTABLEKS                       R3 R8 K1 ["options"]
       40 GETTABLEKS                       R9 R7 K10 ["index"]
       42 SETTABLEKS                       R9 R8 K10 ["index"]
       44 RETURN                           R8 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["isStale"]
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["List"]
        3 GETTABLEKS                       R1 R1 K1 ["filter"]
        5 MOVE                             R2 R0
        6 DUPCLOSURE                       R3 K2 [PROTO_1]
        7 CALL                             R1 2 1
        8 LENGTH                           R2 R1
        9 LENGTH                           R3 R0
       10 JUMPIFNOTEQ                      R2 R3 ; [+2]
       12 RETURN                           R0 1
       13 RETURN                           R1 1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onAbsoluteSizeChanged"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["_onTransitionEnd"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R0 R0 K1 ["_onPositionStep"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 GETTABLEKS                       R1 R1 K2 ["state"]
        6 GETTABLEKS                       R2 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["descriptors"]
       10 DUPTABLE                         R3 K7 [{"layout", "position", "scenes"}]
       11 DUPTABLE                         R4 K11 [{"initWidth", "initHeight", "isMeasured"}]
       12 LOADN                            R5 0
       13 SETTABLEKS                       R5 R4 K8 ["initWidth"]
       15 LOADN                            R5 0
       16 SETTABLEKS                       R5 R4 K9 ["initHeight"]
       18 LOADB                            R5 0
       19 SETTABLEKS                       R5 R4 K10 ["isMeasured"]
       21 SETTABLEKS                       R4 R3 K4 ["layout"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K12 ["createSingleMotor"]
       26 GETTABLEKS                       R5 R1 K13 ["index"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K5 ["position"]
       31 GETUPVAL                         R4 1
       32 NEWTABLE                         R5 0 0
       34 MOVE                             R6 R1
       35 LOADNIL                          R7
       36 MOVE                             R8 R2
       37 CALL                             R4 4 1
       38 SETTABLEKS                       R4 R3 K6 ["scenes"]
       40 SETTABLEKS                       R3 R0 K2 ["state"]
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R3 R0 K14 ["_doOnAbsoluteSizeChanged"]
       46 GETTABLEKS                       R3 R1 K13 ["index"]
       48 SETTABLEKS                       R3 R0 K15 ["_positionLastValue"]
       50 LOADNIL                          R3
       51 SETTABLEKS                       R3 R0 K16 ["_prevTransitionProps"]
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R4 R0 K0 ["props"]
       56 GETTABLEKS                       R5 R0 K2 ["state"]
       58 CALL                             R3 2 1
       59 SETTABLEKS                       R3 R0 K17 ["_transitionProps"]
       61 LOADB                            R3 0
       62 SETTABLEKS                       R3 R0 K18 ["_isMounted"]
       64 LOADB                            R3 0
       65 SETTABLEKS                       R3 R0 K19 ["_isTransitionRunning"]
       67 NEWTABLE                         R3 0 0
       69 SETTABLEKS                       R3 R0 K20 ["_transitionQueue"]
       71 GETTABLEKS                       R3 R0 K2 ["state"]
       73 GETTABLEKS                       R3 R3 K5 ["position"]
       75 NEWCLOSURE                       R5 P1
       76 CAPTURE                          VAL R0
       77 NAMECALL                         R3 R3 K21 ["onComplete"]
       79 CALL                             R3 2 1
       80 SETTABLEKS                       R3 R0 K22 ["_completeSignalDisconnector"]
       82 GETTABLEKS                       R3 R0 K2 ["state"]
       84 GETTABLEKS                       R3 R3 K5 ["position"]
       86 NEWCLOSURE                       R5 P2
       87 CAPTURE                          VAL R0
       88 NAMECALL                         R3 R3 K23 ["onStep"]
       90 CALL                             R3 2 1
       91 SETTABLEKS                       R3 R0 K24 ["_stepSignalDisconnector"]
       93 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["_completeSignalDisconnector"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R1 R0 K1 ["_completeSignalDisconnector"]
        8 CALL                             R1 0 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K1 ["_completeSignalDisconnector"]
       12 GETTABLEKS                       R1 R0 K2 ["_stepSignalDisconnector"]
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETTABLEKS                       R1 R0 K2 ["_stepSignalDisconnector"]
       17 CALL                             R1 0 0
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K2 ["_stepSignalDisconnector"]
       21 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 JUMPIFEQ                         R2 R1 ; [+34]
        4 GETTABLEKS                       R2 R0 K1 ["_isTransitionRunning"]
        6 JUMPIFNOT                        R2 ; [+24]
        7 GETTABLEKS                       R3 R0 K2 ["_transitionQueue"]
        9 GETTABLEKS                       R5 R0 K2 ["_transitionQueue"]
       11 LENGTH                           R4 R5
       12 GETTABLE                         R2 R3 R4
       13 JUMPIF                           R2 ; [+2]
       14 NEWTABLE                         R2 0 0
       16 GETTABLEKS                       R3 R2 K3 ["prevProps"]
       18 JUMPIFEQ                         R3 R1 ; [+11]
       20 GETTABLEKS                       R4 R0 K2 ["_transitionQueue"]
       22 DUPTABLE                         R5 K4 [{"prevProps"}]
       23 SETTABLEKS                       R1 R5 K3 ["prevProps"]
       25 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       27 GETIMPORT                        R3 K7 [table.insert]
       29 CALL                             R3 2 0
       30 RETURN                           R0 0
       31 MOVE                             R4 R1
       32 GETTABLEKS                       R5 R0 K0 ["props"]
       34 NAMECALL                         R2 R0 K8 ["_startTransition"]
       36 CALL                             R2 3 0
       37 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 8 0
        6 GETIMPORT                        R4 K4 [UDim2.new]
        8 LOADN                            R5 1
        9 LOADN                            R6 0
       10 LOADN                            R7 1
       11 LOADN                            R8 0
       12 CALL                             R4 4 1
       13 SETTABLEKS                       R4 R3 K5 ["Size"]
       15 LOADN                            R4 1
       16 SETTABLEKS                       R4 R3 K6 ["BackgroundTransparency"]
       18 LOADN                            R4 0
       19 SETTABLEKS                       R4 R3 K7 ["BorderSizePixel"]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K8 ["ClipsDescendants"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K9 ["Change"]
       27 GETTABLEKS                       R4 R4 K10 ["AbsoluteSize"]
       29 GETTABLEKS                       R5 R0 K11 ["_doOnAbsoluteSizeChanged"]
       31 SETTABLE                         R5 R3 R4
       32 NEWTABLE                         R4 1 0
       34 GETTABLEKS                       R5 R0 K12 ["props"]
       36 GETTABLEKS                       R5 R5 K13 ["render"]
       38 GETTABLEKS                       R6 R0 K14 ["_transitionProps"]
       40 GETTABLEKS                       R7 R0 K15 ["_prevTransitionProps"]
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R4 K16 ["TransitionerScenes"]
       45 CALL                             R1 3 -1
       46 RETURN                           R1 -1

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R2 R2 K1 ["X"]
        4 GETTABLEKS                       R3 R1 K0 ["AbsoluteSize"]
        6 GETTABLEKS                       R3 R3 K2 ["Y"]
        8 GETTABLEKS                       R4 R0 K3 ["state"]
       10 GETTABLEKS                       R4 R4 K4 ["layout"]
       12 GETTABLEKS                       R4 R4 K5 ["initWidth"]
       14 JUMPIFNOTEQ                      R2 R4 ; [+10]
       16 GETTABLEKS                       R4 R0 K3 ["state"]
       18 GETTABLEKS                       R4 R4 K4 ["layout"]
       20 GETTABLEKS                       R4 R4 K6 ["initHeight"]
       22 JUMPIFNOTEQ                      R3 R4 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K7 ["Dictionary"]
       28 GETTABLEKS                       R4 R4 K8 ["join"]
       30 GETTABLEKS                       R5 R0 K3 ["state"]
       32 GETTABLEKS                       R5 R5 K4 ["layout"]
       34 DUPTABLE                         R6 K10 [{"initWidth", "initHeight", "isMeasured"}]
       35 SETTABLEKS                       R2 R6 K5 ["initWidth"]
       37 SETTABLEKS                       R3 R6 K6 ["initHeight"]
       39 LOADB                            R7 1
       40 SETTABLEKS                       R7 R6 K9 ["isMeasured"]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K7 ["Dictionary"]
       46 GETTABLEKS                       R5 R5 K8 ["join"]
       48 GETTABLEKS                       R6 R0 K3 ["state"]
       50 DUPTABLE                         R7 K11 [{"layout"}]
       51 SETTABLEKS                       R4 R7 K4 ["layout"]
       53 CALL                             R5 2 1
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R7 R0 K12 ["props"]
       57 MOVE                             R8 R5
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R0 K13 ["_transitionProps"]
       61 DUPTABLE                         R8 K11 [{"layout"}]
       62 SETTABLEKS                       R4 R8 K4 ["layout"]
       64 NAMECALL                         R6 R0 K14 ["setState"]
       66 CALL                             R6 2 0
       67 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["state"]
        3 GETTABLEKS                       R4 R4 K1 ["scenes"]
        5 GETTABLEKS                       R5 R2 K2 ["navigation"]
        7 GETTABLEKS                       R5 R5 K0 ["state"]
        9 GETTABLEKS                       R6 R1 K2 ["navigation"]
       11 GETTABLEKS                       R6 R6 K0 ["state"]
       13 GETTABLEKS                       R7 R2 K3 ["descriptors"]
       15 CALL                             R3 4 1
       16 GETTABLEKS                       R4 R2 K2 ["navigation"]
       18 GETTABLEKS                       R4 R4 K0 ["state"]
       20 GETTABLEKS                       R4 R4 K4 ["isTransitioning"]
       22 JUMPIF                           R4 ; [+16]
       23 MOVE                             R4 R3
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K5 ["List"]
       27 GETTABLEKS                       R5 R5 K6 ["filter"]
       29 MOVE                             R6 R4
       30 DUPCLOSURE                       R7 K7 [PROTO_1]
       31 CALL                             R5 2 1
       32 LENGTH                           R6 R5
       33 LENGTH                           R7 R4
       34 JUMPIFNOTEQ                      R6 R7 ; [+3]
       36 MOVE                             R3 R4
       37 JUMP                             ; [+1]
       38 MOVE                             R3 R5
       39 GETTABLEKS                       R4 R0 K0 ["state"]
       41 GETTABLEKS                       R4 R4 K1 ["scenes"]
       43 JUMPIFNOTEQ                      R3 R4 ; [+3]
       45 LOADNIL                          R4
       46 RETURN                           R4 1
       47 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onTransitionStart"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onTransitionStart"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["_transitionProps"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["_prevTransitionProps"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 2
       15 JUMPIFNOT                        R0 ; [+10]
       16 GETUPVAL                         R0 3
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K3 ["instant"]
       20 GETUPVAL                         R3 5
       21 CALL                             R2 1 -1
       22 NAMECALL                         R0 R0 K4 ["setGoal"]
       24 CALL                             R0 -1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 1
       27 NAMECALL                         R0 R0 K5 ["_onTransitionEnd"]
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onTransitionStart"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onTransitionStart"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["_transitionProps"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["_prevTransitionProps"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R4 R1 K0 ["navigation"]
        2 GETTABLEKS                       R4 R4 K1 ["state"]
        4 GETTABLEKS                       R4 R4 K2 ["index"]
        6 GETTABLEKS                       R5 R2 K0 ["navigation"]
        8 GETTABLEKS                       R5 R5 K1 ["state"]
       10 GETTABLEKS                       R5 R5 K2 ["index"]
       12 JUMPIFNOTEQ                      R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 NAMECALL                         R4 R0 K3 ["_computeScenes"]
       20 CALL                             R4 3 1
       21 JUMPIF                           R4 ; [+22]
       22 GETTABLEKS                       R5 R0 K4 ["_transitionProps"]
       24 SETTABLEKS                       R5 R0 K5 ["_prevTransitionProps"]
       26 GETTABLEKS                       R5 R0 K1 ["state"]
       28 GETTABLEKS                       R5 R5 K6 ["position"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K7 ["instant"]
       33 GETTABLEKS                       R8 R1 K0 ["navigation"]
       35 GETTABLEKS                       R8 R8 K1 ["state"]
       37 GETTABLEKS                       R8 R8 K2 ["index"]
       39 CALL                             R7 1 -1
       40 NAMECALL                         R5 R5 K8 ["setGoal"]
       42 CALL                             R5 -1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K9 ["Dictionary"]
       47 GETTABLEKS                       R5 R5 K10 ["join"]
       49 GETTABLEKS                       R6 R0 K1 ["state"]
       51 DUPTABLE                         R7 K12 [{"scenes"}]
       52 SETTABLEKS                       R4 R7 K11 ["scenes"]
       54 CALL                             R5 2 1
       55 GETTABLEKS                       R6 R5 K6 ["position"]
       57 GETTABLEKS                       R7 R2 K0 ["navigation"]
       59 GETTABLEKS                       R7 R7 K1 ["state"]
       61 GETTABLEKS                       R7 R7 K2 ["index"]
       63 GETTABLEKS                       R8 R0 K4 ["_transitionProps"]
       65 SETTABLEKS                       R8 R0 K5 ["_prevTransitionProps"]
       67 GETUPVAL                         R8 2
       68 MOVE                             R9 R2
       69 MOVE                             R10 R5
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R0 K4 ["_transitionProps"]
       73 GETTABLEKS                       R8 R0 K4 ["_transitionProps"]
       75 GETTABLEKS                       R8 R8 K0 ["navigation"]
       77 GETTABLEKS                       R8 R8 K1 ["state"]
       79 GETTABLEKS                       R8 R8 K13 ["isTransitioning"]
       81 JUMPIFNOT                        R8 ; [+1]
       82 JUMPIF                           R3 ; [+15]
       83 MOVE                             R11 R5
       84 NAMECALL                         R9 R0 K14 ["setState"]
       86 CALL                             R9 2 0
       87 GETIMPORT                        R9 K16 [spawn]
       89 NEWCLOSURE                       R10 P0
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R6
       94 CAPTURE                          UPVAL U0
       95 CAPTURE                          VAL R7
       96 CALL                             R9 1 0
       97 RETURN                           R0 0
       98 JUMPIFNOT                        R8 ; [+63]
       99 LOADB                            R9 1
      100 SETTABLEKS                       R9 R0 K17 ["_isTransitionRunning"]
      102 MOVE                             R11 R5
      103 NAMECALL                         R9 R0 K14 ["setState"]
      105 CALL                             R9 2 0
      106 GETIMPORT                        R9 K16 [spawn]
      108 NEWCLOSURE                       R10 P1
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R0
      111 CALL                             R9 1 0
      112 NEWTABLE                         R9 0 0
      114 GETTABLEKS                       R10 R2 K18 ["configureTransition"]
      116 JUMPIFNOT                        R10 ; [+11]
      117 GETTABLEKS                       R10 R2 K18 ["configureTransition"]
      119 GETTABLEKS                       R11 R0 K4 ["_transitionProps"]
      121 GETTABLEKS                       R12 R0 K5 ["_prevTransitionProps"]
      123 CALL                             R10 2 1
      124 JUMPIF                           R10 ; [+2]
      125 NEWTABLE                         R10 0 0
      127 MOVE                             R9 R10
      128 GETUPVAL                         R10 1
      129 GETTABLEKS                       R10 R10 K9 ["Dictionary"]
      131 GETTABLEKS                       R10 R10 K10 ["join"]
      133 GETUPVAL                         R11 3
      134 MOVE                             R12 R9
      135 CALL                             R10 2 1
      136 GETTABLEKS                       R12 R0 K19 ["_positionLastValue"]
      138 JUMPIFNOTEQ                      R12 R7 ; [+2]
      140 LOADB                            R11 0 +1
      141 LOADB                            R11 1
      142 JUMPIFNOT                        R3 ; [+16]
      143 JUMPIFNOT                        R11 ; [+15]
      144 GETUPVAL                         R14 0
      145 GETTABLEKS                       R14 R14 K20 ["spring"]
      147 GETTABLEKS                       R15 R2 K0 ["navigation"]
      149 GETTABLEKS                       R15 R15 K1 ["state"]
      151 GETTABLEKS                       R15 R15 K2 ["index"]
      153 MOVE                             R16 R10
      154 CALL                             R14 2 -1
      155 NAMECALL                         R12 R6 K8 ["setGoal"]
      157 CALL                             R12 -1 0
      158 RETURN                           R0 0
      159 NAMECALL                         R12 R0 K21 ["_onTransitionEnd"]
      161 CALL                             R12 1 0
      162 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onTransitionEnd"]
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["onTransitionEnd"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["_transitionProps"]
       14 GETUPVAL                         R2 1
       15 CALL                             R0 2 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K3 ["_transitionQueue"]
       19 GETTABLEN                        R0 R1 1
       20 JUMPIFNOT                        R0 ; [+24]
       21 GETTABLEKS                       R1 R0 K4 ["prevProps"]
       23 GETUPVAL                         R2 0
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K5 ["List"]
       27 GETTABLEKS                       R3 R3 K6 ["removeIndex"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K3 ["_transitionQueue"]
       32 LOADN                            R5 1
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R2 K3 ["_transitionQueue"]
       36 GETUPVAL                         R2 0
       37 MOVE                             R4 R1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K0 ["props"]
       41 NAMECALL                         R2 R2 K7 ["_startTransition"]
       43 CALL                             R2 3 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R1 0
       46 LOADB                            R2 0
       47 SETTABLEKS                       R2 R1 K8 ["_isTransitionRunning"]
       49 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_prevTransitionProps"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K0 ["_prevTransitionProps"]
        5 GETTABLEKS                       R3 R0 K1 ["state"]
        7 GETTABLEKS                       R3 R3 K2 ["scenes"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["List"]
       12 GETTABLEKS                       R4 R4 K4 ["filter"]
       14 MOVE                             R5 R3
       15 DUPCLOSURE                       R6 K5 [PROTO_1]
       16 CALL                             R4 2 1
       17 LENGTH                           R5 R4
       18 LENGTH                           R6 R3
       19 JUMPIFNOTEQ                      R5 R6 ; [+3]
       21 MOVE                             R2 R3
       22 JUMP                             ; [+1]
       23 MOVE                             R2 R4
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K6 ["Dictionary"]
       27 GETTABLEKS                       R3 R3 K7 ["join"]
       29 GETTABLEKS                       R4 R0 K1 ["state"]
       31 DUPTABLE                         R5 K8 [{"scenes"}]
       32 SETTABLEKS                       R2 R5 K2 ["scenes"]
       34 CALL                             R3 2 1
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R5 R0 K9 ["props"]
       38 MOVE                             R6 R3
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R0 K10 ["_transitionProps"]
       42 MOVE                             R6 R3
       43 NAMECALL                         R4 R0 K11 ["setState"]
       45 CALL                             R4 2 0
       46 GETIMPORT                        R4 K13 [spawn]
       48 NEWCLOSURE                       R5 P1
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U0
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

PROTO_20:
        0 SETTABLEKS                       R1 R0 K0 ["_positionLastValue"]
        2 GETTABLEKS                       R2 R0 K1 ["_prevTransitionProps"]
        4 GETTABLEKS                       R2 R2 K2 ["index"]
        6 GETTABLEKS                       R3 R0 K3 ["_transitionProps"]
        8 GETTABLEKS                       R3 R3 K2 ["index"]
       10 GETTABLEKS                       R4 R0 K4 ["props"]
       12 GETTABLEKS                       R4 R4 K5 ["onTransitionStep"]
       14 JUMPIFNOT                        R4 ; [+15]
       15 JUMPIFEQ                         R2 R3 ; [+14]
       17 SUB                              R5 R1 R2
       18 SUB                              R6 R3 R2
       19 DIV                              R4 R5 R6
       20 GETTABLEKS                       R5 R0 K4 ["props"]
       22 GETTABLEKS                       R5 R5 K5 ["onTransitionStep"]
       24 GETTABLEKS                       R6 R0 K3 ["_transitionProps"]
       26 GETTABLEKS                       R7 R0 K1 ["_prevTransitionProps"]
       28 MOVE                             R8 R4
       29 CALL                             R5 3 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K4 ["Parent"]
       24 GETTABLEKS                       R2 R2 K6 ["Roact"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R3 K3 [script]
       31 GETTABLEKS                       R3 R3 K4 ["Parent"]
       33 GETTABLEKS                       R3 R3 K4 ["Parent"]
       35 GETTABLEKS                       R3 R3 K4 ["Parent"]
       37 GETTABLEKS                       R3 R3 K7 ["Otter"]
       39 CALL                             R2 1 1
       40 GETIMPORT                        R3 K1 [require]
       42 GETIMPORT                        R4 K3 [script]
       44 GETTABLEKS                       R4 R4 K4 ["Parent"]
       46 GETTABLEKS                       R4 R4 K8 ["ScenesReducer"]
       48 CALL                             R3 1 1
       49 GETIMPORT                        R4 K1 [require]
       51 GETIMPORT                        R5 K3 [script]
       53 GETTABLEKS                       R5 R5 K4 ["Parent"]
       55 GETTABLEKS                       R5 R5 K4 ["Parent"]
       57 GETTABLEKS                       R5 R5 K9 ["utils"]
       59 GETTABLEKS                       R5 R5 K10 ["validate"]
       61 CALL                             R4 1 1
       62 DUPTABLE                         R5 K12 [{"frequency"}]
       63 LOADN                            R6 4
       64 SETTABLEKS                       R6 R5 K11 ["frequency"]
       66 DUPCLOSURE                       R6 K13 [PROTO_0]
       67 CAPTURE                          VAL R4
       68 DUPCLOSURE                       R7 K14 [PROTO_2]
       69 CAPTURE                          VAL R0
       70 GETTABLEKS                       R8 R1 K15 ["Component"]
       72 LOADK                            R10 K16 ["Transitioner"]
       73 NAMECALL                         R8 R8 K17 ["extend"]
       75 CALL                             R8 2 1
       76 DUPCLOSURE                       R9 K18 [PROTO_8]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R6
       80 SETTABLEKS                       R9 R8 K19 ["init"]
       82 DUPCLOSURE                       R9 K20 [PROTO_9]
       83 SETTABLEKS                       R9 R8 K21 ["didMount"]
       85 DUPCLOSURE                       R9 K22 [PROTO_10]
       86 SETTABLEKS                       R9 R8 K23 ["willUnmount"]
       88 DUPCLOSURE                       R9 K24 [PROTO_11]
       89 SETTABLEKS                       R9 R8 K25 ["didUpdate"]
       91 DUPCLOSURE                       R9 K26 [PROTO_12]
       92 CAPTURE                          VAL R1
       93 SETTABLEKS                       R9 R8 K27 ["render"]
       95 DUPCLOSURE                       R9 K28 [PROTO_13]
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R6
       98 SETTABLEKS                       R9 R8 K29 ["_onAbsoluteSizeChanged"]
      100 DUPCLOSURE                       R9 K30 [PROTO_14]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R9 R8 K31 ["_computeScenes"]
      105 DUPCLOSURE                       R9 K32 [PROTO_17]
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R5
      110 SETTABLEKS                       R9 R8 K33 ["_startTransition"]
      112 DUPCLOSURE                       R9 K34 [PROTO_19]
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R6
      115 SETTABLEKS                       R9 R8 K35 ["_onTransitionEnd"]
      117 DUPCLOSURE                       R9 K36 [PROTO_20]
      118 SETTABLEKS                       R9 R8 K37 ["_onPositionStep"]
      120 RETURN                           R8 1
