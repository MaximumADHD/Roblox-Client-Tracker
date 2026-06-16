PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 FASTCALL1                        TYPE R0 ; [+3]
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K1 [type]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+7]
       10 GETTABLEKS                       R1 R0 K3 ["screen"]
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R1 R0 K3 ["screen"]
       15 RETURN                           R1 1
       16 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K1 [next]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 LOADK                            R3 K2 ["Please specify at least one route when configuring a navigator."]
       10 CALL                             R1 2 0
       11 MOVE                             R1 R0
       12 LOADNIL                          R2
       13 LOADNIL                          R3
       14 FORGPREP                         R1
       15 JUMPIF                           R5 ; [+2]
       16 LOADNIL                          R6
       17 JUMP                             ; [+14]
       18 FASTCALL1                        TYPE R5 ; [+3]
       19 MOVE                             R8 R5
       20 GETIMPORT                        R7 K4 [type]
       22 CALL                             R7 1 1
       23 JUMPIFNOTEQKS                    R7 K5 ["table"] ; [+7]
       25 GETTABLEKS                       R7 R5 K6 ["screen"]
       27 JUMPIFNOT                        R7 ; [+3]
       28 GETTABLEKS                       R6 R5 K6 ["screen"]
       30 JUMP                             ; [+1]
       31 MOVE                             R6 R5
       32 FASTCALL1                        TYPE R5 ; [+3]
       33 MOVE                             R9 R5
       34 GETIMPORT                        R8 K4 [type]
       36 CALL                             R8 1 1
       37 JUMPIFEQKS                       R8 K5 ["table"] ; [+2]
       39 LOADB                            R7 0 +1
       40 LOADB                            R7 1
       41 GETUPVAL                         R8 0
       42 GETUPVAL                         R9 1
       43 MOVE                             R10 R6
       44 CALL                             R9 1 1
       45 JUMPIF                           R9 ; [+12]
       46 MOVE                             R9 R7
       47 JUMPIFNOT                        R9 ; [+10]
       48 GETTABLEKS                       R11 R5 K7 ["getScreen"]
       50 FASTCALL1                        TYPE R11 ; [+2]
       51 GETIMPORT                        R10 K4 [type]
       53 CALL                             R10 1 1
       54 JUMPIFEQKS                       R10 K8 ["function"] ; [+2]
       56 LOADB                            R9 0 +1
       57 LOADB                            R9 1
       58 LOADK                            R10 K9 ["The component for route '%s' must be a Roact component or table with 'getScreen'. For example:\n\nlocal MyScreen = require(script.Parent.MyScreen)\n...\n%s = MyScreen,\n}\n\nYou can also use a navigator:\n\nlocal MyNavigator = require(script.Parent.MyNavigator)\n...\n%s = MyNavigator,\n}"]
       59 MOVE                             R11 R4
       60 MOVE                             R12 R4
       61 MOVE                             R13 R4
       62 CALL                             R8 5 0
       63 JUMPIFNOT                        R7 ; [+15]
       64 GETUPVAL                         R8 0
       65 LOADB                            R9 1
       66 GETTABLEKS                       R10 R5 K6 ["screen"]
       68 JUMPIFEQKNIL                     R10 ; [+7]
       70 GETTABLEKS                       R10 R5 K7 ["getScreen"]
       72 JUMPIFEQKNIL                     R10 ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 LOADK                            R10 K10 ["Route '%s' should declare a screen or a getScreen, not both."]
       77 MOVE                             R11 R4
       78 CALL                             R8 3 0
       79 FORGLOOP                         R1 2 ; [-65]
       81 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["utils"]
       11 GETTABLEKS                       R2 R2 K6 ["invariant"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["utils"]
       18 GETTABLEKS                       R3 R3 K7 ["isValidScreenComponent"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K8 [PROTO_0]
       22 DUPCLOSURE                       R4 K9 [PROTO_1]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 RETURN                           R4 1
