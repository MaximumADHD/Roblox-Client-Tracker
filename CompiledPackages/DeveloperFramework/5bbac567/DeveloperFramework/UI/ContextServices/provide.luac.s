PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["Key"]
        2 GETIMPORT                        R4 K3 [string.format]
        4 LOADK                            R5 K4 ["provide: item at %s was not a ContextItem."]
        5 GETUPVAL                         R8 0
        6 GETTABLE                         R7 R8 R0
        7 FASTCALL1                        TOSTRING R7 ; [+2]
        8 GETIMPORT                        R6 K6 [tostring]
       10 CALL                             R6 1 1
       11 CALL                             R4 2 -1
       12 FASTCALL                         ASSERT ; [+2]
       13 GETIMPORT                        R2 K8 [assert]
       15 CALL                             R2 -1 0
       16 GETTABLEKS                       R2 R1 K0 ["Key"]
       18 MOVE                             R3 R1
       19 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["Key"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFEQ                         R2 R0 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Key"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 SETTABLE                         R0 R2 R1
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Roact17"]
        3 JUMPIF                           R1 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["Roact17"]
        7 JUMPIF                           R1 ; [+22]
        8 GETTABLEKS                       R1 R0 K1 ["getProvider"]
       10 JUMPIFNOT                        R1 ; [+19]
       11 NEWTABLE                         R3 0 1
       13 GETUPVAL                         R4 1
       14 SETLIST                          R3 R4 1 [1]
       16 NAMECALL                         R1 R0 K1 ["getProvider"]
       18 CALL                             R1 2 1
       19 SETUPVAL                         R1 1
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K2 ["key"]
       23 JUMPIFNOTEQKNIL                  R1 ; [+6]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R2 R0 K3 ["Key"]
       28 SETTABLEKS                       R2 R1 K2 ["key"]
       30 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Children"]
        6 GETTABLE                         R2 R1 R3
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R0
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K2 ["state"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K3 ["createElement"]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K4 ["Provider"]
       19 DUPTABLE                         R6 K7 [{"key", "value"}]
       20 LOADK                            R7 K4 ["Provider"]
       21 SETTABLEKS                       R7 R6 K5 ["key"]
       23 SETTABLEKS                       R3 R6 K6 ["value"]
       25 MOVE                             R7 R2
       26 CALL                             R4 3 1
       27 GETUPVAL                         R5 4
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K8 ["filteredItems"]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          REF R4
       34 CALL                             R5 2 0
       35 CLOSEUPVALS                      R4
       36 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["ContextItems"]
        3 CALL                             R2 1 1
        4 NEWTABLE                         R3 0 0
        6 NEWTABLE                         R4 0 0
        8 MOVE                             R5 R2
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       14 MOVE                             R11 R3
       15 MOVE                             R12 R9
       16 GETUPVAL                         R10 1
       17 CALL                             R10 2 0
       18 LENGTH                           R10 R3
       19 SETTABLE                         R8 R4 R10
       20 FORGLOOP                         R5 2 ; [-9]
       22 DUPTABLE                         R5 K2 [{"count"}]
       23 LOADN                            R6 0
       24 SETTABLEKS                       R6 R5 K1 ["count"]
       26 SETTABLEKS                       R5 R0 K3 ["state"]
       28 NEWTABLE                         R5 0 0
       30 SETTABLEKS                       R5 R0 K4 ["connections"]
       32 GETUPVAL                         R5 2
       33 MOVE                             R6 R3
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R4
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 3
       38 MOVE                             R7 R3
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R5
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R0 K5 ["filteredItems"]
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R7 R0 K5 ["filteredItems"]
       47 NEWCLOSURE                       R8 P2
       48 CAPTURE                          VAL R0
       49 CALL                             R6 2 0
       50 NEWCLOSURE                       R6 P3
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U4
       56 SETTABLEKS                       R6 R0 K6 ["onRender"]
       58 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Key"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 SETTABLE                         R0 R2 R1
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 MOVE                             R5 R0
        9 NAMECALL                         R2 R2 K2 ["addConnection"]
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["filteredItems"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"count"}]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K3 ["state"]
        5 GETTABLEKS                       R5 R5 K0 ["count"]
        7 ADDK                             R4 R5 K2 [1]
        8 SETTABLEKS                       R4 R3 K0 ["count"]
       10 NAMECALL                         R1 R1 K4 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R3 R2 K0 ["getSignal"]
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETTABLEKS                       R4 R0 K1 ["connections"]
        6 NEWCLOSURE                       R7 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R5 R3 K2 ["Connect"]
       10 CALL                             R5 2 1
       11 SETTABLE                         R5 R4 R1
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Consumer"]
        6 DUPTABLE                         R3 K3 [{"render"}]
        7 GETTABLEKS                       R4 R0 K4 ["onRender"]
        9 SETTABLEKS                       R4 R3 K2 ["render"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_11:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["connections"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 NAMECALL                         R6 R5 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 RETURN                           R0 0

PROTO_12:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K0 ["provide: Expected a ContextItems list to provide."]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 FASTCALL2K                       ASSERT R1 K3 ; [+5]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K3 ["provide: Expected a table of children."]
       11 GETIMPORT                        R3 K2 [assert]
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["createElement"]
       17 GETUPVAL                         R4 1
       18 DUPTABLE                         R5 K7 [{"ContextItems", "Roact17"}]
       19 SETTABLEKS                       R0 R5 K5 ["ContextItems"]
       21 SETTABLEKS                       R2 R5 K6 ["Roact17"]
       23 MOVE                             R6 R1
       24 CALL                             R3 3 -1
       25 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 GETTABLEKS                       R3 R3 K9 ["Context"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K4 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["Dash"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["iterable"]
       34 GETTABLEKS                       R5 R3 K12 ["join"]
       36 GETTABLEKS                       R6 R3 K13 ["collect"]
       38 GETTABLEKS                       R7 R3 K14 ["filter"]
       40 GETTABLEKS                       R8 R3 K15 ["forEach"]
       42 GETIMPORT                        R9 K18 [table.insert]
       44 GETTABLEKS                       R10 R1 K19 ["PureComponent"]
       46 LOADK                            R12 K20 ["MultipleProvider"]
       47 NAMECALL                         R10 R10 K21 ["extend"]
       49 CALL                             R10 2 1
       50 DUPCLOSURE                       R11 K22 [PROTO_5]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R11 R10 K23 ["init"]
       61 DUPCLOSURE                       R11 K24 [PROTO_7]
       62 CAPTURE                          VAL R8
       63 SETTABLEKS                       R11 R10 K25 ["didMount"]
       65 DUPCLOSURE                       R11 K26 [PROTO_9]
       66 SETTABLEKS                       R11 R10 K27 ["addConnection"]
       68 DUPCLOSURE                       R11 K28 [PROTO_10]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R11 R10 K29 ["render"]
       73 DUPCLOSURE                       R11 K30 [PROTO_11]
       74 SETTABLEKS                       R11 R10 K31 ["willUnmount"]
       76 DUPCLOSURE                       R11 K32 [PROTO_12]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R10
       79 RETURN                           R11 1
