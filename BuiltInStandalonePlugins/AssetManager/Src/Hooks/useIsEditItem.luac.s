PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 JUMPIFEQ                         R0 R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["getStagedEditItemPath"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K1 ["OnStagedEditItemPathChanged"]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U2
       17 NAMECALL                         R0 R0 K2 ["Connect"]
       19 CALL                             R0 2 1
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R3 R1 K1 ["getStagedEditItemPath"]
        6 CALL                             R3 1 1
        7 JUMPIFEQ                         R3 R0 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["useState"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R7 0 1
       25 MOVE                             R8 R0
       26 SETLIST                          R7 R8 1 [1]
       28 CALL                             R5 2 0
       29 RETURN                           R3 1

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
       18 GETTABLEKS                       R3 R3 K9 ["Controllers"]
       20 GETTABLEKS                       R3 R3 K10 ["ItemsController"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_3]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
