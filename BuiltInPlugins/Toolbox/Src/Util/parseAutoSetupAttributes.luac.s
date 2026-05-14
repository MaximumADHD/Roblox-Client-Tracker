PROTO_0:
        0 LOADK                            R3 K0 ["RBX_AutoSetupped"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKB                    R1 TRUE ; [+6]
        6 LOADK                            R3 K2 ["RBX_ImportMethod"]
        7 LOADN                            R4 2
        8 NAMECALL                         R1 R0 K3 ["SetAttribute"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 DUPCLOSURE                       R1 K3 [PROTO_0]
       10 SETGLOBAL                        R1 K4 ["parseAutoSetupAttributes"]
       12 GETGLOBAL                        R1 K4 ["parseAutoSetupAttributes"]
       14 RETURN                           R1 1
