PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 LOADB                            R0 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 0
        8 NAMECALL                         R1 R1 K0 ["fetchAssetTechnicalDetailsAsync"]
       10 CALL                             R1 2 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          REF R0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R1 R1 K1 ["andThen"]
       17 CALL                             R1 2 0
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          REF R0
       20 CLOSEUPVALS                      R0
       21 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R0
        9 CALL                             R4 1 2
       10 JUMPIFEQ                         R0 R4 ; [+7]
       12 MOVE                             R6 R5
       13 MOVE                             R7 R0
       14 CALL                             R6 1 0
       15 MOVE                             R6 R3
       16 LOADNIL                          R7
       17 CALL                             R6 1 0
       18 JUMPIFNOT                        R0 ; [+5]
       19 MOVE                             R8 R0
       20 NAMECALL                         R6 R1 K1 ["getAssetTechnicalDetails"]
       22 CALL                             R6 2 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R6
       25 LOADB                            R7 0
       26 JUMPIFEQKNIL                     R0 ; [+11]
       28 LOADB                            R7 0
       29 JUMPIFNOTEQKNIL                  R6 ; [+8]
       31 LOADB                            R7 0
       32 JUMPIFEQ                         R2 R0 ; [+5]
       34 MOVE                             R9 R0
       35 NAMECALL                         R7 R1 K2 ["canFetchAssetTechnicalDetails"]
       37 CALL                             R7 2 1
       38 GETUPVAL                         R8 2
       39 NEWCLOSURE                       R9 P0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R10 0 2
       46 MOVE                             R11 R0
       47 MOVE                             R12 R7
       48 SETLIST                          R10 R11 2 [1]
       50 CALL                             R8 2 0
       51 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Controllers"]
       24 GETTABLEKS                       R5 R5 K12 ["ItemsController"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Types"]
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K14 [PROTO_3]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 RETURN                           R6 1
