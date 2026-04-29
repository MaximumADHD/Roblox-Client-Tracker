PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["isArray"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 JUMPIFNOT                        R4 ; [+10]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["forEach"]
        9 MOVE                             R4 R0
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 CALL                             R3 2 1
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 1
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 CALL                             R3 3 1
       21 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 MOVE                             R0 R1
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K0 ["isArray"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 JUMPIF                           R1 ; [+7]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K2 [typeof]
       16 CALL                             R1 1 1
       17 JUMPIFEQKS                       R1 K3 ["Instance"] ; [+7]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R1 R2 K4 ["log"]
       22 LOADK                            R2 K5 ["The element you're providing isn't a valid Instance."]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 NAMECALL                         R2 R0 K6 ["GetChildren"]
       27 CALL                             R2 1 1
       28 LENGTH                           R1 R2
       29 JUMPIFNOTEQKN                    R1 K7 [0] ; [+7]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R1 R2 K4 ["log"]
       34 LOADK                            R2 K8 ["The provided element doesn't have any children."]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["new"]
        5 LOADK                            R2 K3 ["For queries bound to document.body a global document has to be available... Learn more: https://testing-library.com/s/screen-global-error"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_4:
        0 DUPCLOSURE                       R2 K0 [PROTO_3]
        1 CAPTURE                          UPVAL U0
        2 SETTABLE                         R2 R0 R1
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Object"]
       16 GETTABLEKS                       R4 R1 K8 ["console"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETIMPORT                        R9 K1 [script]
       22 GETTABLEKS                       R8 R9 K2 ["Parent"]
       24 GETTABLEKS                       R7 R8 K9 ["jsHelpers"]
       26 GETTABLEKS                       R6 R7 K10 ["document"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K4 [require]
       31 GETIMPORT                        R10 K1 [script]
       33 GETTABLEKS                       R9 R10 K2 ["Parent"]
       35 GETTABLEKS                       R8 R9 K9 ["jsHelpers"]
       37 GETTABLEKS                       R7 R8 K11 ["typeError"]
       39 CALL                             R6 1 1
       40 NEWTABLE                         R7 1 0
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R9 R0 K12 ["PrettyFormat"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R10 K4 [require]
       49 GETIMPORT                        R13 K1 [script]
       51 GETTABLEKS                       R12 R13 K2 ["Parent"]
       53 GETTABLEKS                       R11 R12 K13 ["get-queries-for-element"]
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R9 R10 K14 ["getQueriesForElement"]
       58 GETIMPORT                        R11 K4 [require]
       60 GETIMPORT                        R14 K1 [script]
       62 GETTABLEKS                       R13 R14 K2 ["Parent"]
       64 GETTABLEKS                       R12 R13 K15 ["helpers"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R10 R11 K16 ["getDocument"]
       69 GETIMPORT                        R12 K4 [require]
       71 GETIMPORT                        R15 K1 [script]
       73 GETTABLEKS                       R14 R15 K2 ["Parent"]
       75 GETTABLEKS                       R13 R14 K17 ["pretty-dom"]
       77 CALL                             R12 1 1
       78 GETTABLEKS                       R11 R12 K18 ["logDOM"]
       80 GETIMPORT                        R12 K4 [require]
       82 GETIMPORT                        R15 K1 [script]
       84 GETTABLEKS                       R14 R15 K2 ["Parent"]
       86 GETTABLEKS                       R13 R14 K19 ["queries"]
       88 CALL                             R12 1 1
       89 DUPCLOSURE                       R13 K20 [PROTO_1]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R11
       92 DUPCLOSURE                       R14 K21 [PROTO_2]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R4
       96 DUPTABLE                         R15 K24 [{"debug", "logTestingPlaygroundURL"}]
       97 SETTABLEKS                       R13 R15 K22 ["debug"]
       99 SETTABLEKS                       R14 R15 K23 ["logTestingPlaygroundURL"]
      101 FASTCALL1                        TYPEOF R5 ; [+3]
      102 MOVE                             R18 R5
      103 GETIMPORT                        R17 K26 [typeof]
      105 CALL                             R17 1 1
      106 JUMPIFEQKS                       R17 K27 ["nil"] ; [+7]
      108 MOVE                             R16 R9
      109 MOVE                             R17 R5
      110 MOVE                             R18 R12
      111 MOVE                             R19 R15
      112 CALL                             R16 3 1
      113 JUMP                             ; [+10]
      114 GETTABLEKS                       R16 R2 K28 ["reduce"]
      116 GETTABLEKS                       R17 R3 K29 ["keys"]
      118 MOVE                             R18 R12
      119 CALL                             R17 1 1
      120 DUPCLOSURE                       R18 K30 [PROTO_4]
      121 CAPTURE                          VAL R6
      122 MOVE                             R19 R15
      123 CALL                             R16 3 1
      124 SETTABLEKS                       R16 R7 K31 ["screen"]
      126 RETURN                           R7 1
