PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Dummy"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFEQKNIL                     R0 ; [+11]
        7 NAMECALL                         R1 R0 K2 ["Destroy"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 LOADK                            R3 K0 ["Dummy"]
       12 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
       14 CALL                             R1 2 1
       15 MOVE                             R0 R1
       16 JUMPBACK                         ; [-12]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K3 ["BuildAnthroRig"]
       20 LOADK                            R2 K4 ["AnthroNormal"]
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 1
       23 GETUPVAL                         R1 1
       24 LOADK                            R2 K0 ["Dummy"]
       25 SETTABLEKS                       R2 R1 K5 ["Name"]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K6 ["HumanoidRootPart"]
       30 LOADB                            R2 1
       31 SETTABLEKS                       R2 R1 K7 ["Anchored"]
       33 GETUPVAL                         R1 3
       34 GETTABLEKS                       R1 R1 K8 ["init"]
       36 GETIMPORT                        R2 K10 [_G]
       38 GETTABLEKS                       R2 R2 K11 ["__ANIMATION_CLIP_EDITOR_TEST_PLUGIN__"]
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dev"]
       19 GETTABLEKS                       R3 R3 K12 ["JestGlobals"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["Src"]
       26 GETTABLEKS                       R4 R4 K14 ["test"]
       28 GETTABLEKS                       R4 R4 K15 ["RigCreator"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R1 K16 ["RhodiumTests"]
       35 GETTABLEKS                       R5 R5 K17 ["TestHelpers"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R5 R2 K18 ["afterAll"]
       40 GETTABLEKS                       R6 R2 K19 ["beforeAll"]
       42 LOADNIL                          R7
       43 MOVE                             R8 R6
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          REF R7
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CALL                             R8 1 0
       50 MOVE                             R8 R5
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          REF R7
       53 CALL                             R8 1 0
       54 LOADNIL                          R8
       55 CLOSEUPVALS                      R7
       56 RETURN                           R8 1
