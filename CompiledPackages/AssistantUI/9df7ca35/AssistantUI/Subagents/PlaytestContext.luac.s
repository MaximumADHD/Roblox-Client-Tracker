PROTO_0:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 2000
        2 JUMPIFNOTLE                      R1 R2 ; [+2]
        4 RETURN                           R0 1
        5 LOADN                            R4 1
        6 LOADN                            R5 2000
        7 FASTCALL3                        STRING_SUB R0 R4 R5
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K2 [string.sub]
       12 CALL                             R2 3 1
       13 LOADK                            R3 K3 ["\n[context truncated]"]
       14 CONCAT                           R1 R2 R3
       15 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["## Context from the main assistant\nThis is guidance to help you get started faster. It may be incomplete or wrong -- treat it as hints, not facts, and always confirm outcomes by observing the game.\n\n"]
        1 LENGTH                           R4 R0
        2 LOADN                            R5 2000
        3 JUMPIFNOTLE                      R4 R5 ; [+3]
        5 MOVE                             R3 R0
        6 JUMP                             ; [+10]
        7 LOADN                            R6 1
        8 LOADN                            R7 2000
        9 FASTCALL3                        STRING_SUB R0 R6 R7
       11 MOVE                             R5 R0
       12 GETIMPORT                        R4 K3 [string.sub]
       14 CALL                             R4 3 1
       15 LOADK                            R5 K4 ["\n[context truncated]"]
       16 CONCAT                           R3 R4 R5
       17 CONCAT                           R1 R2 R3
       18 RETURN                           R1 1

PROTO_2:
        0 JUMPIFEQKNIL                     R1 ; [+12]
        2 JUMPIFEQKS                       R1 K0 [""] ; [+10]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["format"]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 1
        9 LOADK                            R4 K2 ["\n\n## Task\n"]
       10 MOVE                             R5 R0
       11 CONCAT                           R2 R3 R5
       12 RETURN                           R2 1
       13 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R0 K2 ["format"]
        7 DUPCLOSURE                       R2 K3 [PROTO_2]
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K4 ["buildUserMessage"]
       11 RETURN                           R0 1
