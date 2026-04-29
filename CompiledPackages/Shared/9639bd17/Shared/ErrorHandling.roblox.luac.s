PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K0 ["Parent"]
       13 MOVE                             R8 R5
       14 NAMECALL                         R6 R6 K1 ["FindFirstChild"]
       16 CALL                             R6 2 1
       17 JUMPIFNOT                        R6 ; [+15]
       18 NAMECALL                         R7 R6 K2 ["GetFullName"]
       20 CALL                             R7 1 1
       21 LOADK                            R9 K3 ["^game%."]
       22 LOADK                            R10 K4 [""]
       23 NAMECALL                         R7 R7 K5 ["gsub"]
       25 CALL                             R7 3 1
       26 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       28 MOVE                             R9 R0
       29 MOVE                             R10 R7
       30 GETIMPORT                        R8 K8 [table.insert]
       32 CALL                             R8 2 0
       33 FORGLOOP                         R1 2 ; [-24]
       35 SETUPVAL                         R0 0
       36 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R2 R1
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADN                            R9 1
        7 LENGTH                           R10 R6
        8 FASTCALL3                        STRING_SUB R0 R9 R10
       10 MOVE                             R8 R0
       11 GETIMPORT                        R7 K2 [string.sub]
       13 CALL                             R7 3 1
       14 JUMPIFNOTEQ                      R7 R6 ; [+3]
       16 LOADB                            R7 1
       17 RETURN                           R7 1
       18 FORGLOOP                         R2 2 ; [-13]
       20 LOADB                            R2 0
       21 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R1 K0 [""]
        1 LOADB                            R2 0
        2 LOADB                            R3 0
        3 ADDK                             R6 R0 K1 [1]
        4 LOADK                            R4 K2 [∞]
        5 LOADN                            R5 1
        6 FORNPREP                         R4
        7 GETIMPORT                        R7 K5 [debug.info]
        9 MOVE                             R8 R6
       10 LOADK                            R9 K6 ["sln"]
       11 CALL                             R7 2 3
       12 JUMPIFNOT                        R7 ; [+60]
       13 JUMPIFEQKS                       R7 K7 ["[C]"] ; [+58]
       15 JUMPIF                           R2 ; [+23]
       16 GETUPVAL                         R11 0
       17 CALL                             R11 0 1
       18 MOVE                             R12 R11
       19 LOADNIL                          R13
       20 LOADNIL                          R14
       21 FORGPREP                         R12
       22 LOADN                            R19 1
       23 LENGTH                           R20 R16
       24 FASTCALL3                        STRING_SUB R7 R19 R20
       26 MOVE                             R18 R7
       27 GETIMPORT                        R17 K10 [string.sub]
       29 CALL                             R17 3 1
       30 JUMPIFNOTEQ                      R17 R16 ; [+3]
       32 LOADB                            R10 1
       33 JUMP                             ; [+3]
       34 FORGLOOP                         R12 2 ; [-13]
       36 LOADB                            R10 0
       37 NOT                              R3 R10
       38 LOADB                            R2 1
       39 JUMPIFNOT                        R3 ; [+22]
       40 GETUPVAL                         R11 0
       41 CALL                             R11 0 1
       42 MOVE                             R12 R11
       43 LOADNIL                          R13
       44 LOADNIL                          R14
       45 FORGPREP                         R12
       46 LOADN                            R19 1
       47 LENGTH                           R20 R16
       48 FASTCALL3                        STRING_SUB R7 R19 R20
       50 MOVE                             R18 R7
       51 GETIMPORT                        R17 K10 [string.sub]
       53 CALL                             R17 3 1
       54 JUMPIFNOTEQ                      R17 R16 ; [+3]
       56 LOADB                            R10 1
       57 JUMP                             ; [+3]
       58 FORGLOOP                         R12 2 ; [-13]
       60 LOADB                            R10 0
       61 JUMPIF                           R10 ; [+10]
       62 MOVE                             R10 R1
       63 LOADK                            R12 K11 ["%*:%* function %*\n"]
       64 MOVE                             R14 R7
       65 MOVE                             R15 R8
       66 ORK                              R16 R9 K12 ["?"]
       67 NAMECALL                         R12 R12 K13 ["format"]
       69 CALL                             R12 4 1
       70 MOVE                             R11 R12
       71 CONCAT                           R1 R10 R11
       72 FORNLOOP                         R4
       73 GETIMPORT                        R4 K15 [string.gsub]
       75 MOVE                             R5 R1
       76 LOADK                            R6 K16 ["\n$"]
       77 LOADK                            R7 K0 [""]
       78 CALL                             R4 3 1
       79 MOVE                             R1 R4
       80 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+39]
        7 GETIMPORT                        R1 K4 [string.find]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 [":[%d]+: "]
       11 CALL                             R1 2 2
       12 JUMPIFNOT                        R2 ; [+8]
       13 ADDK                             R5 R2 K6 [1]
       14 FASTCALL2                        STRING_SUB R0 R5 ; [+4]
       16 MOVE                             R4 R0
       17 GETIMPORT                        R3 K8 [string.sub]
       19 CALL                             R3 2 1
       20 JUMP                             ; [+1]
       21 MOVE                             R3 R0
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K9 ["Error"]
       25 GETTABLEKS                       R4 R5 K10 ["new"]
       27 MOVE                             R5 R3
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 1
       30 JUMPIFNOT                        R5 ; [+6]
       31 GETUPVAL                         R5 2
       32 LOADN                            R6 2
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K11 ["stack"]
       36 RETURN                           R4 1
       37 GETIMPORT                        R5 K14 [debug.traceback]
       39 LOADNIL                          R6
       40 LOADN                            R7 2
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R4 K11 ["stack"]
       44 RETURN                           R4 1
       45 RETURN                           R0 1

