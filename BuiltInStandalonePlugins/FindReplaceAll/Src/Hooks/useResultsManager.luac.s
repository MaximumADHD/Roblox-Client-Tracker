PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["fetchAroundVisibleIndex"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["maybeRefetchAroundVisibleIndex"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+2]
        2 JUMPIFNOT                        R0 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 GETTABLEKS                       R1 R1 K1 ["fetchAroundVisibleIndex"]
        8 LOADB                            R2 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 3
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["ResultsAvailable"]
        5 CALL                             R1 0 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["current"]
       14 GETTABLEKS                       R2 R2 K3 ["scrollHeightObservable"]
       16 GETTABLEKS                       R2 R2 K4 ["changedSignal"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U1
       20 NAMECALL                         R2 R2 K1 ["Connect"]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K2 ["current"]
       26 GETTABLEKS                       R3 R3 K5 ["collapsedFilesSignal"]
       28 NEWCLOSURE                       R5 P2
       29 CAPTURE                          UPVAL U1
       30 NAMECALL                         R3 R3 K1 ["Connect"]
       32 CALL                             R3 2 -1
       33 SETLIST                          R0 R1 -1 [1]
       35 NEWCLOSURE                       R1 P3
       36 CAPTURE                          VAL R0
       37 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useRef"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["useEffect"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R3 0 0
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R1 R0 K2 ["current"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Commands"]
       20 GETTABLEKS                       R3 R3 K10 ["FindReplace"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Core"]
       29 GETTABLEKS                       R4 R4 K12 ["createResultsManager"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_5]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1
