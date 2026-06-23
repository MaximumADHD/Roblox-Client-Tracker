PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getAllAttributes"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["evaluateToken"]
        8 MOVE                             R4 R2
        9 MOVE                             R5 R1
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetStyleSheetDerivesChain"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K0 ; [+4]
       10 LOADK                            R4 K0 ["styleInstance cannot be invalid"]
       11 GETIMPORT                        R2 K2 [assert]
       13 CALL                             R2 2 0
       14 LOADK                            R4 K3 ["StyleSheet"]
       15 NAMECALL                         R2 R0 K4 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+24]
       19 GETIMPORT                        R2 K6 [pcall]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 CALL                             R2 1 2
       25 JUMPIFNOT                        R2 ; [+34]
       26 GETIMPORT                        R4 K8 [pairs]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 3
       30 FORGPREP_NEXT                    R4
       31 JUMPIFEQ                         R8 R0 ; [+8]
       33 GETUPVAL                         R9 1
       34 MOVE                             R10 R1
       35 NAMECALL                         R11 R8 K9 ["GetAttributes"]
       37 CALL                             R11 1 -1
       38 CALL                             R9 -1 1
       39 MOVE                             R1 R9
       40 FORGLOOP                         R4 2 ; [-10]
       42 RETURN                           R1 1
       43 LOADK                            R4 K10 ["StyleRule"]
       44 NAMECALL                         R2 R0 K4 ["IsA"]
       46 CALL                             R2 2 1
       47 JUMPIF                           R2 ; [+5]
       48 LOADK                            R4 K11 ["Folder"]
       49 NAMECALL                         R2 R0 K4 ["IsA"]
       51 CALL                             R2 2 1
       52 JUMPIFNOT                        R2 ; [+7]
       53 GETUPVAL                         R2 2
       54 GETTABLEKS                       R2 R2 K12 ["getDerivedAttributes"]
       56 GETTABLEKS                       R3 R0 K13 ["Parent"]
       58 CALL                             R2 1 1
       59 MOVE                             R1 R2
       60 RETURN                           R1 1

