PROTO_0:
        0 MOVE                             R3 R0
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R0 R3
        5 ORK                              R2 R2 K0 [1]
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R9 R1 K1 ["scale"]
       12 GETTABLEKS                       R10 R7 K2 ["name"]
       14 GETTABLE                         R8 R9 R10
       15 JUMPIFEQ                         R8 R2 ; [+16]
       17 GETTABLEKS                       R8 R1 K1 ["scale"]
       19 GETTABLEKS                       R9 R7 K2 ["name"]
       21 SETTABLE                         R2 R8 R9
       22 GETTABLEKS                       R8 R1 K3 ["values"]
       24 GETTABLEKS                       R9 R7 K2 ["name"]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R11 R7 K4 ["value"]
       29 MOVE                             R12 R2
       30 CALL                             R10 2 1
       31 SETTABLE                         R10 R8 R9
       32 FORGLOOP                         R3 2 ; [-23]
       34 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R6 R0 K1 ["pseudo"]
        2 ORK                              R5 R6 K0 ["GuiObject"]
        3 GETTABLEKS                       R6 R0 K2 ["properties"]
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 GETUPVAL                         R13 0
        9 GETTABLE                         R12 R13 R5
       10 GETTABLE                         R11 R12 R9
       11 GETTABLEKS                       R12 R11 K3 ["filter"]
       13 JUMPIFEQKNIL                     R12 ; [+5]
       15 GETTABLEKS                       R12 R11 K3 ["filter"]
       17 JUMPIFNOTEQ                      R12 R2 ; [+77]
       19 FASTCALL1                        TYPE R10 ; [+3]
       20 MOVE                             R13 R10
       21 GETIMPORT                        R12 K5 [type]
       23 CALL                             R12 1 1
       24 JUMPIFNOTEQKS                    R12 K6 ["string"] ; [+15]
       26 LOADN                            R14 2
       27 LENGTH                           R15 R10
       28 NAMECALL                         R12 R10 K7 ["sub"]
       30 CALL                             R12 3 1
       31 GETUPVAL                         R13 1
       32 GETTABLEKS                       R14 R0 K8 ["attributes"]
       34 MOVE                             R15 R3
       35 MOVE                             R16 R4
       36 CALL                             R13 3 0
       37 GETTABLEKS                       R13 R3 K9 ["values"]
       39 GETTABLE                         R10 R13 R12
       40 GETTABLEKS                       R13 R11 K10 ["property"]
       42 FASTCALL1                        TYPE R13 ; [+2]
       43 GETIMPORT                        R12 K5 [type]
       45 CALL                             R12 1 1
       46 JUMPIFNOTEQKS                    R12 K11 ["table"] ; [+26]
       48 GETTABLEKS                       R13 R11 K10 ["property"]
       50 GETTABLEKS                       R13 R13 K11 ["table"]
       52 GETTABLE                         R12 R1 R13
       53 JUMPIFNOTEQKNIL                  R12 ; [+8]
       55 GETTABLEKS                       R12 R11 K10 ["property"]
       57 GETTABLEKS                       R12 R12 K11 ["table"]
       59 NEWTABLE                         R13 0 0
       61 SETTABLE                         R13 R1 R12
       62 GETTABLEKS                       R13 R11 K10 ["property"]
       64 GETTABLEKS                       R13 R13 K11 ["table"]
       66 GETTABLE                         R12 R1 R13
       67 GETTABLEKS                       R13 R11 K10 ["property"]
       69 GETTABLEKS                       R13 R13 K12 ["key"]
       71 SETTABLE                         R10 R12 R13
       72 JUMP                             ; [+22]
       73 GETTABLEKS                       R13 R11 K10 ["property"]
       75 FASTCALL1                        TYPE R13 ; [+2]
       76 GETIMPORT                        R12 K5 [type]
       78 CALL                             R12 1 1
       79 JUMPIFNOTEQKS                    R12 K6 ["string"] ; [+5]
       81 GETTABLEKS                       R12 R11 K10 ["property"]
       83 SETTABLE                         R10 R1 R12
       84 JUMP                             ; [+10]
       85 GETIMPORT                        R12 K14 [error]
       87 LOADK                            R14 K15 ["Invalid mapping type %* %*"]
       88 MOVE                             R16 R5
       89 MOVE                             R17 R9
       90 NAMECALL                         R14 R14 K16 ["format"]
       92 CALL                             R14 3 1
       93 MOVE                             R13 R14
       94 CALL                             R12 1 0
       95 FORGLOOP                         R6 2 ; [-88]
       97 RETURN                           R1 1

