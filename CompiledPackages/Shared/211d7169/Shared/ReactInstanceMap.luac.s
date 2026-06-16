PROTO_0:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["tag"]
        3 JUMPIFEQKNIL                     R2 ; [+17]
        5 LOADB                            R1 0
        6 GETTABLEKS                       R2 R0 K1 ["subtreeFlags"]
        8 JUMPIFEQKNIL                     R2 ; [+12]
       10 LOADB                            R1 0
       11 GETTABLEKS                       R2 R0 K2 ["lanes"]
       13 JUMPIFEQKNIL                     R2 ; [+7]
       15 GETTABLEKS                       R2 R0 K3 ["childLanes"]
       17 JUMPIFNOTEQKNIL                  R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_reactInternals"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_reactInternals"]
        2 LOADB                            R2 0
        3 GETTABLEKS                       R3 R1 K1 ["tag"]
        5 JUMPIFEQKNIL                     R3 ; [+17]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R1 K2 ["subtreeFlags"]
       10 JUMPIFEQKNIL                     R3 ; [+12]
       12 LOADB                            R2 0
       13 GETTABLEKS                       R3 R1 K3 ["lanes"]
       15 JUMPIFEQKNIL                     R3 ; [+7]
       17 GETTABLEKS                       R3 R1 K4 ["childLanes"]
       19 JUMPIFNOTEQKNIL                  R3 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 JUMPIF                           R2 ; [+18]
       24 GETIMPORT                        R2 K6 [error]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K7 ["new"]
       29 LOADK                            R5 K8 ["invalid fiber in "]
       30 GETUPVAL                         R9 1
       31 MOVE                             R10 R0
       32 CALL                             R9 1 1
       33 ORK                              R6 R9 K9 ["UNNAMED Component"]
       34 LOADK                            R7 K10 [" during get from ReactInstanceMap! "]
       35 GETUPVAL                         R8 2
       36 MOVE                             R9 R1
       37 CALL                             R8 1 1
       38 CONCAT                           R4 R5 R8
       39 CALL                             R3 1 -1
       40 CALL                             R2 -1 0
       41 RETURN                           R1 1
       42 GETTABLEKS                       R2 R1 K11 ["alternate"]
       44 JUMPIFEQKNIL                     R2 ; [+48]
       46 GETTABLEKS                       R3 R1 K11 ["alternate"]
       48 LOADB                            R2 0
       49 GETTABLEKS                       R4 R3 K1 ["tag"]
       51 JUMPIFEQKNIL                     R4 ; [+17]
       53 LOADB                            R2 0
       54 GETTABLEKS                       R4 R3 K2 ["subtreeFlags"]
       56 JUMPIFEQKNIL                     R4 ; [+12]
       58 LOADB                            R2 0
       59 GETTABLEKS                       R4 R3 K3 ["lanes"]
       61 JUMPIFEQKNIL                     R4 ; [+7]
       63 GETTABLEKS                       R4 R3 K4 ["childLanes"]
       65 JUMPIFNOTEQKNIL                  R4 ; [+2]
       67 LOADB                            R2 0 +1
       68 LOADB                            R2 1
       69 JUMPIF                           R2 ; [+23]
       70 GETIMPORT                        R2 K6 [error]
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K7 ["new"]
       75 LOADK                            R5 K12 ["invalid alternate fiber ("]
       76 GETUPVAL                         R11 1
       77 MOVE                             R12 R0
       78 CALL                             R11 1 1
       79 ORK                              R6 R11 K13 ["UNNAMED alternate"]
       80 LOADK                            R7 K14 [") in "]
       81 GETUPVAL                         R11 1
       82 MOVE                             R12 R0
       83 CALL                             R11 1 1
       84 ORK                              R8 R11 K9 ["UNNAMED Component"]
       85 LOADK                            R9 K10 [" during get from ReactInstanceMap! "]
       86 GETUPVAL                         R10 2
       87 GETTABLEKS                       R11 R1 K11 ["alternate"]
       89 CALL                             R10 1 1
       90 CONCAT                           R4 R5 R10
       91 CALL                             R3 1 -1
       92 CALL                             R2 -1 0
       93 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_reactInternals"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_4:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 JUMPIFEQKNIL                     R2 ; [+122]
        4 MOVE                             R5 R2
        5 LOADB                            R4 0
        6 GETTABLEKS                       R6 R5 K0 ["tag"]
        8 JUMPIFEQKNIL                     R6 ; [+17]
       10 LOADB                            R4 0
       11 GETTABLEKS                       R6 R5 K1 ["subtreeFlags"]
       13 JUMPIFEQKNIL                     R6 ; [+12]
       15 LOADB                            R4 0
       16 GETTABLEKS                       R6 R5 K2 ["lanes"]
       18 JUMPIFEQKNIL                     R6 ; [+7]
       20 GETTABLEKS                       R6 R5 K3 ["childLanes"]
       22 JUMPIFNOTEQKNIL                  R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 JUMPIF                           R4 ; [+31]
       27 LOADK                            R4 K4 ["invalid fiber in "]
       28 GETUPVAL                         R9 0
       29 MOVE                             R10 R0
       30 CALL                             R9 1 1
       31 ORK                              R5 R9 K5 ["UNNAMED Component"]
       32 LOADK                            R6 K6 [" being set in ReactInstanceMap! "]
       33 GETUPVAL                         R9 1
       34 MOVE                             R10 R2
       35 CALL                             R9 1 1
       36 MOVE                             R7 R9
       37 LOADK                            R8 K7 ["\n"]
       38 CONCAT                           R3 R4 R8
       39 JUMPIFEQ                         R1 R2 ; [+9]
       41 MOVE                             R4 R3
       42 LOADK                            R5 K8 [" (from original fiber "]
       43 GETUPVAL                         R8 0
       44 MOVE                             R9 R0
       45 CALL                             R8 1 1
       46 ORK                              R6 R8 K5 ["UNNAMED Component"]
       47 LOADK                            R7 K9 [")"]
       48 CONCAT                           R3 R4 R7
       49 GETIMPORT                        R4 K11 [error]
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R5 R5 K12 ["new"]
       54 MOVE                             R6 R3
       55 CALL                             R5 1 -1
       56 CALL                             R4 -1 0
       57 JUMP                             ; [+64]
       58 GETTABLEKS                       R4 R2 K13 ["alternate"]
       60 JUMPIFEQKNIL                     R4 ; [+61]
       62 GETTABLEKS                       R5 R2 K13 ["alternate"]
       64 LOADB                            R4 0
       65 GETTABLEKS                       R6 R5 K0 ["tag"]
       67 JUMPIFEQKNIL                     R6 ; [+17]
       69 LOADB                            R4 0
       70 GETTABLEKS                       R6 R5 K1 ["subtreeFlags"]
       72 JUMPIFEQKNIL                     R6 ; [+12]
       74 LOADB                            R4 0
       75 GETTABLEKS                       R6 R5 K2 ["lanes"]
       77 JUMPIFEQKNIL                     R6 ; [+7]
       79 GETTABLEKS                       R6 R5 K3 ["childLanes"]
       81 JUMPIFNOTEQKNIL                  R6 ; [+2]
       83 LOADB                            R4 0 +1
       84 LOADB                            R4 1
       85 JUMPIF                           R4 ; [+36]
       86 LOADK                            R4 K14 ["invalid alternate fiber ("]
       87 GETUPVAL                         R11 0
       88 MOVE                             R12 R0
       89 CALL                             R11 1 1
       90 ORK                              R5 R11 K15 ["UNNAMED alternate"]
       91 LOADK                            R6 K16 [") in "]
       92 GETUPVAL                         R11 0
       93 MOVE                             R12 R0
       94 CALL                             R11 1 1
       95 ORK                              R7 R11 K5 ["UNNAMED Component"]
       96 LOADK                            R8 K6 [" being set in ReactInstanceMap! "]
       97 GETUPVAL                         R11 1
       98 GETTABLEKS                       R12 R2 K13 ["alternate"]
      100 CALL                             R11 1 1
      101 MOVE                             R9 R11
      102 LOADK                            R10 K7 ["\n"]
      103 CONCAT                           R3 R4 R10
      104 JUMPIFEQ                         R1 R2 ; [+9]
      106 MOVE                             R4 R3
      107 LOADK                            R5 K8 [" (from original fiber "]
      108 GETUPVAL                         R8 0
      109 MOVE                             R9 R0
      110 CALL                             R8 1 1
      111 ORK                              R6 R8 K5 ["UNNAMED Component"]
      112 LOADK                            R7 K9 [")"]
      113 CONCAT                           R3 R4 R7
      114 GETIMPORT                        R4 K11 [error]
      116 GETUPVAL                         R5 2
      117 GETTABLEKS                       R5 R5 K12 ["new"]
      119 MOVE                             R6 R3
      120 CALL                             R5 1 -1
      121 CALL                             R4 -1 0
      122 GETTABLEKS                       R2 R2 K17 ["return_"]
      124 JUMPBACK                         ; [-123]
      125 SETTABLEKS                       R1 R0 K18 ["_reactInternals"]
      127 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Error"]
       14 GETTABLEKS                       R4 R2 K7 ["util"]
       16 GETTABLEKS                       R4 R4 K8 ["inspect"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETIMPORT                        R6 K1 [script]
       22 GETTABLEKS                       R6 R6 K2 ["Parent"]
       24 GETTABLEKS                       R6 R6 K9 ["getComponentName"]
       26 CALL                             R5 1 1
       27 NEWTABLE                         R6 4 0
       29 DUPCLOSURE                       R7 K10 [PROTO_0]
       30 DUPCLOSURE                       R8 K11 [PROTO_1]
       31 SETTABLEKS                       R8 R6 K12 ["remove"]
       33 DUPCLOSURE                       R8 K13 [PROTO_2]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R8 R6 K14 ["get"]
       39 DUPCLOSURE                       R8 K15 [PROTO_3]
       40 SETTABLEKS                       R8 R6 K16 ["has"]
       42 DUPCLOSURE                       R8 K17 [PROTO_4]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R8 R6 K18 ["set"]
       48 RETURN                           R6 1
