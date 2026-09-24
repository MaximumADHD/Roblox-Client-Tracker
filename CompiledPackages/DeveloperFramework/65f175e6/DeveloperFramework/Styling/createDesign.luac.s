PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Folder"]
        3 CALL                             R1 1 1
        4 ORK                              R2 R0 K4 ["Design"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 LOADK                            R4 K6 ["StyleCategory"]
        8 LOADK                            R5 K4 ["Design"]
        9 NAMECALL                         R2 R1 K7 ["SetAttribute"]
       11 CALL                             R2 3 0
       12 GETIMPORT                        R2 K2 [Instance.new]
       14 LOADK                            R3 K3 ["Folder"]
       15 CALL                             R2 1 1
       16 LOADK                            R3 K8 ["Themes"]
       17 SETTABLEKS                       R3 R2 K5 ["Name"]
       19 SETTABLEKS                       R1 R2 K9 ["Parent"]
       21 LOADK                            R5 K6 ["StyleCategory"]
       22 LOADK                            R6 K8 ["Themes"]
       23 NAMECALL                         R3 R2 K7 ["SetAttribute"]
       25 CALL                             R3 3 0
       26 GETIMPORT                        R3 K2 [Instance.new]
       28 LOADK                            R4 K10 ["StyleSheet"]
       29 CALL                             R3 1 1
       30 LOADK                            R4 K4 ["Design"]
       31 SETTABLEKS                       R4 R3 K5 ["Name"]
       33 SETTABLEKS                       R1 R3 K9 ["Parent"]
       35 GETIMPORT                        R4 K2 [Instance.new]
       37 LOADK                            R5 K3 ["Folder"]
       38 CALL                             R4 1 1
       39 LOADK                            R5 K11 ["Stories"]
       40 SETTABLEKS                       R5 R4 K5 ["Name"]
       42 SETTABLEKS                       R1 R4 K9 ["Parent"]
       44 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
