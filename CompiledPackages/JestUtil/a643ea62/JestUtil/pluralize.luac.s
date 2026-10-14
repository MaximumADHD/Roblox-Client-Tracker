PROTO_0:
        0 LOADK                            R2 K0 ["%s %s%s"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 MOVE                             R5 R0
        7 JUMPIFNOTEQKN                    R1 K3 [1] ; [+3]
        9 LOADK                            R6 K4 [""]
       10 JUMP                             ; [+1]
       11 LOADK                            R6 K5 ["s"]
       12 NAMECALL                         R2 R2 K6 ["format"]
       14 CALL                             R2 4 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["default"]
        6 RETURN                           R0 1
