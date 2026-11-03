PROTO_0:
        0 GETIMPORT                        R4 K2 [Color3.new]
        2 LOADN                            R5 1
        3 LOADN                            R6 1
        4 LOADN                            R7 1
        5 CALL                             R4 3 1
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R0 K3 ["lerp"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R4 K2 [Color3.new]
        2 LOADN                            R5 0
        3 LOADN                            R6 0
        4 LOADN                            R7 0
        5 CALL                             R4 3 1
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R0 K3 ["lerp"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ColorSystem"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K21 [{"Gray_Lightest", "Gray_Lighter", "Gray_Light", "Gray_Mid", "Gray", "Slate", "Carbon", "Blue", "Blue_Dark", "Blue_Light", "Red", "White", "Black", "lighter", "darker"}]
       11 GETTABLEKS                       R3 R0 K10 ["Gray"]
       13 GETTABLEN                        R2 R3 10
       14 SETTABLEKS                       R2 R1 K6 ["Gray_Lightest"]
       16 GETTABLEKS                       R3 R0 K10 ["Gray"]
       18 GETTABLEN                        R2 R3 20
       19 SETTABLEKS                       R2 R1 K7 ["Gray_Lighter"]
       21 GETTABLEKS                       R3 R0 K10 ["Gray"]
       23 GETTABLEN                        R2 R3 50
       24 SETTABLEKS                       R2 R1 K8 ["Gray_Light"]
       26 GETTABLEKS                       R3 R0 K10 ["Gray"]
       28 GETTABLEN                        R2 R3 60
       29 SETTABLEKS                       R2 R1 K9 ["Gray_Mid"]
       31 GETTABLEKS                       R3 R0 K10 ["Gray"]
       33 GETTABLEN                        R2 R3 100
       34 SETTABLEKS                       R2 R1 K10 ["Gray"]
       36 GETTABLEKS                       R3 R0 K10 ["Gray"]
       38 GETTABLEN                        R2 R3 110
       39 SETTABLEKS                       R2 R1 K11 ["Slate"]
       41 GETTABLEKS                       R3 R0 K10 ["Gray"]
       43 GETTABLEN                        R2 R3 120
       44 SETTABLEKS                       R2 R1 K12 ["Carbon"]
       46 GETTABLEKS                       R3 R0 K13 ["Blue"]
       48 GETTABLEN                        R2 R3 50
       49 SETTABLEKS                       R2 R1 K13 ["Blue"]
       51 GETTABLEKS                       R3 R0 K13 ["Blue"]
       53 GETTABLEN                        R2 R3 70
       54 SETTABLEKS                       R2 R1 K14 ["Blue_Dark"]
       56 GETTABLEKS                       R3 R0 K13 ["Blue"]
       58 GETTABLEN                        R2 R3 30
       59 SETTABLEKS                       R2 R1 K15 ["Blue_Light"]
       61 GETTABLEKS                       R3 R0 K16 ["Red"]
       63 GETTABLEN                        R2 R3 80
       64 SETTABLEKS                       R2 R1 K16 ["Red"]
       66 GETTABLEKS                       R3 R0 K17 ["White"]
       68 LOADN                            R4 0
       69 GETTABLE                         R2 R3 R4
       70 SETTABLEKS                       R2 R1 K17 ["White"]
       72 GETTABLEKS                       R3 R0 K18 ["Black"]
       74 LOADN                            R4 0
       75 GETTABLE                         R2 R3 R4
       76 SETTABLEKS                       R2 R1 K18 ["Black"]
       78 DUPCLOSURE                       R2 K22 [PROTO_0]
       79 SETTABLEKS                       R2 R1 K19 ["lighter"]
       81 DUPCLOSURE                       R2 K23 [PROTO_1]
       82 SETTABLEKS                       R2 R1 K20 ["darker"]
       84 RETURN                           R1 1
