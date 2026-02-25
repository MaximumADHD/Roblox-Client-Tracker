PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%s+"]
        4 LOADK                            R4 K4 ["_"]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 GETIMPORT                        R1 K2 [string.gsub]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 ["[^%w_]"]
       11 LOADK                            R4 K6 [""]
       12 CALL                             R1 3 1
       13 MOVE                             R0 R1
       14 LENGTH                           R1 R0
       15 LOADN                            R2 20
       16 JUMPIFNOTLT                      R2 R1 ; [+11]
       18 LOADN                            R3 1
       19 LOADN                            R4 20
       20 FASTCALL3                        STRING_SUB R0 R3 R4
       22 MOVE                             R2 R0
       23 GETIMPORT                        R1 K8 [string.sub]
       25 CALL                             R1 3 1
       26 MOVE                             R0 R1
       27 JUMP                             ; [0]
       28 LOADK                            R2 K9 ["%*_%*"]
       29 MOVE                             R4 R0
       30 GETUPVAL                         R5 0
       31 NAMECALL                         R5 R5 K10 ["GenerateGUID"]
       33 CALL                             R5 1 1
       34 NAMECALL                         R2 R2 K11 ["format"]
       36 CALL                             R2 3 1
       37 MOVE                             R1 R2
       38 DUPTABLE                         R2 K14 [{"Type", "Filename"}]
       39 LOADK                            R3 K15 ["Custom"]
       40 SETTABLEKS                       R3 R2 K12 ["Type"]
       42 SETTABLEKS                       R1 R2 K13 ["Filename"]
       44 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
