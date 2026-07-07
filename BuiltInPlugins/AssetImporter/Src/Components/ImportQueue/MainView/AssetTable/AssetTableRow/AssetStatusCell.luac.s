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
       26 JUMPIFNOT                        R2 ; [+40]
       27 GETTABLEKS                       R7 R3 K3 ["state"]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K4 ["SessionState"]
       32 GETTABLEKS                       R8 R8 K6 ["Importing"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+32]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K7 ["createElement"]
       39 LOADK                            R8 K8 ["CanvasGroup"]
       40 DUPTABLE                         R9 K12 [{["Size"], ["BackgroundTransparency"] = 1}]
       41 GETIMPORT                        R10 K15 [UDim2.fromOffset]
       43 LOADN                            R11 16
       44 LOADN                            R12 16
       45 CALL                             R10 2 1
       46 SETTABLEKS                       R10 R9 K9 ["Size"]
       48 DUPTABLE                         R10 K17 [{"Loading"}]
       49 GETUPVAL                         R11 5
       50 GETUPVAL                         R12 6
       51 GETTABLEKS                       R12 R12 K16 ["Loading"]
       53 DUPTABLE                         R13 K21 [{["size"], ["testId"] = "asset-row-loading"}]
       54 GETUPVAL                         R14 7
       55 GETTABLEKS                       R14 R14 K22 ["IconSize"]
       57 GETTABLEKS                       R14 R14 K23 ["Small"]
       59 SETTABLEKS                       R14 R13 K18 ["size"]
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K16 ["Loading"]
       64 CALL                             R7 3 1
       65 MOVE                             R5 R7
       66 JUMP                             ; [+58]
       67 GETTABLEKS                       R7 R3 K3 ["state"]
       69 GETUPVAL                         R8 4
       70 GETTABLEKS                       R8 R8 K4 ["SessionState"]
       72 GETTABLEKS                       R8 R8 K24 ["Imported"]
       74 JUMPIFNOTEQ                      R7 R8 ; [+50]
       76 GETTABLEKS                       R8 R3 K25 ["uploadResults"]
       78 FASTCALL2K                       ASSERT R8 K26 ; [+4]
       80 LOADK                            R9 K26 ["Imported file must have uploadResults"]
       81 GETIMPORT                        R7 K28 [assert]
       83 CALL                             R7 2 0
       84 GETTABLEKS                       R7 R3 K25 ["uploadResults"]
       86 GETTABLEKS                       R7 R7 K29 ["Succeeded"]
       88 JUMPIFNOT                        R7 ; [+2]
       89 LOADNIL                          R6
       90 JUMP                             ; [+1]
       91 MOVE                             R6 R4
       92 GETTABLEKS                       R8 R3 K25 ["uploadResults"]
       94 GETTABLEKS                       R8 R8 K29 ["Succeeded"]
       96 JUMPIFNOT                        R8 ; [+10]
       97 GETUPVAL                         R7 8
       98 GETTABLEKS                       R7 R7 K30 ["get"]
      100 GETUPVAL                         R8 8
      101 GETTABLEKS                       R8 R8 K31 ["AvailableImages"]
      103 GETTABLEKS                       R8 R8 K32 ["Success"]
      105 CALL                             R7 1 1
      106 JUMP                             ; [+9]
      107 GETUPVAL                         R7 8
      108 GETTABLEKS                       R7 R7 K30 ["get"]
      110 GETUPVAL                         R8 8
      111 GETTABLEKS                       R8 R8 K31 ["AvailableImages"]
      113 GETTABLEKS                       R8 R8 K33 ["Error"]
      115 CALL                             R7 1 1
      116 GETUPVAL                         R8 5
      117 GETUPVAL                         R9 6
      118 GETTABLEKS                       R9 R9 K34 ["Image"]
      120 DUPTABLE                         R10 K37 [{["tag"] = "size-400-400", ["Image"]}]
      121 SETTABLEKS                       R7 R10 K34 ["Image"]
      123 CALL                             R8 2 1
      124 MOVE                             R5 R8
      125 GETUPVAL                         R7 5
      126 GETUPVAL                         R8 6
      127 GETTABLEKS                       R8 R8 K38 ["View"]
      129 DUPTABLE                         R9 K42 [{["tag"] = "col align-x-center align-y-center size-full", ["testId"] = "asset-row-status", ["onActivated"]}]
      130 SETTABLEKS                       R6 R9 K41 ["onActivated"]
      132 MOVE                             R10 R5
      133 CALL                             R7 3 -1
      134 RETURN                           R7 -1

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
