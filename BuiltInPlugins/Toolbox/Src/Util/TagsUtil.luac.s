PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LENGTH                           R2 R0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 GETTABLE                         R6 R0 R4
        7 GETTABLEKS                       R5 R6 K0 ["tag"]
        9 SETTABLE                         R5 R1 R4
       10 FORNLOOP                         R2
       11 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETTABLEKS                       R9 R7 K2 ["id"]
        9 JUMPIFNOT                        R9 ; [+5]
       10 GETTABLEKS                       R9 R7 K3 ["tag"]
       12 GETTABLEKS                       R8 R9 K4 ["tagId"]
       14 JUMPIF                           R8 ; [+2]
       15 GETTABLEKS                       R8 R7 K4 ["tagId"]
       17 LOADB                            R9 1
       18 SETTABLE                         R9 R2 R8
       19 FORGLOOP                         R3 2 ; [-13]
       21 GETIMPORT                        R3 K1 [pairs]
       23 MOVE                             R4 R1
       24 CALL                             R3 1 3
       25 FORGPREP_NEXT                    R3
       26 GETTABLEKS                       R9 R7 K4 ["tagId"]
       28 GETTABLE                         R8 R2 R9
       29 JUMPIF                           R8 ; [+2]
       30 LOADB                            R8 0
       31 RETURN                           R8 1
       32 GETTABLEKS                       R8 R7 K4 ["tagId"]
       34 LOADNIL                          R9
       35 SETTABLE                         R9 R2 R8
       36 FORGLOOP                         R3 2 ; [-11]
       38 GETIMPORT                        R3 K6 [next]
       40 MOVE                             R4 R2
       41 CALL                             R3 1 1
       42 JUMPIFNOT                        R3 ; [+2]
       43 LOADB                            R3 0
       44 RETURN                           R3 1
       45 LOADB                            R3 1
       46 RETURN                           R3 1

PROTO_2:
        0 MOVE                             R3 R0
        1 JUMPIFNOT                        R3 ; [+13]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K0 ["List"]
        5 GETTABLEKS                       R4 R5 K1 ["find"]
        7 MOVE                             R5 R1
        8 GETTABLEKS                       R6 R2 K2 ["Name"]
       10 CALL                             R4 2 1
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEKS                       R7 R6 K2 ["tagId"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+3]
        9 LOADB                            R7 1
       10 RETURN                           R7 1
       11 FORGLOOP                         R2 2 ; [-7]
       13 LOADB                            R2 0
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K7 ["Src"]
       20 GETTABLEKS                       R5 R6 K8 ["Flags"]
       22 GETTABLEKS                       R4 R5 K9 ["getFFlagRemoveItemTags"]
       24 CALL                             R3 1 1
       25 MOVE                             R4 R3
       26 CALL                             R4 0 1
       27 JUMPIF                           R4 ; [+16]
       28 NEWTABLE                         R4 4 0
       30 DUPCLOSURE                       R5 K10 [PROTO_0]
       31 SETTABLEKS                       R5 R4 K11 ["getTagsFromItemTags"]
       33 DUPCLOSURE                       R5 K12 [PROTO_1]
       34 SETTABLEKS                       R5 R4 K13 ["areSetsDifferent"]
       36 DUPCLOSURE                       R5 K14 [PROTO_2]
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R5 R4 K15 ["areTagsEnabled"]
       40 DUPCLOSURE                       R5 K16 [PROTO_3]
       41 SETTABLEKS                       R5 R4 K17 ["hasTag"]
       43 RETURN                           R4 1
       44 RETURN                           R0 0
