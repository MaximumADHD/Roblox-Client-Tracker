PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R1 K3 ["Title"]
        9 FASTCALL1                        TYPEOF R3 ; [+3]
       10 MOVE                             R7 R3
       11 GETIMPORT                        R6 K5 [typeof]
       13 CALL                             R6 1 1
       14 JUMPIFEQKS                       R6 K6 ["string"] ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 GETIMPORT                        R6 K8 [string.format]
       20 LOADK                            R7 K9 ["PluginToolbar requires Title to be of type string not %s"]
       21 FASTCALL1                        TYPEOF R3 ; [+3]
       22 MOVE                             R9 R3
       23 GETIMPORT                        R8 K5 [typeof]
       25 CALL                             R8 1 1
       26 CALL                             R6 2 -1
       27 FASTCALL                         ASSERT ; [+2]
       28 GETIMPORT                        R4 K11 [assert]
       30 CALL                             R4 -1 0
       31 MOVE                             R6 R3
       32 NAMECALL                         R4 R2 K12 ["CreateToolbar"]
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R0 K13 ["toolbar"]
       37 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolbar"]
        2 JUMPIF                           R1 ; [+3]
        3 NAMECALL                         R1 R0 K1 ["createToolbar"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K2 ["props"]
        8 GETTABLEKS                       R2 R1 K3 ["RenderButtons"]
       10 MOVE                             R3 R2
       11 GETTABLEKS                       R4 R0 K0 ["toolbar"]
       13 CALL                             R3 1 1
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["createFragment"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 -1
       20 RETURN                           R4 -1
       21 LOADNIL                          R4
       22 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["toolbar"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["toolbar"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R4 R4 K11 ["Typecheck"]
       32 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       34 LOADK                            R7 K13 ["PluginToolbar"]
       35 NAMECALL                         R5 R5 K14 ["extend"]
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R6 R4 K15 ["wrap"]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R8 K1 [script]
       43 CALL                             R6 2 0
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 SETTABLEKS                       R6 R5 K17 ["createToolbar"]
       47 DUPCLOSURE                       R6 K18 [PROTO_1]
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R6 R5 K19 ["render"]
       51 DUPCLOSURE                       R6 K20 [PROTO_2]
       52 SETTABLEKS                       R6 R5 K21 ["willUnmount"]
       54 MOVE                             R6 R3
       55 DUPTABLE                         R7 K23 [{"Plugin"}]
       56 GETTABLEKS                       R8 R2 K22 ["Plugin"]
       58 SETTABLEKS                       R8 R7 K22 ["Plugin"]
       60 CALL                             R6 1 1
       61 MOVE                             R7 R5
       62 CALL                             R6 1 1
       63 MOVE                             R5 R6
       64 RETURN                           R5 1
