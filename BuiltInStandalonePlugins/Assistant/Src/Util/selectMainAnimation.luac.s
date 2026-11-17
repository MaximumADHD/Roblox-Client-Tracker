PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["Name"]
        6 JUMPIFNOTEQKS                    R6 K1 ["Main"] ; [+2]
        8 RETURN                           R5 1
        9 FORGLOOP                         R1 2 ; [-6]
       11 MOVE                             R1 R0
       12 LOADNIL                          R2
       13 LOADNIL                          R3
       14 FORGPREP                         R1
       15 GETTABLEKS                       R6 R5 K0 ["Name"]
       17 LOADK                            R8 K2 ["_Main$"]
       18 NAMECALL                         R6 R6 K3 ["match"]
       20 CALL                             R6 2 1
       21 JUMPIFEQKNIL                     R6 ; [+2]
       23 RETURN                           R5 1
       24 FORGLOOP                         R1 2 ; [-10]
       26 GETTABLEN                        R3 R0 1
       27 JUMPIFNOTEQKNIL                  R3 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       33 LOADK                            R3 K4 ["Expected at least one imported animation take"]
       34 GETIMPORT                        R1 K6 [assert]
       36 CALL                             R1 2 0
       37 GETTABLEN                        R1 R0 1
       38 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
