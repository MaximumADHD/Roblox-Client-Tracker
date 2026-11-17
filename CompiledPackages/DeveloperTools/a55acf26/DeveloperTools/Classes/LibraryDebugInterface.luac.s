PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getCoreGui"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["BasePlayerGui"]
        5 NAMECALL                         R1 R0 K2 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+1]
        9 SETUPVAL                         R0 1
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ReplicatedStorage"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R2
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          REF R2
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R3 K1 [pcall]
        7 CALL                             R3 1 0
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          REF R2
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R3 K1 [pcall]
       13 CALL                             R3 1 0
       14 JUMPIF                           R2 ; [+5]
       15 GETIMPORT                        R3 K4 [Instance.new]
       17 LOADK                            R4 K5 ["Folder"]
       18 CALL                             R3 1 1
       19 MOVE                             R2 R3
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K3 ["new"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K3 ["new"]
       28 LOADK                            R5 K6 ["Library"]
       29 MOVE                             R6 R0
       30 NEWTABLE                         R7 0 1
       32 MOVE                             R8 R3
       33 SETLIST                          R7 R8 1 [1]
       35 CALL                             R4 3 1
       36 MOVE                             R7 R1
       37 JUMPIF                           R7 ; [+9]
       38 DUPTABLE                         R7 K8 [{"rootInstance"}]
       39 GETIMPORT                        R8 K10 [game]
       41 LOADK                            R10 K11 ["ReplicatedStorage"]
       42 NAMECALL                         R8 R8 K12 ["GetService"]
       44 CALL                             R8 2 1
       45 SETTABLEKS                       R8 R7 K7 ["rootInstance"]
       47 NAMECALL                         R5 R4 K13 ["setGuiOptions"]
       49 CALL                             R5 2 0
       50 CLOSEUPVALS                      R2
       51 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Classes"]
       11 GETTABLEKS                       R2 R2 K6 ["BindableEventBridge"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Classes"]
       18 GETTABLEKS                       R3 R3 K7 ["DebugInterface"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Services"]
       25 CALL                             R3 1 1
       26 LOADK                            R6 K9 ["LibraryDebuggerInterface"]
       27 DUPCLOSURE                       R7 K10 [PROTO_2]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 NAMECALL                         R4 R2 K11 ["extend"]
       33 CALL                             R4 3 1
       34 RETURN                           R4 1
