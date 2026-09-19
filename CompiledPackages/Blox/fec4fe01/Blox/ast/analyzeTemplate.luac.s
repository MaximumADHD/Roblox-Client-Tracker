PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["defaultParams"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETIMPORT                        R7 K3 [string.match]
        7 MOVE                             R8 R5
        8 LOADK                            R9 K4 ["^[A-Z]"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+18]
       11 GETUPVAL                         R7 0
       12 MOVE                             R8 R0
       13 MOVE                             R9 R5
       14 CALL                             R7 2 1
       15 JUMPIF                           R7 ; [+13]
       16 LOADK                            R10 K5 ["Blox: Template '%*' is missing inner template '%*'"]
       17 GETTABLEKS                       R12 R0 K6 ["name"]
       19 MOVE                             R13 R5
       20 NAMECALL                         R10 R10 K7 ["format"]
       22 CALL                             R10 3 1
       23 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       25 MOVE                             R9 R1
       26 GETIMPORT                        R8 K10 [table.insert]
       28 CALL                             R8 2 0
       29 FORGLOOP                         R2 2 ; [-25]
       31 GETTABLEKS                       R2 R0 K11 ["analyze"]
       33 JUMPIFNOT                        R2 ; [+5]
       34 GETTABLEKS                       R2 R0 K11 ["analyze"]
       36 MOVE                             R3 R0
       37 MOVE                             R4 R1
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

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
