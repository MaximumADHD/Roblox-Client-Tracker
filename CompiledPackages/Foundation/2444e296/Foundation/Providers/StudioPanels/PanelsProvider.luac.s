PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["uriScope"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 2
        2 NAMECALL                         R0 R0 K0 ["prewarmPoolAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K3 ["destroy"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["FoundationPopoverPluginPrewarmDepthPool"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETIMPORT                        R1 K3 [task.spawn]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R1 1 1
       10 MOVE                             R0 R1
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          REF R0
       13 CAPTURE                          UPVAL U1
       14 CLOSEUPVALS                      R0
       15 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["close"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R5 0
        1 DUPTABLE                         R7 K4 [{"targetWidgetUri", "targetAnchorPoint", "subjectAnchorPoint", "offset"}]
        2 SETTABLEKS                       R0 R7 K0 ["targetWidgetUri"]
        4 GETTABLEKS                       R8 R1 K1 ["targetAnchorPoint"]
        6 SETTABLEKS                       R8 R7 K1 ["targetAnchorPoint"]
        8 GETTABLEKS                       R8 R1 K2 ["subjectAnchorPoint"]
       10 SETTABLEKS                       R8 R7 K2 ["subjectAnchorPoint"]
       12 GETTABLEKS                       R8 R1 K3 ["offset"]
       14 SETTABLEKS                       R8 R7 K3 ["offset"]
       16 MOVE                             R8 R2
       17 MOVE                             R9 R3
       18 MOVE                             R10 R4
       19 NAMECALL                         R5 R5 K5 ["openAtAsync"]
       21 CALL                             R5 5 1
       22 MOVE                             R6 R5
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R5
       25 RETURN                           R6 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOTEQKNIL                  R1 ; [+5]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R3 K2 ["PanelsProvider must be used within a plugin context"]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useMemo"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R4 0 2
       17 MOVE                             R5 R1
       18 GETTABLEKS                       R6 R0 K4 ["uriScope"]
       20 SETLIST                          R4 R5 2 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K5 ["useEffect"]
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R5 0 1
       31 MOVE                             R6 R2
       32 SETLIST                          R5 R6 1 [1]
       34 CALL                             R3 2 0
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K6 ["useCallback"]
       38 NEWCLOSURE                       R4 P2
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R5 0 1
       42 MOVE                             R6 R2
       43 SETLIST                          R5 R6 1 [1]
       45 CALL                             R3 2 1
       46 DUPTABLE                         R4 K8 [{"registerPopoverAsync"}]
       47 SETTABLEKS                       R3 R4 K7 ["registerPopoverAsync"]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K9 ["createElement"]
       52 GETUPVAL                         R6 4
       53 GETTABLEKS                       R6 R6 K10 ["Provider"]
       55 DUPTABLE                         R7 K12 [{"value"}]
       56 SETTABLEKS                       R4 R7 K11 ["value"]
       58 GETTABLEKS                       R8 R0 K13 ["children"]
       60 CALL                             R5 3 -1
       61 RETURN                           R5 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Flags"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Utility"]
       25 GETTABLEKS                       R5 R5 K10 ["Plugin"]
       27 GETTABLEKS                       R5 R5 K11 ["StudioUri"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Providers"]
       34 GETTABLEKS                       R6 R6 K10 ["Plugin"]
       36 GETTABLEKS                       R6 R6 K13 ["usePlugin"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K4 ["Parent"]
       45 GETTABLEKS                       R7 R7 K14 ["PanelsContext"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETIMPORT                        R8 K1 [script]
       52 GETTABLEKS                       R8 R8 K4 ["Parent"]
       54 GETTABLEKS                       R8 R8 K15 ["Managers"]
       56 GETTABLEKS                       R8 R8 K16 ["PopoverManager"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETIMPORT                        R9 K1 [script]
       63 GETTABLEKS                       R9 R9 K4 ["Parent"]
       65 GETTABLEKS                       R9 R9 K17 ["Types"]
       67 CALL                             R8 1 1
       68 DUPCLOSURE                       R9 K18 [PROTO_6]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R6
       74 RETURN                           R9 1
