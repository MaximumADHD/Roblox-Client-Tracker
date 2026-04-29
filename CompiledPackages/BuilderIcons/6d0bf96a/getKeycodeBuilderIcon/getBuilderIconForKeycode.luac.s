PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.ButtonStart]
        3 NAMECALL                         R0 R0 K4 ["GetImageForKeyCode"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 MOVE                             R8 R4
       11 NAMECALL                         R6 R0 K5 ["find"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+1]
       15 RETURN                           R5 1
       16 FORGLOOP                         R1 2 ; [-7]
       18 GETUPVAL                         R2 0
       19 GETIMPORT                        R4 K7 [Enum.KeyCode.ButtonA]
       21 NAMECALL                         R2 R2 K8 ["GetStringForKeyCode"]
       23 CALL                             R2 2 1
       24 JUMPIFNOTEQKS                    R2 K9 ["ButtonCross"] ; [+5]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R1 R2 K10 ["PS5"]
       29 RETURN                           R1 1
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R1 R2 K11 ["Xbox"]
       33 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["Name"]
        4 GETUPVAL                         R5 1
        5 GETTABLE                         R4 R5 R1
        6 GETTABLE                         R3 R4 R2
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R3 1
        9 GETUPVAL                         R7 1
       10 GETUPVAL                         R9 2
       11 GETTABLEKS                       R8 R9 K1 ["Default"]
       13 GETTABLE                         R6 R7 R8
       14 GETTABLE                         R5 R6 R2
       15 LOADK                            R7 K2 ["%* has no associated BuilderIcon"]
       16 MOVE                             R9 R2
       17 NAMECALL                         R7 R7 K3 ["format"]
       19 CALL                             R7 2 1
       20 MOVE                             R6 R7
       21 FASTCALL2                        ASSERT R5 R6 ; [+3]
       23 GETIMPORT                        R4 K5 [assert]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K1 ["Default"]
       30 GETTABLE                         R5 R6 R7
       31 GETTABLE                         R4 R5 R2
       32 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["Services"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R0 R1 K6 ["UserInputService"]
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R4 K3 [script]
       18 GETTABLEKS                       R3 R4 K4 ["Parent"]
       20 GETTABLEKS                       R2 R3 K7 ["KeycodeMappings"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R5 K3 [script]
       27 GETTABLEKS                       R4 R5 K4 ["Parent"]
       29 GETTABLEKS                       R3 R4 K8 ["Platform"]
       31 CALL                             R2 1 1
       32 NEWTABLE                         R3 4 0
       34 GETTABLEKS                       R4 R2 K9 ["PS4"]
       36 SETTABLEKS                       R4 R3 K10 ["ps4"]
       38 GETTABLEKS                       R4 R2 K11 ["PS5"]
       40 SETTABLEKS                       R4 R3 K12 ["ps5"]
       42 GETTABLEKS                       R4 R2 K13 ["Xbox"]
       44 SETTABLEKS                       R4 R3 K14 ["xbox"]
       46 DUPCLOSURE                       R4 K15 [PROTO_0]
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 DUPCLOSURE                       R5 K16 [PROTO_1]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 RETURN                           R5 1
