PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenScriptDocumentAsync"]
        4 CALL                             R0 2 2
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K2 [warn]
        9 LOADK                            R3 K3 ["Couldn't open %*: %*"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K4 ["Name"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R3 K5 ["format"]
       16 CALL                             R3 3 1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ScriptEditorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
