PROTO_0:
        0 GETIMPORT                        R2 K2 [DateTime.fromIsoDate]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIF                           R2 ; [+6]
        5 GETIMPORT                        R3 K4 [warn]
        7 LOADK                            R4 K5 ["Invalid date string provided"]
        8 CALL                             R3 1 0
        9 LOADK                            R3 K6 [""]
       10 RETURN                           R3 1
       11 LOADK                            R5 K7 ["ll"]
       12 MOVE                             R6 R1
       13 NAMECALL                         R3 R2 K8 ["FormatLocalTime"]
       15 CALL                             R3 3 -1
       16 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
