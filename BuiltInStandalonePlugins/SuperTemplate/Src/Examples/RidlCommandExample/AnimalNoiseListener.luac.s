PROTO_0:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 MOVE                             R6 R5
        6 MOVE                             R7 R0
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SayHelloToTheAnimalsAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+5]
        7 GETIMPORT                        R3 K3 [warn]
        9 LOADK                            R4 K4 ["Failed to say hello to animals:"]
       10 MOVE                             R5 R2
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETIMPORT                        R0 K3 [table.clear]
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["OnAnimalsMakeCuteNoises"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["Connect"]
        8 CALL                             R2 2 1
        9 DUPTABLE                         R3 K5 [{"onNoiseReceived", "sayHelloToAnimals", "destroy"}]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R4 R3 K2 ["onNoiseReceived"]
       14 NEWCLOSURE                       R4 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R4 R3 K3 ["sayHelloToAnimals"]
       18 NEWCLOSURE                       R4 P3
       19 CAPTURE                          REF R2
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R4 R3 K4 ["destroy"]
       23 CLOSEUPVALS                      R2
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_5]
        2 DUPTABLE                         R1 K2 [{"create"}]
        3 SETTABLEKS                       R0 R1 K1 ["create"]
        5 RETURN                           R1 1
