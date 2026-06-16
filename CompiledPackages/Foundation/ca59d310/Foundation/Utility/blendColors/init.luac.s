PROTO_0:
        0 GETTABLEKS                       R4 R1 K2 ["Transparency"]
        2 ORK                              R3 R4 K1 [0]
        3 SUBRK                            R2 R0 K3 ["Color3"]
        4 GETTABLEKS                       R5 R0 K2 ["Transparency"]
        6 ORK                              R4 R5 K1 [0]
        7 SUBRK                            R3 R0 K4 ["R"]
        8 JUMPIFEQKN                       R2 K0 [1] ; [+7]
       10 JUMPIFEQKN                       R3 K1 [0] ; [+5]
       12 GETTABLEKS                       R4 R0 K3 ["Color3"]
       14 JUMPIFNOTEQKNIL                  R4 ; [+2]
       16 RETURN                           R1 1
       17 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
       19 RETURN                           R0 1
       20 SUBRK                            R4 R0 K2 ["Transparency"]
       21 MUL                              R6 R3 R4
       22 ADD                              R5 R2 R6
       23 LOADN                            R7 0
       24 JUMPIFNOTLT                      R7 R5 ; [+3]
       26 DIVRK                            R6 R0 K5 ["G"]
       27 JUMPIF                           R6 ; [+1]
       28 LOADN                            R6 0
       29 GETTABLEKS                       R10 R1 K3 ["Color3"]
       31 GETTABLEKS                       R10 R10 K4 ["R"]
       33 MUL                              R9 R10 R2
       34 GETTABLEKS                       R11 R0 K3 ["Color3"]
       36 GETTABLEKS                       R11 R11 K4 ["R"]
       38 MUL                              R12 R3 R4
       39 MUL                              R10 R11 R12
       40 ADD                              R8 R9 R10
       41 MUL                              R7 R8 R6
       42 GETTABLEKS                       R11 R1 K3 ["Color3"]
       44 GETTABLEKS                       R11 R11 K5 ["G"]
       46 MUL                              R10 R11 R2
       47 GETTABLEKS                       R12 R0 K3 ["Color3"]
       49 GETTABLEKS                       R12 R12 K5 ["G"]
       51 MUL                              R13 R3 R4
       52 MUL                              R11 R12 R13
       53 ADD                              R9 R10 R11
       54 MUL                              R8 R9 R6
       55 GETTABLEKS                       R12 R1 K3 ["Color3"]
       57 GETTABLEKS                       R12 R12 K6 ["B"]
       59 MUL                              R11 R12 R2
       60 GETTABLEKS                       R13 R0 K3 ["Color3"]
       62 GETTABLEKS                       R13 R13 K6 ["B"]
       64 MUL                              R14 R3 R4
       65 MUL                              R12 R13 R14
       66 ADD                              R10 R11 R12
       67 MUL                              R9 R10 R6
       68 DUPTABLE                         R10 K7 [{"Color3", "Transparency"}]
       69 GETIMPORT                        R11 K9 [Color3.new]
       71 MOVE                             R12 R7
       72 MOVE                             R13 R8
       73 MOVE                             R14 R9
       74 CALL                             R11 3 1
       75 SETTABLEKS                       R11 R10 K3 ["Color3"]
       77 SUBRK                            R11 R0 K5 ["G"]
       78 SETTABLEKS                       R11 R10 K2 ["Transparency"]
       80 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
