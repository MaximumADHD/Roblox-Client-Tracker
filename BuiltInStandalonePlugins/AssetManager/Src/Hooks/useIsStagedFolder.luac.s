PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getStagedFolder"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 JUMPIFEQ                         R1 R2 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["getStagedFolder"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["getStagedFolder"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K1 ["OnExplorerItemsChanged"]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 NAMECALL                         R0 R0 K2 ["Connect"]
       20 CALL                             R0 2 1
       21 NEWCLOSURE                       R1 P1
       22 CAPTURE                          VAL R0
       23 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 2
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R6 0 1
       16 MOVE                             R7 R0
       17 SETLIST                          R6 R7 1 [1]
       19 CALL                             R4 2 0
       20 RETURN                           R2 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Controllers"]
       27 GETTABLEKS                       R4 R4 K11 ["ExplorerController"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["useState"]
       32 GETTABLEKS                       R5 R1 K13 ["useEffect"]
       34 DUPCLOSURE                       R6 K14 [PROTO_4]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 RETURN                           R6 1
