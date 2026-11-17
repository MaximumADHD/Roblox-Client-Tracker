PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["Motor6D"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+14]
       11 GETTABLEKS                       R7 R6 K3 ["Part0"]
       13 GETTABLEKS                       R8 R6 K4 ["Part1"]
       15 JUMPIFEQKNIL                     R7 ; [+60]
       17 JUMPIFEQKNIL                     R8 ; [+58]
       19 GETTABLEKS                       R9 R8 K5 ["Name"]
       21 GETTABLEKS                       R10 R7 K5 ["Name"]
       23 SETTABLE                         R10 R1 R9
       24 JUMP                             ; [+51]
       25 LOADK                            R9 K6 ["AnimationConstraint"]
       26 NAMECALL                         R7 R6 K2 ["IsA"]
       28 CALL                             R7 2 1
       29 JUMPIFNOT                        R7 ; [+26]
       30 GETTABLEKS                       R7 R6 K7 ["Attachment0"]
       32 GETTABLEKS                       R8 R6 K8 ["Attachment1"]
       34 JUMPIFEQKNIL                     R7 ; [+41]
       36 GETTABLEKS                       R9 R7 K9 ["Parent"]
       38 JUMPIFEQKNIL                     R9 ; [+37]
       40 JUMPIFEQKNIL                     R8 ; [+35]
       42 GETTABLEKS                       R9 R8 K9 ["Parent"]
       44 JUMPIFEQKNIL                     R9 ; [+31]
       46 GETTABLEKS                       R9 R8 K9 ["Parent"]
       48 GETTABLEKS                       R9 R9 K5 ["Name"]
       50 GETTABLEKS                       R10 R7 K9 ["Parent"]
       52 GETTABLEKS                       R10 R10 K5 ["Name"]
       54 SETTABLE                         R10 R1 R9
       55 JUMP                             ; [+20]
       56 LOADK                            R9 K10 ["Bone"]
       57 NAMECALL                         R7 R6 K2 ["IsA"]
       59 CALL                             R7 2 1
       60 JUMPIFNOT                        R7 ; [+15]
       61 GETTABLEKS                       R7 R6 K9 ["Parent"]
       63 JUMPIFEQKNIL                     R7 ; [+12]
       65 GETTABLEKS                       R8 R7 K5 ["Name"]
       67 GETTABLEKS                       R9 R6 K5 ["Name"]
       69 JUMPIFEQ                         R8 R9 ; [+6]
       71 GETTABLEKS                       R8 R6 K5 ["Name"]
       73 GETTABLEKS                       R9 R7 K5 ["Name"]
       75 SETTABLE                         R9 R1 R8
       76 FORGLOOP                         R2 2 ; [-71]
       78 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
