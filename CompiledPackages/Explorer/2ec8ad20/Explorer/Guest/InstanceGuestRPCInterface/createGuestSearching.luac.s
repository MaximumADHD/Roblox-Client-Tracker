PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+7]
        3 GETIMPORT                        R0 K2 [os.clock]
        5 CALL                             R0 0 1
        6 SETUPVAL                         R0 0
        7 LOADB                            R0 0
        8 RETURN                           R0 1
        9 GETIMPORT                        R2 K2 [os.clock]
       11 CALL                             R2 0 1
       12 GETUPVAL                         R3 0
       13 SUB                              R1 R2 R3
       14 GETUPVAL                         R2 1
       15 JUMPIFLE                         R2 R1 ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 JUMPIFNOT                        R0 ; [+2]
       20 LOADNIL                          R1
       21 SETUPVAL                         R1 0
       22 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 CLOSEUPVALS                      R0
        5 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R3 R1
        1 NEWTABLE                         R4 0 0
        3 JUMPIFEQKNIL                     R3 ; [+25]
        5 GETTABLEKS                       R5 R0 K0 ["root"]
        7 JUMPIFEQ                         R3 R5 ; [+21]
        9 GETTABLEKS                       R6 R0 K1 ["watchingInstanceConnections"]
       11 GETTABLE                         R5 R6 R3
       12 JUMPIF                           R5 ; [+16]
       13 GETUPVAL                         R5 0
       14 MOVE                             R6 R0
       15 MOVE                             R7 R3
       16 CALL                             R5 2 0
       17 MOVE                             R6 R4
       18 GETUPVAL                         R7 1
       19 MOVE                             R8 R0
       20 MOVE                             R9 R3
       21 CALL                             R7 2 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R5 K4 [table.insert]
       25 CALL                             R5 -1 0
       26 GETTABLEKS                       R3 R3 K5 ["Parent"]
       28 JUMPBACK                         ; [-26]
       29 LENGTH                           R5 R4
       30 MOVE                             R8 R5
       31 LOADN                            R6 1
       32 LOADN                            R7 -1
       33 FORNPREP                         R6
       34 GETTABLE                         R11 R4 R8
       35 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       37 MOVE                             R10 R2
       38 GETIMPORT                        R9 K4 [table.insert]
       40 CALL                             R9 2 0
       41 FORNLOOP                         R6
       42 RETURN                           R5 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["shouldThrottle called before a search was started"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+14]
        5 GETIMPORT                        R0 K2 [table.remove]
        7 GETUPVAL                         R1 0
        8 LOADN                            R2 1
        9 CALL                             R0 2 1
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R2 1
       13 NAMECALL                         R0 R0 K3 ["BeginSearch"]
       15 CALL                             R0 2 0
       16 LOADB                            R0 1
       17 RETURN                           R0 1
       18 LOADNIL                          R0
       19 SETUPVAL                         R0 1
       20 LOADB                            R0 0
       21 RETURN                           R0 1

