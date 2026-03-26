PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onAccept"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 NAMECALL                         R1 R1 K1 ["cancel"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K0 ["current"]
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K2 ["saveVersionNotes"]
       18 DUPTABLE                         R3 K6 [{"placeId", "version", "notes"}]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K3 ["placeId"]
       22 SETTABLEKS                       R4 R3 K3 ["placeId"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K4 ["version"]
       27 SETTABLEKS                       R4 R3 K4 ["version"]
       29 SETTABLEKS                       R0 R3 K5 ["notes"]
       31 CALL                             R2 1 1
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R0
       35 NAMECALL                         R2 R2 K7 ["andThen"]
       37 CALL                             R2 2 1
       38 DUPCLOSURE                       R4 K8 [PROTO_1]
       39 NAMECALL                         R2 R2 K9 ["catch"]
       41 CALL                             R2 2 1
       42 SETTABLEKS                       R2 R1 K0 ["current"]
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["cancel"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K2 ["onReject"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R5 0 0
       19 CALL                             R3 2 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 0
       28 CALL                             R4 2 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K3 ["createElement"]
       32 GETUPVAL                         R6 2
       33 DUPTABLE                         R7 K8 [{"variant", "notes", "onAccept", "onReject"}]
       34 GETTABLEKS                       R9 R0 K5 ["notes"]
       36 JUMPIFNOT                        R9 ; [+2]
       37 LOADK                            R8 K9 ["Edit"]
       38 JUMP                             ; [+1]
       39 LOADK                            R8 K10 ["Add"]
       40 SETTABLEKS                       R8 R7 K4 ["variant"]
       42 GETTABLEKS                       R8 R0 K5 ["notes"]
       44 SETTABLEKS                       R8 R7 K5 ["notes"]
       46 SETTABLEKS                       R3 R7 K6 ["onAccept"]
       48 SETTABLEKS                       R4 R7 K7 ["onReject"]
       50 CALL                             R5 2 -1
       51 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R3 K9 ["Contexts"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["NetworkContext"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R5 K11 ["Components"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K12 ["NotesDialog"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R8 R0 K8 ["Src"]
       36 GETTABLEKS                       R7 R8 K13 ["Types"]
       38 CALL                             R6 1 1
       39 DUPCLOSURE                       R7 K14 [PROTO_4]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 RETURN                           R7 1
