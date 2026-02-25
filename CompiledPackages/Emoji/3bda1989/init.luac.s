PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 NEWTABLE                         R0 0 0
        6 SETUPVAL                         R0 0
        7 GETIMPORT                        R0 K1 [require]
        9 GETIMPORT                        R2 K3 [script]
       11 GETTABLEKS                       R1 R2 K4 ["Data"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K6 [pairs]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 3
       18 FORGPREP_NEXT                    R1
       19 GETIMPORT                        R6 K6 [pairs]
       21 GETTABLEKS                       R7 R5 K7 ["items"]
       23 CALL                             R6 1 3
       24 FORGPREP_NEXT                    R6
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R12 R10 K8 ["name"]
       28 SETTABLE                         R10 R11 R12
       29 FORGLOOP                         R6 2 ; [-5]
       31 FORGLOOP                         R1 2 ; [-13]
       33 GETUPVAL                         R1 0
       34 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLE                         R2 R1 R0
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLE                         R3 R1 R0
        5 GETTABLEKS                       R2 R3 K0 ["base"]
        7 RETURN                           R2 1
        8 LOADK                            R4 K1 ["[2-6]$"]
        9 NAMECALL                         R2 R0 K2 ["match"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+23]
       13 FASTCALL1                        TONUMBER R2 ; [+3]
       14 MOVE                             R4 R2
       15 GETIMPORT                        R3 K4 [tonumber]
       17 CALL                             R3 1 1
       18 MOVE                             R2 R3
       19 LOADN                            R5 1
       20 LOADN                            R6 254
       21 NAMECALL                         R3 R0 K5 ["sub"]
       23 CALL                             R3 3 1
       24 MOVE                             R0 R3
       25 GETTABLE                         R3 R1 R0
       26 JUMPIFNOT                        R3 ; [+9]
       27 GETTABLE                         R4 R1 R0
       28 GETTABLEKS                       R3 R4 K6 ["alts"]
       30 JUMPIFNOT                        R3 ; [+5]
       31 GETTABLE                         R5 R1 R0
       32 GETTABLEKS                       R4 R5 K6 ["alts"]
       34 GETTABLE                         R3 R4 R2
       35 RETURN                           R3 1
       36 LOADNIL                          R3
       37 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R2 K3 [script]
        4 GETTABLEKS                       R1 R2 K4 ["Data"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          REF R0
        4 DUPCLOSURE                       R2 K0 [PROTO_1]
        5 CAPTURE                          VAL R1
        6 DUPCLOSURE                       R3 K1 [PROTO_2]
        7 DUPTABLE                         R4 K4 [{"getNamedEmoji", "getCategories"}]
        8 SETTABLEKS                       R2 R4 K2 ["getNamedEmoji"]
       10 SETTABLEKS                       R3 R4 K3 ["getCategories"]
       12 CLOSEUPVALS                      R0
       13 RETURN                           R4 1
