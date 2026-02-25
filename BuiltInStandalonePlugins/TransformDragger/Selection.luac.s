PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 1
        3 GETIMPORT                        R2 K1 [ipairs]
        5 GETUPVAL                         R3 0
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 LOADK                            R9 K2 ["BasePart"]
        9 NAMECALL                         R7 R6 K3 ["IsA"]
       11 CALL                             R7 2 1
       12 JUMPIF                           R7 ; [+5]
       13 LOADK                            R9 K4 ["Model"]
       14 NAMECALL                         R7 R6 K3 ["IsA"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+18]
       18 LOADK                            R9 K5 ["Workspace"]
       19 NAMECALL                         R7 R6 K3 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIF                           R7 ; [+13]
       23 LOADK                            R9 K6 ["Terrain"]
       24 NAMECALL                         R7 R6 K3 ["IsA"]
       26 CALL                             R7 2 1
       27 JUMPIF                           R7 ; [+8]
       28 GETIMPORT                        R9 K8 [workspace]
       30 NAMECALL                         R7 R6 K9 ["isDescendantOf"]
       32 CALL                             R7 2 1
       33 JUMPIFNOT                        R7 ; [+2]
       34 SETTABLE                         R6 R0 R1
       35 ADDK                             R1 R1 K10 [1]
       36 FORGLOOP                         R2 2 [inext] ; [-29]
       38 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Selection"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["Get"]
        8 CALL                             R0 1 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K5 ["isRubberBandDragInProgress"]
       13 CALL                             R0 0 1
       14 JUMPIFNOT                        R0 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 3
       17 CALL                             R0 0 1
       18 SETUPVAL                         R0 2
       19 GETUPVAL                         R0 4
       20 JUMPIFNOT                        R0 ; [+4]
       21 GETUPVAL                         R1 4
       22 GETTABLEKS                       R0 R1 K6 ["Unsubscribe"]
       24 CALL                             R0 0 0
       25 GETUPVAL                         R1 5
       26 GETTABLEKS                       R0 R1 K7 ["convertToPart"]
       28 GETUPVAL                         R1 2
       29 LOADB                            R2 1
       30 CALL                             R0 2 1
       31 SETUPVAL                         R0 4
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Rubberband"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["Metapart"]
       18 CALL                             R1 1 1
       19 NEWTABLE                         R2 0 0
       21 NEWTABLE                         R3 0 0
       23 LOADNIL                          R4
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          REF R2
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          REF R2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          REF R3
       30 CAPTURE                          VAL R5
       31 CAPTURE                          REF R4
       32 CAPTURE                          VAL R1
       33 NEWCLOSURE                       R7 P2
       34 CAPTURE                          REF R2
       35 NEWCLOSURE                       R8 P3
       36 CAPTURE                          REF R3
       37 NEWCLOSURE                       R9 P4
       38 CAPTURE                          REF R4
       39 NEWTABLE                         R10 4 0
       41 SETTABLEKS                       R6 R10 K7 ["updateSelection"]
       43 SETTABLEKS                       R7 R10 K8 ["getCurrentSelection"]
       45 SETTABLEKS                       R8 R10 K9 ["getFilteredSelection"]
       47 SETTABLEKS                       R9 R10 K10 ["getFilteredSelectionMetapart"]
       49 CLOSEUPVALS                      R2
       50 RETURN                           R10 1
