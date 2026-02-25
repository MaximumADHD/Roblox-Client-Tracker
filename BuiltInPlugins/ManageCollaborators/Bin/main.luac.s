PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["createElement"]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K4 [{"Plugin", "PluginLoaderContext"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K2 ["Plugin"]
       14 GETUPVAL                         R3 4
       15 SETTABLEKS                       R3 R2 K3 ["PluginLoaderContext"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K5 ["mount"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 1
       23 SETUPVAL                         R1 5
       24 GETUPVAL                         R1 6
       25 JUMPIFNOT                        R1 ; [+6]
       26 GETUPVAL                         R1 6
       27 LOADK                            R3 K6 ["Roact tree"]
       28 GETUPVAL                         R4 5
       29 NAMECALL                         R1 R1 K7 ["addRoactTree"]
       31 CALL                             R1 3 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K1 ["unmount"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 1
       15 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [require]
        4 GETIMPORT                        R5 K3 [script]
        6 GETTABLEKS                       R4 R5 K4 ["Parent"]
        8 GETTABLEKS                       R3 R4 K5 ["defineLuaFlags"]
       10 CALL                             R2 1 0
       11 GETIMPORT                        R2 K1 [require]
       13 GETIMPORT                        R5 K3 [script]
       15 GETTABLEKS                       R4 R5 K4 ["Parent"]
       17 GETTABLEKS                       R3 R4 K6 ["commonInit"]
       19 CALL                             R2 1 1
       20 MOVE                             R3 R2
       21 CALL                             R3 0 0
       22 GETIMPORT                        R5 K3 [script]
       24 GETTABLEKS                       R4 R5 K4 ["Parent"]
       26 GETTABLEKS                       R3 R4 K4 ["Parent"]
       28 GETIMPORT                        R4 K1 [require]
       30 GETTABLEKS                       R7 R3 K7 ["Src"]
       32 GETTABLEKS                       R6 R7 K8 ["Util"]
       34 GETTABLEKS                       R5 R6 K9 ["shouldPluginRun"]
       36 CALL                             R4 1 1
       37 MOVE                             R5 R4
       38 CALL                             R5 0 1
       39 JUMPIF                           R5 ; [+1]
       40 RETURN                           R0 0
       41 GETIMPORT                        R5 K1 [require]
       43 GETTABLEKS                       R7 R3 K10 ["Packages"]
       45 GETTABLEKS                       R6 R7 K11 ["Roact"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K1 [require]
       50 GETTABLEKS                       R8 R3 K10 ["Packages"]
       52 GETTABLEKS                       R7 R8 K12 ["DeveloperTools"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K1 [require]
       57 GETTABLEKS                       R9 R3 K7 ["Src"]
       59 GETTABLEKS                       R8 R9 K13 ["MainPlugin"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K1 [require]
       64 GETTABLEKS                       R11 R3 K7 ["Src"]
       66 GETTABLEKS                       R10 R11 K8 ["Util"]
       68 GETTABLEKS                       R9 R10 K14 ["hasInternalPermission"]
       70 CALL                             R8 1 1
       71 CALL                             R8 0 1
       72 LOADNIL                          R9
       73 LOADNIL                          R10
       74 JUMPIFNOT                        R8 ; [+7]
       75 GETTABLEKS                       R11 R6 K15 ["forPlugin"]
       77 GETTABLEKS                       R12 R3 K16 ["Name"]
       79 MOVE                             R13 R0
       80 CALL                             R11 2 1
       81 MOVE                             R10 R11
       82 NEWCLOSURE                       R11 P0
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R1
       88 CAPTURE                          REF R9
       89 CAPTURE                          REF R10
       90 GETTABLEKS                       R12 R0 K17 ["Unloading"]
       92 NEWCLOSURE                       R14 P1
       93 CAPTURE                          REF R10
       94 CAPTURE                          REF R9
       95 CAPTURE                          VAL R5
       96 NAMECALL                         R12 R12 K18 ["Connect"]
       98 CALL                             R12 2 0
       99 MOVE                             R12 R11
      100 CALL                             R12 0 0
      101 CLOSEUPVALS                      R9
      102 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
