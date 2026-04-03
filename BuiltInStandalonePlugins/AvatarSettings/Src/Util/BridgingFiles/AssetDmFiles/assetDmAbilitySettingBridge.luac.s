PROTO_0:
        0 DUPTABLE                         R1 K2 [{"ruleInstance", "property"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ruleInstance"]
        4 SETTABLEKS                       R0 R1 K1 ["property"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["avatarAbilityRules"]
        3 CALL                             R1 0 1
        4 FASTCALL1                        ASSERT R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 1 0
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R1
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       14 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       16 LOADK                            R6 K6 ["CharacterControllerMode"]
       17 SETTABLEKS                       R6 R5 K4 ["property"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K7 ["characterControllerModeSetting"]
       22 CALL                             R3 3 0
       23 GETUPVAL                         R3 1
       24 MOVE                             R4 R0
       25 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       26 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       28 LOADK                            R6 K8 ["EnableRunning"]
       29 SETTABLEKS                       R6 R5 K4 ["property"]
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K9 ["defaultAbilitiesEnableRunningSetting"]
       34 CALL                             R3 3 0
       35 GETUPVAL                         R3 1
       36 MOVE                             R4 R0
       37 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       38 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       40 LOADK                            R6 K10 ["EnableJumping"]
       41 SETTABLEKS                       R6 R5 K4 ["property"]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R6 R7 K11 ["defaultAbilitiesEnableJumpingSetting"]
       46 CALL                             R3 3 0
       47 GETUPVAL                         R3 1
       48 MOVE                             R4 R0
       49 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       50 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       52 LOADK                            R6 K12 ["EnableSitting"]
       53 SETTABLEKS                       R6 R5 K4 ["property"]
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R6 R7 K13 ["defaultAbilitiesEnableSittingSetting"]
       58 CALL                             R3 3 0
       59 GETUPVAL                         R3 1
       60 MOVE                             R4 R0
       61 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       62 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       64 LOADK                            R6 K14 ["EnableFallingDown"]
       65 SETTABLEKS                       R6 R5 K4 ["property"]
       67 GETUPVAL                         R7 2
       68 GETTABLEKS                       R6 R7 K15 ["defaultAbilitiesEnableFallingDownSetting"]
       70 CALL                             R3 3 0
       71 GETUPVAL                         R3 1
       72 MOVE                             R4 R0
       73 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       74 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       76 LOADK                            R6 K16 ["EnableGettingUp"]
       77 SETTABLEKS                       R6 R5 K4 ["property"]
       79 GETUPVAL                         R7 2
       80 GETTABLEKS                       R6 R7 K17 ["defaultAbilitiesEnableGettingUpSetting"]
       82 CALL                             R3 3 0
       83 GETUPVAL                         R3 1
       84 MOVE                             R4 R0
       85 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       86 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       88 LOADK                            R6 K18 ["EnableClimbing"]
       89 SETTABLEKS                       R6 R5 K4 ["property"]
       91 GETUPVAL                         R7 2
       92 GETTABLEKS                       R6 R7 K19 ["defaultAbilitiesEnableClimbingSetting"]
       94 CALL                             R3 3 0
       95 GETUPVAL                         R3 1
       96 MOVE                             R4 R0
       97 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       98 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      100 LOADK                            R6 K20 ["EnableSwimming"]
      101 SETTABLEKS                       R6 R5 K4 ["property"]
      103 GETUPVAL                         R7 2
      104 GETTABLEKS                       R6 R7 K21 ["defaultAbilitiesEnableSwimmingSetting"]
      106 CALL                             R3 3 0
      107 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Util"]
       13 GETTABLEKS                       R4 R5 K8 ["BridgingFiles"]
       15 GETTABLEKS                       R3 R4 K9 ["AssetDmFiles"]
       17 GETTABLEKS                       R2 R3 K10 ["assetDmInvokeUtils"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R7 R0 K6 ["Src"]
       24 GETTABLEKS                       R6 R7 K7 ["Util"]
       26 GETTABLEKS                       R5 R6 K8 ["BridgingFiles"]
       28 GETTABLEKS                       R4 R5 K9 ["AssetDmFiles"]
       30 GETTABLEKS                       R3 R4 K11 ["assetDmTypes"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R8 R0 K6 ["Src"]
       37 GETTABLEKS                       R7 R8 K7 ["Util"]
       39 GETTABLEKS                       R6 R7 K8 ["BridgingFiles"]
       41 GETTABLEKS                       R5 R6 K9 ["AssetDmFiles"]
       43 GETTABLEKS                       R4 R5 K12 ["assetDmUtils"]
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R6 R7 K7 ["Util"]
       52 GETTABLEKS                       R5 R6 K13 ["InvokeKeys"]
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R5 R1 K14 ["createInvokes"]
       57 DUPCLOSURE                       R6 K15 [PROTO_1]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 RETURN                           R6 1
