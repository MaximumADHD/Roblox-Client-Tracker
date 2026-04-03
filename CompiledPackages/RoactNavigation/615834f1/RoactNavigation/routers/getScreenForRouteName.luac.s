PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 LOADK                            R4 K3 ["routeConfigs must be a table"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 0
       13 FASTCALL1                        TYPE R1 ; [+3]
       14 MOVE                             R5 R1
       15 GETIMPORT                        R4 K1 [type]
       17 CALL                             R4 1 1
       18 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 LOADK                            R4 K5 ["routeName must be a string"]
       23 CALL                             R2 2 0
       24 GETTABLE                         R2 R0 R1
       25 GETUPVAL                         R3 0
       26 JUMPIFNOTEQKNIL                  R2 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 LOADK                            R5 K6 ["There is no route defined for key '%s'."]
       31 MOVE                             R6 R1
       32 CALL                             R3 3 0
       33 FASTCALL1                        TYPE R2 ; [+3]
       34 MOVE                             R4 R2
       35 GETIMPORT                        R3 K1 [type]
       37 CALL                             R3 1 1
       38 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+35]
       40 GETTABLEKS                       R4 R2 K7 ["screen"]
       42 JUMPIFEQKNIL                     R4 ; [+12]
       44 GETUPVAL                         R4 0
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R6 R2 K7 ["screen"]
       48 CALL                             R5 1 1
       49 LOADK                            R6 K8 ["screen param for key '%s' must be a valid Roact component."]
       50 MOVE                             R7 R1
       51 CALL                             R4 3 0
       52 GETTABLEKS                       R4 R2 K7 ["screen"]
       54 RETURN                           R4 1
       55 GETTABLEKS                       R5 R2 K9 ["getScreen"]
       57 FASTCALL1                        TYPE R5 ; [+2]
       58 GETIMPORT                        R4 K1 [type]
       60 CALL                             R4 1 1
       61 JUMPIFNOTEQKS                    R4 K10 ["function"] ; [+12]
       63 GETTABLEKS                       R4 R2 K9 ["getScreen"]
       65 CALL                             R4 0 1
       66 GETUPVAL                         R5 0
       67 GETUPVAL                         R6 1
       68 MOVE                             R7 R4
       69 CALL                             R6 1 1
       70 LOADK                            R7 K11 ["The getScreen function defined for route '%s' did not return a valid screen or navigator"]
       71 MOVE                             R8 R1
       72 CALL                             R5 3 0
       73 RETURN                           R4 1
       74 GETUPVAL                         R4 0
       75 GETUPVAL                         R5 1
       76 MOVE                             R6 R2
       77 CALL                             R5 1 1
       78 LOADK                            R6 K12 ["Value for key '%s' must be a route config table or a valid Roact component."]
       79 MOVE                             R7 R1
       80 CALL                             R4 3 0
       81 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["utils"]
       11 GETTABLEKS                       R1 R2 K6 ["validate"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K5 ["utils"]
       24 GETTABLEKS                       R2 R3 K7 ["isValidScreenComponent"]
       26 CALL                             R1 1 1
       27 DUPCLOSURE                       R2 K8 [PROTO_0]
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 RETURN                           R2 1
