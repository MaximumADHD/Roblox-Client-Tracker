PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 0
        6 FASTCALL1                        TYPEOF R1 ; [+2]
        7 GETIMPORT                        R0 K1 [typeof]
        9 CALL                             R0 1 1
       10 JUMPIFNOTEQKS                    R0 K2 ["RBXScriptSignal"] ; [+9]
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R2 1
       14 NAMECALL                         R0 R0 K3 ["Connect"]
       16 CALL                             R0 2 1
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R2 1
       22 NAMECALL                         R0 R0 K3 ["Connect"]
       24 CALL                             R0 2 1
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          VAL R0
       27 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useMemo"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 NEWTABLE                         R6 0 2
       15 MOVE                             R7 R0
       16 MOVE                             R8 R3
       17 SETLIST                          R6 R7 2 [1]
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["GoodSignal"]
       18 CALL                             R3 1 1
       19 DUPCLOSURE                       R4 K9 [PROTO_4]
       20 CAPTURE                          VAL R2
       21 RETURN                           R4 1
