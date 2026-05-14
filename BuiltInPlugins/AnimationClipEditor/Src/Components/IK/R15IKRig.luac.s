PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildR15Constraints"]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["RootInstance"]
        7 CALL                             R1 1 1
        8 NEWTABLE                         R2 0 0
       10 GETIMPORT                        R3 K4 [pairs]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K5 ["createElement"]
       18 GETTABLEKS                       R9 R7 K6 ["Type"]
       20 GETTABLEKS                       R10 R7 K7 ["Props"]
       22 CALL                             R8 2 1
       23 SETTABLE                         R8 R2 R6
       24 FORGLOOP                         R3 2 ; [-10]
       26 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["TEMPORARY_CONSTRAINTS"]
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 NAMECALL                         R2 R1 K2 ["Destroy"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Portal"]
        6 DUPTABLE                         R3 K3 [{"target"}]
        7 GETUPVAL                         R4 1
        8 SETTABLEKS                       R4 R3 K2 ["target"]
       10 NEWTABLE                         R4 1 0
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K4 ["TEMPORARY_CONSTRAINTS"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["createElement"]
       18 LOADK                            R7 K5 ["Folder"]
       19 NEWTABLE                         R8 0 0
       21 NAMECALL                         R9 R0 K6 ["buildConstraints"]
       23 CALL                             R9 1 -1
       24 CALL                             R6 -1 1
       25 SETTABLE                         R6 R4 R5
       26 CALL                             R1 3 -1
       27 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["RigIK"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K13 [game]
       34 LOADK                            R6 K14 ["Workspace"]
       35 NAMECALL                         R4 R4 K15 ["GetService"]
       37 CALL                             R4 2 1
       38 GETTABLEKS                       R5 R1 K16 ["PureComponent"]
       40 LOADK                            R7 K17 ["R15IKRig"]
       41 NAMECALL                         R5 R5 K18 ["extend"]
       43 CALL                             R5 2 1
       44 DUPCLOSURE                       R6 K19 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R6 R5 K20 ["buildConstraints"]
       49 DUPCLOSURE                       R6 K21 [PROTO_1]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R6 R5 K22 ["init"]
       54 DUPCLOSURE                       R6 K23 [PROTO_2]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R6 R5 K24 ["render"]
       60 RETURN                           R5 1
