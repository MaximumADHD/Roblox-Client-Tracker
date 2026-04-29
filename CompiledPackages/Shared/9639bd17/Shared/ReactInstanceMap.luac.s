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
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K7 ["new"]
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
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R3 R4 K7 ["new"]
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
        0 GETTABLEKS                       R1 R0 K0 ["_reactInternals"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_reactInternals"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
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
       51 GETUPVAL                         R6 2
       52 GETTABLEKS                       R5 R6 K12 ["new"]
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
      116 GETUPVAL                         R6 2
      117 GETTABLEKS                       R5 R6 K12 ["new"]
      119 MOVE                             R6 R3
      120 CALL                             R5 1 -1
      121 CALL                             R4 -1 0
      122 GETTABLEKS                       R2 R2 K17 ["return_"]
      124 JUMPBACK                         ; [-123]
      125 SETTABLEKS                       R1 R0 K18 ["_reactInternals"]
      127 RETURN                           R0 0

PROTO_6:
        0 SETTABLEKS                       R1 R0 K0 ["_reactInternals"]
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["ReactGlobals"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["LuauPolyfill"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K7 ["Error"]
       19 GETTABLEKS                       R6 R3 K8 ["util"]
       21 GETTABLEKS                       R5 R6 K9 ["inspect"]
       23 GETIMPORT                        R6 K4 [require]
       25 GETIMPORT                        R9 K1 [script]
       27 GETTABLEKS                       R8 R9 K2 ["Parent"]
       29 GETTABLEKS                       R7 R8 K10 ["getComponentName"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K1 [script]
       34 LOADK                            R9 K11 ["ReactUtils"]
       35 NAMECALL                         R7 R7 K12 ["FindFirstAncestor"]
       37 CALL                             R7 2 1
       38 GETTABLEKS                       R8 R2 K13 ["__DEV__"]
       40 GETIMPORT                        R9 K4 [require]
       42 GETTABLEKS                       R10 R1 K14 ["SafeFlags"]
       44 CALL                             R9 1 1
       45 GETTABLEKS                       R10 R9 K15 ["createGetFFlag"]
       47 LOADK                            R11 K16 ["ReactInstanceMapDisableErrorChecking"]
       48 CALL                             R10 1 1
       49 MOVE                             R11 R10
       50 CALL                             R11 0 1
       51 NEWTABLE                         R12 4 0
       53 DUPCLOSURE                       R13 K17 [PROTO_0]
       54 DUPCLOSURE                       R14 K18 [PROTO_1]
       55 SETTABLEKS                       R14 R12 K19 ["remove"]
       57 JUMPIFNOT                        R11 ; [+1]
       58 JUMPIFNOT                        R8 ; [+7]
       59 DUPCLOSURE                       R14 K20 [PROTO_2]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R14 R12 K21 ["get"]
       65 JUMP                             ; [+3]
       66 DUPCLOSURE                       R14 K22 [PROTO_3]
       67 SETTABLEKS                       R14 R12 K21 ["get"]
       69 DUPCLOSURE                       R14 K23 [PROTO_4]
       70 SETTABLEKS                       R14 R12 K24 ["has"]
       72 JUMPIFNOT                        R11 ; [+1]
       73 JUMPIFNOT                        R8 ; [+7]
       74 DUPCLOSURE                       R14 K25 [PROTO_5]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R14 R12 K26 ["set"]
       80 RETURN                           R12 1
       81 DUPCLOSURE                       R14 K27 [PROTO_6]
       82 SETTABLEKS                       R14 R12 K26 ["set"]
       84 RETURN                           R12 1
