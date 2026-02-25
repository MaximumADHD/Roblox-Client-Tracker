PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["buttonClicked"]
        2 LOADK                            R3 K1 [""]
        3 NAMECALL                         R0 R0 K2 ["Invoke"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKS                       R0 K0 ["true"] ; [+2]
        3 LOADB                            R3 0 +1
        4 LOADB                            R3 1
        5 NAMECALL                         R1 R1 K1 ["SetActive"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["DraggerSolveConstraints"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["Disable"]
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["DraggerSolveConstraints"]
       13 NOT                              R1 R2
       14 SETTABLEKS                       R1 R0 K3 ["Enabled"]
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [plugin]
        9 GETIMPORT                        R2 K7 [settings]
       11 LOADK                            R5 K8 ["Transform"]
       12 NAMECALL                         R3 R1 K9 ["CreateToolbar"]
       14 CALL                             R3 2 1
       15 LOADK                            R6 K8 ["Transform"]
       16 LOADK                            R7 K10 ["Precision Dragger"]
       17 LOADK                            R8 K11 [""]
       18 NAMECALL                         R4 R3 K12 ["CreateButton"]
       20 CALL                             R4 4 1
       21 GETTABLEKS                       R5 R4 K13 ["Click"]
       23 DUPCLOSURE                       R7 K14 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 NAMECALL                         R5 R5 K15 ["connect"]
       27 CALL                             R5 2 0
       28 LOADK                            R7 K16 ["setActive"]
       29 DUPCLOSURE                       R8 K17 [PROTO_1]
       30 CAPTURE                          VAL R4
       31 NAMECALL                         R5 R1 K18 ["OnInvoke"]
       33 CALL                             R5 3 0
       34 GETTABLEKS                       R6 R0 K19 ["DraggerSolveConstraints"]
       36 NOT                              R5 R6
       37 SETTABLEKS                       R5 R4 K20 ["Enabled"]
       39 GETTABLEKS                       R5 R0 K21 ["PromptTransformPluginCheckEnable"]
       41 DUPCLOSURE                       R7 K22 [PROTO_2]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 NAMECALL                         R5 R5 K23 ["Connect"]
       47 CALL                             R5 2 0
       48 RETURN                           R0 0
