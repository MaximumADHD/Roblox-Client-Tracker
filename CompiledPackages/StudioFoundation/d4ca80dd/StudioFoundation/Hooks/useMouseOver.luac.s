PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETTABLEKS                       R2 R2 K0 ["anchorUri"]
        4 NAMECALL                         R0 R0 K1 ["RegisterMouseTrackingRelativeToWidgetAsync"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 0
        9 LOADK                            R2 K2 ["RBX_MousePosition"]
       10 NAMECALL                         R0 R0 K3 ["GetAttribute"]
       12 CALL                             R0 2 1
       13 JUMPIFNOT                        R0 ; [+39]
       14 GETUPVAL                         R1 3
       15 JUMPIFNOT                        R1 ; [+37]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K4 ["Parent"]
       19 JUMPIFNOT                        R1 ; [+33]
       20 GETTABLEKS                       R1 R0 K5 ["X"]
       22 LOADN                            R2 0
       23 JUMPIFLT                         R1 R2 ; [+24]
       25 GETTABLEKS                       R1 R0 K5 ["X"]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K6 ["AbsoluteSize"]
       30 GETTABLEKS                       R2 R2 K5 ["X"]
       32 JUMPIFLT                         R2 R1 ; [+15]
       34 GETTABLEKS                       R1 R0 K7 ["Y"]
       36 LOADN                            R2 0
       37 JUMPIFLT                         R1 R2 ; [+10]
       39 GETTABLEKS                       R1 R0 K7 ["Y"]
       41 GETUPVAL                         R2 3
       42 GETTABLEKS                       R2 R2 K6 ["AbsoluteSize"]
       44 GETTABLEKS                       R2 R2 K7 ["Y"]
       46 JUMPIFNOTLT                      R2 R1 ; [+6]
       48 GETUPVAL                         R1 2
       49 GETTABLEKS                       R1 R1 K8 ["onClose"]
       51 CALL                             R1 0 0
       52 RETURN                           R0 0
       53 GETIMPORT                        R1 K11 [task.wait]
       55 CALL                             R1 0 0
       56 JUMPBACK                         ; [-49]
       57 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K3 ["Destroy"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["anchorRef"]
        8 GETTABLEKS                       R0 R0 K2 ["current"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 LOADK                            R2 K3 ["MouseTracker"]
       14 NAMECALL                         R0 R0 K4 ["GetPluginComponent"]
       16 CALL                             R0 2 1
       17 LOADNIL                          R1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["anchorRef"]
       21 GETTABLEKS                       R2 R2 K2 ["current"]
       23 GETIMPORT                        R3 K7 [task.spawn]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          REF R1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R2
       30 CALL                             R3 1 1
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          REF R1
       34 CLOSEUPVALS                      R1
       35 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useEffect"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 5
       15 GETTABLEKS                       R5 R0 K3 ["isOpen"]
       17 MOVE                             R6 R1
       18 GETTABLEKS                       R7 R0 K4 ["onClose"]
       20 GETTABLEKS                       R8 R0 K5 ["anchorUri"]
       22 GETTABLEKS                       R9 R0 K6 ["anchorRef"]
       24 SETLIST                          R4 R5 5 [1]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K10 ["Plugin"]
       23 DUPCLOSURE                       R6 K11 [PROTO_3]
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R2
       26 RETURN                           R6 1
