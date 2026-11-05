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
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K10 ["PS5"]
       29 RETURN                           R1 1
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K11 ["Xbox"]
       33 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Services"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R0 R0 K6 ["UserInputService"]
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K7 ["Platform"]
       22 CALL                             R1 1 1
       23 NEWTABLE                         R2 4 0
       25 GETTABLEKS                       R3 R1 K8 ["PS4"]
       27 SETTABLEKS                       R3 R2 K9 ["ps4"]
       29 GETTABLEKS                       R3 R1 K10 ["PS5"]
       31 SETTABLEKS                       R3 R2 K11 ["ps5"]
       33 GETTABLEKS                       R3 R1 K12 ["Xbox"]
       35 SETTABLEKS                       R3 R2 K13 ["xbox"]
       37 DUPCLOSURE                       R3 K14 [PROTO_0]
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 RETURN                           R3 1
