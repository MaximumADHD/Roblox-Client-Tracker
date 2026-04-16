PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isOpen"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["registerPanelAsync"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["current"]
       10 GETTABLEKS                       R1 R2 K3 ["anchorUri"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K2 ["current"]
       15 GETTABLEKS                       R2 R3 K4 ["position"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K5 ["onClose"]
       20 CALL                             R0 3 2
       21 GETUPVAL                         R2 2
       22 SETTABLEKS                       R1 R2 K2 ["current"]
       24 RETURN                           R0 1
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R0 R1 K2 ["current"]
       28 JUMPIFNOT                        R0 ; [+8]
       29 GETUPVAL                         R1 2
       30 GETTABLEKS                       R0 R1 K2 ["current"]
       32 CALL                             R0 0 0
       33 GETUPVAL                         R0 2
       34 LOADNIL                          R1
       35 SETTABLEKS                       R1 R0 K2 ["current"]
       37 LOADNIL                          R0
       38 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["updateAsync"]
        7 DUPTABLE                         R1 K5 [{"targetWidgetUri", "targetAnchorPoint", "subjectAnchorPoint", "offset"}]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K6 ["anchorUri"]
       11 SETTABLEKS                       R2 R1 K1 ["targetWidgetUri"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K7 ["position"]
       16 GETTABLEKS                       R2 R3 K2 ["targetAnchorPoint"]
       18 SETTABLEKS                       R2 R1 K2 ["targetAnchorPoint"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K7 ["position"]
       23 GETTABLEKS                       R2 R3 K3 ["subjectAnchorPoint"]
       25 SETTABLEKS                       R2 R1 K3 ["subjectAnchorPoint"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R3 R4 K7 ["position"]
       30 GETTABLEKS                       R2 R3 K4 ["offset"]
       32 SETTABLEKS                       R2 R1 K4 ["offset"]
       34 CALL                             R0 1 0
       35 LOADNIL                          R0
       36 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["useRefToState"]
        8 DUPTABLE                         R3 K4 [{"anchorUri", "position"}]
        9 GETTABLEKS                       R4 R0 K2 ["anchorUri"]
       11 SETTABLEKS                       R4 R3 K2 ["anchorUri"]
       13 GETTABLEKS                       R4 R0 K3 ["position"]
       15 SETTABLEKS                       R4 R3 K3 ["position"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K5 ["useAsync"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R5 0 4
       27 GETTABLEKS                       R6 R0 K6 ["isOpen"]
       29 GETTABLEKS                       R7 R0 K7 ["onClose"]
       31 MOVE                             R8 R2
       32 GETTABLEKS                       R9 R0 K8 ["registerPanelAsync"]
       34 SETLIST                          R5 R6 4 [1]
       36 CALL                             R3 2 1
       37 GETTABLEKS                       R5 R3 K9 ["status"]
       39 JUMPIFNOTEQKS                    R5 K10 ["ok"] ; [+4]
       41 GETTABLEKS                       R4 R3 K11 ["value"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R4
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R5 R6 K5 ["useAsync"]
       48 NEWCLOSURE                       R6 P1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R7 0 3
       53 MOVE                             R8 R4
       54 GETTABLEKS                       R9 R0 K2 ["anchorUri"]
       56 GETTABLEKS                       R10 R0 K3 ["position"]
       58 SETLIST                          R7 R8 3 [1]
       60 CALL                             R5 2 0
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R5 R6 K12 ["useEffect"]
       64 NEWCLOSURE                       R6 P2
       65 CAPTURE                          VAL R1
       66 NEWTABLE                         R7 0 0
       68 CALL                             R5 2 0
       69 RETURN                           R4 1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Types"]
       23 CALL                             R4 1 1
       24 DUPCLOSURE                       R5 K10 [PROTO_4]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 RETURN                           R5 1
