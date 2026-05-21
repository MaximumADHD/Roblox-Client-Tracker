PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["current"]
       10 GETTABLEKS                       R1 R1 K2 ["anchorUri"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["current"]
       15 GETTABLEKS                       R2 R2 K3 ["position"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K1 ["current"]
       20 CALL                             R0 3 2
       21 GETUPVAL                         R2 4
       22 SETTABLEKS                       R1 R2 K1 ["current"]
       24 RETURN                           R0 1
       25 GETUPVAL                         R0 4
       26 GETTABLEKS                       R0 R0 K1 ["current"]
       28 JUMPIFNOT                        R0 ; [+8]
       29 GETUPVAL                         R0 4
       30 GETTABLEKS                       R0 R0 K1 ["current"]
       32 CALL                             R0 0 0
       33 GETUPVAL                         R0 4
       34 LOADNIL                          R1
       35 SETTABLEKS                       R1 R0 K1 ["current"]
       37 LOADNIL                          R0
       38 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["updateAsync"]
        7 DUPTABLE                         R1 K5 [{"targetWidgetUri", "targetAnchorPoint", "subjectAnchorPoint", "offset"}]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K6 ["anchorUri"]
       11 SETTABLEKS                       R2 R1 K1 ["targetWidgetUri"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K7 ["position"]
       16 GETTABLEKS                       R2 R2 K2 ["targetAnchorPoint"]
       18 SETTABLEKS                       R2 R1 K2 ["targetAnchorPoint"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K7 ["position"]
       23 GETTABLEKS                       R2 R2 K3 ["subjectAnchorPoint"]
       25 SETTABLEKS                       R2 R1 K3 ["subjectAnchorPoint"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K7 ["position"]
       30 GETTABLEKS                       R2 R2 K4 ["offset"]
       32 SETTABLEKS                       R2 R1 K4 ["offset"]
       34 CALL                             R0 1 0
       35 LOADNIL                          R0
       36 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["useRefToState"]
        8 DUPTABLE                         R3 K4 [{"anchorUri", "position"}]
        9 GETTABLEKS                       R4 R0 K2 ["anchorUri"]
       11 SETTABLEKS                       R4 R3 K2 ["anchorUri"]
       13 GETTABLEKS                       R4 R0 K3 ["position"]
       15 SETTABLEKS                       R4 R3 K3 ["position"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["useRef"]
       21 GETTABLEKS                       R4 R0 K5 ["onClose"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R0 K5 ["onClose"]
       26 SETTABLEKS                       R4 R3 K6 ["current"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K0 ["useRef"]
       31 GETTABLEKS                       R5 R0 K7 ["registerPanelAsync"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R0 K7 ["registerPanelAsync"]
       36 SETTABLEKS                       R5 R4 K6 ["current"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K8 ["useAsync"]
       41 NEWCLOSURE                       R6 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 NEWTABLE                         R7 0 2
       49 GETTABLEKS                       R8 R0 K9 ["isOpen"]
       51 MOVE                             R9 R2
       52 SETLIST                          R7 R8 2 [1]
       54 CALL                             R5 2 1
       55 GETTABLEKS                       R7 R5 K10 ["status"]
       57 JUMPIFNOTEQKS                    R7 K11 ["ok"] ; [+4]
       59 GETTABLEKS                       R6 R5 K12 ["value"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R6
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K8 ["useAsync"]
       66 NEWCLOSURE                       R8 P1
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R9 0 3
       71 MOVE                             R10 R6
       72 GETTABLEKS                       R11 R0 K2 ["anchorUri"]
       74 GETTABLEKS                       R12 R0 K3 ["position"]
       76 SETLIST                          R9 R10 3 [1]
       78 CALL                             R7 2 0
       79 GETUPVAL                         R7 0
       80 GETTABLEKS                       R7 R7 K13 ["useEffect"]
       82 NEWCLOSURE                       R8 P2
       83 CAPTURE                          VAL R1
       84 NEWTABLE                         R9 0 0
       86 CALL                             R7 2 0
       87 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
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
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Plugin"]
       25 GETTABLEKS                       R5 R5 K11 ["StudioUri"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K12 ["Types"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K13 [PROTO_4]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 RETURN                           R6 1
