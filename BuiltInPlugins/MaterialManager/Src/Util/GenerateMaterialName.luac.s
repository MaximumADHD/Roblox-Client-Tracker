PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 LOADB                            R4 0
        3 NAMECALL                         R5 R0 K0 ["GetDescendants"]
        5 CALL                             R5 1 3
        6 FORGPREP                         R5
        7 LOADK                            R12 K1 ["MaterialVariant"]
        8 NAMECALL                         R10 R9 K2 ["IsA"]
       10 CALL                             R10 2 1
       11 JUMPIFNOT                        R10 ; [+23]
       12 GETTABLEKS                       R10 R9 K3 ["BaseMaterial"]
       14 JUMPIFNOTEQ                      R10 R1 ; [+20]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R11 R9 K4 ["Name"]
       19 MOVE                             R12 R2
       20 CALL                             R10 2 1
       21 JUMPIFNOT                        R10 ; [+8]
       22 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       24 MOVE                             R12 R3
       25 MOVE                             R13 R10
       26 GETIMPORT                        R11 K7 [table.insert]
       28 CALL                             R11 2 0
       29 JUMP                             ; [+5]
       30 GETTABLEKS                       R11 R9 K4 ["Name"]
       32 JUMPIFNOTEQ                      R11 R2 ; [+2]
       34 LOADB                            R4 1
       35 FORGLOOP                         R5 2 ; [-29]
       37 JUMPIFNOT                        R4 ; [+4]
       38 GETUPVAL                         R5 1
       39 MOVE                             R6 R3
       40 CALL                             R5 1 -1
       41 RETURN                           R5 -1
       42 LOADNIL                          R5
       43 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K5 ["Src"]
       18 GETTABLEKS                       R2 R2 K7 ["Util"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K8 ["getNumberFromName"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R2 K9 ["getNextFreeIndex"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K10 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 RETURN                           R5 1
