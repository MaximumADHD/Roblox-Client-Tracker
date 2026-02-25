PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["ChangeHumanoidState"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["Invoke"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R2 R3 K2 ["Players"]
        4 GETTABLEKS                       R1 R2 K3 ["LocalPlayer"]
        6 JUMPIFNOTEQKNIL                  R1 ; [+13]
        8 GETIMPORT                        R2 K1 [game]
       10 GETTABLEKS                       R1 R2 K2 ["Players"]
       12 LOADK                            R3 K3 ["LocalPlayer"]
       13 NAMECALL                         R1 R1 K4 ["GetPropertyChangedSignal"]
       15 CALL                             R1 2 1
       16 NAMECALL                         R1 R1 K5 ["Wait"]
       18 CALL                             R1 1 0
       19 JUMPBACK                         ; [-20]
       20 GETIMPORT                        R3 K1 [game]
       22 GETTABLEKS                       R2 R3 K2 ["Players"]
       24 GETTABLEKS                       R1 R2 K3 ["LocalPlayer"]
       26 GETTABLEKS                       R2 R1 K6 ["Character"]
       28 JUMPIF                           R2 ; [+5]
       29 GETTABLEKS                       R2 R1 K7 ["CharacterAdded"]
       31 NAMECALL                         R2 R2 K5 ["Wait"]
       33 CALL                             R2 1 1
       34 LOADK                            R5 K8 ["Humanoid"]
       35 LOADN                            R6 20
       36 NAMECALL                         R3 R2 K9 ["WaitForChild"]
       38 CALL                             R3 3 1
       39 JUMPIFNOT                        R3 ; [+7]
       40 GETTABLEKS                       R4 R3 K10 ["StateChanged"]
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          VAL R0
       44 NAMECALL                         R4 R4 K11 ["Connect"]
       46 CALL                             R4 2 0
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R4 R5 K12 ["createRoot"]
       50 GETIMPORT                        R5 K15 [Instance.new]
       52 LOADK                            R6 K16 ["Frame"]
       53 CALL                             R5 1 -1
       54 CALL                             R4 -1 1
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R7 R8 K17 ["createElement"]
       58 GETUPVAL                         R8 2
       59 DUPTABLE                         R9 K19 [{"Plugin"}]
       60 SETTABLEKS                       R0 R9 K18 ["Plugin"]
       62 CALL                             R7 2 -1
       63 NAMECALL                         R5 R4 K20 ["render"]
       65 CALL                             R5 -1 0
       66 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Components"]
       15 GETTABLEKS                       R2 R3 K7 ["PlayRoot"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R4 K9 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K8 ["Packages"]
       29 GETTABLEKS                       R4 R5 K10 ["ReactRoblox"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K11 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 RETURN                           R4 1
