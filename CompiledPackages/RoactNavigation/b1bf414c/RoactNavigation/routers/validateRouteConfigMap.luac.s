PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 LOADK                            R3 K3 ["routeConfigs must be a table"]
       11 CALL                             R1 2 0
       12 LOADB                            R1 0
       13 GETIMPORT                        R2 K5 [pairs]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 3
       17 FORGPREP_NEXT                    R2
       18 LOADB                            R7 1
       19 FASTCALL1                        TYPE R6 ; [+3]
       20 MOVE                             R9 R6
       21 GETIMPORT                        R8 K1 [type]
       23 CALL                             R8 1 1
       24 JUMPIFEQKS                       R8 K2 ["table"] ; [+2]
       26 LOADB                            R7 0
       27 JUMPIFNOT                        R7 ; [+2]
       28 MOVE                             R8 R6
       29 JUMPIF                           R8 ; [+2]
       30 NEWTABLE                         R8 0 0
       32 JUMPIFNOT                        R7 ; [+3]
       33 GETTABLEKS                       R9 R6 K6 ["screen"]
       35 JUMPIF                           R9 ; [+1]
       36 MOVE                             R9 R6
       37 GETUPVAL                         R10 0
       38 GETUPVAL                         R11 1
       39 MOVE                             R12 R9
       40 CALL                             R11 1 1
       41 JUMPIF                           R11 ; [+14]
       42 LOADB                            R11 0
       43 GETTABLEKS                       R13 R8 K7 ["getScreen"]
       45 FASTCALL1                        TYPE R13 ; [+2]
       46 GETIMPORT                        R12 K1 [type]
       48 CALL                             R12 1 1
       49 JUMPIFNOTEQKS                    R12 K8 ["function"] ; [+6]
       51 GETUPVAL                         R11 1
       52 GETTABLEKS                       R12 R8 K7 ["getScreen"]
       54 CALL                             R12 0 -1
       55 CALL                             R11 -1 1
       56 LOADK                            R12 K9 ["The component for route '%s' must be a Roact Function/Stateful component or table with 'getScreen'.getScreen function must return Roact Function/Stateful component."]
       57 MOVE                             R13 R5
       58 CALL                             R10 3 0
       59 GETUPVAL                         R10 0
       60 LOADB                            R11 1
       61 GETTABLEKS                       R12 R8 K6 ["screen"]
       63 JUMPIFEQKNIL                     R12 ; [+7]
       65 GETTABLEKS                       R12 R8 K7 ["getScreen"]
       67 JUMPIFEQKNIL                     R12 ; [+2]
       69 LOADB                            R11 0 +1
       70 LOADB                            R11 1
       71 LOADK                            R12 K10 ["Route '%s' should provide 'screen' or 'getScreen', but not both."]
       72 MOVE                             R13 R5
       73 CALL                             R10 3 0
       74 LOADB                            R1 1
       75 FORGLOOP                         R2 2 ; [-58]
       77 GETUPVAL                         R2 0
       78 MOVE                             R3 R1
       79 LOADK                            R4 K11 ["Please specify at least one route when configuring a navigator."]
       80 CALL                             R2 2 0
       81 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["utils"]
       11 GETTABLEKS                       R1 R1 K6 ["validate"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K5 ["utils"]
       24 GETTABLEKS                       R2 R2 K7 ["isValidScreenComponent"]
       26 CALL                             R1 1 1
       27 DUPCLOSURE                       R2 K8 [PROTO_0]
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 RETURN                           R2 1
