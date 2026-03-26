PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R0 R3 K0 ["R15_STANDARD_JOINT_NAMES"]
       11 LOADNIL                          R1
       12 LOADNIL                          R2
       13 FORGPREP                         R0
       14 GETUPVAL                         R5 0
       15 LOADB                            R6 1
       16 SETTABLE                         R6 R5 R3
       17 FORGLOOP                         R0 2 ; [-4]
       19 GETIMPORT                        R0 K3 [Instance.new]
       21 LOADK                            R1 K4 ["HumanoidRigDescription"]
       22 CALL                             R0 1 1
       23 NAMECALL                         R0 R0 K5 ["GetJointLabels"]
       25 CALL                             R0 1 3
       26 FORGPREP                         R0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R6 R4 K6 ["Name"]
       30 LOADB                            R7 1
       31 SETTABLE                         R7 R5 R6
       32 FORGLOOP                         R0 2 ; [-6]
       34 GETIMPORT                        R0 K3 [Instance.new]
       36 LOADK                            R1 K7 ["DigitsRigDescription"]
       37 CALL                             R0 1 1
       38 NAMECALL                         R0 R0 K5 ["GetJointLabels"]
       40 CALL                             R0 1 3
       41 FORGPREP                         R0
       42 GETUPVAL                         R5 0
       43 LOADK                            R7 K8 ["LeftHand%*"]
       44 GETTABLEKS                       R9 R4 K6 ["Name"]
       46 NAMECALL                         R7 R7 K9 ["format"]
       48 CALL                             R7 2 1
       49 MOVE                             R6 R7
       50 LOADB                            R7 1
       51 SETTABLE                         R7 R5 R6
       52 GETUPVAL                         R5 0
       53 LOADK                            R7 K10 ["RightHand%*"]
       54 GETTABLEKS                       R9 R4 K6 ["Name"]
       56 NAMECALL                         R7 R7 K9 ["format"]
       58 CALL                             R7 2 1
       59 MOVE                             R6 R7
       60 LOADB                            R7 1
       61 SETTABLE                         R7 R5 R6
       62 FORGLOOP                         R0 2 ; [-21]
       64 GETUPVAL                         R0 0
       65 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 1 0
       14 LOADNIL                          R3
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          REF R3
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R4 R2 K6 ["getJointNameWhitelist"]
       20 CLOSEUPVALS                      R3
       21 RETURN                           R2 1
