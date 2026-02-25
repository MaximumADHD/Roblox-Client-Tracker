PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETIMPORT                        R2 K2 [string.gsub]
        4 LOADN                            R5 1
        5 LOADN                            R6 100
        6 NAMECALL                         R3 R0 K3 ["sub"]
        8 CALL                             R3 3 1
        9 LOADK                            R4 K4 ["\n"]
       10 LOADK                            R5 K5 [" "]
       11 CALL                             R2 3 1
       12 LOADK                            R3 K6 ["\r"]
       13 LOADK                            R4 K7 [""]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
