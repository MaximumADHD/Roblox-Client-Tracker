PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 1
        2 GETIMPORT                        R1 K2 [string.find]
        4 MOVE                             R2 R0
        5 LOADK                            R3 K3 ["\n"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+15]
        8 GETUPVAL                         R2 0
        9 JUMPIFNOTLE                      R1 R2 ; [+13]
       11 LOADN                            R7 1
       12 SUBK                             R8 R1 K4 [1]
       13 FASTCALL3                        STRING_SUB R0 R7 R8
       15 MOVE                             R6 R0
       16 GETIMPORT                        R5 K6 [string.sub]
       18 CALL                             R5 3 1
       19 MOVE                             R3 R5
       20 LOADK                            R4 K7 ["...(truncated)"]
       21 CONCAT                           R2 R3 R4
       22 RETURN                           R2 1
       23 LENGTH                           R2 R0
       24 GETUPVAL                         R3 0
       25 JUMPIFNOTLT                      R3 R2 ; [+13]
       27 LOADN                            R7 1
       28 GETUPVAL                         R8 0
       29 FASTCALL3                        STRING_SUB R0 R7 R8
       31 MOVE                             R6 R0
       32 GETIMPORT                        R5 K6 [string.sub]
       34 CALL                             R5 3 1
       35 MOVE                             R3 R5
       36 LOADK                            R4 K7 ["...(truncated)"]
       37 CONCAT                           R2 R3 R4
       38 RETURN                           R2 1
       39 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["Root"]
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
        7 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 GETTABLEKS                       R6 R0 K6 ["canToggle"]
       13 JUMPIFNOT                        R6 ; [+3]
       14 GETTABLEKS                       R5 R0 K2 ["expanded"]
       16 JUMP                             ; [+1]
       17 LOADB                            R5 1
       18 SETTABLEKS                       R5 R4 K2 ["expanded"]
       20 GETTABLEKS                       R5 R0 K3 ["contentId"]
       22 SETTABLEKS                       R5 R4 K3 ["contentId"]
       24 GETTABLEKS                       R5 R0 K4 ["editThisContent"]
       26 SETTABLEKS                       R5 R4 K4 ["editThisContent"]
       28 DUPTABLE                         R5 K10 [{"Header", "Content", "Persist"}]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K7 ["Header"]
       33 DUPTABLE                         R8 K14 [{["IsDisabled"], ["VerticalAlignment"] = "center", ["LayoutOrder"]}]
       34 GETTABLEKS                       R10 R0 K6 ["canToggle"]
       36 NOT                              R9 R10
       37 SETTABLEKS                       R9 R8 K11 ["IsDisabled"]
       39 MOVE                             R9 R1
       40 CALL                             R9 0 1
       41 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       43 GETTABLEKS                       R9 R0 K15 ["headerChildren"]
       45 CALL                             R6 3 1
       46 SETTABLEKS                       R6 R5 K7 ["Header"]
       48 GETTABLEKS                       R6 R0 K16 ["children"]
       50 JUMPIFNOT                        R6 ; [+12]
       51 GETUPVAL                         R6 1
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K8 ["Content"]
       55 DUPTABLE                         R8 K19 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
       56 MOVE                             R9 R1
       57 CALL                             R9 0 1
       58 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       60 GETTABLEKS                       R9 R0 K16 ["children"]
       62 CALL                             R6 3 1
       63 SETTABLEKS                       R6 R5 K8 ["Content"]
       65 GETTABLEKS                       R6 R0 K20 ["persistChildren"]
       67 SETTABLEKS                       R6 R5 K9 ["Persist"]
       69 CALL                             R2 3 -1
       70 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["isError"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETTABLEKS                       R2 R0 K1 ["mode"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["Preparing"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 LOADNIL                          R2
       14 GETTABLEKS                       R3 R0 K0 ["isError"]
       16 JUMPIFNOT                        R3 ; [+18]
       17 GETTABLEKS                       R3 R0 K3 ["errorMessage"]
       19 JUMPIFNOT                        R3 ; [+11]
       20 LOADK                            R3 K4 ["%*: %*"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K5 ["GenerationFailed"]
       24 GETTABLEKS                       R6 R0 K3 ["errorMessage"]
       26 NAMECALL                         R3 R3 K6 ["format"]
       28 CALL                             R3 3 1
       29 MOVE                             R2 R3
       30 JUMP                             ; [+7]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K5 ["GenerationFailed"]
       34 JUMP                             ; [+3]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K7 ["Generating"]
       38 GETUPVAL                         R3 2
       39 CALL                             R3 0 1
       40 GETUPVAL                         R4 3
       41 GETUPVAL                         R5 4
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R6 R6 K8 ["assign"]
       45 DUPTABLE                         R7 K12 [{["canToggle"] = False, ["headerChildren"]}]
       46 DUPTABLE                         R8 K14 [{"Text"}]
       47 GETUPVAL                         R9 3
       48 GETUPVAL                         R10 6
       49 DUPTABLE                         R11 K18 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
       50 SETTABLEKS                       R2 R11 K13 ["Text"]
       52 MOVE                             R12 R3
       53 CALL                             R12 0 1
       54 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       56 DUPTABLE                         R12 K20 [{"Shimmer"}]
       57 MOVE                             R13 R1
       58 JUMPIFNOT                        R13 ; [+3]
       59 GETUPVAL                         R13 3
       60 GETUPVAL                         R14 7
       61 CALL                             R13 1 1
       62 SETTABLEKS                       R13 R12 K19 ["Shimmer"]
       64 CALL                             R9 3 1
       65 SETTABLEKS                       R9 R8 K13 ["Text"]
       67 SETTABLEKS                       R8 R7 K11 ["headerChildren"]
       69 MOVE                             R8 R0
       70 CALL                             R6 2 -1
       71 CALL                             R4 -1 -1
       72 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 GETIMPORT                        R1 K2 [os.clock]
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 2
       10 SUB                              R0 R1 R2
       11 GETUPVAL                         R1 3
       12 JUMPIFNOTLE                      R1 R0 ; [+5]
       14 GETUPVAL                         R1 1
       15 LOADB                            R2 1
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 3
       19 SUB                              R1 R2 R0
       20 GETIMPORT                        R2 K5 [task.delay]
       22 MOVE                             R3 R1
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U1
       25 CALL                             R2 2 1
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useState"]
        3 LOADB                            R4 0
        4 CALL                             R3 1 2
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["useEffect"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 NEWTABLE                         R7 0 3
       15 MOVE                             R8 R0
       16 MOVE                             R9 R1
       17 MOVE                             R10 R2
       18 SETLIST                          R7 R8 3 [1]
       20 CALL                             R5 2 0
       21 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K0 ["previewImages"]
        6 CALL                             R1 1 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["useCarouselPreviewImage"]
       11 GETTABLEKS                       R2 R0 K0 ["previewImages"]
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["nextOrder"]
        2 GETTABLEKS                       R2 R0 K1 ["retryInfo"]
        4 GETTABLEKS                       R3 R2 K2 ["description"]
        6 LOADB                            R4 0
        7 FASTCALL1                        TYPEOF R3 ; [+3]
        8 MOVE                             R6 R3
        9 GETIMPORT                        R5 K4 [typeof]
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQKS                    R5 K5 ["string"] ; [+5]
       14 JUMPIFNOTEQKS                    R3 K6 [""] ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 GETTABLEKS                       R5 R2 K7 ["onRetryDismissText"]
       20 LOADB                            R6 0
       21 GETTABLEKS                       R7 R2 K8 ["onRetryDismissClick"]
       23 JUMPIFEQKNIL                     R7 ; [+13]
       25 LOADB                            R6 0
       26 FASTCALL1                        TYPEOF R5 ; [+3]
       27 MOVE                             R8 R5
       28 GETIMPORT                        R7 K4 [typeof]
       30 CALL                             R7 1 1
       31 JUMPIFNOTEQKS                    R7 K5 ["string"] ; [+5]
       33 JUMPIFNOTEQKS                    R5 K6 [""] ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 NEWTABLE                         R7 2 0
       39 JUMPIFNOT                        R4 ; [+23]
       40 GETUPVAL                         R8 0
       41 GETUPVAL                         R9 1
       42 DUPTABLE                         R10 K12 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
       43 MOVE                             R11 R1
       44 CALL                             R11 0 1
       45 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       47 DUPTABLE                         R11 K14 [{"PromptText"}]
       48 GETUPVAL                         R12 0
       49 GETUPVAL                         R13 2
       50 DUPTABLE                         R14 K19 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-default", ["Text"], ["RichText"] = True, ["LayoutOrder"]}]
       51 SETTABLEKS                       R3 R14 K16 ["Text"]
       53 MOVE                             R15 R1
       54 CALL                             R15 0 1
       55 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
       57 CALL                             R12 2 1
       58 SETTABLEKS                       R12 R11 K13 ["PromptText"]
       60 CALL                             R8 3 1
       61 SETTABLEKS                       R8 R7 K20 ["Prompt"]
       63 GETUPVAL                         R8 0
       64 GETUPVAL                         R9 1
       65 DUPTABLE                         R10 K22 [{["tag"] = "shrink-0 row align-x-left align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       66 MOVE                             R11 R1
       67 CALL                             R11 0 1
       68 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       70 DUPTABLE                         R11 K25 [{"Retry", "Dismiss"}]
       71 GETUPVAL                         R12 0
       72 GETUPVAL                         R13 3
       73 DUPTABLE                         R14 K32 [{"text", "size", "variant", "fillBehavior", "isLoading", "onActivated", "LayoutOrder"}]
       74 GETTABLEKS                       R15 R2 K33 ["onRetryText"]
       76 SETTABLEKS                       R15 R14 K26 ["text"]
       78 GETUPVAL                         R15 4
       79 GETTABLEKS                       R15 R15 K34 ["Small"]
       81 SETTABLEKS                       R15 R14 K27 ["size"]
       83 GETUPVAL                         R15 5
       84 GETTABLEKS                       R15 R15 K35 ["Enums"]
       86 GETTABLEKS                       R15 R15 K36 ["ButtonVariant"]
       88 GETTABLEKS                       R15 R15 K37 ["Emphasis"]
       90 SETTABLEKS                       R15 R14 K28 ["variant"]
       92 GETUPVAL                         R15 6
       93 GETTABLEKS                       R15 R15 K38 ["Fit"]
       95 SETTABLEKS                       R15 R14 K29 ["fillBehavior"]
       97 GETTABLEKS                       R16 R2 K39 ["isRunning"]
       99 JUMPIFEQKB                       R16 TRUE ; [+2]
      101 LOADB                            R15 0 +1
      102 LOADB                            R15 1
      103 SETTABLEKS                       R15 R14 K30 ["isLoading"]
      105 GETTABLEKS                       R15 R2 K40 ["onRetryClick"]
      107 SETTABLEKS                       R15 R14 K31 ["onActivated"]
      109 MOVE                             R15 R1
      110 CALL                             R15 0 1
      111 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      113 CALL                             R12 2 1
      114 SETTABLEKS                       R12 R11 K23 ["Retry"]
      116 MOVE                             R12 R6
      117 JUMPIFNOT                        R12 ; [+33]
      118 GETUPVAL                         R12 0
      119 GETUPVAL                         R13 3
      120 DUPTABLE                         R14 K41 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder"}]
      121 SETTABLEKS                       R5 R14 K26 ["text"]
      123 GETUPVAL                         R15 4
      124 GETTABLEKS                       R15 R15 K34 ["Small"]
      126 SETTABLEKS                       R15 R14 K27 ["size"]
      128 GETUPVAL                         R15 5
      129 GETTABLEKS                       R15 R15 K35 ["Enums"]
      131 GETTABLEKS                       R15 R15 K36 ["ButtonVariant"]
      133 GETTABLEKS                       R15 R15 K42 ["Standard"]
      135 SETTABLEKS                       R15 R14 K28 ["variant"]
      137 GETUPVAL                         R15 6
      138 GETTABLEKS                       R15 R15 K38 ["Fit"]
      140 SETTABLEKS                       R15 R14 K29 ["fillBehavior"]
      142 GETTABLEKS                       R15 R2 K8 ["onRetryDismissClick"]
      144 SETTABLEKS                       R15 R14 K31 ["onActivated"]
      146 MOVE                             R15 R1
      147 CALL                             R15 0 1
      148 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      150 CALL                             R12 2 1
      151 SETTABLEKS                       R12 R11 K24 ["Dismiss"]
      153 CALL                             R8 3 1
      154 SETTABLEKS                       R8 R7 K43 ["Buttons"]
      156 GETUPVAL                         R8 0
      157 GETUPVAL                         R9 1
      158 DUPTABLE                         R10 K45 [{["tag"] = "col gap-small size-full-0 auto-y padding-small stroke-standard stroke-default radius-small", ["LayoutOrder"]}]
      159 MOVE                             R11 R1
      160 CALL                             R11 0 1
      161 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      163 MOVE                             R11 R7
      164 CALL                             R8 3 -1
      165 RETURN                           R8 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 GETTABLEKS                       R3 R0 K0 ["previewState"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["Generating"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETTABLEKS                       R4 R0 K0 ["previewState"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K2 ["Inserted"]
       21 JUMPIFEQ                         R4 R5 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 GETTABLEKS                       R5 R0 K0 ["previewState"]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K3 ["Failed"]
       30 JUMPIFEQ                         R5 R6 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 GETTABLEKS                       R6 R0 K0 ["previewState"]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K4 ["Cancelled"]
       39 JUMPIFEQ                         R6 R7 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R7 R0 K5 ["startTime"]
       46 MOVE                             R8 R2
       47 GETTABLEKS                       R9 R0 K6 ["generationStage"]
       49 CALL                             R6 3 1
       50 GETUPVAL                         R8 4
       51 CALL                             R8 0 1
       52 JUMPIF                           R8 ; [+5]
       53 GETUPVAL                         R7 5
       54 GETTABLEKS                       R8 R0 K7 ["previewImages"]
       56 CALL                             R7 1 1
       57 JUMP                             ; [+6]
       58 GETUPVAL                         R7 6
       59 GETTABLEKS                       R7 R7 K8 ["useCarouselPreviewImage"]
       61 GETTABLEKS                       R8 R0 K7 ["previewImages"]
       63 CALL                             R7 1 1
       64 GETUPVAL                         R8 7
       65 GETTABLEKS                       R9 R0 K9 ["className"]
       67 CALL                             R8 1 1
       68 LOADB                            R9 0
       69 GETTABLEKS                       R11 R0 K10 ["previewErrorMessage"]
       71 FASTCALL1                        TYPEOF R11 ; [+2]
       72 GETIMPORT                        R10 K12 [typeof]
       74 CALL                             R10 1 1
       75 JUMPIFNOTEQKS                    R10 K13 ["string"] ; [+7]
       77 GETTABLEKS                       R10 R0 K10 ["previewErrorMessage"]
       79 JUMPIFNOTEQKS                    R10 K14 [""] ; [+2]
       81 LOADB                            R9 0 +1
       82 LOADB                            R9 1
       83 MOVE                             R10 R2
       84 JUMPIF                           R10 ; [+7]
       85 GETTABLEKS                       R10 R7 K15 ["exists"]
       87 JUMPIFNOT                        R10 ; [+4]
       88 JUMPIF                           R4 ; [+2]
       89 MOVE                             R10 R5
       90 JUMPIFNOT                        R10 ; [+1]
       91 MOVE                             R10 R9
       92 LOADNIL                          R11
       93 GETTABLEKS                       R13 R0 K9 ["className"]
       95 JUMPIFNOTEQKNIL                  R13 ; [+2]
       97 LOADB                            R12 0 +1
       98 LOADB                            R12 1
       99 JUMPIFNOT                        R2 ; [+12]
      100 JUMPIF                           R12 ; [+32]
      101 LOADK                            R13 K16 ["%* %*"]
      102 GETUPVAL                         R15 8
      103 GETTABLEKS                       R15 R15 K17 ["GeneratingPrefix"]
      105 GETTABLEKS                       R16 R0 K18 ["displayName"]
      107 NAMECALL                         R13 R13 K19 ["format"]
      109 CALL                             R13 3 1
      110 MOVE                             R11 R13
      111 JUMP                             ; [+21]
      112 JUMPIFNOT                        R3 ; [+8]
      113 JUMPIFNOT                        R12 ; [+4]
      114 GETUPVAL                         R13 8
      115 GETTABLEKS                       R11 R13 K2 ["Inserted"]
      117 JUMP                             ; [+15]
      118 GETTABLEKS                       R11 R0 K18 ["displayName"]
      120 JUMP                             ; [+12]
      121 JUMPIFNOT                        R5 ; [+4]
      122 GETUPVAL                         R13 8
      123 GETTABLEKS                       R11 R13 K20 ["GenerationCancelled"]
      125 JUMP                             ; [+7]
      126 JUMPIFNOT                        R4 ; [+4]
      127 GETUPVAL                         R13 8
      128 GETTABLEKS                       R11 R13 K21 ["GenerationFailed"]
      130 JUMP                             ; [+2]
      131 GETTABLEKS                       R11 R0 K0 ["previewState"]
      133 MOVE                             R13 R11
      134 JUMPIF                           R13 ; [+2]
      135 MOVE                             R11 R13
      136 JUMP                             ; [+38]
      137 GETIMPORT                        R14 K23 [string.find]
      139 MOVE                             R15 R13
      140 LOADK                            R16 K24 ["\n"]
      141 CALL                             R14 2 1
      142 JUMPIFNOT                        R14 ; [+15]
      143 GETUPVAL                         R15 9
      144 JUMPIFNOTLE                      R14 R15 ; [+13]
      146 LOADN                            R19 1
      147 SUBK                             R20 R14 K25 [1]
      148 FASTCALL3                        STRING_SUB R13 R19 R20
      150 MOVE                             R18 R13
      151 GETIMPORT                        R17 K27 [string.sub]
      153 CALL                             R17 3 1
      154 MOVE                             R15 R17
      155 LOADK                            R16 K28 ["...(truncated)"]
      156 CONCAT                           R11 R15 R16
      157 JUMP                             ; [+17]
      158 LENGTH                           R15 R13
      159 GETUPVAL                         R16 9
      160 JUMPIFNOTLT                      R16 R15 ; [+13]
      162 LOADN                            R19 1
      163 GETUPVAL                         R20 9
      164 FASTCALL3                        STRING_SUB R13 R19 R20
      166 MOVE                             R18 R13
      167 GETIMPORT                        R17 K27 [string.sub]
      169 CALL                             R17 3 1
      170 MOVE                             R15 R17
      171 LOADK                            R16 K28 ["...(truncated)"]
      172 CONCAT                           R11 R15 R16
      173 JUMP                             ; [+1]
      174 MOVE                             R11 R13
      175 GETUPVAL                         R13 10
      176 CALL                             R13 0 1
      177 GETUPVAL                         R15 11
      178 LOADN                            R16 60
      179 JUMPIFNOTLE                      R16 R15 ; [+21]
      181 GETUPVAL                         R14 12
      182 LOADK                            R16 K29 ["PrimitiveGen"]
      183 LOADK                            R17 K30 ["ExpectedTimeMinutes"]
      184 DUPTABLE                         R18 K32 [{"minutes"}]
      185 GETIMPORT                        R19 K33 [string.format]
      187 LOADK                            R20 K34 ["%d"]
      188 GETUPVAL                         R23 11
      189 DIVK                             R22 R23 K35 [60]
      190 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      191 GETIMPORT                        R21 K38 [math.floor]
      193 CALL                             R21 1 1
      194 CALL                             R19 2 1
      195 SETTABLEKS                       R19 R18 K31 ["minutes"]
      197 NAMECALL                         R14 R14 K39 ["getText"]
      199 CALL                             R14 4 1
      200 JUMP                             ; [+14]
      201 GETUPVAL                         R14 12
      202 LOADK                            R16 K29 ["PrimitiveGen"]
      203 LOADK                            R17 K40 ["ExpectedTimeSeconds"]
      204 DUPTABLE                         R18 K42 [{"seconds"}]
      205 GETIMPORT                        R19 K33 [string.format]
      207 LOADK                            R20 K34 ["%d"]
      208 GETUPVAL                         R21 11
      209 CALL                             R19 2 1
      210 SETTABLEKS                       R19 R18 K41 ["seconds"]
      212 NAMECALL                         R14 R14 K39 ["getText"]
      214 CALL                             R14 4 1
      215 LOADNIL                          R15
      216 LOADNIL                          R16
      217 GETUPVAL                         R17 4
      218 CALL                             R17 0 1
      219 JUMPIFNOT                        R17 ; [+112]
      220 GETTABLEKS                       R17 R7 K43 ["images"]
      222 JUMPIFNOT                        R17 ; [+109]
      223 NEWTABLE                         R17 0 0
      225 GETTABLEKS                       R18 R7 K43 ["images"]
      227 LOADNIL                          R19
      228 LOADNIL                          R20
      229 FORGPREP                         R18
      230 JUMPIFEQKS                       R22 K14 [""] ; [+28]
      232 LOADK                            R24 K44 ["preload_%*"]
      233 MOVE                             R26 R21
      234 NAMECALL                         R24 R24 K19 ["format"]
      236 CALL                             R24 2 1
      237 MOVE                             R23 R24
      238 GETUPVAL                         R24 13
      239 LOADK                            R25 K45 ["ImageLabel"]
      240 DUPTABLE                         R26 K52 [{["BackgroundTransparency"] = 1, ["Image"], ["Position"], ["Size"], ["ZIndex"] = -10}]
      241 SETTABLEKS                       R22 R26 K47 ["Image"]
      243 GETIMPORT                        R27 K55 [UDim2.fromOffset]
      245 LOADN                            R28 0
      246 LOADN                            R29 0
      247 CALL                             R27 2 1
      248 SETTABLEKS                       R27 R26 K48 ["Position"]
      250 GETIMPORT                        R27 K55 [UDim2.fromOffset]
      252 LOADN                            R28 2
      253 LOADN                            R29 2
      254 CALL                             R27 2 1
      255 SETTABLEKS                       R27 R26 K49 ["Size"]
      257 CALL                             R24 2 1
      258 SETTABLE                         R24 R17 R23
      259 FORGLOOP                         R18 2 ; [-30]
      261 GETUPVAL                         R18 13
      262 LOADK                            R19 K56 ["Frame"]
      263 DUPTABLE                         R20 K59 [{["BackgroundTransparency"] = 1, ["Size"], ["ClipsDescendants"] = True}]
      264 GETIMPORT                        R21 K55 [UDim2.fromOffset]
      266 LOADN                            R22 0
      267 LOADN                            R23 0
      268 CALL                             R21 2 1
      269 SETTABLEKS                       R21 R20 K49 ["Size"]
      271 MOVE                             R21 R17
      272 CALL                             R18 3 1
      273 MOVE                             R15 R18
      274 NEWTABLE                         R18 0 0
      276 GETUPVAL                         R19 6
      277 GETTABLEKS                       R19 R19 K60 ["getBatch0Indices"]
      279 GETTABLEKS                       R22 R7 K43 ["images"]
      281 LENGTH                           R20 R22
      282 CALL                             R19 1 3
      283 FORGPREP                         R19
      284 GETTABLEKS                       R25 R7 K43 ["images"]
      286 GETTABLE                         R24 R25 R23
      287 JUMPIFNOT                        R24 ; [+29]
      288 JUMPIFEQKS                       R24 K14 [""] ; [+28]
      290 LOADK                            R26 K61 ["persist_%*"]
      291 MOVE                             R28 R23
      292 NAMECALL                         R26 R26 K19 ["format"]
      294 CALL                             R26 2 1
      295 MOVE                             R25 R26
      296 GETUPVAL                         R26 13
      297 LOADK                            R27 K45 ["ImageLabel"]
      298 DUPTABLE                         R28 K52 [{["BackgroundTransparency"] = 1, ["Image"], ["Position"], ["Size"], ["ZIndex"] = -10}]
      299 SETTABLEKS                       R24 R28 K47 ["Image"]
      301 GETIMPORT                        R29 K55 [UDim2.fromOffset]
      303 LOADN                            R30 0
      304 LOADN                            R31 0
      305 CALL                             R29 2 1
      306 SETTABLEKS                       R29 R28 K48 ["Position"]
      308 GETIMPORT                        R29 K55 [UDim2.fromOffset]
      310 LOADN                            R30 2
      311 LOADN                            R31 2
      312 CALL                             R29 2 1
      313 SETTABLEKS                       R29 R28 K49 ["Size"]
      315 CALL                             R26 2 1
      316 SETTABLE                         R26 R18 R25
      317 FORGLOOP                         R19 2 ; [-34]
      319 GETUPVAL                         R19 13
      320 LOADK                            R20 K56 ["Frame"]
      321 DUPTABLE                         R21 K59 [{["BackgroundTransparency"] = 1, ["Size"], ["ClipsDescendants"] = True}]
      322 GETIMPORT                        R22 K55 [UDim2.fromOffset]
      324 LOADN                            R23 0
      325 LOADN                            R24 0
      326 CALL                             R22 2 1
      327 SETTABLEKS                       R22 R21 K49 ["Size"]
      329 MOVE                             R22 R18
      330 CALL                             R19 3 1
      331 MOVE                             R16 R19
      332 GETUPVAL                         R17 13
      333 GETUPVAL                         R18 14
      334 GETUPVAL                         R19 15
      335 GETTABLEKS                       R19 R19 K62 ["assign"]
      337 DUPTABLE                         R20 K66 [{["canToggle"] = True, ["headerChildren"], ["persistChildren"]}]
      338 DUPTABLE                         R21 K68 [{"HeaderContent"}]
      339 GETUPVAL                         R22 13
      340 GETUPVAL                         R23 16
      341 DUPTABLE                         R24 K72 [{["tag"] = "row align-y-center gap-xsmall size-0-full auto-x", ["LayoutOrder"]}]
      342 MOVE                             R25 R13
      343 CALL                             R25 0 1
      344 SETTABLEKS                       R25 R24 K71 ["LayoutOrder"]
      346 DUPTABLE                         R25 K77 [{"StatusIcon", "Text", "ChipArea", "StageInfo"}]
      347 JUMPIFNOT                        R5 ; [+59]
      348 GETUPVAL                         R27 17
      349 CALL                             R27 0 1
      350 JUMPIFNOT                        R27 ; [+56]
      351 GETUPVAL                         R27 0
      352 CALL                             R27 0 1
      353 JUMPIFNOT                        R27 ; [+44]
      354 GETUPVAL                         R26 13
      355 GETUPVAL                         R27 18
      356 DUPTABLE                         R28 K82 [{"name", "style", "size", "variant", "LayoutOrder"}]
      357 GETUPVAL                         R29 19
      358 GETTABLEKS                       R29 R29 K83 ["Enums"]
      360 GETTABLEKS                       R29 R29 K84 ["IconName"]
      362 GETTABLEKS                       R29 R29 K85 ["TriangleExclamation"]
      364 SETTABLEKS                       R29 R28 K78 ["name"]
      366 GETTABLEKS                       R29 R1 K86 ["Color"]
      368 GETTABLEKS                       R29 R29 K87 ["System"]
      370 GETTABLEKS                       R29 R29 K88 ["Warning"]
      372 SETTABLEKS                       R29 R28 K79 ["style"]
      374 GETUPVAL                         R29 19
      375 GETTABLEKS                       R29 R29 K83 ["Enums"]
      377 GETTABLEKS                       R29 R29 K89 ["IconSize"]
      379 GETTABLEKS                       R29 R29 K90 ["Medium"]
      381 SETTABLEKS                       R29 R28 K80 ["size"]
      383 GETUPVAL                         R29 19
      384 GETTABLEKS                       R29 R29 K83 ["Enums"]
      386 GETTABLEKS                       R29 R29 K91 ["IconVariant"]
      388 GETTABLEKS                       R29 R29 K92 ["Filled"]
      390 SETTABLEKS                       R29 R28 K81 ["variant"]
      392 MOVE                             R29 R13
      393 CALL                             R29 0 1
      394 SETTABLEKS                       R29 R28 K71 ["LayoutOrder"]
      396 CALL                             R26 2 1
      397 JUMP                             ; [+10]
      398 GETUPVAL                         R26 13
      399 GETUPVAL                         R27 20
      400 DUPTABLE                         R28 K95 [{["tag"] = "size-500-500 content-system-warning", ["Image"] = "icons/status/warning", ["LayoutOrder"]}]
      401 MOVE                             R29 R13
      402 CALL                             R29 0 1
      403 SETTABLEKS                       R29 R28 K71 ["LayoutOrder"]
      405 CALL                             R26 2 1
      406 JUMP                             ; [+1]
      407 LOADNIL                          R26
      408 SETTABLEKS                       R26 R25 K73 ["StatusIcon"]
      410 GETUPVAL                         R26 13
      411 GETUPVAL                         R27 21
      412 DUPTABLE                         R28 K97 [{["tag"] = "size-0-0 auto-xy text-label-small content-default", ["Text"], ["LayoutOrder"]}]
      413 SETTABLEKS                       R11 R28 K74 ["Text"]
      415 MOVE                             R29 R13
      416 CALL                             R29 0 1
      417 SETTABLEKS                       R29 R28 K71 ["LayoutOrder"]
      419 DUPTABLE                         R29 K99 [{"Shimmer"}]
      420 MOVE                             R30 R2
      421 JUMPIFNOT                        R30 ; [+3]
      422 GETUPVAL                         R30 13
      423 GETUPVAL                         R31 22
      424 CALL                             R30 1 1
      425 SETTABLEKS                       R30 R29 K98 ["Shimmer"]
      427 CALL                             R26 3 1
      428 SETTABLEKS                       R26 R25 K74 ["Text"]
      430 MOVE                             R26 R12
      431 JUMPIFNOT                        R26 ; [+50]
      432 GETUPVAL                         R26 13
      433 GETUPVAL                         R27 16
      434 DUPTABLE                         R28 K101 [{["tag"] = "align-x-left align-y-center auto-xy", ["LayoutOrder"]}]
      435 MOVE                             R29 R13
      436 CALL                             R29 0 1
      437 SETTABLEKS                       R29 R28 K71 ["LayoutOrder"]
      439 DUPTABLE                         R29 K103 [{"AssetLink"}]
      440 GETUPVAL                         R30 13
      441 GETUPVAL                         R31 23
      442 DUPTABLE                         R32 K110 [{["text"], ["leading"], ["onActivated"], ["isDisabled"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
      443 GETTABLEKS                       R33 R0 K18 ["displayName"]
      445 SETTABLEKS                       R33 R32 K104 ["text"]
      447 GETTABLEKS                       R33 R8 K47 ["Image"]
      449 SETTABLEKS                       R33 R32 K105 ["leading"]
      451 GETTABLEKS                       R33 R0 K111 ["onChipClicked"]
      453 JUMPIF                           R33 ; [+1]
      454 GETUPVAL                         R33 24
      455 SETTABLEKS                       R33 R32 K106 ["onActivated"]
      457 GETTABLEKS                       R34 R0 K111 ["onChipClicked"]
      459 JUMPIFEQKNIL                     R34 ; [+2]
      461 LOADB                            R33 0 +1
      462 LOADB                            R33 1
      463 SETTABLEKS                       R33 R32 K107 ["isDisabled"]
      465 GETUPVAL                         R33 19
      466 GETTABLEKS                       R33 R33 K83 ["Enums"]
      468 GETTABLEKS                       R33 R33 K112 ["ChipSize"]
      470 GETTABLEKS                       R33 R33 K113 ["Small"]
      472 SETTABLEKS                       R33 R32 K80 ["size"]
      474 MOVE                             R33 R13
      475 CALL                             R33 0 1
      476 SETTABLEKS                       R33 R32 K71 ["LayoutOrder"]
      478 CALL                             R30 2 1
      479 SETTABLEKS                       R30 R29 K102 ["AssetLink"]
      481 CALL                             R26 3 1
      482 SETTABLEKS                       R26 R25 K75 ["ChipArea"]
      484 MOVE                             R26 R10
      485 JUMPIFNOT                        R26 ; [+98]
      486 GETUPVAL                         R26 13
      487 GETUPVAL                         R27 16
      488 DUPTABLE                         R28 K115 [{["tag"] = "row align-y-center gap-xsmall size-0-0 auto-xy padding-top-xxsmall", ["LayoutOrder"]}]
      489 MOVE                             R29 R13
      490 CALL                             R29 0 1
      491 SETTABLEKS                       R29 R28 K71 ["LayoutOrder"]
      493 DUPTABLE                         R29 K120 [{"GenerationStage", "ExpectedTime", "TakingLonger", "PreviewErrorExtra"}]
      494 MOVE                             R30 R2
      495 JUMPIFNOT                        R30 ; [+20]
      496 GETTABLEKS                       R30 R0 K6 ["generationStage"]
      498 JUMPIFNOT                        R30 ; [+17]
      499 GETUPVAL                         R30 13
      500 GETUPVAL                         R31 21
      501 DUPTABLE                         R32 K122 [{["tag"] = "size-0-0 auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
      502 LOADK                            R34 K123 ["(%*)"]
      503 GETTABLEKS                       R36 R0 K6 ["generationStage"]
      505 NAMECALL                         R34 R34 K19 ["format"]
      507 CALL                             R34 2 1
      508 MOVE                             R33 R34
      509 SETTABLEKS                       R33 R32 K74 ["Text"]
      511 MOVE                             R33 R13
      512 CALL                             R33 0 1
      513 SETTABLEKS                       R33 R32 K71 ["LayoutOrder"]
      515 CALL                             R30 2 1
      516 SETTABLEKS                       R30 R29 K116 ["GenerationStage"]
      518 MOVE                             R30 R2
      519 JUMPIFNOT                        R30 ; [+18]
      520 NOT                              R30 R6
      521 JUMPIFNOT                        R30 ; [+16]
      522 GETUPVAL                         R30 13
      523 GETUPVAL                         R31 21
      524 DUPTABLE                         R32 K122 [{["tag"] = "size-0-0 auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
      525 LOADK                            R34 K124 ["%*"]
      526 MOVE                             R36 R14
      527 NAMECALL                         R34 R34 K19 ["format"]
      529 CALL                             R34 2 1
      530 MOVE                             R33 R34
      531 SETTABLEKS                       R33 R32 K74 ["Text"]
      533 MOVE                             R33 R13
      534 CALL                             R33 0 1
      535 SETTABLEKS                       R33 R32 K71 ["LayoutOrder"]
      537 CALL                             R30 2 1
      538 SETTABLEKS                       R30 R29 K117 ["ExpectedTime"]
      540 MOVE                             R30 R2
      541 JUMPIFNOT                        R30 ; [+15]
      542 MOVE                             R30 R6
      543 JUMPIFNOT                        R30 ; [+13]
      544 GETUPVAL                         R30 13
      545 GETUPVAL                         R31 21
      546 DUPTABLE                         R32 K122 [{["tag"] = "size-0-0 auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
      547 GETUPVAL                         R33 8
      548 GETTABLEKS                       R33 R33 K118 ["TakingLonger"]
      550 SETTABLEKS                       R33 R32 K74 ["Text"]
      552 MOVE                             R33 R13
      553 CALL                             R33 0 1
      554 SETTABLEKS                       R33 R32 K71 ["LayoutOrder"]
      556 CALL                             R30 2 1
      557 SETTABLEKS                       R30 R29 K118 ["TakingLonger"]
      559 NOT                              R30 R2
      560 JUMPIFNOT                        R30 ; [+20]
      561 GETTABLEKS                       R30 R7 K15 ["exists"]
      563 JUMPIFNOT                        R30 ; [+17]
      564 JUMPIF                           R4 ; [+2]
      565 MOVE                             R30 R5
      566 JUMPIFNOT                        R30 ; [+14]
      567 MOVE                             R30 R9
      568 JUMPIFNOT                        R30 ; [+12]
      569 GETUPVAL                         R30 13
      570 GETUPVAL                         R31 21
      571 DUPTABLE                         R32 K127 [{["tag"] = "size-0-0 auto-xy text-caption-small text-wrap content-muted", ["Text"], ["TextWrapped"] = True, ["LayoutOrder"]}]
      572 GETTABLEKS                       R33 R0 K10 ["previewErrorMessage"]
      574 SETTABLEKS                       R33 R32 K74 ["Text"]
      576 MOVE                             R33 R13
      577 CALL                             R33 0 1
      578 SETTABLEKS                       R33 R32 K71 ["LayoutOrder"]
      580 CALL                             R30 2 1
      581 SETTABLEKS                       R30 R29 K119 ["PreviewErrorExtra"]
      583 CALL                             R26 3 1
      584 SETTABLEKS                       R26 R25 K76 ["StageInfo"]
      586 CALL                             R22 3 1
      587 SETTABLEKS                       R22 R21 K67 ["HeaderContent"]
      589 SETTABLEKS                       R21 R20 K64 ["headerChildren"]
      591 SETTABLEKS                       R16 R20 K65 ["persistChildren"]
      593 MOVE                             R21 R0
      594 CALL                             R19 2 1
      595 DUPTABLE                         R20 K131 [{"Preview", "PreloadTray", "RetryRow"}]
      596 JUMPIF                           R4 ; [+1]
      597 JUMPIFNOT                        R5 ; [+110]
      598 GETTABLEKS                       R22 R7 K15 ["exists"]
      600 JUMPIF                           R22 ; [+107]
      601 GETUPVAL                         R21 13
      602 GETUPVAL                         R22 16
      603 DUPTABLE                         R23 K133 [{["tag"] = "col align-x-center align-y-center gap-medium size-full-0 padding-large radius-small bg-shift-200", ["Size"], ["LayoutOrder"]}]
      604 GETIMPORT                        R24 K135 [UDim2.new]
      606 LOADN                            R25 1
      607 LOADN                            R26 0
      608 LOADN                            R27 0
      609 GETUPVAL                         R28 25
      610 CALL                             R24 4 1
      611 SETTABLEKS                       R24 R23 K49 ["Size"]
      613 MOVE                             R24 R13
      614 CALL                             R24 0 1
      615 SETTABLEKS                       R24 R23 K71 ["LayoutOrder"]
      617 DUPTABLE                         R24 K138 [{"ErrorIcon", "ErrorText"}]
      618 GETUPVAL                         R26 0
      619 CALL                             R26 0 1
      620 JUMPIFNOT                        R26 ; [+35]
      621 GETUPVAL                         R25 13
      622 GETUPVAL                         R26 18
      623 DUPTABLE                         R27 K139 [{"name", "style", "size", "LayoutOrder"}]
      624 GETUPVAL                         R28 19
      625 GETTABLEKS                       R28 R28 K83 ["Enums"]
      627 GETTABLEKS                       R28 R28 K84 ["IconName"]
      629 GETTABLEKS                       R28 R28 K85 ["TriangleExclamation"]
      631 SETTABLEKS                       R28 R27 K78 ["name"]
      633 GETTABLEKS                       R28 R1 K86 ["Color"]
      635 GETTABLEKS                       R28 R28 K87 ["System"]
      637 GETTABLEKS                       R28 R28 K88 ["Warning"]
      639 SETTABLEKS                       R28 R27 K79 ["style"]
      641 GETUPVAL                         R28 19
      642 GETTABLEKS                       R28 R28 K83 ["Enums"]
      644 GETTABLEKS                       R28 R28 K89 ["IconSize"]
      646 GETTABLEKS                       R28 R28 K90 ["Medium"]
      648 SETTABLEKS                       R28 R27 K80 ["size"]
      650 MOVE                             R28 R13
      651 CALL                             R28 0 1
      652 SETTABLEKS                       R28 R27 K71 ["LayoutOrder"]
      654 CALL                             R25 2 1
      655 JUMP                             ; [+8]
      656 GETUPVAL                         R25 13
      657 GETUPVAL                         R26 20
      658 DUPTABLE                         R27 K141 [{["tag"] = "size-500-500 content-system-warning", ["Image"] = "icons/status/error_large", ["LayoutOrder"]}]
      659 MOVE                             R28 R13
      660 CALL                             R28 0 1
      661 SETTABLEKS                       R28 R27 K71 ["LayoutOrder"]
      663 CALL                             R25 2 1
      664 SETTABLEKS                       R25 R24 K136 ["ErrorIcon"]
      666 GETUPVAL                         R25 13
      667 GETUPVAL                         R26 21
      668 DUPTABLE                         R27 K143 [{["tag"] = "size-full-0 auto-y text-label-small text-align-x-center content-muted", ["TextWrapped"] = True, ["Text"], ["LayoutOrder"]}]
      669 JUMPIFNOT                        R5 ; [+4]
      670 GETUPVAL                         R28 8
      671 GETTABLEKS                       R28 R28 K20 ["GenerationCancelled"]
      673 JUMP                             ; [+23]
      674 GETTABLEKS                       R29 R0 K10 ["previewErrorMessage"]
      676 JUMPIFNOT                        R29 ; [+17]
      677 GETTABLEKS                       R30 R0 K10 ["previewErrorMessage"]
      679 LENGTH                           R29 R30
      680 LOADN                            R30 0
      681 JUMPIFNOTLT                      R30 R29 ; [+12]
      683 LOADK                            R29 K144 ["%*\n\n%*"]
      684 GETUPVAL                         R31 8
      685 GETTABLEKS                       R31 R31 K21 ["GenerationFailed"]
      687 GETTABLEKS                       R32 R0 K10 ["previewErrorMessage"]
      689 NAMECALL                         R29 R29 K19 ["format"]
      691 CALL                             R29 3 1
      692 MOVE                             R28 R29
      693 JUMP                             ; [+3]
      694 GETUPVAL                         R28 8
      695 GETTABLEKS                       R28 R28 K21 ["GenerationFailed"]
      697 SETTABLEKS                       R28 R27 K74 ["Text"]
      699 MOVE                             R28 R13
      700 CALL                             R28 0 1
      701 SETTABLEKS                       R28 R27 K71 ["LayoutOrder"]
      703 CALL                             R25 2 1
      704 SETTABLEKS                       R25 R24 K137 ["ErrorText"]
      706 CALL                             R21 3 1
      707 JUMP                             ; [+200]
      708 GETTABLEKS                       R22 R7 K15 ["exists"]
      710 JUMPIF                           R22 ; [+27]
      711 GETUPVAL                         R21 13
      712 GETUPVAL                         R22 26
      713 DUPTABLE                         R23 K146 [{"Size", "radius", "LayoutOrder"}]
      714 GETIMPORT                        R24 K135 [UDim2.new]
      716 LOADN                            R25 1
      717 LOADN                            R26 0
      718 LOADN                            R27 0
      719 GETUPVAL                         R28 25
      720 CALL                             R24 4 1
      721 SETTABLEKS                       R24 R23 K49 ["Size"]
      723 GETUPVAL                         R24 19
      724 GETTABLEKS                       R24 R24 K83 ["Enums"]
      726 GETTABLEKS                       R24 R24 K147 ["Radius"]
      728 GETTABLEKS                       R24 R24 K113 ["Small"]
      730 SETTABLEKS                       R24 R23 K145 ["radius"]
      732 MOVE                             R24 R13
      733 CALL                             R24 0 1
      734 SETTABLEKS                       R24 R23 K71 ["LayoutOrder"]
      736 CALL                             R21 2 1
      737 JUMP                             ; [+170]
      738 GETUPVAL                         R21 13
      739 GETUPVAL                         R22 16
      740 DUPTABLE                         R23 K149 [{["tag"] = "col size-full-0 padding-x-medium radius-small bg-shift-200", ["Size"], ["LayoutOrder"]}]
      741 GETIMPORT                        R24 K135 [UDim2.new]
      743 LOADN                            R25 1
      744 LOADN                            R26 0
      745 LOADN                            R27 0
      746 GETUPVAL                         R28 25
      747 CALL                             R24 4 1
      748 SETTABLEKS                       R24 R23 K49 ["Size"]
      750 MOVE                             R24 R13
      751 CALL                             R24 0 1
      752 SETTABLEKS                       R24 R23 K71 ["LayoutOrder"]
      754 DUPTABLE                         R24 K153 [{"TopGutter", "PreviewRow", "BottomGutter"}]
      755 GETUPVAL                         R25 13
      756 GETUPVAL                         R26 16
      757 DUPTABLE                         R27 K154 [{"Size", "LayoutOrder"}]
      758 GETIMPORT                        R28 K135 [UDim2.new]
      760 LOADN                            R29 1
      761 LOADN                            R30 0
      762 LOADN                            R31 0
      763 GETUPVAL                         R32 27
      764 CALL                             R28 4 1
      765 SETTABLEKS                       R28 R27 K49 ["Size"]
      767 MOVE                             R28 R13
      768 CALL                             R28 0 1
      769 SETTABLEKS                       R28 R27 K71 ["LayoutOrder"]
      771 CALL                             R25 2 1
      772 SETTABLEKS                       R25 R24 K150 ["TopGutter"]
      774 GETUPVAL                         R25 13
      775 GETUPVAL                         R26 16
      776 DUPTABLE                         R27 K156 [{["tag"] = "row flex-x-between align-x-center align-y-center gap-xsmall size-full-0", ["Size"], ["LayoutOrder"]}]
      777 GETIMPORT                        R28 K135 [UDim2.new]
      779 LOADN                            R29 1
      780 LOADN                            R30 0
      781 LOADN                            R31 0
      782 GETUPVAL                         R33 25
      783 LOADN                            R35 2
      784 GETUPVAL                         R36 27
      785 MUL                              R34 R35 R36
      786 SUB                              R32 R33 R34
      787 CALL                             R28 4 1
      788 SETTABLEKS                       R28 R27 K49 ["Size"]
      790 MOVE                             R28 R13
      791 CALL                             R28 0 1
      792 SETTABLEKS                       R28 R27 K71 ["LayoutOrder"]
      794 DUPTABLE                         R28 K160 [{"LastPreview", "PreviewImage", "NextPreview"}]
      795 GETUPVAL                         R29 13
      796 GETUPVAL                         R30 28
      797 DUPTABLE                         R31 K162 [{"icon", "size", "onActivated", "LayoutOrder"}]
      798 GETUPVAL                         R32 19
      799 GETTABLEKS                       R32 R32 K83 ["Enums"]
      801 GETTABLEKS                       R32 R32 K84 ["IconName"]
      803 GETTABLEKS                       R32 R32 K163 ["ChevronLargeLeft"]
      805 SETTABLEKS                       R32 R31 K161 ["icon"]
      807 GETUPVAL                         R32 19
      808 GETTABLEKS                       R32 R32 K83 ["Enums"]
      810 GETTABLEKS                       R32 R32 K164 ["InputSize"]
      812 GETTABLEKS                       R32 R32 K113 ["Small"]
      814 SETTABLEKS                       R32 R31 K80 ["size"]
      816 GETTABLEKS                       R32 R7 K165 ["decrement"]
      818 SETTABLEKS                       R32 R31 K106 ["onActivated"]
      820 MOVE                             R32 R13
      821 CALL                             R32 0 1
      822 SETTABLEKS                       R32 R31 K71 ["LayoutOrder"]
      824 CALL                             R29 2 1
      825 SETTABLEKS                       R29 R28 K157 ["LastPreview"]
      827 GETUPVAL                         R29 13
      828 GETUPVAL                         R30 20
      829 DUPTABLE                         R31 K170 [{["tag"] = "fill size-0-full radius-small", ["Image"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["ScaleType"], ["LayoutOrder"]}]
      830 GETTABLEKS                       R32 R7 K171 ["current"]
      832 SETTABLEKS                       R32 R31 K47 ["Image"]
      834 GETIMPORT                        R32 K174 [Color3.fromRGB]
      836 LOADN                            R33 0
      837 LOADN                            R34 0
      838 LOADN                            R35 0
      839 CALL                             R32 3 1
      840 SETTABLEKS                       R32 R31 K167 ["BackgroundColor3"]
      842 GETIMPORT                        R32 K177 [Enum.ScaleType.Fit]
      844 SETTABLEKS                       R32 R31 K169 ["ScaleType"]
      846 MOVE                             R32 R13
      847 CALL                             R32 0 1
      848 SETTABLEKS                       R32 R31 K71 ["LayoutOrder"]
      850 CALL                             R29 2 1
      851 SETTABLEKS                       R29 R28 K158 ["PreviewImage"]
      853 GETUPVAL                         R29 13
      854 GETUPVAL                         R30 28
      855 DUPTABLE                         R31 K162 [{"icon", "size", "onActivated", "LayoutOrder"}]
      856 GETUPVAL                         R32 19
      857 GETTABLEKS                       R32 R32 K83 ["Enums"]
      859 GETTABLEKS                       R32 R32 K84 ["IconName"]
      861 GETTABLEKS                       R32 R32 K178 ["ChevronLargeRight"]
      863 SETTABLEKS                       R32 R31 K161 ["icon"]
      865 GETUPVAL                         R32 19
      866 GETTABLEKS                       R32 R32 K83 ["Enums"]
      868 GETTABLEKS                       R32 R32 K164 ["InputSize"]
      870 GETTABLEKS                       R32 R32 K113 ["Small"]
      872 SETTABLEKS                       R32 R31 K80 ["size"]
      874 GETTABLEKS                       R32 R7 K179 ["increment"]
      876 SETTABLEKS                       R32 R31 K106 ["onActivated"]
      878 MOVE                             R32 R13
      879 CALL                             R32 0 1
      880 SETTABLEKS                       R32 R31 K71 ["LayoutOrder"]
      882 CALL                             R29 2 1
      883 SETTABLEKS                       R29 R28 K159 ["NextPreview"]
      885 CALL                             R25 3 1
      886 SETTABLEKS                       R25 R24 K151 ["PreviewRow"]
      888 GETUPVAL                         R25 13
      889 GETUPVAL                         R26 16
      890 DUPTABLE                         R27 K154 [{"Size", "LayoutOrder"}]
      891 GETIMPORT                        R28 K135 [UDim2.new]
      893 LOADN                            R29 1
      894 LOADN                            R30 0
      895 LOADN                            R31 0
      896 GETUPVAL                         R32 27
      897 CALL                             R28 4 1
      898 SETTABLEKS                       R28 R27 K49 ["Size"]
      900 MOVE                             R28 R13
      901 CALL                             R28 0 1
      902 SETTABLEKS                       R28 R27 K71 ["LayoutOrder"]
      904 CALL                             R25 2 1
      905 SETTABLEKS                       R25 R24 K152 ["BottomGutter"]
      907 CALL                             R21 3 1
      908 SETTABLEKS                       R21 R20 K128 ["Preview"]
      910 SETTABLEKS                       R15 R20 K129 ["PreloadTray"]
      912 GETTABLEKS                       R21 R0 K180 ["retryInfo"]
      914 JUMPIFNOT                        R21 ; [+9]
      915 GETUPVAL                         R21 29
      916 DUPTABLE                         R22 K182 [{"retryInfo", "nextOrder"}]
      917 GETTABLEKS                       R23 R0 K180 ["retryInfo"]
      919 SETTABLEKS                       R23 R22 K180 ["retryInfo"]
      921 SETTABLEKS                       R13 R22 K181 ["nextOrder"]
      923 CALL                             R21 1 1
      924 SETTABLEKS                       R21 R20 K130 ["RetryRow"]
      926 CALL                             R17 3 -1
      927 RETURN                           R17 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R5 R0 K0 ["generationErrorType"]
        7 GETTABLE                         R3 R4 R5
        8 JUMPIF                           R3 ; [+1]
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R4 4
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+8]
       13 GETUPVAL                         R6 5
       14 GETTABLEKS                       R7 R0 K0 ["generationErrorType"]
       16 GETTABLE                         R5 R6 R7
       17 JUMPIFEQKB                       R5 TRUE ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 GETUPVAL                         R6 4
       22 CALL                             R6 0 1
       23 JUMPIFNOT                        R6 ; [+5]
       24 JUMPIFNOT                        R4 ; [+4]
       25 GETUPVAL                         R5 6
       26 GETTABLEKS                       R5 R5 K1 ["GenerationCancelled"]
       28 JUMP                             ; [+3]
       29 GETUPVAL                         R5 7
       30 GETTABLEKS                       R5 R5 K2 ["GenerationFailed"]
       32 GETUPVAL                         R7 4
       33 CALL                             R7 0 1
       34 JUMPIFNOT                        R7 ; [+8]
       35 JUMPIFNOT                        R4 ; [+7]
       36 GETTABLEKS                       R6 R1 K3 ["Color"]
       38 GETTABLEKS                       R6 R6 K4 ["System"]
       40 GETTABLEKS                       R6 R6 K5 ["Warning"]
       42 JUMP                             ; [+6]
       43 GETTABLEKS                       R6 R1 K3 ["Color"]
       45 GETTABLEKS                       R6 R6 K4 ["System"]
       47 GETTABLEKS                       R6 R6 K6 ["Alert"]
       49 GETTABLEKS                       R7 R0 K7 ["generationErrorMessage"]
       51 GETUPVAL                         R8 8
       52 GETUPVAL                         R9 9
       53 GETUPVAL                         R10 10
       54 GETTABLEKS                       R10 R10 K8 ["assign"]
       56 DUPTABLE                         R11 K12 [{["canToggle"] = True, ["headerChildren"]}]
       57 DUPTABLE                         R12 K15 [{"StatusIcon", "Text"}]
       58 GETUPVAL                         R14 11
       59 CALL                             R14 0 1
       60 JUMPIFNOT                        R14 ; [+38]
       61 GETUPVAL                         R13 8
       62 GETUPVAL                         R14 12
       63 DUPTABLE                         R15 K21 [{"name", "style", "size", "variant", "LayoutOrder"}]
       64 GETUPVAL                         R16 13
       65 GETTABLEKS                       R16 R16 K22 ["Enums"]
       67 GETTABLEKS                       R16 R16 K23 ["IconName"]
       69 GETTABLEKS                       R16 R16 K24 ["TriangleExclamation"]
       71 SETTABLEKS                       R16 R15 K16 ["name"]
       73 SETTABLEKS                       R6 R15 K17 ["style"]
       75 GETUPVAL                         R16 13
       76 GETTABLEKS                       R16 R16 K22 ["Enums"]
       78 GETTABLEKS                       R16 R16 K25 ["IconSize"]
       80 GETTABLEKS                       R16 R16 K26 ["Small"]
       82 SETTABLEKS                       R16 R15 K18 ["size"]
       84 GETUPVAL                         R16 13
       85 GETTABLEKS                       R16 R16 K22 ["Enums"]
       87 GETTABLEKS                       R16 R16 K27 ["IconVariant"]
       89 GETTABLEKS                       R16 R16 K28 ["Filled"]
       91 SETTABLEKS                       R16 R15 K19 ["variant"]
       93 MOVE                             R16 R2
       94 CALL                             R16 0 1
       95 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
       97 CALL                             R13 2 1
       98 JUMP                             ; [+19]
       99 GETUPVAL                         R13 8
      100 GETUPVAL                         R14 12
      101 DUPTABLE                         R15 K30 [{["name"] = "icons/status/warning", ["size"], ["style"], ["LayoutOrder"]}]
      102 GETUPVAL                         R16 13
      103 GETTABLEKS                       R16 R16 K22 ["Enums"]
      105 GETTABLEKS                       R16 R16 K25 ["IconSize"]
      107 GETTABLEKS                       R16 R16 K26 ["Small"]
      109 SETTABLEKS                       R16 R15 K18 ["size"]
      111 SETTABLEKS                       R6 R15 K17 ["style"]
      113 MOVE                             R16 R2
      114 CALL                             R16 0 1
      115 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      117 CALL                             R13 2 1
      118 SETTABLEKS                       R13 R12 K13 ["StatusIcon"]
      120 GETUPVAL                         R13 8
      121 GETUPVAL                         R14 14
      122 DUPTABLE                         R15 K33 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      123 SETTABLEKS                       R5 R15 K14 ["Text"]
      125 MOVE                             R16 R2
      126 CALL                             R16 0 1
      127 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R12 K14 ["Text"]
      132 SETTABLEKS                       R12 R11 K11 ["headerChildren"]
      134 MOVE                             R12 R0
      135 CALL                             R10 2 1
      136 DUPTABLE                         R11 K37 [{"TemplateMessage", "ErrorDetail", "RetryRow"}]
      137 GETUPVAL                         R12 8
      138 GETUPVAL                         R13 14
      139 DUPTABLE                         R14 K40 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-muted", ["Text"], ["TextWrapped"] = True, ["LayoutOrder"]}]
      140 SETTABLEKS                       R3 R14 K14 ["Text"]
      142 MOVE                             R15 R2
      143 CALL                             R15 0 1
      144 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
      146 CALL                             R12 2 1
      147 SETTABLEKS                       R12 R11 K34 ["TemplateMessage"]
      149 MOVE                             R12 R7
      150 JUMPIFNOT                        R12 ; [+45]
      151 GETUPVAL                         R12 8
      152 GETUPVAL                         R13 15
      153 DUPTABLE                         R14 K42 [{["tag"] = "size-full-0 auto-y padding-small radius-small bg-shift-200", ["LayoutOrder"]}]
      154 MOVE                             R15 R2
      155 CALL                             R15 0 1
      156 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
      158 DUPTABLE                         R15 K44 [{"ErrorText"}]
      159 GETUPVAL                         R16 8
      160 LOADK                            R17 K45 ["TextBox"]
      161 DUPTABLE                         R18 K58 [{["Text"], ["TextEditable"] = False, ["ClearTextOnFocus"] = False, ["TextWrapped"] = True, ["TextXAlignment"], ["TextColor3"], ["FontFace"], ["TextSize"] = 12, ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      162 SETTABLEKS                       R7 R18 K14 ["Text"]
      164 GETIMPORT                        R19 K61 [Enum.TextXAlignment.Left]
      166 SETTABLEKS                       R19 R18 K49 ["TextXAlignment"]
      168 GETIMPORT                        R19 K64 [Color3.fromRGB]
      170 LOADN                            R20 138
      171 LOADN                            R21 180
      172 LOADN                            R22 220
      173 CALL                             R19 3 1
      174 SETTABLEKS                       R19 R18 K50 ["TextColor3"]
      176 GETUPVAL                         R19 16
      177 GETTABLEKS                       R19 R19 K65 ["CODE_FONT"]
      179 SETTABLEKS                       R19 R18 K51 ["FontFace"]
      181 GETIMPORT                        R19 K68 [UDim2.fromScale]
      183 LOADN                            R20 1
      184 LOADN                            R21 0
      185 CALL                             R19 2 1
      186 SETTABLEKS                       R19 R18 K54 ["Size"]
      188 GETIMPORT                        R19 K70 [Enum.AutomaticSize.Y]
      190 SETTABLEKS                       R19 R18 K55 ["AutomaticSize"]
      192 CALL                             R16 2 1
      193 SETTABLEKS                       R16 R15 K43 ["ErrorText"]
      195 CALL                             R12 3 1
      196 SETTABLEKS                       R12 R11 K35 ["ErrorDetail"]
      198 GETTABLEKS                       R12 R0 K71 ["retryInfo"]
      200 JUMPIFNOT                        R12 ; [+9]
      201 GETUPVAL                         R12 17
      202 DUPTABLE                         R13 K73 [{"retryInfo", "nextOrder"}]
      203 GETTABLEKS                       R14 R0 K71 ["retryInfo"]
      205 SETTABLEKS                       R14 R13 K71 ["retryInfo"]
      207 SETTABLEKS                       R2 R13 K72 ["nextOrder"]
      209 CALL                             R12 1 1
      210 SETTABLEKS                       R12 R11 K36 ["RetryRow"]
      212 CALL                             R8 3 -1
      213 RETURN                           R8 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ShowPreview"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETTABLEKS                       R1 R0 K0 ["mode"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["GenerationError"]
       17 JUMPIFNOTEQ                      R1 R2 ; [+6]
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R0
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 GETTABLEKS                       R1 R0 K0 ["mode"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K3 ["Preparing"]
       29 JUMPIFEQ                         R1 R2 ; [+7]
       31 GETIMPORT                        R1 K5 [warn]
       33 LOADK                            R2 K6 ["Unsupported mode of PrimitiveGenContentWidget"]
       34 GETTABLEKS                       R3 R0 K0 ["mode"]
       36 CALL                             R1 2 0
       37 GETTABLEKS                       R1 R0 K7 ["toolResult"]
       39 JUMPIFNOT                        R1 ; [+4]
       40 GETTABLEKS                       R1 R0 K7 ["toolResult"]
       42 GETTABLEKS                       R1 R1 K8 ["isError"]
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R2 R2 K9 ["join"]
       47 MOVE                             R3 R0
       48 DUPTABLE                         R4 K10 [{"isError"}]
       49 SETTABLEKS                       R1 R4 K8 ["isError"]
       51 CALL                             R2 2 1
       52 MOVE                             R0 R2
       53 GETUPVAL                         R2 1
       54 GETUPVAL                         R3 5
       55 MOVE                             R4 R0
       56 CALL                             R2 2 -1
       57 RETURN                           R2 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Preparing"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+8]
        7 DUPTABLE                         R1 K2 [{"mode"}]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["Preparing"]
       11 SETTABLEKS                       R2 R1 K0 ["mode"]
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R0 K3 ["retryInfo"]
       16 JUMPIFNOT                        R1 ; [+18]
       17 DUPTABLE                         R2 K8 [{"description", "onRetryText", "isRunning", "onRetryDismissText"}]
       18 GETTABLEKS                       R3 R1 K4 ["description"]
       20 SETTABLEKS                       R3 R2 K4 ["description"]
       22 GETTABLEKS                       R3 R1 K5 ["onRetryText"]
       24 SETTABLEKS                       R3 R2 K5 ["onRetryText"]
       26 GETTABLEKS                       R3 R1 K6 ["isRunning"]
       28 SETTABLEKS                       R3 R2 K6 ["isRunning"]
       30 GETTABLEKS                       R3 R1 K7 ["onRetryDismissText"]
       32 SETTABLEKS                       R3 R2 K7 ["onRetryDismissText"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R2
       36 GETTABLEKS                       R3 R0 K0 ["mode"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K9 ["GenerationError"]
       41 JUMPIFNOTEQ                      R3 R4 ; [+18]
       43 DUPTABLE                         R3 K12 [{"mode", "generationErrorMessage", "generationErrorType", "retryInfo"}]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K9 ["GenerationError"]
       47 SETTABLEKS                       R4 R3 K0 ["mode"]
       49 GETTABLEKS                       R4 R0 K10 ["generationErrorMessage"]
       51 SETTABLEKS                       R4 R3 K10 ["generationErrorMessage"]
       53 GETTABLEKS                       R4 R0 K11 ["generationErrorType"]
       55 SETTABLEKS                       R4 R3 K11 ["generationErrorType"]
       57 SETTABLEKS                       R2 R3 K3 ["retryInfo"]
       59 RETURN                           R3 1
       60 DUPTABLE                         R3 K20 [{"mode", "name", "previewImages", "previewState", "previewErrorMessage", "generationStage", "generationId", "startTime", "retryInfo"}]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K21 ["ShowPreview"]
       64 SETTABLEKS                       R4 R3 K0 ["mode"]
       66 GETTABLEKS                       R4 R0 K13 ["name"]
       68 SETTABLEKS                       R4 R3 K13 ["name"]
       70 GETTABLEKS                       R4 R0 K14 ["previewImages"]
       72 SETTABLEKS                       R4 R3 K14 ["previewImages"]
       74 GETTABLEKS                       R4 R0 K15 ["previewState"]
       76 SETTABLEKS                       R4 R3 K15 ["previewState"]
       78 GETTABLEKS                       R4 R0 K16 ["previewErrorMessage"]
       80 SETTABLEKS                       R4 R3 K16 ["previewErrorMessage"]
       82 GETTABLEKS                       R4 R0 K17 ["generationStage"]
       84 SETTABLEKS                       R4 R3 K17 ["generationStage"]
       86 GETTABLEKS                       R4 R0 K18 ["generationId"]
       88 SETTABLEKS                       R4 R3 K18 ["generationId"]
       90 GETTABLEKS                       R4 R0 K19 ["startTime"]
       92 SETTABLEKS                       R4 R3 K19 ["startTime"]
       94 SETTABLEKS                       R2 R3 K3 ["retryInfo"]
       96 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Preparing"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+16]
        7 DUPTABLE                         R2 K6 [{["type"] = "PrimitiveGen", [2], ["isError"], ["errorMessage"]}]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["Preparing"]
       11 SETTABLEKS                       R3 R2 K0 ["mode"]
       13 GETTABLEKS                       R3 R0 K4 ["isError"]
       15 SETTABLEKS                       R3 R2 K4 ["isError"]
       17 GETTABLEKS                       R3 R0 K5 ["errorMessage"]
       19 SETTABLEKS                       R3 R2 K5 ["errorMessage"]
       21 RETURN                           R2 1
       22 GETTABLEKS                       R2 R0 K7 ["retryInfo"]
       24 JUMPIFNOT                        R2 ; [+32]
       25 DUPTABLE                         R3 K14 [{"description", "onRetryText", "onRetryClick", "isRunning", "onRetryDismissText", "onRetryDismissClick"}]
       26 GETTABLEKS                       R4 R2 K8 ["description"]
       28 SETTABLEKS                       R4 R3 K8 ["description"]
       30 GETTABLEKS                       R4 R2 K9 ["onRetryText"]
       32 SETTABLEKS                       R4 R3 K9 ["onRetryText"]
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K15 ["createUnimplemented"]
       37 LOADK                            R5 K10 ["onRetryClick"]
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R4 R3 K10 ["onRetryClick"]
       41 GETTABLEKS                       R4 R2 K11 ["isRunning"]
       43 SETTABLEKS                       R4 R3 K11 ["isRunning"]
       45 GETTABLEKS                       R4 R2 K12 ["onRetryDismissText"]
       47 SETTABLEKS                       R4 R3 K12 ["onRetryDismissText"]
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K15 ["createUnimplemented"]
       52 LOADK                            R5 K13 ["onRetryDismissClick"]
       53 CALL                             R4 1 1
       54 SETTABLEKS                       R4 R3 K13 ["onRetryDismissClick"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R3
       58 GETTABLEKS                       R4 R0 K0 ["mode"]
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K16 ["GenerationError"]
       63 JUMPIFNOTEQ                      R4 R5 ; [+19]
       65 DUPTABLE                         R4 K19 [{["type"] = "PrimitiveGen", [2], ["generationErrorMessage"], ["generationErrorType"], ["retryInfo"]}]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K16 ["GenerationError"]
       69 SETTABLEKS                       R5 R4 K0 ["mode"]
       71 GETTABLEKS                       R5 R0 K17 ["generationErrorMessage"]
       73 SETTABLEKS                       R5 R4 K17 ["generationErrorMessage"]
       75 GETTABLEKS                       R6 R0 K18 ["generationErrorType"]
       77 ORK                              R5 R6 K20 ["General"]
       78 SETTABLEKS                       R5 R4 K18 ["generationErrorType"]
       80 SETTABLEKS                       R3 R4 K7 ["retryInfo"]
       82 RETURN                           R4 1
       83 GETTABLEKS                       R4 R0 K0 ["mode"]
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K21 ["ShowPreview"]
       88 JUMPIFNOTEQ                      R4 R5 ; [+56]
       90 DUPTABLE                         R4 K35 [{["type"] = "PrimitiveGen", [2], ["expanded"] = False, ["name"], ["displayName"], ["className"] = , ["previewImages"], ["previewState"], ["previewErrorMessage"], ["generationStage"], ["generationId"], ["startTime"], ["onChipClicked"], ["retryInfo"]}]
       91 GETTABLEKS                       R5 R0 K0 ["mode"]
       93 SETTABLEKS                       R5 R4 K0 ["mode"]
       95 GETTABLEKS                       R6 R0 K24 ["name"]
       97 ORK                              R5 R6 K36 ["UNKNOWN"]
       98 SETTABLEKS                       R5 R4 K24 ["name"]
      100 GETTABLEKS                       R6 R0 K24 ["name"]
      102 ORK                              R5 R6 K36 ["UNKNOWN"]
      103 SETTABLEKS                       R5 R4 K25 ["displayName"]
      105 GETTABLEKS                       R5 R0 K28 ["previewImages"]
      107 SETTABLEKS                       R5 R4 K28 ["previewImages"]
      109 GETTABLEKS                       R5 R0 K29 ["previewState"]
      111 JUMPIF                           R5 ; [+3]
      112 GETUPVAL                         R5 2
      113 GETTABLEKS                       R5 R5 K37 ["Failed"]
      115 SETTABLEKS                       R5 R4 K29 ["previewState"]
      117 GETTABLEKS                       R5 R0 K30 ["previewErrorMessage"]
      119 SETTABLEKS                       R5 R4 K30 ["previewErrorMessage"]
      121 GETTABLEKS                       R5 R0 K31 ["generationStage"]
      123 SETTABLEKS                       R5 R4 K31 ["generationStage"]
      125 GETTABLEKS                       R6 R0 K32 ["generationId"]
      127 ORK                              R5 R6 K38 [""]
      128 SETTABLEKS                       R5 R4 K32 ["generationId"]
      130 GETTABLEKS                       R6 R0 K33 ["startTime"]
      132 ORK                              R5 R6 K39 [0]
      133 SETTABLEKS                       R5 R4 K33 ["startTime"]
      135 GETUPVAL                         R5 1
      136 GETTABLEKS                       R5 R5 K15 ["createUnimplemented"]
      138 LOADK                            R6 K34 ["onChipClicked"]
      139 CALL                             R5 1 1
      140 SETTABLEKS                       R5 R4 K34 ["onChipClicked"]
      142 SETTABLEKS                       R3 R4 K7 ["retryInfo"]
      144 RETURN                           R4 1
      145 LOADNIL                          R4
      146 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Util"]
       46 GETTABLEKS                       R7 R7 K14 ["Serializer"]
       48 GETTABLEKS                       R7 R7 K15 ["SerializerTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["ShimmerGradient"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Resources"]
       62 GETTABLEKS                       R9 R9 K18 ["Localization"]
       64 GETTABLEKS                       R9 R9 K19 ["Translator"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K20 ["Types"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K21 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K22 ["useClassIcon"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K21 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K23 ["useWrappingIndex"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K24 ["Features"]
       90 GETTABLEKS                       R13 R13 K25 ["Gen3dUtils"]
       92 GETTABLEKS                       R13 R13 K26 ["Gen3dConstants"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K24 ["Features"]
       99 GETTABLEKS                       R14 R14 K25 ["Gen3dUtils"]
      101 GETTABLEKS                       R14 R14 K27 ["ViewportPreviewUtils"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K28 ["Flags"]
      108 GETTABLEKS                       R15 R15 K29 ["FFlagAssistantUseBuilderIcons"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K28 ["Flags"]
      115 GETTABLEKS                       R16 R16 K30 ["FFlagPrimGenBetterErrorType"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K28 ["Flags"]
      122 GETTABLEKS                       R17 R17 K31 ["FFlagPrimGenCarouselPreview"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K28 ["Flags"]
      129 GETTABLEKS                       R18 R18 K32 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K28 ["Flags"]
      136 GETTABLEKS                       R19 R19 K33 ["FIntPrimGenLongRunThresholdSec"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K28 ["Flags"]
      143 GETTABLEKS                       R20 R20 K34 ["FIntPrimGenTextMaxLength"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K28 ["Flags"]
      150 GETTABLEKS                       R21 R21 K35 ["FIntPrimGenVerticalGutter"]
      152 CALL                             R20 1 1
      153 GETTABLEKS                       R21 R3 K36 ["Chip"]
      155 GETTABLEKS                       R22 R3 K37 ["Icon"]
      157 GETTABLEKS                       R23 R3 K38 ["Button"]
      159 GETTABLEKS                       R24 R3 K39 ["IconButton"]
      161 GETTABLEKS                       R25 R3 K40 ["Image"]
      163 GETTABLEKS                       R26 R3 K41 ["Skeleton"]
      165 GETTABLEKS                       R27 R3 K42 ["Text"]
      167 GETTABLEKS                       R28 R3 K43 ["View"]
      169 GETTABLEKS                       R29 R3 K21 ["Hooks"]
      171 GETTABLEKS                       R29 R29 K44 ["useTokens"]
      173 GETTABLEKS                       R30 R5 K45 ["createNextOrder"]
      175 GETTABLEKS                       R31 R4 K46 ["createElement"]
      177 GETTABLEKS                       R32 R12 K47 ["PREVIEW_HEIGHT"]
      179 MOVE                             R33 R20
      180 CALL                             R33 0 1
      181 MOVE                             R34 R18
      182 CALL                             R34 0 1
      183 MOVE                             R35 R19
      184 CALL                             R35 0 1
      185 DUPCLOSURE                       R36 K48 [PROTO_0]
      186 DUPCLOSURE                       R37 K49 [PROTO_1]
      187 CAPTURE                          VAL R35
      188 DUPTABLE                         R38 K54 [{["Generating"] = "Generating", ["Inserted"] = "Inserted", ["Failed"] = "Failed", ["Cancelled"] = "Cancelled"}]
      189 DUPTABLE                         R39 K58 [{["Preparing"] = "Preparing", ["ShowPreview"] = "ShowPreview", ["GenerationError"] = "GenerationError"}]
      190 DUPCLOSURE                       R40 K59 [PROTO_2]
      191 CAPTURE                          VAL R30
      192 CAPTURE                          VAL R31
      193 CAPTURE                          VAL R1
      194 DUPTABLE                         R41 K61 [{"Generating", "GenerationFailed"}]
      195 LOADK                            R44 K62 ["PrimitiveGen"]
      196 LOADK                            R45 K50 ["Generating"]
      197 NAMECALL                         R42 R8 K63 ["getText"]
      199 CALL                             R42 3 1
      200 SETTABLEKS                       R42 R41 K50 ["Generating"]
      202 LOADK                            R44 K62 ["PrimitiveGen"]
      203 LOADK                            R45 K60 ["GenerationFailed"]
      204 NAMECALL                         R42 R8 K63 ["getText"]
      206 CALL                             R42 3 1
      207 SETTABLEKS                       R42 R41 K60 ["GenerationFailed"]
      209 DUPCLOSURE                       R42 K64 [PROTO_3]
      210 CAPTURE                          VAL R39
      211 CAPTURE                          VAL R41
      212 CAPTURE                          VAL R30
      213 CAPTURE                          VAL R31
      214 CAPTURE                          VAL R40
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R27
      217 CAPTURE                          VAL R7
      218 DUPCLOSURE                       R43 K65 [PROTO_7]
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R34
      221 DUPCLOSURE                       R44 K66 [PROTO_8]
      222 CAPTURE                          VAL R16
      223 CAPTURE                          VAL R11
      224 CAPTURE                          VAL R13
      225 DUPTABLE                         R45 K70 [{"GeneratingPrefix", "Inserted", "GenerationCancelled", "GenerationFailed", "TakingLonger"}]
      226 LOADK                            R48 K62 ["PrimitiveGen"]
      227 LOADK                            R49 K67 ["GeneratingPrefix"]
      228 NAMECALL                         R46 R8 K63 ["getText"]
      230 CALL                             R46 3 1
      231 SETTABLEKS                       R46 R45 K67 ["GeneratingPrefix"]
      233 LOADK                            R48 K62 ["PrimitiveGen"]
      234 LOADK                            R49 K51 ["Inserted"]
      235 NAMECALL                         R46 R8 K63 ["getText"]
      237 CALL                             R46 3 1
      238 SETTABLEKS                       R46 R45 K51 ["Inserted"]
      240 LOADK                            R48 K62 ["PrimitiveGen"]
      241 LOADK                            R49 K68 ["GenerationCancelled"]
      242 NAMECALL                         R46 R8 K63 ["getText"]
      244 CALL                             R46 3 1
      245 SETTABLEKS                       R46 R45 K68 ["GenerationCancelled"]
      247 LOADK                            R48 K62 ["PrimitiveGen"]
      248 LOADK                            R49 K60 ["GenerationFailed"]
      249 NAMECALL                         R46 R8 K63 ["getText"]
      251 CALL                             R46 3 1
      252 SETTABLEKS                       R46 R45 K60 ["GenerationFailed"]
      254 LOADK                            R48 K62 ["PrimitiveGen"]
      255 LOADK                            R49 K69 ["TakingLonger"]
      256 NAMECALL                         R46 R8 K63 ["getText"]
      258 CALL                             R46 3 1
      259 SETTABLEKS                       R46 R45 K69 ["TakingLonger"]
      261 GETTABLEKS                       R46 R3 K71 ["Enums"]
      263 GETTABLEKS                       R46 R46 K72 ["FillBehavior"]
      265 GETTABLEKS                       R47 R3 K71 ["Enums"]
      267 GETTABLEKS                       R47 R47 K73 ["InputSize"]
      269 DUPCLOSURE                       R48 K74 [PROTO_9]
      270 CAPTURE                          VAL R31
      271 CAPTURE                          VAL R28
      272 CAPTURE                          VAL R27
      273 CAPTURE                          VAL R23
      274 CAPTURE                          VAL R47
      275 CAPTURE                          VAL R3
      276 CAPTURE                          VAL R46
      277 DUPCLOSURE                       R49 K75 [PROTO_10]
      278 CAPTURE                          VAL R14
      279 CAPTURE                          VAL R29
      280 CAPTURE                          VAL R38
      281 CAPTURE                          VAL R43
      282 CAPTURE                          VAL R16
      283 CAPTURE                          VAL R11
      284 CAPTURE                          VAL R13
      285 CAPTURE                          VAL R10
      286 CAPTURE                          VAL R45
      287 CAPTURE                          VAL R35
      288 CAPTURE                          VAL R30
      289 CAPTURE                          VAL R34
      290 CAPTURE                          VAL R8
      291 CAPTURE                          VAL R31
      292 CAPTURE                          VAL R40
      293 CAPTURE                          VAL R2
      294 CAPTURE                          VAL R28
      295 CAPTURE                          VAL R15
      296 CAPTURE                          VAL R22
      297 CAPTURE                          VAL R3
      298 CAPTURE                          VAL R25
      299 CAPTURE                          VAL R27
      300 CAPTURE                          VAL R7
      301 CAPTURE                          VAL R21
      302 CAPTURE                          VAL R36
      303 CAPTURE                          VAL R32
      304 CAPTURE                          VAL R26
      305 CAPTURE                          VAL R33
      306 CAPTURE                          VAL R24
      307 CAPTURE                          VAL R48
      308 LOADK                            R52 K62 ["PrimitiveGen"]
      309 LOADK                            R53 K76 ["GenerationErrorGeneral"]
      310 NAMECALL                         R50 R8 K63 ["getText"]
      312 CALL                             R50 3 1
      313 MOVE                             R51 R17
      314 CALL                             R51 0 1
      315 LOADK                            R54 K62 ["PrimitiveGen"]
      316 LOADK                            R55 K77 ["GenerationErrorTooManyConcurrentJobs"]
      317 DUPTABLE                         R56 K80 [{"maxConcurrentJobs", "s"}]
      318 GETIMPORT                        R57 K83 [string.format]
      320 LOADK                            R58 K84 ["%d"]
      321 MOVE                             R59 R51
      322 CALL                             R57 2 1
      323 SETTABLEKS                       R57 R56 K78 ["maxConcurrentJobs"]
      325 JUMPIFNOTEQKN                    R51 K85 [1] ; [+3]
      327 LOADK                            R57 K86 [""]
      328 JUMP                             ; [+1]
      329 LOADK                            R57 K79 ["s"]
      330 SETTABLEKS                       R57 R56 K79 ["s"]
      332 NAMECALL                         R52 R8 K63 ["getText"]
      334 CALL                             R52 4 1
      335 DUPTABLE                         R53 K94 [{"General", "TooManyRequests", "TooManyConcurrentJobs", "ModerationFailed", "EmptyPrompt", "DmHealthChecking", "PluginVersionMismatch"}]
      336 SETTABLEKS                       R50 R53 K87 ["General"]
      338 LOADK                            R56 K62 ["PrimitiveGen"]
      339 LOADK                            R57 K95 ["GenerationErrorTooManyRequests"]
      340 NAMECALL                         R54 R8 K63 ["getText"]
      342 CALL                             R54 3 1
      343 SETTABLEKS                       R54 R53 K88 ["TooManyRequests"]
      345 SETTABLEKS                       R52 R53 K89 ["TooManyConcurrentJobs"]
      347 LOADK                            R56 K62 ["PrimitiveGen"]
      348 LOADK                            R57 K96 ["GenerationErrorModerationFailed"]
      349 NAMECALL                         R54 R8 K63 ["getText"]
      351 CALL                             R54 3 1
      352 SETTABLEKS                       R54 R53 K90 ["ModerationFailed"]
      354 LOADK                            R56 K62 ["PrimitiveGen"]
      355 LOADK                            R57 K97 ["GenerationErrorEmptyPrompt"]
      356 NAMECALL                         R54 R8 K63 ["getText"]
      358 CALL                             R54 3 1
      359 SETTABLEKS                       R54 R53 K91 ["EmptyPrompt"]
      361 LOADK                            R56 K62 ["PrimitiveGen"]
      362 LOADK                            R57 K98 ["GenerationErrorDmHealthChecking"]
      363 NAMECALL                         R54 R8 K63 ["getText"]
      365 CALL                             R54 3 1
      366 SETTABLEKS                       R54 R53 K92 ["DmHealthChecking"]
      368 LOADK                            R56 K62 ["PrimitiveGen"]
      369 LOADK                            R57 K99 ["GenerationErrorPluginVersionMismatch"]
      370 NAMECALL                         R54 R8 K63 ["getText"]
      372 CALL                             R54 3 1
      373 SETTABLEKS                       R54 R53 K93 ["PluginVersionMismatch"]
      375 DUPTABLE                         R54 K104 [{["CancelByUser"] = True, ["DmHealthChecking"] = True, ["EmptyPrompt"] = True, ["ImageFormat"] = True, ["PluginVersionMismatch"] = True, ["StudioLeftEditMode"] = True, ["TooManyConcurrentJobs"] = True}]
      376 DUPCLOSURE                       R55 K105 [PROTO_11]
      377 CAPTURE                          VAL R29
      378 CAPTURE                          VAL R30
      379 CAPTURE                          VAL R53
      380 CAPTURE                          VAL R50
      381 CAPTURE                          VAL R15
      382 CAPTURE                          VAL R54
      383 CAPTURE                          VAL R45
      384 CAPTURE                          VAL R41
      385 CAPTURE                          VAL R31
      386 CAPTURE                          VAL R40
      387 CAPTURE                          VAL R2
      388 CAPTURE                          VAL R14
      389 CAPTURE                          VAL R22
      390 CAPTURE                          VAL R3
      391 CAPTURE                          VAL R27
      392 CAPTURE                          VAL R28
      393 CAPTURE                          VAL R9
      394 CAPTURE                          VAL R48
      395 DUPCLOSURE                       R56 K106 [PROTO_12]
      396 CAPTURE                          VAL R39
      397 CAPTURE                          VAL R31
      398 CAPTURE                          VAL R49
      399 CAPTURE                          VAL R55
      400 CAPTURE                          VAL R2
      401 CAPTURE                          VAL R42
      402 DUPTABLE                         R57 K109 [{"toMeta", "fromMeta"}]
      403 DUPCLOSURE                       R58 K110 [PROTO_13]
      404 CAPTURE                          VAL R39
      405 SETTABLEKS                       R58 R57 K107 ["toMeta"]
      407 DUPCLOSURE                       R58 K111 [PROTO_14]
      408 CAPTURE                          VAL R39
      409 CAPTURE                          VAL R5
      410 CAPTURE                          VAL R38
      411 SETTABLEKS                       R58 R57 K108 ["fromMeta"]
      413 DUPTABLE                         R58 K117 [{["Type"] = "PrimitiveGen", ["ContentWidget"], ["Serialization"], ["Modes"], ["PreviewState"]}]
      414 GETTABLEKS                       R59 R4 K118 ["memo"]
      416 MOVE                             R60 R56
      417 CALL                             R59 1 1
      418 SETTABLEKS                       R59 R58 K113 ["ContentWidget"]
      420 SETTABLEKS                       R57 R58 K114 ["Serialization"]
      422 SETTABLEKS                       R39 R58 K115 ["Modes"]
      424 SETTABLEKS                       R38 R58 K116 ["PreviewState"]
      426 RETURN                           R58 1
