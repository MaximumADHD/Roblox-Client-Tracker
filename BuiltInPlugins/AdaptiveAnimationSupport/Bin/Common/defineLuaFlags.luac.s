PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["HumanoidRigDescriptionEnabled"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableAdaptiveAnimationSupport"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["safeGetFastFlag"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["EnableAdaptiveAnimationSupport"]
       13 LOADB                            R4 0
       14 NAMECALL                         R1 R1 K9 ["DefineFastFlag"]
       16 CALL                             R1 3 0
       17 DUPTABLE                         R1 K12 [{"getDFFlagHumanoidRigDescriptionEnabled", "getFFlagEnableAdaptiveAnimationSupport"}]
       18 DUPCLOSURE                       R2 K13 [PROTO_0]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K10 ["getDFFlagHumanoidRigDescriptionEnabled"]
       22 DUPCLOSURE                       R2 K14 [PROTO_1]
       23 SETTABLEKS                       R2 R1 K11 ["getFFlagEnableAdaptiveAnimationSupport"]
       25 RETURN                           R1 1
