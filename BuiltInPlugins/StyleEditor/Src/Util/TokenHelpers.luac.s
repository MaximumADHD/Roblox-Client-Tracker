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
       25 JUMPIFNOT                        R2 ; [+49]
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
       43 GETUPVAL                         R2 2
       44 JUMPIFNOT                        R2 ; [+18]
       45 LOADK                            R4 K10 ["StyleRule"]
       46 NAMECALL                         R2 R0 K4 ["IsA"]
       48 CALL                             R2 2 1
       49 JUMPIF                           R2 ; [+5]
       50 LOADK                            R4 K11 ["Folder"]
       51 NAMECALL                         R2 R0 K4 ["IsA"]
       53 CALL                             R2 2 1
       54 JUMPIFNOT                        R2 ; [+20]
       55 GETUPVAL                         R2 3
       56 GETTABLEKS                       R2 R2 K12 ["getDerivedAttributes"]
       58 GETTABLEKS                       R3 R0 K13 ["Parent"]
       60 CALL                             R2 1 1
       61 MOVE                             R1 R2
       62 RETURN                           R1 1
       63 LOADK                            R4 K10 ["StyleRule"]
       64 NAMECALL                         R2 R0 K4 ["IsA"]
       66 CALL                             R2 2 1
       67 JUMPIFNOT                        R2 ; [+7]
       68 GETUPVAL                         R2 3
       69 GETTABLEKS                       R2 R2 K12 ["getDerivedAttributes"]
       71 GETTABLEKS                       R3 R0 K13 ["Parent"]
       73 CALL                             R2 1 1
       74 MOVE                             R1 R2
       75 RETURN                           R1 1

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
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Flags"]
       21 GETTABLEKS                       R3 R3 K11 ["getFFlagStyleEditorFixFolderTokens"]
       23 CALL                             R2 1 1
       24 CALL                             R2 0 1
       25 GETIMPORT                        R3 K8 [require]
       27 GETTABLEKS                       R4 R1 K12 ["Packages"]
       29 GETTABLEKS                       R4 R4 K13 ["Dash"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K14 ["assign"]
       34 GETTABLEKS                       R5 R3 K15 ["includes"]
       36 GETTABLEKS                       R6 R3 K16 ["omit"]
       38 GETTABLEKS                       R7 R3 K17 ["reverse"]
       40 GETIMPORT                        R8 K8 [require]
       42 GETTABLEKS                       R9 R1 K9 ["Src"]
       44 GETTABLEKS                       R9 R9 K18 ["Enums"]
       46 GETTABLEKS                       R9 R9 K19 ["TokenValidationError"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K8 [require]
       51 GETTABLEKS                       R10 R1 K9 ["Src"]
       53 GETTABLEKS                       R10 R10 K20 ["Types"]
       55 CALL                             R9 1 1
       56 NEWTABLE                         R10 8 0
       58 DUPCLOSURE                       R11 K21 [PROTO_0]
       59 CAPTURE                          VAL R10
       60 SETTABLEKS                       R11 R10 K22 ["getTokenValue"]
       62 DUPCLOSURE                       R11 K23 [PROTO_2]
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R10
       67 SETTABLEKS                       R11 R10 K24 ["getDerivedAttributes"]
       69 DUPCLOSURE                       R11 K25 [PROTO_3]
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R11 R10 K26 ["getAllAttributes"]
       74 DUPCLOSURE                       R11 K27 [PROTO_5]
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R11 R10 K28 ["getTokenSourceStyleSheet"]
       80 DUPCLOSURE                       R11 K29 [PROTO_6]
       81 SETTABLEKS                       R11 R10 K30 ["parseAttributeName"]
       83 DUPCLOSURE                       R11 K31 [PROTO_7]
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R8
       86 SETTABLEKS                       R11 R10 K32 ["evaluateToken"]
       88 DUPCLOSURE                       R11 K33 [PROTO_8]
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R5
       92 SETTABLEKS                       R11 R10 K34 ["validateToken"]
       94 DUPCLOSURE                       R11 K35 [PROTO_9]
       95 CAPTURE                          VAL R6
       96 SETTABLEKS                       R11 R10 K36 ["stripStyleEditorMetaAttributes"]
       98 RETURN                           R10 1
