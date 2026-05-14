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
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K6 ["mount"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 3
       23 GETUPVAL                         R1 4
       24 JUMPIFNOT                        R1 ; [+27]
       25 GETUPVAL                         R1 5
       26 JUMPIFNOT                        R1 ; [+6]
       27 GETUPVAL                         R1 5
       28 NAMECALL                         R1 R1 K7 ["destroy"]
       30 CALL                             R1 1 0
       31 LOADNIL                          R1
       32 SETUPVAL                         R1 5
       33 GETIMPORT                        R1 K9 [require]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K10 ["Packages"]
       38 GETTABLEKS                       R2 R2 K11 ["DeveloperTools"]
       40 CALL                             R1 1 1
       41 GETTABLEKS                       R1 R1 K12 ["forStandalonePlugin"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K2 ["Name"]
       46 GETIMPORT                        R3 K1 [plugin]
       48 NEWTABLE                         R4 0 0
       50 CALL                             R1 3 1
       51 SETUPVAL                         R1 5
       52 GETUPVAL                         R1 5
       53 JUMPIFNOT                        R1 ; [+6]
       54 GETUPVAL                         R1 5
       55 LOADK                            R3 K13 ["Roact tree"]
       56 GETUPVAL                         R4 3
       57 NAMECALL                         R1 R1 K14 ["addRoactTree"]
       59 CALL                             R1 3 0
       60 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K1 ["unmount"]
       13 GETUPVAL                         R1 1
       14 CALL                             R0 1 0
       15 LOADNIL                          R0
       16 SETUPVAL                         R0 1
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R0 R0 K4 ["Parent"]
       11 GETIMPORT                        R1 K3 [script]
       13 GETTABLEKS                       R1 R1 K4 ["Parent"]
       15 GETTABLEKS                       R1 R1 K4 ["Parent"]
       17 GETTABLEKS                       R1 R1 K5 ["Common"]
       19 GETIMPORT                        R2 K7 [require]
       21 GETTABLEKS                       R3 R1 K8 ["defineLuaFlags"]
       23 CALL                             R2 1 0
       24 GETIMPORT                        R2 K7 [require]
       26 GETTABLEKS                       R3 R1 K4 ["Parent"]
       28 GETTABLEKS                       R3 R3 K9 ["Src"]
       30 GETTABLEKS                       R3 R3 K10 ["Util"]
       32 GETTABLEKS                       R3 R3 K11 ["DebugFlags"]
       34 CALL                             R2 1 1
       35 GETTABLEKS                       R3 R2 K12 ["RunningUnderCLI"]
       37 CALL                             R3 0 1
       38 JUMPIFNOT                        R3 ; [+1]
       39 RETURN                           R0 0
       40 GETIMPORT                        R3 K14 [game]
       42 LOADK                            R5 K15 ["DebuggerUIService"]
       43 NAMECALL                         R3 R3 K16 ["FindService"]
       45 CALL                             R3 2 1
       46 JUMPIF                           R3 ; [+1]
       47 RETURN                           R0 0
       48 GETIMPORT                        R3 K7 [require]
       50 GETTABLEKS                       R4 R1 K17 ["commonInit"]
       52 CALL                             R3 1 1
       53 MOVE                             R4 R3
       54 CALL                             R4 0 0
       55 GETIMPORT                        R4 K14 [game]
       57 LOADK                            R6 K18 ["StudioService"]
       58 NAMECALL                         R4 R4 K19 ["GetService"]
       60 CALL                             R4 2 1
       61 NAMECALL                         R4 R4 K20 ["HasInternalPermission"]
       63 CALL                             R4 1 1
       64 GETIMPORT                        R5 K7 [require]
       66 GETTABLEKS                       R6 R0 K21 ["Packages"]
       68 GETTABLEKS                       R6 R6 K22 ["Roact"]
       70 CALL                             R5 1 1
       71 GETIMPORT                        R6 K7 [require]
       73 GETTABLEKS                       R7 R0 K9 ["Src"]
       75 GETTABLEKS                       R7 R7 K23 ["MainPlugin"]
       77 CALL                             R6 1 1
       78 LOADNIL                          R7
       79 LOADNIL                          R8
       80 NEWCLOSURE                       R9 P0
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R6
       84 CAPTURE                          REF R7
       85 CAPTURE                          VAL R4
       86 CAPTURE                          REF R8
       87 NEWCLOSURE                       R10 P1
       88 CAPTURE                          REF R8
       89 CAPTURE                          REF R7
       90 CAPTURE                          VAL R5
       91 GETIMPORT                        R11 K1 [plugin]
       93 GETTABLEKS                       R11 R11 K24 ["Unloading"]
       95 MOVE                             R13 R10
       96 NAMECALL                         R11 R11 K25 ["Connect"]
       98 CALL                             R11 2 0
       99 MOVE                             R11 R9
      100 CALL                             R11 0 0
      101 CLOSEUPVALS                      R7
      102 RETURN                           R0 0
