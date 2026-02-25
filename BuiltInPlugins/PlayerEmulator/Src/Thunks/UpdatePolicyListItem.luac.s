PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Policies"]
        5 GETTABLEKS                       R2 R3 K2 ["allPolicies"]
        7 GETTABLEKS                       R4 R1 K1 ["Policies"]
        9 GETTABLEKS                       R3 R4 K3 ["policySettingStatus"]
       11 GETUPVAL                         R5 0
       12 GETTABLE                         R4 R2 R5
       13 JUMPIFEQKNIL                     R4 ; [+61]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K4 ["List"]
       18 GETTABLEKS                       R4 R5 K5 ["find"]
       20 GETUPVAL                         R6 0
       21 GETTABLE                         R5 R2 R6
       22 GETUPVAL                         R6 2
       23 CALL                             R4 2 1
       24 JUMPIFEQKNIL                     R4 ; [+50]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K4 ["List"]
       29 GETTABLEKS                       R4 R5 K5 ["find"]
       31 GETUPVAL                         R6 0
       32 GETTABLE                         R5 R3 R6
       33 GETUPVAL                         R6 2
       34 CALL                             R4 2 1
       35 JUMPIFNOT                        R4 ; [+12]
       36 GETUPVAL                         R4 0
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K4 ["List"]
       40 GETTABLEKS                       R5 R6 K6 ["removeValue"]
       42 GETUPVAL                         R7 0
       43 GETTABLE                         R6 R3 R7
       44 GETUPVAL                         R7 2
       45 CALL                             R5 2 1
       46 SETTABLE                         R5 R3 R4
       47 JUMP                             ; [+8]
       48 GETUPVAL                         R6 0
       49 GETTABLE                         R5 R3 R6
       50 GETUPVAL                         R6 2
       51 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       53 GETIMPORT                        R4 K9 [table.insert]
       55 CALL                             R4 2 0
       56 GETUPVAL                         R4 3
       57 GETUPVAL                         R7 4
       58 GETTABLEKS                       R6 R7 K10 ["POLICY_SETTING_KEY"]
       60 MOVE                             R7 R3
       61 NAMECALL                         R4 R4 K11 ["SetSetting"]
       63 CALL                             R4 3 0
       64 GETUPVAL                         R4 5
       65 MOVE                             R6 R3
       66 NAMECALL                         R4 R4 K12 ["SetEmulatedPolicyInfo"]
       68 CALL                             R4 2 0
       69 GETUPVAL                         R6 6
       70 MOVE                             R7 R3
       71 CALL                             R6 1 -1
       72 NAMECALL                         R4 R0 K13 ["dispatch"]
       74 CALL                             R4 -1 0
       75 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PlayerEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Cryo"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R6 R1 K11 ["Src"]
       26 GETTABLEKS                       R5 R6 K12 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["Constants"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R7 R1 K11 ["Src"]
       35 GETTABLEKS                       R6 R7 K14 ["Actions"]
       37 GETTABLEKS                       R5 R6 K15 ["UpdatePolicySettingStatus"]
       39 CALL                             R4 1 1
       40 DUPCLOSURE                       R5 K16 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R4
       45 RETURN                           R5 1
