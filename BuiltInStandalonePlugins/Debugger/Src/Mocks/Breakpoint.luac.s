PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        7 GETTABLEKS                       R1 R0 K1 ["ContinueExecution"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+4]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K1 ["ContinueExecution"]
       14 GETTABLEKS                       R1 R0 K2 ["Verified"]
       16 JUMPIFNOTEQKNIL                  R1 ; [+4]
       18 LOADB                            R1 1
       19 SETTABLEKS                       R1 R0 K2 ["Verified"]
       21 GETTABLEKS                       R1 R0 K3 ["Id"]
       23 JUMPIFNOTEQKNIL                  R1 ; [+4]
       25 LOADN                            R1 1
       26 SETTABLEKS                       R1 R0 K3 ["Id"]
       28 GETTABLEKS                       R1 R0 K4 ["RemoveOnHit"]
       30 JUMPIFNOTEQKNIL                  R1 ; [+4]
       32 LOADB                            R1 0
       33 SETTABLEKS                       R1 R0 K4 ["RemoveOnHit"]
       35 DUPTABLE                         R1 K10 [{"Id", "Enabled", "Line", "Script", "Condition", "LogMessage", "ContinueExecution", "Verified", "MetaBreakpointId", "RemoveOnHit"}]
       36 GETTABLEKS                       R2 R0 K3 ["Id"]
       38 SETTABLEKS                       R2 R1 K3 ["Id"]
       40 GETTABLEKS                       R2 R0 K0 ["Enabled"]
       42 SETTABLEKS                       R2 R1 K0 ["Enabled"]
       44 GETTABLEKS                       R3 R0 K5 ["Line"]
       46 ORK                              R2 R3 K11 [1]
       47 SETTABLEKS                       R2 R1 K5 ["Line"]
       49 GETTABLEKS                       R3 R0 K6 ["Script"]
       51 ORK                              R2 R3 K12 ["1234-5678-9ABC"]
       52 SETTABLEKS                       R2 R1 K6 ["Script"]
       54 GETTABLEKS                       R2 R0 K7 ["Condition"]
       56 JUMPIF                           R2 ; [+10]
       57 LOADK                            R3 K13 ["varNum"]
       58 GETTABLEKS                       R7 R0 K3 ["Id"]
       60 FASTCALL1                        TOSTRING R7 ; [+2]
       61 GETIMPORT                        R6 K15 [tostring]
       63 CALL                             R6 1 1
       64 MOVE                             R4 R6
       65 LOADK                            R5 K16 [" == 0"]
       66 CONCAT                           R2 R3 R5
       67 SETTABLEKS                       R2 R1 K7 ["Condition"]
       69 GETTABLEKS                       R2 R0 K8 ["LogMessage"]
       71 JUMPIF                           R2 ; [+8]
       72 LOADK                            R3 K13 ["varNum"]
       73 GETTABLEKS                       R5 R0 K3 ["Id"]
       75 FASTCALL1                        TOSTRING R5 ; [+2]
       76 GETIMPORT                        R4 K15 [tostring]
       78 CALL                             R4 1 1
       79 CONCAT                           R2 R3 R4
       80 SETTABLEKS                       R2 R1 K8 ["LogMessage"]
       82 GETTABLEKS                       R2 R0 K1 ["ContinueExecution"]
       84 SETTABLEKS                       R2 R1 K1 ["ContinueExecution"]
       86 GETTABLEKS                       R2 R0 K2 ["Verified"]
       88 SETTABLEKS                       R2 R1 K2 ["Verified"]
       90 GETTABLEKS                       R3 R0 K9 ["MetaBreakpointId"]
       92 ORK                              R2 R3 K17 [6]
       93 SETTABLEKS                       R2 R1 K9 ["MetaBreakpointId"]
       95 GETTABLEKS                       R2 R0 K4 ["RemoveOnHit"]
       97 SETTABLEKS                       R2 R1 K4 ["RemoveOnHit"]
       99 GETUPVAL                         R4 0
      100 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
      102 MOVE                             R3 R1
      103 GETIMPORT                        R2 K19 [setmetatable]
      105 CALL                             R2 2 0
      106 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 RETURN                           R0 1
