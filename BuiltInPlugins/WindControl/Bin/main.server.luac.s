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
       31 GETUPVAL                         R1 5
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETUPVAL                         R1 5
       34 LOADK                            R3 K12 ["Roact tree"]
       35 GETUPVAL                         R4 3
       36 NAMECALL                         R1 R1 K13 ["addRoactTree"]
       38 CALL                             R1 3 0
       39 RETURN                           R0 0

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
       14 GETIMPORT                        R0 K3 [require]
       16 GETIMPORT                        R1 K5 [script]
       18 GETTABLEKS                       R1 R1 K6 ["Parent"]
       20 GETTABLEKS                       R1 R1 K8 ["commonInit"]
       22 CALL                             R0 1 1
       23 MOVE                             R1 R0
       24 CALL                             R1 0 0
       25 GETIMPORT                        R1 K5 [script]
       27 GETTABLEKS                       R1 R1 K6 ["Parent"]
       29 GETTABLEKS                       R1 R1 K6 ["Parent"]
       31 GETIMPORT                        R2 K3 [require]
       33 GETTABLEKS                       R3 R1 K9 ["Packages"]
       35 GETTABLEKS                       R3 R3 K10 ["TestLoader"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K11 ["launch"]
       40 LOADK                            R4 K12 ["WindControl"]
       41 GETTABLEKS                       R5 R1 K13 ["Src"]
       43 CALL                             R3 2 0
       44 GETTABLEKS                       R3 R2 K14 ["isCli"]
       46 CALL                             R3 0 1
       47 JUMPIFNOT                        R3 ; [+1]
       48 RETURN                           R0 0
       49 GETIMPORT                        R3 K3 [require]
       51 GETTABLEKS                       R4 R1 K9 ["Packages"]
       53 GETTABLEKS                       R4 R4 K15 ["React"]
       55 CALL                             R3 1 1
       56 GETIMPORT                        R4 K3 [require]
       58 GETTABLEKS                       R5 R1 K9 ["Packages"]
       60 GETTABLEKS                       R5 R5 K16 ["ReactRoblox"]
       62 CALL                             R4 1 1
       63 GETIMPORT                        R5 K3 [require]
       65 GETTABLEKS                       R6 R1 K13 ["Src"]
       67 GETTABLEKS                       R6 R6 K17 ["MainPlugin"]
       69 CALL                             R5 1 1
       70 LOADNIL                          R6
       71 LOADNIL                          R7
       72 GETTABLEKS                       R8 R2 K18 ["hasInternalPermission"]
       74 CALL                             R8 0 1
       75 JUMPIFNOT                        R8 ; [+15]
       76 GETIMPORT                        R8 K3 [require]
       78 GETTABLEKS                       R9 R1 K9 ["Packages"]
       80 GETTABLEKS                       R9 R9 K19 ["DeveloperTools"]
       82 CALL                             R8 1 1
       83 GETTABLEKS                       R8 R8 K20 ["forPlugin"]
       85 GETTABLEKS                       R9 R1 K21 ["Name"]
       87 GETIMPORT                        R10 K1 [plugin]
       89 CALL                             R8 2 1
       90 MOVE                             R7 R8
       91 NEWCLOSURE                       R8 P0
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R5
       95 CAPTURE                          REF R6
       96 CAPTURE                          VAL R4
       97 CAPTURE                          REF R7
       98 GETIMPORT                        R9 K1 [plugin]
      100 GETTABLEKS                       R9 R9 K22 ["Unloading"]
      102 NEWCLOSURE                       R11 P1
      103 CAPTURE                          REF R7
      104 CAPTURE                          REF R6
      105 NAMECALL                         R9 R9 K23 ["Connect"]
      107 CALL                             R9 2 0
      108 MOVE                             R9 R8
      109 CALL                             R9 0 0
      110 CLOSEUPVALS                      R6
      111 RETURN                           R0 0
