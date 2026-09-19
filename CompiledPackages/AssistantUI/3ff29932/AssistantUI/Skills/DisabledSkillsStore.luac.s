PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["name"]
        3 SETTABLE                         R0 R1 R2
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Changed"]
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 0
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R1 R0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["Changed"]
        9 NAMECALL                         R1 R1 K1 ["Fire"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Changed"]
        6 NAMECALL                         R0 R0 K1 ["Fire"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["source"]
        7 JUMPIFNOTEQ                      R7 R0 ; [+5]
        9 GETUPVAL                         R7 0
       10 LOADNIL                          R8
       11 SETTABLE                         R8 R7 R5
       12 LOADB                            R1 1
       13 FORGLOOP                         R2 2 ; [-9]
       15 JUMPIFNOT                        R1 ; [+6]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K1 ["Changed"]
       19 NAMECALL                         R2 R2 K2 ["Fire"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["SkillDefinition"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 8 0
       25 NEWTABLE                         R4 0 0
       27 GETTABLEKS                       R5 R1 K9 ["new"]
       29 CALL                             R5 0 1
       30 SETTABLEKS                       R5 R3 K10 ["Changed"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          REF R4
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R5 R3 K11 ["store"]
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          REF R4
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R3 K12 ["remove"]
       42 NEWCLOSURE                       R5 P2
       43 CAPTURE                          REF R4
       44 SETTABLEKS                       R5 R3 K13 ["get"]
       46 NEWCLOSURE                       R5 P3
       47 CAPTURE                          REF R4
       48 SETTABLEKS                       R5 R3 K14 ["getAll"]
       50 NEWCLOSURE                       R5 P4
       51 CAPTURE                          REF R4
       52 SETTABLEKS                       R5 R3 K15 ["isDisabled"]
       54 NEWCLOSURE                       R5 P5
       55 CAPTURE                          REF R4
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R5 R3 K16 ["clear"]
       59 NEWCLOSURE                       R5 P6
       60 CAPTURE                          REF R4
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R5 R3 K17 ["clearSource"]
       64 CLOSEUPVALS                      R4
       65 RETURN                           R3 1
