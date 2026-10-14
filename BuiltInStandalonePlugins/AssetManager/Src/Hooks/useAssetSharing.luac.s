PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnAssetSharingChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 LOADB                            R0 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 0
        8 NAMECALL                         R1 R1 K0 ["fetchAssetSharingAsync"]
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K1 ["getAssetSharing"]
        8 CALL                             R2 2 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 GETUPVAL                         R3 1
       12 JUMPIFNOT                        R2 ; [+2]
       13 MOVE                             R4 R0
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 1
       18 MOVE                             R6 R0
       19 CALL                             R5 1 2
       20 JUMPIFEQ                         R0 R5 ; [+10]
       22 MOVE                             R7 R6
       23 MOVE                             R8 R0
       24 CALL                             R7 1 0
       25 MOVE                             R7 R4
       26 JUMPIFNOT                        R2 ; [+2]
       27 MOVE                             R8 R0
       28 JUMP                             ; [+1]
       29 LOADNIL                          R8
       30 CALL                             R7 1 0
       31 LOADB                            R7 0
       32 JUMPIFEQKNIL                     R0 ; [+11]
       34 LOADB                            R7 0
       35 JUMPIFNOTEQKNIL                  R2 ; [+8]
       37 LOADB                            R7 0
       38 JUMPIFEQ                         R3 R0 ; [+5]
       40 MOVE                             R9 R0
       41 NAMECALL                         R7 R1 K2 ["canFetchAssetSharing"]
       43 CALL                             R7 2 1
       44 GETUPVAL                         R8 2
       45 NEWCLOSURE                       R9 P0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R10 0 0
       50 CALL                             R8 2 0
       51 GETUPVAL                         R8 2
       52 NEWCLOSURE                       R9 P1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R4
       57 NEWTABLE                         R10 0 2
       59 MOVE                             R11 R0
       60 MOVE                             R12 R7
       61 SETLIST                          R10 R11 2 [1]
       63 CALL                             R8 2 0
       64 MOVE                             R8 R2
       65 MOVE                             R9 R7
       66 RETURN                           R8 2

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
       34 DUPCLOSURE                       R6 K14 [PROTO_6]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 RETURN                           R6 1
