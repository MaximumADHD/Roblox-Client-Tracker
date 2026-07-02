PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIFNOT                        R0 ; [+31]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+29]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["current"]
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["current"]
       12 GETTABLEKS                       R1 R1 K2 ["anchorUri"]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K1 ["current"]
       17 GETTABLEKS                       R2 R2 K3 ["position"]
       19 GETUPVAL                         R3 4
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K1 ["current"]
       23 GETTABLEKS                       R4 R4 K4 ["depth"]
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K1 ["current"]
       28 GETTABLEKS                       R5 R5 K5 ["parentPopoverId"]
       30 CALL                             R0 5 2
       31 GETUPVAL                         R2 5
       32 SETTABLEKS                       R1 R2 K1 ["current"]
       34 RETURN                           R0 1
       35 GETUPVAL                         R0 5
       36 GETTABLEKS                       R0 R0 K1 ["current"]
       38 JUMPIFNOT                        R0 ; [+8]
       39 GETUPVAL                         R0 5
       40 GETTABLEKS                       R0 R0 K1 ["current"]
       42 CALL                             R0 0 0
       43 GETUPVAL                         R0 5
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K1 ["current"]
       47 LOADNIL                          R0
       48 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIFNOT                        R0 ; [+31]
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
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K1 ["current"]
       23 GETTABLEKS                       R4 R4 K4 ["depth"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K1 ["current"]
       28 GETTABLEKS                       R5 R5 K5 ["parentPopoverId"]
       30 CALL                             R0 5 2
       31 GETUPVAL                         R2 4
       32 SETTABLEKS                       R1 R2 K1 ["current"]
       34 RETURN                           R0 1
       35 GETUPVAL                         R0 4
       36 GETTABLEKS                       R0 R0 K1 ["current"]
       38 JUMPIFNOT                        R0 ; [+8]
       39 GETUPVAL                         R0 4
       40 GETTABLEKS                       R0 R0 K1 ["current"]
       42 CALL                             R0 0 0
       43 GETUPVAL                         R0 4
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K1 ["current"]
       47 LOADNIL                          R0
       48 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["useRefToState"]
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
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K0 ["useRef"]
       29 GETTABLEKS                       R4 R0 K7 ["onClose"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R0 K7 ["onClose"]
       34 SETTABLEKS                       R4 R3 K8 ["current"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K0 ["useRef"]
       39 GETTABLEKS                       R5 R0 K9 ["registerPanelAsync"]
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R5 R0 K9 ["registerPanelAsync"]
       44 SETTABLEKS                       R5 R4 K8 ["current"]
       46 LOADNIL                          R5
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R6 R6 K10 ["FoundationPopoverPluginOverlayMeasurement"]
       50 JUMPIFNOT                        R6 ; [+56]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K11 ["useState"]
       54 LOADB                            R7 0
       55 CALL                             R6 1 2
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K12 ["useCallback"]
       59 NEWCLOSURE                       R9 P0
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R3
       62 NEWTABLE                         R10 0 0
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R9 R9 K13 ["useAsync"]
       68 NEWCLOSURE                       R10 P1
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R1
       75 NEWTABLE                         R11 0 3
       77 GETTABLEKS                       R12 R0 K14 ["isOpen"]
       79 MOVE                             R13 R2
       80 MOVE                             R14 R6
       81 SETLIST                          R11 R12 3 [1]
       83 CALL                             R9 2 1
       84 JUMPIF                           R6 ; [+7]
       85 GETTABLEKS                       R10 R9 K15 ["status"]
       87 JUMPIFNOTEQKS                    R10 K16 ["ok"] ; [+4]
       89 GETTABLEKS                       R5 R9 K17 ["value"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R5
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R10 R10 K18 ["useEffect"]
       96 NEWCLOSURE                       R11 P2
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R7
       99 NEWTABLE                         R12 0 1
      101 GETTABLEKS                       R13 R0 K14 ["isOpen"]
      103 SETLIST                          R12 R13 1 [1]
      105 CALL                             R10 2 0
      106 JUMP                             ; [+25]
      107 GETUPVAL                         R6 1
      108 GETTABLEKS                       R6 R6 K13 ["useAsync"]
      110 NEWCLOSURE                       R7 P3
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R1
      116 NEWTABLE                         R8 0 2
      118 GETTABLEKS                       R9 R0 K14 ["isOpen"]
      120 MOVE                             R10 R2
      121 SETLIST                          R8 R9 2 [1]
      123 CALL                             R6 2 1
      124 GETTABLEKS                       R7 R6 K15 ["status"]
      126 JUMPIFNOTEQKS                    R7 K16 ["ok"] ; [+4]
      128 GETTABLEKS                       R5 R6 K17 ["value"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R5
      132 GETUPVAL                         R6 1
      133 GETTABLEKS                       R6 R6 K13 ["useAsync"]
      135 NEWCLOSURE                       R7 P4
      136 CAPTURE                          REF R5
      137 CAPTURE                          VAL R0
      138 NEWTABLE                         R8 0 3
      140 MOVE                             R9 R5
      141 GETTABLEKS                       R10 R0 K2 ["anchorUri"]
      143 GETTABLEKS                       R11 R0 K3 ["position"]
      145 SETLIST                          R8 R9 3 [1]
      147 CALL                             R6 2 0
      148 GETUPVAL                         R6 0
      149 GETTABLEKS                       R6 R6 K18 ["useEffect"]
      151 NEWCLOSURE                       R7 P5
      152 CAPTURE                          VAL R1
      153 NEWTABLE                         R8 0 0
      155 CALL                             R6 2 0
      156 CLOSEUPVALS                      R5
      157 RETURN                           R5 1

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
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Utility"]
       30 GETTABLEKS                       R6 R6 K11 ["Plugin"]
       32 GETTABLEKS                       R6 R6 K12 ["StudioUri"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K13 ["Types"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K14 [PROTO_7]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 RETURN                           R7 1
