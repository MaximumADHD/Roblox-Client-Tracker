PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["Disconnect"]
        5 CALL                             R2 1 0
        6 LOADNIL                          R2
        7 SETUPVAL                         R2 0
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["MultiGetCanCollaborate"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["MultiGetCanCollaborateRetrieved"]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R3 R3 K1 ["Connect"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 GETIMPORT                        R3 K3 [pcall]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CALL                             R3 1 2
       17 JUMPIF                           R3 ; [+8]
       18 JUMPIFNOT                        R2 ; [+4]
       19 NAMECALL                         R5 R2 K4 ["Disconnect"]
       21 CALL                             R5 1 0
       22 LOADNIL                          R2
       23 MOVE                             R5 R1
       24 MOVE                             R6 R4
       25 CALL                             R5 1 0
       26 CLOSEUPVALS                      R2
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K1 ["await"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 0
        3 JUMPIFNOTLE                      R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 NAMECALL                         R1 R0 K0 ["getState"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R1 R1 K1 ["CanCollaborateResponses"]
       11 JUMPIF                           R1 ; [+2]
       12 NEWTABLE                         R1 0 0
       14 NEWTABLE                         R2 0 0
       16 GETIMPORT                        R3 K3 [ipairs]
       18 GETUPVAL                         R4 0
       19 CALL                             R3 1 3
       20 FORGPREP_INEXT                   R3
       21 GETTABLE                         R8 R1 R7
       22 JUMPIFNOTEQKNIL                  R8 ; [+8]
       24 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       26 MOVE                             R9 R2
       27 MOVE                             R10 R7
       28 GETIMPORT                        R8 K6 [table.insert]
       30 CALL                             R8 2 0
       31 FORGLOOP                         R3 2 [inext] ; [-11]
       33 LENGTH                           R3 R2
       34 LOADN                            R4 0
       35 JUMPIFNOTLE                      R3 R4 ; [+2]
       37 RETURN                           R0 0
       38 GETUPVAL                         R3 1
       39 JUMPIFNOT                        R3 ; [+1]
       40 RETURN                           R0 0
       41 LOADB                            R3 1
       42 SETUPVAL                         R3 1
       43 GETIMPORT                        R3 K8 [table.concat]
       45 MOVE                             R4 R2
       46 LOADK                            R5 K9 [","]
       47 CALL                             R3 2 1
       48 NEWCLOSURE                       R4 P0
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R3
       52 GETIMPORT                        R5 K11 [pcall]
       54 NEWCLOSURE                       R6 P1
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R3
       58 CALL                             R5 1 2
       59 LOADB                            R7 0
       60 SETUPVAL                         R7 1
       61 JUMPIFNOT                        R5 ; [+1]
       62 JUMPIF                           R6 ; [+1]
       63 RETURN                           R0 0
       64 NEWTABLE                         R7 0 0
       66 NEWTABLE                         R8 0 0
       68 GETIMPORT                        R9 K13 [pairs]
       70 MOVE                             R10 R6
       71 CALL                             R9 1 3
       72 FORGPREP_NEXT                    R9
       73 JUMPIFNOT                        R13 ; [+23]
       74 GETTABLEKS                       R14 R13 K14 ["UserId"]
       76 JUMPIFNOT                        R14 ; [+20]
       77 GETTABLEKS                       R14 R13 K15 ["Error"]
       79 JUMPIFNOT                        R14 ; [+5]
       80 GETTABLEKS                       R14 R13 K14 ["UserId"]
       82 GETTABLEKS                       R15 R13 K15 ["Error"]
       84 SETTABLE                         R15 R7 R14
       85 GETUPVAL                         R14 4
       86 GETTABLEKS                       R14 R14 K16 ["fflagManageCollaboratorsEditorBlockingBanner"]
       88 JUMPIFNOT                        R14 ; [+8]
       89 GETTABLEKS                       R14 R13 K17 ["RequiresTrustedConnection"]
       91 JUMPIFNOT                        R14 ; [+5]
       92 GETTABLEKS                       R14 R13 K14 ["UserId"]
       94 GETTABLEKS                       R15 R13 K17 ["RequiresTrustedConnection"]
       96 SETTABLE                         R15 R8 R14
       97 FORGLOOP                         R9 2 ; [-25]
       99 GETUPVAL                         R11 5
      100 MOVE                             R12 R7
      101 CALL                             R11 1 -1
      102 NAMECALL                         R9 R0 K18 ["dispatch"]
      104 CALL                             R9 -1 0
      105 GETUPVAL                         R9 4
      106 GETTABLEKS                       R9 R9 K16 ["fflagManageCollaboratorsEditorBlockingBanner"]
      108 JUMPIFNOT                        R9 ; [+6]
      109 GETUPVAL                         R11 6
      110 MOVE                             R12 R8
      111 CALL                             R11 1 -1
      112 NAMECALL                         R9 R0 K18 ["dispatch"]
      114 CALL                             R9 -1 0
      115 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["Promise"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K9 ["Bin"]
       24 GETTABLEKS                       R5 R5 K10 ["defineLuaFlags"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K12 [game]
       29 LOADK                            R7 K13 ["CollaboratorsService"]
       30 NAMECALL                         R5 R5 K14 ["GetService"]
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R0 K15 ["Src"]
       37 GETTABLEKS                       R7 R7 K16 ["Actions"]
       39 GETTABLEKS                       R7 R7 K17 ["SetCanCollaborateResponses"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K4 [require]
       44 GETTABLEKS                       R8 R0 K15 ["Src"]
       46 GETTABLEKS                       R8 R8 K16 ["Actions"]
       48 GETTABLEKS                       R8 R8 K18 ["SetRequiresTrustedConnectionData"]
       50 CALL                             R7 1 1
       51 LOADB                            R8 0
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          REF R8
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CLOSEUPVALS                      R8
       60 RETURN                           R9 1
