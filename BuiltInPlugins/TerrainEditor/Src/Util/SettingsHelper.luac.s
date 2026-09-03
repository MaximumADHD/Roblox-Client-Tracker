PROTO_0:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R8 0
        3 GETTABLE                         R5 R8 R0
        4 GETTABLEKS                       R5 R5 K0 ["Storage"]
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETUPVAL                         R10 1
       10 GETTABLEKS                       R10 R10 K1 ["GlobalPersistent"]
       12 JUMPIFEQ                         R9 R10 ; [+11]
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R10 R10 K2 ["GlobalSession"]
       17 JUMPIFEQ                         R9 R10 ; [+6]
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K3 ["PlacePersistent"]
       22 JUMPIFNOTEQ                      R9 R10 ; [+9]
       24 MOVE                             R12 R0
       25 MOVE                             R13 R8
       26 MOVE                             R14 R9
       27 NAMECALL                         R10 R1 K4 ["getGlobal"]
       29 CALL                             R10 4 1
       30 SETTABLE                         R10 R4 R8
       31 JUMP                             ; [+16]
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R10 R10 K5 ["LocalPersistent"]
       35 JUMPIFNOTEQ                      R9 R10 ; [+4]
       37 GETTABLE                         R10 R2 R8
       38 SETTABLE                         R10 R4 R8
       39 JUMP                             ; [+8]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K6 ["LocalSession"]
       43 JUMPIFNOTEQ                      R9 R10 ; [+4]
       45 JUMPIFNOT                        R3 ; [+2]
       46 GETTABLE                         R10 R3 R8
       47 SETTABLE                         R10 R4 R8
       48 FORGLOOP                         R5 2 ; [-40]
       50 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 GETUPVAL                         R8 0
        5 GETTABLE                         R5 R8 R0
        6 GETTABLEKS                       R5 R5 K0 ["Storage"]
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 GETTABLE                         R10 R2 R8
       12 JUMPIFEQKNIL                     R10 ; [+39]
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R10 R10 K1 ["GlobalPersistent"]
       17 JUMPIFEQ                         R9 R10 ; [+11]
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K2 ["GlobalSession"]
       22 JUMPIFEQ                         R9 R10 ; [+6]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R10 R10 K3 ["PlacePersistent"]
       27 JUMPIFNOTEQ                      R9 R10 ; [+9]
       29 MOVE                             R12 R0
       30 MOVE                             R13 R8
       31 GETTABLE                         R14 R2 R8
       32 MOVE                             R15 R9
       33 NAMECALL                         R10 R1 K4 ["setGlobal"]
       35 CALL                             R10 5 0
       36 JUMP                             ; [+15]
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K5 ["LocalPersistent"]
       40 JUMPIFNOTEQ                      R9 R10 ; [+4]
       42 GETTABLE                         R10 R2 R8
       43 SETTABLE                         R10 R3 R8
       44 JUMP                             ; [+7]
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K6 ["LocalSession"]
       48 JUMPIFNOTEQ                      R9 R10 ; [+3]
       50 GETTABLE                         R10 R2 R8
       51 SETTABLE                         R10 R4 R8
       52 FORGLOOP                         R5 2 ; [-42]
       54 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Storage"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R4 K9 ["Schemas"]
       22 GETTABLEKS                       R4 R4 K10 ["Settings"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 2 0
       27 DUPCLOSURE                       R5 K11 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R5 R4 K12 ["Get"]
       32 DUPCLOSURE                       R5 K13 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R5 R4 K14 ["Set"]
       37 RETURN                           R4 1
