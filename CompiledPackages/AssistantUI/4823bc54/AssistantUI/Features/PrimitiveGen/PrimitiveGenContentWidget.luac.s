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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagPrimGenCarouselPreview"]
        3 JUMPIF                           R1 ; [+5]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R2 R0 K1 ["previewImages"]
        7 CALL                             R1 1 1
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["useCarouselPreviewImage"]
       12 GETTABLEKS                       R2 R0 K1 ["previewImages"]
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

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
       65 DUPTABLE                         R10 K22 [{["tag"] = "row align-x-left align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
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
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseBuilderIcons"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 GETTABLEKS                       R3 R0 K1 ["previewState"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["Generating"]
       13 JUMPIFEQ                         R3 R4 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 GETTABLEKS                       R4 R0 K1 ["previewState"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K3 ["Inserted"]
       22 JUMPIFEQ                         R4 R5 ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 GETTABLEKS                       R5 R0 K1 ["previewState"]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K4 ["Failed"]
       31 JUMPIFEQ                         R5 R6 ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 GETTABLEKS                       R6 R0 K1 ["previewState"]
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K5 ["Cancelled"]
       40 JUMPIFEQ                         R6 R7 ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R7 R0 K6 ["startTime"]
       47 MOVE                             R8 R2
       48 GETTABLEKS                       R9 R0 K7 ["generationStage"]
       50 CALL                             R6 3 1
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R8 R8 K8 ["FFlagPrimGenCarouselPreview"]
       54 JUMPIF                           R8 ; [+5]
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R8 R0 K9 ["previewImages"]
       58 CALL                             R7 1 1
       59 JUMP                             ; [+6]
       60 GETUPVAL                         R7 5
       61 GETTABLEKS                       R7 R7 K10 ["useCarouselPreviewImage"]
       63 GETTABLEKS                       R8 R0 K9 ["previewImages"]
       65 CALL                             R7 1 1
       66 GETUPVAL                         R8 6
       67 GETTABLEKS                       R9 R0 K11 ["className"]
       69 CALL                             R8 1 1
       70 LOADB                            R9 0
       71 GETTABLEKS                       R11 R0 K12 ["previewErrorMessage"]
       73 FASTCALL1                        TYPEOF R11 ; [+2]
       74 GETIMPORT                        R10 K14 [typeof]
       76 CALL                             R10 1 1
       77 JUMPIFNOTEQKS                    R10 K15 ["string"] ; [+7]
       79 GETTABLEKS                       R10 R0 K12 ["previewErrorMessage"]
       81 JUMPIFNOTEQKS                    R10 K16 [""] ; [+2]
       83 LOADB                            R9 0 +1
       84 LOADB                            R9 1
       85 MOVE                             R10 R2
       86 JUMPIF                           R10 ; [+7]
       87 GETTABLEKS                       R10 R7 K17 ["exists"]
       89 JUMPIFNOT                        R10 ; [+4]
       90 JUMPIF                           R4 ; [+2]
       91 MOVE                             R10 R5
       92 JUMPIFNOT                        R10 ; [+1]
       93 MOVE                             R10 R9
       94 LOADNIL                          R11
       95 GETTABLEKS                       R13 R0 K11 ["className"]
       97 JUMPIFNOTEQKNIL                  R13 ; [+2]
       99 LOADB                            R12 0 +1
      100 LOADB                            R12 1
      101 JUMPIFNOT                        R2 ; [+12]
      102 JUMPIF                           R12 ; [+32]
      103 LOADK                            R13 K18 ["%* %*"]
      104 GETUPVAL                         R15 7
      105 GETTABLEKS                       R15 R15 K19 ["GeneratingPrefix"]
      107 GETTABLEKS                       R16 R0 K20 ["displayName"]
      109 NAMECALL                         R13 R13 K21 ["format"]
      111 CALL                             R13 3 1
      112 MOVE                             R11 R13
      113 JUMP                             ; [+21]
      114 JUMPIFNOT                        R3 ; [+8]
      115 JUMPIFNOT                        R12 ; [+4]
      116 GETUPVAL                         R13 7
      117 GETTABLEKS                       R11 R13 K3 ["Inserted"]
      119 JUMP                             ; [+15]
      120 GETTABLEKS                       R11 R0 K20 ["displayName"]
      122 JUMP                             ; [+12]
      123 JUMPIFNOT                        R5 ; [+4]
      124 GETUPVAL                         R13 7
      125 GETTABLEKS                       R11 R13 K22 ["GenerationCancelled"]
      127 JUMP                             ; [+7]
      128 JUMPIFNOT                        R4 ; [+4]
      129 GETUPVAL                         R13 7
      130 GETTABLEKS                       R11 R13 K23 ["GenerationFailed"]
      132 JUMP                             ; [+2]
      133 GETTABLEKS                       R11 R0 K1 ["previewState"]
      135 MOVE                             R13 R11
      136 JUMPIF                           R13 ; [+2]
      137 MOVE                             R11 R13
      138 JUMP                             ; [+38]
      139 GETIMPORT                        R14 K25 [string.find]
      141 MOVE                             R15 R13
      142 LOADK                            R16 K26 ["\n"]
      143 CALL                             R14 2 1
      144 JUMPIFNOT                        R14 ; [+15]
      145 GETUPVAL                         R15 8
      146 JUMPIFNOTLE                      R14 R15 ; [+13]
      148 LOADN                            R19 1
      149 SUBK                             R20 R14 K27 [1]
      150 FASTCALL3                        STRING_SUB R13 R19 R20
      152 MOVE                             R18 R13
      153 GETIMPORT                        R17 K29 [string.sub]
      155 CALL                             R17 3 1
      156 MOVE                             R15 R17
      157 LOADK                            R16 K30 ["...(truncated)"]
      158 CONCAT                           R11 R15 R16
      159 JUMP                             ; [+17]
      160 LENGTH                           R15 R13
      161 GETUPVAL                         R16 8
      162 JUMPIFNOTLT                      R16 R15 ; [+13]
      164 LOADN                            R19 1
      165 GETUPVAL                         R20 8
      166 FASTCALL3                        STRING_SUB R13 R19 R20
      168 MOVE                             R18 R13
      169 GETIMPORT                        R17 K29 [string.sub]
      171 CALL                             R17 3 1
      172 MOVE                             R15 R17
      173 LOADK                            R16 K30 ["...(truncated)"]
      174 CONCAT                           R11 R15 R16
      175 JUMP                             ; [+1]
      176 MOVE                             R11 R13
      177 GETUPVAL                         R13 9
      178 CALL                             R13 0 1
      179 GETUPVAL                         R15 10
      180 LOADN                            R16 60
      181 JUMPIFNOTLE                      R16 R15 ; [+21]
      183 GETUPVAL                         R14 11
      184 LOADK                            R16 K31 ["PrimitiveGen"]
      185 LOADK                            R17 K32 ["ExpectedTimeMinutes"]
      186 DUPTABLE                         R18 K34 [{"minutes"}]
      187 GETIMPORT                        R19 K35 [string.format]
      189 LOADK                            R20 K36 ["%d"]
      190 GETUPVAL                         R23 10
      191 DIVK                             R22 R23 K37 [60]
      192 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      193 GETIMPORT                        R21 K40 [math.floor]
      195 CALL                             R21 1 1
      196 CALL                             R19 2 1
      197 SETTABLEKS                       R19 R18 K33 ["minutes"]
      199 NAMECALL                         R14 R14 K41 ["getText"]
      201 CALL                             R14 4 1
      202 JUMP                             ; [+14]
      203 GETUPVAL                         R14 11
      204 LOADK                            R16 K31 ["PrimitiveGen"]
      205 LOADK                            R17 K42 ["ExpectedTimeSeconds"]
      206 DUPTABLE                         R18 K44 [{"seconds"}]
      207 GETIMPORT                        R19 K35 [string.format]
      209 LOADK                            R20 K36 ["%d"]
      210 GETUPVAL                         R21 10
      211 CALL                             R19 2 1
      212 SETTABLEKS                       R19 R18 K43 ["seconds"]
      214 NAMECALL                         R14 R14 K41 ["getText"]
      216 CALL                             R14 4 1
      217 LOADNIL                          R15
      218 LOADNIL                          R16
      219 GETUPVAL                         R17 0
      220 GETTABLEKS                       R17 R17 K8 ["FFlagPrimGenCarouselPreview"]
      222 JUMPIFNOT                        R17 ; [+112]
      223 GETTABLEKS                       R17 R7 K45 ["images"]
      225 JUMPIFNOT                        R17 ; [+109]
      226 NEWTABLE                         R17 0 0
      228 GETTABLEKS                       R18 R7 K45 ["images"]
      230 LOADNIL                          R19
      231 LOADNIL                          R20
      232 FORGPREP                         R18
      233 JUMPIFEQKS                       R22 K16 [""] ; [+28]
      235 LOADK                            R24 K46 ["preload_%*"]
      236 MOVE                             R26 R21
      237 NAMECALL                         R24 R24 K21 ["format"]
      239 CALL                             R24 2 1
      240 MOVE                             R23 R24
      241 GETUPVAL                         R24 12
      242 LOADK                            R25 K47 ["ImageLabel"]
      243 DUPTABLE                         R26 K54 [{["BackgroundTransparency"] = 1, ["Image"], ["Position"], ["Size"], ["ZIndex"] = -10}]
      244 SETTABLEKS                       R22 R26 K49 ["Image"]
      246 GETIMPORT                        R27 K57 [UDim2.fromOffset]
      248 LOADN                            R28 0
      249 LOADN                            R29 0
      250 CALL                             R27 2 1
      251 SETTABLEKS                       R27 R26 K50 ["Position"]
      253 GETIMPORT                        R27 K57 [UDim2.fromOffset]
      255 LOADN                            R28 2
      256 LOADN                            R29 2
      257 CALL                             R27 2 1
      258 SETTABLEKS                       R27 R26 K51 ["Size"]
      260 CALL                             R24 2 1
      261 SETTABLE                         R24 R17 R23
      262 FORGLOOP                         R18 2 ; [-30]
      264 GETUPVAL                         R18 12
      265 LOADK                            R19 K58 ["Frame"]
      266 DUPTABLE                         R20 K61 [{["BackgroundTransparency"] = 1, ["Size"], ["ClipsDescendants"] = True}]
      267 GETIMPORT                        R21 K57 [UDim2.fromOffset]
      269 LOADN                            R22 0
      270 LOADN                            R23 0
      271 CALL                             R21 2 1
      272 SETTABLEKS                       R21 R20 K51 ["Size"]
      274 MOVE                             R21 R17
      275 CALL                             R18 3 1
      276 MOVE                             R15 R18
      277 NEWTABLE                         R18 0 0
      279 GETUPVAL                         R19 5
      280 GETTABLEKS                       R19 R19 K62 ["getBatch0Indices"]
      282 GETTABLEKS                       R22 R7 K45 ["images"]
      284 LENGTH                           R20 R22
      285 CALL                             R19 1 3
      286 FORGPREP                         R19
      287 GETTABLEKS                       R25 R7 K45 ["images"]
      289 GETTABLE                         R24 R25 R23
      290 JUMPIFNOT                        R24 ; [+29]
      291 JUMPIFEQKS                       R24 K16 [""] ; [+28]
      293 LOADK                            R26 K63 ["persist_%*"]
      294 MOVE                             R28 R23
      295 NAMECALL                         R26 R26 K21 ["format"]
      297 CALL                             R26 2 1
      298 MOVE                             R25 R26
      299 GETUPVAL                         R26 12
      300 LOADK                            R27 K47 ["ImageLabel"]
      301 DUPTABLE                         R28 K54 [{["BackgroundTransparency"] = 1, ["Image"], ["Position"], ["Size"], ["ZIndex"] = -10}]
      302 SETTABLEKS                       R24 R28 K49 ["Image"]
      304 GETIMPORT                        R29 K57 [UDim2.fromOffset]
      306 LOADN                            R30 0
      307 LOADN                            R31 0
      308 CALL                             R29 2 1
      309 SETTABLEKS                       R29 R28 K50 ["Position"]
      311 GETIMPORT                        R29 K57 [UDim2.fromOffset]
      313 LOADN                            R30 2
      314 LOADN                            R31 2
      315 CALL                             R29 2 1
      316 SETTABLEKS                       R29 R28 K51 ["Size"]
      318 CALL                             R26 2 1
      319 SETTABLE                         R26 R18 R25
      320 FORGLOOP                         R19 2 ; [-34]
      322 GETUPVAL                         R19 12
      323 LOADK                            R20 K58 ["Frame"]
      324 DUPTABLE                         R21 K61 [{["BackgroundTransparency"] = 1, ["Size"], ["ClipsDescendants"] = True}]
      325 GETIMPORT                        R22 K57 [UDim2.fromOffset]
      327 LOADN                            R23 0
      328 LOADN                            R24 0
      329 CALL                             R22 2 1
      330 SETTABLEKS                       R22 R21 K51 ["Size"]
      332 MOVE                             R22 R18
      333 CALL                             R19 3 1
      334 MOVE                             R16 R19
      335 GETUPVAL                         R17 12
      336 GETUPVAL                         R18 13
      337 GETUPVAL                         R19 14
      338 GETTABLEKS                       R19 R19 K64 ["assign"]
      340 DUPTABLE                         R20 K68 [{["canToggle"] = True, ["headerChildren"], ["persistChildren"]}]
      341 DUPTABLE                         R21 K70 [{"HeaderContent"}]
      342 GETUPVAL                         R22 12
      343 GETUPVAL                         R23 15
      344 DUPTABLE                         R24 K74 [{["tag"] = "row align-y-center gap-xsmall size-0-full auto-x", ["LayoutOrder"]}]
      345 MOVE                             R25 R13
      346 CALL                             R25 0 1
      347 SETTABLEKS                       R25 R24 K73 ["LayoutOrder"]
      349 DUPTABLE                         R25 K79 [{"StatusIcon", "Text", "ChipArea", "StageInfo"}]
      350 JUMPIFNOT                        R5 ; [+61]
      351 GETUPVAL                         R27 0
      352 GETTABLEKS                       R27 R27 K80 ["FFlagPrimGenBetterErrorType"]
      354 JUMPIFNOT                        R27 ; [+57]
      355 GETUPVAL                         R27 0
      356 GETTABLEKS                       R27 R27 K0 ["FFlagAssistantUseBuilderIcons"]
      358 JUMPIFNOT                        R27 ; [+44]
      359 GETUPVAL                         R26 12
      360 GETUPVAL                         R27 16
      361 DUPTABLE                         R28 K85 [{"name", "style", "size", "variant", "LayoutOrder"}]
      362 GETUPVAL                         R29 17
      363 GETTABLEKS                       R29 R29 K86 ["Enums"]
      365 GETTABLEKS                       R29 R29 K87 ["IconName"]
      367 GETTABLEKS                       R29 R29 K88 ["TriangleExclamation"]
      369 SETTABLEKS                       R29 R28 K81 ["name"]
      371 GETTABLEKS                       R29 R1 K89 ["Color"]
      373 GETTABLEKS                       R29 R29 K90 ["System"]
      375 GETTABLEKS                       R29 R29 K91 ["Warning"]
      377 SETTABLEKS                       R29 R28 K82 ["style"]
      379 GETUPVAL                         R29 17
      380 GETTABLEKS                       R29 R29 K86 ["Enums"]
      382 GETTABLEKS                       R29 R29 K92 ["IconSize"]
      384 GETTABLEKS                       R29 R29 K93 ["Medium"]
      386 SETTABLEKS                       R29 R28 K83 ["size"]
      388 GETUPVAL                         R29 17
      389 GETTABLEKS                       R29 R29 K86 ["Enums"]
      391 GETTABLEKS                       R29 R29 K94 ["IconVariant"]
      393 GETTABLEKS                       R29 R29 K95 ["Filled"]
      395 SETTABLEKS                       R29 R28 K84 ["variant"]
      397 MOVE                             R29 R13
      398 CALL                             R29 0 1
      399 SETTABLEKS                       R29 R28 K73 ["LayoutOrder"]
      401 CALL                             R26 2 1
      402 JUMP                             ; [+10]
      403 GETUPVAL                         R26 12
      404 GETUPVAL                         R27 18
      405 DUPTABLE                         R28 K98 [{["tag"] = "size-500-500 content-system-warning", ["Image"] = "icons/status/warning", ["LayoutOrder"]}]
      406 MOVE                             R29 R13
      407 CALL                             R29 0 1
      408 SETTABLEKS                       R29 R28 K73 ["LayoutOrder"]
      410 CALL                             R26 2 1
      411 JUMP                             ; [+1]
      412 LOADNIL                          R26
      413 SETTABLEKS                       R26 R25 K75 ["StatusIcon"]
      415 GETUPVAL                         R26 12
      416 GETUPVAL                         R27 19
      417 DUPTABLE                         R28 K100 [{["tag"] = "size-0-0 auto-xy text-label-small content-default", ["Text"], ["LayoutOrder"]}]
      418 SETTABLEKS                       R11 R28 K76 ["Text"]
      420 MOVE                             R29 R13
      421 CALL                             R29 0 1
      422 SETTABLEKS                       R29 R28 K73 ["LayoutOrder"]
      424 DUPTABLE                         R29 K102 [{"Shimmer"}]
      425 MOVE                             R30 R2
      426 JUMPIFNOT                        R30 ; [+3]
      427 GETUPVAL                         R30 12
      428 GETUPVAL                         R31 20
      429 CALL                             R30 1 1
      430 SETTABLEKS                       R30 R29 K101 ["Shimmer"]
      432 CALL                             R26 3 1
      433 SETTABLEKS                       R26 R25 K76 ["Text"]
      435 MOVE                             R26 R12
      436 JUMPIFNOT                        R26 ; [+50]
      437 GETUPVAL                         R26 12
      438 GETUPVAL                         R27 15
      439 DUPTABLE                         R28 K104 [{["tag"] = "align-x-left align-y-center auto-xy", ["LayoutOrder"]}]
      440 MOVE                             R29 R13
      441 CALL                             R29 0 1
      442 SETTABLEKS                       R29 R28 K73 ["LayoutOrder"]
      444 DUPTABLE                         R29 K106 [{"AssetLink"}]
      445 GETUPVAL                         R30 12
      446 GETUPVAL                         R31 21
      447 DUPTABLE                         R32 K113 [{["text"], ["leading"], ["onActivated"], ["isDisabled"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
      448 GETTABLEKS                       R33 R0 K20 ["displayName"]
      450 SETTABLEKS                       R33 R32 K107 ["text"]
      452 GETTABLEKS                       R33 R8 K49 ["Image"]
      454 SETTABLEKS                       R33 R32 K108 ["leading"]
      456 GETTABLEKS                       R33 R0 K114 ["onChipClicked"]
      458 JUMPIF                           R33 ; [+1]
      459 GETUPVAL                         R33 22
      460 SETTABLEKS                       R33 R32 K109 ["onActivated"]
      462 GETTABLEKS                       R34 R0 K114 ["onChipClicked"]
      464 JUMPIFEQKNIL                     R34 ; [+2]
      466 LOADB                            R33 0 +1
      467 LOADB                            R33 1
      468 SETTABLEKS                       R33 R32 K110 ["isDisabled"]
      470 GETUPVAL                         R33 17
      471 GETTABLEKS                       R33 R33 K86 ["Enums"]
      473 GETTABLEKS                       R33 R33 K115 ["ChipSize"]
      475 GETTABLEKS                       R33 R33 K116 ["Small"]
      477 SETTABLEKS                       R33 R32 K83 ["size"]
      479 MOVE                             R33 R13
      480 CALL                             R33 0 1
      481 SETTABLEKS                       R33 R32 K73 ["LayoutOrder"]
      483 CALL                             R30 2 1
      484 SETTABLEKS                       R30 R29 K105 ["AssetLink"]
      486 CALL                             R26 3 1
      487 SETTABLEKS                       R26 R25 K77 ["ChipArea"]
      489 MOVE                             R26 R10
      490 JUMPIFNOT                        R26 ; [+98]
      491 GETUPVAL                         R26 12
      492 GETUPVAL                         R27 15
      493 DUPTABLE                         R28 K118 [{["tag"] = "row align-y-center gap-xsmall size-0-0 auto-xy padding-top-xxsmall", ["LayoutOrder"]}]
      494 MOVE                             R29 R13
      495 CALL                             R29 0 1
      496 SETTABLEKS                       R29 R28 K73 ["LayoutOrder"]
      498 DUPTABLE                         R29 K123 [{"GenerationStage", "ExpectedTime", "TakingLonger", "PreviewErrorExtra"}]
      499 MOVE                             R30 R2
      500 JUMPIFNOT                        R30 ; [+20]
      501 GETTABLEKS                       R30 R0 K7 ["generationStage"]
      503 JUMPIFNOT                        R30 ; [+17]
      504 GETUPVAL                         R30 12
      505 GETUPVAL                         R31 19
      506 DUPTABLE                         R32 K125 [{["tag"] = "size-0-0 auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
      507 LOADK                            R34 K126 ["(%*)"]
      508 GETTABLEKS                       R36 R0 K7 ["generationStage"]
      510 NAMECALL                         R34 R34 K21 ["format"]
      512 CALL                             R34 2 1
      513 MOVE                             R33 R34
      514 SETTABLEKS                       R33 R32 K76 ["Text"]
      516 MOVE                             R33 R13
      517 CALL                             R33 0 1
      518 SETTABLEKS                       R33 R32 K73 ["LayoutOrder"]
      520 CALL                             R30 2 1
      521 SETTABLEKS                       R30 R29 K119 ["GenerationStage"]
      523 MOVE                             R30 R2
      524 JUMPIFNOT                        R30 ; [+18]
      525 NOT                              R30 R6
      526 JUMPIFNOT                        R30 ; [+16]
      527 GETUPVAL                         R30 12
      528 GETUPVAL                         R31 19
      529 DUPTABLE                         R32 K125 [{["tag"] = "size-0-0 auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
      530 LOADK                            R34 K127 ["%*"]
      531 MOVE                             R36 R14
      532 NAMECALL                         R34 R34 K21 ["format"]
      534 CALL                             R34 2 1
      535 MOVE                             R33 R34
      536 SETTABLEKS                       R33 R32 K76 ["Text"]
      538 MOVE                             R33 R13
      539 CALL                             R33 0 1
      540 SETTABLEKS                       R33 R32 K73 ["LayoutOrder"]
      542 CALL                             R30 2 1
      543 SETTABLEKS                       R30 R29 K120 ["ExpectedTime"]
      545 MOVE                             R30 R2
      546 JUMPIFNOT                        R30 ; [+15]
      547 MOVE                             R30 R6
      548 JUMPIFNOT                        R30 ; [+13]
      549 GETUPVAL                         R30 12
      550 GETUPVAL                         R31 19
      551 DUPTABLE                         R32 K125 [{["tag"] = "size-0-0 auto-xy text-caption-small content-muted", ["Text"], ["LayoutOrder"]}]
      552 GETUPVAL                         R33 7
      553 GETTABLEKS                       R33 R33 K121 ["TakingLonger"]
      555 SETTABLEKS                       R33 R32 K76 ["Text"]
      557 MOVE                             R33 R13
      558 CALL                             R33 0 1
      559 SETTABLEKS                       R33 R32 K73 ["LayoutOrder"]
      561 CALL                             R30 2 1
      562 SETTABLEKS                       R30 R29 K121 ["TakingLonger"]
      564 NOT                              R30 R2
      565 JUMPIFNOT                        R30 ; [+20]
      566 GETTABLEKS                       R30 R7 K17 ["exists"]
      568 JUMPIFNOT                        R30 ; [+17]
      569 JUMPIF                           R4 ; [+2]
      570 MOVE                             R30 R5
      571 JUMPIFNOT                        R30 ; [+14]
      572 MOVE                             R30 R9
      573 JUMPIFNOT                        R30 ; [+12]
      574 GETUPVAL                         R30 12
      575 GETUPVAL                         R31 19
      576 DUPTABLE                         R32 K130 [{["tag"] = "size-0-0 auto-xy text-caption-small text-wrap content-muted", ["Text"], ["TextWrapped"] = True, ["LayoutOrder"]}]
      577 GETTABLEKS                       R33 R0 K12 ["previewErrorMessage"]
      579 SETTABLEKS                       R33 R32 K76 ["Text"]
      581 MOVE                             R33 R13
      582 CALL                             R33 0 1
      583 SETTABLEKS                       R33 R32 K73 ["LayoutOrder"]
      585 CALL                             R30 2 1
      586 SETTABLEKS                       R30 R29 K122 ["PreviewErrorExtra"]
      588 CALL                             R26 3 1
      589 SETTABLEKS                       R26 R25 K78 ["StageInfo"]
      591 CALL                             R22 3 1
      592 SETTABLEKS                       R22 R21 K69 ["HeaderContent"]
      594 SETTABLEKS                       R21 R20 K66 ["headerChildren"]
      596 SETTABLEKS                       R16 R20 K67 ["persistChildren"]
      598 MOVE                             R21 R0
      599 CALL                             R19 2 1
      600 DUPTABLE                         R20 K134 [{"Preview", "PreloadTray", "RetryRow"}]
      601 JUMPIF                           R4 ; [+1]
      602 JUMPIFNOT                        R5 ; [+111]
      603 GETTABLEKS                       R22 R7 K17 ["exists"]
      605 JUMPIF                           R22 ; [+108]
      606 GETUPVAL                         R21 12
      607 GETUPVAL                         R22 15
      608 DUPTABLE                         R23 K136 [{["tag"] = "col align-x-center align-y-center gap-medium size-full-0 padding-large radius-small bg-shift-200", ["Size"], ["LayoutOrder"]}]
      609 GETIMPORT                        R24 K138 [UDim2.new]
      611 LOADN                            R25 1
      612 LOADN                            R26 0
      613 LOADN                            R27 0
      614 GETUPVAL                         R28 23
      615 CALL                             R24 4 1
      616 SETTABLEKS                       R24 R23 K51 ["Size"]
      618 MOVE                             R24 R13
      619 CALL                             R24 0 1
      620 SETTABLEKS                       R24 R23 K73 ["LayoutOrder"]
      622 DUPTABLE                         R24 K141 [{"ErrorIcon", "ErrorText"}]
      623 GETUPVAL                         R26 0
      624 GETTABLEKS                       R26 R26 K0 ["FFlagAssistantUseBuilderIcons"]
      626 JUMPIFNOT                        R26 ; [+35]
      627 GETUPVAL                         R25 12
      628 GETUPVAL                         R26 16
      629 DUPTABLE                         R27 K142 [{"name", "style", "size", "LayoutOrder"}]
      630 GETUPVAL                         R28 17
      631 GETTABLEKS                       R28 R28 K86 ["Enums"]
      633 GETTABLEKS                       R28 R28 K87 ["IconName"]
      635 GETTABLEKS                       R28 R28 K88 ["TriangleExclamation"]
      637 SETTABLEKS                       R28 R27 K81 ["name"]
      639 GETTABLEKS                       R28 R1 K89 ["Color"]
      641 GETTABLEKS                       R28 R28 K90 ["System"]
      643 GETTABLEKS                       R28 R28 K91 ["Warning"]
      645 SETTABLEKS                       R28 R27 K82 ["style"]
      647 GETUPVAL                         R28 17
      648 GETTABLEKS                       R28 R28 K86 ["Enums"]
      650 GETTABLEKS                       R28 R28 K92 ["IconSize"]
      652 GETTABLEKS                       R28 R28 K93 ["Medium"]
      654 SETTABLEKS                       R28 R27 K83 ["size"]
      656 MOVE                             R28 R13
      657 CALL                             R28 0 1
      658 SETTABLEKS                       R28 R27 K73 ["LayoutOrder"]
      660 CALL                             R25 2 1
      661 JUMP                             ; [+8]
      662 GETUPVAL                         R25 12
      663 GETUPVAL                         R26 18
      664 DUPTABLE                         R27 K144 [{["tag"] = "size-500-500 content-system-warning", ["Image"] = "icons/status/error_large", ["LayoutOrder"]}]
      665 MOVE                             R28 R13
      666 CALL                             R28 0 1
      667 SETTABLEKS                       R28 R27 K73 ["LayoutOrder"]
      669 CALL                             R25 2 1
      670 SETTABLEKS                       R25 R24 K139 ["ErrorIcon"]
      672 GETUPVAL                         R25 12
      673 GETUPVAL                         R26 19
      674 DUPTABLE                         R27 K146 [{["tag"] = "size-full-0 auto-y text-label-small text-align-x-center content-muted", ["TextWrapped"] = True, ["Text"], ["LayoutOrder"]}]
      675 JUMPIFNOT                        R5 ; [+4]
      676 GETUPVAL                         R28 7
      677 GETTABLEKS                       R28 R28 K22 ["GenerationCancelled"]
      679 JUMP                             ; [+23]
      680 GETTABLEKS                       R29 R0 K12 ["previewErrorMessage"]
      682 JUMPIFNOT                        R29 ; [+17]
      683 GETTABLEKS                       R30 R0 K12 ["previewErrorMessage"]
      685 LENGTH                           R29 R30
      686 LOADN                            R30 0
      687 JUMPIFNOTLT                      R30 R29 ; [+12]
      689 LOADK                            R29 K147 ["%*\n\n%*"]
      690 GETUPVAL                         R31 7
      691 GETTABLEKS                       R31 R31 K23 ["GenerationFailed"]
      693 GETTABLEKS                       R32 R0 K12 ["previewErrorMessage"]
      695 NAMECALL                         R29 R29 K21 ["format"]
      697 CALL                             R29 3 1
      698 MOVE                             R28 R29
      699 JUMP                             ; [+3]
      700 GETUPVAL                         R28 7
      701 GETTABLEKS                       R28 R28 K23 ["GenerationFailed"]
      703 SETTABLEKS                       R28 R27 K76 ["Text"]
      705 MOVE                             R28 R13
      706 CALL                             R28 0 1
      707 SETTABLEKS                       R28 R27 K73 ["LayoutOrder"]
      709 CALL                             R25 2 1
      710 SETTABLEKS                       R25 R24 K140 ["ErrorText"]
      712 CALL                             R21 3 1
      713 JUMP                             ; [+200]
      714 GETTABLEKS                       R22 R7 K17 ["exists"]
      716 JUMPIF                           R22 ; [+27]
      717 GETUPVAL                         R21 12
      718 GETUPVAL                         R22 24
      719 DUPTABLE                         R23 K149 [{"Size", "radius", "LayoutOrder"}]
      720 GETIMPORT                        R24 K138 [UDim2.new]
      722 LOADN                            R25 1
      723 LOADN                            R26 0
      724 LOADN                            R27 0
      725 GETUPVAL                         R28 23
      726 CALL                             R24 4 1
      727 SETTABLEKS                       R24 R23 K51 ["Size"]
      729 GETUPVAL                         R24 17
      730 GETTABLEKS                       R24 R24 K86 ["Enums"]
      732 GETTABLEKS                       R24 R24 K150 ["Radius"]
      734 GETTABLEKS                       R24 R24 K116 ["Small"]
      736 SETTABLEKS                       R24 R23 K148 ["radius"]
      738 MOVE                             R24 R13
      739 CALL                             R24 0 1
      740 SETTABLEKS                       R24 R23 K73 ["LayoutOrder"]
      742 CALL                             R21 2 1
      743 JUMP                             ; [+170]
      744 GETUPVAL                         R21 12
      745 GETUPVAL                         R22 15
      746 DUPTABLE                         R23 K152 [{["tag"] = "col size-full-0 padding-x-medium radius-small bg-shift-200", ["Size"], ["LayoutOrder"]}]
      747 GETIMPORT                        R24 K138 [UDim2.new]
      749 LOADN                            R25 1
      750 LOADN                            R26 0
      751 LOADN                            R27 0
      752 GETUPVAL                         R28 23
      753 CALL                             R24 4 1
      754 SETTABLEKS                       R24 R23 K51 ["Size"]
      756 MOVE                             R24 R13
      757 CALL                             R24 0 1
      758 SETTABLEKS                       R24 R23 K73 ["LayoutOrder"]
      760 DUPTABLE                         R24 K156 [{"TopGutter", "PreviewRow", "BottomGutter"}]
      761 GETUPVAL                         R25 12
      762 GETUPVAL                         R26 15
      763 DUPTABLE                         R27 K157 [{"Size", "LayoutOrder"}]
      764 GETIMPORT                        R28 K138 [UDim2.new]
      766 LOADN                            R29 1
      767 LOADN                            R30 0
      768 LOADN                            R31 0
      769 GETUPVAL                         R32 25
      770 CALL                             R28 4 1
      771 SETTABLEKS                       R28 R27 K51 ["Size"]
      773 MOVE                             R28 R13
      774 CALL                             R28 0 1
      775 SETTABLEKS                       R28 R27 K73 ["LayoutOrder"]
      777 CALL                             R25 2 1
      778 SETTABLEKS                       R25 R24 K153 ["TopGutter"]
      780 GETUPVAL                         R25 12
      781 GETUPVAL                         R26 15
      782 DUPTABLE                         R27 K159 [{["tag"] = "row flex-x-between align-x-center align-y-center gap-xsmall size-full-0", ["Size"], ["LayoutOrder"]}]
      783 GETIMPORT                        R28 K138 [UDim2.new]
      785 LOADN                            R29 1
      786 LOADN                            R30 0
      787 LOADN                            R31 0
      788 GETUPVAL                         R33 23
      789 LOADN                            R35 2
      790 GETUPVAL                         R36 25
      791 MUL                              R34 R35 R36
      792 SUB                              R32 R33 R34
      793 CALL                             R28 4 1
      794 SETTABLEKS                       R28 R27 K51 ["Size"]
      796 MOVE                             R28 R13
      797 CALL                             R28 0 1
      798 SETTABLEKS                       R28 R27 K73 ["LayoutOrder"]
      800 DUPTABLE                         R28 K163 [{"LastPreview", "PreviewImage", "NextPreview"}]
      801 GETUPVAL                         R29 12
      802 GETUPVAL                         R30 26
      803 DUPTABLE                         R31 K165 [{"icon", "size", "onActivated", "LayoutOrder"}]
      804 GETUPVAL                         R32 17
      805 GETTABLEKS                       R32 R32 K86 ["Enums"]
      807 GETTABLEKS                       R32 R32 K87 ["IconName"]
      809 GETTABLEKS                       R32 R32 K166 ["ChevronLargeLeft"]
      811 SETTABLEKS                       R32 R31 K164 ["icon"]
      813 GETUPVAL                         R32 17
      814 GETTABLEKS                       R32 R32 K86 ["Enums"]
      816 GETTABLEKS                       R32 R32 K167 ["InputSize"]
      818 GETTABLEKS                       R32 R32 K116 ["Small"]
      820 SETTABLEKS                       R32 R31 K83 ["size"]
      822 GETTABLEKS                       R32 R7 K168 ["decrement"]
      824 SETTABLEKS                       R32 R31 K109 ["onActivated"]
      826 MOVE                             R32 R13
      827 CALL                             R32 0 1
      828 SETTABLEKS                       R32 R31 K73 ["LayoutOrder"]
      830 CALL                             R29 2 1
      831 SETTABLEKS                       R29 R28 K160 ["LastPreview"]
      833 GETUPVAL                         R29 12
      834 GETUPVAL                         R30 18
      835 DUPTABLE                         R31 K173 [{["tag"] = "fill size-0-full radius-small", ["Image"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["ScaleType"], ["LayoutOrder"]}]
      836 GETTABLEKS                       R32 R7 K174 ["current"]
      838 SETTABLEKS                       R32 R31 K49 ["Image"]
      840 GETIMPORT                        R32 K177 [Color3.fromRGB]
      842 LOADN                            R33 0
      843 LOADN                            R34 0
      844 LOADN                            R35 0
      845 CALL                             R32 3 1
      846 SETTABLEKS                       R32 R31 K170 ["BackgroundColor3"]
      848 GETIMPORT                        R32 K180 [Enum.ScaleType.Fit]
      850 SETTABLEKS                       R32 R31 K172 ["ScaleType"]
      852 MOVE                             R32 R13
      853 CALL                             R32 0 1
      854 SETTABLEKS                       R32 R31 K73 ["LayoutOrder"]
      856 CALL                             R29 2 1
      857 SETTABLEKS                       R29 R28 K161 ["PreviewImage"]
      859 GETUPVAL                         R29 12
      860 GETUPVAL                         R30 26
      861 DUPTABLE                         R31 K165 [{"icon", "size", "onActivated", "LayoutOrder"}]
      862 GETUPVAL                         R32 17
      863 GETTABLEKS                       R32 R32 K86 ["Enums"]
      865 GETTABLEKS                       R32 R32 K87 ["IconName"]
      867 GETTABLEKS                       R32 R32 K181 ["ChevronLargeRight"]
      869 SETTABLEKS                       R32 R31 K164 ["icon"]
      871 GETUPVAL                         R32 17
      872 GETTABLEKS                       R32 R32 K86 ["Enums"]
      874 GETTABLEKS                       R32 R32 K167 ["InputSize"]
      876 GETTABLEKS                       R32 R32 K116 ["Small"]
      878 SETTABLEKS                       R32 R31 K83 ["size"]
      880 GETTABLEKS                       R32 R7 K182 ["increment"]
      882 SETTABLEKS                       R32 R31 K109 ["onActivated"]
      884 MOVE                             R32 R13
      885 CALL                             R32 0 1
      886 SETTABLEKS                       R32 R31 K73 ["LayoutOrder"]
      888 CALL                             R29 2 1
      889 SETTABLEKS                       R29 R28 K162 ["NextPreview"]
      891 CALL                             R25 3 1
      892 SETTABLEKS                       R25 R24 K154 ["PreviewRow"]
      894 GETUPVAL                         R25 12
      895 GETUPVAL                         R26 15
      896 DUPTABLE                         R27 K157 [{"Size", "LayoutOrder"}]
      897 GETIMPORT                        R28 K138 [UDim2.new]
      899 LOADN                            R29 1
      900 LOADN                            R30 0
      901 LOADN                            R31 0
      902 GETUPVAL                         R32 25
      903 CALL                             R28 4 1
      904 SETTABLEKS                       R28 R27 K51 ["Size"]
      906 MOVE                             R28 R13
      907 CALL                             R28 0 1
      908 SETTABLEKS                       R28 R27 K73 ["LayoutOrder"]
      910 CALL                             R25 2 1
      911 SETTABLEKS                       R25 R24 K155 ["BottomGutter"]
      913 CALL                             R21 3 1
      914 SETTABLEKS                       R21 R20 K131 ["Preview"]
      916 SETTABLEKS                       R15 R20 K132 ["PreloadTray"]
      918 GETTABLEKS                       R21 R0 K183 ["retryInfo"]
      920 JUMPIFNOT                        R21 ; [+9]
      921 GETUPVAL                         R21 27
      922 DUPTABLE                         R22 K185 [{"retryInfo", "nextOrder"}]
      923 GETTABLEKS                       R23 R0 K183 ["retryInfo"]
      925 SETTABLEKS                       R23 R22 K183 ["retryInfo"]
      927 SETTABLEKS                       R13 R22 K184 ["nextOrder"]
      929 CALL                             R21 1 1
      930 SETTABLEKS                       R21 R20 K133 ["RetryRow"]
      932 CALL                             R17 3 -1
      933 RETURN                           R17 -1

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
       11 GETTABLEKS                       R4 R4 K1 ["FFlagPrimGenBetterErrorType"]
       13 JUMPIFNOT                        R4 ; [+8]
       14 GETUPVAL                         R6 5
       15 GETTABLEKS                       R7 R0 K0 ["generationErrorType"]
       17 GETTABLE                         R5 R6 R7
       18 JUMPIFEQKB                       R5 TRUE ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 GETUPVAL                         R6 4
       23 GETTABLEKS                       R6 R6 K1 ["FFlagPrimGenBetterErrorType"]
       25 JUMPIFNOT                        R6 ; [+5]
       26 JUMPIFNOT                        R4 ; [+4]
       27 GETUPVAL                         R5 6
       28 GETTABLEKS                       R5 R5 K2 ["GenerationCancelled"]
       30 JUMP                             ; [+3]
       31 GETUPVAL                         R5 7
       32 GETTABLEKS                       R5 R5 K3 ["GenerationFailed"]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K1 ["FFlagPrimGenBetterErrorType"]
       37 JUMPIFNOT                        R7 ; [+8]
       38 JUMPIFNOT                        R4 ; [+7]
       39 GETTABLEKS                       R6 R1 K4 ["Color"]
       41 GETTABLEKS                       R6 R6 K5 ["System"]
       43 GETTABLEKS                       R6 R6 K6 ["Warning"]
       45 JUMP                             ; [+6]
       46 GETTABLEKS                       R6 R1 K4 ["Color"]
       48 GETTABLEKS                       R6 R6 K5 ["System"]
       50 GETTABLEKS                       R6 R6 K7 ["Alert"]
       52 GETTABLEKS                       R7 R0 K8 ["generationErrorMessage"]
       54 GETUPVAL                         R8 8
       55 GETUPVAL                         R9 9
       56 GETUPVAL                         R10 10
       57 GETTABLEKS                       R10 R10 K9 ["assign"]
       59 DUPTABLE                         R11 K13 [{["canToggle"] = True, ["headerChildren"]}]
       60 DUPTABLE                         R12 K16 [{"StatusIcon", "Text"}]
       61 GETUPVAL                         R14 4
       62 GETTABLEKS                       R14 R14 K17 ["FFlagAssistantUseBuilderIcons"]
       64 JUMPIFNOT                        R14 ; [+38]
       65 GETUPVAL                         R13 8
       66 GETUPVAL                         R14 11
       67 DUPTABLE                         R15 K23 [{"name", "style", "size", "variant", "LayoutOrder"}]
       68 GETUPVAL                         R16 12
       69 GETTABLEKS                       R16 R16 K24 ["Enums"]
       71 GETTABLEKS                       R16 R16 K25 ["IconName"]
       73 GETTABLEKS                       R16 R16 K26 ["TriangleExclamation"]
       75 SETTABLEKS                       R16 R15 K18 ["name"]
       77 SETTABLEKS                       R6 R15 K19 ["style"]
       79 GETUPVAL                         R16 12
       80 GETTABLEKS                       R16 R16 K24 ["Enums"]
       82 GETTABLEKS                       R16 R16 K27 ["IconSize"]
       84 GETTABLEKS                       R16 R16 K28 ["Small"]
       86 SETTABLEKS                       R16 R15 K20 ["size"]
       88 GETUPVAL                         R16 12
       89 GETTABLEKS                       R16 R16 K24 ["Enums"]
       91 GETTABLEKS                       R16 R16 K29 ["IconVariant"]
       93 GETTABLEKS                       R16 R16 K30 ["Filled"]
       95 SETTABLEKS                       R16 R15 K21 ["variant"]
       97 MOVE                             R16 R2
       98 CALL                             R16 0 1
       99 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      101 CALL                             R13 2 1
      102 JUMP                             ; [+19]
      103 GETUPVAL                         R13 8
      104 GETUPVAL                         R14 11
      105 DUPTABLE                         R15 K32 [{["name"] = "icons/status/warning", ["size"], ["style"], ["LayoutOrder"]}]
      106 GETUPVAL                         R16 12
      107 GETTABLEKS                       R16 R16 K24 ["Enums"]
      109 GETTABLEKS                       R16 R16 K27 ["IconSize"]
      111 GETTABLEKS                       R16 R16 K28 ["Small"]
      113 SETTABLEKS                       R16 R15 K20 ["size"]
      115 SETTABLEKS                       R6 R15 K19 ["style"]
      117 MOVE                             R16 R2
      118 CALL                             R16 0 1
      119 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      121 CALL                             R13 2 1
      122 SETTABLEKS                       R13 R12 K14 ["StatusIcon"]
      124 GETUPVAL                         R13 8
      125 GETUPVAL                         R14 13
      126 DUPTABLE                         R15 K35 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      127 SETTABLEKS                       R5 R15 K15 ["Text"]
      129 MOVE                             R16 R2
      130 CALL                             R16 0 1
      131 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R12 K15 ["Text"]
      136 SETTABLEKS                       R12 R11 K12 ["headerChildren"]
      138 MOVE                             R12 R0
      139 CALL                             R10 2 1
      140 DUPTABLE                         R11 K39 [{"TemplateMessage", "ErrorDetail", "RetryRow"}]
      141 GETUPVAL                         R12 8
      142 GETUPVAL                         R13 13
      143 DUPTABLE                         R14 K42 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left content-muted", ["Text"], ["TextWrapped"] = True, ["LayoutOrder"]}]
      144 SETTABLEKS                       R3 R14 K15 ["Text"]
      146 MOVE                             R15 R2
      147 CALL                             R15 0 1
      148 SETTABLEKS                       R15 R14 K22 ["LayoutOrder"]
      150 CALL                             R12 2 1
      151 SETTABLEKS                       R12 R11 K36 ["TemplateMessage"]
      153 MOVE                             R12 R7
      154 JUMPIFNOT                        R12 ; [+45]
      155 GETUPVAL                         R12 8
      156 GETUPVAL                         R13 14
      157 DUPTABLE                         R14 K44 [{["tag"] = "size-full-0 auto-y padding-small radius-small bg-shift-200", ["LayoutOrder"]}]
      158 MOVE                             R15 R2
      159 CALL                             R15 0 1
      160 SETTABLEKS                       R15 R14 K22 ["LayoutOrder"]
      162 DUPTABLE                         R15 K46 [{"ErrorText"}]
      163 GETUPVAL                         R16 8
      164 LOADK                            R17 K47 ["TextBox"]
      165 DUPTABLE                         R18 K60 [{["Text"], ["TextEditable"] = False, ["ClearTextOnFocus"] = False, ["TextWrapped"] = True, ["TextXAlignment"], ["TextColor3"], ["FontFace"], ["TextSize"] = 12, ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      166 SETTABLEKS                       R7 R18 K15 ["Text"]
      168 GETIMPORT                        R19 K63 [Enum.TextXAlignment.Left]
      170 SETTABLEKS                       R19 R18 K51 ["TextXAlignment"]
      172 GETIMPORT                        R19 K66 [Color3.fromRGB]
      174 LOADN                            R20 138
      175 LOADN                            R21 180
      176 LOADN                            R22 220
      177 CALL                             R19 3 1
      178 SETTABLEKS                       R19 R18 K52 ["TextColor3"]
      180 GETUPVAL                         R19 15
      181 GETTABLEKS                       R19 R19 K67 ["CODE_FONT"]
      183 SETTABLEKS                       R19 R18 K53 ["FontFace"]
      185 GETIMPORT                        R19 K70 [UDim2.fromScale]
      187 LOADN                            R20 1
      188 LOADN                            R21 0
      189 CALL                             R19 2 1
      190 SETTABLEKS                       R19 R18 K56 ["Size"]
      192 GETIMPORT                        R19 K72 [Enum.AutomaticSize.Y]
      194 SETTABLEKS                       R19 R18 K57 ["AutomaticSize"]
      196 CALL                             R16 2 1
      197 SETTABLEKS                       R16 R15 K45 ["ErrorText"]
      199 CALL                             R12 3 1
      200 SETTABLEKS                       R12 R11 K37 ["ErrorDetail"]
      202 GETTABLEKS                       R12 R0 K73 ["retryInfo"]
      204 JUMPIFNOT                        R12 ; [+9]
      205 GETUPVAL                         R12 16
      206 DUPTABLE                         R13 K75 [{"retryInfo", "nextOrder"}]
      207 GETTABLEKS                       R14 R0 K73 ["retryInfo"]
      209 SETTABLEKS                       R14 R13 K73 ["retryInfo"]
      211 SETTABLEKS                       R2 R13 K74 ["nextOrder"]
      213 CALL                             R12 1 1
      214 SETTABLEKS                       R12 R11 K38 ["RetryRow"]
      216 CALL                             R8 3 -1
      217 RETURN                           R8 -1

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
       88 GETTABLEKS                       R13 R0 K24 ["Flags"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K25 ["Features"]
       95 GETTABLEKS                       R14 R14 K26 ["Gen3dUtils"]
       97 GETTABLEKS                       R14 R14 K27 ["Gen3dConstants"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K25 ["Features"]
      104 GETTABLEKS                       R15 R15 K26 ["Gen3dUtils"]
      106 GETTABLEKS                       R15 R15 K28 ["ViewportPreviewUtils"]
      108 CALL                             R14 1 1
      109 GETTABLEKS                       R15 R3 K29 ["Chip"]
      111 GETTABLEKS                       R16 R3 K30 ["Icon"]
      113 GETTABLEKS                       R17 R3 K31 ["Button"]
      115 GETTABLEKS                       R18 R3 K32 ["IconButton"]
      117 GETTABLEKS                       R19 R3 K33 ["Image"]
      119 GETTABLEKS                       R20 R3 K34 ["Skeleton"]
      121 GETTABLEKS                       R21 R3 K35 ["Text"]
      123 GETTABLEKS                       R22 R3 K36 ["View"]
      125 GETTABLEKS                       R23 R3 K21 ["Hooks"]
      127 GETTABLEKS                       R23 R23 K37 ["useTokens"]
      129 GETTABLEKS                       R24 R5 K38 ["createNextOrder"]
      131 GETTABLEKS                       R25 R4 K39 ["createElement"]
      133 GETTABLEKS                       R26 R13 K40 ["PREVIEW_HEIGHT"]
      135 GETTABLEKS                       R27 R12 K41 ["FIntPrimGenVerticalGutter"]
      137 GETTABLEKS                       R28 R12 K42 ["FIntPrimGenLongRunThresholdSec"]
      139 GETTABLEKS                       R29 R12 K43 ["FIntPrimGenTextMaxLength"]
      141 DUPCLOSURE                       R30 K44 [PROTO_0]
      142 DUPCLOSURE                       R31 K45 [PROTO_1]
      143 CAPTURE                          VAL R29
      144 DUPTABLE                         R32 K50 [{["Generating"] = "Generating", ["Inserted"] = "Inserted", ["Failed"] = "Failed", ["Cancelled"] = "Cancelled"}]
      145 DUPTABLE                         R33 K54 [{["Preparing"] = "Preparing", ["ShowPreview"] = "ShowPreview", ["GenerationError"] = "GenerationError"}]
      146 DUPCLOSURE                       R34 K55 [PROTO_2]
      147 CAPTURE                          VAL R24
      148 CAPTURE                          VAL R25
      149 CAPTURE                          VAL R1
      150 DUPTABLE                         R35 K57 [{"Generating", "GenerationFailed"}]
      151 LOADK                            R38 K58 ["PrimitiveGen"]
      152 LOADK                            R39 K46 ["Generating"]
      153 NAMECALL                         R36 R8 K59 ["getText"]
      155 CALL                             R36 3 1
      156 SETTABLEKS                       R36 R35 K46 ["Generating"]
      158 LOADK                            R38 K58 ["PrimitiveGen"]
      159 LOADK                            R39 K56 ["GenerationFailed"]
      160 NAMECALL                         R36 R8 K59 ["getText"]
      162 CALL                             R36 3 1
      163 SETTABLEKS                       R36 R35 K56 ["GenerationFailed"]
      165 DUPCLOSURE                       R36 K60 [PROTO_3]
      166 CAPTURE                          VAL R33
      167 CAPTURE                          VAL R35
      168 CAPTURE                          VAL R24
      169 CAPTURE                          VAL R25
      170 CAPTURE                          VAL R34
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R7
      174 DUPCLOSURE                       R37 K61 [PROTO_7]
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R28
      177 DUPCLOSURE                       R38 K62 [PROTO_8]
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R14
      181 DUPTABLE                         R39 K66 [{"GeneratingPrefix", "Inserted", "GenerationCancelled", "GenerationFailed", "TakingLonger"}]
      182 LOADK                            R42 K58 ["PrimitiveGen"]
      183 LOADK                            R43 K63 ["GeneratingPrefix"]
      184 NAMECALL                         R40 R8 K59 ["getText"]
      186 CALL                             R40 3 1
      187 SETTABLEKS                       R40 R39 K63 ["GeneratingPrefix"]
      189 LOADK                            R42 K58 ["PrimitiveGen"]
      190 LOADK                            R43 K47 ["Inserted"]
      191 NAMECALL                         R40 R8 K59 ["getText"]
      193 CALL                             R40 3 1
      194 SETTABLEKS                       R40 R39 K47 ["Inserted"]
      196 LOADK                            R42 K58 ["PrimitiveGen"]
      197 LOADK                            R43 K64 ["GenerationCancelled"]
      198 NAMECALL                         R40 R8 K59 ["getText"]
      200 CALL                             R40 3 1
      201 SETTABLEKS                       R40 R39 K64 ["GenerationCancelled"]
      203 LOADK                            R42 K58 ["PrimitiveGen"]
      204 LOADK                            R43 K56 ["GenerationFailed"]
      205 NAMECALL                         R40 R8 K59 ["getText"]
      207 CALL                             R40 3 1
      208 SETTABLEKS                       R40 R39 K56 ["GenerationFailed"]
      210 LOADK                            R42 K58 ["PrimitiveGen"]
      211 LOADK                            R43 K65 ["TakingLonger"]
      212 NAMECALL                         R40 R8 K59 ["getText"]
      214 CALL                             R40 3 1
      215 SETTABLEKS                       R40 R39 K65 ["TakingLonger"]
      217 GETTABLEKS                       R40 R3 K67 ["Enums"]
      219 GETTABLEKS                       R40 R40 K68 ["FillBehavior"]
      221 GETTABLEKS                       R41 R3 K67 ["Enums"]
      223 GETTABLEKS                       R41 R41 K69 ["InputSize"]
      225 DUPCLOSURE                       R42 K70 [PROTO_9]
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R41
      231 CAPTURE                          VAL R3
      232 CAPTURE                          VAL R40
      233 DUPCLOSURE                       R43 K71 [PROTO_10]
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R23
      236 CAPTURE                          VAL R32
      237 CAPTURE                          VAL R37
      238 CAPTURE                          VAL R11
      239 CAPTURE                          VAL R14
      240 CAPTURE                          VAL R10
      241 CAPTURE                          VAL R39
      242 CAPTURE                          VAL R29
      243 CAPTURE                          VAL R24
      244 CAPTURE                          VAL R28
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R25
      247 CAPTURE                          VAL R34
      248 CAPTURE                          VAL R2
      249 CAPTURE                          VAL R22
      250 CAPTURE                          VAL R16
      251 CAPTURE                          VAL R3
      252 CAPTURE                          VAL R19
      253 CAPTURE                          VAL R21
      254 CAPTURE                          VAL R7
      255 CAPTURE                          VAL R15
      256 CAPTURE                          VAL R30
      257 CAPTURE                          VAL R26
      258 CAPTURE                          VAL R20
      259 CAPTURE                          VAL R27
      260 CAPTURE                          VAL R18
      261 CAPTURE                          VAL R42
      262 LOADK                            R46 K58 ["PrimitiveGen"]
      263 LOADK                            R47 K72 ["GenerationErrorGeneral"]
      264 NAMECALL                         R44 R8 K59 ["getText"]
      266 CALL                             R44 3 1
      267 GETTABLEKS                       R45 R12 K73 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      269 LOADK                            R48 K58 ["PrimitiveGen"]
      270 LOADK                            R49 K74 ["GenerationErrorTooManyConcurrentJobs"]
      271 DUPTABLE                         R50 K77 [{"maxConcurrentJobs", "s"}]
      272 GETIMPORT                        R51 K80 [string.format]
      274 LOADK                            R52 K81 ["%d"]
      275 MOVE                             R53 R45
      276 CALL                             R51 2 1
      277 SETTABLEKS                       R51 R50 K75 ["maxConcurrentJobs"]
      279 JUMPIFNOTEQKN                    R45 K82 [1] ; [+3]
      281 LOADK                            R51 K83 [""]
      282 JUMP                             ; [+1]
      283 LOADK                            R51 K76 ["s"]
      284 SETTABLEKS                       R51 R50 K76 ["s"]
      286 NAMECALL                         R46 R8 K59 ["getText"]
      288 CALL                             R46 4 1
      289 DUPTABLE                         R47 K91 [{"General", "TooManyRequests", "TooManyConcurrentJobs", "ModerationFailed", "EmptyPrompt", "DmHealthChecking", "PluginVersionMismatch"}]
      290 SETTABLEKS                       R44 R47 K84 ["General"]
      292 LOADK                            R50 K58 ["PrimitiveGen"]
      293 LOADK                            R51 K92 ["GenerationErrorTooManyRequests"]
      294 NAMECALL                         R48 R8 K59 ["getText"]
      296 CALL                             R48 3 1
      297 SETTABLEKS                       R48 R47 K85 ["TooManyRequests"]
      299 SETTABLEKS                       R46 R47 K86 ["TooManyConcurrentJobs"]
      301 LOADK                            R50 K58 ["PrimitiveGen"]
      302 LOADK                            R51 K93 ["GenerationErrorModerationFailed"]
      303 NAMECALL                         R48 R8 K59 ["getText"]
      305 CALL                             R48 3 1
      306 SETTABLEKS                       R48 R47 K87 ["ModerationFailed"]
      308 LOADK                            R50 K58 ["PrimitiveGen"]
      309 LOADK                            R51 K94 ["GenerationErrorEmptyPrompt"]
      310 NAMECALL                         R48 R8 K59 ["getText"]
      312 CALL                             R48 3 1
      313 SETTABLEKS                       R48 R47 K88 ["EmptyPrompt"]
      315 LOADK                            R50 K58 ["PrimitiveGen"]
      316 LOADK                            R51 K95 ["GenerationErrorDmHealthChecking"]
      317 NAMECALL                         R48 R8 K59 ["getText"]
      319 CALL                             R48 3 1
      320 SETTABLEKS                       R48 R47 K89 ["DmHealthChecking"]
      322 LOADK                            R50 K58 ["PrimitiveGen"]
      323 LOADK                            R51 K96 ["GenerationErrorPluginVersionMismatch"]
      324 NAMECALL                         R48 R8 K59 ["getText"]
      326 CALL                             R48 3 1
      327 SETTABLEKS                       R48 R47 K90 ["PluginVersionMismatch"]
      329 DUPTABLE                         R48 K101 [{["CancelByUser"] = True, ["DmHealthChecking"] = True, ["EmptyPrompt"] = True, ["ImageFormat"] = True, ["PluginVersionMismatch"] = True, ["StudioLeftEditMode"] = True, ["TooManyConcurrentJobs"] = True}]
      330 DUPCLOSURE                       R49 K102 [PROTO_11]
      331 CAPTURE                          VAL R23
      332 CAPTURE                          VAL R24
      333 CAPTURE                          VAL R47
      334 CAPTURE                          VAL R44
      335 CAPTURE                          VAL R12
      336 CAPTURE                          VAL R48
      337 CAPTURE                          VAL R39
      338 CAPTURE                          VAL R35
      339 CAPTURE                          VAL R25
      340 CAPTURE                          VAL R34
      341 CAPTURE                          VAL R2
      342 CAPTURE                          VAL R16
      343 CAPTURE                          VAL R3
      344 CAPTURE                          VAL R21
      345 CAPTURE                          VAL R22
      346 CAPTURE                          VAL R9
      347 CAPTURE                          VAL R42
      348 DUPCLOSURE                       R50 K103 [PROTO_12]
      349 CAPTURE                          VAL R33
      350 CAPTURE                          VAL R25
      351 CAPTURE                          VAL R43
      352 CAPTURE                          VAL R49
      353 CAPTURE                          VAL R2
      354 CAPTURE                          VAL R36
      355 DUPTABLE                         R51 K106 [{"toMeta", "fromMeta"}]
      356 DUPCLOSURE                       R52 K107 [PROTO_13]
      357 CAPTURE                          VAL R33
      358 SETTABLEKS                       R52 R51 K104 ["toMeta"]
      360 DUPCLOSURE                       R52 K108 [PROTO_14]
      361 CAPTURE                          VAL R33
      362 CAPTURE                          VAL R5
      363 CAPTURE                          VAL R32
      364 SETTABLEKS                       R52 R51 K105 ["fromMeta"]
      366 DUPTABLE                         R52 K114 [{["Type"] = "PrimitiveGen", ["ContentWidget"], ["Serialization"], ["Modes"], ["PreviewState"]}]
      367 GETTABLEKS                       R53 R4 K115 ["memo"]
      369 MOVE                             R54 R50
      370 CALL                             R53 1 1
      371 SETTABLEKS                       R53 R52 K110 ["ContentWidget"]
      373 SETTABLEKS                       R51 R52 K111 ["Serialization"]
      375 SETTABLEKS                       R33 R52 K112 ["Modes"]
      377 SETTABLEKS                       R32 R52 K113 ["PreviewState"]
      379 RETURN                           R52 1
