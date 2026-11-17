PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 GETTABLEKS                       R2 R2 K2 ["GameId"]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R0 R0 K3 ["getEligibility"]
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R0 K1 [pcall]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R2 1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R7 2
       12 LOADNIL                          R8
       13 SETTABLE                         R8 R7 R6
       14 FORGLOOP                         R2 2 ; [-4]
       16 JUMPIF                           R0 ; [+7]
       17 GETIMPORT                        R2 K3 [warn]
       19 LOADK                            R3 K4 ["getEligibility failed"]
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 NEWTABLE                         R1 0 0
       24 NEWTABLE                         R2 0 0
       26 GETUPVAL                         R3 1
       27 LOADNIL                          R4
       28 LOADNIL                          R5
       29 FORGPREP                         R3
       30 GETTABLE                         R9 R1 R7
       31 JUMPIFEQKB                       R9 TRUE ; [+2]
       33 LOADB                            R8 0 +1
       34 LOADB                            R8 1
       35 SETTABLE                         R8 R2 R7
       36 FORGLOOP                         R3 2 ; [-7]
       38 GETUPVAL                         R3 3
       39 GETUPVAL                         R5 4
       40 MOVE                             R6 R2
       41 CALL                             R5 1 -1
       42 NAMECALL                         R3 R3 K5 ["dispatch"]
       44 CALL                             R3 -1 0
       45 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["playTestersController"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["fflagEarlyTesterEligibilityFilter"]
        5 JUMPIFNOT                        R3 ; [+2]
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 RETURN                           R0 0
        9 NAMECALL                         R3 R0 K2 ["getState"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R3 R3 K3 ["EarlyTesters"]
       14 GETTABLEKS                       R3 R3 K4 ["MemberEligibility"]
       16 NEWTABLE                         R4 0 0
       18 GETUPVAL                         R5 1
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETTABLEKS                       R10 R9 K5 ["userId"]
       24 GETTABLE                         R11 R3 R10
       25 JUMPIFNOTEQKNIL                  R11 ; [+14]
       27 GETUPVAL                         R12 2
       28 GETTABLE                         R11 R12 R10
       29 JUMPIF                           R11 ; [+10]
       30 GETUPVAL                         R11 2
       31 LOADB                            R12 1
       32 SETTABLE                         R12 R11 R10
       33 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       35 MOVE                             R12 R4
       36 MOVE                             R13 R10
       37 GETIMPORT                        R11 K8 [table.insert]
       39 CALL                             R11 2 0
       40 FORGLOOP                         R5 2 ; [-19]
       42 LENGTH                           R5 R4
       43 JUMPIFNOTEQKN                    R5 K9 [0] ; [+2]
       45 RETURN                           R0 0
       46 GETIMPORT                        R5 K12 [coroutine.wrap]
       48 NEWCLOSURE                       R6 P0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R4
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U3
       54 CALL                             R5 1 1
       55 CALL                             R5 0 0
       56 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["AddEarlyTesterMemberEligibility"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 0 0
       27 DUPCLOSURE                       R4 K10 [PROTO_3]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 RETURN                           R4 1
