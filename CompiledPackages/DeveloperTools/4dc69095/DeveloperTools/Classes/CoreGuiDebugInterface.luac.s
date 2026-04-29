PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{"rootInstance", "pickerParent", "rootPath"}]
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K0 ["rootInstance"]
        6 LOADN                            R6 10
        7 NAMECALL                         R3 R3 K4 ["WaitForChild"]
        9 CALL                             R3 3 1
       10 SETTABLEKS                       R3 R2 K0 ["rootInstance"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K1 ["pickerParent"]
       15 JUMPIFNOT                        R4 ; [+9]
       16 GETUPVAL                         R3 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K1 ["pickerParent"]
       20 LOADN                            R6 10
       21 NAMECALL                         R3 R3 K4 ["WaitForChild"]
       23 CALL                             R3 3 1
       24 JUMPIF                           R3 ; [+1]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R2 K1 ["pickerParent"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R3 R4 K2 ["rootPath"]
       31 JUMPIF                           R3 ; [+7]
       32 NEWTABLE                         R3 0 1
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R4 R5 K0 ["rootInstance"]
       37 SETLIST                          R3 R4 1 [1]
       39 SETTABLEKS                       R3 R2 K2 ["rootPath"]
       41 NAMECALL                         R0 R0 K5 ["setGuiOptions"]
       43 CALL                             R0 2 0
       44 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K0 ["new"]
        8 LOADK                            R4 K1 ["CoreGui"]
        9 MOVE                             R5 R0
       10 NEWTABLE                         R6 0 1
       12 MOVE                             R7 R2
       13 SETLIST                          R6 R7 1 [1]
       15 CALL                             R3 3 1
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETIMPORT                        R4 K3 [spawn]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R1
       23 CALL                             R4 1 0
       24 RETURN                           R3 1
       25 DUPTABLE                         R6 K7 [{"rootInstance", "pickerParent", "rootPath"}]
       26 GETUPVAL                         R7 1
       27 SETTABLEKS                       R7 R6 K4 ["rootInstance"]
       29 GETUPVAL                         R7 1
       30 SETTABLEKS                       R7 R6 K5 ["pickerParent"]
       32 NEWTABLE                         R7 0 0
       34 SETTABLEKS                       R7 R6 K6 ["rootPath"]
       36 NAMECALL                         R4 R3 K8 ["setGuiOptions"]
       38 CALL                             R4 2 0
       39 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Classes"]
       11 GETTABLEKS                       R2 R3 K6 ["BindableEventBridge"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Classes"]
       18 GETTABLEKS                       R3 R4 K7 ["DebugInterface"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K9 [game]
       23 LOADK                            R5 K10 ["CoreGui"]
       24 NAMECALL                         R3 R3 K11 ["GetService"]
       26 CALL                             R3 2 1
       27 LOADK                            R6 K12 ["CoreGuiDebugInterface"]
       28 DUPCLOSURE                       R7 K13 [PROTO_1]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 NAMECALL                         R4 R2 K14 ["extend"]
       34 CALL                             R4 3 1
       35 RETURN                           R4 1
