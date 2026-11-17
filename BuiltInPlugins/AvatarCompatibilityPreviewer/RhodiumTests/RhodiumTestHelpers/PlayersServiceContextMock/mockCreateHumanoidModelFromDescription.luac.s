PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Script"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["Animate"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETIMPORT                        R6 K2 [Instance.new]
       13 LOADK                            R7 K6 ["StringValue"]
       14 CALL                             R6 1 1
       15 GETTABLEKS                       R7 R5 K7 ["category"]
       17 SETTABLEKS                       R7 R6 K5 ["Name"]
       19 SETTABLEKS                       R0 R6 K8 ["Parent"]
       21 GETIMPORT                        R7 K2 [Instance.new]
       23 LOADK                            R8 K9 ["Animation"]
       24 CALL                             R7 1 1
       25 GETTABLEKS                       R8 R5 K10 ["animationName"]
       27 SETTABLEKS                       R8 R7 K5 ["Name"]
       29 SETTABLEKS                       R6 R7 K8 ["Parent"]
       31 FORGLOOP                         R1 2 ; [-21]
       33 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Model"]
        3 CALL                             R3 1 1
        4 LOADK                            R4 K4 ["MockHumanoidModel"]
        5 SETTABLEKS                       R4 R3 K5 ["Name"]
        7 GETIMPORT                        R4 K2 [Instance.new]
        9 LOADK                            R5 K6 ["Part"]
       10 CALL                             R4 1 1
       11 LOADK                            R5 K7 ["HumanoidRootPart"]
       12 SETTABLEKS                       R5 R4 K5 ["Name"]
       14 LOADK                            R5 K8 [{2, 2, 1}]
       15 SETTABLEKS                       R5 R4 K9 ["Size"]
       17 SETTABLEKS                       R3 R4 K10 ["Parent"]
       19 SETTABLEKS                       R4 R3 K11 ["PrimaryPart"]
       21 GETUPVAL                         R5 0
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETIMPORT                        R10 K2 [Instance.new]
       27 LOADK                            R11 K6 ["Part"]
       28 CALL                             R10 1 1
       29 SETTABLEKS                       R9 R10 K5 ["Name"]
       31 LOADK                            R11 K12 [{1, 1, 1}]
       32 SETTABLEKS                       R11 R10 K9 ["Size"]
       34 SETTABLEKS                       R3 R10 K10 ["Parent"]
       36 FORGLOOP                         R5 2 ; [-12]
       38 GETIMPORT                        R5 K2 [Instance.new]
       40 LOADK                            R6 K13 ["Humanoid"]
       41 CALL                             R5 1 1
       42 SETTABLEKS                       R1 R5 K14 ["RigType"]
       44 SETTABLEKS                       R3 R5 K10 ["Parent"]
       46 NAMECALL                         R6 R0 K15 ["Clone"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R5 R6 K10 ["Parent"]
       51 GETUPVAL                         R7 1
       52 CALL                             R7 0 1
       53 SETTABLEKS                       R3 R7 K10 ["Parent"]
       55 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["LIMBS"]
       18 NEWTABLE                         R3 0 7
       20 DUPTABLE                         R4 K14 [{["category"] = "walk", ["animationName"] = "WalkAnim"}]
       21 DUPTABLE                         R5 K17 [{["category"] = "run", ["animationName"] = "RunAnim"}]
       22 DUPTABLE                         R6 K20 [{["category"] = "idle", ["animationName"] = "Animation1"}]
       23 DUPTABLE                         R7 K23 [{["category"] = "jump", ["animationName"] = "JumpAnim"}]
       24 DUPTABLE                         R8 K26 [{["category"] = "climb", ["animationName"] = "ClimbAnim"}]
       25 DUPTABLE                         R9 K29 [{["category"] = "fall", ["animationName"] = "FallAnim"}]
       26 DUPTABLE                         R10 K32 [{["category"] = "swim", ["animationName"] = "Swim"}]
       27 SETLIST                          R3 R4 7 [1]
       29 DUPCLOSURE                       R4 K33 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R5 K34 [PROTO_1]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 RETURN                           R5 1
