PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 LOADK                            R3 K2 ["Studio"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstChild"]
       10 CALL                             R1 2 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+3]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLE                         R2 R1 R3
       17 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 2
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R4
        7 RETURN                           R4 1
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 DUPTABLE                         R3 K1 [{"__index"}]
        4 DUPCLOSURE                       R4 K2 [PROTO_1]
        5 SETTABLEKS                       R4 R3 K0 ["__index"]
        7 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K4 [setmetatable]
       12 CALL                             R1 2 0
       13 RETURN                           R0 1
