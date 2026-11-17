PROTO_0:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Toolbox network error on %s %s:  (code %s)  %s"]
        3 GETTABLEKS                       R5 R0 K4 ["requestType"]
        5 ORK                              R4 R5 K3 [""]
        6 GETTABLEKS                       R6 R0 K5 ["url"]
        8 ORK                              R5 R6 K3 [""]
        9 GETTABLEKS                       R8 R0 K6 ["responseCode"]
       11 ORK                              R7 R8 K3 [""]
       12 FASTCALL1                        TOSTRING R7 ; [+2]
       13 GETIMPORT                        R6 K8 [tostring]
       15 CALL                             R6 1 1
       16 GETTABLEKS                       R8 R0 K9 ["responseBody"]
       18 ORK                              R7 R8 K3 [""]
       19 NAMECALL                         R2 R2 K10 ["format"]
       21 CALL                             R2 5 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+25]
        5 GETTABLEKS                       R2 R1 K1 ["response"]
        7 GETIMPORT                        R3 K3 [warn]
        9 LOADK                            R4 K4 ["Toolbox network error on %s %s:  (code %s)  %s"]
       10 GETTABLEKS                       R7 R2 K6 ["requestType"]
       12 ORK                              R6 R7 K5 [""]
       13 GETTABLEKS                       R8 R2 K7 ["url"]
       15 ORK                              R7 R8 K5 [""]
       16 GETTABLEKS                       R10 R2 K8 ["responseCode"]
       18 ORK                              R9 R10 K5 [""]
       19 FASTCALL1                        TOSTRING R9 ; [+2]
       20 GETIMPORT                        R8 K10 [tostring]
       22 CALL                             R8 1 1
       23 GETTABLEKS                       R10 R2 K11 ["responseBody"]
       25 ORK                              R9 R10 K5 [""]
       26 NAMECALL                         R4 R4 K12 ["format"]
       28 CALL                             R4 5 -1
       29 CALL                             R3 -1 0
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K13 ["List"]
       33 GETTABLEKS                       R2 R2 K14 ["join"]
       35 MOVE                             R3 R0
       36 NEWTABLE                         R4 0 1
       38 GETTABLEKS                       R5 R1 K1 ["response"]
       40 SETLIST                          R4 R5 1 [1]
       42 CALL                             R2 2 -1
       43 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R5 K9 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["DebugFlags"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R6 K11 ["Actions"]
       36 GETTABLEKS                       R6 R6 K12 ["NetworkError"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K13 [PROTO_0]
       40 GETTABLEKS                       R7 R3 K14 ["createReducer"]
       42 NEWTABLE                         R8 0 0
       44 NEWTABLE                         R9 1 0
       46 GETTABLEKS                       R10 R5 K15 ["name"]
       48 DUPCLOSURE                       R11 K16 [PROTO_1]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R2
       51 SETTABLE                         R11 R9 R10
       52 CALL                             R7 2 -1
       53 RETURN                           R7 -1
