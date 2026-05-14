PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["plugin"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R0 K2 ["bridge"]
        9 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["bridge"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["CallMethodAsync"]
        6 CALL                             R3 3 1
        7 FASTCALL1                        TYPE R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K3 [type]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+13]
       14 GETTABLEKS                       R4 R3 K5 ["Name"]
       16 JUMPIF                           R4 ; [+6]
       17 GETTABLEKS                       R4 R3 K6 ["name"]
       19 JUMPIF                           R4 ; [+3]
       20 GETTABLEKS                       R4 R3 K7 ["Id"]
       22 JUMPIFNOT                        R4 ; [+3]
       23 GETUPVAL                         R4 0
       24 MOVE                             R5 R3
       25 CALL                             R4 1 0
       26 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["RpcCallClient"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["injectStableIds"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 4 0
       27 LOADNIL                          R4
       28 SETTABLEKS                       R4 R3 K10 ["bridge"]
       30 DUPCLOSURE                       R4 K11 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R4 R3 K12 ["connect"]
       34 DUPCLOSURE                       R4 K13 [PROTO_1]
       35 SETTABLEKS                       R4 R3 K14 ["disconnect"]
       37 DUPCLOSURE                       R4 K15 [PROTO_2]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K16 ["CallAssetPluginAsync"]
       41 RETURN                           R3 1
