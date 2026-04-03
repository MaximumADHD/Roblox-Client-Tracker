PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationUseAlphaCompositingForStateLayer"]
        3 JUMPIFNOT                        R2 ; [+81]
        4 GETTABLEKS                       R4 R1 K3 ["Transparency"]
        6 ORK                              R3 R4 K2 [0]
        7 SUBRK                            R2 R1 K3 ["Transparency"]
        8 GETTABLEKS                       R5 R0 K3 ["Transparency"]
       10 ORK                              R4 R5 K2 [0]
       11 SUBRK                            R3 R1 K4 ["Color3"]
       12 JUMPIFEQKN                       R2 K1 [1] ; [+7]
       14 JUMPIFEQKN                       R3 K2 [0] ; [+5]
       16 GETTABLEKS                       R4 R0 K4 ["Color3"]
       18 JUMPIFNOTEQKNIL                  R4 ; [+2]
       20 RETURN                           R1 1
       21 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       23 RETURN                           R0 1
       24 SUBRK                            R4 R1 K2 [0]
       25 MUL                              R6 R3 R4
       26 ADD                              R5 R2 R6
       27 LOADN                            R7 0
       28 JUMPIFNOTLT                      R7 R5 ; [+3]
       30 DIVRK                            R6 R1 K5 ["R"]
       31 JUMPIF                           R6 ; [+1]
       32 LOADN                            R6 0
       33 GETTABLEKS                       R11 R1 K4 ["Color3"]
       35 GETTABLEKS                       R10 R11 K5 ["R"]
       37 MUL                              R9 R10 R2
       38 GETTABLEKS                       R12 R0 K4 ["Color3"]
       40 GETTABLEKS                       R11 R12 K5 ["R"]
       42 MUL                              R12 R3 R4
       43 MUL                              R10 R11 R12
       44 ADD                              R8 R9 R10
       45 MUL                              R7 R8 R6
       46 GETTABLEKS                       R12 R1 K4 ["Color3"]
       48 GETTABLEKS                       R11 R12 K6 ["G"]
       50 MUL                              R10 R11 R2
       51 GETTABLEKS                       R13 R0 K4 ["Color3"]
       53 GETTABLEKS                       R12 R13 K6 ["G"]
       55 MUL                              R13 R3 R4
       56 MUL                              R11 R12 R13
       57 ADD                              R9 R10 R11
       58 MUL                              R8 R9 R6
       59 GETTABLEKS                       R13 R1 K4 ["Color3"]
       61 GETTABLEKS                       R12 R13 K7 ["B"]
       63 MUL                              R11 R12 R2
       64 GETTABLEKS                       R14 R0 K4 ["Color3"]
       66 GETTABLEKS                       R13 R14 K7 ["B"]
       68 MUL                              R14 R3 R4
       69 MUL                              R12 R13 R14
       70 ADD                              R10 R11 R12
       71 MUL                              R9 R10 R6
       72 DUPTABLE                         R10 K8 [{"Color3", "Transparency"}]
       73 GETIMPORT                        R11 K10 [Color3.new]
       75 MOVE                             R12 R7
       76 MOVE                             R13 R8
       77 MOVE                             R14 R9
       78 CALL                             R11 3 1
       79 SETTABLEKS                       R11 R10 K4 ["Color3"]
       81 SUBRK                            R11 R1 K5 ["R"]
       82 SETTABLEKS                       R11 R10 K3 ["Transparency"]
       84 RETURN                           R10 1
       85 GETTABLEKS                       R2 R1 K3 ["Transparency"]
       87 JUMPIFNOTEQKN                    R2 K1 [1] ; [+11]
       89 DUPTABLE                         R2 K8 [{"Color3", "Transparency"}]
       90 GETTABLEKS                       R3 R0 K4 ["Color3"]
       92 SETTABLEKS                       R3 R2 K4 ["Color3"]
       94 GETTABLEKS                       R3 R0 K3 ["Transparency"]
       96 SETTABLEKS                       R3 R2 K3 ["Transparency"]
       98 RETURN                           R2 1
       99 GETTABLEKS                       R2 R0 K4 ["Color3"]
      101 JUMPIFEQKNIL                     R2 ; [+5]
      103 GETTABLEKS                       R2 R0 K3 ["Transparency"]
      105 JUMPIFNOTEQKN                    R2 K1 [1] ; [+11]
      107 DUPTABLE                         R2 K8 [{"Color3", "Transparency"}]
      108 GETTABLEKS                       R3 R1 K4 ["Color3"]
      110 SETTABLEKS                       R3 R2 K4 ["Color3"]
      112 GETTABLEKS                       R3 R1 K3 ["Transparency"]
      114 SETTABLEKS                       R3 R2 K3 ["Transparency"]
      116 RETURN                           R2 1
      117 GETTABLEKS                       R3 R0 K3 ["Transparency"]
      119 ORK                              R2 R3 K2 [0]
      120 DUPTABLE                         R3 K8 [{"Color3", "Transparency"}]
      121 GETTABLEKS                       R4 R0 K4 ["Color3"]
      123 GETTABLEKS                       R6 R1 K4 ["Color3"]
      125 GETTABLEKS                       R8 R1 K3 ["Transparency"]
      127 SUBRK                            R7 R1 K8 [{"Color3", "Transparency"}]
      128 NAMECALL                         R4 R4 K11 ["Lerp"]
      130 CALL                             R4 3 1
      131 SETTABLEKS                       R4 R3 K4 ["Color3"]
      133 GETUPVAL                         R4 1
      134 MOVE                             R5 R2
      135 GETTABLEKS                       R6 R1 K3 ["Transparency"]
      137 MOVE                             R7 R2
      138 CALL                             R4 3 1
      139 SETTABLEKS                       R4 R3 K3 ["Transparency"]
      141 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R4 K9 ["lerp"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Utility"]
       25 GETTABLEKS                       R4 R5 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 RETURN                           R4 1
