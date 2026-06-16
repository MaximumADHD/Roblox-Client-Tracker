PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["current"] ; [+6]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K1 ["getValue"]
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1
        7 GETUPVAL                         R3 0
        8 GETTABLE                         R2 R3 R1
        9 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["current"] ; [+6]
        2 GETIMPORT                        R3 K2 [error]
        4 LOADK                            R4 K3 ["Cannot assign to the 'current' property of refs"]
        5 LOADN                            R5 2
        6 CALL                             R3 2 0
        7 GETUPVAL                         R3 0
        8 SETTABLE                         R2 R3 R1
        9 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R1 K0 ["RoactRef(%s)"]
        1 GETUPVAL                         R4 0
        2 NAMECALL                         R4 R4 K1 ["getValue"]
        4 CALL                             R4 1 -1
        5 FASTCALL                         TOSTRING ; [+2]
        6 GETIMPORT                        R3 K3 [tostring]
        8 CALL                             R3 -1 1
        9 NAMECALL                         R1 R1 K4 ["format"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["create"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 NEWTABLE                         R2 0 0
        7 DUPTABLE                         R5 K4 [{"__index", "__newindex", "__tostring"}]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R6 R5 K1 ["__index"]
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R6 R5 K2 ["__newindex"]
       16 NEWCLOSURE                       R6 P2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R6 R5 K3 ["__tostring"]
       20 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       22 MOVE                             R4 R2
       23 GETIMPORT                        R3 K6 [setmetatable]
       25 CALL                             R3 2 0
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Binding"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_3]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
