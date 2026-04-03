PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 LOADK                            R3 K3 ["routeConfigs must be an array table"]
       11 CALL                             R1 2 0
       12 MOVE                             R1 R0
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETUPVAL                         R6 0
       17 FASTCALL1                        TYPE R4 ; [+3]
       18 MOVE                             R9 R4
       19 GETIMPORT                        R8 K1 [type]
       21 CALL                             R8 1 1
       22 JUMPIFEQKS                       R8 K4 ["number"] ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 LOADK                            R8 K5 ["routeConfigs must be an array table (found non-number key %q of type %q)"]
       27 MOVE                             R10 R4
       28 FASTCALL1                        TYPE R4 ; [+3]
       29 MOVE                             R12 R4
       30 GETIMPORT                        R11 K1 [type]
       32 CALL                             R11 1 1
       33 NAMECALL                         R8 R8 K6 ["format"]
       35 CALL                             R8 3 -1
       36 CALL                             R6 -1 0
       37 GETIMPORT                        R6 K8 [next]
       39 MOVE                             R7 R5
       40 CALL                             R6 1 2
       41 GETUPVAL                         R8 0
       42 GETIMPORT                        R10 K8 [next]
       44 MOVE                             R11 R5
       45 MOVE                             R12 R6
       46 CALL                             R10 2 1
       47 JUMPIFEQKNIL                     R10 ; [+2]
       49 LOADB                            R9 0 +1
       50 LOADB                            R9 1
       51 LOADK                            R10 K9 ["only one route must be defined in each entry (found multiple at index %d)"]
       52 MOVE                             R12 R4
       53 NAMECALL                         R10 R10 K6 ["format"]
       55 CALL                             R10 2 -1
       56 CALL                             R8 -1 0
       57 LOADB                            R8 1
       58 FASTCALL1                        TYPE R7 ; [+3]
       59 MOVE                             R10 R7
       60 GETIMPORT                        R9 K1 [type]
       62 CALL                             R9 1 1
       63 JUMPIFEQKS                       R9 K2 ["table"] ; [+2]
       65 LOADB                            R8 0
       66 JUMPIFNOT                        R8 ; [+2]
       67 MOVE                             R9 R7
       68 JUMP                             ; [+2]
       69 NEWTABLE                         R9 0 0
       71 JUMPIFNOT                        R8 ; [+3]
       72 GETTABLEKS                       R10 R7 K10 ["screen"]
       74 JUMPIF                           R10 ; [+1]
       75 MOVE                             R10 R7
       76 GETUPVAL                         R11 0
       77 GETUPVAL                         R12 1
       78 MOVE                             R13 R10
       79 CALL                             R12 1 1
       80 JUMPIF                           R12 ; [+14]
       81 LOADB                            R12 0
       82 GETTABLEKS                       R14 R9 K11 ["getScreen"]
       84 FASTCALL1                        TYPE R14 ; [+2]
       85 GETIMPORT                        R13 K1 [type]
       87 CALL                             R13 1 1
       88 JUMPIFNOTEQKS                    R13 K12 ["function"] ; [+6]
       90 GETUPVAL                         R12 1
       91 GETTABLEKS                       R13 R9 K11 ["getScreen"]
       93 CALL                             R13 0 -1
       94 CALL                             R12 -1 1
       95 LOADK                            R13 K13 ["The component for route '%s' must be a Roact Function/Stateful component or table with 'getScreen'.getScreen function must return Roact Function/Stateful component."]
       96 MOVE                             R14 R6
       97 CALL                             R11 3 0
       98 GETUPVAL                         R11 0
       99 LOADB                            R12 1
      100 GETTABLEKS                       R13 R9 K10 ["screen"]
      102 JUMPIFEQKNIL                     R13 ; [+7]
      104 GETTABLEKS                       R13 R9 K11 ["getScreen"]
      106 JUMPIFEQKNIL                     R13 ; [+2]
      108 LOADB                            R12 0 +1
      109 LOADB                            R12 1
      110 LOADK                            R13 K14 ["Route '%s' should provide 'screen' or 'getScreen', but not both."]
      111 MOVE                             R14 R6
      112 CALL                             R11 3 0
      113 FORGLOOP                         R1 2 ; [-98]
      115 GETUPVAL                         R1 0
      116 LENGTH                           R3 R0
      117 LOADN                            R4 0
      118 JUMPIFLT                         R4 R3 ; [+2]
      120 LOADB                            R2 0 +1
      121 LOADB                            R2 1
      122 LOADK                            R3 K15 ["Please specify at least one route when configuring a navigator."]
      123 CALL                             R1 2 0
      124 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["utils"]
       11 GETTABLEKS                       R1 R2 K6 ["invariant"]
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
