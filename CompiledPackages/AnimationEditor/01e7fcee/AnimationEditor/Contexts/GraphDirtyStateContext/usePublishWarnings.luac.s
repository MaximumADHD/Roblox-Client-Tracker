PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getServerStorageContainer"]
        3 CALL                             R0 0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 LOADK                            R4 K1 ["AnimationGraphDefinition[$%* = true]"]
        8 GETUPVAL                         R6 1
        9 NAMECALL                         R4 R4 K2 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 NAMECALL                         R1 R0 K3 ["QueryDescendants"]
       15 CALL                             R1 2 3
       16 FORGPREP                         R1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K4 ["sendUnsavedWarning"]
       20 MOVE                             R7 R5
       21 CALL                             R6 1 0
       22 FORGLOOP                         R1 2 ; [-6]
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["publishGameSignal"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K2 ["Common"]
        4 LOADK                            R4 K3 ["AnimationEditor"]
        5 LOADK                            R5 K4 ["PublishWarning"]
        6 LOADK                            R6 K5 ["Saving"]
        7 DUPTABLE                         R7 K7 [{"name"}]
        8 GETUPVAL                         R9 1
        9 GETTABLEKS                       R8 R9 K8 ["Name"]
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
        8 GETUPVAL                         R9 1
        9 GETTABLEKS                       R8 R9 K8 ["Name"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["unsavedGraphWarningClickedSignal"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ContextServices"]
        3 GETTABLEKS                       R2 R3 K1 ["Localization"]
        5 NAMECALL                         R2 R2 K2 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["useContext"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K4 ["Context"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K5 ["useEffect"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R6 0 3
       24 GETTABLEKS                       R7 R3 K6 ["publishGameSignal"]
       26 GETTABLEKS                       R8 R3 K7 ["sendUnsavedWarning"]
       28 MOVE                             R9 R1
       29 SETLIST                          R6 R7 3 [1]
       31 CALL                             R4 2 0
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R4 R5 K5 ["useEffect"]
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R6 0 3
       41 GETTABLEKS                       R7 R3 K8 ["unsavedGraphWarningClickedSignal"]
       43 MOVE                             R8 R0
       44 MOVE                             R9 R2
       45 SETLIST                          R6 R7 3 [1]
       47 CALL                             R4 2 0
       48 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["Rig"]
       13 GETTABLEKS                       R2 R3 K8 ["AnimationRigDataUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K12 ["PublishWarningContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["React"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K14 [PROTO_8]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 RETURN                           R5 1
