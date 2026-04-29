PROTO_0:
        0 LOADK                            R1 K0 [""]
        1 GETTABLEKS                       R2 R0 K1 ["planNode"]
        3 JUMPIFNOT                        R2 ; [+31]
        4 GETTABLEKS                       R5 R2 K2 ["instance"]
        6 FASTCALL1                        TYPEOF R5 ; [+2]
        7 GETIMPORT                        R4 K4 [typeof]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K5 ["Instance"] ; [+10]
       12 GETTABLEKS                       R4 R2 K6 ["phrase"]
       14 LOADK                            R5 K7 ["/"]
       15 GETTABLEKS                       R7 R2 K2 ["instance"]
       17 GETTABLEKS                       R6 R7 K8 ["Name"]
       19 CONCAT                           R3 R4 R6
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R3 R2 K6 ["phrase"]
       23 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
       25 MOVE                             R1 R3
       26 JUMP                             ; [+5]
       27 GETTABLEKS                       R4 R2 K6 ["phrase"]
       29 LOADK                            R5 K7 ["/"]
       30 MOVE                             R6 R1
       31 CONCAT                           R1 R4 R6
       32 GETTABLEKS                       R2 R2 K9 ["parent"]
       34 JUMPBACK                         ; [-32]
       35 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R1 K0 [""]
        1 GETTABLEKS                       R2 R0 K1 ["planNode"]
        3 JUMPIFNOT                        R2 ; [+34]
        4 GETTABLEKS                       R3 R2 K2 ["isRoot"]
        6 JUMPIF                           R3 ; [+31]
        7 GETTABLEKS                       R5 R2 K3 ["instance"]
        9 FASTCALL1                        TYPEOF R5 ; [+2]
       10 GETIMPORT                        R4 K5 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKS                    R4 K6 ["Instance"] ; [+10]
       15 GETTABLEKS                       R4 R2 K7 ["phrase"]
       17 LOADK                            R5 K8 [" › "]
       18 GETTABLEKS                       R7 R2 K3 ["instance"]
       20 GETTABLEKS                       R6 R7 K9 ["Name"]
       22 CONCAT                           R3 R4 R6
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R3 R2 K7 ["phrase"]
       26 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
       28 MOVE                             R1 R3
       29 JUMP                             ; [+5]
       30 GETTABLEKS                       R4 R2 K7 ["phrase"]
       32 LOADK                            R5 K8 [" › "]
       33 MOVE                             R6 R1
       34 CONCAT                           R1 R4 R6
       35 GETTABLEKS                       R2 R2 K10 ["parent"]
       37 JUMPBACK                         ; [-35]
       38 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R2 K4 [{"ancestorTitles", "title", "fullName", "status"}]
        1 SETTABLEKS                       R1 R2 K0 ["ancestorTitles"]
        3 GETTABLEKS                       R4 R0 K5 ["planNode"]
        5 GETTABLEKS                       R3 R4 K6 ["phrase"]
        7 SETTABLEKS                       R3 R2 K1 ["title"]
        9 LOADK                            R3 K7 ["%s/%s"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K8 ["join"]
       13 MOVE                             R6 R1
       14 LOADK                            R7 K9 ["/"]
       15 CALL                             R5 2 1
       16 GETTABLEKS                       R7 R0 K5 ["planNode"]
       18 GETTABLEKS                       R6 R7 K6 ["phrase"]
       20 NAMECALL                         R3 R3 K10 ["format"]
       22 CALL                             R3 3 1
       23 SETTABLEKS                       R3 R2 K2 ["fullName"]
       25 GETTABLEKS                       R4 R0 K3 ["status"]
       27 JUMPIFNOTEQKS                    R4 K11 ["Success"] ; [+3]
       29 LOADK                            R3 K12 ["passed"]
       30 JUMP                             ; [+7]
       31 GETTABLEKS                       R4 R0 K3 ["status"]
       33 JUMPIFNOTEQKS                    R4 K13 ["Failure"] ; [+3]
       35 LOADK                            R3 K14 ["failed"]
       36 JUMP                             ; [+1]
       37 LOADK                            R3 K15 ["pending"]
       38 SETTABLEKS                       R3 R2 K3 ["status"]
       40 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["planNode"]
        2 GETTABLEKS                       R2 R3 K1 ["type"]
        4 JUMPIFNOTEQKS                    R2 K2 ["It"] ; [+12]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R1
        8 GETUPVAL                         R6 1
        9 CALL                             R4 2 1
       10 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K5 [table.insert]
       15 CALL                             R2 2 0
       16 RETURN                           R0 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K6 ["concat"]
       20 NEWTABLE                         R3 0 0
       22 GETUPVAL                         R4 1
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R7 R1 K0 ["planNode"]
       27 GETTABLEKS                       R6 R7 K7 ["phrase"]
       29 SETLIST                          R5 R6 1 [1]
       31 CALL                             R2 3 1
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R3 R4 K6 ["concat"]
       35 MOVE                             R4 R0
       36 GETUPVAL                         R5 3
       37 MOVE                             R6 R1
       38 MOVE                             R7 R2
       39 CALL                             R5 2 -1
       40 CALL                             R3 -1 1
       41 MOVE                             R0 R3
       42 RETURN                           R0 1

PROTO_4:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["reduce"]
        7 GETTABLEKS                       R4 R0 K1 ["children"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R6 0 0
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["planNode"]
        2 GETTABLEKS                       R2 R3 K1 ["isRoot"]
        4 JUMPIFNOT                        R2 ; [+11]
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R1
        7 GETUPVAL                         R6 1
        8 CALL                             R4 2 1
        9 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K4 [table.insert]
       14 CALL                             R2 2 0
       15 RETURN                           R0 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K5 ["concat"]
       19 NEWTABLE                         R3 0 0
       21 GETUPVAL                         R4 1
       22 NEWTABLE                         R5 0 1
       24 GETTABLEKS                       R7 R1 K0 ["planNode"]
       26 GETTABLEKS                       R6 R7 K6 ["phrase"]
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R2 3 1
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R3 R4 K5 ["concat"]
       34 MOVE                             R4 R0
       35 GETUPVAL                         R5 3
       36 MOVE                             R6 R1
       37 MOVE                             R7 R2
       38 CALL                             R5 2 -1
       39 CALL                             R3 -1 1
       40 MOVE                             R0 R3
       41 RETURN                           R0 1

PROTO_6:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["reduce"]
        7 GETTABLEKS                       R4 R0 K1 ["children"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R6 0 0
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["filter"]
        3 MOVE                             R4 R0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R3 2 1
        7 LENGTH                           R2 R3
        8 RETURN                           R2 1

PROTO_9:
        0 DUPTABLE                         R1 K3 [{"context", "duration", "path"}]
        1 DUPTABLE                         R2 K5 [{"config"}]
        2 DUPTABLE                         R3 K7 [{"rootDir"}]
        3 LOADK                            R4 K8 ["/"]
        4 SETTABLEKS                       R4 R3 K6 ["rootDir"]
        6 SETTABLEKS                       R3 R2 K4 ["config"]
        8 SETTABLEKS                       R2 R1 K0 ["context"]
       10 LOADN                            R2 0
       11 SETTABLEKS                       R2 R1 K1 ["duration"]
       13 GETUPVAL                         R2 0
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K2 ["path"]
       18 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["red"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K1 ["bold"]
        6 LOADK                            R8 K2 ["  ● "]
        7 GETUPVAL                         R9 1
        8 GETUPVAL                         R10 2
        9 CALL                             R9 1 1
       10 CONCAT                           R7 R8 R9
       11 CALL                             R6 1 -1
       12 CALL                             R5 -1 1
       13 MOVE                             R2 R5
       14 LOADK                            R3 K3 ["\n\n"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K4 ["trim"]
       18 MOVE                             R5 R0
       19 CALL                             R4 1 1
       20 CONCAT                           R1 R2 R4
       21 RETURN                           R1 1

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["status"]
        4 JUMPIFNOTEQKS                    R2 K1 ["Failure"] ; [+35]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["concat"]
        9 MOVE                             R3 R1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K3 ["map"]
       13 GETTABLEKS                       R5 R0 K4 ["errors"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 CALL                             R4 2 -1
       21 CALL                             R2 -1 1
       22 MOVE                             R1 R2
       23 GETIMPORT                        R2 K6 [ipairs]
       25 GETTABLEKS                       R3 R0 K7 ["children"]
       27 CALL                             R2 1 3
       28 FORGPREP_INEXT                   R2
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K2 ["concat"]
       32 MOVE                             R8 R1
       33 GETUPVAL                         R9 4
       34 MOVE                             R10 R6
       35 CALL                             R9 1 -1
       36 CALL                             R7 -1 1
       37 MOVE                             R1 R7
       38 FORGLOOP                         R2 2 [inext] ; [-10]
       40 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 DUPTABLE                         R3 K12 [{"snapshot", "failureMessage", "testFilePath", "numFailingTests", "numPassingTests", "numPendingTests", "numTodoTests", "testResults", "skipped", "leaks", "openHandles", "perfStats"}]
        7 DUPTABLE                         R4 K21 [{"added", "fileDeleted", "matched", "unchecked", "unmatched", "updated", "total", "uncheckedKeys"}]
        8 LOADN                            R5 0
        9 SETTABLEKS                       R5 R4 K13 ["added"]
       11 LOADB                            R5 0
       12 SETTABLEKS                       R5 R4 K14 ["fileDeleted"]
       14 LOADN                            R5 0
       15 SETTABLEKS                       R5 R4 K15 ["matched"]
       17 LOADN                            R5 0
       18 SETTABLEKS                       R5 R4 K16 ["unchecked"]
       20 LOADN                            R5 0
       21 SETTABLEKS                       R5 R4 K17 ["unmatched"]
       23 LOADN                            R5 0
       24 SETTABLEKS                       R5 R4 K18 ["updated"]
       26 LOADN                            R5 0
       27 SETTABLEKS                       R5 R4 K19 ["total"]
       29 NEWTABLE                         R5 0 0
       31 SETTABLEKS                       R5 R4 K20 ["uncheckedKeys"]
       33 SETTABLEKS                       R4 R3 K0 ["snapshot"]
       35 LENGTH                           R5 R2
       36 LOADN                            R6 0
       37 JUMPIFNOTLT                      R6 R5 ; [+12]
       39 LOADK                            R5 K22 ["\n"]
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R8 R9 K23 ["join"]
       43 MOVE                             R9 R2
       44 LOADK                            R10 K24 ["\n\n"]
       45 CALL                             R8 2 1
       46 MOVE                             R6 R8
       47 LOADK                            R7 K22 ["\n"]
       48 CONCAT                           R4 R5 R7
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R3 K1 ["failureMessage"]
       53 GETUPVAL                         R4 3
       54 MOVE                             R5 R0
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R3 K2 ["testFilePath"]
       58 GETUPVAL                         R6 2
       59 GETTABLEKS                       R5 R6 K25 ["filter"]
       61 MOVE                             R6 R1
       62 LOADK                            R8 K26 ["failed"]
       63 NEWCLOSURE                       R7 P0
       64 CAPTURE                          VAL R8
       65 CALL                             R5 2 1
       66 LENGTH                           R4 R5
       67 SETTABLEKS                       R4 R3 K3 ["numFailingTests"]
       69 GETUPVAL                         R6 2
       70 GETTABLEKS                       R5 R6 K25 ["filter"]
       72 MOVE                             R6 R1
       73 LOADK                            R8 K27 ["passed"]
       74 NEWCLOSURE                       R7 P0
       75 CAPTURE                          VAL R8
       76 CALL                             R5 2 1
       77 LENGTH                           R4 R5
       78 SETTABLEKS                       R4 R3 K4 ["numPassingTests"]
       80 GETUPVAL                         R6 2
       81 GETTABLEKS                       R5 R6 K25 ["filter"]
       83 MOVE                             R6 R1
       84 LOADK                            R8 K28 ["pending"]
       85 NEWCLOSURE                       R7 P0
       86 CAPTURE                          VAL R8
       87 CALL                             R5 2 1
       88 LENGTH                           R4 R5
       89 SETTABLEKS                       R4 R3 K5 ["numPendingTests"]
       91 GETUPVAL                         R6 2
       92 GETTABLEKS                       R5 R6 K25 ["filter"]
       94 MOVE                             R6 R1
       95 LOADK                            R8 K29 ["todo"]
       96 NEWCLOSURE                       R7 P0
       97 CAPTURE                          VAL R8
       98 CALL                             R5 2 1
       99 LENGTH                           R4 R5
      100 SETTABLEKS                       R4 R3 K6 ["numTodoTests"]
      102 SETTABLEKS                       R1 R3 K7 ["testResults"]
      104 GETTABLEKS                       R5 R0 K30 ["status"]
      106 JUMPIFEQKS                       R5 K31 ["Skipped"] ; [+2]
      108 LOADB                            R4 0 +1
      109 LOADB                            R4 1
      110 SETTABLEKS                       R4 R3 K8 ["skipped"]
      112 LOADB                            R4 0
      113 SETTABLEKS                       R4 R3 K9 ["leaks"]
      115 NEWTABLE                         R4 0 0
      117 SETTABLEKS                       R4 R3 K10 ["openHandles"]
      119 LOADNIL                          R4
      120 SETTABLEKS                       R4 R3 K11 ["perfStats"]
      122 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 DUPTABLE                         R3 K16 [{"numFailedTests", "numPassedTests", "numPendingTests", "numTodoTests", "numTotalTests", "numFailedTestSuites", "numPassedTestSuites", "numPendingTestSuites", "numTotalTestSuites", "numRuntimeErrorTestSuites", "openHandles", "snapshot", "startTime", "success", "testResults", "wasInterrupted"}]
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K17 ["filter"]
       10 MOVE                             R6 R1
       11 LOADK                            R8 K18 ["failed"]
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          VAL R8
       14 CALL                             R5 2 1
       15 LENGTH                           R4 R5
       16 SETTABLEKS                       R4 R3 K0 ["numFailedTests"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K17 ["filter"]
       21 MOVE                             R6 R1
       22 LOADK                            R8 K19 ["passed"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R8
       25 CALL                             R5 2 1
       26 LENGTH                           R4 R5
       27 SETTABLEKS                       R4 R3 K1 ["numPassedTests"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K17 ["filter"]
       32 MOVE                             R6 R1
       33 LOADK                            R8 K20 ["pending"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R8
       36 CALL                             R5 2 1
       37 LENGTH                           R4 R5
       38 SETTABLEKS                       R4 R3 K2 ["numPendingTests"]
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R5 R6 K17 ["filter"]
       43 MOVE                             R6 R1
       44 LOADK                            R8 K21 ["todo"]
       45 NEWCLOSURE                       R7 P0
       46 CAPTURE                          VAL R8
       47 CALL                             R5 2 1
       48 LENGTH                           R4 R5
       49 SETTABLEKS                       R4 R3 K3 ["numTodoTests"]
       51 LENGTH                           R4 R1
       52 SETTABLEKS                       R4 R3 K4 ["numTotalTests"]
       54 GETUPVAL                         R6 2
       55 GETTABLEKS                       R5 R6 K17 ["filter"]
       57 MOVE                             R6 R2
       58 LOADK                            R8 K18 ["failed"]
       59 NEWCLOSURE                       R7 P0
       60 CAPTURE                          VAL R8
       61 CALL                             R5 2 1
       62 LENGTH                           R4 R5
       63 SETTABLEKS                       R4 R3 K5 ["numFailedTestSuites"]
       65 GETUPVAL                         R6 2
       66 GETTABLEKS                       R5 R6 K17 ["filter"]
       68 MOVE                             R6 R2
       69 LOADK                            R8 K19 ["passed"]
       70 NEWCLOSURE                       R7 P0
       71 CAPTURE                          VAL R8
       72 CALL                             R5 2 1
       73 LENGTH                           R4 R5
       74 SETTABLEKS                       R4 R3 K6 ["numPassedTestSuites"]
       76 GETUPVAL                         R6 2
       77 GETTABLEKS                       R5 R6 K17 ["filter"]
       79 MOVE                             R6 R2
       80 LOADK                            R8 K20 ["pending"]
       81 NEWCLOSURE                       R7 P0
       82 CAPTURE                          VAL R8
       83 CALL                             R5 2 1
       84 LENGTH                           R4 R5
       85 SETTABLEKS                       R4 R3 K7 ["numPendingTestSuites"]
       87 LENGTH                           R4 R2
       88 SETTABLEKS                       R4 R3 K8 ["numTotalTestSuites"]
       90 LOADN                            R4 0
       91 SETTABLEKS                       R4 R3 K9 ["numRuntimeErrorTestSuites"]
       93 NEWTABLE                         R4 0 0
       95 SETTABLEKS                       R4 R3 K10 ["openHandles"]
       97 DUPTABLE                         R4 K36 [{"added", "didUpdate", "failure", "filesAdded", "filesRemoved", "filesRemovedList", "filesUnmatched", "filesUpdated", "matched", "total", "unchecked", "uncheckedKeysByFile", "unmatched", "updated"}]
       98 LOADN                            R5 0
       99 SETTABLEKS                       R5 R4 K22 ["added"]
      101 LOADB                            R5 0
      102 SETTABLEKS                       R5 R4 K23 ["didUpdate"]
      104 LOADB                            R5 0
      105 SETTABLEKS                       R5 R4 K24 ["failure"]
      107 LOADN                            R5 0
      108 SETTABLEKS                       R5 R4 K25 ["filesAdded"]
      110 LOADN                            R5 0
      111 SETTABLEKS                       R5 R4 K26 ["filesRemoved"]
      113 NEWTABLE                         R5 0 0
      115 SETTABLEKS                       R5 R4 K27 ["filesRemovedList"]
      117 LOADN                            R5 0
      118 SETTABLEKS                       R5 R4 K28 ["filesUnmatched"]
      120 LOADN                            R5 0
      121 SETTABLEKS                       R5 R4 K29 ["filesUpdated"]
      123 LOADN                            R5 0
      124 SETTABLEKS                       R5 R4 K30 ["matched"]
      126 LOADN                            R5 0
      127 SETTABLEKS                       R5 R4 K31 ["total"]
      129 LOADN                            R5 0
      130 SETTABLEKS                       R5 R4 K32 ["unchecked"]
      132 NEWTABLE                         R5 0 0
      134 SETTABLEKS                       R5 R4 K33 ["uncheckedKeysByFile"]
      136 LOADN                            R5 0
      137 SETTABLEKS                       R5 R4 K34 ["unmatched"]
      139 LOADN                            R5 0
      140 SETTABLEKS                       R5 R4 K35 ["updated"]
      142 SETTABLEKS                       R4 R3 K11 ["snapshot"]
      144 GETTABLEKS                       R4 R0 K12 ["startTime"]
      146 JUMPIF                           R4 ; [+5]
      147 GETIMPORT                        R5 K39 [DateTime.now]
      149 CALL                             R5 0 1
      150 GETTABLEKS                       R4 R5 K40 ["UnixTimestampMillis"]
      152 SETTABLEKS                       R4 R3 K12 ["startTime"]
      154 LOADB                            R4 0
      155 SETTABLEKS                       R4 R3 K13 ["success"]
      157 NEWTABLE                         R4 0 0
      159 SETTABLEKS                       R4 R3 K14 ["testResults"]
      161 LOADB                            R4 0
      162 SETTABLEKS                       R4 R3 K15 ["wasInterrupted"]
      164 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R4 R0 K0 ["planNode"]
        2 GETTABLEKS                       R3 R4 K1 ["phrase"]
        4 NAMECALL                         R3 R3 K2 ["lower"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R5 R1 K0 ["planNode"]
        9 GETTABLEKS                       R4 R5 K1 ["phrase"]
       11 NAMECALL                         R4 R4 K2 ["lower"]
       13 CALL                             R4 1 1
       14 JUMPIFLT                         R3 R4 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["planNode"]
        2 GETTABLEKS                       R1 R2 K1 ["isRoot"]
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 3
       15 MOVE                             R6 R1
       16 MOVE                             R7 R3
       17 MOVE                             R8 R2
       18 NAMECALL                         R4 R4 K2 ["onTestResult"]
       20 CALL                             R4 4 0
       21 GETIMPORT                        R1 K5 [table.sort]
       23 GETTABLEKS                       R2 R0 K6 ["children"]
       25 GETUPVAL                         R3 4
       26 CALL                             R1 2 0
       27 GETIMPORT                        R1 K8 [ipairs]
       29 GETTABLEKS                       R2 R0 K6 ["children"]
       31 CALL                             R1 1 3
       32 FORGPREP_INEXT                   R1
       33 GETUPVAL                         R6 5
       34 MOVE                             R7 R5
       35 CALL                             R6 1 0
       36 FORGLOOP                         R1 2 [inext] ; [-4]
       38 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K2 [table.sort]
        2 GETTABLEKS                       R2 R0 K3 ["children"]
        4 GETUPVAL                         R3 0
        5 CALL                             R1 2 0
        6 GETIMPORT                        R1 K5 [ipairs]
        8 GETTABLEKS                       R2 R0 K3 ["children"]
       10 CALL                             R1 1 3
       11 FORGPREP_INEXT                   R1
       12 GETUPVAL                         R6 1
       13 MOVE                             R7 R5
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 [inext] ; [-4]
       17 GETUPVAL                         R1 2
       18 MOVE                             R2 R0
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 3
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R4 R5 K6 ["new"]
       24 CALL                             R4 0 1
       25 MOVE                             R5 R1
       26 NAMECALL                         R2 R2 K7 ["onRunComplete"]
       28 CALL                             R2 3 0
       29 GETTABLEKS                       R2 R1 K8 ["numFailedTests"]
       31 LOADN                            R3 0
       32 JUMPIFNOTLT                      R3 R2 ; [+15]
       34 GETUPVAL                         R2 5
       35 LOADK                            R4 K9 ["%s test(s) failed."]
       36 GETTABLEKS                       R7 R1 K8 ["numFailedTests"]
       38 FASTCALL1                        TOSTRING R7 ; [+2]
       39 GETIMPORT                        R6 K11 [tostring]
       41 CALL                             R6 1 1
       42 NAMECALL                         R4 R4 K12 ["format"]
       44 CALL                             R4 2 -1
       45 NAMECALL                         R2 R2 K13 ["Error"]
       47 CALL                             R2 -1 0
       48 RETURN                           R0 0

PROTO_17:
        0 DUPCLOSURE                       R1 K0 [PROTO_14]
        1 NEWCLOSURE                       R2 P1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 NEWCLOSURE                       R3 P2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 DUPTABLE                         R4 K2 [{"report"}]
       16 SETTABLEKS                       R3 R4 K1 ["report"]
       18 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["JestTestResult"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["Array"]
       21 GETTABLEKS                       R4 R2 K8 ["Set"]
       23 GETTABLEKS                       R5 R2 K9 ["String"]
       25 GETIMPORT                        R6 K11 [game]
       27 LOADK                            R8 K12 ["TestService"]
       28 NAMECALL                         R6 R6 K13 ["GetService"]
       30 CALL                             R6 2 1
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R0 K14 ["ChalkLua"]
       35 CALL                             R7 1 1
       36 DUPCLOSURE                       R8 K15 [PROTO_0]
       37 DUPCLOSURE                       R9 K16 [PROTO_1]
       38 DUPCLOSURE                       R10 K17 [PROTO_2]
       39 CAPTURE                          VAL R3
       40 DUPCLOSURE                       R11 K18 [PROTO_4]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R10
       43 CAPTURE                          VAL R11
       44 DUPCLOSURE                       R12 K19 [PROTO_6]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R10
       47 CAPTURE                          VAL R12
       48 DUPCLOSURE                       R13 K20 [PROTO_8]
       49 CAPTURE                          VAL R3
       50 DUPCLOSURE                       R14 K21 [PROTO_9]
       51 CAPTURE                          VAL R8
       52 DUPCLOSURE                       R15 K22 [PROTO_11]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R15
       58 DUPCLOSURE                       R16 K23 [PROTO_12]
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R15
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R8
       63 DUPCLOSURE                       R17 K24 [PROTO_13]
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R3
       67 DUPCLOSURE                       R18 K25 [PROTO_17]
       68 CAPTURE                          VAL R14
       69 CAPTURE                          VAL R17
       70 CAPTURE                          VAL R16
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 DUPTABLE                         R19 K27 [{"createReporter"}]
       74 SETTABLEKS                       R18 R19 K26 ["createReporter"]
       76 RETURN                           R19 1
