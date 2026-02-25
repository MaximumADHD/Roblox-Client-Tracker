PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"Temporary"}]
        3 LOADB                            R4 1
        4 SETTABLEKS                       R4 R3 K0 ["Temporary"]
        6 NAMECALL                         R0 R0 K2 ["OpenScriptDocumentAsync"]
        8 CALL                             R0 3 2
        9 JUMPIFNOT                        R0 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R2 K4 [warn]
       13 LOADK                            R4 K5 ["Couldn't open %*: %*"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K6 ["Name"]
       17 MOVE                             R7 R1
       18 NAMECALL                         R4 R4 K7 ["format"]
       20 CALL                             R4 3 1
       21 MOVE                             R3 R4
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K2 [settings]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R2 R3 K3 ["Studio"]
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
