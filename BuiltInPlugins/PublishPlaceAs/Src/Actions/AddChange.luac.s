PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["AddChange setting key cannot be nil"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       16 LOADK                            R4 K3 ["AddChange value cannot be nil. You probably meant Cryo.None"]
       17 GETIMPORT                        R2 K2 [assert]
       19 CALL                             R2 2 0
       20 DUPTABLE                         R2 K6 [{"setting", "value"}]
       21 SETTABLEKS                       R0 R2 K4 ["setting"]
       23 SETTABLEKS                       R1 R2 K5 ["value"]
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["Action"]
       17 CALL                             R1 1 1
       18 MOVE                             R2 R1
       19 GETIMPORT                        R3 K1 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Name"]
       23 DUPCLOSURE                       R4 K9 [PROTO_0]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1
