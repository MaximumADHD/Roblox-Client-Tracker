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
       13 LOADK                            R2 K5 ["PlayerEmulator"]
       14 NAMECALL                         R0 R0 K6 ["getPluginPolicy"]
       16 CALL                             R0 2 1
       17 GETTABLEKS                       R1 R0 K7 ["SocialMediaReferencesAllowed"]
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RunningUnderCLI"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADK                            R0 K1 ["en"]
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K2 ["StudioLocaleId"]
       10 RETURN                           R0 1

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
       18 GETIMPORT                        R2 K9 [game]
       20 LOADK                            R4 K10 ["StudioService"]
       21 NAMECALL                         R2 R2 K11 ["GetService"]
       23 CALL                             R2 2 1
       24 NEWTABLE                         R3 2 0
       26 DUPCLOSURE                       R4 K12 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R4 R3 K13 ["getSocialMediaReferencesAllowed"]
       30 DUPCLOSURE                       R4 K14 [PROTO_1]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R3 K15 ["getStudioLocaleId"]
       35 RETURN                           R3 1
