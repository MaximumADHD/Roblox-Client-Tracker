PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["GetAttribute"]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K0 ["LUAU_ANALYZE_ERROR"]
       13 FASTCALL2                        ASSERT R1 R2 ; [+3]
       15 GETIMPORT                        R0 K2 [assert]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 2
       19 GETUPVAL                         R1 0
       20 GETUPVAL                         R3 3
       21 NAMECALL                         R1 R1 K3 ["GetAttribute"]
       23 CALL                             R1 2 -1
       24 CALL                             R0 -1 0
       25 GETUPVAL                         R0 0
       26 GETUPVAL                         R2 3
       27 NAMECALL                         R0 R0 K4 ["GetAttributeChangedSignal"]
       29 CALL                             R0 2 1
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U3
       34 NAMECALL                         R0 R0 K5 ["Connect"]
       36 CALL                             R0 2 1
       37 NEWCLOSURE                       R1 P1
       38 CAPTURE                          VAL R0
       39 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useState"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R3
        6 JUMP                             ; [+4]
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R0 K1 ["GetAttribute"]
       10 CALL                             R3 2 1
       11 CALL                             R2 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K2 ["useEffect"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R6 0 2
       22 MOVE                             R7 R0
       23 MOVE                             R8 R1
       24 SETLIST                          R6 R7 2 [1]
       26 CALL                             R4 2 0
       27 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_3]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
