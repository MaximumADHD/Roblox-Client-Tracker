PROTO_0:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R6 R5 K1 ["state"]
       11 JUMPIFEQKS                       R6 K2 ["completed"] ; [+3]
       13 LOADB                            R6 0
       14 RETURN                           R6 1
       15 FORGLOOP                         R1 2 ; [-7]
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_state"]
        2 GETTABLEKS                       R1 R1 K1 ["plan"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 SETTABLEKS                       R1 R2 K1 ["plan"]
        4 GETTABLEKS                       R2 R0 K0 ["_state"]
        6 GETTABLEKS                       R2 R2 K2 ["onChanged"]
        8 NAMECALL                         R2 R2 K3 ["Fire"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R4
        1 NAMECALL                         R2 R0 K0 ["setPlan"]
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETTABLEKS                       R2 R0 K1 ["_state"]
        9 LOADNIL                          R3
       10 SETTABLEKS                       R3 R2 K2 ["planMessageId"]
       12 JUMPIFNOT                        R1 ; [+12]
       13 GETTABLEKS                       R2 R1 K3 ["rejected"]
       15 JUMPIFNOT                        R2 ; [+9]
       16 GETTABLEKS                       R3 R1 K5 ["threadId"]
       18 ORK                              R2 R3 K4 ["__default_thread__"]
       19 GETTABLEKS                       R3 R0 K1 ["_state"]
       21 GETTABLEKS                       R3 R3 K6 ["planModeStateByThread"]
       23 LOADK                            R4 K3 ["rejected"]
       24 SETTABLE                         R4 R3 R2
       25 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R3 1
        1 JUMPIFLT                         R1 R3 ; [+4]
        3 MODK                             R3 R1 K0 [1]
        4 JUMPIFEQKN                       R3 K1 [0] ; [+3]
        6 LOADK                            R3 K2 ["index_out_of_range"]
        7 RETURN                           R3 1
        8 GETTABLEKS                       R3 R0 K3 ["_state"]
       10 GETTABLEKS                       R3 R3 K4 ["plan"]
       12 JUMPIF                           R3 ; [+2]
       13 LOADK                            R4 K5 ["no_active_plan"]
       14 RETURN                           R4 1
       15 GETTABLEKS                       R5 R3 K6 ["todo"]
       17 GETTABLE                         R4 R5 R1
       18 JUMPIF                           R4 ; [+2]
       19 LOADK                            R5 K2 ["index_out_of_range"]
       20 RETURN                           R5 1
       21 GETTABLEKS                       R5 R4 K7 ["state"]
       23 JUMPIFNOTEQ                      R5 R2 ; [+3]
       25 LOADK                            R5 K8 ["already_in_state"]
       26 RETURN                           R5 1
       27 GETIMPORT                        R5 K11 [table.clone]
       29 GETTABLEKS                       R6 R3 K6 ["todo"]
       31 CALL                             R5 1 1
       32 DUPTABLE                         R6 K13 [{"text", "state"}]
       33 GETTABLEKS                       R7 R4 K12 ["text"]
       35 SETTABLEKS                       R7 R6 K12 ["text"]
       37 SETTABLEKS                       R2 R6 K7 ["state"]
       39 SETTABLE                         R6 R5 R1
       40 GETUPVAL                         R6 0
       41 CALL                             R6 0 1
       42 JUMPIFNOT                        R6 ; [+52]
       43 DUPTABLE                         R8 K19 [{"id", "name", "title", "summary", "completeDescription", "todo"}]
       44 GETTABLEKS                       R9 R3 K14 ["id"]
       46 SETTABLEKS                       R9 R8 K14 ["id"]
       48 GETTABLEKS                       R9 R3 K15 ["name"]
       50 SETTABLEKS                       R9 R8 K15 ["name"]
       52 GETTABLEKS                       R9 R3 K16 ["title"]
       54 SETTABLEKS                       R9 R8 K16 ["title"]
       56 GETTABLEKS                       R9 R3 K17 ["summary"]
       58 SETTABLEKS                       R9 R8 K17 ["summary"]
       60 GETTABLEKS                       R9 R3 K18 ["completeDescription"]
       62 SETTABLEKS                       R9 R8 K18 ["completeDescription"]
       64 SETTABLEKS                       R5 R8 K6 ["todo"]
       66 NAMECALL                         R6 R0 K20 ["setPlan"]
       68 CALL                             R6 2 0
       69 JUMPIFNOTEQKS                    R2 K21 ["completed"] ; [+73]
       71 LENGTH                           R7 R5
       72 JUMPIFNOTEQKN                    R7 K1 [0] ; [+3]
       74 LOADB                            R6 0
       75 JUMP                             ; [+13]
       76 MOVE                             R7 R5
       77 LOADNIL                          R8
       78 LOADNIL                          R9
       79 FORGPREP                         R7
       80 GETTABLEKS                       R12 R11 K7 ["state"]
       82 JUMPIFEQKS                       R12 K21 ["completed"] ; [+3]
       84 LOADB                            R6 0
       85 JUMP                             ; [+3]
       86 FORGLOOP                         R7 2 ; [-7]
       88 LOADB                            R6 1
       89 JUMPIFNOT                        R6 ; [+53]
       90 LOADNIL                          R8
       91 NAMECALL                         R6 R0 K20 ["setPlan"]
       93 CALL                             R6 2 0
       94 JUMP                             ; [+48]
       95 JUMPIFNOTEQKS                    R2 K21 ["completed"] ; [+25]
       97 LENGTH                           R7 R5
       98 JUMPIFNOTEQKN                    R7 K1 [0] ; [+3]
      100 LOADB                            R6 0
      101 JUMP                             ; [+13]
      102 MOVE                             R7 R5
      103 LOADNIL                          R8
      104 LOADNIL                          R9
      105 FORGPREP                         R7
      106 GETTABLEKS                       R12 R11 K7 ["state"]
      108 JUMPIFEQKS                       R12 K21 ["completed"] ; [+3]
      110 LOADB                            R6 0
      111 JUMP                             ; [+3]
      112 FORGLOOP                         R7 2 ; [-7]
      114 LOADB                            R6 1
      115 JUMPIFNOT                        R6 ; [+5]
      116 LOADNIL                          R8
      117 NAMECALL                         R6 R0 K20 ["setPlan"]
      119 CALL                             R6 2 0
      120 JUMP                             ; [+22]
      121 DUPTABLE                         R8 K22 [{"id", "title", "summary", "completeDescription", "todo"}]
      122 GETTABLEKS                       R9 R3 K14 ["id"]
      124 SETTABLEKS                       R9 R8 K14 ["id"]
      126 GETTABLEKS                       R9 R3 K16 ["title"]
      128 SETTABLEKS                       R9 R8 K16 ["title"]
      130 GETTABLEKS                       R9 R3 K17 ["summary"]
      132 SETTABLEKS                       R9 R8 K17 ["summary"]
      134 GETTABLEKS                       R9 R3 K18 ["completeDescription"]
      136 SETTABLEKS                       R9 R8 K18 ["completeDescription"]
      138 SETTABLEKS                       R5 R8 K6 ["todo"]
      140 NAMECALL                         R6 R0 K20 ["setPlan"]
      142 CALL                             R6 2 0
      143 LOADK                            R6 K23 ["updated"]
      144 RETURN                           R6 1

PROTO_5:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["completed"]
        2 NAMECALL                         R2 R0 K1 ["setTodoStateByIndex"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["_state"]
        4 GETTABLEKS                       R3 R3 K1 ["plan"]
        6 JUMPIF                           R3 ; [+14]
        7 MOVE                             R4 R1
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 FASTCALL2K                       TABLE_INSERT R2 K2 ; [+5]
       13 MOVE                             R10 R2
       14 LOADK                            R11 K2 ["no_active_plan"]
       15 GETIMPORT                        R9 K5 [table.insert]
       17 CALL                             R9 2 0
       18 FORGLOOP                         R4 1 ; [-8]
       20 RETURN                           R2 1
       21 GETIMPORT                        R4 K7 [table.clone]
       23 GETTABLEKS                       R5 R3 K8 ["todo"]
       25 CALL                             R4 1 1
       26 LOADB                            R5 0
       27 MOVE                             R6 R1
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 LOADN                            R11 1
       32 JUMPIFLT                         R10 R11 ; [+6]
       34 MODK                             R11 R10 K9 [1]
       35 JUMPIFNOTEQKN                    R11 K10 [0] ; [+3]
       37 GETTABLE                         R11 R4 R10
       38 JUMPIF                           R11 ; [+8]
       39 FASTCALL2K                       TABLE_INSERT R2 K11 ; [+5]
       41 MOVE                             R12 R2
       42 LOADK                            R13 K11 ["index_out_of_range"]
       43 GETIMPORT                        R11 K5 [table.insert]
       45 CALL                             R11 2 0
       46 JUMP                             ; [+31]
       47 GETTABLE                         R11 R4 R10
       48 GETTABLEKS                       R11 R11 K12 ["state"]
       50 JUMPIFNOTEQKS                    R11 K13 ["completed"] ; [+9]
       52 FASTCALL2K                       TABLE_INSERT R2 K14 ; [+5]
       54 MOVE                             R12 R2
       55 LOADK                            R13 K14 ["already_in_state"]
       56 GETIMPORT                        R11 K5 [table.insert]
       58 CALL                             R11 2 0
       59 JUMP                             ; [+18]
       60 DUPTABLE                         R11 K16 [{"text", "state"}]
       61 GETTABLE                         R12 R4 R10
       62 GETTABLEKS                       R12 R12 K15 ["text"]
       64 SETTABLEKS                       R12 R11 K15 ["text"]
       66 LOADK                            R12 K13 ["completed"]
       67 SETTABLEKS                       R12 R11 K12 ["state"]
       69 SETTABLE                         R11 R4 R10
       70 LOADB                            R5 1
       71 FASTCALL2K                       TABLE_INSERT R2 K17 ; [+5]
       73 MOVE                             R12 R2
       74 LOADK                            R13 K17 ["updated"]
       75 GETIMPORT                        R11 K5 [table.insert]
       77 CALL                             R11 2 0
       78 FORGLOOP                         R6 2 ; [-48]
       80 JUMPIFNOT                        R5 ; [+99]
       81 GETUPVAL                         R6 0
       82 CALL                             R6 0 1
       83 JUMPIFNOT                        R6 ; [+50]
       84 DUPTABLE                         R8 K23 [{"id", "name", "title", "summary", "completeDescription", "todo"}]
       85 GETTABLEKS                       R9 R3 K18 ["id"]
       87 SETTABLEKS                       R9 R8 K18 ["id"]
       89 GETTABLEKS                       R9 R3 K19 ["name"]
       91 SETTABLEKS                       R9 R8 K19 ["name"]
       93 GETTABLEKS                       R9 R3 K20 ["title"]
       95 SETTABLEKS                       R9 R8 K20 ["title"]
       97 GETTABLEKS                       R9 R3 K21 ["summary"]
       99 SETTABLEKS                       R9 R8 K21 ["summary"]
      101 GETTABLEKS                       R9 R3 K22 ["completeDescription"]
      103 SETTABLEKS                       R9 R8 K22 ["completeDescription"]
      105 SETTABLEKS                       R4 R8 K8 ["todo"]
      107 NAMECALL                         R6 R0 K24 ["setPlan"]
      109 CALL                             R6 2 0
      110 LENGTH                           R7 R4
      111 JUMPIFNOTEQKN                    R7 K10 [0] ; [+3]
      113 LOADB                            R6 0
      114 JUMP                             ; [+13]
      115 MOVE                             R7 R4
      116 LOADNIL                          R8
      117 LOADNIL                          R9
      118 FORGPREP                         R7
      119 GETTABLEKS                       R12 R11 K12 ["state"]
      121 JUMPIFEQKS                       R12 K13 ["completed"] ; [+3]
      123 LOADB                            R6 0
      124 JUMP                             ; [+3]
      125 FORGLOOP                         R7 2 ; [-7]
      127 LOADB                            R6 1
      128 JUMPIFNOT                        R6 ; [+51]
      129 LOADNIL                          R8
      130 NAMECALL                         R6 R0 K24 ["setPlan"]
      132 CALL                             R6 2 0
      133 RETURN                           R2 1
      134 LENGTH                           R7 R4
      135 JUMPIFNOTEQKN                    R7 K10 [0] ; [+3]
      137 LOADB                            R6 0
      138 JUMP                             ; [+13]
      139 MOVE                             R7 R4
      140 LOADNIL                          R8
      141 LOADNIL                          R9
      142 FORGPREP                         R7
      143 GETTABLEKS                       R12 R11 K12 ["state"]
      145 JUMPIFEQKS                       R12 K13 ["completed"] ; [+3]
      147 LOADB                            R6 0
      148 JUMP                             ; [+3]
      149 FORGLOOP                         R7 2 ; [-7]
      151 LOADB                            R6 1
      152 JUMPIFNOT                        R6 ; [+5]
      153 LOADNIL                          R8
      154 NAMECALL                         R6 R0 K24 ["setPlan"]
      156 CALL                             R6 2 0
      157 RETURN                           R2 1
      158 DUPTABLE                         R8 K25 [{"id", "title", "summary", "completeDescription", "todo"}]
      159 GETTABLEKS                       R9 R3 K18 ["id"]
      161 SETTABLEKS                       R9 R8 K18 ["id"]
      163 GETTABLEKS                       R9 R3 K20 ["title"]
      165 SETTABLEKS                       R9 R8 K20 ["title"]
      167 GETTABLEKS                       R9 R3 K21 ["summary"]
      169 SETTABLEKS                       R9 R8 K21 ["summary"]
      171 GETTABLEKS                       R9 R3 K22 ["completeDescription"]
      173 SETTABLEKS                       R9 R8 K22 ["completeDescription"]
      175 SETTABLEKS                       R4 R8 K8 ["todo"]
      177 NAMECALL                         R6 R0 K24 ["setPlan"]
      179 CALL                             R6 2 0
      180 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_state"]
        2 GETTABLEKS                       R1 R1 K1 ["plan"]
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["formatPersistentPlanReminder"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

PROTO_8:
        0 ORK                              R2 R1 K0 ["__default_thread__"]
        1 GETTABLEKS                       R5 R0 K2 ["_state"]
        3 GETTABLEKS                       R5 R5 K3 ["planModeStateByThread"]
        5 GETTABLE                         R4 R5 R2
        6 ORK                              R3 R4 K1 ["inactive"]
        7 JUMPIFNOTEQKS                    R3 K4 ["active"] ; [+3]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 JUMPIFEQKS                       R3 K1 ["inactive"] ; [+3]
       13 JUMPIFNOTEQKS                    R3 K5 ["rejected"] ; [+12]
       15 GETTABLEKS                       R4 R0 K2 ["_state"]
       17 GETTABLEKS                       R4 R4 K3 ["planModeStateByThread"]
       19 LOADK                            R5 K4 ["active"]
       20 SETTABLE                         R5 R4 R2
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K6 ["getEnterPlanSystemReminder"]
       24 CALL                             R4 0 -1
       25 RETURN                           R4 -1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K7 ["assertNever"]
       29 MOVE                             R5 R3
       30 CALL                             R4 1 -1
       31 RETURN                           R4 -1

PROTO_9:
        0 ORK                              R2 R1 K0 ["__default_thread__"]
        1 GETTABLEKS                       R5 R0 K2 ["_state"]
        3 GETTABLEKS                       R5 R5 K3 ["planModeStateByThread"]
        5 GETTABLE                         R4 R5 R2
        6 ORK                              R3 R4 K1 ["inactive"]
        7 JUMPIFNOTEQKS                    R3 K1 ["inactive"] ; [+3]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 JUMPIFNOTEQKS                    R3 K4 ["rejected"] ; [+12]
       13 GETTABLEKS                       R4 R0 K2 ["_state"]
       15 GETTABLEKS                       R4 R4 K3 ["planModeStateByThread"]
       17 LOADK                            R5 K1 ["inactive"]
       18 SETTABLE                         R5 R4 R2
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K5 ["getRejectPlanSystemReminder"]
       22 CALL                             R4 0 -1
       23 RETURN                           R4 -1
       24 JUMPIFNOTEQKS                    R3 K6 ["active"] ; [+12]
       26 GETTABLEKS                       R4 R0 K2 ["_state"]
       28 GETTABLEKS                       R4 R4 K3 ["planModeStateByThread"]
       30 LOADK                            R5 K1 ["inactive"]
       31 SETTABLE                         R5 R4 R2
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K7 ["getExitPlanSystemReminder"]
       35 CALL                             R4 0 -1
       36 RETURN                           R4 -1
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K8 ["assertNever"]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["AssistantMode"]
        3 GETTABLEKS                       R3 R3 K1 ["Plan"]
        5 JUMPIFNOTEQ                      R1 R3 ; [+6]
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R0 K2 ["onStartNewPlan"]
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R0 K3 ["onEndPlan"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 LOADB                            R5 0
        2 NAMECALL                         R3 R3 K0 ["GenerateGUID"]
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R4 R0 K1 ["_state"]
        7 GETTABLEKS                       R4 R4 K2 ["plans"]
        9 DUPTABLE                         R5 K6 [{"id", "name", "revisions"}]
       10 SETTABLEKS                       R3 R5 K3 ["id"]
       12 SETTABLEKS                       R1 R5 K4 ["name"]
       14 NEWTABLE                         R6 0 1
       16 MOVE                             R7 R2
       17 SETLIST                          R6 R7 1 [1]
       19 SETTABLEKS                       R6 R5 K5 ["revisions"]
       21 SETTABLE                         R5 R4 R3
       22 GETTABLEKS                       R4 R0 K1 ["_state"]
       24 GETTABLEKS                       R4 R4 K7 ["onChanged"]
       26 NAMECALL                         R4 R4 K8 ["Fire"]
       28 CALL                             R4 1 0
       29 RETURN                           R3 1

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["_state"]
        2 GETTABLEKS                       R4 R4 K1 ["plans"]
        4 GETTABLE                         R3 R4 R1
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R5 R3 K2 ["revisions"]
        9 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       11 MOVE                             R6 R2
       12 GETIMPORT                        R4 K5 [table.insert]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R4 R0 K0 ["_state"]
       17 GETTABLEKS                       R4 R4 K6 ["activePlanId"]
       19 JUMPIFNOTEQ                      R4 R1 ; [+28]
       21 DUPTABLE                         R6 K13 [{"id", "name", "title", "summary", "completeDescription", "todo"}]
       22 SETTABLEKS                       R1 R6 K7 ["id"]
       24 GETTABLEKS                       R7 R3 K8 ["name"]
       26 SETTABLEKS                       R7 R6 K8 ["name"]
       28 GETTABLEKS                       R7 R2 K9 ["title"]
       30 SETTABLEKS                       R7 R6 K9 ["title"]
       32 GETTABLEKS                       R7 R2 K10 ["summary"]
       34 SETTABLEKS                       R7 R6 K10 ["summary"]
       36 GETTABLEKS                       R7 R2 K11 ["completeDescription"]
       38 SETTABLEKS                       R7 R6 K11 ["completeDescription"]
       40 GETTABLEKS                       R7 R2 K12 ["todo"]
       42 SETTABLEKS                       R7 R6 K12 ["todo"]
       44 NAMECALL                         R4 R0 K14 ["setPlan"]
       46 CALL                             R4 2 0
       47 RETURN                           R0 0
       48 GETTABLEKS                       R4 R0 K0 ["_state"]
       50 GETTABLEKS                       R4 R4 K15 ["onChanged"]
       52 NAMECALL                         R4 R4 K16 ["Fire"]
       54 CALL                             R4 1 0
       55 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["_state"]
        2 GETTABLEKS                       R4 R4 K1 ["plans"]
        4 GETTABLE                         R3 R4 R1
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETTABLEKS                       R5 R3 K2 ["revisions"]
        8 LENGTH                           R4 R5
        9 JUMPIFNOTEQKN                    R4 K3 [0] ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R5 R3 K2 ["revisions"]
       14 GETTABLEKS                       R7 R3 K2 ["revisions"]
       16 LENGTH                           R6 R7
       17 GETTABLE                         R4 R5 R6
       18 SETTABLEKS                       R2 R4 K4 ["todo"]
       20 GETTABLEKS                       R5 R0 K0 ["_state"]
       22 GETTABLEKS                       R5 R5 K5 ["activePlanId"]
       24 JUMPIFNOTEQ                      R5 R1 ; [+26]
       26 DUPTABLE                         R7 K11 [{"id", "name", "title", "summary", "completeDescription", "todo"}]
       27 SETTABLEKS                       R1 R7 K6 ["id"]
       29 GETTABLEKS                       R8 R3 K7 ["name"]
       31 SETTABLEKS                       R8 R7 K7 ["name"]
       33 GETTABLEKS                       R8 R4 K8 ["title"]
       35 SETTABLEKS                       R8 R7 K8 ["title"]
       37 GETTABLEKS                       R8 R4 K9 ["summary"]
       39 SETTABLEKS                       R8 R7 K9 ["summary"]
       41 GETTABLEKS                       R8 R4 K10 ["completeDescription"]
       43 SETTABLEKS                       R8 R7 K10 ["completeDescription"]
       45 SETTABLEKS                       R2 R7 K4 ["todo"]
       47 NAMECALL                         R5 R0 K12 ["setPlan"]
       49 CALL                             R5 2 0
       50 RETURN                           R0 0
       51 GETTABLEKS                       R5 R0 K0 ["_state"]
       53 GETTABLEKS                       R5 R5 K13 ["onChanged"]
       55 NAMECALL                         R5 R5 K14 ["Fire"]
       57 CALL                             R5 1 0
       58 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_state"]
        2 GETTABLEKS                       R3 R3 K1 ["plans"]
        4 GETTABLE                         R2 R3 R1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R4 R2 K2 ["revisions"]
        8 LENGTH                           R3 R4
        9 JUMPIFNOTEQKN                    R3 K3 [0] ; [+3]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 GETTABLEKS                       R4 R2 K2 ["revisions"]
       15 GETTABLEKS                       R6 R2 K2 ["revisions"]
       17 LENGTH                           R5 R6
       18 GETTABLE                         R3 R4 R5
       19 RETURN                           R3 1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_state"]
        2 GETTABLEKS                       R3 R3 K1 ["plans"]
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_state"]
        2 GETTABLEKS                       R3 R3 K1 ["plans"]
        4 GETTABLE                         R2 R3 R1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R0 K0 ["_state"]
        9 SETTABLEKS                       R1 R3 K2 ["activePlanId"]
       11 GETTABLEKS                       R4 R2 K3 ["revisions"]
       13 GETTABLEKS                       R6 R2 K3 ["revisions"]
       15 LENGTH                           R5 R6
       16 GETTABLE                         R3 R4 R5
       17 JUMPIFNOT                        R3 ; [+26]
       18 DUPTABLE                         R6 K10 [{"id", "name", "title", "summary", "completeDescription", "todo"}]
       19 SETTABLEKS                       R1 R6 K4 ["id"]
       21 GETTABLEKS                       R7 R2 K5 ["name"]
       23 SETTABLEKS                       R7 R6 K5 ["name"]
       25 GETTABLEKS                       R7 R3 K6 ["title"]
       27 SETTABLEKS                       R7 R6 K6 ["title"]
       29 GETTABLEKS                       R7 R3 K7 ["summary"]
       31 SETTABLEKS                       R7 R6 K7 ["summary"]
       33 GETTABLEKS                       R7 R3 K8 ["completeDescription"]
       35 SETTABLEKS                       R7 R6 K8 ["completeDescription"]
       37 GETTABLEKS                       R7 R3 K9 ["todo"]
       39 SETTABLEKS                       R7 R6 K9 ["todo"]
       41 NAMECALL                         R4 R0 K11 ["setPlan"]
       43 CALL                             R4 2 0
       44 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_state"]
        2 GETTABLEKS                       R1 R1 K1 ["activePlanId"]
        4 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_state"]
        2 GETTABLEKS                       R1 R1 K1 ["planMessageId"]
        4 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 SETTABLEKS                       R1 R2 K1 ["planMessageId"]
        4 GETTABLEKS                       R2 R0 K0 ["_state"]
        6 GETTABLEKS                       R2 R2 K2 ["onChanged"]
        8 NAMECALL                         R2 R2 K3 ["Fire"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 GETTABLEKS                       R2 R2 K1 ["onChanged"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["Connect"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R2
       10 RETURN                           R3 1

PROTO_22:
        0 ORK                              R2 R0 K0 ["DEFAULT_SESSION_ID"]
        1 ORK                              R3 R1 K1 ["DEFAULT_THREAD_ID"]
        2 LOADK                            R5 K2 ["%*::%*"]
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 NAMECALL                         R5 R5 K3 ["format"]
        7 CALL                             R5 3 1
        8 MOVE                             R4 R5
        9 RETURN                           R4 1

PROTO_23:
        0 DUPTABLE                         R0 K6 [{"plan", "plans", "activePlanId", "planMessageId", "planModeStateByThread", "onChanged"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["plan"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["plans"]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K2 ["activePlanId"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K3 ["planMessageId"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K4 ["planModeStateByThread"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K7 ["new"]
       21 CALL                             R1 0 1
       22 SETTABLEKS                       R1 R0 K5 ["onChanged"]
       24 DUPTABLE                         R2 K9 [{"_state"}]
       25 SETTABLEKS                       R0 R2 K8 ["_state"]
       27 GETUPVAL                         R3 1
       28 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       30 GETIMPORT                        R1 K11 [setmetatable]
       32 CALL                             R1 2 1
       33 RETURN                           R1 1

PROTO_24:
        0 ORK                              R3 R0 K0 ["DEFAULT_SESSION_ID"]
        1 ORK                              R4 R1 K1 ["DEFAULT_THREAD_ID"]
        2 LOADK                            R5 K2 ["%*::%*"]
        3 MOVE                             R7 R3
        4 MOVE                             R8 R4
        5 NAMECALL                         R5 R5 K3 ["format"]
        7 CALL                             R5 3 1
        8 MOVE                             R2 R5
        9 GETUPVAL                         R4 0
       10 GETTABLE                         R3 R4 R2
       11 JUMPIFNOT                        R3 ; [+1]
       12 RETURN                           R3 1
       13 GETUPVAL                         R4 1
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 0
       16 SETTABLE                         R4 R5 R2
       17 RETURN                           R4 1

PROTO_25:
        0 JUMPIF                           R0 ; [+12]
        1 LOADK                            R2 K0 ["DEFAULT_SESSION_ID::DEFAULT_THREAD_ID"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R2
        4 JUMPIFNOT                        R3 ; [+2]
        5 MOVE                             R1 R3
        6 RETURN                           R1 1
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 GETUPVAL                         R5 0
       10 SETTABLE                         R4 R5 R2
       11 MOVE                             R1 R4
       12 RETURN                           R1 1
       13 GETTABLEKS                       R2 R0 K1 ["sessionId"]
       15 GETTABLEKS                       R3 R0 K2 ["threadId"]
       17 ORK                              R5 R2 K3 ["DEFAULT_SESSION_ID"]
       18 ORK                              R6 R3 K4 ["DEFAULT_THREAD_ID"]
       19 LOADK                            R7 K5 ["%*::%*"]
       20 MOVE                             R9 R5
       21 MOVE                             R10 R6
       22 NAMECALL                         R7 R7 K6 ["format"]
       24 CALL                             R7 3 1
       25 MOVE                             R4 R7
       26 GETUPVAL                         R6 0
       27 GETTABLE                         R5 R6 R4
       28 JUMPIFNOT                        R5 ; [+2]
       29 MOVE                             R1 R5
       30 RETURN                           R1 1
       31 GETUPVAL                         R6 1
       32 CALL                             R6 0 1
       33 GETUPVAL                         R7 0
       34 SETTABLE                         R6 R7 R4
       35 MOVE                             R1 R6
       36 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETIMPORT                        R6 K2 [string.find]
        6 MOVE                             R7 R4
        7 LOADK                            R9 K3 ["::"]
        8 MOVE                             R10 R0
        9 CONCAT                           R8 R9 R10
       10 LOADN                            R9 1
       11 LOADB                            R10 1
       12 CALL                             R6 4 1
       13 JUMPIFNOT                        R6 ; [+5]
       14 NAMECALL                         R6 R5 K4 ["getPlanMessageId"]
       16 CALL                             R6 1 1
       17 JUMPIFNOT                        R6 ; [+1]
       18 RETURN                           R6 1
       19 FORGLOOP                         R1 2 ; [-16]
       21 LOADNIL                          R1
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["SystemReminderStrings"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Signal"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K11 [game]
       28 LOADK                            R6 K12 ["HttpService"]
       29 NAMECALL                         R4 R4 K13 ["GetService"]
       31 CALL                             R4 2 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Flags"]
       36 GETTABLEKS                       R6 R6 K15 ["FFlagAssistantMarkdownPlanMode"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K14 ["Flags"]
       43 GETTABLEKS                       R7 R7 K16 ["FFlagAssistantMultipleChatPersistence"]
       45 CALL                             R6 1 1
       46 NEWTABLE                         R7 32 0
       48 SETTABLEKS                       R7 R7 K17 ["__index"]
       50 DUPCLOSURE                       R8 K18 [PROTO_0]
       51 DUPCLOSURE                       R9 K19 [PROTO_1]
       52 SETTABLEKS                       R9 R7 K20 ["getPlan"]
       54 DUPCLOSURE                       R9 K21 [PROTO_2]
       55 SETTABLEKS                       R9 R7 K22 ["setPlan"]
       57 DUPCLOSURE                       R9 K23 [PROTO_3]
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R9 R7 K24 ["clearPlan"]
       61 DUPCLOSURE                       R9 K25 [PROTO_4]
       62 CAPTURE                          VAL R6
       63 SETTABLEKS                       R9 R7 K26 ["setTodoStateByIndex"]
       65 DUPCLOSURE                       R9 K27 [PROTO_5]
       66 SETTABLEKS                       R9 R7 K28 ["completeTodoByIndex"]
       68 DUPCLOSURE                       R9 K29 [PROTO_6]
       69 CAPTURE                          VAL R6
       70 SETTABLEKS                       R9 R7 K30 ["completeTodosByIndices"]
       72 DUPCLOSURE                       R9 K31 [PROTO_7]
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R9 R7 K32 ["getPersistentPlanSystemReminder"]
       76 DUPCLOSURE                       R9 K33 [PROTO_8]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R9 R7 K34 ["onStartNewPlan"]
       81 DUPCLOSURE                       R9 K35 [PROTO_9]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R9 R7 K36 ["onEndPlan"]
       86 DUPCLOSURE                       R9 K37 [PROTO_10]
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R9 R7 K38 ["getPlanModeSystemReminder"]
       90 DUPCLOSURE                       R9 K39 [PROTO_11]
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R9 R7 K40 ["createPlan"]
       94 DUPCLOSURE                       R9 K41 [PROTO_12]
       95 SETTABLEKS                       R9 R7 K42 ["addRevision"]
       97 DUPCLOSURE                       R9 K43 [PROTO_13]
       98 SETTABLEKS                       R9 R7 K44 ["updateTodosForPlan"]
      100 DUPCLOSURE                       R9 K45 [PROTO_14]
      101 SETTABLEKS                       R9 R7 K46 ["getLatestRevision"]
      103 DUPCLOSURE                       R9 K47 [PROTO_15]
      104 SETTABLEKS                       R9 R7 K48 ["getPlanById"]
      106 DUPCLOSURE                       R9 K49 [PROTO_16]
      107 SETTABLEKS                       R9 R7 K50 ["activatePlan"]
      109 DUPCLOSURE                       R9 K51 [PROTO_17]
      110 SETTABLEKS                       R9 R7 K52 ["getActivePlanId"]
      112 DUPCLOSURE                       R9 K53 [PROTO_18]
      113 SETTABLEKS                       R9 R7 K54 ["getPlanMessageId"]
      115 DUPCLOSURE                       R9 K55 [PROTO_19]
      116 SETTABLEKS                       R9 R7 K56 ["setPlanMessageId"]
      118 DUPCLOSURE                       R9 K57 [PROTO_21]
      119 SETTABLEKS                       R9 R7 K58 ["subscribe"]
      121 NEWTABLE                         R9 0 0
      123 DUPCLOSURE                       R10 K59 [PROTO_22]
      124 DUPCLOSURE                       R11 K60 [PROTO_23]
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R7
      127 DUPCLOSURE                       R12 K61 [PROTO_24]
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R11
      130 DUPCLOSURE                       R13 K62 [PROTO_25]
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R11
      133 DUPCLOSURE                       R14 K63 [PROTO_26]
      134 CAPTURE                          VAL R9
      135 DUPTABLE                         R15 K68 [{"create", "getRuntime", "getRuntimeForMeta", "getPlanMessageIdForThread"}]
      136 SETTABLEKS                       R11 R15 K64 ["create"]
      138 SETTABLEKS                       R12 R15 K65 ["getRuntime"]
      140 SETTABLEKS                       R13 R15 K66 ["getRuntimeForMeta"]
      142 SETTABLEKS                       R14 R15 K67 ["getPlanMessageIdForThread"]
      144 RETURN                           R15 1
