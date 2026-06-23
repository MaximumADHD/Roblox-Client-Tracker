PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["current"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+5]
        9 MOVE                             R2 R0
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R1 K1 ["current"]
       13 GETTABLEKS                       R4 R1 K1 ["current"]
       15 JUMPIFNOTEQKNIL                  R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       21 LOADK                            R4 K2 ["Ref must be defined after initialization function is called"]
       22 GETIMPORT                        R2 K4 [assert]
       24 CALL                             R2 2 0
       25 RETURN                           R1 1

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
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
