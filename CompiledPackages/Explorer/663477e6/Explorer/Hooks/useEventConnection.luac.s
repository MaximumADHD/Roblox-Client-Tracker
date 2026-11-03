PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R1 ; [+2]
        2 GETIMPORT                        R0 K1 [typeof]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKS                    R0 K2 ["RBXScriptConnection"] ; [+6]
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K3 ["Disconnect"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 NAMECALL                         R0 R0 K3 ["Disconnect"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R2 ; [+2]
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["RBXScriptSignal"] ; [+7]
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["Connect"]
       11 CALL                             R0 2 1
       12 JUMP                             ; [+5]
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R2 1
       15 NAMECALL                         R0 R0 K3 ["Connect"]
       17 CALL                             R0 2 1
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R0
       20 RETURN                           R1 1

PROTO_3:
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
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Signal"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_3]
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
