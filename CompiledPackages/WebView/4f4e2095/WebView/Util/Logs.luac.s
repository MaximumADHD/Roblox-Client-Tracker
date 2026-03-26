PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["[WebView Analytics] %s"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 NAMECALL                         R2 R2 K5 ["format"]
       10 CALL                             R2 2 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["shouldLogAnalytics"]
        3 CALL                             R5 0 1
        4 JUMPIF                           R5 ; [+1]
        5 RETURN                           R0 0
        6 ORK                              R0 R0 K1 [""]
        7 ORK                              R1 R1 K1 [""]
        8 ORK                              R2 R2 K1 [""]
        9 ORK                              R3 R3 K1 [""]
       10 MOVE                             R5 R4
       11 JUMPIF                           R5 ; [+2]
       12 NEWTABLE                         R5 0 0
       14 MOVE                             R4 R5
       15 NEWTABLE                         R5 0 0
       17 GETIMPORT                        R6 K3 [pairs]
       19 MOVE                             R7 R4
       20 CALL                             R6 1 3
       21 FORGPREP_NEXT                    R6
       22 FASTCALL1                        TYPE R9 ; [+3]
       23 MOVE                             R13 R9
       24 GETIMPORT                        R12 K5 [type]
       26 CALL                             R12 1 1
       27 JUMPIFNOTEQKS                    R12 K6 ["string"] ; [+3]
       29 MOVE                             R11 R9
       30 JUMPIF                           R11 ; [+9]
       31 LOADK                            R12 K7 ["["]
       32 FASTCALL1                        TOSTRING R10 ; [+3]
       33 MOVE                             R16 R10
       34 GETIMPORT                        R15 K9 [tostring]
       36 CALL                             R15 1 1
       37 MOVE                             R13 R15
       38 LOADK                            R14 K10 ["]"]
       39 CONCAT                           R11 R12 R14
       40 FASTCALL1                        TYPE R10 ; [+3]
       41 MOVE                             R14 R10
       42 GETIMPORT                        R13 K5 [type]
       44 CALL                             R13 1 1
       45 JUMPIFNOTEQKS                    R13 K6 ["string"] ; [+6]
       47 LOADK                            R13 K11 ["\""]
       48 MOVE                             R14 R10
       49 LOADK                            R15 K11 ["\""]
       50 CONCAT                           R12 R13 R15
       51 JUMPIF                           R12 ; [+5]
       52 FASTCALL1                        TOSTRING R10 ; [+3]
       53 MOVE                             R13 R10
       54 GETIMPORT                        R12 K9 [tostring]
       56 CALL                             R12 1 1
       57 LENGTH                           R14 R5
       58 ADDK                             R13 R14 K12 [1]
       59 MOVE                             R15 R11
       60 LOADK                            R16 K13 ["="]
       61 MOVE                             R17 R12
       62 CONCAT                           R14 R15 R17
       63 SETTABLE                         R14 R5 R13
       64 FORGLOOP                         R6 2 ; [-43]
       66 GETIMPORT                        R6 K16 [table.concat]
       68 MOVE                             R7 R5
       69 LOADK                            R8 K17 [", "]
       70 CALL                             R6 2 1
       71 LOADK                            R7 K18 ["%s(target=\"%s\", eventContext=\"%s\", eventName=\"%s\", additionalArgs={%s})"]
       72 FASTCALL1                        TOSTRING R0 ; [+3]
       73 MOVE                             R10 R0
       74 GETIMPORT                        R9 K9 [tostring]
       76 CALL                             R9 1 1
       77 FASTCALL1                        TOSTRING R1 ; [+3]
       78 MOVE                             R11 R1
       79 GETIMPORT                        R10 K9 [tostring]
       81 CALL                             R10 1 1
       82 FASTCALL1                        TOSTRING R2 ; [+3]
       83 MOVE                             R12 R2
       84 GETIMPORT                        R11 K9 [tostring]
       86 CALL                             R11 1 1
       87 FASTCALL1                        TOSTRING R3 ; [+3]
       88 MOVE                             R13 R3
       89 GETIMPORT                        R12 K9 [tostring]
       91 CALL                             R12 1 1
       92 MOVE                             R13 R6
       93 NAMECALL                         R7 R7 K19 ["format"]
       95 CALL                             R7 6 1
       96 GETIMPORT                        R8 K21 [print]
       98 LOADK                            R9 K22 ["[WebView Analytics] %s"]
       99 FASTCALL1                        TOSTRING R7 ; [+3]
      100 MOVE                             R12 R7
      101 GETIMPORT                        R11 K9 [tostring]
      103 CALL                             R11 1 1
      104 NAMECALL                         R9 R9 K19 ["format"]
      106 CALL                             R9 2 -1
      107 CALL                             R8 -1 0
      108 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["shouldLogAnalytics"]
        3 CALL                             R5 0 1
        4 JUMPIF                           R5 ; [+1]
        5 RETURN                           R0 0
        6 ORK                              R0 R0 K1 [""]
        7 ORK                              R1 R1 K1 [""]
        8 ORK                              R2 R2 K1 [""]
        9 ORK                              R3 R3 K1 [""]
       10 ORK                              R4 R4 K2 [0]
       11 LOADK                            R5 K3 ["%s(category=\"%s\", action=\"%s\", label=\"%s\", value=%s)"]
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R8 R0
       14 GETIMPORT                        R7 K5 [tostring]
       16 CALL                             R7 1 1
       17 FASTCALL1                        TOSTRING R1 ; [+3]
       18 MOVE                             R9 R1
       19 GETIMPORT                        R8 K5 [tostring]
       21 CALL                             R8 1 1
       22 FASTCALL1                        TOSTRING R2 ; [+3]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R9 K5 [tostring]
       26 CALL                             R9 1 1
       27 FASTCALL1                        TOSTRING R3 ; [+3]
       28 MOVE                             R11 R3
       29 GETIMPORT                        R10 K5 [tostring]
       31 CALL                             R10 1 1
       32 FASTCALL1                        TOSTRING R4 ; [+3]
       33 MOVE                             R12 R4
       34 GETIMPORT                        R11 K5 [tostring]
       36 CALL                             R11 1 1
       37 NAMECALL                         R5 R5 K6 ["format"]
       39 CALL                             R5 6 1
       40 GETIMPORT                        R6 K8 [print]
       42 LOADK                            R7 K9 ["[WebView Analytics] %s"]
       43 FASTCALL1                        TOSTRING R5 ; [+3]
       44 MOVE                             R10 R5
       45 GETIMPORT                        R9 K5 [tostring]
       47 CALL                             R9 1 1
       48 NAMECALL                         R7 R7 K6 ["format"]
       50 CALL                             R7 2 -1
       51 CALL                             R6 -1 0
       52 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["shouldLogAnalytics"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 ORK                              R0 R0 K1 [""]
        7 ORK                              R1 R1 K1 [""]
        8 ORK                              R2 R2 K2 [1]
        9 LOADK                            R3 K3 ["%s(counter=\"%s\", amount=%s)"]
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R6 R0
       12 GETIMPORT                        R5 K5 [tostring]
       14 CALL                             R5 1 1
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R7 R1
       17 GETIMPORT                        R6 K5 [tostring]
       19 CALL                             R6 1 1
       20 FASTCALL1                        TOSTRING R2 ; [+3]
       21 MOVE                             R8 R2
       22 GETIMPORT                        R7 K5 [tostring]
       24 CALL                             R7 1 1
       25 NAMECALL                         R3 R3 K6 ["format"]
       27 CALL                             R3 4 1
       28 GETIMPORT                        R4 K8 [print]
       30 LOADK                            R5 K9 ["[WebView Analytics] %s"]
       31 FASTCALL1                        TOSTRING R3 ; [+3]
       32 MOVE                             R8 R3
       33 GETIMPORT                        R7 K5 [tostring]
       35 CALL                             R7 1 1
       36 NAMECALL                         R5 R5 K6 ["format"]
       38 CALL                             R5 2 -1
       39 CALL                             R4 -1 0
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["DebugFlags"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 DUPCLOSURE                       R4 K9 [PROTO_1]
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R4 R2 K10 ["logAnalytics"]
       21 DUPCLOSURE                       R4 K11 [PROTO_2]
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R4 R2 K12 ["logEvent"]
       25 DUPCLOSURE                       R4 K13 [PROTO_3]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R2 K14 ["logCounterEvent"]
       29 RETURN                           R2 1
