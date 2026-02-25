PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R1 K2 ["DeveloperInspector"]
        3 SETTABLEKS                       R1 R0 K3 ["Name"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K4 ["createElement"]
        8 GETUPVAL                         R1 1
        9 DUPTABLE                         R2 K6 [{"Plugin"}]
       10 GETIMPORT                        R3 K1 [plugin]
       12 SETTABLEKS                       R3 R2 K5 ["Plugin"]
       14 CALL                             R0 2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K7 ["mount"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 1
       20 SETUPVAL                         R1 2
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [require]
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K7 ["defineLuaFlags"]
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K9 [game]
       16 LOADK                            R2 K10 ["StudioService"]
       17 NAMECALL                         R0 R0 K11 ["GetService"]
       19 CALL                             R0 2 1
       20 NAMECALL                         R0 R0 K12 ["HasInternalPermission"]
       22 CALL                             R0 1 1
       23 JUMPIF                           R0 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K5 [script]
       27 GETTABLEKS                       R1 R2 K6 ["Parent"]
       29 GETTABLEKS                       R0 R1 K6 ["Parent"]
       31 GETIMPORT                        R1 K3 [require]
       33 GETTABLEKS                       R4 R0 K13 ["Src"]
       35 GETTABLEKS                       R3 R4 K14 ["Util"]
       37 GETTABLEKS                       R2 R3 K15 ["DebugFlags"]
       39 CALL                             R1 1 1
       40 GETTABLEKS                       R2 R1 K16 ["RunningUnderCLI"]
       42 CALL                             R2 0 1
       43 JUMPIFNOT                        R2 ; [+1]
       44 RETURN                           R0 0
       45 GETIMPORT                        R2 K3 [require]
       47 GETTABLEKS                       R5 R0 K13 ["Src"]
       49 GETTABLEKS                       R4 R5 K14 ["Util"]
       51 GETTABLEKS                       R3 R4 K17 ["commonInit"]
       53 CALL                             R2 1 1
       54 MOVE                             R3 R2
       55 CALL                             R3 0 0
       56 GETIMPORT                        R3 K3 [require]
       58 GETTABLEKS                       R5 R0 K13 ["Src"]
       60 GETTABLEKS                       R4 R5 K18 ["MainPlugin"]
       62 CALL                             R3 1 1
       63 LOADNIL                          R4
       64 GETIMPORT                        R5 K3 [require]
       66 GETTABLEKS                       R7 R0 K19 ["Packages"]
       68 GETTABLEKS                       R6 R7 K20 ["Roact"]
       70 CALL                             R5 1 1
       71 GETTABLEKS                       R6 R5 K21 ["setGlobalConfig"]
       73 DUPTABLE                         R7 K25 [{"typeChecks", "propValidation", "elementTracing"}]
       74 LOADB                            R8 1
       75 SETTABLEKS                       R8 R7 K22 ["typeChecks"]
       77 LOADB                            R8 1
       78 SETTABLEKS                       R8 R7 K23 ["propValidation"]
       80 LOADB                            R8 1
       81 SETTABLEKS                       R8 R7 K24 ["elementTracing"]
       83 CALL                             R6 1 0
       84 NEWCLOSURE                       R6 P0
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R3
       87 CAPTURE                          REF R4
       88 GETIMPORT                        R8 K1 [plugin]
       90 GETTABLEKS                       R7 R8 K26 ["Unloading"]
       92 NEWCLOSURE                       R9 P1
       93 CAPTURE                          REF R4
       94 CAPTURE                          VAL R5
       95 NAMECALL                         R7 R7 K27 ["Connect"]
       97 CALL                             R7 2 0
       98 GETIMPORT                        R7 K1 [plugin]
      100 LOADK                            R8 K28 ["DeveloperInspector"]
      101 SETTABLEKS                       R8 R7 K29 ["Name"]
      103 GETTABLEKS                       R7 R5 K30 ["createElement"]
      105 MOVE                             R8 R3
      106 DUPTABLE                         R9 K32 [{"Plugin"}]
      107 GETIMPORT                        R10 K1 [plugin]
      109 SETTABLEKS                       R10 R9 K31 ["Plugin"]
      111 CALL                             R7 2 1
      112 GETTABLEKS                       R8 R5 K33 ["mount"]
      114 MOVE                             R9 R7
      115 CALL                             R8 1 1
      116 MOVE                             R4 R8
      117 CLOSEUPVALS                      R4
      118 RETURN                           R0 0
