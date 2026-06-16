PROTO_0:
        0 MOVE                             R1 R0
        1 CALL                             R1 0 -1
        2 RETURN                           R1 -1

PROTO_1:
        0 MOVE                             R1 R0
        1 CALL                             R1 0 -1
        2 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R1 R0
        1 CALL                             R1 0 -1
        2 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["new"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["join"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["filter"]
       12 NEWTABLE                         R6 0 2
       14 MOVE                             R7 R0
       15 MOVE                             R8 R2
       16 SETLIST                          R6 R7 2 [1]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K3 ["toJSBoolean"]
       21 CALL                             R5 2 1
       22 LOADK                            R6 K4 ["\n\n"]
       23 CALL                             R4 2 -1
       24 CALL                             R3 -1 1
       25 LOADK                            R4 K5 ["TestingLibraryElementError"]
       26 SETTABLEKS                       R4 R3 K6 ["name"]
       28 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_disableExpensiveErrorDiagnostics"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K2 ["_disableExpensiveErrorDiagnostics"]
       10 JUMPIF                           R1 ; [+4]
       11 GETIMPORT                        R3 K4 [error]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 0
       15 RETURN                           R2 1

PROTO_6:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+5]
        7 MOVE                             R1 R0
        8 GETUPVAL                         R2 0
        9 CALL                             R1 1 1
       10 MOVE                             R0 R1
       11 GETTABLEKS                       R1 R0 K3 ["defaultIgnore"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K4 ["setIgnore"]
       17 GETTABLEKS                       R2 R0 K3 ["defaultIgnore"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K5 ["assign"]
       23 NEWTABLE                         R2 0 0
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K5 ["assign"]
       28 GETUPVAL                         R4 0
       29 DUPTABLE                         R5 K6 [{"defaultIgnore"}]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K7 ["None"]
       33 SETTABLEKS                       R6 R5 K3 ["defaultIgnore"]
       35 CALL                             R3 2 1
       36 MOVE                             R4 R0
       37 CALL                             R1 3 1
       38 SETUPVAL                         R1 0
       39 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getIgnore"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["assign"]
        7 NEWTABLE                         R2 0 0
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K3 [{"defaultIgnore"}]
       11 SETTABLEKS                       R0 R4 K2 ["defaultIgnore"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 GETTABLEKS                       R4 R1 K8 ["Error"]
       18 GETTABLEKS                       R5 R1 K9 ["Object"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETIMPORT                        R8 K1 [script]
       24 GETTABLEKS                       R8 R8 K2 ["Parent"]
       26 GETTABLEKS                       R7 R8 K10 ["config-default-ignore"]
       28 CALL                             R6 1 1
       29 NEWTABLE                         R7 4 0
       31 GETIMPORT                        R8 K4 [require]
       33 GETIMPORT                        R9 K1 [script]
       35 GETTABLEKS                       R9 R9 K2 ["Parent"]
       37 GETTABLEKS                       R9 R9 K11 ["types"]
       39 GETTABLEKS                       R9 R9 K12 ["config"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K4 [require]
       44 GETIMPORT                        R11 K1 [script]
       46 GETTABLEKS                       R11 R11 K2 ["Parent"]
       48 GETTABLEKS                       R10 R11 K13 ["pretty-dom"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R9 R9 K14 ["prettyDOM"]
       53 DUPTABLE                         R10 K27 [{"testIdAttribute", "asyncUtilTimeout", "asyncWrapper", "unstable_advanceTimersWrapper", "eventWrapper", "defaultHidden", "defaultIgnore", "showOriginalStackTrace", "throwSuggestions", "getElementError", "_disableExpensiveErrorDiagnostics", "computedStyleSupportsPseudoElements"}]
       54 LOADK                            R11 K28 ["data-testid"]
       55 SETTABLEKS                       R11 R10 K15 ["testIdAttribute"]
       57 LOADN                            R11 232
       58 SETTABLEKS                       R11 R10 K16 ["asyncUtilTimeout"]
       60 DUPCLOSURE                       R11 K29 [PROTO_0]
       61 SETTABLEKS                       R11 R10 K17 ["asyncWrapper"]
       63 DUPCLOSURE                       R11 K30 [PROTO_1]
       64 SETTABLEKS                       R11 R10 K18 ["unstable_advanceTimersWrapper"]
       66 DUPCLOSURE                       R11 K31 [PROTO_2]
       67 SETTABLEKS                       R11 R10 K19 ["eventWrapper"]
       69 LOADB                            R11 0
       70 SETTABLEKS                       R11 R10 K20 ["defaultHidden"]
       72 GETTABLEKS                       R11 R6 K32 ["getIgnore"]
       74 CALL                             R11 0 1
       75 SETTABLEKS                       R11 R10 K21 ["defaultIgnore"]
       77 LOADB                            R11 0
       78 SETTABLEKS                       R11 R10 K22 ["showOriginalStackTrace"]
       80 LOADB                            R11 0
       81 SETTABLEKS                       R11 R10 K23 ["throwSuggestions"]
       83 DUPCLOSURE                       R11 K33 [PROTO_3]
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R11 R10 K24 ["getElementError"]
       90 LOADB                            R11 0
       91 SETTABLEKS                       R11 R10 K25 ["_disableExpensiveErrorDiagnostics"]
       93 LOADB                            R11 0
       94 SETTABLEKS                       R11 R10 K26 ["computedStyleSupportsPseudoElements"]
       96 NEWCLOSURE                       R11 P4
       97 CAPTURE                          REF R10
       98 SETTABLEKS                       R11 R7 K34 ["runWithExpensiveErrorDiagnosticsDisabled"]
      100 NEWCLOSURE                       R12 P5
      101 CAPTURE                          REF R10
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R5
      104 SETTABLEKS                       R12 R7 K35 ["configure"]
      106 NEWCLOSURE                       R13 P6
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R5
      109 CAPTURE                          REF R10
      110 SETTABLEKS                       R13 R7 K36 ["getConfig"]
      112 CLOSEUPVALS                      R10
      113 RETURN                           R7 1
