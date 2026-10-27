PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        2 LOADK                            R1 K1 ["( None )"]
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["List"]
        3 GETTABLEKS                       R2 R2 K1 ["filter"]
        5 MOVE                             R3 R0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["List"]
       12 GETTABLEKS                       R3 R3 K2 ["join"]
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R1
       17 SETLIST                          R4 R5 1 [1]
       19 MOVE                             R5 R2
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 1
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K0 ["List"]
       27 GETTABLEKS                       R5 R5 K3 ["map"]
       29 MOVE                             R6 R4
       30 DUPCLOSURE                       R7 K4 [PROTO_1]
       31 CALL                             R5 2 1
       32 RETURN                           R5 1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 SETTABLEKS                       R0 R1 K1 ["text"]
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["List"]
        3 GETTABLEKS                       R0 R0 K1 ["map"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R1 2 1
        9 DUPCLOSURE                       R2 K2 [PROTO_3]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editProperty"]
        3 DUPTABLE                         R2 K4 [{["type"] = "Edit", ["part"]}]
        4 DUPTABLE                         R3 K7 [{["name"] = "value", ["value"]}]
        5 JUMPIFNOTEQKS                    R0 K8 ["( None )"] ; [+3]
        7 LOADK                            R4 K9 [""]
        8 JUMP                             ; [+1]
        9 MOVE                             R4 R0
       10 SETTABLEKS                       R4 R3 K6 ["value"]
       12 SETTABLEKS                       R3 R2 K3 ["part"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R1 K2 ["extra"]
        8 GETTABLEKS                       R3 R1 K3 ["parts"]
       10 GETTABLEKS                       R3 R3 K4 ["value"]
       12 LOADB                            R5 0
       13 GETTABLEKS                       R6 R1 K2 ["extra"]
       15 JUMPIFEQKNIL                     R6 ; [+9]
       17 GETTABLEKS                       R6 R1 K2 ["extra"]
       19 GETTABLEKS                       R6 R6 K5 ["type"]
       21 JUMPIFEQKS                       R6 K6 ["dynamicEnum"] ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       27 LOADK                            R6 K7 ["Did not contain DynamicEnumPropertyInfoExtra"]
       28 GETIMPORT                        R4 K9 [assert]
       30 CALL                             R4 2 0
       31 GETTABLEKS                       R5 R0 K10 ["specializedEditingUtils"]
       33 GETTABLEKS                       R5 R5 K11 ["getObserveDynamicEnum"]
       35 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       37 LOADK                            R6 K12 ["Properties: Did not find specializedEditingUtils.getObserveGuestEnum. It is required for dynamic enums."]
       38 GETIMPORT                        R4 K9 [assert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K0 ["useSignalState"]
       44 GETTABLEKS                       R5 R0 K10 ["specializedEditingUtils"]
       46 GETTABLEKS                       R5 R5 K11 ["getObserveDynamicEnum"]
       48 GETTABLEKS                       R6 R2 K13 ["guestEnum"]
       50 CALL                             R5 1 -1
       51 CALL                             R4 -1 1
       52 GETTABLEKS                       R6 R3 K14 ["multiple"]
       54 JUMPIFNOT                        R6 ; [+2]
       55 LOADNIL                          R5
       56 JUMP                             ; [+2]
       57 GETTABLEKS                       R5 R3 K4 ["value"]
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R6 R6 K15 ["useMemo"]
       62 NEWCLOSURE                       R7 P0
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 NEWTABLE                         R8 0 2
       69 MOVE                             R9 R4
       70 MOVE                             R10 R5
       71 SETLIST                          R8 R9 2 [1]
       73 CALL                             R6 2 1
       74 GETUPVAL                         R7 4
       75 GETTABLEKS                       R7 R7 K16 ["useEventCallback"]
       77 NEWCLOSURE                       R8 P1
       78 CAPTURE                          VAL R0
       79 CALL                             R7 1 1
       80 GETUPVAL                         R8 5
       81 GETUPVAL                         R9 6
       82 DUPTABLE                         R10 K21 [{"readonly", "items", "value", "onItemChanged", "testId"}]
       83 GETTABLEKS                       R11 R1 K17 ["readonly"]
       85 SETTABLEKS                       R11 R10 K17 ["readonly"]
       87 SETTABLEKS                       R6 R10 K18 ["items"]
       89 JUMPIFNOTEQKS                    R5 K22 [""] ; [+3]
       91 LOADK                            R11 K23 ["( None )"]
       92 JUMP                             ; [+1]
       93 MOVE                             R11 R5
       94 SETTABLEKS                       R11 R10 K4 ["value"]
       96 SETTABLEKS                       R7 R10 K19 ["onItemChanged"]
       98 GETTABLEKS                       R11 R1 K2 ["extra"]
      100 GETTABLEKS                       R11 R11 K13 ["guestEnum"]
      102 SETTABLEKS                       R11 R10 K20 ["testId"]
      104 CALL                             R8 2 -1
      105 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Util"]
       20 GETTABLEKS                       R4 R4 K10 ["Dropdown"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["Foundation"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["PropertyEditorTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["PropertyTypes"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K4 ["Parent"]
       42 GETTABLEKS                       R8 R8 K14 ["React"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R1 K15 ["ReactUtils"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R1 K16 ["SignalsReact"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R11 R0 K9 ["Util"]
       59 GETTABLEKS                       R11 R11 K17 ["sortCaseInsensitive"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R11 R7 K18 ["createElement"]
       64 DUPCLOSURE                       R12 K19 [PROTO_2]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R10
       67 DUPCLOSURE                       R13 K20 [PROTO_6]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R3
       75 RETURN                           R13 1
