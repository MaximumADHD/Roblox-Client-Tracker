PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["name"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R3 K3 ["Skill with name \"%*\" is already registered. Overwriting."]
        8 GETTABLEKS                       R5 R0 K0 ["name"]
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R2 R0 K0 ["name"]
       18 SETTABLE                         R0 R1 R2
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 SETTABLE                         R5 R0 R4
        8 FORGLOOP                         R1 2 ; [-2]
       10 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R4
       11 GETIMPORT                        R6 K4 [table.insert]
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 1 ; [-8]
       16 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["SkillDefinition"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 8 0
       12 NEWTABLE                         R2 0 0
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          REF R2
       16 SETTABLEKS                       R3 R1 K6 ["register"]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          REF R2
       20 SETTABLEKS                       R3 R1 K7 ["get"]
       22 NEWCLOSURE                       R3 P2
       23 CAPTURE                          REF R2
       24 SETTABLEKS                       R3 R1 K8 ["getAll"]
       26 NEWCLOSURE                       R3 P3
       27 CAPTURE                          REF R2
       28 SETTABLEKS                       R3 R1 K9 ["getNames"]
       30 NEWCLOSURE                       R3 P4
       31 CAPTURE                          REF R2
       32 SETTABLEKS                       R3 R1 K10 ["clear"]
       34 CLOSEUPVALS                      R2
       35 RETURN                           R1 1
