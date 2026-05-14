PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
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
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K6 ["mount"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 3
       23 GETUPVAL                         R1 4
       24 JUMPIFNOT                        R1 ; [+6]
       25 GETUPVAL                         R1 4
       26 LOADK                            R3 K7 ["Roact tree"]
       27 GETUPVAL                         R4 3
       28 NAMECALL                         R1 R1 K8 ["addRoactTree"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["unmount"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 1
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [require]
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K7 ["defineLuaFlags"]
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K9 [game]
       16 LOADK                            R2 K10 ["DebugAvatarInternalToolsPlugin"]
       17 NAMECALL                         R0 R0 K11 ["GetFastFlag"]
       19 CALL                             R0 2 1
       20 JUMPIF                           R0 ; [+1]
       21 RETURN                           R0 0
       22 GETIMPORT                        R0 K13 [pcall]
       24 DUPCLOSURE                       R1 K14 [PROTO_0]
       25 CALL                             R0 1 2
       26 JUMPIFNOT                        R0 ; [+1]
       27 JUMPIF                           R1 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K5 [script]
       31 GETTABLEKS                       R2 R2 K6 ["Parent"]
       33 GETTABLEKS                       R2 R2 K6 ["Parent"]
       35 GETIMPORT                        R3 K3 [require]
       37 GETTABLEKS                       R4 R2 K15 ["Src"]
       39 GETTABLEKS                       R4 R4 K16 ["Util"]
       41 GETTABLEKS                       R4 R4 K17 ["DebugFlags"]
       43 CALL                             R3 1 1
       44 GETTABLEKS                       R4 R3 K18 ["RunTests"]
       46 CALL                             R4 0 1
       47 JUMPIFNOT                        R4 ; [+1]
       48 RETURN                           R0 0
       49 GETIMPORT                        R5 K3 [require]
       51 GETIMPORT                        R6 K5 [script]
       53 GETTABLEKS                       R6 R6 K6 ["Parent"]
       55 GETTABLEKS                       R6 R6 K19 ["commonInit"]
       57 CALL                             R5 1 1
       58 MOVE                             R6 R5
       59 CALL                             R6 0 0
       60 GETIMPORT                        R6 K3 [require]
       62 GETTABLEKS                       R7 R2 K20 ["Packages"]
       64 GETTABLEKS                       R7 R7 K21 ["Roact"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K3 [require]
       69 GETTABLEKS                       R8 R2 K15 ["Src"]
       71 GETTABLEKS                       R8 R8 K22 ["MainPlugin"]
       73 CALL                             R7 1 1
       74 LOADNIL                          R8
       75 LOADNIL                          R9
       76 JUMPIFNOT                        R1 ; [+15]
       77 GETIMPORT                        R10 K3 [require]
       79 GETTABLEKS                       R11 R2 K20 ["Packages"]
       81 GETTABLEKS                       R11 R11 K23 ["DeveloperTools"]
       83 CALL                             R10 1 1
       84 GETTABLEKS                       R10 R10 K24 ["forPlugin"]
       86 GETTABLEKS                       R11 R2 K25 ["Name"]
       88 GETIMPORT                        R12 K1 [plugin]
       90 CALL                             R10 2 1
       91 MOVE                             R9 R10
       92 NEWCLOSURE                       R10 P1
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 CAPTURE                          REF R8
       97 CAPTURE                          REF R9
       98 GETIMPORT                        R11 K1 [plugin]
      100 GETTABLEKS                       R11 R11 K26 ["Unloading"]
      102 NEWCLOSURE                       R13 P2
      103 CAPTURE                          REF R9
      104 CAPTURE                          REF R8
      105 CAPTURE                          VAL R6
      106 NAMECALL                         R11 R11 K27 ["Connect"]
      108 CALL                             R11 2 0
      109 MOVE                             R11 R10
      110 CALL                             R11 0 0
      111 CLOSEUPVALS                      R8
      112 RETURN                           R0 0