PROTO_5:
        0 MOVE                             R2 R0
        1 NEWTABLE                         R3 0 0
        3 JUMPIFEQKNIL                     R2 ; [+26]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["root"]
        8 JUMPIFEQ                         R2 R4 ; [+21]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["watchingInstanceConnections"]
       13 GETTABLE                         R4 R5 R2
       14 JUMPIFNOTEQKNIL                  R4 ; [+12]
       16 GETUPVAL                         R4 1
       17 GETUPVAL                         R5 0
       18 MOVE                             R6 R2
       19 CALL                             R4 2 1
       20 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       22 MOVE                             R6 R3
       23 MOVE                             R7 R4
       24 GETIMPORT                        R5 K4 [table.insert]
       26 CALL                             R5 2 0
       27 GETTABLEKS                       R2 R2 K5 ["Parent"]
       29 JUMPBACK                         ; [-27]
       30 LENGTH                           R4 R3
       31 MOVE                             R7 R4
       32 LOADN                            R5 1
       33 LOADN                            R6 -1
       34 FORNPREP                         R5
       35 GETTABLE                         R10 R3 R7
       36 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       38 MOVE                             R9 R1
       39 GETIMPORT                        R8 K4 [table.insert]
       41 CALL                             R8 2 0
       42 FORNLOOP                         R5
       43 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["watchingInstanceConnections"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOTEQKNIL                  R2 ; [+7]
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R2 3 1
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NOT                              R1 R2
        3 FASTCALL1                        ASSERT R1 ; [+2]
        4 GETIMPORT                        R0 K1 [assert]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 FASTCALL2K                       ASSERT R1 K2 ; [+4]
       14 LOADK                            R2 K2 ["fetchNextResults() called without a search ID"]
       15 GETIMPORT                        R0 K1 [assert]
       17 CALL                             R0 2 0
       18 NEWTABLE                         R0 0 0
       20 NEWTABLE                         R1 0 0
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K3 ["root"]
       25 LOADK                            R4 K4 ["DataModel"]
       26 NAMECALL                         R2 R2 K5 ["IsA"]
       28 CALL                             R2 2 1
       29 GETUPVAL                         R4 3
       30 LENGTH                           R3 R4
       31 LOADN                            R4 0
       32 JUMPIFNOTLT                      R4 R3 ; [+75]
       34 GETUPVAL                         R3 4
       35 CALL                             R3 0 1
       36 JUMPIF                           R3 ; [+71]
       37 GETIMPORT                        R3 K8 [table.remove]
       39 GETUPVAL                         R4 3
       40 CALL                             R3 1 1
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K3 ["root"]
       44 NAMECALL                         R4 R3 K9 ["IsDescendantOf"]
       46 CALL                             R4 2 1
       47 JUMPIFNOT                        R4 ; [+59]
       48 GETTABLEKS                       R4 R3 K10 ["Parent"]
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K3 ["root"]
       53 JUMPIFNOTEQ                      R4 R5 ; [+13]
       55 JUMPIFNOT                        R2 ; [+11]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R4 R4 K11 ["isServiceVisible"]
       59 JUMPIFEQKNIL                     R4 ; [+7]
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R4 R4 K11 ["isServiceVisible"]
       64 MOVE                             R5 R3
       65 CALL                             R4 1 1
       66 JUMPIFNOT                        R4 ; [+40]
       67 GETUPVAL                         R4 5
       68 GETUPVAL                         R5 3
       69 NAMECALL                         R6 R3 K12 ["GetChildren"]
       71 CALL                             R6 1 -1
       72 CALL                             R4 -1 0
       73 GETUPVAL                         R4 6
       74 MOVE                             R6 R3
       75 NAMECALL                         R4 R4 K13 ["InstancePassesFilter"]
       77 CALL                             R4 2 1
       78 JUMPIFNOT                        R4 ; [+28]
       79 GETUPVAL                         R4 2
       80 GETTABLEKS                       R4 R4 K14 ["getInstanceId"]
       82 MOVE                             R5 R3
       83 CALL                             R4 1 1
       84 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       86 MOVE                             R6 R0
       87 MOVE                             R7 R4
       88 GETIMPORT                        R5 K16 [table.insert]
       90 CALL                             R5 2 0
       91 GETUPVAL                         R6 2
       92 GETTABLEKS                       R6 R6 K17 ["watchingInstanceConnections"]
       94 GETTABLE                         R5 R6 R3
       95 JUMPIFNOTEQKNIL                  R5 ; [+7]
       97 GETUPVAL                         R5 7
       98 GETUPVAL                         R6 2
       99 MOVE                             R7 R3
      100 MOVE                             R8 R1
      101 CALL                             R5 3 1
      102 JUMP                             ; [+4]
      103 GETUPVAL                         R5 8
      104 MOVE                             R6 R3
      105 MOVE                             R7 R1
      106 CALL                             R5 2 1
      107 JUMPBACK                         ; [-79]
      108 GETUPVAL                         R3 2
      109 GETTABLEKS                       R3 R3 K18 ["hostRpcInterface"]
      111 GETTABLEKS                       R3 R3 K19 ["receiveSearchResults"]
      113 GETUPVAL                         R4 1
      114 MOVE                             R5 R0
      115 MOVE                             R6 R1
      116 CALL                             R3 3 0
      117 GETUPVAL                         R5 3
      118 LENGTH                           R4 R5
      119 JUMPIFEQKN                       R4 K20 [0] ; [+2]
      121 LOADB                            R3 0 +1
      122 LOADB                            R3 1
      123 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 FASTCALL                         ASSERT ; [+2]
        3 GETIMPORT                        R1 K1 [assert]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R3 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       13 LOADK                            R3 K2 ["fetchNextResultsWithBudget() called without a search ID"]
       14 GETIMPORT                        R1 K1 [assert]
       16 CALL                             R1 2 0
       17 NEWTABLE                         R1 0 0
       19 NEWTABLE                         R2 0 0
       21 GETTABLEKS                       R3 R0 K3 ["budget"]
       23 GETUPVAL                         R4 2
       24 CALL                             R4 0 1
       25 JUMPIF                           R4 ; [+75]
       26 LOADN                            R4 0
       27 JUMPIFNOTLT                      R4 R3 ; [+73]
       29 GETUPVAL                         R4 3
       30 NAMECALL                         R4 R4 K4 ["HasMoreResults"]
       32 CALL                             R4 1 1
       33 JUMPIFNOT                        R4 ; [+44]
       34 GETUPVAL                         R4 3
       35 LOADN                            R6 100
       36 NAMECALL                         R4 R4 K5 ["GetSearchResults"]
       38 CALL                             R4 2 3
       39 FORGPREP                         R4
       40 GETUPVAL                         R9 4
       41 GETTABLEKS                       R9 R9 K6 ["getInstanceId"]
       43 MOVE                             R10 R8
       44 CALL                             R9 1 1
       45 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
       47 MOVE                             R11 R1
       48 MOVE                             R12 R9
       49 GETIMPORT                        R10 K9 [table.insert]
       51 CALL                             R10 2 0
       52 GETTABLEKS                       R10 R0 K10 ["costPerResult"]
       54 SUB                              R3 R3 R10
       55 GETUPVAL                         R12 4
       56 GETTABLEKS                       R12 R12 K11 ["watchingInstanceConnections"]
       58 GETTABLE                         R11 R12 R8
       59 JUMPIFNOTEQKNIL                  R11 ; [+7]
       61 GETUPVAL                         R10 5
       62 GETUPVAL                         R11 4
       63 MOVE                             R12 R8
       64 MOVE                             R13 R2
       65 CALL                             R10 3 1
       66 JUMP                             ; [+4]
       67 GETUPVAL                         R10 6
       68 MOVE                             R11 R8
       69 MOVE                             R12 R2
       70 CALL                             R10 2 1
       71 GETTABLEKS                       R12 R0 K12 ["costPerDatum"]
       73 MUL                              R11 R10 R12
       74 SUB                              R3 R3 R11
       75 FORGLOOP                         R4 2 ; [-36]
       77 JUMP                             ; [+22]
       78 GETUPVAL                         R6 7
       79 LENGTH                           R5 R6
       80 LOADN                            R6 0
       81 JUMPIFNOTLT                      R6 R5 ; [+14]
       83 GETIMPORT                        R5 K14 [table.remove]
       85 GETUPVAL                         R6 7
       86 LOADN                            R7 1
       87 CALL                             R5 2 1
       88 SETUPVAL                         R5 8
       89 GETUPVAL                         R5 3
       90 GETUPVAL                         R7 8
       91 NAMECALL                         R5 R5 K15 ["BeginSearch"]
       93 CALL                             R5 2 0
       94 LOADB                            R4 1
       95 JUMP                             ; [+3]
       96 LOADNIL                          R5
       97 SETUPVAL                         R5 8
       98 LOADB                            R4 0
       99 JUMPIFNOT                        R4 ; [+1]
      100 JUMPBACK                         ; [-78]
      101 GETUPVAL                         R4 4
      102 GETTABLEKS                       R4 R4 K16 ["hostRpcInterface"]
      104 GETTABLEKS                       R4 R4 K17 ["receiveSearchResults"]
      106 GETUPVAL                         R5 1
      107 MOVE                             R6 R1
      108 MOVE                             R7 R2
      109 CALL                             R4 3 0
      110 GETUPVAL                         R4 3
      111 NAMECALL                         R4 R4 K4 ["HasMoreResults"]
      113 CALL                             R4 1 1
      114 JUMPIF                           R4 ; [+19]
      115 GETUPVAL                         R5 7
      116 LENGTH                           R4 R5
      117 LOADN                            R5 0
      118 JUMPIFNOTLT                      R5 R4 ; [+13]
      120 GETIMPORT                        R4 K14 [table.remove]
      122 GETUPVAL                         R5 7
      123 LOADN                            R6 1
      124 CALL                             R4 2 1
      125 SETUPVAL                         R4 8
      126 GETUPVAL                         R4 3
      127 GETUPVAL                         R6 8
      128 NAMECALL                         R4 R4 K15 ["BeginSearch"]
      130 CALL                             R4 2 0
      131 JUMP                             ; [+2]
      132 LOADNIL                          R4
      133 SETUPVAL                         R4 8
      134 GETUPVAL                         R5 8
      135 JUMPIFEQKNIL                     R5 ; [+2]
      137 LOADB                            R4 0 +1
      138 LOADB                            R4 1
      139 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["game.DescendantAdded connected with no search ID"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R0
       14 CALL                             R1 2 1
       15 JUMPIF                           R1 ; [+13]
       16 GETUPVAL                         R1 3
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K3 ["InstancePassesFilter"]
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+7]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K4 ["root"]
       25 NAMECALL                         R1 R0 K5 ["IsDescendantOf"]
       27 CALL                             R1 2 1
       28 JUMPIF                           R1 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K6 ["getInstanceId"]
       33 MOVE                             R2 R0
       34 CALL                             R1 1 1
       35 NEWTABLE                         R2 0 0
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K7 ["watchingInstanceConnections"]
       40 GETTABLE                         R3 R4 R0
       41 JUMPIFNOTEQKNIL                  R3 ; [+7]
       43 GETUPVAL                         R3 4
       44 GETUPVAL                         R4 2
       45 MOVE                             R5 R0
       46 MOVE                             R6 R2
       47 CALL                             R3 3 1
       48 JUMP                             ; [+4]
       49 GETUPVAL                         R3 5
       50 MOVE                             R4 R0
       51 MOVE                             R5 R2
       52 CALL                             R3 2 1
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R3 R3 K8 ["hostRpcInterface"]
       56 GETTABLEKS                       R3 R3 K9 ["receiveSearchResults"]
       58 GETUPVAL                         R4 0
       59 NEWTABLE                         R5 0 1
       61 MOVE                             R6 R1
       62 SETLIST                          R5 R6 1 [1]
       64 MOVE                             R6 R2
       65 CALL                             R3 3 0
       66 RETURN                           R0 0

PROTO_10:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K0 ["SetFilter"]
        5 CALL                             R3 2 0
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+66]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K1 ["root"]
       12 LOADK                            R5 K2 ["DataModel"]
       13 NAMECALL                         R3 R3 K3 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+30]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K4 ["isServiceVisible"]
       20 JUMPIFNOT                        R3 ; [+26]
       21 NEWTABLE                         R3 0 0
       23 SETUPVAL                         R3 4
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K1 ["root"]
       27 NAMECALL                         R3 R3 K5 ["GetChildren"]
       29 CALL                             R3 1 3
       30 FORGPREP                         R3
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R8 R8 K4 ["isServiceVisible"]
       34 MOVE                             R9 R7
       35 CALL                             R8 1 1
       36 JUMPIFNOT                        R8 ; [+7]
       37 GETUPVAL                         R9 4
       38 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       40 MOVE                             R10 R7
       41 GETIMPORT                        R8 K8 [table.insert]
       43 CALL                             R8 2 0
       44 FORGLOOP                         R3 2 ; [-14]
       46 JUMP                             ; [+8]
       47 NEWTABLE                         R3 0 1
       49 GETUPVAL                         R4 3
       50 GETTABLEKS                       R4 R4 K1 ["root"]
       52 SETLIST                          R3 R4 1 [1]
       54 SETUPVAL                         R3 4
       55 GETUPVAL                         R4 4
       56 LENGTH                           R3 R4
       57 LOADN                            R4 0
       58 JUMPIFNOTLT                      R4 R3 ; [+13]
       60 GETIMPORT                        R3 K10 [table.remove]
       62 GETUPVAL                         R4 4
       63 LOADN                            R5 1
       64 CALL                             R3 2 1
       65 SETUPVAL                         R3 5
       66 GETUPVAL                         R3 1
       67 GETUPVAL                         R5 5
       68 NAMECALL                         R3 R3 K11 ["BeginSearch"]
       70 CALL                             R3 2 0
       71 JUMP                             ; [+10]
       72 LOADNIL                          R3
       73 SETUPVAL                         R3 5
       74 JUMP                             ; [+7]
       75 GETUPVAL                         R3 3
       76 GETTABLEKS                       R3 R3 K1 ["root"]
       78 NAMECALL                         R3 R3 K5 ["GetChildren"]
       80 CALL                             R3 1 1
       81 SETUPVAL                         R3 6
       82 GETUPVAL                         R3 7
       83 JUMPIFNOTEQKNIL                  R3 ; [+10]
       85 GETIMPORT                        R3 K13 [game]
       87 GETTABLEKS                       R3 R3 K14 ["DescendantAdded"]
       89 GETUPVAL                         R5 8
       90 NAMECALL                         R3 R3 K15 ["Connect"]
       92 CALL                             R3 2 1
       93 SETUPVAL                         R3 7
       94 GETUPVAL                         R3 10
       95 CALL                             R3 0 1
       96 SETUPVAL                         R3 9
       97 GETUPVAL                         R3 9
       98 CALL                             R3 0 1
       99 JUMPIFNOT                        R3 ; [+2]
      100 LOADB                            R3 0
      101 RETURN                           R3 1
      102 GETUPVAL                         R3 1
      103 NAMECALL                         R3 R3 K16 ["GetAutocompleter"]
      105 CALL                             R3 1 1
      106 GETTABLEKS                       R4 R3 K17 ["RequiresOutsideContext"]
      108 JUMPIFNOT                        R4 ; [+10]
      109 GETUPVAL                         R4 3
      110 GETTABLEKS                       R4 R4 K18 ["hostRpcInterface"]
      112 GETTABLEKS                       R4 R4 K19 ["receiveSearchSuggestions"]
      114 MOVE                             R5 R0
      115 NAMECALL                         R6 R3 K20 ["GetSuggestions"]
      117 CALL                             R6 1 -1
      118 CALL                             R4 -1 0
      119 GETUPVAL                         R4 2
      120 CALL                             R4 0 1
      121 JUMPIFNOT                        R4 ; [+4]
      122 GETUPVAL                         R4 11
      123 MOVE                             R5 R2
      124 CALL                             R4 1 1
      125 RETURN                           R4 1
      126 GETUPVAL                         R4 12
      127 CALL                             R4 0 1
      128 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+8]
        3 GETUPVAL                         R2 1
        4 LOADK                            R3 K0 ["Request ID mismatch in continueSearchAsync: %d vs. %d"]
        5 MOVE                             R4 R0
        6 GETUPVAL                         R5 0
        7 CALL                             R2 3 0
        8 LOADB                            R2 1
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 RETURN                           R2 1
       17 GETUPVAL                         R5 4
       18 LENGTH                           R4 R5
       19 JUMPIFNOTEQKN                    R4 K1 [0] ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       25 LOADK                            R4 K2 ["continueSearchAsync called with nothing left in queue"]
       26 GETIMPORT                        R2 K4 [assert]
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 5
       30 CALL                             R2 0 1
       31 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["stopSearching sent with no current search ID"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 0
       12 JUMPIFEQ                         R0 R1 ; [+7]
       14 GETUPVAL                         R1 1
       15 LOADK                            R2 K3 ["Request ID mismatch in stopSearching: %d vs. %d"]
       16 MOVE                             R3 R0
       17 GETUPVAL                         R4 0
       18 CALL                             R1 3 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 2
       21 JUMPIFNOTEQKNIL                  R3 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       27 LOADK                            R3 K4 ["stopSearching called when search didn't result in a connection"]
       28 GETIMPORT                        R1 K2 [assert]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 2
       32 NAMECALL                         R1 R1 K5 ["Disconnect"]
       34 CALL                             R1 1 0
       35 LOADNIL                          R1
       36 SETUPVAL                         R1 2
       37 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+5]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K1 ["Disconnect"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 GETIMPORT                        R3 K2 [Instance.new]
        5 LOADK                            R4 K3 ["ExplorerFilter"]
        6 CALL                             R3 1 1
        7 GETIMPORT                        R4 K5 [game]
        9 SETTABLEKS                       R4 R3 K6 ["Parent"]
       11 LOADNIL                          R4
       12 DUPCLOSURE                       R5 K7 [PROTO_3]
       13 NEWTABLE                         R6 0 0
       15 LOADNIL                          R7
       16 NEWTABLE                         R8 0 0
       18 NEWCLOSURE                       R9 P1
       19 CAPTURE                          REF R8
       20 CAPTURE                          REF R7
       21 CAPTURE                          VAL R3
       22 NEWCLOSURE                       R10 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 NEWCLOSURE                       R11 P3
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R10
       29 NEWCLOSURE                       R12 P4
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          REF R4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          REF R6
       34 CAPTURE                          REF R5
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R10
       39 NEWCLOSURE                       R13 P5
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          REF R4
       42 CAPTURE                          REF R5
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R10
       47 CAPTURE                          REF R8
       48 CAPTURE                          REF R7
       49 LOADNIL                          R14
       50 NEWCLOSURE                       R15 P6
       51 CAPTURE                          REF R4
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R10
       57 NEWCLOSURE                       R16 P7
       58 CAPTURE                          REF R4
       59 CAPTURE                          VAL R3
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          VAL R0
       62 CAPTURE                          REF R8
       63 CAPTURE                          REF R7
       64 CAPTURE                          REF R6
       65 CAPTURE                          REF R14
       66 CAPTURE                          VAL R15
       67 CAPTURE                          REF R5
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R13
       70 CAPTURE                          VAL R12
       71 NEWCLOSURE                       R17 P8
       72 CAPTURE                          REF R4
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          VAL R13
       76 CAPTURE                          REF R6
       77 CAPTURE                          VAL R12
       78 NEWCLOSURE                       R18 P9
       79 CAPTURE                          REF R4
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          REF R14
       82 NEWCLOSURE                       R19 P10
       83 CAPTURE                          VAL R3
       84 CAPTURE                          REF R14
       85 DUPTABLE                         R20 K12 [{"startSearchAsync", "continueSearchAsync", "stopSearching", "destroy"}]
       86 SETTABLEKS                       R16 R20 K8 ["startSearchAsync"]
       88 SETTABLEKS                       R17 R20 K9 ["continueSearchAsync"]
       90 SETTABLEKS                       R18 R20 K10 ["stopSearching"]
       92 SETTABLEKS                       R19 R20 K11 ["destroy"]
       94 CLOSEUPVALS                      R4
       95 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["InstanceGuestRPCInterface"]
       13 GETTABLEKS                       R2 R2 K8 ["InstanceGuestRPCInterfaceTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["RpcTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["concatList"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Guest"]
       32 GETTABLEKS                       R5 R5 K7 ["InstanceGuestRPCInterface"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["createDatumFromInstance"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["createDebugLogger"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Flags"]
       50 GETTABLEKS                       R7 R7 K15 ["getFFlagExplorerFastSearch"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Guest"]
       57 GETTABLEKS                       R8 R8 K7 ["InstanceGuestRPCInterface"]
       59 GETTABLEKS                       R8 R8 K10 ["Util"]
       61 GETTABLEKS                       R8 R8 K16 ["hasHiddenAncestry"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Guest"]
       68 GETTABLEKS                       R9 R9 K7 ["InstanceGuestRPCInterface"]
       70 GETTABLEKS                       R9 R9 K10 ["Util"]
       72 GETTABLEKS                       R9 R9 K17 ["startTrackingInstance"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R10 K20 [game]
       77 LOADK                            R12 K21 ["ExplorerGuestSearchBudgetMs"]
       78 LOADN                            R13 10
       79 NAMECALL                         R10 R10 K22 ["DefineFastInt"]
       81 CALL                             R10 3 1
       82 DIVK                             R9 R10 K18 [1000]
       83 MOVE                             R10 R5
       84 LOADK                            R11 K23 ["createGuestSearching"]
       85 CALL                             R10 1 1
       86 DUPCLOSURE                       R11 K24 [PROTO_1]
       87 CAPTURE                          VAL R9
       88 DUPCLOSURE                       R12 K25 [PROTO_2]
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R4
       91 DUPCLOSURE                       R13 K26 [PROTO_14]
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R10
       99 RETURN                           R13 1
