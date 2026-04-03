PROTO_0:
        0 DUPTABLE                         R0 K1 [{"navigationEvents"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["navigationEvents"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["navigationEvents"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Total Events: "]
        3 GETTABLEKS                       R4 R0 K3 ["navigationEvents"]
        5 LENGTH                           R3 R4
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R1 R0 K3 ["navigationEvents"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETIMPORT                        R6 K1 [print]
       14 MOVE                             R7 R5
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-5]
       18 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R3 0
        1 GETTABLEKS                       R5 R0 K0 ["navigationEvents"]
        3 LENGTH                           R4 R5
        4 JUMPIFNOTLT                      R4 R1 ; [+9]
        6 JUMPIFNOTLE                      R3 R2 ; [+7]
        8 GETIMPORT                        R4 K2 [wait]
       10 LOADK                            R5 K3 [0.33]
       11 CALL                             R4 1 0
       12 ADDK                             R3 R3 K3 [0.33]
       13 JUMPBACK                         ; [-13]
       14 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["navigationEvents"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R1 R2 K1 ["navigationEvents"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["new"]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 2
       14 CALL                             R2 2 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R0 K4 [table.insert]
       18 CALL                             R0 -1 0
       19 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 NEWCLOSURE                       R8 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R7
       10 CAPTURE                          VAL R0
       11 SETTABLE                         R8 R2 R6
       12 FORGLOOP                         R3 2 ; [-7]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K0 ["createElement"]
       17 GETUPVAL                         R4 3
       18 MOVE                             R5 R2
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 LOADK                            R4 K3 ["should be a list"]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R3 R0 K4 ["navigationEvents"]
       14 LENGTH                           R2 R3
       15 LENGTH                           R3 R1
       16 JUMPIFEQ                         R2 R3 ; [+4]
       18 LOADB                            R3 0
       19 LOADK                            R4 K5 ["different amount of events"]
       20 RETURN                           R3 2
       21 LOADN                            R5 1
       22 MOVE                             R3 R2
       23 LOADN                            R4 1
       24 FORNPREP                         R3
       25 GETTABLEKS                       R7 R0 K4 ["navigationEvents"]
       27 GETTABLE                         R6 R7 R5
       28 GETTABLE                         R8 R1 R5
       29 NAMECALL                         R6 R6 K6 ["equalTo"]
       31 CALL                             R6 2 1
       32 JUMPIF                           R6 ; [+7]
       33 LOADB                            R6 0
       34 LOADK                            R7 K7 ["events at position %d do not match"]
       35 MOVE                             R9 R5
       36 NAMECALL                         R7 R7 K8 ["format"]
       38 CALL                             R7 2 -1
       39 RETURN                           R6 -1
       40 FORNLOOP                         R3
       41 LOADB                            R3 1
       42 RETURN                           R3 1

PROTO_8:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["equalTo"]
        3 CALL                             R2 2 2
        4 JUMPIF                           R2 ; [+55]
        5 LOADK                            R4 K1 ["{}"]
        6 LOADK                            R5 K1 ["{}"]
        7 GETTABLEKS                       R7 R0 K2 ["navigationEvents"]
        9 LENGTH                           R6 R7
       10 LOADN                            R7 0
       11 JUMPIFNOTLT                      R7 R6 ; [+18]
       13 LOADK                            R6 K3 ["{\n  %s,\n}"]
       14 GETIMPORT                        R8 K6 [table.concat]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K7 ["map"]
       19 GETTABLEKS                       R10 R0 K2 ["navigationEvents"]
       21 GETIMPORT                        R11 K9 [tostring]
       23 CALL                             R9 2 1
       24 LOADK                            R10 K10 [",\n  "]
       25 CALL                             R8 2 -1
       26 NAMECALL                         R6 R6 K11 ["format"]
       28 CALL                             R6 -1 1
       29 MOVE                             R4 R6
       30 LENGTH                           R6 R1
       31 LOADN                            R7 0
       32 JUMPIFNOTLT                      R7 R6 ; [+17]
       34 LOADK                            R6 K3 ["{\n  %s,\n}"]
       35 GETIMPORT                        R8 K6 [table.concat]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R9 R10 K7 ["map"]
       40 MOVE                             R10 R1
       41 GETIMPORT                        R11 K9 [tostring]
       43 CALL                             R9 2 1
       44 LOADK                            R10 K10 [",\n  "]
       45 CALL                             R8 2 -1
       46 NAMECALL                         R6 R6 K11 ["format"]
       48 CALL                             R6 -1 1
       49 MOVE                             R5 R6
       50 GETIMPORT                        R6 K13 [error]
       52 LOADK                            R7 K14 ["%s\nGot events: %s\n\nExpected events: %s"]
       53 MOVE                             R9 R3
       54 MOVE                             R10 R4
       55 MOVE                             R11 R5
       56 NAMECALL                         R7 R7 K11 ["format"]
       58 CALL                             R7 4 -1
       59 CALL                             R6 -1 0
       60 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R1 K7 ["Roact"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R7 R0 K8 ["views"]
       25 GETTABLEKS                       R6 R7 K9 ["NavigationEvents"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Events"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K4 [require]
       35 GETIMPORT                        R10 K1 [script]
       37 GETTABLEKS                       R9 R10 K2 ["Parent"]
       39 GETTABLEKS                       R8 R9 K11 ["invariant"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETIMPORT                        R11 K1 [script]
       46 GETTABLEKS                       R10 R11 K2 ["Parent"]
       48 GETTABLEKS                       R9 R10 K12 ["PageNavigationEvent"]
       50 CALL                             R8 1 1
       51 NEWTABLE                         R9 16 0
       53 SETTABLEKS                       R9 R9 K13 ["__index"]
       55 DUPCLOSURE                       R10 K14 [PROTO_0]
       56 CAPTURE                          VAL R9
       57 SETTABLEKS                       R10 R9 K15 ["new"]
       59 DUPCLOSURE                       R10 K16 [PROTO_1]
       60 SETTABLEKS                       R10 R9 K17 ["getNavigationEvents"]
       62 DUPCLOSURE                       R10 K18 [PROTO_2]
       63 SETTABLEKS                       R10 R9 K19 ["printNavigationEvents"]
       65 DUPCLOSURE                       R10 K20 [PROTO_3]
       66 SETTABLEKS                       R10 R9 K21 ["waitForNumberEventsMaxWaitTime"]
       68 DUPCLOSURE                       R10 K22 [PROTO_4]
       69 SETTABLEKS                       R10 R9 K23 ["resetNavigationEvents"]
       71 DUPTABLE                         R10 K28 [{"onWillFocus", "onDidFocus", "onWillBlur", "onDidBlur"}]
       72 GETTABLEKS                       R11 R6 K29 ["WillFocus"]
       74 SETTABLEKS                       R11 R10 K24 ["onWillFocus"]
       76 GETTABLEKS                       R11 R6 K30 ["DidFocus"]
       78 SETTABLEKS                       R11 R10 K25 ["onDidFocus"]
       80 GETTABLEKS                       R11 R6 K31 ["WillBlur"]
       82 SETTABLEKS                       R11 R10 K26 ["onWillBlur"]
       84 GETTABLEKS                       R11 R6 K32 ["DidBlur"]
       86 SETTABLEKS                       R11 R10 K27 ["onDidBlur"]
       88 DUPCLOSURE                       R11 K33 [PROTO_6]
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R5
       93 SETTABLEKS                       R11 R9 K34 ["createNavigationAdapter"]
       95 DUPCLOSURE                       R11 K35 [PROTO_7]
       96 CAPTURE                          VAL R7
       97 SETTABLEKS                       R11 R9 K36 ["equalTo"]
       99 DUPCLOSURE                       R11 K37 [PROTO_8]
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R11 R9 K38 ["expect"]
      103 RETURN                           R9 1
