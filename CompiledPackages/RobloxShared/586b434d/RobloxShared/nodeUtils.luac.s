PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Exited with code: %d"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      1
        1 LOADK                            R2 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R2 ; [+3]
        3 GETIMPORT                        R1 K2 [select]
        5 GETVARARGS                       R3 -1
        6 CALL                             R1 -1 1
        7 LOADN                            R2 0
        8 JUMPIFNOTLT                      R2 R1 ; [+5]
       10 GETIMPORT                        R1 K4 [warn]
       12 LOADK                            R2 K5 ["JSON.stringify doesn't currently support more than 1 argument. All additional arguments will be ignored."]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K6 ["JSONEncode"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_2:
        0 PREPVARARGS                      1
        1 LOADK                            R2 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R2 ; [+3]
        3 GETIMPORT                        R1 K2 [select]
        5 GETVARARGS                       R3 -1
        6 CALL                             R1 -1 1
        7 LOADN                            R2 0
        8 JUMPIFNOTLT                      R2 R1 ; [+5]
       10 GETIMPORT                        R1 K4 [warn]
       12 LOADK                            R2 K5 ["JSON.parse doesn't currently support more than 1 argument. All additional arguments will be ignored."]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K6 ["JSONDecode"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Writeable"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["Writeable"]
       12 DUPTABLE                         R2 K8 [{"stdout", "stderr"}]
       13 GETTABLEKS                       R3 R1 K9 ["new"]
       15 CALL                             R3 0 1
       16 SETTABLEKS                       R3 R2 K6 ["stdout"]
       18 GETTABLEKS                       R3 R1 K9 ["new"]
       20 CALL                             R3 0 1
       21 SETTABLEKS                       R3 R2 K7 ["stderr"]
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 GETIMPORT                        R4 K12 [game]
       26 LOADK                            R6 K13 ["HttpService"]
       27 NAMECALL                         R4 R4 K14 ["GetService"]
       29 CALL                             R4 2 1
       30 DUPTABLE                         R5 K17 [{"stringify", "parse"}]
       31 DUPCLOSURE                       R6 K18 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R6 R5 K15 ["stringify"]
       35 DUPCLOSURE                       R6 K19 [PROTO_2]
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R6 R5 K16 ["parse"]
       39 DUPTABLE                         R6 K23 [{"process", "exit", "JSON"}]
       40 SETTABLEKS                       R2 R6 K20 ["process"]
       42 SETTABLEKS                       R3 R6 K21 ["exit"]
       44 SETTABLEKS                       R5 R6 K22 ["JSON"]
       46 RETURN                           R6 1
