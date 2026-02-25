PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["navigation"]
        2 GETTABLEKS                       R3 R0 K1 ["options"]
        4 GETTABLEKS                       R4 R1 K2 ["layout"]
        6 GETTABLEKS                       R5 R1 K3 ["position"]
        8 GETTABLEKS                       R6 R1 K4 ["scenes"]
       10 LOADNIL                          R7
       11 MOVE                             R8 R6
       12 LOADNIL                          R9
       13 LOADNIL                          R10
       14 FORGPREP                         R8
       15 GETTABLEKS                       R13 R12 K5 ["isActive"]
       17 JUMPIFNOT                        R13 ; [+2]
       18 MOVE                             R7 R12
       19 JUMP                             ; [+2]
       20 FORGLOOP                         R8 2 ; [-6]
       22 GETUPVAL                         R8 0
       23 MOVE                             R9 R7
       24 LOADK                            R10 K6 ["Could not find active scene"]
       25 CALL                             R8 2 0
       26 DUPTABLE                         R8 K9 [{"layout", "navigation", "position", "scenes", "scene", "options", "index"}]
       27 SETTABLEKS                       R4 R8 K2 ["layout"]
       29 SETTABLEKS                       R2 R8 K0 ["navigation"]
       31 SETTABLEKS                       R5 R8 K3 ["position"]
       33 SETTABLEKS                       R6 R8 K4 ["scenes"]
       35 SETTABLEKS                       R7 R8 K7 ["scene"]
       37 SETTABLEKS                       R3 R8 K1 ["options"]
       39 GETTABLEKS                       R9 R7 K8 ["index"]
       41 SETTABLEKS                       R9 R8 K8 ["index"]
       43 RETURN                           R8 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["isStale"]
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["filter"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_1]
        5 CALL                             R1 2 1
        6 LENGTH                           R2 R1
        7 LENGTH                           R3 R0
        8 JUMPIFNOTEQ                      R2 R3 ; [+2]
       10 RETURN                           R0 1
       11 RETURN                           R1 1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onAbsoluteSizeChanged"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_isMounted"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_isMounted"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K1 ["_onPositionStep"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["navigation"]
        4 GETTABLEKS                       R1 R2 K2 ["state"]
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K3 ["descriptors"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K4 ["createRef"]
       13 CALL                             R3 0 1
       14 SETTABLEKS                       R3 R0 K5 ["_ref"]
       16 DUPTABLE                         R3 K9 [{"layout", "position", "scenes"}]
       17 DUPTABLE                         R4 K13 [{"initWidth", "initHeight", "isMeasured"}]
       18 LOADN                            R5 0
       19 SETTABLEKS                       R5 R4 K10 ["initWidth"]
       21 LOADN                            R5 0
       22 SETTABLEKS                       R5 R4 K11 ["initHeight"]
       24 LOADB                            R5 0
       25 SETTABLEKS                       R5 R4 K12 ["isMeasured"]
       27 SETTABLEKS                       R4 R3 K6 ["layout"]
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R4 R5 K14 ["createSingleMotor"]
       32 GETTABLEKS                       R5 R1 K15 ["index"]
       34 CALL                             R4 1 1
       35 SETTABLEKS                       R4 R3 K7 ["position"]
       37 GETUPVAL                         R4 2
       38 NEWTABLE                         R5 0 0
       40 MOVE                             R6 R1
       41 LOADNIL                          R7
       42 MOVE                             R8 R2
       43 CALL                             R4 4 1
       44 SETTABLEKS                       R4 R3 K8 ["scenes"]
       46 SETTABLEKS                       R3 R0 K2 ["state"]
       48 NEWCLOSURE                       R3 P0
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R3 R0 K16 ["_doOnAbsoluteSizeChanged"]
       52 GETTABLEKS                       R3 R1 K15 ["index"]
       54 SETTABLEKS                       R3 R0 K17 ["_positionLastValue"]
       56 LOADNIL                          R3
       57 SETTABLEKS                       R3 R0 K18 ["_prevTransitionProps"]
       59 GETUPVAL                         R3 3
       60 GETTABLEKS                       R4 R0 K0 ["props"]
       62 GETTABLEKS                       R5 R0 K2 ["state"]
       64 CALL                             R3 2 1
       65 SETTABLEKS                       R3 R0 K19 ["_transitionProps"]
       67 LOADB                            R3 0
       68 SETTABLEKS                       R3 R0 K20 ["_isMounted"]
       70 LOADB                            R3 0
       71 SETTABLEKS                       R3 R0 K21 ["_isTransitionRunning"]
       73 NEWTABLE                         R3 0 0
       75 SETTABLEKS                       R3 R0 K22 ["_transitionQueue"]
       77 GETTABLEKS                       R4 R0 K2 ["state"]
       79 GETTABLEKS                       R3 R4 K7 ["position"]
       81 NEWCLOSURE                       R5 P1
       82 CAPTURE                          VAL R0
       83 NAMECALL                         R3 R3 K23 ["onComplete"]
       85 CALL                             R3 2 1
       86 SETTABLEKS                       R3 R0 K24 ["_completeSignalDisconnector"]
       88 GETTABLEKS                       R4 R0 K2 ["state"]
       90 GETTABLEKS                       R3 R4 K7 ["position"]
       92 NEWCLOSURE                       R5 P2
       93 CAPTURE                          VAL R0
       94 NAMECALL                         R3 R3 K25 ["onStep"]
       96 CALL                             R3 2 1
       97 SETTABLEKS                       R3 R0 K26 ["_stepSignalDisconnector"]
       99 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R4 K1 ["layout"]
        4 GETTABLEKS                       R2 R3 K2 ["isMeasured"]
        6 JUMPIF                           R2 ; [+12]
        7 GETTABLEKS                       R3 R0 K3 ["_ref"]
        9 GETTABLEKS                       R2 R3 K4 ["current"]
       11 JUMPIFNOT                        R2 ; [+7]
       12 GETTABLEKS                       R5 R0 K3 ["_ref"]
       14 GETTABLEKS                       R4 R5 K4 ["current"]
       16 NAMECALL                         R2 R0 K5 ["_onAbsoluteSizeChanged"]
       18 CALL                             R2 2 0
       19 GETTABLEKS                       R2 R0 K6 ["props"]
       21 JUMPIFEQ                         R2 R1 ; [+34]
       23 GETTABLEKS                       R2 R0 K7 ["_isTransitionRunning"]
       25 JUMPIFNOT                        R2 ; [+24]
       26 GETTABLEKS                       R3 R0 K8 ["_transitionQueue"]
       28 GETTABLEKS                       R5 R0 K8 ["_transitionQueue"]
       30 LENGTH                           R4 R5
       31 GETTABLE                         R2 R3 R4
       32 JUMPIF                           R2 ; [+2]
       33 NEWTABLE                         R2 0 0
       35 GETTABLEKS                       R3 R2 K9 ["prevProps"]
       37 JUMPIFEQ                         R3 R1 ; [+11]
       39 GETTABLEKS                       R4 R0 K8 ["_transitionQueue"]
       41 DUPTABLE                         R5 K10 [{"prevProps"}]
       42 SETTABLEKS                       R1 R5 K9 ["prevProps"]
       44 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       46 GETIMPORT                        R3 K13 [table.insert]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0
       50 MOVE                             R4 R1
       51 GETTABLEKS                       R5 R0 K6 ["props"]
       53 NAMECALL                         R2 R0 K14 ["_startTransition"]
       55 CALL                             R2 3 0
       56 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
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
       21 LOADB                            R4 0
       22 SETTABLEKS                       R4 R3 K8 ["ClipsDescendants"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K9 ["Change"]
       27 GETTABLEKS                       R4 R5 K10 ["AbsoluteSize"]
       29 GETTABLEKS                       R5 R0 K11 ["_doOnAbsoluteSizeChanged"]
       31 SETTABLE                         R5 R3 R4
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K12 ["Ref"]
       35 GETTABLEKS                       R5 R0 K13 ["_ref"]
       37 SETTABLE                         R5 R3 R4
       38 NEWTABLE                         R4 1 0
       40 GETTABLEKS                       R6 R0 K14 ["props"]
       42 GETTABLEKS                       R5 R6 K15 ["render"]
       44 GETTABLEKS                       R6 R0 K16 ["_transitionProps"]
       46 GETTABLEKS                       R7 R0 K17 ["_prevTransitionProps"]
       48 MOVE                             R8 R0
       49 CALL                             R5 3 1
       50 SETTABLEKS                       R5 R4 K18 ["TransitionerScenes"]
       52 CALL                             R1 3 -1
       53 RETURN                           R1 -1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_isMounted"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R1 K1 ["AbsoluteSize"]
        6 GETTABLEKS                       R2 R3 K2 ["X"]
        8 GETTABLEKS                       R4 R1 K1 ["AbsoluteSize"]
       10 GETTABLEKS                       R3 R4 K3 ["Y"]
       12 GETTABLEKS                       R6 R0 K4 ["state"]
       14 GETTABLEKS                       R5 R6 K5 ["layout"]
       16 GETTABLEKS                       R4 R5 K6 ["initWidth"]
       18 JUMPIFNOTEQ                      R2 R4 ; [+10]
       20 GETTABLEKS                       R6 R0 K4 ["state"]
       22 GETTABLEKS                       R5 R6 K5 ["layout"]
       24 GETTABLEKS                       R4 R5 K7 ["initHeight"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+2]
       28 RETURN                           R0 0
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K8 ["assign"]
       32 GETIMPORT                        R5 K11 [table.clone]
       34 GETTABLEKS                       R7 R0 K4 ["state"]
       36 GETTABLEKS                       R6 R7 K5 ["layout"]
       38 CALL                             R5 1 1
       39 DUPTABLE                         R6 K13 [{"initWidth", "initHeight", "isMeasured"}]
       40 SETTABLEKS                       R2 R6 K6 ["initWidth"]
       42 SETTABLEKS                       R3 R6 K7 ["initHeight"]
       44 LOADB                            R7 1
       45 SETTABLEKS                       R7 R6 K12 ["isMeasured"]
       47 CALL                             R4 2 1
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R5 R6 K8 ["assign"]
       51 GETIMPORT                        R6 K11 [table.clone]
       53 GETTABLEKS                       R7 R0 K4 ["state"]
       55 CALL                             R6 1 1
       56 DUPTABLE                         R7 K14 [{"layout"}]
       57 SETTABLEKS                       R4 R7 K5 ["layout"]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R7 R0 K15 ["props"]
       63 MOVE                             R8 R5
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R0 K16 ["_transitionProps"]
       67 DUPTABLE                         R8 K14 [{"layout"}]
       68 SETTABLEKS                       R4 R8 K5 ["layout"]
       70 NAMECALL                         R6 R0 K17 ["setState"]
       72 CALL                             R6 2 0
       73 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R5 R0 K0 ["state"]
        3 GETTABLEKS                       R4 R5 K1 ["scenes"]
        5 GETTABLEKS                       R6 R2 K2 ["navigation"]
        7 GETTABLEKS                       R5 R6 K0 ["state"]
        9 GETTABLEKS                       R7 R1 K2 ["navigation"]
       11 GETTABLEKS                       R6 R7 K0 ["state"]
       13 GETTABLEKS                       R7 R2 K3 ["descriptors"]
       15 CALL                             R3 4 1
       16 GETTABLEKS                       R6 R2 K2 ["navigation"]
       18 GETTABLEKS                       R5 R6 K0 ["state"]
       20 GETTABLEKS                       R4 R5 K4 ["isTransitioning"]
       22 JUMPIF                           R4 ; [+15]
       23 MOVE                             R4 R3
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K5 ["filter"]
       27 MOVE                             R6 R4
       28 DUPCLOSURE                       R7 K6 [PROTO_1]
       29 CALL                             R5 2 1
       30 LENGTH                           R6 R5
       31 LENGTH                           R7 R4
       32 JUMPIFNOTEQ                      R6 R7 ; [+3]
       34 MOVE                             R3 R4
       35 JUMP                             ; [+2]
       36 MOVE                             R3 R5
       37 JUMP                             ; [0]
       38 GETTABLEKS                       R4 R2 K7 ["screenProps"]
       40 GETTABLEKS                       R6 R0 K8 ["props"]
       42 GETTABLEKS                       R5 R6 K7 ["screenProps"]
       44 JUMPIFEQ                         R4 R5 ; [+7]
       46 DUPTABLE                         R6 K9 [{"scenes"}]
       47 SETTABLEKS                       R3 R6 K1 ["scenes"]
       49 NAMECALL                         R4 R0 K10 ["setState"]
       51 CALL                             R4 2 0
       52 GETTABLEKS                       R5 R0 K0 ["state"]
       54 GETTABLEKS                       R4 R5 K1 ["scenes"]
       56 JUMPIFNOTEQ                      R3 R4 ; [+3]
       58 LOADNIL                          R4
       59 RETURN                           R4 1
       60 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+87]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+85]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["onTransitionStart"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K0 ["onTransitionStart"]
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K1 ["_transitionProps"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K2 ["_prevTransitionProps"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R1 R2 K3 ["_positionLastValue"]
       21 GETUPVAL                         R2 4
       22 JUMPIFNOTEQ                      R1 R2 ; [+2]
       24 LOADB                            R0 0 +1
       25 LOADB                            R0 1
       26 JUMPIFNOT                        R0 ; [+46]
       27 NEWTABLE                         R1 0 0
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R2 R3 K4 ["configureTransition"]
       32 JUMPIFNOT                        R2 ; [+14]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R2 R3 K4 ["configureTransition"]
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R3 R4 K1 ["_transitionProps"]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R4 R5 K2 ["_prevTransitionProps"]
       42 CALL                             R2 2 1
       43 JUMPIF                           R2 ; [+2]
       44 NEWTABLE                         R2 0 0
       46 MOVE                             R1 R2
       47 GETUPVAL                         R3 5
       48 GETTABLEKS                       R2 R3 K5 ["assign"]
       50 GETIMPORT                        R3 K8 [table.clone]
       52 GETUPVAL                         R4 6
       53 CALL                             R3 1 1
       54 MOVE                             R4 R1
       55 CALL                             R2 2 1
       56 GETUPVAL                         R3 7
       57 GETUPVAL                         R6 8
       58 GETTABLEKS                       R5 R6 K9 ["spring"]
       60 GETUPVAL                         R9 2
       61 GETTABLEKS                       R8 R9 K10 ["navigation"]
       63 GETTABLEKS                       R7 R8 K11 ["state"]
       65 GETTABLEKS                       R6 R7 K12 ["index"]
       67 MOVE                             R7 R2
       68 CALL                             R5 2 -1
       69 NAMECALL                         R3 R3 K13 ["setGoal"]
       71 CALL                             R3 -1 0
       72 RETURN                           R0 0
       73 GETUPVAL                         R1 7
       74 GETUPVAL                         R4 8
       75 GETTABLEKS                       R3 R4 K14 ["instant"]
       77 GETUPVAL                         R7 2
       78 GETTABLEKS                       R6 R7 K10 ["navigation"]
       80 GETTABLEKS                       R5 R6 K11 ["state"]
       82 GETTABLEKS                       R4 R5 K12 ["index"]
       84 CALL                             R3 1 -1
       85 NAMECALL                         R1 R1 K13 ["setGoal"]
       87 CALL                             R1 -1 0
       88 RETURN                           R0 0
       89 GETUPVAL                         R1 2
       90 GETTABLEKS                       R0 R1 K0 ["onTransitionStart"]
       92 JUMPIFNOT                        R0 ; [+10]
       93 GETUPVAL                         R1 2
       94 GETTABLEKS                       R0 R1 K0 ["onTransitionStart"]
       96 GETUPVAL                         R2 3
       97 GETTABLEKS                       R1 R2 K1 ["_transitionProps"]
       99 GETUPVAL                         R3 3
      100 GETTABLEKS                       R2 R3 K2 ["_prevTransitionProps"]
      102 CALL                             R0 2 0
      103 GETUPVAL                         R0 7
      104 GETUPVAL                         R3 8
      105 GETTABLEKS                       R2 R3 K14 ["instant"]
      107 GETUPVAL                         R3 4
      108 CALL                             R2 1 -1
      109 NAMECALL                         R0 R0 K13 ["setGoal"]
      111 CALL                             R0 -1 0
      112 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R6 R1 K0 ["navigation"]
        2 GETTABLEKS                       R5 R6 K1 ["state"]
        4 GETTABLEKS                       R4 R5 K2 ["index"]
        6 GETTABLEKS                       R7 R2 K0 ["navigation"]
        8 GETTABLEKS                       R6 R7 K1 ["state"]
       10 GETTABLEKS                       R5 R6 K2 ["index"]
       12 JUMPIFNOTEQ                      R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 NAMECALL                         R4 R0 K3 ["_computeScenes"]
       20 CALL                             R4 3 1
       21 JUMPIF                           R4 ; [+11]
       22 GETTABLEKS                       R5 R0 K4 ["_transitionProps"]
       24 SETTABLEKS                       R5 R0 K5 ["_prevTransitionProps"]
       26 GETTABLEKS                       R5 R0 K6 ["_isTransitionRunning"]
       28 JUMPIFNOT                        R5 ; [+3]
       29 NAMECALL                         R5 R0 K7 ["_onTransitionEnd"]
       31 CALL                             R5 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K8 ["assign"]
       36 GETIMPORT                        R6 K11 [table.clone]
       38 GETTABLEKS                       R7 R0 K1 ["state"]
       40 CALL                             R6 1 1
       41 DUPTABLE                         R7 K13 [{"scenes"}]
       42 SETTABLEKS                       R4 R7 K12 ["scenes"]
       44 CALL                             R5 2 1
       45 GETTABLEKS                       R6 R5 K14 ["position"]
       47 GETTABLEKS                       R9 R2 K0 ["navigation"]
       49 GETTABLEKS                       R8 R9 K1 ["state"]
       51 GETTABLEKS                       R7 R8 K2 ["index"]
       53 GETTABLEKS                       R8 R0 K4 ["_transitionProps"]
       55 SETTABLEKS                       R8 R0 K5 ["_prevTransitionProps"]
       57 GETUPVAL                         R8 1
       58 MOVE                             R9 R2
       59 MOVE                             R10 R5
       60 CALL                             R8 2 1
       61 SETTABLEKS                       R8 R0 K4 ["_transitionProps"]
       63 GETTABLEKS                       R11 R0 K4 ["_transitionProps"]
       65 GETTABLEKS                       R10 R11 K0 ["navigation"]
       67 GETTABLEKS                       R9 R10 K1 ["state"]
       69 GETTABLEKS                       R8 R9 K15 ["isTransitioning"]
       71 JUMPIFNOT                        R8 ; [+4]
       72 JUMPIFNOT                        R3 ; [+3]
       73 LOADB                            R9 1
       74 SETTABLEKS                       R9 R0 K6 ["_isTransitionRunning"]
       76 MOVE                             R11 R5
       77 NEWCLOSURE                       R12 P0
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R7
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          VAL R6
       86 CAPTURE                          UPVAL U3
       87 NAMECALL                         R9 R0 K16 ["setState"]
       89 CALL                             R9 3 0
       90 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["onTransitionEnd"]
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["onTransitionEnd"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["_transitionProps"]
       14 GETUPVAL                         R2 1
       15 CALL                             R0 2 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K3 ["_transitionQueue"]
       19 GETTABLEN                        R0 R1 1
       20 JUMPIFNOT                        R0 ; [+27]
       21 GETTABLEKS                       R1 R0 K4 ["prevProps"]
       23 GETUPVAL                         R2 0
       24 GETIMPORT                        R3 K7 [table.clone]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K3 ["_transitionQueue"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K3 ["_transitionQueue"]
       32 GETIMPORT                        R2 K9 [table.remove]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R3 R4 K3 ["_transitionQueue"]
       37 LOADN                            R4 1
       38 CALL                             R2 2 0
       39 GETUPVAL                         R2 0
       40 MOVE                             R4 R1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K0 ["props"]
       44 NAMECALL                         R2 R2 K10 ["_startTransition"]
       46 CALL                             R2 3 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R1 0
       49 LOADB                            R2 0
       50 SETTABLEKS                       R2 R1 K11 ["_isTransitionRunning"]
       52 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_prevTransitionProps"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K0 ["_prevTransitionProps"]
        5 GETTABLEKS                       R4 R0 K1 ["state"]
        7 GETTABLEKS                       R3 R4 K2 ["scenes"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["filter"]
       12 MOVE                             R5 R3
       13 DUPCLOSURE                       R6 K4 [PROTO_1]
       14 CALL                             R4 2 1
       15 LENGTH                           R5 R4
       16 LENGTH                           R6 R3
       17 JUMPIFNOTEQ                      R5 R6 ; [+3]
       19 MOVE                             R2 R3
       20 JUMP                             ; [+2]
       21 MOVE                             R2 R4
       22 JUMP                             ; [0]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K5 ["assign"]
       26 GETIMPORT                        R4 K8 [table.clone]
       28 GETTABLEKS                       R5 R0 K1 ["state"]
       30 CALL                             R4 1 1
       31 DUPTABLE                         R5 K9 [{"scenes"}]
       32 SETTABLEKS                       R2 R5 K2 ["scenes"]
       34 CALL                             R3 2 1
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R5 R0 K10 ["props"]
       38 MOVE                             R6 R3
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R0 K11 ["_transitionProps"]
       42 MOVE                             R6 R3
       43 NEWCLOSURE                       R7 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R1
       46 NAMECALL                         R4 R0 K12 ["setState"]
       48 CALL                             R4 3 0
       49 RETURN                           R0 0

PROTO_18:
        0 SETTABLEKS                       R1 R0 K0 ["_positionLastValue"]
        2 GETTABLEKS                       R3 R0 K1 ["_transitionProps"]
        4 GETTABLEKS                       R2 R3 K2 ["index"]
        6 MOVE                             R3 R2
        7 GETTABLEKS                       R4 R0 K3 ["_prevTransitionProps"]
        9 JUMPIFNOT                        R4 ; [+4]
       10 GETTABLEKS                       R4 R0 K3 ["_prevTransitionProps"]
       12 GETTABLEKS                       R3 R4 K2 ["index"]
       14 GETTABLEKS                       R5 R0 K4 ["props"]
       16 GETTABLEKS                       R4 R5 K5 ["onTransitionStep"]
       18 JUMPIFNOT                        R4 ; [+15]
       19 JUMPIFEQ                         R3 R2 ; [+14]
       21 SUB                              R5 R1 R3
       22 SUB                              R6 R2 R3
       23 DIV                              R4 R5 R6
       24 GETTABLEKS                       R6 R0 K4 ["props"]
       26 GETTABLEKS                       R5 R6 K5 ["onTransitionStep"]
       28 GETTABLEKS                       R6 R0 K1 ["_transitionProps"]
       30 GETTABLEKS                       R7 R0 K3 ["_prevTransitionProps"]
       32 MOVE                             R8 R4
       33 CALL                             R5 3 0
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["Array"]
       18 GETTABLEKS                       R4 R2 K7 ["Object"]
       20 GETIMPORT                        R5 K4 [require]
       22 GETTABLEKS                       R6 R1 K8 ["Roact"]
       24 CALL                             R5 1 1
       25 GETIMPORT                        R6 K4 [require]
       27 GETTABLEKS                       R7 R1 K9 ["Otter"]
       29 CALL                             R6 1 1
       30 GETIMPORT                        R7 K4 [require]
       32 GETIMPORT                        R10 K1 [script]
       34 GETTABLEKS                       R9 R10 K2 ["Parent"]
       36 GETTABLEKS                       R8 R9 K10 ["ScenesReducer"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R10 R0 K11 ["utils"]
       43 GETTABLEKS                       R9 R10 K12 ["invariant"]
       45 CALL                             R8 1 1
       46 DUPTABLE                         R9 K14 [{"frequency"}]
       47 LOADN                            R10 4
       48 SETTABLEKS                       R10 R9 K13 ["frequency"]
       50 DUPCLOSURE                       R10 K15 [PROTO_0]
       51 CAPTURE                          VAL R8
       52 DUPCLOSURE                       R11 K16 [PROTO_2]
       53 CAPTURE                          VAL R3
       54 GETTABLEKS                       R12 R5 K17 ["Component"]
       56 LOADK                            R14 K18 ["Transitioner"]
       57 NAMECALL                         R12 R12 K19 ["extend"]
       59 CALL                             R12 2 1
       60 DUPCLOSURE                       R13 K20 [PROTO_7]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R10
       65 SETTABLEKS                       R13 R12 K21 ["init"]
       67 DUPCLOSURE                       R13 K22 [PROTO_8]
       68 SETTABLEKS                       R13 R12 K23 ["didMount"]
       70 DUPCLOSURE                       R13 K24 [PROTO_9]
       71 SETTABLEKS                       R13 R12 K25 ["willUnmount"]
       73 DUPCLOSURE                       R13 K26 [PROTO_10]
       74 SETTABLEKS                       R13 R12 K27 ["didUpdate"]
       76 DUPCLOSURE                       R13 K28 [PROTO_11]
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R13 R12 K29 ["render"]
       80 DUPCLOSURE                       R13 K30 [PROTO_12]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R13 R12 K31 ["_onAbsoluteSizeChanged"]
       85 DUPCLOSURE                       R13 K32 [PROTO_13]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R13 R12 K33 ["_computeScenes"]
       90 DUPCLOSURE                       R13 K34 [PROTO_15]
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R6
       95 SETTABLEKS                       R13 R12 K35 ["_startTransition"]
       97 DUPCLOSURE                       R13 K36 [PROTO_17]
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R10
      101 SETTABLEKS                       R13 R12 K37 ["_onTransitionEnd"]
      103 DUPCLOSURE                       R13 K38 [PROTO_18]
      104 SETTABLEKS                       R13 R12 K39 ["_onPositionStep"]
      106 RETURN                           R12 1
