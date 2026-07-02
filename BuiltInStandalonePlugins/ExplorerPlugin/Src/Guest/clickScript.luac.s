PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{[1] = True}]
        3 NAMECALL                         R0 R0 K3 ["OpenScriptDocumentAsync"]
        5 CALL                             R0 3 2
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 0
        8 GETIMPORT                        R2 K5 [warn]
       10 LOADK                            R4 K6 ["Couldn't open %*: %*"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K7 ["Name"]
       14 MOVE                             R7 R1
       15 NAMECALL                         R4 R4 K8 ["format"]
       17 CALL                             R4 3 1
       18 MOVE                             R3 R4
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [settings]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R2 R2 K3 ["Studio"]
        5 GETTABLEKS                       R1 R2 K0 ["Enable Temporary Tabs In Explorer"]
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R1 K6 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ScriptEditorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
