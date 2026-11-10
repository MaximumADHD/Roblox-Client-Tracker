PROTO_0:
        0 NAMECALL                         R4 R0 K0 ["Clone"]
        2 CALL                             R4 1 1
        3 SETTABLEKS                       R3 R4 K1 ["Time"]
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R4
        7 CALL                             R5 1 1
        8 GETUPVAL                         R6 0
        9 MOVE                             R7 R1
       10 CALL                             R6 1 1
       11 GETUPVAL                         R7 0
       12 MOVE                             R8 R2
       13 CALL                             R7 1 1
       14 MOVE                             R8 R7
       15 LOADNIL                          R9
       16 LOADNIL                          R10
       17 FORGPREP                         R8
       18 GETTABLE                         R13 R6 R11
       19 JUMPIFEQKNIL                     R13 ; [+4]
       21 GETTABLEKS                       R14 R13 K2 ["CFrame"]
       23 JUMP                             ; [+2]
       24 GETIMPORT                        R14 K4 [CFrame.identity]
       26 GETTABLEKS                       R15 R12 K2 ["CFrame"]
       28 JUMPIFEQ                         R14 R15 ; [+26]
       30 NAMECALL                         R16 R14 K5 ["Inverse"]
       32 CALL                             R16 1 1
       33 GETTABLEKS                       R17 R12 K2 ["CFrame"]
       35 MUL                              R15 R16 R17
       36 GETTABLE                         R16 R5 R11
       37 JUMPIFEQKNIL                     R16 ; [+7]
       39 GETTABLEKS                       R18 R16 K2 ["CFrame"]
       41 MUL                              R17 R18 R15
       42 SETTABLEKS                       R17 R16 K2 ["CFrame"]
       44 JUMP                             ; [+10]
       45 GETUPVAL                         R17 1
       46 GETTABLEKS                       R17 R17 K6 ["ensurePose"]
       48 MOVE                             R18 R4
       49 MOVE                             R19 R11
       50 MOVE                             R20 R0
       51 CALL                             R17 3 1
       52 SETTABLEKS                       R15 R17 K2 ["CFrame"]
       54 SETTABLE                         R17 R5 R11
       55 FORGLOOP                         R8 2 ; [-38]
       57 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["Posing"]
       15 GETTABLEKS                       R2 R2 K9 ["KeyframePoses"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["poseMap"]
       20 DUPCLOSURE                       R3 K11 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
