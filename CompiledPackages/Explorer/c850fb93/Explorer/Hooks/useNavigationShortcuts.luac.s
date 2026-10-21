PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stepSelectedNode"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["current"]
        6 MINUS                            R1 R2
        7 LOADB                            R2 0
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["getSearch"]
       11 CALL                             R4 0 1
       12 JUMPIFEQKS                       R4 K3 [""] ; [+5]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["isInstanceIdSearched"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 CALL                             R0 3 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stepSelectedNode"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["current"]
        6 LOADB                            R2 0
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["getSearch"]
       10 CALL                             R4 0 1
       11 JUMPIFEQKS                       R4 K3 [""] ; [+5]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["isInstanceIdSearched"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSearch"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKS                       R0 K1 [""] ; [+20]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["selectIds"]
        9 GETIMPORT                        R1 K5 [table.freeze]
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 -1
       14 CALL                             R0 -1 0
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K6 ["stepSelectedNode"]
       18 LOADN                            R1 1
       19 LOADB                            R2 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K7 ["isInstanceIdSearched"]
       23 CALL                             R0 3 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 2
       26 GETTABLEKS                       R0 R0 K8 ["first"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K9 ["focusedRootObservable"]
       31 GETTABLEKS                       R1 R1 K10 ["get"]
       33 CALL                             R1 0 1
       34 GETTABLEKS                       R1 R1 K11 ["children"]
       36 CALL                             R0 1 1
       37 JUMPIFNOTEQKNIL                  R0 ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       43 LOADK                            R3 K12 ["Expected firstNode to exist"]
       44 GETIMPORT                        R1 K14 [assert]
       46 CALL                             R1 2 0
       47 GETUPVAL                         R1 0
       48 GETTABLEKS                       R1 R1 K2 ["selectIds"]
       50 GETIMPORT                        R2 K5 [table.freeze]
       52 NEWTABLE                         R3 0 1
       54 GETTABLEKS                       R4 R0 K15 ["datum"]
       56 GETTABLEKS                       R4 R4 K16 ["id"]
       58 SETLIST                          R3 R4 1 [1]
       60 CALL                             R2 1 -1
       61 CALL                             R1 -1 0
       62 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSearch"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKS                       R0 K1 [""] ; [+20]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["selectIds"]
        9 GETIMPORT                        R1 K5 [table.freeze]
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 -1
       14 CALL                             R0 -1 0
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K6 ["stepSelectedNode"]
       18 LOADN                            R1 -1
       19 LOADB                            R2 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K7 ["isInstanceIdSearched"]
       23 CALL                             R0 3 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 2
       26 GETTABLEKS                       R0 R0 K8 ["last"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K9 ["focusedRootObservable"]
       31 GETTABLEKS                       R1 R1 K10 ["get"]
       33 CALL                             R1 0 1
       34 GETTABLEKS                       R1 R1 K11 ["children"]
       36 CALL                             R0 1 1
       37 JUMPIFNOTEQKNIL                  R0 ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       43 LOADK                            R3 K12 ["Expected lastNode to exist"]
       44 GETIMPORT                        R1 K14 [assert]
       46 CALL                             R1 2 0
       47 GETUPVAL                         R1 0
       48 GETTABLEKS                       R1 R1 K2 ["selectIds"]
       50 GETIMPORT                        R2 K5 [table.freeze]
       52 NEWTABLE                         R3 0 1
       54 GETTABLEKS                       R4 R0 K15 ["datum"]
       56 GETTABLEKS                       R4 R4 K16 ["id"]
       58 SETLIST                          R3 R4 1 [1]
       60 CALL                             R2 1 -1
       61 CALL                             R1 -1 0
       62 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["connectToShortcut"]
        6 LOADK                            R4 K1 ["Home"]
        7 GETUPVAL                         R5 1
        8 CALL                             R3 2 -1
        9 FASTCALL                         TABLE_INSERT ; [+2]
       10 GETIMPORT                        R1 K4 [table.insert]
       12 CALL                             R1 -1 0
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["connectToShortcut"]
       17 LOADK                            R4 K5 ["End"]
       18 GETUPVAL                         R5 2
       19 CALL                             R3 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R1 K4 [table.insert]
       23 CALL                             R1 -1 0
       24 MOVE                             R2 R0
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["connectToShortcut"]
       28 LOADK                            R4 K6 ["Page Up"]
       29 GETUPVAL                         R5 3
       30 CALL                             R3 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R1 K4 [table.insert]
       34 CALL                             R1 -1 0
       35 MOVE                             R2 R0
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K0 ["connectToShortcut"]
       39 LOADK                            R4 K7 ["Page Down"]
       40 GETUPVAL                         R5 4
       41 CALL                             R3 2 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R1 K4 [table.insert]
       45 CALL                             R1 -1 0
       46 NEWCLOSURE                       R1 P0
       47 CAPTURE                          VAL R0
       48 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R6 0 2
       19 GETTABLEKS                       R7 R3 K3 ["stepSelectedNode"]
       21 MOVE                             R8 R0
       22 SETLIST                          R6 R7 2 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R7 0 2
       34 GETTABLEKS                       R8 R3 K3 ["stepSelectedNode"]
       36 MOVE                             R9 R0
       37 SETLIST                          R7 R8 2 [1]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       43 NEWCLOSURE                       R7 P2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U3
       47 NEWTABLE                         R8 0 2
       49 MOVE                             R9 R0
       50 GETTABLEKS                       R10 R3 K3 ["stepSelectedNode"]
       52 SETLIST                          R8 R9 2 [1]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       58 NEWCLOSURE                       R8 P3
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R3
       61 CAPTURE                          UPVAL U3
       62 NEWTABLE                         R9 0 2
       64 MOVE                             R10 R0
       65 GETTABLEKS                       R11 R3 K3 ["stepSelectedNode"]
       67 SETLIST                          R9 R10 2 [1]
       69 CALL                             R7 2 1
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K4 ["useEffect"]
       73 NEWCLOSURE                       R9 P4
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R5
       79 NEWTABLE                         R10 0 5
       81 MOVE                             R11 R0
       82 MOVE                             R12 R6
       83 MOVE                             R13 R7
       84 MOVE                             R14 R4
       85 MOVE                             R15 R5
       86 SETLIST                          R10 R11 5 [1]
       88 CALL                             R8 2 0
       89 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ExplorerNodeChildrenMutable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K13 ["ShortcutContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K15 ["useSelectionStepper"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K16 [PROTO_6]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R1
       47 RETURN                           R6 1
