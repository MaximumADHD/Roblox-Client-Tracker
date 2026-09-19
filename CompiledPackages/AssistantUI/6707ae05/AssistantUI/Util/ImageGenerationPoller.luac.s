PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 LOADB                            R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Completed"]
        8 JUMPIFEQ                         R0 R2 ; [+14]
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["Failed"]
       14 JUMPIFEQ                         R0 R2 ; [+8]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K2 ["Terminated"]
       19 JUMPIFEQ                         R0 R2 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 RETURN                           R1 1

PROTO_1:
        0 FASTCALL2K                       MATH_MAX R1 K0 ; [+5]
        2 MOVE                             R5 R1
        3 LOADK                            R6 K0 [0.1]
        4 GETIMPORT                        R4 K3 [math.max]
        6 CALL                             R4 2 1
        7 GETIMPORT                        R6 K6 [os.clock]
        9 CALL                             R6 0 1
       10 FASTCALL2                        MATH_MAX R2 R4 ; [+5]
       12 MOVE                             R8 R2
       13 MOVE                             R9 R4
       14 GETIMPORT                        R7 K3 [math.max]
       16 CALL                             R7 2 1
       17 ADD                              R5 R6 R7
       18 MOVE                             R6 R3
       19 CALL                             R6 0 1
       20 JUMPIFNOT                        R6 ; [+2]
       21 DUPTABLE                         R6 K11 [{["ok"] = False, ["errorMessage"] = "Cancelled"}]
       22 RETURN                           R6 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K12 ["get"]
       26 CALL                             R6 0 1
       27 GETTABLEKS                       R6 R6 K13 ["imageGeneration"]
       29 GETTABLEKS                       R6 R6 K14 ["getStatusAsync"]
       31 MOVE                             R7 R0
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R8 R6 K15 ["status"]
       35 JUMPIFNOTEQKNIL                  R8 ; [+3]
       37 LOADB                            R7 0
       38 JUMP                             ; [+19]
       39 LOADB                            R7 1
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K16 ["Completed"]
       43 JUMPIFEQ                         R8 R9 ; [+14]
       45 LOADB                            R7 1
       46 GETUPVAL                         R9 1
       47 GETTABLEKS                       R9 R9 K17 ["Failed"]
       49 JUMPIFEQ                         R8 R9 ; [+8]
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K18 ["Terminated"]
       54 JUMPIFEQ                         R8 R9 ; [+2]
       56 LOADB                            R7 0 +1
       57 LOADB                            R7 1
       58 JUMPIFNOT                        R7 ; [+45]
       59 GETTABLEKS                       R7 R6 K15 ["status"]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K16 ["Completed"]
       64 JUMPIFNOTEQ                      R7 R8 ; [+14]
       66 GETTABLEKS                       R8 R6 K19 ["presignedUrl"]
       68 FASTCALL1                        TYPEOF R8 ; [+2]
       69 GETIMPORT                        R7 K21 [typeof]
       71 CALL                             R7 1 1
       72 JUMPIFNOTEQKS                    R7 K22 ["string"] ; [+6]
       74 GETTABLEKS                       R7 R6 K19 ["presignedUrl"]
       76 JUMPIFEQKS                       R7 K23 [""] ; [+2]
       78 RETURN                           R6 1
       79 DUPTABLE                         R7 K25 [{["ok"] = False, ["statusCode"], ["status"], ["errorMessage"]}]
       80 GETTABLEKS                       R8 R6 K24 ["statusCode"]
       82 SETTABLEKS                       R8 R7 K24 ["statusCode"]
       84 GETTABLEKS                       R8 R6 K15 ["status"]
       86 SETTABLEKS                       R8 R7 K15 ["status"]
       88 GETTABLEKS                       R8 R6 K9 ["errorMessage"]
       90 JUMPIF                           R8 ; [+10]
       91 LOADK                            R8 K26 ["Generation ended with status '%*'"]
       92 GETTABLEKS                       R11 R6 K15 ["status"]
       94 FASTCALL1                        TOSTRING R11 ; [+2]
       95 GETIMPORT                        R10 K28 [tostring]
       97 CALL                             R10 1 1
       98 NAMECALL                         R8 R8 K29 ["format"]
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
      103 RETURN                           R7 1
      104 GETTABLEKS                       R7 R6 K7 ["ok"]
      106 JUMPIF                           R7 ; [+11]
      107 GETTABLEKS                       R7 R6 K24 ["statusCode"]
      109 JUMPIFNOTEQKN                    R7 K30 [404] ; [+8]
      111 DUPTABLE                         R7 K31 [{["ok"] = False, ["statusCode"] = 404, ["errorMessage"]}]
      112 GETTABLEKS                       R9 R6 K9 ["errorMessage"]
      114 ORK                              R8 R9 K32 ["Image generation not found"]
      115 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
      117 RETURN                           R7 1
      118 GETIMPORT                        R7 K6 [os.clock]
      120 CALL                             R7 0 1
      121 JUMPIFNOTLE                      R5 R7 ; [+10]
      123 DUPTABLE                         R7 K33 [{["ok"] = False, ["errorMessage"]}]
      124 LOADK                            R8 K34 ["Image generation timed out after %*s"]
      125 MOVE                             R10 R2
      126 NAMECALL                         R8 R8 K29 ["format"]
      128 CALL                             R8 2 1
      129 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
      131 RETURN                           R7 1
      132 GETIMPORT                        R7 K37 [task.wait]
      134 MOVE                             R8 R4
      135 CALL                             R7 1 0
      136 JUMPBACK                         ; [-119]
      137 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K5 [{["Url"], ["Method"] = "GET"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Url"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["FFlagDebugLogAssistantUI"]
        7 JUMPIFNOT                        R2 ; [+8]
        8 GETIMPORT                        R2 K3 [print]
       10 LOADK                            R3 K4 ["[ImageGenerationPoller] GET (presigned) %*"]
       11 MOVE                             R5 R0
       12 NAMECALL                         R3 R3 K5 ["format"]
       14 CALL                             R3 2 1
       15 CALL                             R2 1 0
       16 GETIMPORT                        R2 K7 [pcall]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 CALL                             R2 1 2
       22 JUMPIF                           R2 ; [+24]
       23 GETIMPORT                        R4 K9 [warn]
       25 LOADK                            R5 K10 ["[ImageGenerationPoller] GET (presigned) %* threw: %*"]
       26 MOVE                             R7 R0
       27 FASTCALL1                        TOSTRING R3 ; [+3]
       28 MOVE                             R9 R3
       29 GETIMPORT                        R8 K12 [tostring]
       31 CALL                             R8 1 1
       32 NAMECALL                         R5 R5 K5 ["format"]
       34 CALL                             R5 3 1
       35 CALL                             R4 1 0
       36 LOADNIL                          R4
       37 LOADK                            R5 K13 ["Failed to download image: %*"]
       38 FASTCALL1                        TOSTRING R3 ; [+3]
       39 MOVE                             R8 R3
       40 GETIMPORT                        R7 K12 [tostring]
       42 CALL                             R7 1 1
       43 NAMECALL                         R5 R5 K5 ["format"]
       45 CALL                             R5 2 1
       46 RETURN                           R4 2
       47 FASTCALL1                        TYPEOF R3 ; [+3]
       48 MOVE                             R5 R3
       49 GETIMPORT                        R4 K15 [typeof]
       51 CALL                             R4 1 1
       52 JUMPIFNOTEQKS                    R4 K16 ["table"] ; [+4]
       54 GETTABLEKS                       R4 R3 K17 ["Success"]
       56 JUMPIF                           R4 ; [+51]
       57 FASTCALL1                        TYPEOF R3 ; [+3]
       58 MOVE                             R6 R3
       59 GETIMPORT                        R5 K15 [typeof]
       61 CALL                             R5 1 1
       62 JUMPIFNOTEQKS                    R5 K16 ["table"] ; [+8]
       64 GETTABLEKS                       R5 R3 K18 ["StatusCode"]
       66 FASTCALL1                        TOSTRING R5 ; [+2]
       67 GETIMPORT                        R4 K12 [tostring]
       69 CALL                             R4 1 1
       70 JUMP                             ; [+5]
       71 FASTCALL1                        TOSTRING R3 ; [+3]
       72 MOVE                             R5 R3
       73 GETIMPORT                        R4 K12 [tostring]
       75 CALL                             R4 1 1
       76 FASTCALL1                        TYPEOF R3 ; [+3]
       77 MOVE                             R7 R3
       78 GETIMPORT                        R6 K15 [typeof]
       80 CALL                             R6 1 1
       81 JUMPIFNOTEQKS                    R6 K16 ["table"] ; [+8]
       83 GETTABLEKS                       R6 R3 K19 ["Body"]
       85 FASTCALL1                        TOSTRING R6 ; [+2]
       86 GETIMPORT                        R5 K12 [tostring]
       88 CALL                             R5 1 1
       89 JUMP                             ; [+1]
       90 LOADK                            R5 K20 ["<n/a>"]
       91 GETIMPORT                        R6 K9 [warn]
       93 LOADK                            R7 K21 ["[ImageGenerationPoller] GET (presigned) %* -> status=%* body=%*"]
       94 MOVE                             R9 R0
       95 MOVE                             R10 R4
       96 MOVE                             R11 R5
       97 NAMECALL                         R7 R7 K5 ["format"]
       99 CALL                             R7 4 1
      100 CALL                             R6 1 0
      101 LOADNIL                          R6
      102 LOADK                            R7 K22 ["Image download failed (status=%*)"]
      103 MOVE                             R9 R4
      104 NAMECALL                         R7 R7 K5 ["format"]
      106 CALL                             R7 2 1
      107 RETURN                           R6 2
      108 GETTABLEKS                       R5 R3 K19 ["Body"]
      110 FASTCALL1                        TYPEOF R5 ; [+2]
      111 GETIMPORT                        R4 K15 [typeof]
      113 CALL                             R4 1 1
      114 JUMPIFNOTEQKS                    R4 K23 ["string"] ; [+5]
      116 GETTABLEKS                       R4 R3 K19 ["Body"]
      118 JUMPIFNOTEQKS                    R4 K24 [""] ; [+12]
      120 GETIMPORT                        R4 K9 [warn]
      122 LOADK                            R5 K25 ["[ImageGenerationPoller] GET (presigned) %* returned empty body"]
      123 MOVE                             R7 R0
      124 NAMECALL                         R5 R5 K5 ["format"]
      126 CALL                             R5 2 1
      127 CALL                             R4 1 0
      128 LOADNIL                          R4
      129 LOADK                            R5 K26 ["Empty image body"]
      130 RETURN                           R4 2
      131 GETUPVAL                         R4 1
      132 GETTABLEKS                       R4 R4 K1 ["FFlagDebugLogAssistantUI"]
      134 JUMPIFNOT                        R4 ; [+11]
      135 GETIMPORT                        R4 K3 [print]
      137 LOADK                            R5 K27 ["[ImageGenerationPoller] GET (presigned) %* -> bytes=%*"]
      138 MOVE                             R7 R0
      139 GETTABLEKS                       R9 R3 K19 ["Body"]
      141 LENGTH                           R8 R9
      142 NAMECALL                         R5 R5 K5 ["format"]
      144 CALL                             R5 3 1
      145 CALL                             R4 1 0
      146 GETIMPORT                        R4 K30 [buffer.fromstring]
      148 GETTABLEKS                       R5 R3 K19 ["Body"]
      150 CALL                             R4 1 1
      151 LOADNIL                          R5
      152 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K11 [table.freeze]
       21 DUPTABLE                         R4 K15 [{["Completed"] = "Completed", ["Failed"] = "Failed", ["Terminated"] = "Terminated"}]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K16 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 DUPCLOSURE                       R5 K17 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 DUPCLOSURE                       R6 K18 [PROTO_3]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 GETIMPORT                        R7 K11 [table.freeze]
       33 DUPTABLE                         R8 K23 [{"Statuses", "isTerminalStatus", "pollUntilDoneAsync", "fetchImageBytesAsync"}]
       34 SETTABLEKS                       R3 R8 K19 ["Statuses"]
       36 SETTABLEKS                       R4 R8 K20 ["isTerminalStatus"]
       38 SETTABLEKS                       R5 R8 K21 ["pollUntilDoneAsync"]
       40 SETTABLEKS                       R6 R8 K22 ["fetchImageBytesAsync"]
       42 CALL                             R7 1 -1
       43 RETURN                           R7 -1
