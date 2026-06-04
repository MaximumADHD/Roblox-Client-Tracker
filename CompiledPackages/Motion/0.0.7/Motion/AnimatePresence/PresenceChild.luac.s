PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 LOADB                            R1 1
        4 GETIMPORT                        R2 K1 [pairs]
        6 GETUPVAL                         R3 0
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 JUMPIF                           R6 ; [+2]
       10 LOADB                            R1 0
       11 JUMP                             ; [+2]
       12 FORGLOOP                         R2 2 ; [-4]
       14 JUMPIFNOT                        R1 ; [+4]
       15 GETUPVAL                         R2 1
       16 JUMPIFNOT                        R2 ; [+2]
       17 GETUPVAL                         R2 1
       18 CALL                             R2 0 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R2 R0 K0 ["children"]
        5 FASTCALL1                        TYPEOF R2 ; [+2]
        6 GETIMPORT                        R1 K2 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+5]
       11 GETIMPORT                        R1 K5 [error]
       13 LOADK                            R2 K6 ["PresenceChild: children must be a React.Element"]
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K0 ["children"]
       17 GETTABLEKS                       R1 R1 K7 ["type"]
       19 JUMPIF                           R1 ; [+4]
       20 GETIMPORT                        R1 K5 [error]
       22 LOADK                            R2 K6 ["PresenceChild: children must be a React.Element"]
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K8 ["onExitComplete"]
       26 JUMPIFNOT                        R1 ; [+17]
       27 GETTABLEKS                       R2 R0 K8 ["onExitComplete"]
       29 FASTCALL1                        TYPEOF R2 ; [+2]
       30 GETIMPORT                        R1 K2 [typeof]
       32 CALL                             R1 1 1
       33 JUMPIFEQKS                       R1 K9 ["function"] ; [+10]
       35 GETTABLEKS                       R1 R0 K8 ["onExitComplete"]
       37 GETTABLEKS                       R1 R1 K10 ["_isMockFunction"]
       39 JUMPIF                           R1 ; [+4]
       40 GETIMPORT                        R1 K5 [error]
       42 LOADK                            R2 K11 ["PresenceChild: onExitComplete must be a function"]
       43 CALL                             R1 1 0
       44 GETTABLEKS                       R1 R0 K0 ["children"]
       46 GETTABLEKS                       R2 R0 K12 ["isPresent"]
       48 GETTABLEKS                       R3 R0 K8 ["onExitComplete"]
       50 GETTABLEKS                       R4 R0 K13 ["passThroughData"]
       52 GETTABLEKS                       R5 R0 K14 ["presenceId"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K15 ["useRef"]
       57 NEWTABLE                         R7 0 0
       59 CALL                             R6 1 1
       60 GETTABLEKS                       R7 R6 K16 ["current"]
       62 MOVE                             R8 R5
       63 JUMPIF                           R8 ; [+2]
       64 GETUPVAL                         R8 1
       65 CALL                             R8 0 1
       66 NEWCLOSURE                       R9 P0
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R3
       69 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
       71 LOADB                            R10 0 +1
       72 LOADB                            R10 1
       73 DUPTABLE                         R11 K18 [{"id", "isPresent", "passThroughData", "onExitComplete"}]
       74 SETTABLEKS                       R8 R11 K17 ["id"]
       76 SETTABLEKS                       R10 R11 K12 ["isPresent"]
       78 SETTABLEKS                       R4 R11 K13 ["passThroughData"]
       80 SETTABLEKS                       R9 R11 K8 ["onExitComplete"]
       82 JUMPIFEQKNIL                     R2 ; [+10]
       84 GETIMPORT                        R12 K20 [pairs]
       86 MOVE                             R13 R7
       87 CALL                             R12 1 3
       88 FORGPREP_NEXT                    R12
       89 LOADB                            R17 0
       90 SETTABLE                         R17 R7 R15
       91 FORGLOOP                         R12 2 ; [-3]
       93 GETUPVAL                         R12 0
       94 GETTABLEKS                       R12 R12 K21 ["createElement"]
       96 GETUPVAL                         R13 2
       97 GETTABLEKS                       R13 R13 K22 ["Provider"]
       99 DUPTABLE                         R14 K24 [{"value"}]
      100 SETTABLEKS                       R11 R14 K23 ["value"]
      102 MOVE                             R15 R1
      103 CALL                             R12 3 -1
      104 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K2 ["Parent"]
       20 GETTABLEKS                       R4 R4 K6 ["utils"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R3 R3 K7 ["useIdFallback"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K2 ["Parent"]
       31 GETTABLEKS                       R5 R5 K8 ["PresenceContext"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K9 [PROTO_0]
       35 DUPCLOSURE                       R6 K10 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 RETURN                           R6 1
