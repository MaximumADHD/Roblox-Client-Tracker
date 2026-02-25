PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetRequests"]
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R7 R8 K1 ["Create"]
       10 JUMPIFNOTEQ                      R6 R7 ; [+3]
       12 LOADB                            R7 1
       13 RETURN                           R7 1
       14 FORGLOOP                         R2 2 ; [-8]
       16 LOADB                            R2 0
       17 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetRequests"]
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 LOADB                            R7 1
        8 RETURN                           R7 1
        9 FORGLOOP                         R2 2 ; [-3]
       11 LOADB                            R2 0
       12 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Annotation"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+20]
        9 NAMECALL                         R7 R5 K3 ["GetRequests"]
       11 CALL                             R7 1 1
       12 MOVE                             R8 R7
       13 LOADNIL                          R9
       14 LOADNIL                          R10
       15 FORGPREP                         R8
       16 GETUPVAL                         R14 0
       17 GETTABLEKS                       R13 R14 K4 ["Create"]
       19 JUMPIFNOTEQ                      R12 R13 ; [+3]
       21 LOADB                            R6 1
       22 JUMP                             ; [+3]
       23 FORGLOOP                         R8 2 ; [-8]
       25 LOADB                            R6 0
       26 JUMPIFNOT                        R6 ; [+2]
       27 LOADB                            R6 1
       28 RETURN                           R6 1
       29 FORGLOOP                         R1 2 ; [-26]
       31 LOADB                            R1 0
       32 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOT                        R2 ; [+7]
        1 JUMPIFNOT                        R1 ; [+6]
        2 MOVE                             R3 R2
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+2]
        6 LOADB                            R3 1
        7 RETURN                           R3 1
        8 LOADB                            R3 0
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K0 ["None"]
       12 JUMPIFEQ                         R0 R4 ; [+8]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K1 ["InProgress"]
       17 JUMPIFNOTEQ                      R0 R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Success"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+5]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["None"]
        8 RETURN                           R2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["Loading"]
       12 JUMPIFNOTEQ                      R0 R2 ; [+5]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K3 ["InProgress"]
       17 RETURN                           R2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K4 ["ErrorModerated"]
       21 JUMPIFNOTEQ                      R0 R2 ; [+5]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K4 ["ErrorModerated"]
       26 RETURN                           R2 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R2 R3 K5 ["Create"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+5]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R2 R3 K6 ["ErrorCreating"]
       35 RETURN                           R2 1
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K7 ["Resolve"]
       39 JUMPIFNOTEQ                      R1 R2 ; [+5]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R2 R3 K8 ["ErrorResolving"]
       44 RETURN                           R2 1
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R2 R3 K9 ["Delete"]
       48 JUMPIFNOTEQ                      R1 R2 ; [+5]
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R2 R3 K10 ["ErrorDeleting"]
       53 RETURN                           R2 1
       54 GETUPVAL                         R3 2
       55 GETTABLEKS                       R2 R3 K11 ["Edit"]
       57 JUMPIFNOTEQ                      R1 R2 ; [+5]
       59 GETUPVAL                         R3 1
       60 GETTABLEKS                       R2 R3 K12 ["ErrorEditing"]
       62 RETURN                           R2 1
       63 GETUPVAL                         R3 1
       64 GETTABLEKS                       R2 R3 K13 ["Error"]
       66 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["ErrorCreating"]
        3 JUMPIFNOTEQ                      R0 R5 ; [+7]
        5 LOADK                            R7 K1 ["AddAnnotation"]
        6 LOADK                            R8 K2 ["Failed"]
        7 NAMECALL                         R5 R2 K3 ["getText"]
        9 CALL                             R5 3 -1
       10 RETURN                           R5 -1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K4 ["ErrorResolving"]
       14 JUMPIFNOTEQ                      R0 R5 ; [+23]
       16 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       18 MOVE                             R6 R1
       19 LOADK                            R7 K5 ["ErrorResolving requires an annotation"]
       20 GETIMPORT                        R5 K7 [assert]
       22 CALL                             R5 2 0
       23 GETTABLEKS                       R5 R1 K8 ["Resolved"]
       25 JUMPIFNOT                        R5 ; [+6]
       26 LOADK                            R7 K9 ["Error"]
       27 LOADK                            R8 K10 ["Unresolve"]
       28 NAMECALL                         R5 R2 K3 ["getText"]
       30 CALL                             R5 3 -1
       31 RETURN                           R5 -1
       32 LOADK                            R7 K9 ["Error"]
       33 LOADK                            R8 K11 ["Resolve"]
       34 NAMECALL                         R5 R2 K3 ["getText"]
       36 CALL                             R5 3 -1
       37 RETURN                           R5 -1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K12 ["ErrorDeleting"]
       41 JUMPIFNOTEQ                      R0 R5 ; [+30]
       43 FASTCALL2K                       ASSERT R1 K13 ; [+5]
       45 MOVE                             R6 R1
       46 LOADK                            R7 K13 ["ErrorDeleting requires an annotation"]
       47 GETIMPORT                        R5 K7 [assert]
       49 CALL                             R5 2 0
       50 GETTABLEKS                       R5 R1 K14 ["Parent"]
       52 JUMPIFNOT                        R5 ; [+13]
       53 GETTABLEKS                       R5 R1 K14 ["Parent"]
       55 LOADK                            R7 K15 ["Annotation"]
       56 NAMECALL                         R5 R5 K16 ["IsA"]
       58 CALL                             R5 2 1
       59 JUMPIFNOT                        R5 ; [+6]
       60 LOADK                            R7 K9 ["Error"]
       61 LOADK                            R8 K17 ["DeleteReply"]
       62 NAMECALL                         R5 R2 K3 ["getText"]
       64 CALL                             R5 3 -1
       65 RETURN                           R5 -1
       66 LOADK                            R7 K9 ["Error"]
       67 LOADK                            R8 K18 ["DeleteThread"]
       68 NAMECALL                         R5 R2 K3 ["getText"]
       70 CALL                             R5 3 -1
       71 RETURN                           R5 -1
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R5 R6 K19 ["ErrorEditing"]
       75 JUMPIFNOTEQ                      R0 R5 ; [+7]
       77 LOADK                            R7 K9 ["Error"]
       78 LOADK                            R8 K20 ["Edit"]
       79 NAMECALL                         R5 R2 K3 ["getText"]
       81 CALL                             R5 3 -1
       82 RETURN                           R5 -1
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R5 R6 K21 ["ErrorModerated"]
       86 JUMPIFNOTEQ                      R0 R5 ; [+7]
       88 LOADK                            R7 K9 ["Error"]
       89 LOADK                            R8 K22 ["Moderated"]
       90 NAMECALL                         R5 R2 K3 ["getText"]
       92 CALL                             R5 3 -1
       93 RETURN                           R5 -1
       94 JUMPIFNOT                        R4 ; [+11]
       95 JUMPIFNOT                        R3 ; [+10]
       96 MOVE                             R5 R4
       97 MOVE                             R6 R3
       98 CALL                             R5 1 1
       99 JUMPIFNOT                        R5 ; [+6]
      100 LOADK                            R7 K9 ["Error"]
      101 LOADK                            R8 K23 ["AllTaggableUsers"]
      102 NAMECALL                         R5 R2 K3 ["getText"]
      104 CALL                             R5 3 -1
      105 RETURN                           R5 -1
      106 LOADK                            R7 K9 ["Error"]
      107 LOADK                            R8 K24 ["Unknown"]
      108 NAMECALL                         R5 R2 K3 ["getText"]
      110 CALL                             R5 3 -1
      111 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Enums"]
       13 GETTABLEKS                       R2 R3 K8 ["AnnotationRequestType"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Enums"]
       22 GETTABLEKS                       R3 R4 K9 ["AnnotationRequestStatus"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Enums"]
       31 GETTABLEKS                       R4 R5 K10 ["UIRequestStatus"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R6 K11 ["Types"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K12 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 DUPCLOSURE                       R6 K13 [PROTO_1]
       44 DUPCLOSURE                       R7 K14 [PROTO_2]
       45 CAPTURE                          VAL R1
       46 DUPCLOSURE                       R8 K15 [PROTO_3]
       47 CAPTURE                          VAL R3
       48 DUPCLOSURE                       R9 K16 [PROTO_4]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R1
       52 DUPCLOSURE                       R10 K17 [PROTO_5]
       53 CAPTURE                          VAL R3
       54 DUPTABLE                         R11 K24 [{"IsErrorStatus", "IsLocalDraft", "HasRequests", "HasReplyRequests", "GetErrorMessage", "GetUIRequestStatus"}]
       55 SETTABLEKS                       R8 R11 K18 ["IsErrorStatus"]
       57 SETTABLEKS                       R5 R11 K19 ["IsLocalDraft"]
       59 SETTABLEKS                       R6 R11 K20 ["HasRequests"]
       61 SETTABLEKS                       R7 R11 K21 ["HasReplyRequests"]
       63 SETTABLEKS                       R10 R11 K22 ["GetErrorMessage"]
       65 SETTABLEKS                       R9 R11 K23 ["GetUIRequestStatus"]
       67 RETURN                           R11 1
