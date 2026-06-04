PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 1
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K2 [string.find]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K3 ["\n"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+15]
       12 GETUPVAL                         R2 1
       13 JUMPIFNOTLE                      R1 R2 ; [+13]
       15 LOADN                            R7 1
       16 SUBK                             R8 R1 K4 [1]
       17 FASTCALL3                        STRING_SUB R0 R7 R8
       19 MOVE                             R6 R0
       20 GETIMPORT                        R5 K6 [string.sub]
       22 CALL                             R5 3 1
       23 MOVE                             R3 R5
       24 LOADK                            R4 K7 ["...(truncated)"]
       25 CONCAT                           R2 R3 R4
       26 RETURN                           R2 1
       27 LENGTH                           R2 R0
       28 GETUPVAL                         R3 1
       29 JUMPIFNOTLT                      R3 R2 ; [+13]
       31 LOADN                            R7 1
       32 GETUPVAL                         R8 1
       33 FASTCALL3                        STRING_SUB R0 R7 R8
       35 MOVE                             R6 R0
       36 GETIMPORT                        R5 K6 [string.sub]
       38 CALL                             R5 3 1
       39 MOVE                             R3 R5
       40 LOADK                            R4 K7 ["...(truncated)"]
       41 CONCAT                           R2 R3 R4
       42 RETURN                           R2 1
       43 RETURN                           R0 1

PROTO_1:
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
       28 DUPTABLE                         R5 K9 [{"Header", "Content"}]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K7 ["Header"]
       33 DUPTABLE                         R8 K12 [{"IsDisabled", "VerticalAlignment", "LayoutOrder"}]
       34 GETTABLEKS                       R10 R0 K6 ["canToggle"]
       36 NOT                              R9 R10
       37 SETTABLEKS                       R9 R8 K10 ["IsDisabled"]
       39 LOADK                            R9 K13 ["center"]
       40 SETTABLEKS                       R9 R8 K11 ["VerticalAlignment"]
       42 MOVE                             R9 R1
       43 CALL                             R9 0 1
       44 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       46 GETTABLEKS                       R9 R0 K14 ["headerChildren"]
       48 CALL                             R6 3 1
       49 SETTABLEKS                       R6 R5 K7 ["Header"]
       51 GETTABLEKS                       R6 R0 K15 ["children"]
       53 JUMPIFNOT                        R6 ; [+15]
       54 GETUPVAL                         R6 1
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K8 ["Content"]
       58 DUPTABLE                         R8 K17 [{"tag", "LayoutOrder"}]
       59 LOADK                            R9 K18 ["col size-0-0 fill auto-y gap-small"]
       60 SETTABLEKS                       R9 R8 K16 ["tag"]
       62 MOVE                             R9 R1
       63 CALL                             R9 0 1
       64 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       66 GETTABLEKS                       R9 R0 K15 ["children"]
       68 CALL                             R6 3 1
       69 SETTABLEKS                       R6 R5 K8 ["Content"]
       71 CALL                             R2 3 -1
       72 RETURN                           R2 -1

PROTO_2:
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
       45 DUPTABLE                         R7 K11 [{"canToggle", "headerChildren"}]
       46 LOADB                            R8 0
       47 SETTABLEKS                       R8 R7 K9 ["canToggle"]
       49 DUPTABLE                         R8 K13 [{"Text"}]
       50 GETUPVAL                         R9 3
       51 GETUPVAL                         R10 6
       52 DUPTABLE                         R11 K16 [{"tag", "Text", "LayoutOrder"}]
       53 LOADK                            R12 K17 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
       54 SETTABLEKS                       R12 R11 K14 ["tag"]
       56 SETTABLEKS                       R2 R11 K12 ["Text"]
       58 MOVE                             R12 R3
       59 CALL                             R12 0 1
       60 SETTABLEKS                       R12 R11 K15 ["LayoutOrder"]
       62 DUPTABLE                         R12 K19 [{"Shimmer"}]
       63 MOVE                             R13 R1
       64 JUMPIFNOT                        R13 ; [+3]
       65 GETUPVAL                         R13 3
       66 GETUPVAL                         R14 7
       67 CALL                             R13 1 1
       68 SETTABLEKS                       R13 R12 K18 ["Shimmer"]
       70 CALL                             R9 3 1
       71 SETTABLEKS                       R9 R8 K12 ["Text"]
       73 SETTABLEKS                       R8 R7 K10 ["headerChildren"]
       75 MOVE                             R8 R0
       76 CALL                             R6 2 -1
       77 CALL                             R4 -1 -1
       78 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["previewImages"]
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_8:
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
       39 JUMPIFNOT                        R4 ; [+32]
       40 GETUPVAL                         R8 0
       41 GETUPVAL                         R9 1
       42 DUPTABLE                         R10 K11 [{"tag", "LayoutOrder"}]
       43 LOADK                            R11 K12 ["col size-full-0 auto-y"]
       44 SETTABLEKS                       R11 R10 K9 ["tag"]
       46 MOVE                             R11 R1
       47 CALL                             R11 0 1
       48 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       50 DUPTABLE                         R11 K14 [{"PromptText"}]
       51 GETUPVAL                         R12 0
       52 GETUPVAL                         R13 2
       53 DUPTABLE                         R14 K17 [{"tag", "Text", "RichText", "LayoutOrder"}]
       54 LOADK                            R15 K18 ["size-full-0 auto-y text-body-small content-default text-wrap text-align-x-left"]
       55 SETTABLEKS                       R15 R14 K9 ["tag"]
       57 SETTABLEKS                       R3 R14 K15 ["Text"]
       59 LOADB                            R15 1
       60 SETTABLEKS                       R15 R14 K16 ["RichText"]
       62 MOVE                             R15 R1
       63 CALL                             R15 0 1
       64 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K13 ["PromptText"]
       69 CALL                             R8 3 1
       70 SETTABLEKS                       R8 R7 K19 ["Prompt"]
       72 GETUPVAL                         R8 0
       73 GETUPVAL                         R9 1
       74 DUPTABLE                         R10 K11 [{"tag", "LayoutOrder"}]
       75 LOADK                            R11 K20 ["row size-full-0 auto-y gap-small align-x-left align-y-center shrink-0"]
       76 SETTABLEKS                       R11 R10 K9 ["tag"]
       78 MOVE                             R11 R1
       79 CALL                             R11 0 1
       80 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       82 DUPTABLE                         R11 K23 [{"Retry", "Dismiss"}]
       83 GETUPVAL                         R12 0
       84 GETUPVAL                         R13 3
       85 DUPTABLE                         R14 K30 [{"text", "size", "variant", "fillBehavior", "isLoading", "onActivated", "LayoutOrder"}]
       86 GETTABLEKS                       R15 R2 K31 ["onRetryText"]
       88 SETTABLEKS                       R15 R14 K24 ["text"]
       90 GETUPVAL                         R15 4
       91 GETTABLEKS                       R15 R15 K32 ["Small"]
       93 SETTABLEKS                       R15 R14 K25 ["size"]
       95 GETUPVAL                         R15 5
       96 GETTABLEKS                       R15 R15 K33 ["Enums"]
       98 GETTABLEKS                       R15 R15 K34 ["ButtonVariant"]
      100 GETTABLEKS                       R15 R15 K35 ["Emphasis"]
      102 SETTABLEKS                       R15 R14 K26 ["variant"]
      104 GETUPVAL                         R15 6
      105 GETTABLEKS                       R15 R15 K36 ["Fit"]
      107 SETTABLEKS                       R15 R14 K27 ["fillBehavior"]
      109 GETTABLEKS                       R16 R2 K37 ["isRunning"]
      111 JUMPIFEQKB                       R16 TRUE ; [+2]
      113 LOADB                            R15 0 +1
      114 LOADB                            R15 1
      115 SETTABLEKS                       R15 R14 K28 ["isLoading"]
      117 GETTABLEKS                       R15 R2 K38 ["onRetryClick"]
      119 SETTABLEKS                       R15 R14 K29 ["onActivated"]
      121 MOVE                             R15 R1
      122 CALL                             R15 0 1
      123 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K21 ["Retry"]
      128 MOVE                             R12 R6
      129 JUMPIFNOT                        R12 ; [+33]
      130 GETUPVAL                         R12 0
      131 GETUPVAL                         R13 3
      132 DUPTABLE                         R14 K39 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder"}]
      133 SETTABLEKS                       R5 R14 K24 ["text"]
      135 GETUPVAL                         R15 4
      136 GETTABLEKS                       R15 R15 K32 ["Small"]
      138 SETTABLEKS                       R15 R14 K25 ["size"]
      140 GETUPVAL                         R15 5
      141 GETTABLEKS                       R15 R15 K33 ["Enums"]
      143 GETTABLEKS                       R15 R15 K34 ["ButtonVariant"]
      145 GETTABLEKS                       R15 R15 K40 ["Standard"]
      147 SETTABLEKS                       R15 R14 K26 ["variant"]
      149 GETUPVAL                         R15 6
      150 GETTABLEKS                       R15 R15 K36 ["Fit"]
      152 SETTABLEKS                       R15 R14 K27 ["fillBehavior"]
      154 GETTABLEKS                       R15 R2 K8 ["onRetryDismissClick"]
      156 SETTABLEKS                       R15 R14 K29 ["onActivated"]
      158 MOVE                             R15 R1
      159 CALL                             R15 0 1
      160 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      162 CALL                             R12 2 1
      163 SETTABLEKS                       R12 R11 K22 ["Dismiss"]
      165 CALL                             R8 3 1
      166 SETTABLEKS                       R8 R7 K41 ["Buttons"]
      168 GETUPVAL                         R8 0
      169 GETUPVAL                         R9 1
      170 DUPTABLE                         R10 K11 [{"tag", "LayoutOrder"}]
      171 LOADK                            R11 K42 ["col size-full-0 auto-y gap-small radius-small stroke-standard stroke-default padding-small"]
      172 SETTABLEKS                       R11 R10 K9 ["tag"]
      174 MOVE                             R11 R1
      175 CALL                             R11 0 1
      176 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
      178 MOVE                             R11 R7
      179 CALL                             R8 3 -1
      180 RETURN                           R8 -1

