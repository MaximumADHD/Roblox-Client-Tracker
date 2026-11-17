PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["update"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["update"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 1 0
        2 LOADB                            R2 0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["data"]
        6 GETTABLEKS                       R3 R3 K1 ["changes"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 JUMPIFNOTEQKS                    R6 K2 ["Attributes"] ; [+20]
       13 LOADB                            R2 1
       14 NEWTABLE                         R8 0 0
       16 SETTABLEKS                       R8 R1 K2 ["Attributes"]
       18 MOVE                             R8 R7
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 FORGPREP                         R8
       22 GETTABLEKS                       R13 R1 K2 ["Attributes"]
       24 MOVE                             R16 R11
       25 NAMECALL                         R14 R0 K3 ["GetAttribute"]
       27 CALL                             R14 2 1
       28 SETTABLE                         R14 R13 R11
       29 FORGLOOP                         R8 1 ; [-8]
       31 JUMP                             ; [+2]
       32 GETTABLE                         R8 R0 R6
       33 SETTABLE                         R8 R1 R6
       34 FORGLOOP                         R3 2 ; [-24]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K4 ["watches"]
       39 DUPTABLE                         R5 K7 [{"instance", "initialValues"}]
       40 SETTABLEKS                       R0 R5 K5 ["instance"]
       42 SETTABLEKS                       R1 R5 K6 ["initialValues"]
       44 FASTCALL2                        TABLE_INSERT R4 R5 ; [+2]
       46 GETUPVAL                         R3 1
       47 CALL                             R3 2 0
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K8 ["connections"]
       51 GETTABLEKS                       R5 R0 K9 ["Changed"]
       53 NEWCLOSURE                       R7 P0
       54 CAPTURE                          UPVAL U0
       55 NAMECALL                         R5 R5 K10 ["Connect"]
       57 CALL                             R5 2 -1
       58 FASTCALL                         TABLE_INSERT ; [+1]
       59 GETUPVAL                         R3 1
       60 CALL                             R3 -1 0
       61 JUMPIFNOT                        R2 ; [+13]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K8 ["connections"]
       65 GETTABLEKS                       R5 R0 K11 ["AttributeChanged"]
       67 NEWCLOSURE                       R7 P1
       68 CAPTURE                          UPVAL U0
       69 NAMECALL                         R5 R5 K10 ["Connect"]
       71 CALL                             R5 2 -1
       72 FASTCALL                         TABLE_INSERT ; [+1]
       73 GETUPVAL                         R3 1
       74 CALL                             R3 -1 0
       75 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 GETTABLEKS                       R1 R1 K1 ["dataModel"]
        4 LOADK                            R4 K2 ["Workspace"]
        5 NAMECALL                         R2 R1 K3 ["GetService"]
        7 CALL                             R2 2 1
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R0 K4 ["connections"]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R0 K5 ["watches"]
       16 GETTABLEKS                       R3 R0 K0 ["tutorial"]
       18 MOVE                             R5 R2
       19 GETTABLEKS                       R6 R0 K6 ["data"]
       21 GETTABLEKS                       R6 R6 K7 ["className"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 NAMECALL                         R3 R3 K8 ["syncChildren"]
       28 CALL                             R3 4 1
       29 GETTABLEKS                       R5 R0 K4 ["connections"]
       31 FASTCALL2                        TABLE_INSERT R5 R3 ; [+3]
       33 MOVE                             R6 R3
       34 GETUPVAL                         R4 0
       35 CALL                             R4 2 0
       36 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKB                    R0 TRUE ; [+19]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["instance"]
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R3 K1 ["GetAttribute"]
        8 CALL                             R3 2 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K2 ["initialValues"]
       12 GETTABLEKS                       R5 R5 K3 ["Attributes"]
       14 GETTABLE                         R4 R5 R1
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["instance"]
       23 MOVE                             R5 R1
       24 NAMECALL                         R3 R3 K1 ["GetAttribute"]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 1
       28 JUMPIFNOTEQ                      R3 R4 ; [+2]
       30 LOADB                            R2 0 +1
       31 LOADB                            R2 1
       32 RETURN                           R2 1

PROTO_5:
        0 JUMPIFNOTEQKS                    R1 K0 ["Attributes"] ; [+8]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 2 1
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKB                    R0 TRUE ; [+14]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K1 ["instance"]
       14 GETTABLE                         R3 R4 R1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K2 ["initialValues"]
       18 GETTABLE                         R4 R5 R1
       19 JUMPIFEQ                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K1 ["instance"]
       27 GETTABLE                         R3 R4 R1
       28 JUMPIFNOTEQ                      R3 R0 ; [+2]
       30 LOADB                            R2 0 +1
       31 LOADB                            R2 1
       32 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["data"]
        4 GETTABLEKS                       R2 R2 K1 ["changes"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CALL                             R1 2 1
       10 NOT                              R2 R1
       11 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["watches"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 NAMECALL                         R2 R0 K1 ["complete"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["connections"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 NAMECALL                         R6 R5 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Dash"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["some"]
       20 GETIMPORT                        R3 K10 [table.insert]
       22 GETIMPORT                        R4 K4 [require]
       24 GETIMPORT                        R5 K1 [script]
       26 GETTABLEKS                       R5 R5 K2 ["Parent"]
       28 GETTABLEKS                       R5 R5 K11 ["TutorialStep"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R4 K12 ["extend"]
       33 LOADK                            R6 K13 ["Edit"]
       34 CALL                             R5 1 1
       35 LOADB                            R6 1
       36 SETTABLEKS                       R6 R5 K14 ["showComplete"]
       38 DUPCLOSURE                       R6 K15 [PROTO_3]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R6 R5 K16 ["bind"]
       42 DUPCLOSURE                       R6 K17 [PROTO_7]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R6 R5 K18 ["update"]
       46 DUPCLOSURE                       R6 K19 [PROTO_8]
       47 SETTABLEKS                       R6 R5 K20 ["unbind"]
       49 RETURN                           R5 1