PROTO_3:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K0 ; [+4]
       10 LOADK                            R3 K0 ["styleInstance cannot be invalid"]
       11 GETIMPORT                        R1 K2 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K3 ["getDerivedAttributes"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 LOADK                            R4 K4 ["StyleBase"]
       20 NAMECALL                         R2 R0 K5 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+7]
       24 GETUPVAL                         R2 1
       25 MOVE                             R3 R1
       26 NAMECALL                         R4 R0 K6 ["GetAttributes"]
       28 CALL                             R4 1 -1
       29 CALL                             R2 -1 1
       30 MOVE                             R1 R2
       31 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["GetStyleSheetDerivesChain"]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 LOADB                            R3 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["Instance"] ; [+5]
        8 LOADK                            R5 K3 ["StyleBase"]
        9 NAMECALL                         R3 R0 K4 ["IsA"]
       11 CALL                             R3 2 1
       12 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       14 LOADK                            R4 K5 ["expecting valid StyleBase"]
       15 GETIMPORT                        R2 K7 [assert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K8 ["parseAttributeName"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 1
       23 JUMPIF                           R2 ; [+2]
       24 LOADNIL                          R3
       25 RETURN                           R3 1
       26 JUMPIFNOTEQKNIL                  R2 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 FASTCALL2K                       ASSERT R4 K9 ; [+4]
       32 LOADK                            R5 K9 ["invalid attribute name"]
       33 GETIMPORT                        R3 K7 [assert]
       35 CALL                             R3 2 0
       36 LOADK                            R6 K10 ["StyleSheet"]
       37 NAMECALL                         R4 R0 K4 ["IsA"]
       39 CALL                             R4 2 1
       40 JUMPIFNOT                        R4 ; [+2]
       41 MOVE                             R3 R0
       42 JUMP                             ; [+4]
       43 LOADK                            R5 K10 ["StyleSheet"]
       44 NAMECALL                         R3 R0 K11 ["FindFirstAncestorWhichIsA"]
       46 CALL                             R3 2 1
       47 JUMPIF                           R3 ; [+2]
       48 LOADNIL                          R4
       49 RETURN                           R4 1
       50 GETIMPORT                        R4 K13 [pcall]
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R3
       56 CALL                             R4 1 2
       57 JUMPIF                           R4 ; [+2]
       58 LOADNIL                          R6
       59 RETURN                           R6 1
       60 MOVE                             R6 R5
       61 LOADNIL                          R7
       62 LOADNIL                          R8
       63 FORGPREP                         R6
       64 MOVE                             R13 R2
       65 NAMECALL                         R11 R10 K14 ["GetAttribute"]
       67 CALL                             R11 2 1
       68 JUMPIFNOT                        R11 ; [+1]
       69 RETURN                           R10 1
       70 FORGLOOP                         R6 2 ; [-7]
       72 LOADNIL                          R6
       73 RETURN                           R6 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+7]
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R2 R0
        3 GETIMPORT                        R1 K1 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K2 ["string"] ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 LOADK                            R3 K3 ["^%s*%$([%a%d%-_]*)%s*$"]
       11 NAMECALL                         R1 R0 K4 ["match"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_7:
        0 MOVE                             R2 R1
        1 NEWTABLE                         R3 0 0
        3 LOADN                            R6 1
        4 LOADN                            R4 15
        5 LOADN                            R5 1
        6 FORNPREP                         R4
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K0 ["parseAttributeName"]
       10 MOVE                             R8 R2
       11 CALL                             R7 1 1
       12 JUMPIFNOT                        R7 ; [+13]
       13 GETTABLE                         R8 R3 R2
       14 JUMPIFNOT                        R8 ; [+5]
       15 LOADNIL                          R8
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R9 R9 K1 ["CyclicReference"]
       19 RETURN                           R8 2
       20 LOADB                            R8 1
       21 SETTABLE                         R8 R3 R2
       22 GETTABLE                         R2 R0 R7
       23 JUMPIFEQKNIL                     R2 ; [+2]
       25 FORNLOOP                         R4
       26 JUMPIFNOTEQKNIL                  R2 ; [+6]
       28 LOADNIL                          R4
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K2 ["DoesNotExist"]
       32 RETURN                           R4 2
       33 MOVE                             R4 R2
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K3 ["None"]
       37 RETURN                           R4 2

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["parseAttributeName"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 JUMPIF                           R3 ; [+5]
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["InvalidSyntax"]
       10 RETURN                           R3 2
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["evaluateToken"]
       14 MOVE                             R4 R0
       15 MOVE                             R5 R1
       16 CALL                             R3 2 2
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K3 ["None"]
       20 JUMPIFEQ                         R4 R5 ; [+2]
       22 RETURN                           R3 2
       23 JUMPIFNOT                        R2 ; [+14]
       24 GETUPVAL                         R5 2
       25 MOVE                             R6 R2
       26 FASTCALL1                        TYPEOF R3 ; [+3]
       27 MOVE                             R8 R3
       28 GETIMPORT                        R7 K5 [typeof]
       30 CALL                             R7 1 1
       31 CALL                             R5 2 1
       32 JUMPIF                           R5 ; [+5]
       33 MOVE                             R5 R3
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K6 ["IncorrectType"]
       37 RETURN                           R5 2
       38 MOVE                             R5 R3
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K3 ["None"]
       42 RETURN                           R5 2

PROTO_9:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["array expected"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 NEWTABLE                         R1 0 1
       17 LOADK                            R2 K6 ["StyleCategory"]
       18 SETLIST                          R1 R2 1 [1]
       20 GETUPVAL                         R2 0
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Dash"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K11 ["assign"]
       24 GETTABLEKS                       R4 R2 K12 ["includes"]
       26 GETTABLEKS                       R5 R2 K13 ["omit"]
       28 GETTABLEKS                       R6 R2 K14 ["reverse"]
       30 GETIMPORT                        R7 K8 [require]
       32 GETTABLEKS                       R8 R1 K15 ["Src"]
       34 GETTABLEKS                       R8 R8 K16 ["Enums"]
       36 GETTABLEKS                       R8 R8 K17 ["TokenValidationError"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K8 [require]
       41 GETTABLEKS                       R9 R1 K15 ["Src"]
       43 GETTABLEKS                       R9 R9 K18 ["Types"]
       45 CALL                             R8 1 1
       46 NEWTABLE                         R9 8 0
       48 DUPCLOSURE                       R10 K19 [PROTO_0]
       49 CAPTURE                          VAL R9
       50 SETTABLEKS                       R10 R9 K20 ["getTokenValue"]
       52 DUPCLOSURE                       R10 K21 [PROTO_2]
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R9
       56 SETTABLEKS                       R10 R9 K22 ["getDerivedAttributes"]
       58 DUPCLOSURE                       R10 K23 [PROTO_3]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R10 R9 K24 ["getAllAttributes"]
       63 DUPCLOSURE                       R10 K25 [PROTO_5]
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R10 R9 K26 ["getTokenSourceStyleSheet"]
       69 DUPCLOSURE                       R10 K27 [PROTO_6]
       70 SETTABLEKS                       R10 R9 K28 ["parseAttributeName"]
       72 DUPCLOSURE                       R10 K29 [PROTO_7]
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R10 R9 K30 ["evaluateToken"]
       77 DUPCLOSURE                       R10 K31 [PROTO_8]
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R10 R9 K32 ["validateToken"]
       83 DUPCLOSURE                       R10 K33 [PROTO_9]
       84 CAPTURE                          VAL R5
       85 SETTABLEKS                       R10 R9 K34 ["stripStyleEditorMetaAttributes"]
       87 RETURN                           R9 1
