PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["PluginPolicyService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADK                            R2 K4 ["Assistant"]
        7 NAMECALL                         R0 R0 K5 ["getPluginPolicy"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADB                            R0 1
        3 RETURN                           R0 1
        4 DUPCLOSURE                       R1 K0 [PROTO_0]
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R0 K2 [pcall]
        8 CALL                             R0 1 2
        9 JUMPIFNOT                        R0 ; [+7]
       10 FASTCALL1                        TYPE R1 ; [+3]
       11 MOVE                             R3 R1
       12 GETIMPORT                        R2 K4 [type]
       14 CALL                             R2 1 1
       15 JUMPIFEQKS                       R2 K5 ["table"] ; [+3]
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 GETTABLEKS                       R3 R1 K6 ["Enabled"]
       21 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["SafeFlags"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createGetFFlag"]
       16 LOADK                            R3 K9 ["AssistantEnablePolicyChecker"]
       17 CALL                             R2 1 1
       18 CALL                             R2 0 1
       19 DUPCLOSURE                       R3 K10 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