PROTO_9:
        0 RETURN                           R0 0

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
       50 GETUPVAL                         R7 4
       51 GETTABLEKS                       R8 R0 K7 ["previewImages"]
       53 CALL                             R7 1 1
       54 GETUPVAL                         R8 5
       55 GETTABLEKS                       R9 R0 K8 ["className"]
       57 CALL                             R8 1 1
       58 LOADB                            R9 0
       59 GETTABLEKS                       R11 R0 K9 ["previewErrorMessage"]
       61 FASTCALL1                        TYPEOF R11 ; [+2]
       62 GETIMPORT                        R10 K11 [typeof]
       64 CALL                             R10 1 1
       65 JUMPIFNOTEQKS                    R10 K12 ["string"] ; [+7]
       67 GETTABLEKS                       R10 R0 K9 ["previewErrorMessage"]
       69 JUMPIFNOTEQKS                    R10 K13 [""] ; [+2]
       71 LOADB                            R9 0 +1
       72 LOADB                            R9 1
       73 MOVE                             R10 R2
       74 JUMPIF                           R10 ; [+7]
       75 GETTABLEKS                       R10 R7 K14 ["exists"]
       77 JUMPIFNOT                        R10 ; [+4]
       78 JUMPIF                           R4 ; [+2]
       79 MOVE                             R10 R5
       80 JUMPIFNOT                        R10 ; [+1]
       81 MOVE                             R10 R9
       82 LOADNIL                          R11
       83 GETTABLEKS                       R13 R0 K8 ["className"]
       85 JUMPIFNOTEQKNIL                  R13 ; [+2]
       87 LOADB                            R12 0 +1
       88 LOADB                            R12 1
       89 JUMPIFNOT                        R2 ; [+12]
       90 JUMPIF                           R12 ; [+32]
       91 LOADK                            R13 K15 ["%* %*"]
       92 GETUPVAL                         R15 6
       93 GETTABLEKS                       R15 R15 K16 ["GeneratingPrefix"]
       95 GETTABLEKS                       R16 R0 K17 ["displayName"]
       97 NAMECALL                         R13 R13 K18 ["format"]
       99 CALL                             R13 3 1
      100 MOVE                             R11 R13
      101 JUMP                             ; [+21]
      102 JUMPIFNOT                        R3 ; [+8]
      103 JUMPIFNOT                        R12 ; [+4]
      104 GETUPVAL                         R13 6
      105 GETTABLEKS                       R11 R13 K2 ["Inserted"]
      107 JUMP                             ; [+15]
      108 GETTABLEKS                       R11 R0 K17 ["displayName"]
      110 JUMP                             ; [+12]
      111 JUMPIFNOT                        R5 ; [+4]
      112 GETUPVAL                         R13 6
      113 GETTABLEKS                       R11 R13 K19 ["GenerationCancelled"]
      115 JUMP                             ; [+7]
      116 JUMPIFNOT                        R4 ; [+4]
      117 GETUPVAL                         R13 6
      118 GETTABLEKS                       R11 R13 K20 ["GenerationFailed"]
      120 JUMP                             ; [+2]
      121 GETTABLEKS                       R11 R0 K0 ["previewState"]
      123 GETUPVAL                         R13 7
      124 MOVE                             R14 R11
      125 CALL                             R13 1 1
      126 MOVE                             R11 R13
      127 GETUPVAL                         R13 8
      128 CALL                             R13 0 1
      129 GETUPVAL                         R15 9
      130 LOADN                            R16 60
      131 JUMPIFNOTLE                      R16 R15 ; [+21]
      133 GETUPVAL                         R14 10
      134 LOADK                            R16 K21 ["PrimitiveGen"]
      135 LOADK                            R17 K22 ["ExpectedTimeMinutes"]
      136 DUPTABLE                         R18 K24 [{"minutes"}]
      137 GETIMPORT                        R19 K25 [string.format]
      139 LOADK                            R20 K26 ["%d"]
      140 GETUPVAL                         R23 9
      141 DIVK                             R22 R23 K27 [60]
      142 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      143 GETIMPORT                        R21 K30 [math.floor]
      145 CALL                             R21 1 1
      146 CALL                             R19 2 1
      147 SETTABLEKS                       R19 R18 K23 ["minutes"]
      149 NAMECALL                         R14 R14 K31 ["getText"]
      151 CALL                             R14 4 1
      152 JUMP                             ; [+14]
      153 GETUPVAL                         R14 10
      154 LOADK                            R16 K21 ["PrimitiveGen"]
      155 LOADK                            R17 K32 ["ExpectedTimeSeconds"]
      156 DUPTABLE                         R18 K34 [{"seconds"}]
      157 GETIMPORT                        R19 K25 [string.format]
      159 LOADK                            R20 K26 ["%d"]
      160 GETUPVAL                         R21 9
      161 CALL                             R19 2 1
      162 SETTABLEKS                       R19 R18 K33 ["seconds"]
      164 NAMECALL                         R14 R14 K31 ["getText"]
      166 CALL                             R14 4 1
      167 GETUPVAL                         R15 11
      168 GETUPVAL                         R16 12
      169 GETUPVAL                         R17 13
      170 GETTABLEKS                       R17 R17 K35 ["assign"]
      172 DUPTABLE                         R18 K38 [{"canToggle", "headerChildren"}]
      173 LOADB                            R19 1
      174 SETTABLEKS                       R19 R18 K36 ["canToggle"]
      176 DUPTABLE                         R19 K40 [{"HeaderContent"}]
      177 GETUPVAL                         R20 11
      178 GETUPVAL                         R21 14
      179 DUPTABLE                         R22 K43 [{"tag", "LayoutOrder"}]
      180 LOADK                            R23 K44 ["row size-0-full auto-x align-y-center gap-xsmall"]
      181 SETTABLEKS                       R23 R22 K41 ["tag"]
      183 MOVE                             R23 R13
      184 CALL                             R23 0 1
      185 SETTABLEKS                       R23 R22 K42 ["LayoutOrder"]
      187 DUPTABLE                         R23 K48 [{"Text", "ChipArea", "StageInfo"}]
      188 GETUPVAL                         R24 11
      189 GETUPVAL                         R25 15
      190 DUPTABLE                         R26 K49 [{"tag", "Text", "LayoutOrder"}]
      191 LOADK                            R27 K50 ["size-0-0 auto-xy text-label-small content-default"]
      192 SETTABLEKS                       R27 R26 K41 ["tag"]
      194 SETTABLEKS                       R11 R26 K45 ["Text"]
      196 MOVE                             R27 R13
      197 CALL                             R27 0 1
      198 SETTABLEKS                       R27 R26 K42 ["LayoutOrder"]
      200 DUPTABLE                         R27 K52 [{"Shimmer"}]
      201 MOVE                             R28 R2
      202 JUMPIFNOT                        R28 ; [+3]
      203 GETUPVAL                         R28 11
      204 GETUPVAL                         R29 16
      205 CALL                             R28 1 1
      206 SETTABLEKS                       R28 R27 K51 ["Shimmer"]
      208 CALL                             R24 3 1
      209 SETTABLEKS                       R24 R23 K45 ["Text"]
      211 MOVE                             R24 R12
      212 JUMPIFNOT                        R24 ; [+56]
      213 GETUPVAL                         R24 11
      214 GETUPVAL                         R25 14
      215 DUPTABLE                         R26 K43 [{"tag", "LayoutOrder"}]
      216 LOADK                            R27 K53 ["auto-xy align-x-left align-y-center"]
      217 SETTABLEKS                       R27 R26 K41 ["tag"]
      219 MOVE                             R27 R13
      220 CALL                             R27 0 1
      221 SETTABLEKS                       R27 R26 K42 ["LayoutOrder"]
      223 DUPTABLE                         R27 K55 [{"AssetLink"}]
      224 GETUPVAL                         R28 11
      225 GETUPVAL                         R29 17
      226 DUPTABLE                         R30 K62 [{"text", "leading", "onActivated", "isDisabled", "isChecked", "size", "LayoutOrder"}]
      227 GETTABLEKS                       R31 R0 K17 ["displayName"]
      229 SETTABLEKS                       R31 R30 K56 ["text"]
      231 GETTABLEKS                       R31 R8 K63 ["Image"]
      233 SETTABLEKS                       R31 R30 K57 ["leading"]
      235 GETTABLEKS                       R31 R0 K64 ["onChipClicked"]
      237 JUMPIF                           R31 ; [+1]
      238 DUPCLOSURE                       R31 K65 [PROTO_9]
      239 SETTABLEKS                       R31 R30 K58 ["onActivated"]
      241 GETTABLEKS                       R32 R0 K64 ["onChipClicked"]
      243 JUMPIFEQKNIL                     R32 ; [+2]
      245 LOADB                            R31 0 +1
      246 LOADB                            R31 1
      247 SETTABLEKS                       R31 R30 K59 ["isDisabled"]
      249 LOADB                            R31 0
      250 SETTABLEKS                       R31 R30 K60 ["isChecked"]
      252 GETUPVAL                         R31 18
      253 GETTABLEKS                       R31 R31 K66 ["Enums"]
      255 GETTABLEKS                       R31 R31 K67 ["ChipSize"]
      257 GETTABLEKS                       R31 R31 K68 ["Small"]
      259 SETTABLEKS                       R31 R30 K61 ["size"]
      261 MOVE                             R31 R13
      262 CALL                             R31 0 1
      263 SETTABLEKS                       R31 R30 K42 ["LayoutOrder"]
      265 CALL                             R28 2 1
      266 SETTABLEKS                       R28 R27 K54 ["AssetLink"]
      268 CALL                             R24 3 1
      269 SETTABLEKS                       R24 R23 K46 ["ChipArea"]
      271 MOVE                             R24 R10
      272 JUMPIFNOT                        R24 ; [+116]
      273 GETUPVAL                         R24 11
      274 GETUPVAL                         R25 14
      275 DUPTABLE                         R26 K43 [{"tag", "LayoutOrder"}]
      276 LOADK                            R27 K69 ["row size-0-0 auto-xy align-y-center gap-xsmall padding-top-xxsmall"]
      277 SETTABLEKS                       R27 R26 K41 ["tag"]
      279 MOVE                             R27 R13
      280 CALL                             R27 0 1
      281 SETTABLEKS                       R27 R26 K42 ["LayoutOrder"]
      283 DUPTABLE                         R27 K74 [{"GenerationStage", "ExpectedTime", "TakingLonger", "PreviewErrorExtra"}]
      284 MOVE                             R28 R2
      285 JUMPIFNOT                        R28 ; [+23]
      286 GETTABLEKS                       R28 R0 K6 ["generationStage"]
      288 JUMPIFNOT                        R28 ; [+20]
      289 GETUPVAL                         R28 11
      290 GETUPVAL                         R29 15
      291 DUPTABLE                         R30 K49 [{"tag", "Text", "LayoutOrder"}]
      292 LOADK                            R31 K75 ["size-0-0 auto-xy text-caption-small content-muted"]
      293 SETTABLEKS                       R31 R30 K41 ["tag"]
      295 LOADK                            R32 K76 ["(%*)"]
      296 GETTABLEKS                       R34 R0 K6 ["generationStage"]
      298 NAMECALL                         R32 R32 K18 ["format"]
      300 CALL                             R32 2 1
      301 MOVE                             R31 R32
      302 SETTABLEKS                       R31 R30 K45 ["Text"]
      304 MOVE                             R31 R13
      305 CALL                             R31 0 1
      306 SETTABLEKS                       R31 R30 K42 ["LayoutOrder"]
      308 CALL                             R28 2 1
      309 SETTABLEKS                       R28 R27 K70 ["GenerationStage"]
      311 MOVE                             R28 R2
      312 JUMPIFNOT                        R28 ; [+21]
      313 NOT                              R28 R6
      314 JUMPIFNOT                        R28 ; [+19]
      315 GETUPVAL                         R28 11
      316 GETUPVAL                         R29 15
      317 DUPTABLE                         R30 K49 [{"tag", "Text", "LayoutOrder"}]
      318 LOADK                            R31 K75 ["size-0-0 auto-xy text-caption-small content-muted"]
      319 SETTABLEKS                       R31 R30 K41 ["tag"]
      321 LOADK                            R32 K77 ["%*"]
      322 MOVE                             R34 R14
      323 NAMECALL                         R32 R32 K18 ["format"]
      325 CALL                             R32 2 1
      326 MOVE                             R31 R32
      327 SETTABLEKS                       R31 R30 K45 ["Text"]
      329 MOVE                             R31 R13
      330 CALL                             R31 0 1
      331 SETTABLEKS                       R31 R30 K42 ["LayoutOrder"]
      333 CALL                             R28 2 1
      334 SETTABLEKS                       R28 R27 K71 ["ExpectedTime"]
      336 MOVE                             R28 R2
      337 JUMPIFNOT                        R28 ; [+18]
      338 MOVE                             R28 R6
      339 JUMPIFNOT                        R28 ; [+16]
      340 GETUPVAL                         R28 11
      341 GETUPVAL                         R29 15
      342 DUPTABLE                         R30 K49 [{"tag", "Text", "LayoutOrder"}]
      343 LOADK                            R31 K75 ["size-0-0 auto-xy text-caption-small content-muted"]
      344 SETTABLEKS                       R31 R30 K41 ["tag"]
      346 GETUPVAL                         R31 6
      347 GETTABLEKS                       R31 R31 K72 ["TakingLonger"]
      349 SETTABLEKS                       R31 R30 K45 ["Text"]
      351 MOVE                             R31 R13
      352 CALL                             R31 0 1
      353 SETTABLEKS                       R31 R30 K42 ["LayoutOrder"]
      355 CALL                             R28 2 1
      356 SETTABLEKS                       R28 R27 K72 ["TakingLonger"]
      358 NOT                              R28 R2
      359 JUMPIFNOT                        R28 ; [+26]
      360 GETTABLEKS                       R28 R7 K14 ["exists"]
      362 JUMPIFNOT                        R28 ; [+23]
      363 JUMPIF                           R4 ; [+2]
      364 MOVE                             R28 R5
      365 JUMPIFNOT                        R28 ; [+20]
      366 MOVE                             R28 R9
      367 JUMPIFNOT                        R28 ; [+18]
      368 GETUPVAL                         R28 11
      369 GETUPVAL                         R29 15
      370 DUPTABLE                         R30 K79 [{"tag", "Text", "TextWrapped", "LayoutOrder"}]
      371 LOADK                            R31 K80 ["size-0-0 auto-xy text-caption-small content-muted text-wrap"]
      372 SETTABLEKS                       R31 R30 K41 ["tag"]
      374 GETTABLEKS                       R31 R0 K9 ["previewErrorMessage"]
      376 SETTABLEKS                       R31 R30 K45 ["Text"]
      378 LOADB                            R31 1
      379 SETTABLEKS                       R31 R30 K78 ["TextWrapped"]
      381 MOVE                             R31 R13
      382 CALL                             R31 0 1
      383 SETTABLEKS                       R31 R30 K42 ["LayoutOrder"]
      385 CALL                             R28 2 1
      386 SETTABLEKS                       R28 R27 K73 ["PreviewErrorExtra"]
      388 CALL                             R24 3 1
      389 SETTABLEKS                       R24 R23 K47 ["StageInfo"]
      391 CALL                             R20 3 1
      392 SETTABLEKS                       R20 R19 K39 ["HeaderContent"]
      394 SETTABLEKS                       R19 R18 K37 ["headerChildren"]
      396 MOVE                             R19 R0
      397 CALL                             R17 2 1
      398 DUPTABLE                         R18 K83 [{"Preview", "RetryRow"}]
      399 JUMPIF                           R4 ; [+1]
      400 JUMPIFNOT                        R5 ; [+125]
      401 GETTABLEKS                       R20 R7 K14 ["exists"]
      403 JUMPIF                           R20 ; [+122]
      404 GETUPVAL                         R19 11
      405 GETUPVAL                         R20 14
      406 DUPTABLE                         R21 K85 [{"tag", "Size", "LayoutOrder"}]
      407 LOADK                            R22 K86 ["col size-full-0 radius-small align-x-center align-y-center bg-shift-200 gap-medium padding-large"]
      408 SETTABLEKS                       R22 R21 K41 ["tag"]
      410 GETIMPORT                        R22 K89 [UDim2.new]
      412 LOADN                            R23 1
      413 LOADN                            R24 0
      414 LOADN                            R25 0
      415 GETUPVAL                         R26 19
      416 CALL                             R22 4 1
      417 SETTABLEKS                       R22 R21 K84 ["Size"]
      419 MOVE                             R22 R13
      420 CALL                             R22 0 1
      421 SETTABLEKS                       R22 R21 K42 ["LayoutOrder"]
      423 DUPTABLE                         R22 K92 [{"ErrorIcon", "ErrorText"}]
      424 GETUPVAL                         R24 0
      425 CALL                             R24 0 1
      426 JUMPIFNOT                        R24 ; [+35]
      427 GETUPVAL                         R23 11
      428 GETUPVAL                         R24 20
      429 DUPTABLE                         R25 K95 [{"name", "style", "size", "LayoutOrder"}]
      430 GETUPVAL                         R26 18
      431 GETTABLEKS                       R26 R26 K66 ["Enums"]
      433 GETTABLEKS                       R26 R26 K96 ["IconName"]
      435 GETTABLEKS                       R26 R26 K97 ["TriangleExclamation"]
      437 SETTABLEKS                       R26 R25 K93 ["name"]
      439 GETTABLEKS                       R26 R1 K98 ["Color"]
      441 GETTABLEKS                       R26 R26 K99 ["System"]
      443 GETTABLEKS                       R26 R26 K100 ["Warning"]
      445 SETTABLEKS                       R26 R25 K94 ["style"]
      447 GETUPVAL                         R26 18
      448 GETTABLEKS                       R26 R26 K66 ["Enums"]
      450 GETTABLEKS                       R26 R26 K101 ["IconSize"]
      452 GETTABLEKS                       R26 R26 K102 ["Medium"]
      454 SETTABLEKS                       R26 R25 K61 ["size"]
      456 MOVE                             R26 R13
      457 CALL                             R26 0 1
      458 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      460 CALL                             R23 2 1
      461 JUMP                             ; [+14]
      462 GETUPVAL                         R23 11
      463 GETUPVAL                         R24 21
      464 DUPTABLE                         R25 K103 [{"tag", "Image", "LayoutOrder"}]
      465 LOADK                            R26 K104 ["size-500-500 content-system-warning"]
      466 SETTABLEKS                       R26 R25 K41 ["tag"]
      468 LOADK                            R26 K105 ["icons/status/error_large"]
      469 SETTABLEKS                       R26 R25 K63 ["Image"]
      471 MOVE                             R26 R13
      472 CALL                             R26 0 1
      473 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      475 CALL                             R23 2 1
      476 SETTABLEKS                       R23 R22 K90 ["ErrorIcon"]
      478 GETUPVAL                         R23 11
      479 GETUPVAL                         R24 15
      480 DUPTABLE                         R25 K106 [{"tag", "TextWrapped", "Text", "LayoutOrder"}]
      481 LOADK                            R26 K107 ["size-full-0 auto-y text-label-small content-muted text-align-x-center"]
      482 SETTABLEKS                       R26 R25 K41 ["tag"]
      484 LOADB                            R26 1
      485 SETTABLEKS                       R26 R25 K78 ["TextWrapped"]
      487 JUMPIFNOT                        R5 ; [+4]
      488 GETUPVAL                         R26 6
      489 GETTABLEKS                       R26 R26 K19 ["GenerationCancelled"]
      491 JUMP                             ; [+23]
      492 GETTABLEKS                       R27 R0 K9 ["previewErrorMessage"]
      494 JUMPIFNOT                        R27 ; [+17]
      495 GETTABLEKS                       R28 R0 K9 ["previewErrorMessage"]
      497 LENGTH                           R27 R28
      498 LOADN                            R28 0
      499 JUMPIFNOTLT                      R28 R27 ; [+12]
      501 LOADK                            R27 K108 ["%*\n\n%*"]
      502 GETUPVAL                         R29 6
      503 GETTABLEKS                       R29 R29 K20 ["GenerationFailed"]
      505 GETTABLEKS                       R30 R0 K9 ["previewErrorMessage"]
      507 NAMECALL                         R27 R27 K18 ["format"]
      509 CALL                             R27 3 1
      510 MOVE                             R26 R27
      511 JUMP                             ; [+3]
      512 GETUPVAL                         R26 6
      513 GETTABLEKS                       R26 R26 K20 ["GenerationFailed"]
      515 SETTABLEKS                       R26 R25 K45 ["Text"]
      517 MOVE                             R26 R13
      518 CALL                             R26 0 1
      519 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      521 CALL                             R23 2 1
      522 SETTABLEKS                       R23 R22 K91 ["ErrorText"]
      524 CALL                             R19 3 1
      525 JUMP                             ; [+212]
      526 GETTABLEKS                       R20 R7 K14 ["exists"]
      528 JUMPIF                           R20 ; [+27]
      529 GETUPVAL                         R19 11
      530 GETUPVAL                         R20 22
      531 DUPTABLE                         R21 K110 [{"Size", "radius", "LayoutOrder"}]
      532 GETIMPORT                        R22 K89 [UDim2.new]
      534 LOADN                            R23 1
      535 LOADN                            R24 0
      536 LOADN                            R25 0
      537 GETUPVAL                         R26 19
      538 CALL                             R22 4 1
      539 SETTABLEKS                       R22 R21 K84 ["Size"]
      541 GETUPVAL                         R22 18
      542 GETTABLEKS                       R22 R22 K66 ["Enums"]
      544 GETTABLEKS                       R22 R22 K111 ["Radius"]
      546 GETTABLEKS                       R22 R22 K68 ["Small"]
      548 SETTABLEKS                       R22 R21 K109 ["radius"]
      550 MOVE                             R22 R13
      551 CALL                             R22 0 1
      552 SETTABLEKS                       R22 R21 K42 ["LayoutOrder"]
      554 CALL                             R19 2 1
      555 JUMP                             ; [+182]
      556 GETUPVAL                         R19 11
      557 GETUPVAL                         R20 14
      558 DUPTABLE                         R21 K85 [{"tag", "Size", "LayoutOrder"}]
      559 LOADK                            R22 K112 ["col size-full-0 radius-small bg-shift-200 padding-x-medium"]
      560 SETTABLEKS                       R22 R21 K41 ["tag"]
      562 GETIMPORT                        R22 K89 [UDim2.new]
      564 LOADN                            R23 1
      565 LOADN                            R24 0
      566 LOADN                            R25 0
      567 GETUPVAL                         R26 19
      568 CALL                             R22 4 1
      569 SETTABLEKS                       R22 R21 K84 ["Size"]
      571 MOVE                             R22 R13
      572 CALL                             R22 0 1
      573 SETTABLEKS                       R22 R21 K42 ["LayoutOrder"]
      575 DUPTABLE                         R22 K116 [{"TopGutter", "PreviewRow", "BottomGutter"}]
      576 GETUPVAL                         R23 11
      577 GETUPVAL                         R24 14
      578 DUPTABLE                         R25 K117 [{"Size", "LayoutOrder"}]
      579 GETIMPORT                        R26 K89 [UDim2.new]
      581 LOADN                            R27 1
      582 LOADN                            R28 0
      583 LOADN                            R29 0
      584 GETUPVAL                         R30 23
      585 CALL                             R26 4 1
      586 SETTABLEKS                       R26 R25 K84 ["Size"]
      588 MOVE                             R26 R13
      589 CALL                             R26 0 1
      590 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      592 CALL                             R23 2 1
      593 SETTABLEKS                       R23 R22 K113 ["TopGutter"]
      595 GETUPVAL                         R23 11
      596 GETUPVAL                         R24 14
      597 DUPTABLE                         R25 K85 [{"tag", "Size", "LayoutOrder"}]
      598 LOADK                            R26 K118 ["row size-full-0 align-x-center align-y-center flex-x-between gap-xsmall"]
      599 SETTABLEKS                       R26 R25 K41 ["tag"]
      601 GETIMPORT                        R26 K89 [UDim2.new]
      603 LOADN                            R27 1
      604 LOADN                            R28 0
      605 LOADN                            R29 0
      606 GETUPVAL                         R31 19
      607 LOADN                            R33 2
      608 GETUPVAL                         R34 23
      609 MUL                              R32 R33 R34
      610 SUB                              R30 R31 R32
      611 CALL                             R26 4 1
      612 SETTABLEKS                       R26 R25 K84 ["Size"]
      614 MOVE                             R26 R13
      615 CALL                             R26 0 1
      616 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      618 DUPTABLE                         R26 K122 [{"LastPreview", "PreviewImage", "NextPreview"}]
      619 GETUPVAL                         R27 11
      620 GETUPVAL                         R28 24
      621 DUPTABLE                         R29 K124 [{"icon", "size", "onActivated", "LayoutOrder"}]
      622 GETUPVAL                         R30 18
      623 GETTABLEKS                       R30 R30 K66 ["Enums"]
      625 GETTABLEKS                       R30 R30 K96 ["IconName"]
      627 GETTABLEKS                       R30 R30 K125 ["ChevronLargeLeft"]
      629 SETTABLEKS                       R30 R29 K123 ["icon"]
      631 GETUPVAL                         R30 18
      632 GETTABLEKS                       R30 R30 K66 ["Enums"]
      634 GETTABLEKS                       R30 R30 K126 ["InputSize"]
      636 GETTABLEKS                       R30 R30 K68 ["Small"]
      638 SETTABLEKS                       R30 R29 K61 ["size"]
      640 GETTABLEKS                       R30 R7 K127 ["decrement"]
      642 SETTABLEKS                       R30 R29 K58 ["onActivated"]
      644 MOVE                             R30 R13
      645 CALL                             R30 0 1
      646 SETTABLEKS                       R30 R29 K42 ["LayoutOrder"]
      648 CALL                             R27 2 1
      649 SETTABLEKS                       R27 R26 K119 ["LastPreview"]
      651 GETUPVAL                         R27 11
      652 GETUPVAL                         R28 21
      653 DUPTABLE                         R29 K131 [{"tag", "Image", "BackgroundColor3", "BackgroundTransparency", "ScaleType", "LayoutOrder"}]
      654 LOADK                            R30 K132 ["size-0-full fill radius-small"]
      655 SETTABLEKS                       R30 R29 K41 ["tag"]
      657 GETTABLEKS                       R30 R7 K133 ["current"]
      659 SETTABLEKS                       R30 R29 K63 ["Image"]
      661 GETIMPORT                        R30 K136 [Color3.fromRGB]
      663 LOADN                            R31 0
      664 LOADN                            R32 0
      665 LOADN                            R33 0
      666 CALL                             R30 3 1
      667 SETTABLEKS                       R30 R29 K128 ["BackgroundColor3"]
      669 LOADN                            R30 0
      670 SETTABLEKS                       R30 R29 K129 ["BackgroundTransparency"]
      672 GETIMPORT                        R30 K139 [Enum.ScaleType.Fit]
      674 SETTABLEKS                       R30 R29 K130 ["ScaleType"]
      676 MOVE                             R30 R13
      677 CALL                             R30 0 1
      678 SETTABLEKS                       R30 R29 K42 ["LayoutOrder"]
      680 CALL                             R27 2 1
      681 SETTABLEKS                       R27 R26 K120 ["PreviewImage"]
      683 GETUPVAL                         R27 11
      684 GETUPVAL                         R28 24
      685 DUPTABLE                         R29 K124 [{"icon", "size", "onActivated", "LayoutOrder"}]
      686 GETUPVAL                         R30 18
      687 GETTABLEKS                       R30 R30 K66 ["Enums"]
      689 GETTABLEKS                       R30 R30 K96 ["IconName"]
      691 GETTABLEKS                       R30 R30 K140 ["ChevronLargeRight"]
      693 SETTABLEKS                       R30 R29 K123 ["icon"]
      695 GETUPVAL                         R30 18
      696 GETTABLEKS                       R30 R30 K66 ["Enums"]
      698 GETTABLEKS                       R30 R30 K126 ["InputSize"]
      700 GETTABLEKS                       R30 R30 K68 ["Small"]
      702 SETTABLEKS                       R30 R29 K61 ["size"]
      704 GETTABLEKS                       R30 R7 K141 ["increment"]
      706 SETTABLEKS                       R30 R29 K58 ["onActivated"]
      708 MOVE                             R30 R13
      709 CALL                             R30 0 1
      710 SETTABLEKS                       R30 R29 K42 ["LayoutOrder"]
      712 CALL                             R27 2 1
      713 SETTABLEKS                       R27 R26 K121 ["NextPreview"]
      715 CALL                             R23 3 1
      716 SETTABLEKS                       R23 R22 K114 ["PreviewRow"]
      718 GETUPVAL                         R23 11
      719 GETUPVAL                         R24 14
      720 DUPTABLE                         R25 K117 [{"Size", "LayoutOrder"}]
      721 GETIMPORT                        R26 K89 [UDim2.new]
      723 LOADN                            R27 1
      724 LOADN                            R28 0
      725 LOADN                            R29 0
      726 GETUPVAL                         R30 23
      727 CALL                             R26 4 1
      728 SETTABLEKS                       R26 R25 K84 ["Size"]
      730 MOVE                             R26 R13
      731 CALL                             R26 0 1
      732 SETTABLEKS                       R26 R25 K42 ["LayoutOrder"]
      734 CALL                             R23 2 1
      735 SETTABLEKS                       R23 R22 K115 ["BottomGutter"]
      737 CALL                             R19 3 1
      738 SETTABLEKS                       R19 R18 K81 ["Preview"]
      740 GETTABLEKS                       R19 R0 K142 ["retryInfo"]
      742 JUMPIFNOT                        R19 ; [+9]
      743 GETUPVAL                         R19 25
      744 DUPTABLE                         R20 K144 [{"retryInfo", "nextOrder"}]
      745 GETTABLEKS                       R21 R0 K142 ["retryInfo"]
      747 SETTABLEKS                       R21 R20 K142 ["retryInfo"]
      749 SETTABLEKS                       R13 R20 K143 ["nextOrder"]
      751 CALL                             R19 1 1
      752 SETTABLEKS                       R19 R18 K82 ["RetryRow"]
      754 CALL                             R15 3 -1
      755 RETURN                           R15 -1

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
       10 GETTABLEKS                       R4 R0 K1 ["generationErrorMessage"]
       12 GETUPVAL                         R5 4
       13 GETUPVAL                         R6 5
       14 GETUPVAL                         R7 6
       15 GETTABLEKS                       R7 R7 K2 ["assign"]
       17 DUPTABLE                         R8 K5 [{"canToggle", "headerChildren"}]
       18 LOADB                            R9 1
       19 SETTABLEKS                       R9 R8 K3 ["canToggle"]
       21 DUPTABLE                         R9 K8 [{"StatusIcon", "Text"}]
       22 GETUPVAL                         R11 7
       23 CALL                             R11 0 1
       24 JUMPIFNOT                        R11 ; [+44]
       25 GETUPVAL                         R10 4
       26 GETUPVAL                         R11 8
       27 DUPTABLE                         R12 K14 [{"name", "style", "size", "variant", "LayoutOrder"}]
       28 GETUPVAL                         R13 9
       29 GETTABLEKS                       R13 R13 K15 ["Enums"]
       31 GETTABLEKS                       R13 R13 K16 ["IconName"]
       33 GETTABLEKS                       R13 R13 K17 ["TriangleExclamation"]
       35 SETTABLEKS                       R13 R12 K9 ["name"]
       37 GETTABLEKS                       R13 R1 K18 ["Color"]
       39 GETTABLEKS                       R13 R13 K19 ["System"]
       41 GETTABLEKS                       R13 R13 K20 ["Alert"]
       43 SETTABLEKS                       R13 R12 K10 ["style"]
       45 GETUPVAL                         R13 9
       46 GETTABLEKS                       R13 R13 K15 ["Enums"]
       48 GETTABLEKS                       R13 R13 K21 ["IconSize"]
       50 GETTABLEKS                       R13 R13 K22 ["Small"]
       52 SETTABLEKS                       R13 R12 K11 ["size"]
       54 GETUPVAL                         R13 9
       55 GETTABLEKS                       R13 R13 K15 ["Enums"]
       57 GETTABLEKS                       R13 R13 K23 ["IconVariant"]
       59 GETTABLEKS                       R13 R13 K24 ["Filled"]
       61 SETTABLEKS                       R13 R12 K12 ["variant"]
       63 MOVE                             R13 R2
       64 CALL                             R13 0 1
       65 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       67 CALL                             R10 2 1
       68 JUMP                             ; [+28]
       69 GETUPVAL                         R10 4
       70 GETUPVAL                         R11 8
       71 DUPTABLE                         R12 K25 [{"name", "size", "style", "LayoutOrder"}]
       72 LOADK                            R13 K26 ["icons/status/warning"]
       73 SETTABLEKS                       R13 R12 K9 ["name"]
       75 GETUPVAL                         R13 9
       76 GETTABLEKS                       R13 R13 K15 ["Enums"]
       78 GETTABLEKS                       R13 R13 K21 ["IconSize"]
       80 GETTABLEKS                       R13 R13 K22 ["Small"]
       82 SETTABLEKS                       R13 R12 K11 ["size"]
       84 GETTABLEKS                       R13 R1 K18 ["Color"]
       86 GETTABLEKS                       R13 R13 K19 ["System"]
       88 GETTABLEKS                       R13 R13 K20 ["Alert"]
       90 SETTABLEKS                       R13 R12 K10 ["style"]
       92 MOVE                             R13 R2
       93 CALL                             R13 0 1
       94 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       96 CALL                             R10 2 1
       97 SETTABLEKS                       R10 R9 K6 ["StatusIcon"]
       99 GETUPVAL                         R10 4
      100 GETUPVAL                         R11 10
      101 DUPTABLE                         R12 K28 [{"tag", "Text", "LayoutOrder"}]
      102 LOADK                            R13 K29 ["size-0-full auto-x text-label-small content-default text-truncate-end"]
      103 SETTABLEKS                       R13 R12 K27 ["tag"]
      105 GETUPVAL                         R13 11
      106 GETTABLEKS                       R13 R13 K30 ["GenerationFailed"]
      108 SETTABLEKS                       R13 R12 K7 ["Text"]
      110 MOVE                             R13 R2
      111 CALL                             R13 0 1
      112 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      114 CALL                             R10 2 1
      115 SETTABLEKS                       R10 R9 K7 ["Text"]
      117 SETTABLEKS                       R9 R8 K4 ["headerChildren"]
      119 MOVE                             R9 R0
      120 CALL                             R7 2 1
      121 DUPTABLE                         R8 K34 [{"TemplateMessage", "ErrorDetail", "RetryRow"}]
      122 GETUPVAL                         R9 4
      123 GETUPVAL                         R10 10
      124 DUPTABLE                         R11 K36 [{"tag", "Text", "TextWrapped", "LayoutOrder"}]
      125 LOADK                            R12 K37 ["size-full-0 auto-y text-body-small content-muted text-align-x-left"]
      126 SETTABLEKS                       R12 R11 K27 ["tag"]
      128 SETTABLEKS                       R3 R11 K7 ["Text"]
      130 LOADB                            R12 1
      131 SETTABLEKS                       R12 R11 K35 ["TextWrapped"]
      133 MOVE                             R12 R2
      134 CALL                             R12 0 1
      135 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      137 CALL                             R9 2 1
      138 SETTABLEKS                       R9 R8 K31 ["TemplateMessage"]
      140 MOVE                             R9 R4
      141 JUMPIFNOT                        R9 ; [+63]
      142 GETUPVAL                         R9 4
      143 GETUPVAL                         R10 12
      144 DUPTABLE                         R11 K38 [{"tag", "LayoutOrder"}]
      145 LOADK                            R12 K39 ["size-full-0 auto-y bg-shift-200 radius-small padding-small"]
      146 SETTABLEKS                       R12 R11 K27 ["tag"]
      148 MOVE                             R12 R2
      149 CALL                             R12 0 1
      150 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      152 DUPTABLE                         R12 K41 [{"ErrorText"}]
      153 GETUPVAL                         R13 4
      154 LOADK                            R14 K42 ["TextBox"]
      155 DUPTABLE                         R15 K52 [{"Text", "TextEditable", "ClearTextOnFocus", "TextWrapped", "TextXAlignment", "TextColor3", "FontFace", "TextSize", "Size", "AutomaticSize", "BackgroundTransparency"}]
      156 SETTABLEKS                       R4 R15 K7 ["Text"]
      158 LOADB                            R16 0
      159 SETTABLEKS                       R16 R15 K43 ["TextEditable"]
      161 LOADB                            R16 0
      162 SETTABLEKS                       R16 R15 K44 ["ClearTextOnFocus"]
      164 LOADB                            R16 1
      165 SETTABLEKS                       R16 R15 K35 ["TextWrapped"]
      167 GETIMPORT                        R16 K55 [Enum.TextXAlignment.Left]
      169 SETTABLEKS                       R16 R15 K45 ["TextXAlignment"]
      171 GETIMPORT                        R16 K58 [Color3.fromRGB]
      173 LOADN                            R17 138
      174 LOADN                            R18 180
      175 LOADN                            R19 220
      176 CALL                             R16 3 1
      177 SETTABLEKS                       R16 R15 K46 ["TextColor3"]
      179 GETUPVAL                         R16 13
      180 GETTABLEKS                       R16 R16 K59 ["CODE_FONT"]
      182 SETTABLEKS                       R16 R15 K47 ["FontFace"]
      184 LOADN                            R16 12
      185 SETTABLEKS                       R16 R15 K48 ["TextSize"]
      187 GETIMPORT                        R16 K62 [UDim2.fromScale]
      189 LOADN                            R17 1
      190 LOADN                            R18 0
      191 CALL                             R16 2 1
      192 SETTABLEKS                       R16 R15 K49 ["Size"]
      194 GETIMPORT                        R16 K64 [Enum.AutomaticSize.Y]
      196 SETTABLEKS                       R16 R15 K50 ["AutomaticSize"]
      198 LOADN                            R16 1
      199 SETTABLEKS                       R16 R15 K51 ["BackgroundTransparency"]
      201 CALL                             R13 2 1
      202 SETTABLEKS                       R13 R12 K40 ["ErrorText"]
      204 CALL                             R9 3 1
      205 SETTABLEKS                       R9 R8 K32 ["ErrorDetail"]
      207 GETTABLEKS                       R9 R0 K65 ["retryInfo"]
      209 JUMPIFNOT                        R9 ; [+9]
      210 GETUPVAL                         R9 14
      211 DUPTABLE                         R10 K67 [{"retryInfo", "nextOrder"}]
      212 GETTABLEKS                       R11 R0 K65 ["retryInfo"]
      214 SETTABLEKS                       R11 R10 K65 ["retryInfo"]
      216 SETTABLEKS                       R2 R10 K66 ["nextOrder"]
      218 CALL                             R9 1 1
      219 SETTABLEKS                       R9 R8 K33 ["RetryRow"]
      221 CALL                             R5 3 -1
      222 RETURN                           R5 -1

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["Preparing"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+8]
       15 DUPTABLE                         R1 K5 [{"mode"}]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["Preparing"]
       19 SETTABLEKS                       R2 R1 K3 ["mode"]
       21 RETURN                           R1 1
       22 GETTABLEKS                       R1 R0 K6 ["retryInfo"]
       24 JUMPIFNOT                        R1 ; [+18]
       25 DUPTABLE                         R2 K11 [{"description", "onRetryText", "isRunning", "onRetryDismissText"}]
       26 GETTABLEKS                       R3 R1 K7 ["description"]
       28 SETTABLEKS                       R3 R2 K7 ["description"]
       30 GETTABLEKS                       R3 R1 K8 ["onRetryText"]
       32 SETTABLEKS                       R3 R2 K8 ["onRetryText"]
       34 GETTABLEKS                       R3 R1 K9 ["isRunning"]
       36 SETTABLEKS                       R3 R2 K9 ["isRunning"]
       38 GETTABLEKS                       R3 R1 K10 ["onRetryDismissText"]
       40 SETTABLEKS                       R3 R2 K10 ["onRetryDismissText"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R2
       44 GETTABLEKS                       R3 R0 K3 ["mode"]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K12 ["GenerationError"]
       49 JUMPIFNOTEQ                      R3 R4 ; [+18]
       51 DUPTABLE                         R3 K15 [{"mode", "generationErrorMessage", "generationErrorType", "retryInfo"}]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K12 ["GenerationError"]
       55 SETTABLEKS                       R4 R3 K3 ["mode"]
       57 GETTABLEKS                       R4 R0 K13 ["generationErrorMessage"]
       59 SETTABLEKS                       R4 R3 K13 ["generationErrorMessage"]
       61 GETTABLEKS                       R4 R0 K14 ["generationErrorType"]
       63 SETTABLEKS                       R4 R3 K14 ["generationErrorType"]
       65 SETTABLEKS                       R2 R3 K6 ["retryInfo"]
       67 RETURN                           R3 1
       68 DUPTABLE                         R3 K23 [{"mode", "name", "previewImages", "previewState", "previewErrorMessage", "generationStage", "generationId", "startTime", "retryInfo"}]
       69 GETUPVAL                         R4 1
       70 GETTABLEKS                       R4 R4 K24 ["ShowPreview"]
       72 SETTABLEKS                       R4 R3 K3 ["mode"]
       74 GETTABLEKS                       R4 R0 K16 ["name"]
       76 SETTABLEKS                       R4 R3 K16 ["name"]
       78 GETTABLEKS                       R4 R0 K17 ["previewImages"]
       80 SETTABLEKS                       R4 R3 K17 ["previewImages"]
       82 GETTABLEKS                       R4 R0 K18 ["previewState"]
       84 SETTABLEKS                       R4 R3 K18 ["previewState"]
       86 GETTABLEKS                       R4 R0 K19 ["previewErrorMessage"]
       88 SETTABLEKS                       R4 R3 K19 ["previewErrorMessage"]
       90 GETTABLEKS                       R4 R0 K20 ["generationStage"]
       92 SETTABLEKS                       R4 R3 K20 ["generationStage"]
       94 GETTABLEKS                       R4 R0 K21 ["generationId"]
       96 SETTABLEKS                       R4 R3 K21 ["generationId"]
       98 GETTABLEKS                       R4 R0 K22 ["startTime"]
      100 SETTABLEKS                       R4 R3 K22 ["startTime"]
      102 SETTABLEKS                       R2 R3 K6 ["retryInfo"]
      104 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Preparing"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+19]
       15 DUPTABLE                         R2 K8 [{"type", "mode", "isError", "errorMessage"}]
       16 LOADK                            R3 K9 ["PrimitiveGen"]
       17 SETTABLEKS                       R3 R2 K5 ["type"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["Preparing"]
       22 SETTABLEKS                       R3 R2 K3 ["mode"]
       24 GETTABLEKS                       R3 R0 K6 ["isError"]
       26 SETTABLEKS                       R3 R2 K6 ["isError"]
       28 GETTABLEKS                       R3 R0 K7 ["errorMessage"]
       30 SETTABLEKS                       R3 R2 K7 ["errorMessage"]
       32 RETURN                           R2 1
       33 GETTABLEKS                       R2 R0 K10 ["retryInfo"]
       35 JUMPIFNOT                        R2 ; [+32]
       36 DUPTABLE                         R3 K17 [{"description", "onRetryText", "onRetryClick", "isRunning", "onRetryDismissText", "onRetryDismissClick"}]
       37 GETTABLEKS                       R4 R2 K11 ["description"]
       39 SETTABLEKS                       R4 R3 K11 ["description"]
       41 GETTABLEKS                       R4 R2 K12 ["onRetryText"]
       43 SETTABLEKS                       R4 R3 K12 ["onRetryText"]
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K18 ["createUnimplemented"]
       48 LOADK                            R5 K13 ["onRetryClick"]
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R3 K13 ["onRetryClick"]
       52 GETTABLEKS                       R4 R2 K14 ["isRunning"]
       54 SETTABLEKS                       R4 R3 K14 ["isRunning"]
       56 GETTABLEKS                       R4 R2 K15 ["onRetryDismissText"]
       58 SETTABLEKS                       R4 R3 K15 ["onRetryDismissText"]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K18 ["createUnimplemented"]
       63 LOADK                            R5 K16 ["onRetryDismissClick"]
       64 CALL                             R4 1 1
       65 SETTABLEKS                       R4 R3 K16 ["onRetryDismissClick"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R3
       69 GETTABLEKS                       R4 R0 K3 ["mode"]
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R5 R5 K19 ["GenerationError"]
       74 JUMPIFNOTEQ                      R4 R5 ; [+22]
       76 DUPTABLE                         R4 K22 [{"type", "mode", "generationErrorMessage", "generationErrorType", "retryInfo"}]
       77 LOADK                            R5 K9 ["PrimitiveGen"]
       78 SETTABLEKS                       R5 R4 K5 ["type"]
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R5 R5 K19 ["GenerationError"]
       83 SETTABLEKS                       R5 R4 K3 ["mode"]
       85 GETTABLEKS                       R5 R0 K20 ["generationErrorMessage"]
       87 SETTABLEKS                       R5 R4 K20 ["generationErrorMessage"]
       89 GETTABLEKS                       R6 R0 K21 ["generationErrorType"]
       91 ORK                              R5 R6 K23 ["General"]
       92 SETTABLEKS                       R5 R4 K21 ["generationErrorType"]
       94 SETTABLEKS                       R3 R4 K10 ["retryInfo"]
       96 RETURN                           R4 1
       97 GETTABLEKS                       R4 R0 K3 ["mode"]
       99 GETUPVAL                         R5 1
      100 GETTABLEKS                       R5 R5 K24 ["ShowPreview"]
      102 JUMPIFNOTEQ                      R4 R5 ; [+65]
      104 DUPTABLE                         R4 K36 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "previewErrorMessage", "generationStage", "generationId", "startTime", "onChipClicked", "retryInfo"}]
      105 LOADK                            R5 K9 ["PrimitiveGen"]
      106 SETTABLEKS                       R5 R4 K5 ["type"]
      108 GETTABLEKS                       R5 R0 K3 ["mode"]
      110 SETTABLEKS                       R5 R4 K3 ["mode"]
      112 LOADB                            R5 0
      113 SETTABLEKS                       R5 R4 K25 ["expanded"]
      115 GETTABLEKS                       R6 R0 K26 ["name"]
      117 ORK                              R5 R6 K37 ["UNKNOWN"]
      118 SETTABLEKS                       R5 R4 K26 ["name"]
      120 GETTABLEKS                       R6 R0 K26 ["name"]
      122 ORK                              R5 R6 K37 ["UNKNOWN"]
      123 SETTABLEKS                       R5 R4 K27 ["displayName"]
      125 LOADNIL                          R5
      126 SETTABLEKS                       R5 R4 K28 ["className"]
      128 GETTABLEKS                       R5 R0 K29 ["previewImages"]
      130 SETTABLEKS                       R5 R4 K29 ["previewImages"]
      132 GETTABLEKS                       R5 R0 K30 ["previewState"]
      134 JUMPIF                           R5 ; [+3]
      135 GETUPVAL                         R5 3
      136 GETTABLEKS                       R5 R5 K38 ["Failed"]
      138 SETTABLEKS                       R5 R4 K30 ["previewState"]
      140 GETTABLEKS                       R5 R0 K31 ["previewErrorMessage"]
      142 SETTABLEKS                       R5 R4 K31 ["previewErrorMessage"]
      144 GETTABLEKS                       R5 R0 K32 ["generationStage"]
      146 SETTABLEKS                       R5 R4 K32 ["generationStage"]
      148 GETTABLEKS                       R6 R0 K33 ["generationId"]
      150 ORK                              R5 R6 K39 [""]
      151 SETTABLEKS                       R5 R4 K33 ["generationId"]
      153 GETTABLEKS                       R6 R0 K34 ["startTime"]
      155 ORK                              R5 R6 K40 [0]
      156 SETTABLEKS                       R5 R4 K34 ["startTime"]
      158 GETUPVAL                         R5 2
      159 GETTABLEKS                       R5 R5 K18 ["createUnimplemented"]
      161 LOADK                            R6 K35 ["onChipClicked"]
      162 CALL                             R5 1 1
      163 SETTABLEKS                       R5 R4 K35 ["onChipClicked"]
      165 SETTABLEKS                       R3 R4 K10 ["retryInfo"]
      167 RETURN                           R4 1
      168 LOADNIL                          R4
      169 RETURN                           R4 1

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
       97 GETTABLEKS                       R14 R0 K27 ["Flags"]
       99 GETTABLEKS                       R14 R14 K28 ["FFlagAssistantMultipleChatPersistence"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K27 ["Flags"]
      106 GETTABLEKS                       R15 R15 K29 ["FFlagAssistantUseBuilderIcons"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K27 ["Flags"]
      113 GETTABLEKS                       R16 R16 K30 ["FFlagDisableTruncatePrimGenHeader"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K27 ["Flags"]
      120 GETTABLEKS                       R17 R17 K31 ["FIntPrimGenLongRunThresholdSec"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K27 ["Flags"]
      127 GETTABLEKS                       R18 R18 K32 ["FIntPrimGenTextMaxLength"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K27 ["Flags"]
      134 GETTABLEKS                       R19 R19 K33 ["FIntPrimGenVerticalGutter"]
      136 CALL                             R18 1 1
      137 GETTABLEKS                       R19 R3 K34 ["Chip"]
      139 GETTABLEKS                       R20 R3 K35 ["Icon"]
      141 GETTABLEKS                       R21 R3 K36 ["Button"]
      143 GETTABLEKS                       R22 R3 K37 ["IconButton"]
      145 GETTABLEKS                       R23 R3 K38 ["Image"]
      147 GETTABLEKS                       R24 R3 K39 ["Skeleton"]
      149 GETTABLEKS                       R25 R3 K40 ["Text"]
      151 GETTABLEKS                       R26 R3 K41 ["View"]
      153 GETTABLEKS                       R27 R3 K21 ["Hooks"]
      155 GETTABLEKS                       R27 R27 K42 ["useTokens"]
      157 GETTABLEKS                       R28 R5 K43 ["createNextOrder"]
      159 GETTABLEKS                       R29 R4 K44 ["createElement"]
      161 GETTABLEKS                       R30 R12 K45 ["PREVIEW_HEIGHT"]
      163 MOVE                             R31 R18
      164 CALL                             R31 0 1
      165 MOVE                             R32 R16
      166 CALL                             R32 0 1
      167 MOVE                             R33 R17
      168 CALL                             R33 0 1
      169 DUPCLOSURE                       R34 K46 [PROTO_0]
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R33
      172 DUPTABLE                         R35 K51 [{"Generating", "Inserted", "Failed", "Cancelled"}]
      173 LOADK                            R36 K47 ["Generating"]
      174 SETTABLEKS                       R36 R35 K47 ["Generating"]
      176 LOADK                            R36 K48 ["Inserted"]
      177 SETTABLEKS                       R36 R35 K48 ["Inserted"]
      179 LOADK                            R36 K49 ["Failed"]
      180 SETTABLEKS                       R36 R35 K49 ["Failed"]
      182 LOADK                            R36 K50 ["Cancelled"]
      183 SETTABLEKS                       R36 R35 K50 ["Cancelled"]
      185 DUPTABLE                         R36 K55 [{"Preparing", "ShowPreview", "GenerationError"}]
      186 LOADK                            R37 K52 ["Preparing"]
      187 SETTABLEKS                       R37 R36 K52 ["Preparing"]
      189 LOADK                            R37 K53 ["ShowPreview"]
      190 SETTABLEKS                       R37 R36 K53 ["ShowPreview"]
      192 LOADK                            R37 K54 ["GenerationError"]
      193 SETTABLEKS                       R37 R36 K54 ["GenerationError"]
      195 DUPCLOSURE                       R37 K56 [PROTO_1]
      196 CAPTURE                          VAL R28
      197 CAPTURE                          VAL R29
      198 CAPTURE                          VAL R1
      199 DUPTABLE                         R38 K58 [{"Generating", "GenerationFailed"}]
      200 LOADK                            R41 K59 ["PrimitiveGen"]
      201 LOADK                            R42 K47 ["Generating"]
      202 NAMECALL                         R39 R8 K60 ["getText"]
      204 CALL                             R39 3 1
      205 SETTABLEKS                       R39 R38 K47 ["Generating"]
      207 LOADK                            R41 K59 ["PrimitiveGen"]
      208 LOADK                            R42 K57 ["GenerationFailed"]
      209 NAMECALL                         R39 R8 K60 ["getText"]
      211 CALL                             R39 3 1
      212 SETTABLEKS                       R39 R38 K57 ["GenerationFailed"]
      214 DUPCLOSURE                       R39 K61 [PROTO_2]
      215 CAPTURE                          VAL R36
      216 CAPTURE                          VAL R38
      217 CAPTURE                          VAL R28
      218 CAPTURE                          VAL R29
      219 CAPTURE                          VAL R37
      220 CAPTURE                          VAL R2
      221 CAPTURE                          VAL R25
      222 CAPTURE                          VAL R7
      223 DUPCLOSURE                       R40 K62 [PROTO_6]
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R32
      226 DUPCLOSURE                       R41 K63 [PROTO_7]
      227 CAPTURE                          VAL R11
      228 DUPTABLE                         R42 K67 [{"GeneratingPrefix", "Inserted", "GenerationCancelled", "GenerationFailed", "TakingLonger"}]
      229 LOADK                            R45 K59 ["PrimitiveGen"]
      230 LOADK                            R46 K64 ["GeneratingPrefix"]
      231 NAMECALL                         R43 R8 K60 ["getText"]
      233 CALL                             R43 3 1
      234 SETTABLEKS                       R43 R42 K64 ["GeneratingPrefix"]
      236 LOADK                            R45 K59 ["PrimitiveGen"]
      237 LOADK                            R46 K48 ["Inserted"]
      238 NAMECALL                         R43 R8 K60 ["getText"]
      240 CALL                             R43 3 1
      241 SETTABLEKS                       R43 R42 K48 ["Inserted"]
      243 LOADK                            R45 K59 ["PrimitiveGen"]
      244 LOADK                            R46 K65 ["GenerationCancelled"]
      245 NAMECALL                         R43 R8 K60 ["getText"]
      247 CALL                             R43 3 1
      248 SETTABLEKS                       R43 R42 K65 ["GenerationCancelled"]
      250 LOADK                            R45 K59 ["PrimitiveGen"]
      251 LOADK                            R46 K57 ["GenerationFailed"]
      252 NAMECALL                         R43 R8 K60 ["getText"]
      254 CALL                             R43 3 1
      255 SETTABLEKS                       R43 R42 K57 ["GenerationFailed"]
      257 LOADK                            R45 K59 ["PrimitiveGen"]
      258 LOADK                            R46 K66 ["TakingLonger"]
      259 NAMECALL                         R43 R8 K60 ["getText"]
      261 CALL                             R43 3 1
      262 SETTABLEKS                       R43 R42 K66 ["TakingLonger"]
      264 GETTABLEKS                       R43 R3 K68 ["Enums"]
      266 GETTABLEKS                       R43 R43 K69 ["FillBehavior"]
      268 GETTABLEKS                       R44 R3 K68 ["Enums"]
      270 GETTABLEKS                       R44 R44 K70 ["InputSize"]
      272 DUPCLOSURE                       R45 K71 [PROTO_8]
      273 CAPTURE                          VAL R29
      274 CAPTURE                          VAL R26
      275 CAPTURE                          VAL R25
      276 CAPTURE                          VAL R21
      277 CAPTURE                          VAL R44
      278 CAPTURE                          VAL R3
      279 CAPTURE                          VAL R43
      280 DUPCLOSURE                       R46 K72 [PROTO_10]
      281 CAPTURE                          VAL R14
      282 CAPTURE                          VAL R27
      283 CAPTURE                          VAL R35
      284 CAPTURE                          VAL R40
      285 CAPTURE                          VAL R11
      286 CAPTURE                          VAL R10
      287 CAPTURE                          VAL R42
      288 CAPTURE                          VAL R34
      289 CAPTURE                          VAL R28
      290 CAPTURE                          VAL R32
      291 CAPTURE                          VAL R8
      292 CAPTURE                          VAL R29
      293 CAPTURE                          VAL R37
      294 CAPTURE                          VAL R2
      295 CAPTURE                          VAL R26
      296 CAPTURE                          VAL R25
      297 CAPTURE                          VAL R7
      298 CAPTURE                          VAL R19
      299 CAPTURE                          VAL R3
      300 CAPTURE                          VAL R30
      301 CAPTURE                          VAL R20
      302 CAPTURE                          VAL R23
      303 CAPTURE                          VAL R24
      304 CAPTURE                          VAL R31
      305 CAPTURE                          VAL R22
      306 CAPTURE                          VAL R45
      307 LOADK                            R49 K59 ["PrimitiveGen"]
      308 LOADK                            R50 K73 ["GenerationErrorGeneral"]
      309 NAMECALL                         R47 R8 K60 ["getText"]
      311 CALL                             R47 3 1
      312 DUPTABLE                         R48 K77 [{"General", "TooManyRequests", "ModerationFailed"}]
      313 SETTABLEKS                       R47 R48 K74 ["General"]
      315 LOADK                            R51 K59 ["PrimitiveGen"]
      316 LOADK                            R52 K78 ["GenerationErrorTooManyRequests"]
      317 NAMECALL                         R49 R8 K60 ["getText"]
      319 CALL                             R49 3 1
      320 SETTABLEKS                       R49 R48 K75 ["TooManyRequests"]
      322 LOADK                            R51 K59 ["PrimitiveGen"]
      323 LOADK                            R52 K79 ["GenerationErrorModerationFailed"]
      324 NAMECALL                         R49 R8 K60 ["getText"]
      326 CALL                             R49 3 1
      327 SETTABLEKS                       R49 R48 K76 ["ModerationFailed"]
      329 DUPCLOSURE                       R49 K80 [PROTO_11]
      330 CAPTURE                          VAL R27
      331 CAPTURE                          VAL R28
      332 CAPTURE                          VAL R48
      333 CAPTURE                          VAL R47
      334 CAPTURE                          VAL R29
      335 CAPTURE                          VAL R37
      336 CAPTURE                          VAL R2
      337 CAPTURE                          VAL R14
      338 CAPTURE                          VAL R20
      339 CAPTURE                          VAL R3
      340 CAPTURE                          VAL R25
      341 CAPTURE                          VAL R38
      342 CAPTURE                          VAL R26
      343 CAPTURE                          VAL R9
      344 CAPTURE                          VAL R45
      345 DUPCLOSURE                       R50 K81 [PROTO_12]
      346 CAPTURE                          VAL R36
      347 CAPTURE                          VAL R29
      348 CAPTURE                          VAL R46
      349 CAPTURE                          VAL R49
      350 CAPTURE                          VAL R2
      351 CAPTURE                          VAL R39
      352 DUPTABLE                         R51 K84 [{"toMeta", "fromMeta"}]
      353 DUPCLOSURE                       R52 K85 [PROTO_13]
      354 CAPTURE                          VAL R13
      355 CAPTURE                          VAL R36
      356 SETTABLEKS                       R52 R51 K82 ["toMeta"]
      358 DUPCLOSURE                       R52 K86 [PROTO_14]
      359 CAPTURE                          VAL R13
      360 CAPTURE                          VAL R36
      361 CAPTURE                          VAL R5
      362 CAPTURE                          VAL R35
      363 SETTABLEKS                       R52 R51 K83 ["fromMeta"]
      365 DUPTABLE                         R52 K92 [{"Type", "ContentWidget", "Serialization", "Modes", "PreviewState"}]
      366 LOADK                            R53 K59 ["PrimitiveGen"]
      367 SETTABLEKS                       R53 R52 K87 ["Type"]
      369 GETTABLEKS                       R53 R4 K93 ["memo"]
      371 MOVE                             R54 R50
      372 CALL                             R53 1 1
      373 SETTABLEKS                       R53 R52 K88 ["ContentWidget"]
      375 SETTABLEKS                       R51 R52 K89 ["Serialization"]
      377 SETTABLEKS                       R36 R52 K90 ["Modes"]
      379 SETTABLEKS                       R35 R52 K91 ["PreviewState"]
      381 RETURN                           R52 1
