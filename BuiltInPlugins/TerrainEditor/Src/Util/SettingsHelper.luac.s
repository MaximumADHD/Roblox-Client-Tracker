PROTO_0:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R9 0
        3 GETTABLE                         R8 R9 R0
        4 GETTABLEKS                       R5 R8 K0 ["Storage"]
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETUPVAL                         R11 1
       10 GETTABLEKS                       R10 R11 K1 ["GlobalPersistent"]
       12 JUMPIFEQ                         R9 R10 ; [+6]
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R10 R11 K2 ["GlobalSession"]
       17 JUMPIFNOTEQ                      R9 R10 ; [+9]
       19 MOVE                             R12 R0
       20 MOVE                             R13 R8
       21 MOVE                             R14 R9
       22 NAMECALL                         R10 R1 K3 ["getGlobal"]
       24 CALL                             R10 4 1
       25 SETTABLE                         R10 R4 R8
       26 JUMP                             ; [+16]
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R10 R11 K4 ["LocalPersistent"]
       30 JUMPIFNOTEQ                      R9 R10 ; [+4]
       32 GETTABLE                         R10 R2 R8
       33 SETTABLE                         R10 R4 R8
       34 JUMP                             ; [+8]
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R10 R11 K5 ["LocalSession"]
       38 JUMPIFNOTEQ                      R9 R10 ; [+4]
       40 JUMPIFNOT                        R3 ; [+2]
       41 GETTABLE                         R10 R3 R8
       42 SETTABLE                         R10 R4 R8
       43 FORGLOOP                         R5 2 ; [-35]
       45 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 GETUPVAL                         R9 0
        5 GETTABLE                         R8 R9 R0
        6 GETTABLEKS                       R5 R8 K0 ["Storage"]
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 GETTABLE                         R10 R2 R8
       12 JUMPIFEQKNIL                     R10 ; [+34]
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R10 R11 K1 ["GlobalPersistent"]
       17 JUMPIFEQ                         R9 R10 ; [+6]
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R10 R11 K2 ["GlobalSession"]
       22 JUMPIFNOTEQ                      R9 R10 ; [+9]
       24 MOVE                             R12 R0
       25 MOVE                             R13 R8
       26 GETTABLE                         R14 R2 R8
       27 MOVE                             R15 R9
       28 NAMECALL                         R10 R1 K3 ["setGlobal"]
       30 CALL                             R10 5 0
       31 JUMP                             ; [+15]
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R10 R11 K4 ["LocalPersistent"]
       35 JUMPIFNOTEQ                      R9 R10 ; [+4]
       37 GETTABLE                         R10 R2 R8
       38 SETTABLE                         R10 R3 R8
       39 JUMP                             ; [+7]
       40 GETUPVAL                         R11 1
       41 GETTABLEKS                       R10 R11 K5 ["LocalSession"]
       43 JUMPIFNOTEQ                      R9 R10 ; [+3]
       45 GETTABLE                         R10 R2 R8
       46 SETTABLE                         R10 R4 R8
       47 FORGLOOP                         R5 2 ; [-37]
       49 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Storage"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["Schemas"]
       22 GETTABLEKS                       R4 R5 K10 ["Settings"]
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
