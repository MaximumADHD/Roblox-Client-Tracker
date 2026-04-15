PROTO_0:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["useRef"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 LOADB                            R2 1
        8 SETTABLE                         R2 R1 R0
        9 LOADB                            R1 1
       10 GETIMPORT                        R2 K2 [pairs]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R3 R5 K0 ["current"]
       15 CALL                             R2 1 3
       16 FORGPREP_NEXT                    R2
       17 JUMPIF                           R6 ; [+2]
       18 LOADB                            R1 0
       19 JUMP                             ; [+2]
       20 FORGLOOP                         R2 2 ; [-4]
       22 JUMPIFNOT                        R1 ; [+8]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K3 ["onExitComplete"]
       26 JUMPIFNOT                        R2 ; [+4]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K3 ["onExitComplete"]
       30 CALL                             R2 0 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 LOADB                            R2 0
        4 SETTABLE                         R2 R1 R0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K1 ["Provider"]
        6 DUPTABLE                         R2 K3 [{"value"}]
        7 GETUPVAL                         R3 3
        8 SETTABLEKS                       R3 R2 K2 ["value"]
       10 GETUPVAL                         R3 4
       11 CALL                             R0 3 1
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["PresenceProvider: props cannot be nil"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K3 ["children"]
        8 GETTABLEKS                       R2 R0 K4 ["isPresent"]
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R2 1
       13 GETTABLEKS                       R3 R0 K5 ["passThroughData"]
       15 LOADNIL                          R4
       16 GETIMPORT                        R5 K7 [pcall]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          REF R4
       20 CAPTURE                          UPVAL U0
       21 CALL                             R5 1 2
       22 JUMPIF                           R5 ; [+9]
       23 GETIMPORT                        R7 K9 [warn]
       25 LOADK                            R8 K10 ["PresenceProvider: Error generating ID:"]
       26 MOVE                             R9 R6
       27 CALL                             R7 2 0
       28 LOADK                            R7 K11 ["presence-"]
       29 GETUPVAL                         R8 0
       30 CALL                             R8 0 1
       31 CONCAT                           R4 R7 R8
       32 LOADNIL                          R7
       33 GETIMPORT                        R8 K7 [pcall]
       35 NEWCLOSURE                       R9 P1
       36 CAPTURE                          REF R7
       37 CAPTURE                          UPVAL U1
       38 CALL                             R8 1 2
       39 MOVE                             R5 R8
       40 MOVE                             R6 R9
       41 JUMPIF                           R5 ; [+11]
       42 GETIMPORT                        R8 K9 [warn]
       44 LOADK                            R9 K12 ["PresenceProvider: Error creating childrenPresence ref:"]
       45 MOVE                             R10 R6
       46 CALL                             R8 2 0
       47 DUPTABLE                         R8 K14 [{"current"}]
       48 NEWTABLE                         R9 0 0
       50 SETTABLEKS                       R9 R8 K13 ["current"]
       52 MOVE                             R7 R8
       53 NEWCLOSURE                       R8 P2
       54 CAPTURE                          REF R7
       55 CAPTURE                          VAL R0
       56 NEWCLOSURE                       R9 P3
       57 CAPTURE                          REF R7
       58 DUPTABLE                         R10 K18 [{"id", "isPresent", "register", "onExitComplete", "passThroughData"}]
       59 SETTABLEKS                       R4 R10 K15 ["id"]
       61 SETTABLEKS                       R2 R10 K4 ["isPresent"]
       63 SETTABLEKS                       R9 R10 K16 ["register"]
       65 SETTABLEKS                       R8 R10 K17 ["onExitComplete"]
       67 SETTABLEKS                       R3 R10 K5 ["passThroughData"]
       69 LOADNIL                          R11
       70 GETIMPORT                        R12 K7 [pcall]
       72 NEWCLOSURE                       R13 P4
       73 CAPTURE                          REF R11
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R1
       78 CALL                             R12 1 2
       79 MOVE                             R5 R12
       80 MOVE                             R6 R13
       81 JUMPIF                           R5 ; [+5]
       82 GETIMPORT                        R12 K9 [warn]
       84 LOADK                            R13 K19 ["PresenceProvider: Error creating PresenceContext.Provider:"]
       85 MOVE                             R14 R6
       86 CALL                             R12 2 0
       87 MOVE                             R12 R11
       88 JUMPIF                           R12 ; [+10]
       89 GETUPVAL                         R13 1
       90 GETTABLEKS                       R12 R13 K20 ["createElement"]
       92 GETUPVAL                         R14 1
       93 GETTABLEKS                       R13 R14 K21 ["Fragment"]
       95 NEWTABLE                         R14 0 0
       97 MOVE                             R15 R1
       98 CALL                             R12 3 1
       99 CLOSEUPVALS                      R4
      100 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Motion"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["AnimatePresence"]
       18 GETTABLEKS                       R4 R5 K9 ["PresenceContext"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R7 R0 K8 ["AnimatePresence"]
       25 GETTABLEKS                       R6 R7 K10 ["utils"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R4 R5 K11 ["useIdFallback"]
       30 DUPCLOSURE                       R5 K12 [PROTO_6]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
