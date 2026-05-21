PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R1
        6 JUMPIF                           R3 ; [+2]
        7 NEWTABLE                         R3 0 0
        9 DUPTABLE                         R4 K3 [{"type"}]
       10 SETTABLEKS                       R0 R4 K2 ["type"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R4 1
       14 GETTABLE                         R3 R4 R0
       15 JUMPIFNOT                        R3 ; [+10]
       16 GETIMPORT                        R4 K5 [ipairs]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 3
       20 FORGPREP_INEXT                   R4
       21 MOVE                             R9 R8
       22 MOVE                             R10 R2
       23 CALL                             R9 1 0
       24 FORGLOOP                         R4 2 [inext] ; [-4]
       26 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_NEXT                    R0
        5 GETIMPORT                        R5 K1 [pairs]
        7 MOVE                             R6 R4
        8 CALL                             R5 1 3
        9 FORGPREP_NEXT                    R5
       10 LOADNIL                          R10
       11 SETTABLE                         R10 R4 R8
       12 FORGLOOP                         R5 1 ; [-3]
       14 FORGLOOP                         R0 2 ; [-10]
       16 GETIMPORT                        R0 K1 [pairs]
       18 GETUPVAL                         R1 1
       19 CALL                             R0 1 3
       20 FORGPREP_NEXT                    R0
       21 JUMPIFNOT                        R4 ; [+3]
       22 GETTABLEKS                       R5 R4 K2 ["disconnect"]
       24 CALL                             R5 0 0
       25 FORGLOOP                         R0 2 ; [-5]
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Refocus"]
        4 JUMPIFNOTEQ                      R1 R2 ; [+14]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K0 ["Refocus"]
       10 FASTCALL1                        TOSTRING R4 ; [+2]
       11 GETIMPORT                        R3 K2 [tostring]
       13 CALL                             R3 1 1
       14 MOVE                             R4 R0
       15 NAMECALL                         R1 R1 K3 ["handleEvent"]
       17 CALL                             R1 3 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R1 R0 K4 ["state"]
       21 GETTABLEKS                       R2 R0 K5 ["lastState"]
       23 GETTABLEKS                       R3 R0 K6 ["action"]
       25 MOVE                             R4 R1
       26 JUMPIFNOT                        R4 ; [+2]
       27 GETTABLEKS                       R4 R1 K7 ["routes"]
       29 MOVE                             R5 R2
       30 JUMPIFNOT                        R5 ; [+2]
       31 GETTABLEKS                       R5 R2 K7 ["routes"]
       33 JUMPIFNOT                        R4 ; [+6]
       34 GETTABLEKS                       R7 R1 K8 ["index"]
       36 GETTABLE                         R6 R4 R7
       37 GETTABLEKS                       R6 R6 K9 ["key"]
       39 JUMPIF                           R6 ; [+1]
       40 LOADNIL                          R6
       41 GETUPVAL                         R8 3
       42 JUMPIFEQ                         R6 R8 ; [+2]
       44 LOADB                            R7 0 +1
       45 LOADB                            R7 1
       46 JUMPIFNOT                        R1 ; [+3]
       47 GETTABLEKS                       R8 R1 K10 ["isTransitioning"]
       49 JUMPIF                           R8 ; [+1]
       50 LOADB                            R8 0
       51 LOADNIL                          R9
       52 JUMPIFNOT                        R5 ; [+14]
       53 GETIMPORT                        R10 K12 [ipairs]
       55 MOVE                             R11 R5
       56 CALL                             R10 1 3
       57 FORGPREP_INEXT                   R10
       58 GETTABLEKS                       R15 R14 K9 ["key"]
       60 GETUPVAL                         R16 3
       61 JUMPIFNOTEQ                      R15 R16 ; [+3]
       63 MOVE                             R9 R14
       64 JUMP                             ; [+2]
       65 FORGLOOP                         R10 2 [inext] ; [-8]
       67 LOADNIL                          R10
       68 JUMPIFNOT                        R4 ; [+14]
       69 GETIMPORT                        R11 K12 [ipairs]
       71 MOVE                             R12 R4
       72 CALL                             R11 1 3
       73 FORGPREP_INEXT                   R11
       74 GETTABLEKS                       R16 R15 K9 ["key"]
       76 GETUPVAL                         R17 3
       77 JUMPIFNOTEQ                      R16 R17 ; [+3]
       79 MOVE                             R10 R15
       80 JUMP                             ; [+2]
       81 FORGLOOP                         R11 2 [inext] ; [-8]
       83 DUPTABLE                         R11 K15 [{"context", "state", "lastState", "action", "type"}]
       84 GETIMPORT                        R12 K18 [string.format]
       86 LOADK                            R13 K19 ["%s:%s_%s"]
       87 GETUPVAL                         R14 3
       88 GETTABLEKS                       R16 R3 K14 ["type"]
       90 FASTCALL1                        TOSTRING R16 ; [+2]
       91 GETIMPORT                        R15 K2 [tostring]
       93 CALL                             R15 1 1
       94 GETTABLEKS                       R17 R0 K13 ["context"]
       96 ORK                              R16 R17 K20 ["Root"]
       97 CALL                             R12 4 1
       98 SETTABLEKS                       R12 R11 K13 ["context"]
      100 SETTABLEKS                       R10 R11 K4 ["state"]
      102 SETTABLEKS                       R9 R11 K5 ["lastState"]
      104 SETTABLEKS                       R3 R11 K6 ["action"]
      106 GETUPVAL                         R12 0
      107 SETTABLEKS                       R12 R11 K14 ["type"]
      109 JUMPIFNOT                        R7 ; [+2]
      110 LOADK                            R12 K21 ["A"]
      111 JUMP                             ; [+1]
      112 LOADK                            R12 K22 [""]
      113 JUMPIFNOT                        R8 ; [+2]
      114 LOADK                            R13 K23 ["T"]
      115 JUMP                             ; [+1]
      116 LOADK                            R13 K22 [""]
      117 GETUPVAL                         R19 0
      118 FASTCALL1                        TOSTRING R19 ; [+2]
      119 GETIMPORT                        R18 K2 [tostring]
      121 CALL                             R18 1 1
      122 MOVE                             R15 R18
      123 MOVE                             R16 R12
      124 MOVE                             R17 R13
      125 CONCAT                           R14 R15 R17
      126 GETUPVAL                         R15 2
      127 MOVE                             R17 R14
      128 MOVE                             R18 R11
      129 NAMECALL                         R15 R15 K3 ["handleEvent"]
      131 CALL                             R15 3 0
      132 JUMPIF                           R10 ; [+6]
      133 GETUPVAL                         R15 2
      134 GETTABLEKS                       R15 R15 K24 ["events"]
      136 GETTABLEKS                       R15 R15 K25 ["shutdown"]
      138 CALL                             R15 0 0
      139 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 GETUPVAL                         R5 1
        6 JUMPIFNOTEQ                      R4 R5 ; [+7]
        8 GETIMPORT                        R5 K4 [table.remove]
       10 GETUPVAL                         R6 0
       11 MOVE                             R7 R3
       12 CALL                             R5 2 0
       13 RETURN                           R0 0
       14 FORGLOOP                         R0 2 [inext] ; [-10]
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R3 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 LOADK                            R5 K0 ["Invalid event type '%s'"]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R7 R0
       10 GETIMPORT                        R6 K2 [tostring]
       12 CALL                             R6 1 1
       13 CALL                             R3 3 0
       14 GETUPVAL                         R3 1
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K4 [type]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K5 ["function"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 LOADK                            R5 K6 ["eventHandler for '%s' must be a function"]
       25 FASTCALL1                        TOSTRING R0 ; [+3]
       26 MOVE                             R7 R0
       27 GETIMPORT                        R6 K2 [tostring]
       29 CALL                             R6 1 1
       30 CALL                             R3 3 0
       31 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
       33 MOVE                             R4 R2
       34 MOVE                             R5 R1
       35 GETIMPORT                        R3 K9 [table.insert]
       37 CALL                             R3 2 0
       38 DUPTABLE                         R3 K11 [{"disconnect"}]
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R4 R3 K10 ["disconnect"]
       44 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["Refocus"]
        4 JUMPIFEQ                         R0 R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 LOADK                            R4 K1 ["navigation.emit only supports NavigationEvents.Refocus currently."]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 0
       11 LOADB                            R3 1
       12 JUMPIFEQKNIL                     R1 ; [+10]
       14 FASTCALL1                        TYPE R1 ; [+3]
       15 MOVE                             R5 R1
       16 GETIMPORT                        R4 K3 [type]
       18 CALL                             R4 1 1
       19 JUMPIFEQKS                       R4 K4 ["table"] ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 LOADK                            R4 K5 ["navigation.emit payloads must be a table or nil"]
       24 CALL                             R2 2 0
       25 GETUPVAL                         R2 2
       26 MOVE                             R3 R0
       27 MOVE                             R4 R1
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_6:
        0 ORK                              R2 R2 K0 ["Blurred"]
        1 NEWTABLE                         R3 0 0
        3 NEWTABLE                         R4 8 0
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["Action"]
        8 NEWTABLE                         R6 0 0
       10 SETTABLE                         R6 R4 R5
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K2 ["WillFocus"]
       14 NEWTABLE                         R6 0 0
       16 SETTABLE                         R6 R4 R5
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["DidFocus"]
       20 NEWTABLE                         R6 0 0
       22 SETTABLE                         R6 R4 R5
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K4 ["WillBlur"]
       26 NEWTABLE                         R6 0 0
       28 SETTABLE                         R6 R4 R5
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K5 ["DidBlur"]
       32 NEWTABLE                         R6 0 0
       34 SETTABLE                         R6 R4 R5
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K6 ["Refocus"]
       38 NEWTABLE                         R6 0 0
       40 SETTABLE                         R6 R4 R5
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R4
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 GETUPVAL                         R7 2
       48 MOVE                             R8 R1
       49 MOVE                             R9 R2
       50 MOVE                             R10 R5
       51 MOVE                             R11 R6
       52 CALL                             R7 4 1
       53 GETIMPORT                        R8 K8 [pairs]
       55 MOVE                             R9 R4
       56 CALL                             R8 1 3
       57 FORGPREP_NEXT                    R8
       58 MOVE                             R13 R0
       59 MOVE                             R14 R11
       60 NEWCLOSURE                       R15 P2
       61 CAPTURE                          VAL R11
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 CALL                             R13 2 1
       66 SETTABLE                         R13 R3 R11
       67 FORGLOOP                         R8 1 ; [-10]
       69 DUPTABLE                         R8 K11 [{"addListener", "emit"}]
       70 NEWCLOSURE                       R9 P3
       71 CAPTURE                          VAL R4
       72 CAPTURE                          UPVAL U3
       73 SETTABLEKS                       R9 R8 K9 ["addListener"]
       75 NEWCLOSURE                       R9 P4
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R5
       79 SETTABLEKS                       R9 R8 K10 ["emit"]
       81 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["NavigationEvents"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K1 [require]
       23 GETIMPORT                        R3 K3 [script]
       25 GETTABLEKS                       R3 R3 K4 ["Parent"]
       27 GETTABLEKS                       R3 R3 K7 ["utils"]
       29 GETTABLEKS                       R3 R3 K8 ["createSubscriberEventsStateTable"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K1 [require]
       34 GETIMPORT                        R4 K3 [script]
       36 GETTABLEKS                       R4 R4 K4 ["Parent"]
       38 GETTABLEKS                       R4 R4 K7 ["utils"]
       40 GETTABLEKS                       R4 R4 K9 ["validate"]
       42 CALL                             R3 1 1
       43 DUPCLOSURE                       R4 K10 [PROTO_6]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 RETURN                           R4 1
