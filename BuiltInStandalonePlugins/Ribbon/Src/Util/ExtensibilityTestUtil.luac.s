PROTO_0:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [coroutine.running]
        2 CALL                             R2 0 1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R2
        5 NAMECALL                         R3 R0 K3 ["Once"]
        7 CALL                             R3 2 0
        8 GETIMPORT                        R3 K6 [task.defer]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 0
       12 GETIMPORT                        R3 K8 [coroutine.yield]
       14 CALL                             R3 0 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K1 [plugin]
        3 LOADK                            R5 K2 ["Actions"]
        4 NAMECALL                         R3 R3 K3 ["GetPluginComponent"]
        6 CALL                             R3 2 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K4 ["BindToActivatedAsync"]
       10 CALL                             R3 2 1
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K1 [plugin]
        3 LOADK                            R5 K2 ["Actions"]
        4 NAMECALL                         R3 R3 K3 ["GetPluginComponent"]
        6 CALL                             R3 2 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K4 ["BindToChangedAsync"]
       10 CALL                             R3 2 1
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K1 [plugin]
        3 LOADK                            R5 K2 ["Settings"]
        4 NAMECALL                         R3 R3 K3 ["GetPluginComponent"]
        6 CALL                             R3 2 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K4 ["BindAsync"]
       10 CALL                             R3 2 1
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 LOADK                            R2 K2 ["Actions"]
        4 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 0 0
        9 GETVARARGS                       R2 -1
       10 SETLIST                          R1 R2 -1 [1]
       12 NEWTABLE                         R2 0 0
       14 LENGTH                           R3 R2
       15 LENGTH                           R4 R1
       16 JUMPIFEQ                         R3 R4 ; [+10]
       18 MOVE                             R5 R1
       19 NAMECALL                         R3 R0 K4 ["GetAsync"]
       21 CALL                             R3 2 1
       22 MOVE                             R2 R3
       23 GETIMPORT                        R3 K7 [task.wait]
       25 CALL                             R3 0 0
       26 JUMPBACK                         ; [-13]
       27 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
       28 MOVE                             R4 R2
       29 GETIMPORT                        R3 K10 [table.unpack]
       31 CALL                             R3 1 -1
       32 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 DUPCLOSURE                       R3 K8 [PROTO_1]
       17 DUPCLOSURE                       R4 K9 [PROTO_2]
       18 CAPTURE                          VAL R3
       19 SETTABLEKS                       R4 R2 K10 ["actWithActionActivationContext"]
       21 DUPCLOSURE                       R4 K11 [PROTO_3]
       22 CAPTURE                          VAL R3
       23 SETTABLEKS                       R4 R2 K12 ["actWithActionChangeContext"]
       25 DUPCLOSURE                       R4 K13 [PROTO_4]
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R4 R2 K14 ["actWithSettingContext"]
       29 DUPCLOSURE                       R4 K15 [PROTO_5]
       30 SETTABLEKS                       R4 R2 K16 ["waitForActions"]
       32 RETURN                           R2 1
