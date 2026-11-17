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
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 FASTPCALL                        pcall 1 ; [+2]
       15 GETIMPORT                        R3 K3 [pcall]
       17 CALL                             R3 1 2
       18 JUMPIF                           R3 ; [+8]
       19 JUMPIFNOT                        R2 ; [+4]
       20 NAMECALL                         R5 R2 K4 ["Disconnect"]
       22 CALL                             R5 1 0
       23 LOADNIL                          R2
       24 MOVE                             R5 R1
       25 MOVE                             R6 R4
       26 CALL                             R5 1 0
       27 CLOSEUPVALS                      R2
       28 RETURN                           R0 0

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
       16 NEWTABLE                         R3 0 0
       18 GETIMPORT                        R4 K3 [ipairs]
       20 GETUPVAL                         R5 0
       21 CALL                             R4 1 3
       22 FORGPREP_INEXT                   R4
       23 GETTABLE                         R9 R1 R8
       24 JUMPIFNOTEQKNIL                  R9 ; [+12]
       26 GETTABLE                         R9 R2 R8
       27 JUMPIF                           R9 ; [+9]
       28 LOADB                            R9 1
       29 SETTABLE                         R9 R2 R8
       30 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       32 MOVE                             R10 R3
       33 MOVE                             R11 R8
       34 GETIMPORT                        R9 K6 [table.insert]
       36 CALL                             R9 2 0
       37 FORGLOOP                         R4 2 [inext] ; [-15]
       39 LENGTH                           R4 R3
       40 LOADN                            R5 0
       41 JUMPIFNOTLE                      R4 R5 ; [+2]
       43 RETURN                           R0 0
       44 GETUPVAL                         R4 1
       45 JUMPIFNOT                        R4 ; [+1]
       46 RETURN                           R0 0
       47 LOADB                            R4 1
       48 SETUPVAL                         R4 1
       49 GETIMPORT                        R4 K8 [table.concat]
       51 MOVE                             R5 R3
       52 LOADK                            R6 K9 [","]
       53 CALL                             R4 2 1
       54 NEWCLOSURE                       R5 P0
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R4
       58 NEWCLOSURE                       R7 P1
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          VAL R4
       62 FASTPCALL                        pcall 1 ; [+2]
       63 GETIMPORT                        R6 K11 [pcall]
       65 CALL                             R6 1 2
       66 LOADB                            R8 0
       67 SETUPVAL                         R8 1
       68 JUMPIFNOT                        R6 ; [+1]
       69 JUMPIF                           R7 ; [+1]
       70 RETURN                           R0 0
       71 NEWTABLE                         R8 0 0
       73 NEWTABLE                         R9 0 0
       75 GETIMPORT                        R10 K13 [pairs]
       77 MOVE                             R11 R7
       78 CALL                             R10 1 3
       79 FORGPREP_NEXT                    R10
       80 JUMPIFNOT                        R14 ; [+30]
       81 GETTABLEKS                       R15 R14 K14 ["UserId"]
       83 JUMPIFNOT                        R15 ; [+27]
       84 GETTABLEKS                       R15 R14 K15 ["Error"]
       86 JUMPIFNOT                        R15 ; [+12]
       87 GETTABLEKS                       R15 R14 K14 ["UserId"]
       89 DUPTABLE                         R16 K18 [{"canCollaborate", "error"}]
       90 GETTABLEKS                       R17 R14 K19 ["CanCollaborate"]
       92 SETTABLEKS                       R17 R16 K16 ["canCollaborate"]
       94 GETTABLEKS                       R17 R14 K15 ["Error"]
       96 SETTABLEKS                       R17 R16 K17 ["error"]
       98 SETTABLE                         R16 R8 R15
       99 GETUPVAL                         R15 4
      100 GETTABLEKS                       R15 R15 K20 ["fflagManageCollaboratorsEditorBlockingBanner"]
      102 JUMPIFNOT                        R15 ; [+8]
      103 GETTABLEKS                       R15 R14 K21 ["RequiresTrustedConnection"]
      105 JUMPIFNOT                        R15 ; [+5]
      106 GETTABLEKS                       R15 R14 K14 ["UserId"]
      108 GETTABLEKS                       R16 R14 K21 ["RequiresTrustedConnection"]
      110 SETTABLE                         R16 R9 R15
      111 FORGLOOP                         R10 2 ; [-32]
      113 GETUPVAL                         R12 5
      114 MOVE                             R13 R8
      115 CALL                             R12 1 -1
      116 NAMECALL                         R10 R0 K22 ["dispatch"]
      118 CALL                             R10 -1 0
      119 GETUPVAL                         R10 4
      120 GETTABLEKS                       R10 R10 K20 ["fflagManageCollaboratorsEditorBlockingBanner"]
      122 JUMPIFNOT                        R10 ; [+6]
      123 GETUPVAL                         R12 6
      124 MOVE                             R13 R9
      125 CALL                             R12 1 -1
      126 NAMECALL                         R10 R0 K22 ["dispatch"]
      128 CALL                             R10 -1 0
      129 RETURN                           R0 0

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
