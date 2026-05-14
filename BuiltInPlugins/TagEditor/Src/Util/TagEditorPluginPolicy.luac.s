PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RunningUnderCLI"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADB                            R0 1
        6 RETURN                           R0 1
        7 GETIMPORT                        R0 K2 [game]
        9 LOADK                            R2 K3 ["PluginPolicyService"]
       10 NAMECALL                         R0 R0 K4 ["GetService"]
       12 CALL                             R0 2 1
       13 LOADK                            R2 K5 ["TagEditor"]
       14 NAMECALL                         R0 R0 K6 ["getPluginPolicy"]
       16 CALL                             R0 2 1
       17 GETTABLEKS                       R1 R0 K7 ["AreCustomIconsAndEmojiAllowed"]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 1 0
       20 DUPCLOSURE                       R3 K8 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K9 ["getAreCustomIconsAndEmojiAllowed"]
       24 RETURN                           R2 1
