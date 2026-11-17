PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getServerStorageContainer"]
        3 CALL                             R0 0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+19]
       10 LOADK                            R3 K1 ["AnimationGraphDefinition"]
       11 NAMECALL                         R1 R0 K2 ["QueryDescendants"]
       13 CALL                             R1 2 3
       14 FORGPREP                         R1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K3 ["isDirty"]
       18 MOVE                             R7 R5
       19 CALL                             R6 1 1
       20 JUMPIFNOT                        R6 ; [+5]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K4 ["sendUnsavedWarning"]
       24 MOVE                             R7 R5
       25 CALL                             R6 1 0
       26 FORGLOOP                         R1 2 ; [-12]
       28 RETURN                           R0 0
       29 LOADK                            R3 K5 ["AnimationGraphDefinition[$%* = true]"]
       30 GETUPVAL                         R5 4
       31 NAMECALL                         R3 R3 K6 ["format"]
       33 CALL                             R3 2 1
       34 NAMECALL                         R1 R0 K2 ["QueryDescendants"]
       36 CALL                             R1 2 3
       37 FORGPREP                         R1
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K4 ["sendUnsavedWarning"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 0
       43 FORGLOOP                         R1 2 ; [-6]
       45 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishGameSignal"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R0 R0 K1 ["Connect"]
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K2 ["Common"]
        4 LOADK                            R4 K3 ["AnimationEditor"]
        5 LOADK                            R5 K4 ["PublishWarning"]
        6 LOADK                            R6 K5 ["Saving"]
        7 DUPTABLE                         R7 K7 [{"name"}]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K8 ["Name"]
       11 SETTABLEKS                       R8 R7 K6 ["name"]
       13 NAMECALL                         R1 R1 K9 ["getExternalText"]
       15 CALL                             R1 6 -1
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K2 ["Common"]
        4 LOADK                            R4 K3 ["AnimationEditor"]
        5 LOADK                            R5 K4 ["PublishWarning"]
        6 LOADK                            R6 K5 ["Saved"]
        7 DUPTABLE                         R7 K7 [{"name"}]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K8 ["Name"]
       11 SETTABLEKS                       R8 R7 K6 ["name"]
       13 NAMECALL                         R1 R1 K9 ["getExternalText"]
       15 CALL                             R1 6 -1
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["unsavedGraphWarningClickedSignal"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ContextServices"]
        3 GETTABLEKS                       R2 R2 K1 ["Localization"]
        5 NAMECALL                         R2 R2 K2 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["useContext"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["Context"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K5 ["useEffect"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R6 0 3
       26 GETTABLEKS                       R7 R3 K6 ["publishGameSignal"]
       28 GETTABLEKS                       R8 R3 K7 ["sendUnsavedWarning"]
       30 MOVE                             R9 R1
       31 SETLIST                          R6 R7 3 [1]
       33 CALL                             R4 2 0
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K5 ["useEffect"]
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R6 0 3
       43 GETTABLEKS                       R7 R3 K8 ["unsavedGraphWarningClickedSignal"]
       45 MOVE                             R8 R0
       46 MOVE                             R9 R2
       47 SETLIST                          R6 R7 3 [1]
       49 CALL                             R4 2 0
       50 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Rig"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationRigDataUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K9 ["Parent"]
       29 GETTABLEKS                       R4 R4 K11 ["GraphDirtyUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["PublishWarningContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K15 ["Flags"]
       50 GETTABLEKS                       R7 R7 K16 ["getFFlagAnimGraphUI_FixUndoHistory"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K17 [PROTO_8]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R3
       60 RETURN                           R7 1
