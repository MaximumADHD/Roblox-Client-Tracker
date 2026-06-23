PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["rootState"]
        3 GETTABLEKS                       R2 R2 K1 ["instanceIdsToNodes"]
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       12 LOADK                            R4 K2 ["Selecting unknown instance"]
       13 GETIMPORT                        R2 K4 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R3 R1 K5 ["datum"]
       18 GETTABLEKS                       R3 R3 K6 ["isGhost"]
       20 NOT                              R2 R3
       21 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.isfrozen]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 FASTCALL2K                       ASSERT R2 K3 ; [+4]
        6 LOADK                            R3 K3 ["Selection is not frozen, table.freeze it before sending"]
        7 GETIMPORT                        R1 K5 [assert]
        9 CALL                             R1 2 0
       10 NEWTABLE                         R1 0 0
       12 GETUPVAL                         R2 0
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+6]
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R0
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U2
       19 CALL                             R2 2 1
       20 MOVE                             R0 R2
       21 GETUPVAL                         R3 3
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+5]
       24 GETUPVAL                         R2 4
       25 GETTABLEKS                       R2 R2 K6 ["get"]
       27 CALL                             R2 0 1
       28 JUMP                             ; [+2]
       29 NEWTABLE                         R2 0 0
       31 GETUPVAL                         R4 3
       32 CALL                             R4 0 1
       33 JUMPIFNOT                        R4 ; [+11]
       34 LENGTH                           R4 R0
       35 GETUPVAL                         R6 5
       36 GETTABLEKS                       R6 R6 K6 ["get"]
       38 CALL                             R6 0 1
       39 LENGTH                           R5 R6
       40 JUMPIFNOTEQ                      R4 R5 ; [+2]
       42 LOADB                            R3 0 +1
       43 LOADB                            R3 1
       44 JUMP                             ; [+1]
       45 LOADB                            R3 0
       46 MOVE                             R4 R0
       47 LOADNIL                          R5
       48 LOADNIL                          R6
       49 FORGPREP                         R4
       50 GETUPVAL                         R9 3
       51 CALL                             R9 0 1
       52 JUMPIFNOT                        R9 ; [+4]
       53 JUMPIF                           R3 ; [+3]
       54 GETTABLE                         R9 R2 R8
       55 JUMPIF                           R9 ; [+1]
       56 LOADB                            R3 1
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R10 R10 K7 ["rootState"]
       60 GETTABLEKS                       R10 R10 K8 ["instanceIdsToNodes"]
       62 GETTABLE                         R9 R10 R8
       63 JUMPIFNOTEQKNIL                  R9 ; [+2]
       65 LOADB                            R11 0 +1
       66 LOADB                            R11 1
       67 FASTCALL2K                       ASSERT R11 K9 ; [+4]
       69 LOADK                            R12 K9 ["Selecting unknown instance"]
       70 GETIMPORT                        R10 K5 [assert]
       72 CALL                             R10 2 0
       73 GETTABLEKS                       R10 R9 K10 ["parent"]
       75 JUMPIFEQKNIL                     R10 ; [+10]
       77 GETTABLEKS                       R11 R10 K11 ["datum"]
       79 GETTABLEKS                       R11 R11 K12 ["id"]
       81 LOADB                            R12 1
       82 SETTABLE                         R12 R1 R11
       83 GETTABLEKS                       R10 R10 K10 ["parent"]
       85 JUMPBACK                         ; [-11]
       86 FORGLOOP                         R4 2 ; [-37]
       88 GETUPVAL                         R4 3
       89 CALL                             R4 0 1
       90 JUMPIFNOT                        R4 ; [+2]
       91 JUMPIF                           R3 ; [+1]
       92 RETURN                           R0 0
       93 GETUPVAL                         R4 6
       94 GETUPVAL                         R5 7
       95 MOVE                             R6 R0
       96 CALL                             R5 1 -1
       97 CALL                             R4 -1 0
       98 GETUPVAL                         R4 8
       99 MOVE                             R5 R0
      100 CALL                             R4 1 0
      101 GETUPVAL                         R4 9
      102 MOVE                             R5 R1
      103 CALL                             R4 1 0
      104 GETUPVAL                         R4 2
      105 GETTABLEKS                       R4 R4 K13 ["guestRpcInterface"]
      107 GETTABLEKS                       R4 R4 K14 ["setSelection"]
      109 MOVE                             R5 R0
      110 CALL                             R4 1 0
      111 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R5 0 0
        2 MOVE                             R6 R1
        3 LOADNIL                          R7
        4 LOADNIL                          R8
        5 FORGPREP                         R6
        6 GETTABLEKS                       R13 R10 K0 ["parentId"]
        8 JUMPIFNOTEQKNIL                  R13 ; [+2]
       10 LOADB                            R12 0 +1
       11 LOADB                            R12 1
       12 FASTCALL2K                       ASSERT R12 K1 ; [+4]
       14 LOADK                            R13 K1 ["Selecting instance not in data model. Selection:Set() should filter this out."]
       15 GETIMPORT                        R11 K3 [assert]
       17 CALL                             R11 2 0
       18 GETUPVAL                         R12 0
       19 GETTABLEKS                       R12 R12 K4 ["rootState"]
       21 GETTABLEKS                       R12 R12 K5 ["instanceIdsToNodes"]
       23 GETTABLEKS                       R13 R10 K0 ["parentId"]
       25 GETTABLE                         R11 R12 R13
       26 JUMPIFNOTEQKNIL                  R11 ; [+2]
       28 LOADB                            R13 0 +1
       29 LOADB                            R13 1
       30 FASTCALL2K                       ASSERT R13 K6 ; [+4]
       32 LOADK                            R14 K6 ["New datum is under a parent we don't know about"]
       33 GETIMPORT                        R12 K3 [assert]
       35 CALL                             R12 2 0
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R13 R13 K4 ["rootState"]
       39 GETTABLEKS                       R13 R13 K5 ["instanceIdsToNodes"]
       41 GETTABLEKS                       R14 R10 K7 ["id"]
       43 GETTABLE                         R12 R13 R14
       44 JUMPIFEQKNIL                     R12 ; [+11]
       46 GETUPVAL                         R13 1
       47 GETTABLEKS                       R13 R13 K8 ["insertInto"]
       49 GETUPVAL                         R14 0
       50 GETTABLEKS                       R14 R14 K4 ["rootState"]
       52 MOVE                             R15 R11
       53 MOVE                             R16 R12
       54 CALL                             R13 3 0
       55 JUMP                             ; [+36]
       56 GETUPVAL                         R13 2
       57 CALL                             R13 0 1
       58 JUMPIFNOT                        R13 ; [+9]
       59 GETUPVAL                         R13 3
       60 GETTABLEKS                       R13 R13 K9 ["expandKnownInstance"]
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R14 R14 K4 ["rootState"]
       65 GETTABLEKS                       R15 R10 K0 ["parentId"]
       67 CALL                             R13 2 0
       68 GETUPVAL                         R13 1
       69 GETTABLEKS                       R13 R13 K8 ["insertInto"]
       71 GETUPVAL                         R14 0
       72 GETTABLEKS                       R14 R14 K4 ["rootState"]
       74 MOVE                             R15 R11
       75 GETUPVAL                         R16 4
       76 GETTABLEKS                       R16 R16 K10 ["createFromDatum"]
       78 MOVE                             R17 R10
       79 CALL                             R16 1 -1
       80 CALL                             R13 -1 0
       81 JUMPIFEQKNIL                     R11 ; [+10]
       83 GETTABLEKS                       R13 R11 K11 ["datum"]
       85 GETTABLEKS                       R13 R13 K7 ["id"]
       87 LOADB                            R14 1
       88 SETTABLE                         R14 R5 R13
       89 GETTABLEKS                       R11 R11 K12 ["parent"]
       91 JUMPBACK                         ; [-11]
       92 FORGLOOP                         R6 2 ; [-87]
       94 MOVE                             R6 R0
       95 LOADNIL                          R7
       96 LOADNIL                          R8
       97 FORGPREP                         R6
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K4 ["rootState"]
      101 GETTABLEKS                       R12 R12 K5 ["instanceIdsToNodes"]
      103 GETTABLE                         R11 R12 R10
      104 JUMPIFNOTEQKNIL                  R11 ; [+36]
      106 GETUPVAL                         R12 0
      107 GETTABLEKS                       R12 R12 K13 ["analyticsInterface"]
      109 GETTABLEKS                       R12 R12 K14 ["logEvent"]
      111 GETUPVAL                         R13 5
      112 DUPTABLE                         R14 K19 [{"firstSelectedName", "selectionCount", "dataModelType", "timeSinceStart"}]
      113 SETTABLEKS                       R2 R14 K15 ["firstSelectedName"]
      115 LENGTH                           R15 R0
      116 SETTABLEKS                       R15 R14 K16 ["selectionCount"]
      118 SETTABLEKS                       R3 R14 K17 ["dataModelType"]
      120 JUMPIFNOTEQKNIL                  R4 ; [+3]
      122 LOADNIL                          R15
      123 JUMP                             ; [+4]
      124 GETIMPORT                        R16 K22 [os.clock]
      126 CALL                             R16 0 1
      127 SUB                              R15 R16 R4
      128 SETTABLEKS                       R15 R14 K18 ["timeSinceStart"]
      130 CALL                             R12 2 0
      131 GETIMPORT                        R12 K24 [error]
      133 LOADK                            R14 K25 ["Selecting unknown instance %*, with selection count %*"]
      134 MOVE                             R16 R2
      135 LENGTH                           R17 R0
      136 NAMECALL                         R14 R14 K26 ["format"]
      138 CALL                             R14 3 1
      139 MOVE                             R13 R14
      140 CALL                             R12 1 0
      141 GETTABLEKS                       R14 R11 K11 ["datum"]
      143 GETTABLEKS                       R14 R14 K0 ["parentId"]
      145 JUMPIFNOTEQKNIL                  R14 ; [+2]
      147 LOADB                            R13 0 +1
      148 LOADB                            R13 1
      149 FASTCALL2K                       ASSERT R13 K27 ; [+4]
      151 LOADK                            R14 K27 ["Selecting instance not in data model."]
      152 GETIMPORT                        R12 K3 [assert]
      154 CALL                             R12 2 0
      155 GETUPVAL                         R12 2
      156 CALL                             R12 0 1
      157 JUMPIFNOT                        R12 ; [+11]
      158 GETUPVAL                         R12 3
      159 GETTABLEKS                       R12 R12 K9 ["expandKnownInstance"]
      161 GETUPVAL                         R13 0
      162 GETTABLEKS                       R13 R13 K4 ["rootState"]
      164 GETTABLEKS                       R14 R11 K11 ["datum"]
      166 GETTABLEKS                       R14 R14 K0 ["parentId"]
      168 CALL                             R12 2 0
      169 GETTABLEKS                       R12 R11 K12 ["parent"]
      171 JUMPIFEQKNIL                     R12 ; [+10]
      173 GETTABLEKS                       R13 R12 K11 ["datum"]
      175 GETTABLEKS                       R13 R13 K7 ["id"]
      177 LOADB                            R14 1
      178 SETTABLE                         R14 R5 R13
      179 GETTABLEKS                       R12 R12 K12 ["parent"]
      181 JUMPBACK                         ; [-11]
      182 FORGLOOP                         R6 2 ; [-85]
      184 GETUPVAL                         R6 0
      185 GETTABLEKS                       R6 R6 K4 ["rootState"]
      187 GETTABLEKS                       R6 R6 K28 ["queueRootChanged"]
      189 CALL                             R6 0 0
      190 GETUPVAL                         R6 6
      191 GETIMPORT                        R7 K31 [table.freeze]
      193 MOVE                             R8 R0
      194 CALL                             R7 1 -1
      195 CALL                             R6 -1 0
      196 GETUPVAL                         R6 7
      197 GETUPVAL                         R7 8
      198 MOVE                             R8 R0
      199 CALL                             R7 1 -1
      200 CALL                             R6 -1 0
      201 GETUPVAL                         R6 9
      202 MOVE                             R7 R5
      203 CALL                             R6 1 0
      204 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["create"]
        3 GETIMPORT                        R3 K3 [table.freeze]
        5 NEWTABLE                         R4 0 0
        7 CALL                             R3 1 1
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["create"]
       12 GETIMPORT                        R5 K3 [table.freeze]
       14 NEWTABLE                         R6 0 0
       16 CALL                             R5 1 1
       17 CALL                             R4 1 2
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K0 ["create"]
       21 GETIMPORT                        R7 K3 [table.freeze]
       23 NEWTABLE                         R8 0 0
       25 CALL                             R7 1 1
       26 CALL                             R6 1 2
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R7
       38 NEWCLOSURE                       R9 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R7
       49 DUPTABLE                         R10 K9 [{"selectIds", "selectionChanged", "selectedIdsObservable", "selectedIdsArrayObservable", "selectedWithinIdsObservable"}]
       50 SETTABLEKS                       R8 R10 K4 ["selectIds"]
       52 SETTABLEKS                       R9 R10 K5 ["selectionChanged"]
       54 SETTABLEKS                       R2 R10 K6 ["selectedIdsObservable"]
       56 SETTABLEKS                       R4 R10 K7 ["selectedIdsArrayObservable"]
       58 SETTABLEKS                       R6 R10 K8 ["selectedWithinIdsObservable"]
       60 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Networking"]
       18 GETTABLEKS                       R3 R3 K9 ["createSession"]
       20 GETTABLEKS                       R3 R3 K10 ["Expanding"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Networking"]
       27 GETTABLEKS                       R4 R4 K9 ["createSession"]
       29 GETTABLEKS                       R4 R4 K11 ["ExplorerNode"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["Observable"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["RpcTypes"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Networking"]
       48 GETTABLEKS                       R7 R7 K9 ["createSession"]
       50 GETTABLEKS                       R7 R7 K15 ["SessionChildren"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K8 ["Networking"]
       57 GETTABLEKS                       R8 R8 K9 ["createSession"]
       59 GETTABLEKS                       R8 R8 K16 ["createSessionTypes"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K12 ["Util"]
       66 GETTABLEKS                       R9 R9 K17 ["filterList"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K18 ["Flags"]
       73 GETTABLEKS                       R10 R10 K19 ["getFFlagExplorerNoRedundantSelections"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K18 ["Flags"]
       80 GETTABLEKS                       R11 R11 K20 ["getFFlagExplorerStreaming"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K12 ["Util"]
       87 GETTABLEKS                       R12 R12 K21 ["instanceIdsToSet"]
       89 CALL                             R11 1 1
       90 DUPTABLE                         R12 K27 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
       91 LOADK                            R13 K28 ["LuaExplorerUnknownSelection"]
       92 SETTABLEKS                       R13 R12 K22 ["eventName"]
       94 NEWTABLE                         R13 0 1
       96 LOADK                            R14 K29 ["Points"]
       97 SETLIST                          R13 R14 1 [1]
       99 SETTABLEKS                       R13 R12 K23 ["backends"]
      101 GETIMPORT                        R13 K31 [game]
      103 LOADK                            R15 K32 ["LuaExplorerUnknownSelectionThrottlingHundredthsPercent"]
      104 LOADN                            R16 16
      105 NAMECALL                         R13 R13 K33 ["DefineFastInt"]
      107 CALL                             R13 3 1
      108 SETTABLEKS                       R13 R12 K24 ["throttlingPercentage"]
      110 LOADK                            R13 K34 ["Fires when Explorer errors with an unknown selection."]
      111 SETTABLEKS                       R13 R12 K25 ["description"]
      113 LOADK                            R13 K35 ["2025-05-12"]
      114 SETTABLEKS                       R13 R12 K26 ["lastUpdated"]
      116 DUPCLOSURE                       R13 K36 [PROTO_3]
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R12
      126 RETURN                           R13 1
