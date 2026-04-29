PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["current"]
        6 GETTABLE                         R3 R4 R0
        7 JUMPIFNOTEQ                      R3 R1 ; [+2]
        9 RETURN                           R0 0
       10 JUMPIFEQKNIL                     R2 ; [+7]
       12 JUMPIFEQKNIL                     R3 ; [+5]
       14 MOVE                             R6 R3
       15 NAMECALL                         R4 R2 K1 ["RemoveTag"]
       17 CALL                             R4 2 0
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K0 ["current"]
       21 SETTABLE                         R1 R4 R0
       22 JUMPIFEQKNIL                     R2 ; [+7]
       24 JUMPIFEQKNIL                     R1 ; [+5]
       26 MOVE                             R6 R1
       27 NAMECALL                         R4 R2 K2 ["AddTag"]
       29 CALL                             R4 2 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R1 R4 K0 ["current"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 JUMPIFNOTEQKNIL                  R5 ; [+2]
       14 LOADB                            R7 0 +1
       15 LOADB                            R7 1
       16 FASTCALL2K                       ASSERT R7 K1 ; [+4]
       18 LOADK                            R8 K1 ["Luau"]
       19 GETIMPORT                        R6 K3 [assert]
       21 CALL                             R6 2 0
       22 MOVE                             R8 R5
       23 NAMECALL                         R6 R0 K4 ["AddTag"]
       25 CALL                             R6 2 0
       26 FORGLOOP                         R1 2 ; [-15]
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 1
       14 MOVE                             R5 R0
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K2 ["useEffect"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R5 0 1
       26 GETTABLEKS                       R6 R0 K3 ["current"]
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R3 2 0
       31 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_2]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
