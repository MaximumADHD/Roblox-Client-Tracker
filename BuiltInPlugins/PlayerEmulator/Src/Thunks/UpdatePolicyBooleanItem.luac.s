PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Policies"]
        5 GETTABLEKS                       R2 R2 K2 ["allPolicies"]
        7 GETTABLEKS                       R3 R1 K1 ["Policies"]
        9 GETTABLEKS                       R3 R3 K3 ["policySettingStatus"]
       11 GETUPVAL                         R5 0
       12 GETTABLE                         R4 R2 R5
       13 JUMPIFEQKNIL                     R4 ; [+23]
       15 GETUPVAL                         R4 0
       16 GETUPVAL                         R5 1
       17 SETTABLE                         R5 R3 R4
       18 GETUPVAL                         R4 2
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K4 ["POLICY_SETTING_KEY"]
       22 MOVE                             R7 R3
       23 NAMECALL                         R4 R4 K5 ["SetSetting"]
       25 CALL                             R4 3 0
       26 GETUPVAL                         R4 4
       27 MOVE                             R6 R3
       28 NAMECALL                         R4 R4 K6 ["SetEmulatedPolicyInfo"]
       30 CALL                             R4 2 0
       31 GETUPVAL                         R6 5
       32 MOVE                             R7 R3
       33 CALL                             R6 1 -1
       34 NAMECALL                         R4 R0 K7 ["dispatch"]
       36 CALL                             R4 -1 0
       37 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PlayerEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Util"]
       21 GETTABLEKS                       R3 R3 K11 ["Constants"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R1 K9 ["Src"]
       28 GETTABLEKS                       R4 R4 K12 ["Actions"]
       30 GETTABLEKS                       R4 R4 K13 ["UpdatePolicySettingStatus"]
       32 CALL                             R3 1 1
       33 DUPCLOSURE                       R4 K14 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R3
       37 RETURN                           R4 1
