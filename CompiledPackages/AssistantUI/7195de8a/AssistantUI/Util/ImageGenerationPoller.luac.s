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
       58 JUMPIFNOT                        R7 ; [+46]
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
       90 JUMPIF                           R8 ; [+11]
       91 LOADK                            R9 K26 ["Generation ended with status '%*'"]
       92 GETTABLEKS                       R12 R6 K15 ["status"]
       94 FASTCALL1                        TOSTRING R12 ; [+2]
       95 GETIMPORT                        R11 K28 [tostring]
       97 CALL                             R11 1 1
       98 NAMECALL                         R9 R9 K29 ["format"]
      100 CALL                             R9 2 1
      101 MOVE                             R8 R9
      102 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
      104 RETURN                           R7 1
      105 GETTABLEKS                       R7 R6 K7 ["ok"]
      107 JUMPIF                           R7 ; [+11]
      108 GETTABLEKS                       R7 R6 K24 ["statusCode"]
      110 JUMPIFNOTEQKN                    R7 K30 [404] ; [+8]
      112 DUPTABLE                         R7 K31 [{["ok"] = False, ["statusCode"] = 404, ["errorMessage"]}]
      113 GETTABLEKS                       R9 R6 K9 ["errorMessage"]
      115 ORK                              R8 R9 K32 ["Image generation not found"]
      116 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
      118 RETURN                           R7 1
      119 GETIMPORT                        R7 K6 [os.clock]
      121 CALL                             R7 0 1
      122 JUMPIFNOTLE                      R5 R7 ; [+11]
      124 DUPTABLE                         R7 K33 [{["ok"] = False, ["errorMessage"]}]
      125 LOADK                            R9 K34 ["Image generation timed out after %*s"]
      126 MOVE                             R11 R2
      127 NAMECALL                         R9 R9 K29 ["format"]
      129 CALL                             R9 2 1
      130 MOVE                             R8 R9
      131 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
      133 RETURN                           R7 1
      134 GETIMPORT                        R7 K37 [task.wait]
      136 MOVE                             R8 R4
      137 CALL                             R7 1 0
      138 JUMPBACK                         ; [-121]
      139 RETURN                           R0 0

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
        7 JUMPIFNOT                        R2 ; [+9]
        8 GETIMPORT                        R2 K3 [print]
       10 LOADK                            R4 K4 ["[ImageGenerationPoller] GET (presigned) %*"]
       11 MOVE                             R6 R0
       12 NAMECALL                         R4 R4 K5 ["format"]
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 CALL                             R2 1 0
       17 GETIMPORT                        R2 K7 [pcall]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CALL                             R2 1 2
       23 JUMPIF                           R2 ; [+26]
       24 GETIMPORT                        R4 K9 [warn]
       26 LOADK                            R6 K10 ["[ImageGenerationPoller] GET (presigned) %* threw: %*"]
       27 MOVE                             R8 R0
       28 FASTCALL1                        TOSTRING R3 ; [+3]
       29 MOVE                             R10 R3
       30 GETIMPORT                        R9 K12 [tostring]
       32 CALL                             R9 1 1
       33 NAMECALL                         R6 R6 K5 ["format"]
       35 CALL                             R6 3 1
       36 MOVE                             R5 R6
       37 CALL                             R4 1 0
       38 LOADNIL                          R4
       39 LOADK                            R6 K13 ["Failed to download image: %*"]
       40 FASTCALL1                        TOSTRING R3 ; [+3]
       41 MOVE                             R9 R3
       42 GETIMPORT                        R8 K12 [tostring]
       44 CALL                             R8 1 1
       45 NAMECALL                         R6 R6 K5 ["format"]
       47 CALL                             R6 2 1
       48 MOVE                             R5 R6
       49 RETURN                           R4 2
       50 FASTCALL1                        TYPEOF R3 ; [+3]
       51 MOVE                             R5 R3
       52 GETIMPORT                        R4 K15 [typeof]
       54 CALL                             R4 1 1
       55 JUMPIFNOTEQKS                    R4 K16 ["table"] ; [+4]
       57 GETTABLEKS                       R4 R3 K17 ["Success"]
       59 JUMPIF                           R4 ; [+53]
       60 FASTCALL1                        TYPEOF R3 ; [+3]
       61 MOVE                             R6 R3
       62 GETIMPORT                        R5 K15 [typeof]
       64 CALL                             R5 1 1
       65 JUMPIFNOTEQKS                    R5 K16 ["table"] ; [+8]
       67 GETTABLEKS                       R5 R3 K18 ["StatusCode"]
       69 FASTCALL1                        TOSTRING R5 ; [+2]
       70 GETIMPORT                        R4 K12 [tostring]
       72 CALL                             R4 1 1
       73 JUMP                             ; [+5]
       74 FASTCALL1                        TOSTRING R3 ; [+3]
       75 MOVE                             R5 R3
       76 GETIMPORT                        R4 K12 [tostring]
       78 CALL                             R4 1 1
       79 FASTCALL1                        TYPEOF R3 ; [+3]
       80 MOVE                             R7 R3
       81 GETIMPORT                        R6 K15 [typeof]
       83 CALL                             R6 1 1
       84 JUMPIFNOTEQKS                    R6 K16 ["table"] ; [+8]
       86 GETTABLEKS                       R6 R3 K19 ["Body"]
       88 FASTCALL1                        TOSTRING R6 ; [+2]
       89 GETIMPORT                        R5 K12 [tostring]
       91 CALL                             R5 1 1
       92 JUMP                             ; [+1]
       93 LOADK                            R5 K20 ["<n/a>"]
       94 GETIMPORT                        R6 K9 [warn]
       96 LOADK                            R8 K21 ["[ImageGenerationPoller] GET (presigned) %* -> status=%* body=%*"]
       97 MOVE                             R10 R0
       98 MOVE                             R11 R4
       99 MOVE                             R12 R5
      100 NAMECALL                         R8 R8 K5 ["format"]
      102 CALL                             R8 4 1
      103 MOVE                             R7 R8
      104 CALL                             R6 1 0
      105 LOADNIL                          R6
      106 LOADK                            R8 K22 ["Image download failed (status=%*)"]
      107 MOVE                             R10 R4
      108 NAMECALL                         R8 R8 K5 ["format"]
      110 CALL                             R8 2 1
      111 MOVE                             R7 R8
      112 RETURN                           R6 2
      113 GETTABLEKS                       R5 R3 K19 ["Body"]
      115 FASTCALL1                        TYPEOF R5 ; [+2]
      116 GETIMPORT                        R4 K15 [typeof]
      118 CALL                             R4 1 1
      119 JUMPIFNOTEQKS                    R4 K23 ["string"] ; [+5]
      121 GETTABLEKS                       R4 R3 K19 ["Body"]
      123 JUMPIFNOTEQKS                    R4 K24 [""] ; [+13]
      125 GETIMPORT                        R4 K9 [warn]
      127 LOADK                            R6 K25 ["[ImageGenerationPoller] GET (presigned) %* returned empty body"]
      128 MOVE                             R8 R0
      129 NAMECALL                         R6 R6 K5 ["format"]
      131 CALL                             R6 2 1
      132 MOVE                             R5 R6
      133 CALL                             R4 1 0
      134 LOADNIL                          R4
      135 LOADK                            R5 K26 ["Empty image body"]
      136 RETURN                           R4 2
      137 GETUPVAL                         R4 1
      138 GETTABLEKS                       R4 R4 K1 ["FFlagDebugLogAssistantUI"]
      140 JUMPIFNOT                        R4 ; [+12]
      141 GETIMPORT                        R4 K3 [print]
      143 LOADK                            R6 K27 ["[ImageGenerationPoller] GET (presigned) %* -> bytes=%*"]
      144 MOVE                             R8 R0
      145 GETTABLEKS                       R10 R3 K19 ["Body"]
      147 LENGTH                           R9 R10
      148 NAMECALL                         R6 R6 K5 ["format"]
      150 CALL                             R6 3 1
      151 MOVE                             R5 R6
      152 CALL                             R4 1 0
      153 GETIMPORT                        R4 K30 [buffer.fromstring]
      155 GETTABLEKS                       R5 R3 K19 ["Body"]
      157 CALL                             R4 1 1
      158 LOADNIL                          R5
      159 RETURN                           R4 2

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
