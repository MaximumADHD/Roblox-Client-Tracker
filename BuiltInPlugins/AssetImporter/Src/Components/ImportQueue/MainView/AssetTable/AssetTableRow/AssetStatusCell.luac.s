PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["uploading"]
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
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R3
       14 CALL                             R4 1 1
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 GETTABLEKS                       R7 R3 K3 ["state"]
       19 GETUPVAL                         R8 4
       20 GETTABLEKS                       R8 R8 K4 ["SessionState"]
       22 GETTABLEKS                       R8 R8 K5 ["Parsing"]
       24 JUMPIFEQ                         R7 R8 ; [+11]
       26 JUMPIFNOT                        R2 ; [+46]
       27 GETTABLEKS                       R7 R3 K3 ["state"]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K4 ["SessionState"]
       32 GETTABLEKS                       R8 R8 K6 ["Importing"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+38]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K7 ["createElement"]
       39 LOADK                            R8 K8 ["CanvasGroup"]
       40 DUPTABLE                         R9 K11 [{"Size", "BackgroundTransparency"}]
       41 GETIMPORT                        R10 K14 [UDim2.fromOffset]
       43 LOADN                            R11 16
       44 LOADN                            R12 16
       45 CALL                             R10 2 1
       46 SETTABLEKS                       R10 R9 K9 ["Size"]
       48 LOADN                            R10 1
       49 SETTABLEKS                       R10 R9 K10 ["BackgroundTransparency"]
       51 DUPTABLE                         R10 K16 [{"Loading"}]
       52 GETUPVAL                         R11 5
       53 GETUPVAL                         R12 6
       54 GETTABLEKS                       R12 R12 K15 ["Loading"]
       56 DUPTABLE                         R13 K19 [{"size", "testId"}]
       57 GETUPVAL                         R14 7
       58 GETTABLEKS                       R14 R14 K20 ["IconSize"]
       60 GETTABLEKS                       R14 R14 K21 ["Small"]
       62 SETTABLEKS                       R14 R13 K17 ["size"]
       64 LOADK                            R14 K22 ["asset-row-loading"]
       65 SETTABLEKS                       R14 R13 K18 ["testId"]
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K15 ["Loading"]
       70 CALL                             R7 3 1
       71 MOVE                             R5 R7
       72 JUMP                             ; [+61]
       73 GETTABLEKS                       R7 R3 K3 ["state"]
       75 GETUPVAL                         R8 4
       76 GETTABLEKS                       R8 R8 K4 ["SessionState"]
       78 GETTABLEKS                       R8 R8 K23 ["Imported"]
       80 JUMPIFNOTEQ                      R7 R8 ; [+53]
       82 GETTABLEKS                       R8 R3 K24 ["uploadResults"]
       84 FASTCALL2K                       ASSERT R8 K25 ; [+4]
       86 LOADK                            R9 K25 ["Imported file must have uploadResults"]
       87 GETIMPORT                        R7 K27 [assert]
       89 CALL                             R7 2 0
       90 GETTABLEKS                       R7 R3 K24 ["uploadResults"]
       92 GETTABLEKS                       R7 R7 K28 ["Succeeded"]
       94 JUMPIFNOT                        R7 ; [+2]
       95 LOADNIL                          R6
       96 JUMP                             ; [+1]
       97 MOVE                             R6 R4
       98 GETTABLEKS                       R8 R3 K24 ["uploadResults"]
      100 GETTABLEKS                       R8 R8 K28 ["Succeeded"]
      102 JUMPIFNOT                        R8 ; [+10]
      103 GETUPVAL                         R7 8
      104 GETTABLEKS                       R7 R7 K29 ["get"]
      106 GETUPVAL                         R8 8
      107 GETTABLEKS                       R8 R8 K30 ["AvailableImages"]
      109 GETTABLEKS                       R8 R8 K31 ["Success"]
      111 CALL                             R7 1 1
      112 JUMP                             ; [+9]
      113 GETUPVAL                         R7 8
      114 GETTABLEKS                       R7 R7 K29 ["get"]
      116 GETUPVAL                         R8 8
      117 GETTABLEKS                       R8 R8 K30 ["AvailableImages"]
      119 GETTABLEKS                       R8 R8 K32 ["Error"]
      121 CALL                             R7 1 1
      122 GETUPVAL                         R8 5
      123 GETUPVAL                         R9 6
      124 GETTABLEKS                       R9 R9 K33 ["Image"]
      126 DUPTABLE                         R10 K35 [{"tag", "Image"}]
      127 LOADK                            R11 K36 ["size-400-400"]
      128 SETTABLEKS                       R11 R10 K34 ["tag"]
      130 SETTABLEKS                       R7 R10 K33 ["Image"]
      132 CALL                             R8 2 1
      133 MOVE                             R5 R8
      134 GETUPVAL                         R7 5
      135 GETUPVAL                         R8 6
      136 GETTABLEKS                       R8 R8 K37 ["View"]
      138 DUPTABLE                         R9 K39 [{"tag", "onActivated"}]
      139 LOADK                            R10 K40 ["col size-full align-x-center align-y-center data-testid=asset-row-status"]
      140 SETTABLEKS                       R10 R9 K34 ["tag"]
      142 SETTABLEKS                       R6 R9 K38 ["onActivated"]
      144 MOVE                             R10 R5
      145 CALL                             R7 3 -1
      146 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Hooks"]
       31 GETTABLEKS                       R6 R6 K13 ["useDispatch"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K12 ["Hooks"]
       40 GETTABLEKS                       R7 R7 K14 ["useSelector"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K11 ["Src"]
       47 GETTABLEKS                       R8 R8 K15 ["Thunks"]
       49 GETTABLEKS                       R8 R8 K16 ["ShowUploadWidget"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K11 ["Src"]
       56 GETTABLEKS                       R9 R9 K17 ["Types"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K11 ["Src"]
       63 GETTABLEKS                       R10 R10 K17 ["Types"]
       65 GETTABLEKS                       R10 R10 K18 ["QueuedSession"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K11 ["Src"]
       72 GETTABLEKS                       R11 R11 K19 ["Resources"]
       74 GETTABLEKS                       R11 R11 K20 ["Images"]
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
