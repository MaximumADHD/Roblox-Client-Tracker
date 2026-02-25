PROTO_0:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R3 R0
        2 LOADN                            R4 0
        3 JUMPIFLT                         R4 R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 LOADB                            R3 1
        8 LOADK                            R4 K0 ["Attempted to call Dash.isUppercase with an empty string"]
        9 CALL                             R1 3 0
       10 LOADN                            R3 1
       11 LOADN                            R4 1
       12 NAMECALL                         R1 R0 K1 ["sub"]
       14 CALL                             R1 3 1
       15 NAMECALL                         R3 R1 K2 ["upper"]
       17 CALL                             R3 1 1
       18 JUMPIFEQ                         R1 R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["assertEqual"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
