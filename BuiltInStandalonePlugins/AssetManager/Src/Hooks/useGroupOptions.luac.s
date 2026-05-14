PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnGroupOptionsChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnToggleSetChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R2 R0 K1 ["getGroupOptions"]
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 2
        9 GETUPVAL                         R3 1
       10 NAMECALL                         R4 R0 K2 ["getToggleSet"]
       12 CALL                             R4 1 -1
       13 CALL                             R3 -1 2
       14 GETUPVAL                         R5 2
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R7 0 0
       20 CALL                             R5 2 0
       21 GETUPVAL                         R5 2
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R7 0 0
       27 CALL                             R5 2 0
       28 MOVE                             R5 R1
       29 MOVE                             R6 R3
       30 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["useState"]
       23 GETTABLEKS                       R4 R2 K11 ["useEffect"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Controllers"]
       31 GETTABLEKS                       R6 R6 K13 ["ExplorerController"]
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K14 [PROTO_4]
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 RETURN                           R6 1
