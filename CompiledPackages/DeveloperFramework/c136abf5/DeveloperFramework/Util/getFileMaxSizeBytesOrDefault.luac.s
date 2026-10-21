PROTO_0:
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 LOADK                            R3 K2 ["FileMaxSizeBytes"]
        4 NAMECALL                         R1 R1 K3 ["GetFVariable"]
        6 CALL                             R1 2 -1
        7 FASTCALL                         TONUMBER ; [+2]
        8 GETIMPORT                        R0 K5 [tonumber]
       10 CALL                             R0 -1 1
       11 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+1]
        5 RETURN                           R1 1
        6 LOADN                            R2 1000
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 SETGLOBAL                        R0 K1 ["getFileMaxSizeBytesOrDefault"]
        4 GETGLOBAL                        R0 K1 ["getFileMaxSizeBytesOrDefault"]
        6 RETURN                           R0 1
