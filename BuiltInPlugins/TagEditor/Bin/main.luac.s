PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["createElement"]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K4 [{"Plugin", "pluginLoaderContext"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K2 ["Plugin"]
       14 GETUPVAL                         R4 4
       15 JUMPIFNOT                        R4 ; [+2]
       16 GETUPVAL                         R3 5
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K3 ["pluginLoaderContext"]
       21 CALL                             R0 2 1
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R1 R2 K5 ["mount"]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 1
       27 SETUPVAL                         R1 6
       28 GETUPVAL                         R1 7
       29 JUMPIFNOT                        R1 ; [+6]
       30 GETUPVAL                         R1 7
       31 LOADK                            R3 K6 ["Roact tree"]
       32 GETUPVAL                         R4 6
       33 NAMECALL                         R1 R1 K7 ["addRoactTree"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0

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
        2 GETIMPORT                        R2 K1 [game]
        4 LOADK                            R4 K2 ["ImprovePluginSpeed_TagEditor"]
        5 NAMECALL                         R2 R2 K3 ["GetFastFlag"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+9]
        9 GETIMPORT                        R3 K5 [require]
       11 GETIMPORT                        R6 K7 [script]
       13 GETTABLEKS                       R5 R6 K8 ["Parent"]
       15 GETTABLEKS                       R4 R5 K9 ["defineLuaFlags"]
       17 CALL                             R3 1 0
       18 GETIMPORT                        R3 K5 [require]
       20 GETIMPORT                        R6 K7 [script]
       22 GETTABLEKS                       R5 R6 K8 ["Parent"]
       24 GETTABLEKS                       R4 R5 K10 ["commonInit"]
       26 CALL                             R3 1 1
       27 MOVE                             R4 R3
       28 CALL                             R4 0 0
       29 GETIMPORT                        R6 K7 [script]
       31 GETTABLEKS                       R5 R6 K8 ["Parent"]
       33 GETTABLEKS                       R4 R5 K8 ["Parent"]
       35 JUMPIF                           R2 ; [+13]
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R8 R4 K11 ["Src"]
       40 GETTABLEKS                       R7 R8 K12 ["Util"]
       42 GETTABLEKS                       R6 R7 K13 ["shouldPluginRun"]
       44 CALL                             R5 1 1
       45 MOVE                             R6 R5
       46 CALL                             R6 0 1
       47 JUMPIF                           R6 ; [+1]
       48 RETURN                           R0 0
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R7 R4 K14 ["Packages"]
       53 GETTABLEKS                       R6 R7 K15 ["Roact"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R8 R4 K11 ["Src"]
       60 GETTABLEKS                       R7 R8 K16 ["MainPlugin"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R10 R4 K11 ["Src"]
       67 GETTABLEKS                       R9 R10 K12 ["Util"]
       69 GETTABLEKS                       R8 R9 K17 ["hasInternalPermission"]
       71 CALL                             R7 1 1
       72 CALL                             R7 0 1
       73 LOADNIL                          R8
       74 LOADNIL                          R9
       75 JUMPIFNOT                        R7 ; [+14]
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R13 R4 K14 ["Packages"]
       80 GETTABLEKS                       R12 R13 K18 ["DeveloperTools"]
       82 CALL                             R11 1 1
       83 GETTABLEKS                       R10 R11 K19 ["forPlugin"]
       85 GETTABLEKS                       R11 R4 K20 ["Name"]
       87 MOVE                             R12 R0
       88 CALL                             R10 2 1
       89 MOVE                             R9 R10
       90 NEWCLOSURE                       R10 P0
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R1
       97 CAPTURE                          REF R8
       98 CAPTURE                          REF R9
       99 GETTABLEKS                       R11 R0 K21 ["Unloading"]
      101 NEWCLOSURE                       R13 P1
      102 CAPTURE                          REF R9
      103 CAPTURE                          REF R8
      104 CAPTURE                          VAL R5
      105 NAMECALL                         R11 R11 K22 ["Connect"]
      107 CALL                             R11 2 0
      108 MOVE                             R11 R10
      109 CALL                             R11 0 0
      110 CLOSEUPVALS                      R8
      111 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
