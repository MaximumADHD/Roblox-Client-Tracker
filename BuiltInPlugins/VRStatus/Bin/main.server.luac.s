PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["createElement"]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K5 [{"Plugin"}]
       12 GETIMPORT                        R3 K1 [plugin]
       14 SETTABLEKS                       R3 R2 K4 ["Plugin"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R1 K6 ["createRoot"]
       20 GETIMPORT                        R2 K9 [Instance.new]
       22 LOADK                            R3 K10 ["Frame"]
       23 CALL                             R2 1 -1
       24 CALL                             R1 -1 1
       25 SETUPVAL                         R1 3
       26 GETUPVAL                         R1 3
       27 MOVE                             R3 R0
       28 NAMECALL                         R1 R1 K11 ["render"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K7 [plugin]
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R0 K3 [script]
       16 GETTABLEKS                       R0 R0 K4 ["Parent"]
       18 GETTABLEKS                       R0 R0 K4 ["Parent"]
       20 GETIMPORT                        R1 K1 [require]
       22 GETTABLEKS                       R2 R0 K8 ["Packages"]
       24 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R1 K10 ["launch"]
       29 LOADK                            R3 K11 ["VRStatus"]
       30 GETTABLEKS                       R4 R0 K12 ["Src"]
       32 CALL                             R2 2 0
       33 GETTABLEKS                       R2 R1 K13 ["isCli"]
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R2 K15 [game]
       40 LOADK                            R4 K16 ["EnableVRStatus"]
       41 NAMECALL                         R2 R2 K17 ["GetFastFlag"]
       43 CALL                             R2 2 1
       44 JUMPIF                           R2 ; [+1]
       45 RETURN                           R0 0
       46 GETIMPORT                        R2 K1 [require]
       48 GETTABLEKS                       R3 R0 K8 ["Packages"]
       50 GETTABLEKS                       R3 R3 K18 ["React"]
       52 CALL                             R2 1 1
       53 GETIMPORT                        R3 K1 [require]
       55 GETTABLEKS                       R4 R0 K8 ["Packages"]
       57 GETTABLEKS                       R4 R4 K19 ["ReactRoblox"]
       59 CALL                             R3 1 1
       60 GETIMPORT                        R4 K1 [require]
       62 GETTABLEKS                       R5 R0 K12 ["Src"]
       64 GETTABLEKS                       R5 R5 K20 ["MainPlugin"]
       66 CALL                             R4 1 1
       67 LOADNIL                          R5
       68 NEWCLOSURE                       R6 P0
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R4
       72 CAPTURE                          REF R5
       73 CAPTURE                          VAL R3
       74 GETIMPORT                        R7 K7 [plugin]
       76 GETTABLEKS                       R7 R7 K21 ["Unloading"]
       78 NEWCLOSURE                       R9 P1
       79 CAPTURE                          REF R5
       80 NAMECALL                         R7 R7 K22 ["Connect"]
       82 CALL                             R7 2 0
       83 MOVE                             R7 R6
       84 CALL                             R7 0 0
       85 CLOSEUPVALS                      R5
       86 RETURN                           R0 0
