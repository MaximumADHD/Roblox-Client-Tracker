PROTO_0:
        0 LOADK                            R3 K0 ["%*\0%*\0%*"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 4 1
        7 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R5 K0 ["%*\0%*\0%*"]
        1 MOVE                             R7 R1
        2 MOVE                             R8 R2
        3 MOVE                             R9 R3
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 4 1
        7 GETTABLE                         R4 R0 R5
        8 RETURN                           R4 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R4 R1 K3 ["nodeId"]
        6 GETTABLEKS                       R5 R1 K4 ["propertyName"]
        8 GETTABLEKS                       R6 R1 K5 ["inputPinName"]
       10 LOADK                            R7 K6 ["%*\0%*\0%*"]
       11 MOVE                             R9 R4
       12 MOVE                             R10 R5
       13 MOVE                             R11 R6
       14 NAMECALL                         R7 R7 K7 ["format"]
       16 CALL                             R7 4 1
       17 MOVE                             R3 R7
       18 GETIMPORT                        R4 K9 [table.freeze]
       20 MOVE                             R5 R1
       21 CALL                             R4 1 1
       22 SETTABLE                         R4 R2 R3
       23 GETIMPORT                        R3 K9 [table.freeze]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 -1
       27 RETURN                           R3 -1

PROTO_3:
        0 LOADK                            R4 K0 ["%*\0%*\0%*"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 4 1
        7 GETTABLE                         R5 R0 R4
        8 JUMPIFNOTEQKNIL                  R5 ; [+4]
       10 LOADB                            R5 0
       11 MOVE                             R6 R0
       12 RETURN                           R5 2
       13 GETIMPORT                        R5 K4 [table.clone]
       15 MOVE                             R6 R0
       16 CALL                             R5 1 1
       17 LOADNIL                          R6
       18 SETTABLE                         R6 R5 R4
       19 LOADB                            R6 1
       20 GETIMPORT                        R7 K6 [table.freeze]
       22 MOVE                             R8 R5
       23 CALL                             R7 1 -1
       24 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K13 [{"nodeOverrides", "setNodeOverride", "removeNodeOverride", "removeParameterOverrides"}]
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R3 K9 ["nodeOverrides"]
       26 GETTABLEKS                       R4 R2 K14 ["createUnimplemented"]
       28 LOADK                            R5 K10 ["setNodeOverride"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K10 ["setNodeOverride"]
       32 GETTABLEKS                       R4 R2 K14 ["createUnimplemented"]
       34 LOADK                            R5 K11 ["removeNodeOverride"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K11 ["removeNodeOverride"]
       38 GETTABLEKS                       R4 R2 K14 ["createUnimplemented"]
       40 LOADK                            R5 K12 ["removeParameterOverrides"]
       41 CALL                             R4 1 1
       42 SETTABLEKS                       R4 R3 K12 ["removeParameterOverrides"]
       44 GETTABLEKS                       R4 R1 K15 ["createContext"]
       46 MOVE                             R5 R3
       47 CALL                             R4 1 1
       48 DUPCLOSURE                       R5 K16 [PROTO_0]
       49 DUPCLOSURE                       R6 K17 [PROTO_1]
       50 DUPCLOSURE                       R7 K18 [PROTO_2]
       51 DUPCLOSURE                       R8 K19 [PROTO_3]
       52 DUPTABLE                         R9 K23 [{"Context", "makeOverrideKey", "getNodeOverride", "setNodeOverride", "removeNodeOverride"}]
       53 SETTABLEKS                       R4 R9 K20 ["Context"]
       55 SETTABLEKS                       R5 R9 K21 ["makeOverrideKey"]
       57 SETTABLEKS                       R6 R9 K22 ["getNodeOverride"]
       59 SETTABLEKS                       R7 R9 K10 ["setNodeOverride"]
       61 SETTABLEKS                       R8 R9 K11 ["removeNodeOverride"]
       63 RETURN                           R9 1
