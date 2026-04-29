PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isOpen"]
        3 JUMPIFNOT                        R0 ; [+31]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K1 ["current"]
       10 GETTABLEKS                       R1 R2 K2 ["anchorUri"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K1 ["current"]
       15 GETTABLEKS                       R2 R3 K3 ["position"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R3 R4 K1 ["current"]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K1 ["current"]
       23 GETTABLEKS                       R4 R5 K4 ["depth"]
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R6 R7 K1 ["current"]
       28 GETTABLEKS                       R5 R6 K5 ["parentPopoverId"]
       30 CALL                             R0 5 2
       31 GETUPVAL                         R2 4
       32 SETTABLEKS                       R1 R2 K1 ["current"]
       34 RETURN                           R0 1
       35 GETUPVAL                         R1 4
       36 GETTABLEKS                       R0 R1 K1 ["current"]
       38 JUMPIFNOT                        R0 ; [+8]
       39 GETUPVAL                         R1 4
       40 GETTABLEKS                       R0 R1 K1 ["current"]
       42 CALL                             R0 0 0
       43 GETUPVAL                         R0 4
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K1 ["current"]
       47 LOADNIL                          R0
       48 RETURN                           R0 1

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
        8 DUPTABLE                         R3 K6 [{"anchorUri", "position", "depth", "parentPopoverId"}]
        9 GETTABLEKS                       R4 R0 K2 ["anchorUri"]
       11 SETTABLEKS                       R4 R3 K2 ["anchorUri"]
       13 GETTABLEKS                       R4 R0 K3 ["position"]
       15 SETTABLEKS                       R4 R3 K3 ["position"]
       17 GETTABLEKS                       R4 R0 K4 ["depth"]
       19 SETTABLEKS                       R4 R3 K4 ["depth"]
       21 GETTABLEKS                       R4 R0 K5 ["parentPopoverId"]
       23 SETTABLEKS                       R4 R3 K5 ["parentPopoverId"]
       25 CALL                             R2 1 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K0 ["useRef"]
       29 GETTABLEKS                       R4 R0 K7 ["onClose"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R0 K7 ["onClose"]
       34 SETTABLEKS                       R4 R3 K8 ["current"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K0 ["useRef"]
       39 GETTABLEKS                       R5 R0 K9 ["registerPanelAsync"]
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R5 R0 K9 ["registerPanelAsync"]
       44 SETTABLEKS                       R5 R4 K8 ["current"]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R5 R6 K10 ["useAsync"]
       49 NEWCLOSURE                       R6 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 NEWTABLE                         R7 0 2
       57 GETTABLEKS                       R8 R0 K11 ["isOpen"]
       59 MOVE                             R9 R2
       60 SETLIST                          R7 R8 2 [1]
       62 CALL                             R5 2 1
       63 GETTABLEKS                       R7 R5 K12 ["status"]
       65 JUMPIFNOTEQKS                    R7 K13 ["ok"] ; [+4]
       67 GETTABLEKS                       R6 R5 K14 ["value"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R6
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R7 R8 K10 ["useAsync"]
       74 NEWCLOSURE                       R8 P1
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R0
       77 NEWTABLE                         R9 0 3
       79 MOVE                             R10 R6
       80 GETTABLEKS                       R11 R0 K2 ["anchorUri"]
       82 GETTABLEKS                       R12 R0 K3 ["position"]
       84 SETLIST                          R9 R10 3 [1]
       86 CALL                             R7 2 0
       87 GETUPVAL                         R8 0
       88 GETTABLEKS                       R7 R8 K15 ["useEffect"]
       90 NEWCLOSURE                       R8 P2
       91 CAPTURE                          VAL R1
       92 NEWTABLE                         R9 0 0
       94 CALL                             R7 2 0
       95 RETURN                           R6 1

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
       21 GETTABLEKS                       R7 R0 K9 ["Utility"]
       23 GETTABLEKS                       R6 R7 K10 ["Plugin"]
       25 GETTABLEKS                       R5 R6 K11 ["StudioUri"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R7 R8 K4 ["Parent"]
       34 GETTABLEKS                       R6 R7 K12 ["Types"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K13 [PROTO_4]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 RETURN                           R6 1
