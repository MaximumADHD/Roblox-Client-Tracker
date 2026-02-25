PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["SetView"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K2 ["ChangeCurrentEventName"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isOpen"}]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K2 ["state"]
        5 GETTABLEKS                       R4 R5 K0 ["isOpen"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["isOpen"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL1                        TOSTRING R6 ; [+3]
        8 MOVE                             R10 R6
        9 GETIMPORT                        R9 K3 [tostring]
       11 CALL                             R9 1 1
       12 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K6 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-12]
       20 RETURN                           R1 1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["selectItem"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["toggle"]
        8 DUPCLOSURE                       R1 K2 [PROTO_2]
        9 CAPTURE                          UPVAL U0
       10 MOVE                             R2 R1
       11 GETUPVAL                         R3 0
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R0 K3 ["Items"]
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"OnItemActivated", "PlaceholderText", "Items"}]
        5 GETTABLEKS                       R4 R0 K5 ["selectItem"]
        7 SETTABLEKS                       R4 R3 K1 ["OnItemActivated"]
        9 GETTABLEKS                       R5 R0 K6 ["props"]
       11 GETTABLEKS                       R4 R5 K7 ["ActiveView"]
       13 SETTABLEKS                       R4 R3 K2 ["PlaceholderText"]
       15 GETTABLEKS                       R4 R0 K3 ["Items"]
       17 SETTABLEKS                       R4 R3 K3 ["Items"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_5:
        0 DUPTABLE                         R2 K1 [{"ActiveView"}]
        1 GETTABLEKS                       R4 R0 K2 ["Status"]
        3 GETTABLEKS                       R3 R4 K0 ["ActiveView"]
        5 SETTABLEKS                       R3 R2 K0 ["ActiveView"]
        7 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"SetView", "ChangeCurrentEventName"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetView"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["ChangeCurrentEventName"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R7 R0 K11 ["Src"]
       36 GETTABLEKS                       R6 R7 K12 ["Actions"]
       38 GETIMPORT                        R7 K4 [require]
       40 GETTABLEKS                       R8 R6 K13 ["SetView"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K4 [require]
       45 GETTABLEKS                       R9 R6 K14 ["ChangeCurrentEventName"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K4 [require]
       50 GETTABLEKS                       R12 R0 K11 ["Src"]
       52 GETTABLEKS                       R11 R12 K15 ["Util"]
       54 GETTABLEKS                       R10 R11 K16 ["Constants"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R10 R9 K17 ["VIEW_ID"]
       59 GETTABLEKS                       R11 R3 K18 ["UI"]
       61 GETTABLEKS                       R12 R11 K19 ["SelectInput"]
       63 GETTABLEKS                       R13 R1 K20 ["PureComponent"]
       65 LOADK                            R15 K21 ["Dropdown"]
       66 NAMECALL                         R13 R13 K22 ["extend"]
       68 CALL                             R13 2 1
       69 DUPCLOSURE                       R14 K23 [PROTO_3]
       70 CAPTURE                          VAL R10
       71 SETTABLEKS                       R14 R13 K24 ["init"]
       73 DUPCLOSURE                       R14 K25 [PROTO_4]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R12
       76 SETTABLEKS                       R14 R13 K26 ["render"]
       78 MOVE                             R14 R5
       79 DUPTABLE                         R15 K28 [{"Stylizer"}]
       80 GETTABLEKS                       R16 R4 K27 ["Stylizer"]
       82 SETTABLEKS                       R16 R15 K27 ["Stylizer"]
       84 CALL                             R14 1 1
       85 MOVE                             R15 R13
       86 CALL                             R14 1 1
       87 MOVE                             R13 R14
       88 GETTABLEKS                       R14 R2 K29 ["connect"]
       90 DUPCLOSURE                       R15 K30 [PROTO_5]
       91 DUPCLOSURE                       R16 K31 [PROTO_8]
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R8
       94 CALL                             R14 2 1
       95 MOVE                             R15 R13
       96 CALL                             R14 1 -1
       97 RETURN                           R14 -1
