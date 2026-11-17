PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [print]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+12]
        8 GETIMPORT                        R2 K4 [string.find]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K5 ["not available for this component"]
       12 LOADN                            R5 1
       13 LOADB                            R6 1
       14 CALL                             R2 4 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["PublishLatestDraftsAndWaitAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R0 ; [+3]
        3 LENGTH                           R3 R1
        4 JUMPIFNOTEQKN                    R3 K0 [0] ; [+11]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["shouldDebugWarnings"]
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+4]
       11 GETIMPORT                        R3 K3 [print]
       13 LOADK                            R4 K4 ["publish: skipped, no AssetAccessController or no asset ids"]
       14 CALL                             R3 1 0
       15 RETURN                           R2 1
       16 LOADK                            R3 K5 ["publish: asking the controller to publish any drafts among %* asset(s)"]
       17 LENGTH                           R5 R1
       18 NAMECALL                         R3 R3 K6 ["format"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K1 ["shouldDebugWarnings"]
       24 CALL                             R4 0 1
       25 JUMPIFNOT                        R4 ; [+4]
       26 GETIMPORT                        R4 K3 [print]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 FASTPCALL                        pcall 1 ; [+2]
       34 GETIMPORT                        R3 K8 [pcall]
       36 CALL                             R3 1 2
       37 JUMPIFNOT                        R3 ; [+7]
       38 FASTCALL1                        TYPE R4 ; [+3]
       39 MOVE                             R6 R4
       40 GETIMPORT                        R5 K10 [type]
       42 CALL                             R5 1 1
       43 JUMPIFEQKS                       R5 K11 ["table"] ; [+40]
       45 LOADB                            R5 0
       46 FASTCALL1                        TYPE R4 ; [+3]
       47 MOVE                             R7 R4
       48 GETIMPORT                        R6 K10 [type]
       50 CALL                             R6 1 1
       51 JUMPIFNOTEQKS                    R6 K12 ["string"] ; [+12]
       53 GETIMPORT                        R6 K14 [string.find]
       55 MOVE                             R7 R4
       56 LOADK                            R8 K15 ["not available for this component"]
       57 LOADN                            R9 1
       58 LOADB                            R10 1
       59 CALL                             R6 4 1
       60 JUMPIFNOTEQKNIL                  R6 ; [+2]
       62 LOADB                            R5 0 +1
       63 LOADB                            R5 1
       64 JUMPIFNOT                        R5 ; [+10]
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R5 R5 K1 ["shouldDebugWarnings"]
       68 CALL                             R5 0 1
       69 JUMPIFNOT                        R5 ; [+13]
       70 GETIMPORT                        R5 K3 [print]
       72 LOADK                            R6 K16 ["publish: skipped, PublishLatestDraftsAndWaitAsync is not registered on this Studio"]
       73 CALL                             R5 1 0
       74 RETURN                           R2 1
       75 GETIMPORT                        R5 K18 [warn]
       77 LOADK                            R6 K19 ["Failed to publish draft assets before insertion: %*"]
       78 MOVE                             R8 R4
       79 NAMECALL                         R6 R6 K6 ["format"]
       81 CALL                             R6 2 1
       82 CALL                             R5 1 0
       83 RETURN                           R2 1
       84 LOADN                            R5 0
       85 MOVE                             R6 R4
       86 LOADNIL                          R7
       87 LOADNIL                          R8
       88 FORGPREP                         R6
       89 FASTCALL1                        TYPE R10 ; [+3]
       90 MOVE                             R12 R10
       91 GETIMPORT                        R11 K10 [type]
       93 CALL                             R11 1 1
       94 JUMPIFNOTEQKS                    R11 K20 ["number"] ; [+14]
       96 ADDK                             R5 R5 K21 [1]
       97 GETIMPORT                        R11 K18 [warn]
       99 LOADK                            R13 K22 ["Asset %* cannot be used in this experience: it has no version that can be served, or "]
      100 MOVE                             R15 R10
      101 NAMECALL                         R13 R13 K6 ["format"]
      103 CALL                             R13 2 1
      104 LOADK                            R14 K23 ["publishing it was refused. It was not inserted. The Studio log has the reason."]
      105 CONCAT                           R12 R13 R14
      106 CALL                             R11 1 0
      107 LOADB                            R11 1
      108 SETTABLE                         R11 R2 R10
      109 FORGLOOP                         R6 2 ; [-21]
      111 JUMPIFNOTEQKN                    R5 K0 [0] ; [+16]
      113 LOADK                            R6 K24 ["publish: all %* asset(s) are usable, proceeding to the grant"]
      114 LENGTH                           R8 R1
      115 NAMECALL                         R6 R6 K6 ["format"]
      117 CALL                             R6 2 1
      118 GETUPVAL                         R7 0
      119 GETTABLEKS                       R7 R7 K1 ["shouldDebugWarnings"]
      121 CALL                             R7 0 1
      122 JUMPIFNOT                        R7 ; [+20]
      123 GETIMPORT                        R7 K3 [print]
      125 MOVE                             R8 R6
      126 CALL                             R7 1 0
      127 RETURN                           R2 1
      128 LOADK                            R6 K25 ["publish: %* of %* asset(s) will not be inserted. See the warnings above"]
      129 MOVE                             R8 R5
      130 LENGTH                           R9 R1
      131 NAMECALL                         R6 R6 K6 ["format"]
      133 CALL                             R6 3 1
      134 GETUPVAL                         R7 0
      135 GETTABLEKS                       R7 R7 K1 ["shouldDebugWarnings"]
      137 CALL                             R7 0 1
      138 JUMPIFNOT                        R7 ; [+4]
      139 GETIMPORT                        R7 K3 [print]
      141 MOVE                             R8 R6
      142 CALL                             R7 1 0
      143 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 DUPCLOSURE                       R3 K10 [PROTO_1]
       19 DUPCLOSURE                       R4 K11 [PROTO_3]
       20 CAPTURE                          VAL R1
       21 RETURN                           R4 1
