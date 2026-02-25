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
       18 GETUPVAL                         R2 6
       19 GETTABLEKS                       R1 R2 K5 ["createRoot"]
       21 GETIMPORT                        R2 K8 [Instance.new]
       23 LOADK                            R3 K9 ["Frame"]
       24 CALL                             R2 1 -1
       25 CALL                             R1 -1 1
       26 SETUPVAL                         R1 5
       27 GETUPVAL                         R1 5
       28 MOVE                             R3 R0
       29 NAMECALL                         R1 R1 K10 ["render"]
       31 CALL                             R1 2 0
       32 GETUPVAL                         R1 7
       33 JUMPIFNOT                        R1 ; [+6]
       34 GETUPVAL                         R1 7
       35 LOADK                            R3 K11 ["Roact tree"]
       36 GETUPVAL                         R4 5
       37 NAMECALL                         R1 R1 K12 ["addRoactTree"]
       39 CALL                             R1 3 0
       40 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 LOADNIL                          R2
       10 NAMECALL                         R0 R0 K1 ["render"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

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
       30 GETTABLEKS                       R6 R3 K7 ["Packages"]
       32 GETTABLEKS                       R5 R6 K8 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K1 [require]
       37 GETTABLEKS                       R7 R3 K7 ["Packages"]
       39 GETTABLEKS                       R6 R7 K9 ["ReactRoblox"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K1 [require]
       44 GETTABLEKS                       R8 R3 K7 ["Packages"]
       46 GETTABLEKS                       R7 R8 K10 ["Framework"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K1 [require]
       51 GETTABLEKS                       R9 R3 K11 ["Src"]
       53 GETTABLEKS                       R8 R9 K12 ["MainPlugin"]
       55 CALL                             R7 1 1
       56 LOADNIL                          R8
       57 GETIMPORT                        R9 K1 [require]
       59 GETTABLEKS                       R12 R3 K11 ["Src"]
       61 GETTABLEKS                       R11 R12 K13 ["Util"]
       63 GETTABLEKS                       R10 R11 K14 ["hasInternalPermission"]
       65 CALL                             R9 1 1
       66 LOADNIL                          R10
       67 MOVE                             R11 R9
       68 CALL                             R11 0 1
       69 JUMPIFNOT                        R11 ; [+14]
       70 GETIMPORT                        R12 K1 [require]
       72 GETTABLEKS                       R14 R3 K7 ["Packages"]
       74 GETTABLEKS                       R13 R14 K15 ["DeveloperTools"]
       76 CALL                             R12 1 1
       77 GETTABLEKS                       R11 R12 K16 ["forPlugin"]
       79 GETTABLEKS                       R12 R3 K17 ["Name"]
       81 MOVE                             R13 R0
       82 CALL                             R11 2 1
       83 MOVE                             R10 R11
       84 NEWCLOSURE                       R11 P0
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R1
       90 CAPTURE                          REF R8
       91 CAPTURE                          VAL R5
       92 CAPTURE                          REF R10
       93 GETTABLEKS                       R12 R0 K18 ["Unloading"]
       95 NEWCLOSURE                       R14 P1
       96 CAPTURE                          REF R10
       97 CAPTURE                          REF R8
       98 NAMECALL                         R12 R12 K19 ["Connect"]
      100 CALL                             R12 2 0
      101 MOVE                             R12 R11
      102 CALL                             R12 0 0
      103 CLOSEUPVALS                      R8
      104 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