PROTO_4:
        0 LOADNIL                          R1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+24]
        8 GETTABLEKS                       R2 R0 K3 ["message"]
       10 JUMPIFNOT                        R2 ; [+15]
       11 GETTABLEKS                       R2 R0 K4 ["stack"]
       13 JUMPIFNOT                        R2 ; [+12]
       14 LOADK                            R2 K5 ["\n------ Error caught by React ------\n"]
       15 GETTABLEKS                       R3 R0 K3 ["message"]
       17 LOADK                            R4 K5 ["\n------ Error caught by React ------\n"]
       18 GETTABLEKS                       R6 R0 K4 ["stack"]
       20 FASTCALL1                        TOSTRING R6 ; [+2]
       21 GETIMPORT                        R5 K7 [tostring]
       23 CALL                             R5 1 1
       24 CONCAT                           R1 R2 R5
       25 RETURN                           R1 1
       26 GETUPVAL                         R2 0
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 MOVE                             R1 R2
       30 RETURN                           R1 1
       31 GETUPVAL                         R2 0
       32 MOVE                             R3 R0
       33 CALL                             R2 1 1
       34 MOVE                             R1 R2
       35 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [string.split]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\n------ Error caught by React ------\n"]
        4 CALL                             R1 2 1
        5 LENGTH                           R2 R1
        6 JUMPIFNOTEQKN                    R2 K4 [3] ; [+16]
        8 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K7 [table.unpack]
       12 CALL                             R2 1 3
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K8 ["new"]
       16 MOVE                             R6 R3
       17 CALL                             R5 1 1
       18 SETTABLEKS                       R4 R5 K9 ["stack"]
       20 MOVE                             R6 R5
       21 MOVE                             R7 R2
       22 RETURN                           R6 2
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K8 ["new"]
       26 MOVE                             R3 R0
       27 CALL                             R2 1 1
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K9 ["stack"]
       31 MOVE                             R3 R2
       32 LOADK                            R4 K10 [""]
       33 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 GETTABLEKS                       R4 R1 K7 ["util"]
       16 GETTABLEKS                       R3 R4 K8 ["inspect"]
       18 GETIMPORT                        R4 K4 [require]
       20 GETIMPORT                        R7 K1 [script]
       22 GETTABLEKS                       R6 R7 K2 ["Parent"]
       24 GETTABLEKS                       R5 R6 K9 ["ReactFeatureFlags"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K10 ["filterInternalStackFrames"]
       29 NEWTABLE                         R6 0 9
       31 LOADK                            R7 K11 ["React"]
       32 LOADK                            R8 K12 ["ReactDevtoolsShared"]
       33 LOADK                            R9 K13 ["ReactNoopRenderer"]
       34 LOADK                            R10 K14 ["ReactReconciler"]
       35 LOADK                            R11 K15 ["ReactRefresh"]
       36 LOADK                            R12 K16 ["ReactRoblox"]
       37 LOADK                            R13 K17 ["RoactCompat"]
       38 LOADK                            R14 K18 ["Scheduler"]
       39 LOADK                            R15 K19 ["Shared"]
       40 SETLIST                          R6 R7 9 [1]
       42 LOADNIL                          R7
       43 NEWCLOSURE                       R8 P0
       44 CAPTURE                          REF R7
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R0
       47 DUPCLOSURE                       R9 K20 [PROTO_1]
       48 CAPTURE                          VAL R8
       49 DUPCLOSURE                       R10 K21 [PROTO_2]
       50 CAPTURE                          VAL R8
       51 DUPCLOSURE                       R11 K22 [PROTO_3]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R10
       55 DUPCLOSURE                       R12 K23 [PROTO_4]
       56 CAPTURE                          VAL R3
       57 DUPCLOSURE                       R13 K24 [PROTO_5]
       58 CAPTURE                          VAL R2
       59 DUPTABLE                         R14 K29 [{"describeError", "errorToString", "parseReactError", "__ERROR_DIVIDER"}]
       60 SETTABLEKS                       R11 R14 K25 ["describeError"]
       62 SETTABLEKS                       R12 R14 K26 ["errorToString"]
       64 SETTABLEKS                       R13 R14 K27 ["parseReactError"]
       66 LOADK                            R15 K30 ["\n------ Error caught by React ------\n"]
       67 SETTABLEKS                       R15 R14 K28 ["__ERROR_DIVIDER"]
       69 CLOSEUPVALS                      R7
       70 RETURN                           R14 1
