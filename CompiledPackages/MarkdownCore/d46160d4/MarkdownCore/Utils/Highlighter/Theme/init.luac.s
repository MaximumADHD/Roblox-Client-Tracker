PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Theme.updateColors expects a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 MOVE                             R1 R0
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K6 ["tokenColors"]
       22 SETTABLE                         R5 R6 R4
       23 FORGLOOP                         R1 2 ; [-5]
       25 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["<font color=\"#"]
        1 NAMECALL                         R8 R0 K1 ["ToHex"]
        3 CALL                             R8 1 1
        4 MOVE                             R4 R8
        5 LOADK                            R5 K2 ["\">"]
        6 MOVE                             R6 R1
        7 LOADK                            R7 K3 ["</font>"]
        8 CONCAT                           R2 R3 R7
        9 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["tokenColors"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Utils"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R2 R3 K7 ["defaultTokenColors"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Types"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K11 [{"tokenColors", "defaultColors"}]
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R3 K9 ["tokenColors"]
       26 SETTABLEKS                       R1 R3 K10 ["defaultColors"]
       28 DUPCLOSURE                       R4 K12 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R4 R3 K13 ["setColors"]
       32 DUPCLOSURE                       R4 K14 [PROTO_1]
       33 SETTABLEKS                       R4 R3 K15 ["getColoredRichText"]
       35 DUPCLOSURE                       R4 K16 [PROTO_2]
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R4 R3 K17 ["getColor"]
       39 GETTABLEKS                       R4 R3 K13 ["setColors"]
       41 MOVE                             R5 R1
       42 CALL                             R4 1 0
       43 RETURN                           R3 1
