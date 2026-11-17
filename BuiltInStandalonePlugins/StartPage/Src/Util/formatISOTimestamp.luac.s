PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADK                            R2 K0 [""]
        2 RETURN                           R2 1
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K1 ["Luau: Ensure this is defined"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 GETIMPORT                        R2 K6 [DateTime.fromIsoDate]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 JUMPIF                           R2 ; [+2]
       15 LOADK                            R3 K0 [""]
       16 RETURN                           R3 1
       17 FASTCALL2K                       ASSERT R2 K1 ; [+5]
       19 MOVE                             R4 R2
       20 LOADK                            R5 K1 ["Luau: Ensure this is defined"]
       21 GETIMPORT                        R3 K3 [assert]
       23 CALL                             R3 2 0
       24 LOADK                            R5 K7 ["L LT"]
       25 GETTABLEKS                       R6 R1 K8 ["getLocale"]
       27 CALL                             R6 0 -1
       28 NAMECALL                         R3 R2 K9 ["FormatUniversalTime"]
       30 CALL                             R3 -1 -1
       31 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