PROTO_2:
        0 JUMPIF                           R1 ; [+5]
        1 GETIMPORT                        R6 K1 [error]
        3 LOADK                            R7 K2 ["applyRules: rules is nil - make sure FoundationProvider is used to wrap your component"]
        4 CALL                             R6 1 0
        5 RETURN                           R0 0
        6 JUMPIFNOT                        R0 ; [+17]
        7 GETIMPORT                        R6 K5 [string.gmatch]
        9 MOVE                             R7 R0
       10 LOADK                            R8 K6 ["%S+"]
       11 CALL                             R6 2 3
       12 FORGPREP                         R6
       13 GETTABLE                         R11 R1 R9
       14 JUMPIFNOT                        R11 ; [+7]
       15 GETUPVAL                         R11 0
       16 GETTABLE                         R12 R1 R9
       17 MOVE                             R13 R2
       18 MOVE                             R14 R3
       19 MOVE                             R15 R4
       20 MOVE                             R16 R5
       21 CALL                             R11 5 0
       22 FORGLOOP                         R6 1 ; [-10]
       24 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 FASTCALL1                        TYPEOF R6 ; [+3]
        5 MOVE                             R8 R6
        6 GETIMPORT                        R7 K1 [typeof]
        8 CALL                             R7 1 1
        9 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+19]
       11 GETTABLE                         R8 R0 R5
       12 FASTCALL1                        TYPEOF R8 ; [+2]
       13 GETIMPORT                        R7 K1 [typeof]
       15 CALL                             R7 1 1
       16 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+12]
       18 GETIMPORT                        R7 K4 [pairs]
       20 MOVE                             R8 R6
       21 CALL                             R7 1 3
       22 FORGPREP_NEXT                    R7
       23 GETTABLE                         R12 R0 R5
       24 GETTABLE                         R13 R6 R10
       25 SETTABLE                         R13 R12 R10
       26 FORGLOOP                         R7 2 ; [-4]
       28 JUMP                             ; [+1]
       29 SETTABLE                         R6 R0 R5
       30 FORGLOOP                         R2 2 ; [-27]
       32 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 GETUPVAL                         R5 3
        7 GETUPVAL                         R6 4
        8 GETTABLEKS                       R6 R6 K0 ["current"]
       10 GETUPVAL                         R7 5
       11 CALL                             R1 6 0
       12 GETUPVAL                         R1 6
       13 GETUPVAL                         R2 7
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 0
       16 MOVE                             R3 R1
       17 GETUPVAL                         R4 2
       18 MOVE                             R5 R0
       19 GETUPVAL                         R6 3
       20 GETUPVAL                         R7 4
       21 GETTABLEKS                       R7 R7 K0 ["current"]
       23 GETUPVAL                         R8 5
       24 CALL                             R2 6 0
       25 GETUPVAL                         R2 8
       26 MOVE                             R3 R0
       27 GETUPVAL                         R4 9
       28 CALL                             R2 2 0
       29 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 GETTABLEKS                       R5 R4 K0 ["rules"]
        4 GETTABLEKS                       R6 R4 K1 ["scale"]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R7 R7 K2 ["useRef"]
        9 DUPTABLE                         R8 K4 [{"scale", "values"}]
       10 NEWTABLE                         R9 0 0
       12 SETTABLEKS                       R9 R8 K1 ["scale"]
       14 NEWTABLE                         R9 0 0
       16 SETTABLEKS                       R9 R8 K3 ["values"]
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K5 ["useMemo"]
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R7
       28 CAPTURE                          VAL R6
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R3
       33 NEWTABLE                         R10 0 6
       35 MOVE                             R11 R1
       36 MOVE                             R12 R2
       37 MOVE                             R13 R3
       38 MOVE                             R14 R0
       39 MOVE                             R15 R5
       40 MOVE                             R16 R6
       41 SETLIST                          R10 R11 6 [1]
       43 CALL                             R8 2 -1
       44 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["StyleSheet"]
       25 GETTABLEKS                       R5 R5 K11 ["Rules"]
       27 GETTABLEKS                       R5 R5 K9 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K4 ["Parent"]
       36 GETTABLEKS                       R6 R6 K12 ["scaleValue"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K4 ["Parent"]
       45 GETTABLEKS                       R7 R7 K13 ["styleMappings"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K14 ["Providers"]
       52 GETTABLEKS                       R8 R8 K15 ["Style"]
       54 GETTABLEKS                       R8 R8 K16 ["useRules"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K17 ["Utility"]
       61 GETTABLEKS                       R9 R9 K18 ["getFormattedTags"]
       63 CALL                             R8 1 1
       64 DUPCLOSURE                       R9 K19 [PROTO_0]
       65 CAPTURE                          VAL R5
       66 DUPCLOSURE                       R10 K20 [PROTO_1]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R9
       69 DUPCLOSURE                       R11 K21 [PROTO_2]
       70 CAPTURE                          VAL R10
       71 DUPCLOSURE                       R12 K22 [PROTO_3]
       72 DUPCLOSURE                       R13 K23 [PROTO_5]
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R12
       78 RETURN                           R13 1
