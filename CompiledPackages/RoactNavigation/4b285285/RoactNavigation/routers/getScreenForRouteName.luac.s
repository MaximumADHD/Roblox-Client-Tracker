PROTO_0:
        0 LOADK                            R1 K0 ["'%s'"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETTABLE                         R2 R0 R1
        1 JUMPIFNOTEQKNIL                  R2 ; [+26]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["map"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["keys"]
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 DUPCLOSURE                       R5 K2 [PROTO_0]
       12 CALL                             R3 2 1
       13 LOADK                            R4 K3 ["There is no route defined for key %s.\nMust be one of: %s"]
       14 MOVE                             R6 R1
       15 GETIMPORT                        R7 K6 [table.concat]
       17 MOVE                             R8 R3
       18 LOADK                            R9 K7 [","]
       19 CALL                             R7 2 -1
       20 NAMECALL                         R4 R4 K8 ["format"]
       22 CALL                             R4 -1 1
       23 GETIMPORT                        R5 K10 [error]
       25 MOVE                             R6 R4
       26 LOADN                            R7 2
       27 CALL                             R5 2 0
       28 FASTCALL1                        TYPE R2 ; [+3]
       29 MOVE                             R4 R2
       30 GETIMPORT                        R3 K12 [type]
       32 CALL                             R3 1 1
       33 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+36]
       35 GETTABLEKS                       R4 R2 K13 ["screen"]
       37 JUMPIFEQKNIL                     R4 ; [+12]
       39 GETUPVAL                         R4 2
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R6 R2 K13 ["screen"]
       43 CALL                             R5 1 1
       44 LOADK                            R6 K14 ["screen for key '%s' must be a valid Roact component."]
       45 MOVE                             R7 R1
       46 CALL                             R4 3 0
       47 GETTABLEKS                       R4 R2 K13 ["screen"]
       49 RETURN                           R4 1
       50 GETTABLEKS                       R5 R2 K15 ["getScreen"]
       52 FASTCALL1                        TYPE R5 ; [+2]
       53 GETIMPORT                        R4 K12 [type]
       55 CALL                             R4 1 1
       56 JUMPIFNOTEQKS                    R4 K16 ["function"] ; [+13]
       58 GETTABLEKS                       R4 R2 K15 ["getScreen"]
       60 CALL                             R4 0 1
       61 GETUPVAL                         R5 2
       62 GETUPVAL                         R6 3
       63 MOVE                             R7 R4
       64 CALL                             R6 1 1
       65 LOADK                            R7 K17 ["The getScreen defined for route '%s' didn't return a valid screen or navigator.\n\nPlease pass it like this:\n%s = {\n    getScreen: function() return MyScreen end\n}"]
       66 MOVE                             R8 R1
       67 MOVE                             R9 R1
       68 CALL                             R5 4 0
       69 RETURN                           R4 1
       70 GETUPVAL                         R4 2
       71 GETUPVAL                         R5 3
       72 MOVE                             R6 R2
       73 CALL                             R5 1 1
       74 LOADK                            R6 K18 ["Value for key '%s' must be a route config table or a valid Roact component."]
       75 MOVE                             R7 R1
       76 CALL                             R4 3 0
       77 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Object"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K8 ["utils"]
       22 GETTABLEKS                       R6 R6 K9 ["invariant"]
       24 CALL                             R5 1 1
       25 GETIMPORT                        R6 K4 [require]
       27 GETTABLEKS                       R7 R0 K8 ["utils"]
       29 GETTABLEKS                       R7 R7 K10 ["isValidScreenComponent"]
       31 CALL                             R6 1 1
       32 DUPCLOSURE                       R7 K11 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R6
       37 RETURN                           R7 1
