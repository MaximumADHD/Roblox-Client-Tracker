PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["Parent"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R1 ; [+5]
        3 JUMPIFEQ                         R0 R1 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_2:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R1 ; [+12]
        3 LOADB                            R2 0
        4 GETTABLEKS                       R3 R1 K0 ["Parent"]
        6 JUMPIFEQKNIL                     R3 ; [+7]
        8 GETTABLEKS                       R3 R1 K0 ["Parent"]
       10 JUMPIFEQ                         R0 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_3:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R1 K1 [ipairs]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 3
        6 FORGPREP_INEXT                   R1
        7 NAMECALL                         R6 R5 K2 ["destroy"]
        9 CALL                             R6 1 0
       10 FORGLOOP                         R1 2 [inext] ; [-4]
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["hasAttachedEditingItem"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["isEditingItem"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["isMannequin"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["discardAvatars"]
       15 RETURN                           R0 1
