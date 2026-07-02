PROTO_0:
        0 DUPTABLE                         R1 K13 [{[1], ["isEnabled"], ["isValid"], ["lineNumber"], ["scriptName"], ["scriptLine"] = "", ["condition"], ["logMessage"], ["continueExecution"], ["debugpointType"], ["removeOnHit"], ["contextBreakpoints"]}]
        1 GETTABLEKS                       R2 R0 K14 ["Id"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K15 ["Enabled"]
        7 SETTABLEKS                       R2 R1 K1 ["isEnabled"]
        9 GETTABLEKS                       R2 R0 K16 ["Valid"]
       11 SETTABLEKS                       R2 R1 K2 ["isValid"]
       13 GETTABLEKS                       R2 R0 K17 ["Line"]
       15 SETTABLEKS                       R2 R1 K3 ["lineNumber"]
       17 GETTABLEKS                       R2 R0 K18 ["Script"]
       19 SETTABLEKS                       R2 R1 K4 ["scriptName"]
       21 GETTABLEKS                       R2 R0 K19 ["Condition"]
       23 SETTABLEKS                       R2 R1 K7 ["condition"]
       25 GETTABLEKS                       R2 R0 K20 ["LogMessage"]
       27 SETTABLEKS                       R2 R1 K8 ["logMessage"]
       29 GETTABLEKS                       R2 R0 K21 ["ContinueExecution"]
       31 SETTABLEKS                       R2 R1 K9 ["continueExecution"]
       33 GETTABLEKS                       R3 R0 K22 ["IsLogpoint"]
       35 JUMPIFNOT                        R3 ; [+6]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K23 ["DebugpointType"]
       39 GETTABLEKS                       R2 R2 K24 ["Logpoint"]
       41 JUMPIF                           R2 ; [+5]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K23 ["DebugpointType"]
       45 GETTABLEKS                       R2 R2 K25 ["Breakpoint"]
       47 SETTABLEKS                       R2 R1 K10 ["debugpointType"]
       49 GETTABLEKS                       R2 R0 K26 ["RemoveOnHit"]
       51 SETTABLEKS                       R2 R1 K11 ["removeOnHit"]
       53 NAMECALL                         R2 R0 K27 ["GetContextBreakpoints"]
       55 CALL                             R2 1 1
       56 SETTABLEKS                       R2 R1 K12 ["contextBreakpoints"]
       58 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["isEnabled"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+11]
        4 GETIMPORT                        R3 K3 [math.random]
        6 CALL                             R3 0 1
        7 LOADK                            R4 K4 [0.5]
        8 JUMPIFLT                         R4 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R0 K0 ["isEnabled"]
       14 GETTABLEKS                       R2 R0 K5 ["isValid"]
       16 JUMPIFNOTEQKNIL                  R2 ; [+4]
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R0 K5 ["isValid"]
       21 GETTABLEKS                       R2 R0 K6 ["continueExecution"]
       23 JUMPIFNOTEQKNIL                  R2 ; [+11]
       25 GETIMPORT                        R3 K3 [math.random]
       27 CALL                             R3 0 1
       28 LOADK                            R4 K4 [0.5]
       29 JUMPIFLT                         R4 R3 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 SETTABLEKS                       R2 R0 K6 ["continueExecution"]
       35 GETTABLEKS                       R2 R0 K7 ["removeOnHit"]
       37 JUMPIFNOTEQKNIL                  R2 ; [+11]
       39 GETIMPORT                        R3 K3 [math.random]
       41 CALL                             R3 0 1
       42 LOADK                            R4 K4 [0.5]
       43 JUMPIFLT                         R4 R3 ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 SETTABLEKS                       R2 R0 K7 ["removeOnHit"]
       49 DUPTABLE                         R2 K16 [{"id", "isEnabled", "isValid", "lineNumber", "scriptName", "scriptLine", "condition", "logMessage", "continueExecution", "debugpointType", "contextBreakpoints", "removeOnHit"}]
       50 GETTABLEKS                       R4 R0 K8 ["id"]
       52 OR                               R3 R4 R1
       53 SETTABLEKS                       R3 R2 K8 ["id"]
       55 GETTABLEKS                       R3 R0 K0 ["isEnabled"]
       57 SETTABLEKS                       R3 R2 K0 ["isEnabled"]
       59 GETTABLEKS                       R3 R0 K5 ["isValid"]
       61 SETTABLEKS                       R3 R2 K5 ["isValid"]
       63 GETTABLEKS                       R4 R0 K9 ["lineNumber"]
       65 OR                               R3 R4 R1
       66 SETTABLEKS                       R3 R2 K9 ["lineNumber"]
       68 GETTABLEKS                       R3 R0 K10 ["scriptName"]
       70 JUMPIF                           R3 ; [+7]
       71 LOADK                            R4 K17 ["script"]
       72 FASTCALL1                        TOSTRING R1 ; [+3]
       73 MOVE                             R6 R1
       74 GETIMPORT                        R5 K19 [tostring]
       76 CALL                             R5 1 1
       77 CONCAT                           R3 R4 R5
       78 SETTABLEKS                       R3 R2 K10 ["scriptName"]
       80 GETTABLEKS                       R3 R0 K11 ["scriptLine"]
       82 JUMPIF                           R3 ; [+9]
       83 LOADK                            R4 K20 ["local varNum"]
       84 FASTCALL1                        TOSTRING R1 ; [+3]
       85 MOVE                             R8 R1
       86 GETIMPORT                        R7 K19 [tostring]
       88 CALL                             R7 1 1
       89 MOVE                             R5 R7
       90 LOADK                            R6 K21 [" = 0"]
       91 CONCAT                           R3 R4 R6
       92 SETTABLEKS                       R3 R2 K11 ["scriptLine"]
       94 GETTABLEKS                       R3 R0 K12 ["condition"]
       96 JUMPIF                           R3 ; [+9]
       97 LOADK                            R4 K22 ["varNum"]
       98 FASTCALL1                        TOSTRING R1 ; [+3]
       99 MOVE                             R8 R1
      100 GETIMPORT                        R7 K19 [tostring]
      102 CALL                             R7 1 1
      103 MOVE                             R5 R7
      104 LOADK                            R6 K23 [" == 0"]
      105 CONCAT                           R3 R4 R6
      106 SETTABLEKS                       R3 R2 K12 ["condition"]
      108 GETTABLEKS                       R3 R0 K13 ["logMessage"]
      110 JUMPIF                           R3 ; [+7]
      111 LOADK                            R4 K22 ["varNum"]
      112 FASTCALL1                        TOSTRING R1 ; [+3]
      113 MOVE                             R6 R1
      114 GETIMPORT                        R5 K19 [tostring]
      116 CALL                             R5 1 1
      117 CONCAT                           R3 R4 R5
      118 SETTABLEKS                       R3 R2 K13 ["logMessage"]
      120 GETTABLEKS                       R3 R0 K6 ["continueExecution"]
      122 SETTABLEKS                       R3 R2 K6 ["continueExecution"]
      124 GETTABLEKS                       R3 R0 K14 ["debugpointType"]
      126 JUMPIF                           R3 ; [+20]
      127 FASTCALL2K                       MATH_FMOD R1 K24 ; [+5]
      129 MOVE                             R5 R1
      130 LOADK                            R6 K24 [2]
      131 GETIMPORT                        R4 K26 [math.fmod]
      133 CALL                             R4 2 1
      134 JUMPIFNOTEQKN                    R4 K27 [0] ; [+7]
      136 GETUPVAL                         R3 0
      137 GETTABLEKS                       R3 R3 K28 ["DebugpointType"]
      139 GETTABLEKS                       R3 R3 K29 ["Breakpoint"]
      141 JUMPIF                           R3 ; [+5]
      142 GETUPVAL                         R3 0
      143 GETTABLEKS                       R3 R3 K28 ["DebugpointType"]
      145 GETTABLEKS                       R3 R3 K30 ["Logpoint"]
      147 SETTABLEKS                       R3 R2 K14 ["debugpointType"]
      149 GETTABLEKS                       R3 R0 K15 ["contextBreakpoints"]
      151 JUMPIF                           R3 ; [+2]
      152 NEWTABLE                         R3 0 0
      154 SETTABLEKS                       R3 R2 K15 ["contextBreakpoints"]
      156 GETTABLEKS                       R3 R0 K7 ["removeOnHit"]
      158 SETTABLEKS                       R3 R2 K7 ["removeOnHit"]
      160 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["Constants"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 DUPCLOSURE                       R3 K9 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 DUPTABLE                         R4 K12 [{"fromMetaBreakpoint", "mockMetaBreakpoint"}]
       23 SETTABLEKS                       R2 R4 K10 ["fromMetaBreakpoint"]
       25 SETTABLEKS                       R3 R4 K11 ["mockMetaBreakpoint"]
       27 RETURN                           R4 1
