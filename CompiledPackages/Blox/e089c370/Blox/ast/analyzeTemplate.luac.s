PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["defaultParams"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETIMPORT                        R7 K3 [string.match]
        7 MOVE                             R8 R5
        8 LOADK                            R9 K4 ["^[A-Z]"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+19]
       11 GETUPVAL                         R7 0
       12 MOVE                             R8 R0
       13 MOVE                             R9 R5
       14 CALL                             R7 2 1
       15 JUMPIF                           R7 ; [+14]
       16 LOADK                            R11 K5 ["Blox: Template '%*' is missing inner template '%*'"]
       17 GETTABLEKS                       R13 R0 K6 ["name"]
       19 MOVE                             R14 R5
       20 NAMECALL                         R11 R11 K7 ["format"]
       22 CALL                             R11 3 1
       23 MOVE                             R10 R11
       24 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       26 MOVE                             R9 R1
       27 GETIMPORT                        R8 K10 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R2 2 ; [-26]
       32 GETTABLEKS                       R2 R0 K11 ["analyze"]
       34 JUMPIFNOT                        R2 ; [+5]
       35 GETTABLEKS                       R2 R0 K11 ["analyze"]
       37 MOVE                             R3 R0
       38 MOVE                             R4 R1
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["ast"]
       16 GETTABLEKS                       R3 R3 K7 ["getChildTemplate"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K8 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
