PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K1 ["uriScope"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["close"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K4 [{"targetWidgetUri", "targetAnchorPoint", "subjectAnchorPoint", "offset"}]
        2 SETTABLEKS                       R0 R5 K0 ["targetWidgetUri"]
        4 GETTABLEKS                       R6 R1 K1 ["targetAnchorPoint"]
        6 SETTABLEKS                       R6 R5 K1 ["targetAnchorPoint"]
        8 GETTABLEKS                       R6 R1 K2 ["subjectAnchorPoint"]
       10 SETTABLEKS                       R6 R5 K2 ["subjectAnchorPoint"]
       12 GETTABLEKS                       R6 R1 K3 ["offset"]
       14 SETTABLEKS                       R6 R5 K3 ["offset"]
       16 MOVE                             R6 R2
       17 NAMECALL                         R3 R3 K5 ["openAtAsync"]
       19 CALL                             R3 3 1
       20 MOVE                             R4 R3
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R3
       23 RETURN                           R4 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOTEQKNIL                  R1 ; [+5]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R3 K2 ["PanelsProvider must be used within a plugin context"]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["useMemo"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R4 0 2
       17 MOVE                             R5 R1
       18 GETTABLEKS                       R6 R0 K4 ["uriScope"]
       20 SETLIST                          R4 R5 2 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K5 ["useEffect"]
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R5 0 1
       30 MOVE                             R6 R2
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R3 R4 K6 ["useCallback"]
       37 NEWCLOSURE                       R4 P2
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R5 0 1
       41 MOVE                             R6 R2
       42 SETLIST                          R5 R6 1 [1]
       44 CALL                             R3 2 1
       45 DUPTABLE                         R4 K8 [{"registerPopoverAsync"}]
       46 SETTABLEKS                       R3 R4 K7 ["registerPopoverAsync"]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R5 R6 K9 ["createElement"]
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R6 R7 K10 ["Provider"]
       54 DUPTABLE                         R7 K12 [{"value"}]
       55 SETTABLEKS                       R4 R7 K11 ["value"]
       57 GETTABLEKS                       R8 R0 K13 ["children"]
       59 CALL                             R5 3 -1
       60 RETURN                           R5 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Utility"]
       18 GETTABLEKS                       R5 R6 K9 ["Plugin"]
       20 GETTABLEKS                       R4 R5 K10 ["StudioUri"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R7 R0 K11 ["Providers"]
       27 GETTABLEKS                       R6 R7 K9 ["Plugin"]
       29 GETTABLEKS                       R5 R6 K12 ["usePlugin"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K4 ["Parent"]
       38 GETTABLEKS                       R6 R7 K13 ["PanelsContext"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETIMPORT                        R10 K1 [script]
       45 GETTABLEKS                       R9 R10 K4 ["Parent"]
       47 GETTABLEKS                       R8 R9 K14 ["Managers"]
       49 GETTABLEKS                       R7 R8 K15 ["PopoverManager"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETIMPORT                        R10 K1 [script]
       56 GETTABLEKS                       R9 R10 K4 ["Parent"]
       58 GETTABLEKS                       R8 R9 K16 ["Types"]
       60 CALL                             R7 1 1
       61 DUPCLOSURE                       R8 K17 [PROTO_5]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 RETURN                           R8 1
