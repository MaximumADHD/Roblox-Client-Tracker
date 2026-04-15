PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+2]
        7 RETURN                           R0 1
        8 ORK                              R2 R1 K3 [0]
        9 RETURN                           R2 1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["current"]
        4 JUMPIFEQKNIL                     R0 ; [+27]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 FASTCALL1                        TYPE R1 ; [+2]
       10 GETIMPORT                        R0 K2 [type]
       12 CALL                             R0 1 1
       13 JUMPIFNOTEQKS                    R0 K3 ["function"] ; [+7]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R0 R1 K0 ["current"]
       18 GETVARARGS                       R1 -1
       19 CALL                             R0 -1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K0 ["current"]
       24 GETTABLEKS                       R0 R1 K4 ["_isMockFunction"]
       26 JUMPIFNOT                        R0 ; [+5]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R0 R1 K0 ["current"]
       30 GETVARARGS                       R1 -1
       31 CALL                             R0 -1 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 GETTABLEKS                       R2 R0 K3 ["scale"]
        4 GETTABLEKS                       R3 R0 K4 ["offset"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_3:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["UDim"] ; [+11]
        9 GETIMPORT                        R2 K4 [warn]
       11 LOADK                            R3 K5 ["Expected UDim target but got"]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R5 R0
       14 GETIMPORT                        R4 K1 [typeof]
       16 CALL                             R4 1 1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 JUMPIFNOT                        R1 ; [+3]
       21 GETTABLEKS                       R3 R1 K6 ["onComplete"]
       23 JUMPIF                           R3 ; [+1]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K7 ["current"]
       27 JUMPIFNOT                        R1 ; [+11]
       28 DUPTABLE                         R2 K10 [{"duration", "easingStyle"}]
       29 GETTABLEKS                       R4 R1 K8 ["duration"]
       31 ORK                              R3 R4 K11 [0.3]
       32 SETTABLEKS                       R3 R2 K8 ["duration"]
       34 GETTABLEKS                       R3 R1 K9 ["easingStyle"]
       36 SETTABLEKS                       R3 R2 K9 ["easingStyle"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R2
       40 GETUPVAL                         R3 1
       41 DUPTABLE                         R4 K14 [{"scale", "offset"}]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R5 R6 K15 ["ease"]
       45 GETTABLEKS                       R7 R0 K16 ["Scale"]
       47 FASTCALL1                        TYPE R7 ; [+3]
       48 MOVE                             R9 R7
       49 GETIMPORT                        R8 K18 [type]
       51 CALL                             R8 1 1
       52 JUMPIFNOTEQKS                    R8 K19 ["number"] ; [+3]
       54 MOVE                             R6 R7
       55 JUMP                             ; [+1]
       56 LOADN                            R6 0
       57 MOVE                             R7 R2
       58 CALL                             R5 2 1
       59 SETTABLEKS                       R5 R4 K12 ["scale"]
       61 GETUPVAL                         R6 2
       62 GETTABLEKS                       R5 R6 K15 ["ease"]
       64 GETTABLEKS                       R7 R0 K20 ["Offset"]
       66 FASTCALL1                        TYPE R7 ; [+3]
       67 MOVE                             R9 R7
       68 GETIMPORT                        R8 K18 [type]
       70 CALL                             R8 1 1
       71 JUMPIFNOTEQKS                    R8 K19 ["number"] ; [+3]
       73 MOVE                             R6 R7
       74 JUMP                             ; [+1]
       75 LOADN                            R6 0
       76 MOVE                             R7 R2
       77 CALL                             R5 2 1
       78 SETTABLEKS                       R5 R4 K13 ["offset"]
       80 CALL                             R3 1 0
       81 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETTABLEKS                       R2 R0 K3 ["xScale"]
        4 GETTABLEKS                       R3 R0 K4 ["xOffset"]
        6 GETTABLEKS                       R4 R0 K5 ["yScale"]
        8 GETTABLEKS                       R5 R0 K6 ["yOffset"]
       10 CALL                             R1 4 -1
       11 RETURN                           R1 -1

PROTO_5:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["UDim2"] ; [+11]
        9 GETIMPORT                        R2 K4 [warn]
       11 LOADK                            R3 K5 ["Expected UDim2 target but got"]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R5 R0
       14 GETIMPORT                        R4 K1 [typeof]
       16 CALL                             R4 1 1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 JUMPIFNOT                        R1 ; [+3]
       21 GETTABLEKS                       R3 R1 K6 ["onComplete"]
       23 JUMPIF                           R3 ; [+1]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K7 ["current"]
       27 JUMPIFNOT                        R1 ; [+11]
       28 DUPTABLE                         R2 K10 [{"duration", "easingStyle"}]
       29 GETTABLEKS                       R4 R1 K8 ["duration"]
       31 ORK                              R3 R4 K11 [0.3]
       32 SETTABLEKS                       R3 R2 K8 ["duration"]
       34 GETTABLEKS                       R3 R1 K9 ["easingStyle"]
       36 SETTABLEKS                       R3 R2 K9 ["easingStyle"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R2
       40 GETUPVAL                         R3 1
       41 DUPTABLE                         R4 K16 [{"xScale", "xOffset", "yScale", "yOffset"}]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R5 R6 K17 ["ease"]
       45 GETTABLEKS                       R8 R0 K18 ["X"]
       47 GETTABLEKS                       R7 R8 K19 ["Scale"]
       49 FASTCALL1                        TYPE R7 ; [+3]
       50 MOVE                             R9 R7
       51 GETIMPORT                        R8 K21 [type]
       53 CALL                             R8 1 1
       54 JUMPIFNOTEQKS                    R8 K22 ["number"] ; [+3]
       56 MOVE                             R6 R7
       57 JUMP                             ; [+1]
       58 LOADN                            R6 0
       59 MOVE                             R7 R2
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R4 K12 ["xScale"]
       63 GETUPVAL                         R6 2
       64 GETTABLEKS                       R5 R6 K17 ["ease"]
       66 GETTABLEKS                       R8 R0 K18 ["X"]
       68 GETTABLEKS                       R7 R8 K23 ["Offset"]
       70 FASTCALL1                        TYPE R7 ; [+3]
       71 MOVE                             R9 R7
       72 GETIMPORT                        R8 K21 [type]
       74 CALL                             R8 1 1
       75 JUMPIFNOTEQKS                    R8 K22 ["number"] ; [+3]
       77 MOVE                             R6 R7
       78 JUMP                             ; [+1]
       79 LOADN                            R6 0
       80 MOVE                             R7 R2
       81 CALL                             R5 2 1
       82 SETTABLEKS                       R5 R4 K13 ["xOffset"]
       84 GETUPVAL                         R6 2
       85 GETTABLEKS                       R5 R6 K17 ["ease"]
       87 GETTABLEKS                       R8 R0 K24 ["Y"]
       89 GETTABLEKS                       R7 R8 K19 ["Scale"]
       91 FASTCALL1                        TYPE R7 ; [+3]
       92 MOVE                             R9 R7
       93 GETIMPORT                        R8 K21 [type]
       95 CALL                             R8 1 1
       96 JUMPIFNOTEQKS                    R8 K22 ["number"] ; [+3]
       98 MOVE                             R6 R7
       99 JUMP                             ; [+1]
      100 LOADN                            R6 0
      101 MOVE                             R7 R2
      102 CALL                             R5 2 1
      103 SETTABLEKS                       R5 R4 K14 ["yScale"]
      105 GETUPVAL                         R6 2
      106 GETTABLEKS                       R5 R6 K17 ["ease"]
      108 GETTABLEKS                       R8 R0 K24 ["Y"]
      110 GETTABLEKS                       R7 R8 K23 ["Offset"]
      112 FASTCALL1                        TYPE R7 ; [+3]
      113 MOVE                             R9 R7
      114 GETIMPORT                        R8 K21 [type]
      116 CALL                             R8 1 1
      117 JUMPIFNOTEQKS                    R8 K22 ["number"] ; [+3]
      119 MOVE                             R6 R7
      120 JUMP                             ; [+1]
      121 LOADN                            R6 0
      122 MOVE                             R7 R2
      123 CALL                             R5 2 1
      124 SETTABLEKS                       R5 R4 K15 ["yOffset"]
      126 CALL                             R3 1 0
      127 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["x"]
        4 GETTABLEKS                       R3 R0 K4 ["y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_7:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["Vector2"] ; [+11]
        9 GETIMPORT                        R2 K4 [warn]
       11 LOADK                            R3 K5 ["Expected Vector2 target but got"]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R5 R0
       14 GETIMPORT                        R4 K1 [typeof]
       16 CALL                             R4 1 1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 JUMPIFNOT                        R1 ; [+3]
       21 GETTABLEKS                       R3 R1 K6 ["onComplete"]
       23 JUMPIF                           R3 ; [+1]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K7 ["current"]
       27 JUMPIFNOT                        R1 ; [+11]
       28 DUPTABLE                         R2 K10 [{"duration", "easingStyle"}]
       29 GETTABLEKS                       R4 R1 K8 ["duration"]
       31 ORK                              R3 R4 K11 [0.3]
       32 SETTABLEKS                       R3 R2 K8 ["duration"]
       34 GETTABLEKS                       R3 R1 K9 ["easingStyle"]
       36 SETTABLEKS                       R3 R2 K9 ["easingStyle"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R2
       40 GETUPVAL                         R3 1
       41 DUPTABLE                         R4 K14 [{"x", "y"}]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R5 R6 K15 ["ease"]
       45 GETTABLEKS                       R7 R0 K16 ["X"]
       47 FASTCALL1                        TYPE R7 ; [+3]
       48 MOVE                             R9 R7
       49 GETIMPORT                        R8 K18 [type]
       51 CALL                             R8 1 1
       52 JUMPIFNOTEQKS                    R8 K19 ["number"] ; [+3]
       54 MOVE                             R6 R7
       55 JUMP                             ; [+1]
       56 LOADN                            R6 0
       57 MOVE                             R7 R2
       58 CALL                             R5 2 1
       59 SETTABLEKS                       R5 R4 K12 ["x"]
       61 GETUPVAL                         R6 2
       62 GETTABLEKS                       R5 R6 K15 ["ease"]
       64 GETTABLEKS                       R7 R0 K20 ["Y"]
       66 FASTCALL1                        TYPE R7 ; [+3]
       67 MOVE                             R9 R7
       68 GETIMPORT                        R8 K18 [type]
       70 CALL                             R8 1 1
       71 JUMPIFNOTEQKS                    R8 K19 ["number"] ; [+3]
       73 MOVE                             R6 R7
       74 JUMP                             ; [+1]
       75 LOADN                            R6 0
       76 MOVE                             R7 R2
       77 CALL                             R5 2 1
       78 SETTABLEKS                       R5 R4 K13 ["y"]
       80 CALL                             R3 1 0
       81 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [Color3.new]
        2 GETTABLEKS                       R2 R0 K3 ["r"]
        4 GETTABLEKS                       R3 R0 K4 ["g"]
        6 GETTABLEKS                       R4 R0 K5 ["b"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_9:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["Color3"] ; [+11]
        9 GETIMPORT                        R2 K4 [warn]
       11 LOADK                            R3 K5 ["Expected Color3 target but got"]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R5 R0
       14 GETIMPORT                        R4 K1 [typeof]
       16 CALL                             R4 1 1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 JUMPIFNOT                        R1 ; [+3]
       21 GETTABLEKS                       R3 R1 K6 ["onComplete"]
       23 JUMPIF                           R3 ; [+1]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K7 ["current"]
       27 JUMPIFNOT                        R1 ; [+11]
       28 DUPTABLE                         R2 K10 [{"duration", "easingStyle"}]
       29 GETTABLEKS                       R4 R1 K8 ["duration"]
       31 ORK                              R3 R4 K11 [0.3]
       32 SETTABLEKS                       R3 R2 K8 ["duration"]
       34 GETTABLEKS                       R3 R1 K9 ["easingStyle"]
       36 SETTABLEKS                       R3 R2 K9 ["easingStyle"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R2
       40 GETUPVAL                         R3 1
       41 DUPTABLE                         R4 K15 [{"r", "g", "b"}]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R5 R6 K16 ["ease"]
       45 GETTABLEKS                       R7 R0 K17 ["R"]
       47 FASTCALL1                        TYPE R7 ; [+3]
       48 MOVE                             R9 R7
       49 GETIMPORT                        R8 K19 [type]
       51 CALL                             R8 1 1
       52 JUMPIFNOTEQKS                    R8 K20 ["number"] ; [+3]
       54 MOVE                             R6 R7
       55 JUMP                             ; [+1]
       56 LOADN                            R6 0
       57 MOVE                             R7 R2
       58 CALL                             R5 2 1
       59 SETTABLEKS                       R5 R4 K12 ["r"]
       61 GETUPVAL                         R6 2
       62 GETTABLEKS                       R5 R6 K16 ["ease"]
       64 GETTABLEKS                       R7 R0 K21 ["G"]
       66 FASTCALL1                        TYPE R7 ; [+3]
       67 MOVE                             R9 R7
       68 GETIMPORT                        R8 K19 [type]
       70 CALL                             R8 1 1
       71 JUMPIFNOTEQKS                    R8 K20 ["number"] ; [+3]
       73 MOVE                             R6 R7
       74 JUMP                             ; [+1]
       75 LOADN                            R6 0
       76 MOVE                             R7 R2
       77 CALL                             R5 2 1
       78 SETTABLEKS                       R5 R4 K13 ["g"]
       80 GETUPVAL                         R6 2
       81 GETTABLEKS                       R5 R6 K16 ["ease"]
       83 GETTABLEKS                       R7 R0 K22 ["B"]
       85 FASTCALL1                        TYPE R7 ; [+3]
       86 MOVE                             R9 R7
       87 GETIMPORT                        R8 K19 [type]
       89 CALL                             R8 1 1
       90 JUMPIFNOTEQKS                    R8 K20 ["number"] ; [+3]
       92 MOVE                             R6 R7
       93 JUMP                             ; [+1]
       94 LOADN                            R6 0
       95 MOVE                             R7 R2
       96 CALL                             R5 2 1
       97 SETTABLEKS                       R5 R4 K14 ["b"]
       99 CALL                             R3 1 0
      100 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 1

PROTO_11:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R3 R1 K3 ["onComplete"]
       12 JUMPIF                           R3 ; [+1]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K4 ["current"]
       16 JUMPIFNOT                        R1 ; [+11]
       17 DUPTABLE                         R2 K7 [{"duration", "easingStyle"}]
       18 GETTABLEKS                       R4 R1 K5 ["duration"]
       20 ORK                              R3 R4 K8 [0.3]
       21 SETTABLEKS                       R3 R2 K5 ["duration"]
       23 GETTABLEKS                       R3 R1 K6 ["easingStyle"]
       25 SETTABLEKS                       R3 R2 K6 ["easingStyle"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R2
       29 GETUPVAL                         R3 1
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K9 ["ease"]
       33 MOVE                             R5 R0
       34 MOVE                             R6 R2
       35 CALL                             R4 2 -1
       36 CALL                             R3 -1 0
       37 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 1
       12 MOVE                             R5 R1
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 FASTCALL1                        TYPEOF R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K3 [typeof]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKS                    R3 K4 ["UDim"] ; [+44]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K5 ["useAnimatedBinding"]
       26 DUPTABLE                         R4 K8 [{"scale", "offset"}]
       27 GETTABLEKS                       R6 R0 K9 ["Scale"]
       29 FASTCALL1                        TYPE R6 ; [+3]
       30 MOVE                             R8 R6
       31 GETIMPORT                        R7 K11 [type]
       33 CALL                             R7 1 1
       34 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
       36 MOVE                             R5 R6
       37 JUMP                             ; [+1]
       38 LOADN                            R5 0
       39 SETTABLEKS                       R5 R4 K6 ["scale"]
       41 GETTABLEKS                       R6 R0 K13 ["Offset"]
       43 FASTCALL1                        TYPE R6 ; [+3]
       44 MOVE                             R8 R6
       45 GETIMPORT                        R7 K11 [type]
       47 CALL                             R7 1 1
       48 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
       50 MOVE                             R5 R6
       51 JUMP                             ; [+1]
       52 LOADN                            R5 0
       53 SETTABLEKS                       R5 R4 K7 ["offset"]
       55 MOVE                             R5 R2
       56 CALL                             R3 2 2
       57 DUPCLOSURE                       R7 K14 [PROTO_2]
       58 NAMECALL                         R5 R3 K15 ["map"]
       60 CALL                             R5 2 1
       61 NEWCLOSURE                       R6 P2
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R4
       64 CAPTURE                          UPVAL U1
       65 RETURN                           R5 2
       66 FASTCALL1                        TYPEOF R0 ; [+3]
       67 MOVE                             R4 R0
       68 GETIMPORT                        R3 K3 [typeof]
       70 CALL                             R3 1 1
       71 JUMPIFNOTEQKS                    R3 K16 ["UDim2"] ; [+80]
       73 GETUPVAL                         R4 1
       74 GETTABLEKS                       R3 R4 K5 ["useAnimatedBinding"]
       76 DUPTABLE                         R4 K21 [{"xScale", "xOffset", "yScale", "yOffset"}]
       77 GETTABLEKS                       R7 R0 K22 ["X"]
       79 GETTABLEKS                       R6 R7 K9 ["Scale"]
       81 FASTCALL1                        TYPE R6 ; [+3]
       82 MOVE                             R8 R6
       83 GETIMPORT                        R7 K11 [type]
       85 CALL                             R7 1 1
       86 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
       88 MOVE                             R5 R6
       89 JUMP                             ; [+1]
       90 LOADN                            R5 0
       91 SETTABLEKS                       R5 R4 K17 ["xScale"]
       93 GETTABLEKS                       R7 R0 K22 ["X"]
       95 GETTABLEKS                       R6 R7 K13 ["Offset"]
       97 FASTCALL1                        TYPE R6 ; [+3]
       98 MOVE                             R8 R6
       99 GETIMPORT                        R7 K11 [type]
      101 CALL                             R7 1 1
      102 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
      104 MOVE                             R5 R6
      105 JUMP                             ; [+1]
      106 LOADN                            R5 0
      107 SETTABLEKS                       R5 R4 K18 ["xOffset"]
      109 GETTABLEKS                       R7 R0 K23 ["Y"]
      111 GETTABLEKS                       R6 R7 K9 ["Scale"]
      113 FASTCALL1                        TYPE R6 ; [+3]
      114 MOVE                             R8 R6
      115 GETIMPORT                        R7 K11 [type]
      117 CALL                             R7 1 1
      118 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
      120 MOVE                             R5 R6
      121 JUMP                             ; [+1]
      122 LOADN                            R5 0
      123 SETTABLEKS                       R5 R4 K19 ["yScale"]
      125 GETTABLEKS                       R7 R0 K23 ["Y"]
      127 GETTABLEKS                       R6 R7 K13 ["Offset"]
      129 FASTCALL1                        TYPE R6 ; [+3]
      130 MOVE                             R8 R6
      131 GETIMPORT                        R7 K11 [type]
      133 CALL                             R7 1 1
      134 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
      136 MOVE                             R5 R6
      137 JUMP                             ; [+1]
      138 LOADN                            R5 0
      139 SETTABLEKS                       R5 R4 K20 ["yOffset"]
      141 MOVE                             R5 R2
      142 CALL                             R3 2 2
      143 DUPCLOSURE                       R7 K24 [PROTO_4]
      144 NAMECALL                         R5 R3 K15 ["map"]
      146 CALL                             R5 2 1
      147 NEWCLOSURE                       R6 P4
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R4
      150 CAPTURE                          UPVAL U1
      151 RETURN                           R5 2
      152 FASTCALL1                        TYPEOF R0 ; [+3]
      153 MOVE                             R4 R0
      154 GETIMPORT                        R3 K3 [typeof]
      156 CALL                             R3 1 1
      157 JUMPIFNOTEQKS                    R3 K25 ["Vector2"] ; [+44]
      159 GETUPVAL                         R4 1
      160 GETTABLEKS                       R3 R4 K5 ["useAnimatedBinding"]
      162 DUPTABLE                         R4 K28 [{"x", "y"}]
      163 GETTABLEKS                       R6 R0 K22 ["X"]
      165 FASTCALL1                        TYPE R6 ; [+3]
      166 MOVE                             R8 R6
      167 GETIMPORT                        R7 K11 [type]
      169 CALL                             R7 1 1
      170 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
      172 MOVE                             R5 R6
      173 JUMP                             ; [+1]
      174 LOADN                            R5 0
      175 SETTABLEKS                       R5 R4 K26 ["x"]
      177 GETTABLEKS                       R6 R0 K23 ["Y"]
      179 FASTCALL1                        TYPE R6 ; [+3]
      180 MOVE                             R8 R6
      181 GETIMPORT                        R7 K11 [type]
      183 CALL                             R7 1 1
      184 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
      186 MOVE                             R5 R6
      187 JUMP                             ; [+1]
      188 LOADN                            R5 0
      189 SETTABLEKS                       R5 R4 K27 ["y"]
      191 MOVE                             R5 R2
      192 CALL                             R3 2 2
      193 DUPCLOSURE                       R7 K29 [PROTO_6]
      194 NAMECALL                         R5 R3 K15 ["map"]
      196 CALL                             R5 2 1
      197 NEWCLOSURE                       R6 P6
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R4
      200 CAPTURE                          UPVAL U1
      201 RETURN                           R5 2
      202 FASTCALL1                        TYPEOF R0 ; [+3]
      203 MOVE                             R4 R0
      204 GETIMPORT                        R3 K3 [typeof]
      206 CALL                             R3 1 1
      207 JUMPIFNOTEQKS                    R3 K30 ["Color3"] ; [+58]
      209 GETUPVAL                         R4 1
      210 GETTABLEKS                       R3 R4 K5 ["useAnimatedBinding"]
      212 DUPTABLE                         R4 K34 [{"r", "g", "b"}]
      213 GETTABLEKS                       R6 R0 K35 ["R"]
      215 FASTCALL1                        TYPE R6 ; [+3]
      216 MOVE                             R8 R6
      217 GETIMPORT                        R7 K11 [type]
      219 CALL                             R7 1 1
      220 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
      222 MOVE                             R5 R6
      223 JUMP                             ; [+1]
      224 LOADN                            R5 0
      225 SETTABLEKS                       R5 R4 K31 ["r"]
      227 GETTABLEKS                       R6 R0 K36 ["G"]
      229 FASTCALL1                        TYPE R6 ; [+3]
      230 MOVE                             R8 R6
      231 GETIMPORT                        R7 K11 [type]
      233 CALL                             R7 1 1
      234 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
      236 MOVE                             R5 R6
      237 JUMP                             ; [+1]
      238 LOADN                            R5 0
      239 SETTABLEKS                       R5 R4 K32 ["g"]
      241 GETTABLEKS                       R6 R0 K37 ["B"]
      243 FASTCALL1                        TYPE R6 ; [+3]
      244 MOVE                             R8 R6
      245 GETIMPORT                        R7 K11 [type]
      247 CALL                             R7 1 1
      248 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
      250 MOVE                             R5 R6
      251 JUMP                             ; [+1]
      252 LOADN                            R5 0
      253 SETTABLEKS                       R5 R4 K33 ["b"]
      255 MOVE                             R5 R2
      256 CALL                             R3 2 2
      257 DUPCLOSURE                       R7 K38 [PROTO_8]
      258 NAMECALL                         R5 R3 K15 ["map"]
      260 CALL                             R5 2 1
      261 NEWCLOSURE                       R6 P8
      262 CAPTURE                          VAL R1
      263 CAPTURE                          VAL R4
      264 CAPTURE                          UPVAL U1
      265 RETURN                           R5 2
      266 FASTCALL1                        TYPEOF R0 ; [+3]
      267 MOVE                             R4 R0
      268 GETIMPORT                        R3 K3 [typeof]
      270 CALL                             R3 1 1
      271 JUMPIFNOTEQKS                    R3 K12 ["number"] ; [+25]
      273 GETUPVAL                         R4 1
      274 GETTABLEKS                       R3 R4 K5 ["useAnimatedBinding"]
      276 FASTCALL1                        TYPE R0 ; [+3]
      277 MOVE                             R6 R0
      278 GETIMPORT                        R5 K11 [type]
      280 CALL                             R5 1 1
      281 JUMPIFNOTEQKS                    R5 K12 ["number"] ; [+3]
      283 MOVE                             R4 R0
      284 JUMP                             ; [+1]
      285 LOADN                            R4 0
      286 MOVE                             R5 R2
      287 CALL                             R3 2 2
      288 DUPCLOSURE                       R7 K39 [PROTO_10]
      289 NAMECALL                         R5 R3 K15 ["map"]
      291 CALL                             R5 2 1
      292 NEWCLOSURE                       R6 P10
      293 CAPTURE                          VAL R1
      294 CAPTURE                          VAL R4
      295 CAPTURE                          UPVAL U1
      296 RETURN                           R5 2
      297 GETIMPORT                        R3 K41 [warn]
      299 LOADK                            R4 K42 ["Unsupported type for animated value:"]
      300 FASTCALL1                        TYPEOF R0 ; [+3]
      301 MOVE                             R6 R0
      302 GETIMPORT                        R5 K3 [typeof]
      304 CALL                             R5 1 1
      305 CALL                             R3 2 0
      306 GETUPVAL                         R4 0
      307 GETTABLEKS                       R3 R4 K43 ["createBinding"]
      309 MOVE                             R4 R0
      310 CALL                             R3 1 1
      311 DUPCLOSURE                       R4 K44 [PROTO_12]
      312 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R2 K5 ["React"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R2 K6 ["ReactOtter"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K4 [require]
       21 GETTABLEKS                       R6 R1 K7 ["Types"]
       23 CALL                             R5 1 1
       24 DUPCLOSURE                       R6 K8 [PROTO_0]
       25 DUPCLOSURE                       R7 K9 [PROTO_13]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 RETURN                           R7 1
