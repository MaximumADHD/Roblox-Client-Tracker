PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["uploading"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 DUPCLOSURE                       R3 K0 [PROTO_0]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K1 ["TableEntry"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R3
       14 CALL                             R4 1 1
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 GETTABLEKS                       R7 R3 K3 ["state"]
       19 GETUPVAL                         R10 4
       20 GETTABLEKS                       R9 R10 K4 ["SessionState"]
       22 GETTABLEKS                       R8 R9 K5 ["Parsing"]
       24 JUMPIFEQ                         R7 R8 ; [+11]
       26 JUMPIFNOT                        R2 ; [+27]
       27 GETTABLEKS                       R7 R3 K3 ["state"]
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R9 R10 K4 ["SessionState"]
       32 GETTABLEKS                       R8 R9 K6 ["Importing"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+19]
       36 GETUPVAL                         R7 5
       37 GETUPVAL                         R9 6
       38 GETTABLEKS                       R8 R9 K7 ["Loading"]
       40 DUPTABLE                         R9 K10 [{"size", "testId"}]
       41 GETUPVAL                         R12 7
       42 GETTABLEKS                       R11 R12 K11 ["IconSize"]
       44 GETTABLEKS                       R10 R11 K12 ["Small"]
       46 SETTABLEKS                       R10 R9 K8 ["size"]
       48 LOADK                            R10 K13 ["asset-row-loading"]
       49 SETTABLEKS                       R10 R9 K9 ["testId"]
       51 CALL                             R7 2 1
       52 MOVE                             R5 R7
       53 JUMP                             ; [+61]
       54 GETTABLEKS                       R7 R3 K3 ["state"]
       56 GETUPVAL                         R10 4
       57 GETTABLEKS                       R9 R10 K4 ["SessionState"]
       59 GETTABLEKS                       R8 R9 K14 ["Imported"]
       61 JUMPIFNOTEQ                      R7 R8 ; [+53]
       63 GETTABLEKS                       R8 R3 K15 ["uploadResults"]
       65 FASTCALL2K                       ASSERT R8 K16 ; [+4]
       67 LOADK                            R9 K16 ["Imported file must have uploadResults"]
       68 GETIMPORT                        R7 K18 [assert]
       70 CALL                             R7 2 0
       71 GETTABLEKS                       R8 R3 K15 ["uploadResults"]
       73 GETTABLEKS                       R7 R8 K19 ["Succeeded"]
       75 JUMPIFNOT                        R7 ; [+2]
       76 LOADNIL                          R6
       77 JUMP                             ; [+1]
       78 MOVE                             R6 R4
       79 GETTABLEKS                       R9 R3 K15 ["uploadResults"]
       81 GETTABLEKS                       R8 R9 K19 ["Succeeded"]
       83 JUMPIFNOT                        R8 ; [+10]
       84 GETUPVAL                         R8 8
       85 GETTABLEKS                       R7 R8 K20 ["get"]
       87 GETUPVAL                         R10 8
       88 GETTABLEKS                       R9 R10 K21 ["AvailableImages"]
       90 GETTABLEKS                       R8 R9 K22 ["Success"]
       92 CALL                             R7 1 1
       93 JUMP                             ; [+9]
       94 GETUPVAL                         R8 8
       95 GETTABLEKS                       R7 R8 K20 ["get"]
       97 GETUPVAL                         R10 8
       98 GETTABLEKS                       R9 R10 K21 ["AvailableImages"]
      100 GETTABLEKS                       R8 R9 K23 ["Error"]
      102 CALL                             R7 1 1
      103 GETUPVAL                         R8 5
      104 GETUPVAL                         R10 6
      105 GETTABLEKS                       R9 R10 K24 ["Image"]
      107 DUPTABLE                         R10 K26 [{"tag", "Image"}]
      108 LOADK                            R11 K27 ["size-400-400"]
      109 SETTABLEKS                       R11 R10 K25 ["tag"]
      111 SETTABLEKS                       R7 R10 K24 ["Image"]
      113 CALL                             R8 2 1
      114 MOVE                             R5 R8
      115 GETUPVAL                         R7 5
      116 GETUPVAL                         R9 6
      117 GETTABLEKS                       R8 R9 K28 ["View"]
      119 DUPTABLE                         R9 K30 [{"tag", "onActivated"}]
      120 LOADK                            R10 K31 ["col size-full align-x-center align-y-center data-testid=asset-row-status"]
      121 SETTABLEKS                       R10 R9 K25 ["tag"]
      123 SETTABLEKS                       R6 R9 K29 ["onActivated"]
      125 MOVE                             R10 R5
      126 CALL                             R7 3 -1
      127 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K11 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Hooks"]
       31 GETTABLEKS                       R6 R7 K13 ["useDispatch"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Hooks"]
       40 GETTABLEKS                       R7 R8 K14 ["useSelector"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R10 R0 K11 ["Src"]
       47 GETTABLEKS                       R9 R10 K15 ["Thunks"]
       49 GETTABLEKS                       R8 R9 K16 ["ShowUploadWidget"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R10 R0 K11 ["Src"]
       56 GETTABLEKS                       R9 R10 K17 ["Types"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R12 R0 K11 ["Src"]
       63 GETTABLEKS                       R11 R12 K17 ["Types"]
       65 GETTABLEKS                       R10 R11 K18 ["QueuedSession"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R13 R0 K11 ["Src"]
       72 GETTABLEKS                       R12 R13 K19 ["Resources"]
       74 GETTABLEKS                       R11 R12 K20 ["Images"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K21 [PROTO_2]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R10
       87 RETURN                           R11 1
