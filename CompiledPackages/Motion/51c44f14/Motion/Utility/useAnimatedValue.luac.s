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
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETIMPORT                        R2 K4 [Color3.new]
        3 GETTABLEKS                       R3 R0 K5 ["r"]
        5 GETTABLEKS                       R4 R0 K6 ["g"]
        7 GETTABLEKS                       R5 R0 K7 ["b"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 GETTABLEKS                       R2 R0 K1 ["Transparency"]
       14 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       16 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        7 GETTABLEKS                       R2 R0 K3 ["Color3"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETTABLEKS                       R2 R0 K4 ["Transparency"]
       12 JUMPIFNOTEQKNIL                  R2 ; [+6]
       14 GETIMPORT                        R2 K6 [warn]
       16 LOADK                            R3 K7 ["Expected target to be a table with Color3 and Transparency fields"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 JUMPIFNOT                        R1 ; [+3]
       21 GETTABLEKS                       R3 R1 K8 ["onComplete"]
       23 JUMPIF                           R3 ; [+1]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K9 ["current"]
       27 JUMPIFNOT                        R1 ; [+14]
       28 DUPTABLE                         R2 K12 [{"duration", "easingStyle"}]
       29 GETTABLEKS                       R3 R1 K10 ["duration"]
       31 JUMPIF                           R3 ; [+3]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K10 ["duration"]
       35 SETTABLEKS                       R3 R2 K10 ["duration"]
       37 GETTABLEKS                       R3 R1 K11 ["easingStyle"]
       39 SETTABLEKS                       R3 R2 K11 ["easingStyle"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R2
       43 GETUPVAL                         R3 2
       44 DUPTABLE                         R4 K16 [{"r", "g", "b", "Transparency"}]
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R5 R6 K17 ["ease"]
       48 GETTABLEKS                       R8 R0 K3 ["Color3"]
       50 GETTABLEKS                       R7 R8 K18 ["R"]
       52 FASTCALL1                        TYPE R7 ; [+3]
       53 MOVE                             R9 R7
       54 GETIMPORT                        R8 K20 [type]
       56 CALL                             R8 1 1
       57 JUMPIFNOTEQKS                    R8 K21 ["number"] ; [+3]
       59 MOVE                             R6 R7
       60 JUMP                             ; [+1]
       61 LOADN                            R6 0
       62 MOVE                             R7 R2
       63 CALL                             R5 2 1
       64 SETTABLEKS                       R5 R4 K13 ["r"]
       66 GETUPVAL                         R6 3
       67 GETTABLEKS                       R5 R6 K17 ["ease"]
       69 GETTABLEKS                       R8 R0 K3 ["Color3"]
       71 GETTABLEKS                       R7 R8 K22 ["G"]
       73 FASTCALL1                        TYPE R7 ; [+3]
       74 MOVE                             R9 R7
       75 GETIMPORT                        R8 K20 [type]
       77 CALL                             R8 1 1
       78 JUMPIFNOTEQKS                    R8 K21 ["number"] ; [+3]
       80 MOVE                             R6 R7
       81 JUMP                             ; [+1]
       82 LOADN                            R6 0
       83 MOVE                             R7 R2
       84 CALL                             R5 2 1
       85 SETTABLEKS                       R5 R4 K14 ["g"]
       87 GETUPVAL                         R6 3
       88 GETTABLEKS                       R5 R6 K17 ["ease"]
       90 GETTABLEKS                       R8 R0 K3 ["Color3"]
       92 GETTABLEKS                       R7 R8 K23 ["B"]
       94 FASTCALL1                        TYPE R7 ; [+3]
       95 MOVE                             R9 R7
       96 GETIMPORT                        R8 K20 [type]
       98 CALL                             R8 1 1
       99 JUMPIFNOTEQKS                    R8 K21 ["number"] ; [+3]
      101 MOVE                             R6 R7
      102 JUMP                             ; [+1]
      103 LOADN                            R6 0
      104 MOVE                             R7 R2
      105 CALL                             R5 2 1
      106 SETTABLEKS                       R5 R4 K15 ["b"]
      108 GETUPVAL                         R6 3
      109 GETTABLEKS                       R5 R6 K17 ["ease"]
      111 GETTABLEKS                       R7 R0 K4 ["Transparency"]
      113 FASTCALL1                        TYPE R7 ; [+3]
      114 MOVE                             R9 R7
      115 GETIMPORT                        R8 K20 [type]
      117 CALL                             R8 1 1
      118 JUMPIFNOTEQKS                    R8 K21 ["number"] ; [+3]
      120 MOVE                             R6 R7
      121 JUMP                             ; [+1]
      122 LOADN                            R6 0
      123 MOVE                             R7 R2
      124 CALL                             R5 2 1
      125 SETTABLEKS                       R5 R4 K4 ["Transparency"]
      127 CALL                             R3 1 0
      128 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 GETTABLEKS                       R2 R0 K3 ["scale"]
        4 GETTABLEKS                       R3 R0 K4 ["offset"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_5:
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
       27 JUMPIFNOT                        R1 ; [+14]
       28 DUPTABLE                         R2 K10 [{"duration", "easingStyle"}]
       29 GETTABLEKS                       R3 R1 K8 ["duration"]
       31 JUMPIF                           R3 ; [+3]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K8 ["duration"]
       35 SETTABLEKS                       R3 R2 K8 ["duration"]
       37 GETTABLEKS                       R3 R1 K9 ["easingStyle"]
       39 SETTABLEKS                       R3 R2 K9 ["easingStyle"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R2
       43 GETUPVAL                         R3 2
       44 DUPTABLE                         R4 K13 [{"scale", "offset"}]
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R5 R6 K14 ["ease"]
       48 GETTABLEKS                       R7 R0 K15 ["Scale"]
       50 FASTCALL1                        TYPE R7 ; [+3]
       51 MOVE                             R9 R7
       52 GETIMPORT                        R8 K17 [type]
       54 CALL                             R8 1 1
       55 JUMPIFNOTEQKS                    R8 K18 ["number"] ; [+3]
       57 MOVE                             R6 R7
       58 JUMP                             ; [+1]
       59 LOADN                            R6 0
       60 MOVE                             R7 R2
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K11 ["scale"]
       64 GETUPVAL                         R6 3
       65 GETTABLEKS                       R5 R6 K14 ["ease"]
       67 GETTABLEKS                       R7 R0 K19 ["Offset"]
       69 FASTCALL1                        TYPE R7 ; [+3]
       70 MOVE                             R9 R7
       71 GETIMPORT                        R8 K17 [type]
       73 CALL                             R8 1 1
       74 JUMPIFNOTEQKS                    R8 K18 ["number"] ; [+3]
       76 MOVE                             R6 R7
       77 JUMP                             ; [+1]
       78 LOADN                            R6 0
       79 MOVE                             R7 R2
       80 CALL                             R5 2 1
       81 SETTABLEKS                       R5 R4 K12 ["offset"]
       83 CALL                             R3 1 0
       84 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETTABLEKS                       R2 R0 K3 ["xScale"]
        4 GETTABLEKS                       R3 R0 K4 ["xOffset"]
        6 GETTABLEKS                       R4 R0 K5 ["yScale"]
        8 GETTABLEKS                       R5 R0 K6 ["yOffset"]
       10 CALL                             R1 4 -1
       11 RETURN                           R1 -1

PROTO_7:
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
       27 JUMPIFNOT                        R1 ; [+14]
       28 DUPTABLE                         R2 K10 [{"duration", "easingStyle"}]
       29 GETTABLEKS                       R3 R1 K8 ["duration"]
       31 JUMPIF                           R3 ; [+3]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K8 ["duration"]
       35 SETTABLEKS                       R3 R2 K8 ["duration"]
       37 GETTABLEKS                       R3 R1 K9 ["easingStyle"]
       39 SETTABLEKS                       R3 R2 K9 ["easingStyle"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R2
       43 GETUPVAL                         R3 2
       44 DUPTABLE                         R4 K15 [{"xScale", "xOffset", "yScale", "yOffset"}]
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R5 R6 K16 ["ease"]
       48 GETTABLEKS                       R8 R0 K17 ["X"]
       50 GETTABLEKS                       R7 R8 K18 ["Scale"]
       52 FASTCALL1                        TYPE R7 ; [+3]
       53 MOVE                             R9 R7
       54 GETIMPORT                        R8 K20 [type]
       56 CALL                             R8 1 1
       57 JUMPIFNOTEQKS                    R8 K21 ["number"] ; [+3]
       59 MOVE                             R6 R7
       60 JUMP                             ; [+1]
       61 LOADN                            R6 0
       62 MOVE                             R7 R2
       63 CALL                             R5 2 1
       64 SETTABLEKS                       R5 R4 K11 ["xScale"]
       66 GETUPVAL                         R6 3
       67 GETTABLEKS                       R5 R6 K16 ["ease"]
       69 GETTABLEKS                       R8 R0 K17 ["X"]
       71 GETTABLEKS                       R7 R8 K22 ["Offset"]
       73 FASTCALL1                        TYPE R7 ; [+3]
       74 MOVE                             R9 R7
       75 GETIMPORT                        R8 K20 [type]
       77 CALL                             R8 1 1
       78 JUMPIFNOTEQKS                    R8 K21 ["number"] ; [+3]
       80 MOVE                             R6 R7
       81 JUMP                             ; [+1]
       82 LOADN                            R6 0
       83 MOVE                             R7 R2
       84 CALL                             R5 2 1
       85 SETTABLEKS                       R5 R4 K12 ["xOffset"]
       87 GETUPVAL                         R6 3
       88 GETTABLEKS                       R5 R6 K16 ["ease"]
       90 GETTABLEKS                       R8 R0 K23 ["Y"]
       92 GETTABLEKS                       R7 R8 K18 ["Scale"]
       94 FASTCALL1                        TYPE R7 ; [+3]
       95 MOVE                             R9 R7
       96 GETIMPORT                        R8 K20 [type]
       98 CALL                             R8 1 1
       99 JUMPIFNOTEQKS                    R8 K21 ["number"] ; [+3]
      101 MOVE                             R6 R7
      102 JUMP                             ; [+1]
      103 LOADN                            R6 0
      104 MOVE                             R7 R2
      105 CALL                             R5 2 1
      106 SETTABLEKS                       R5 R4 K13 ["yScale"]
      108 GETUPVAL                         R6 3
      109 GETTABLEKS                       R5 R6 K16 ["ease"]
      111 GETTABLEKS                       R8 R0 K23 ["Y"]
      113 GETTABLEKS                       R7 R8 K22 ["Offset"]
      115 FASTCALL1                        TYPE R7 ; [+3]
      116 MOVE                             R9 R7
      117 GETIMPORT                        R8 K20 [type]
      119 CALL                             R8 1 1
      120 JUMPIFNOTEQKS                    R8 K21 ["number"] ; [+3]
      122 MOVE                             R6 R7
      123 JUMP                             ; [+1]
      124 LOADN                            R6 0
      125 MOVE                             R7 R2
      126 CALL                             R5 2 1
      127 SETTABLEKS                       R5 R4 K14 ["yOffset"]
      129 CALL                             R3 1 0
      130 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["x"]
        4 GETTABLEKS                       R3 R0 K4 ["y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_9:
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
       27 JUMPIFNOT                        R1 ; [+14]
       28 DUPTABLE                         R2 K10 [{"duration", "easingStyle"}]
       29 GETTABLEKS                       R3 R1 K8 ["duration"]
       31 JUMPIF                           R3 ; [+3]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K8 ["duration"]
       35 SETTABLEKS                       R3 R2 K8 ["duration"]
       37 GETTABLEKS                       R3 R1 K9 ["easingStyle"]
       39 SETTABLEKS                       R3 R2 K9 ["easingStyle"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R2
       43 GETUPVAL                         R3 2
       44 DUPTABLE                         R4 K13 [{"x", "y"}]
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R5 R6 K14 ["ease"]
       48 GETTABLEKS                       R7 R0 K15 ["X"]
       50 FASTCALL1                        TYPE R7 ; [+3]
       51 MOVE                             R9 R7
       52 GETIMPORT                        R8 K17 [type]
       54 CALL                             R8 1 1
       55 JUMPIFNOTEQKS                    R8 K18 ["number"] ; [+3]
       57 MOVE                             R6 R7
       58 JUMP                             ; [+1]
       59 LOADN                            R6 0
       60 MOVE                             R7 R2
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K11 ["x"]
       64 GETUPVAL                         R6 3
       65 GETTABLEKS                       R5 R6 K14 ["ease"]
       67 GETTABLEKS                       R7 R0 K19 ["Y"]
       69 FASTCALL1                        TYPE R7 ; [+3]
       70 MOVE                             R9 R7
       71 GETIMPORT                        R8 K17 [type]
       73 CALL                             R8 1 1
       74 JUMPIFNOTEQKS                    R8 K18 ["number"] ; [+3]
       76 MOVE                             R6 R7
       77 JUMP                             ; [+1]
       78 LOADN                            R6 0
       79 MOVE                             R7 R2
       80 CALL                             R5 2 1
       81 SETTABLEKS                       R5 R4 K12 ["y"]
       83 CALL                             R3 1 0
       84 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K2 [Color3.new]
        2 GETTABLEKS                       R2 R0 K3 ["r"]
        4 GETTABLEKS                       R3 R0 K4 ["g"]
        6 GETTABLEKS                       R4 R0 K5 ["b"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_11:
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
       27 JUMPIFNOT                        R1 ; [+14]
       28 DUPTABLE                         R2 K10 [{"duration", "easingStyle"}]
       29 GETTABLEKS                       R3 R1 K8 ["duration"]
       31 JUMPIF                           R3 ; [+3]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K8 ["duration"]
       35 SETTABLEKS                       R3 R2 K8 ["duration"]
       37 GETTABLEKS                       R3 R1 K9 ["easingStyle"]
       39 SETTABLEKS                       R3 R2 K9 ["easingStyle"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R2
       43 GETUPVAL                         R3 2
       44 DUPTABLE                         R4 K14 [{"r", "g", "b"}]
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R5 R6 K15 ["ease"]
       48 GETTABLEKS                       R7 R0 K16 ["R"]
       50 FASTCALL1                        TYPE R7 ; [+3]
       51 MOVE                             R9 R7
       52 GETIMPORT                        R8 K18 [type]
       54 CALL                             R8 1 1
       55 JUMPIFNOTEQKS                    R8 K19 ["number"] ; [+3]
       57 MOVE                             R6 R7
       58 JUMP                             ; [+1]
       59 LOADN                            R6 0
       60 MOVE                             R7 R2
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K11 ["r"]
       64 GETUPVAL                         R6 3
       65 GETTABLEKS                       R5 R6 K15 ["ease"]
       67 GETTABLEKS                       R7 R0 K20 ["G"]
       69 FASTCALL1                        TYPE R7 ; [+3]
       70 MOVE                             R9 R7
       71 GETIMPORT                        R8 K18 [type]
       73 CALL                             R8 1 1
       74 JUMPIFNOTEQKS                    R8 K19 ["number"] ; [+3]
       76 MOVE                             R6 R7
       77 JUMP                             ; [+1]
       78 LOADN                            R6 0
       79 MOVE                             R7 R2
       80 CALL                             R5 2 1
       81 SETTABLEKS                       R5 R4 K12 ["g"]
       83 GETUPVAL                         R6 3
       84 GETTABLEKS                       R5 R6 K15 ["ease"]
       86 GETTABLEKS                       R7 R0 K21 ["B"]
       88 FASTCALL1                        TYPE R7 ; [+3]
       89 MOVE                             R9 R7
       90 GETIMPORT                        R8 K18 [type]
       92 CALL                             R8 1 1
       93 JUMPIFNOTEQKS                    R8 K19 ["number"] ; [+3]
       95 MOVE                             R6 R7
       96 JUMP                             ; [+1]
       97 LOADN                            R6 0
       98 MOVE                             R7 R2
       99 CALL                             R5 2 1
      100 SETTABLEKS                       R5 R4 K13 ["b"]
      102 CALL                             R3 1 0
      103 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 1

PROTO_13:
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
       16 JUMPIFNOT                        R1 ; [+14]
       17 DUPTABLE                         R2 K7 [{"duration", "easingStyle"}]
       18 GETTABLEKS                       R3 R1 K5 ["duration"]
       20 JUMPIF                           R3 ; [+3]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K5 ["duration"]
       24 SETTABLEKS                       R3 R2 K5 ["duration"]
       26 GETTABLEKS                       R3 R1 K6 ["easingStyle"]
       28 SETTABLEKS                       R3 R2 K6 ["easingStyle"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R2
       32 GETUPVAL                         R3 2
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R4 R5 K8 ["ease"]
       36 MOVE                             R5 R0
       37 MOVE                             R6 R2
       38 CALL                             R4 2 -1
       39 CALL                             R3 -1 0
       40 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
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
       21 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+85]
       23 GETTABLEKS                       R3 R0 K5 ["Color3"]
       25 JUMPIFNOT                        R3 ; [+81]
       26 GETTABLEKS                       R3 R0 K6 ["Transparency"]
       28 JUMPIFNOT                        R3 ; [+78]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R3 R4 K7 ["useAnimatedBinding"]
       32 DUPTABLE                         R4 K11 [{"r", "g", "b", "Transparency"}]
       33 GETTABLEKS                       R7 R0 K5 ["Color3"]
       35 GETTABLEKS                       R6 R7 K12 ["R"]
       37 FASTCALL1                        TYPE R6 ; [+3]
       38 MOVE                             R8 R6
       39 GETIMPORT                        R7 K14 [type]
       41 CALL                             R7 1 1
       42 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
       44 MOVE                             R5 R6
       45 JUMP                             ; [+1]
       46 LOADN                            R5 0
       47 SETTABLEKS                       R5 R4 K8 ["r"]
       49 GETTABLEKS                       R7 R0 K5 ["Color3"]
       51 GETTABLEKS                       R6 R7 K16 ["G"]
       53 FASTCALL1                        TYPE R6 ; [+3]
       54 MOVE                             R8 R6
       55 GETIMPORT                        R7 K14 [type]
       57 CALL                             R7 1 1
       58 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
       60 MOVE                             R5 R6
       61 JUMP                             ; [+1]
       62 LOADN                            R5 0
       63 SETTABLEKS                       R5 R4 K9 ["g"]
       65 GETTABLEKS                       R7 R0 K5 ["Color3"]
       67 GETTABLEKS                       R6 R7 K17 ["B"]
       69 FASTCALL1                        TYPE R6 ; [+3]
       70 MOVE                             R8 R6
       71 GETIMPORT                        R7 K14 [type]
       73 CALL                             R7 1 1
       74 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
       76 MOVE                             R5 R6
       77 JUMP                             ; [+1]
       78 LOADN                            R5 0
       79 SETTABLEKS                       R5 R4 K10 ["b"]
       81 GETTABLEKS                       R6 R0 K6 ["Transparency"]
       83 FASTCALL1                        TYPE R6 ; [+3]
       84 MOVE                             R8 R6
       85 GETIMPORT                        R7 K14 [type]
       87 CALL                             R7 1 1
       88 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
       90 MOVE                             R5 R6
       91 JUMP                             ; [+1]
       92 LOADN                            R5 0
       93 SETTABLEKS                       R5 R4 K6 ["Transparency"]
       95 MOVE                             R5 R2
       96 CALL                             R3 2 2
       97 DUPCLOSURE                       R7 K18 [PROTO_2]
       98 NAMECALL                         R5 R3 K19 ["map"]
      100 CALL                             R5 2 1
      101 NEWCLOSURE                       R6 P2
      102 CAPTURE                          VAL R1
      103 CAPTURE                          UPVAL U2
      104 CAPTURE                          VAL R4
      105 CAPTURE                          UPVAL U1
      106 RETURN                           R5 2
      107 FASTCALL1                        TYPEOF R0 ; [+3]
      108 MOVE                             R4 R0
      109 GETIMPORT                        R3 K3 [typeof]
      111 CALL                             R3 1 1
      112 JUMPIFNOTEQKS                    R3 K20 ["UDim"] ; [+45]
      114 GETUPVAL                         R4 1
      115 GETTABLEKS                       R3 R4 K7 ["useAnimatedBinding"]
      117 DUPTABLE                         R4 K23 [{"scale", "offset"}]
      118 GETTABLEKS                       R6 R0 K24 ["Scale"]
      120 FASTCALL1                        TYPE R6 ; [+3]
      121 MOVE                             R8 R6
      122 GETIMPORT                        R7 K14 [type]
      124 CALL                             R7 1 1
      125 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
      127 MOVE                             R5 R6
      128 JUMP                             ; [+1]
      129 LOADN                            R5 0
      130 SETTABLEKS                       R5 R4 K21 ["scale"]
      132 GETTABLEKS                       R6 R0 K25 ["Offset"]
      134 FASTCALL1                        TYPE R6 ; [+3]
      135 MOVE                             R8 R6
      136 GETIMPORT                        R7 K14 [type]
      138 CALL                             R7 1 1
      139 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
      141 MOVE                             R5 R6
      142 JUMP                             ; [+1]
      143 LOADN                            R5 0
      144 SETTABLEKS                       R5 R4 K22 ["offset"]
      146 MOVE                             R5 R2
      147 CALL                             R3 2 2
      148 DUPCLOSURE                       R7 K26 [PROTO_4]
      149 NAMECALL                         R5 R3 K19 ["map"]
      151 CALL                             R5 2 1
      152 NEWCLOSURE                       R6 P4
      153 CAPTURE                          VAL R1
      154 CAPTURE                          UPVAL U2
      155 CAPTURE                          VAL R4
      156 CAPTURE                          UPVAL U1
      157 RETURN                           R5 2
      158 FASTCALL1                        TYPEOF R0 ; [+3]
      159 MOVE                             R4 R0
      160 GETIMPORT                        R3 K3 [typeof]
      162 CALL                             R3 1 1
      163 JUMPIFNOTEQKS                    R3 K27 ["UDim2"] ; [+81]
      165 GETUPVAL                         R4 1
      166 GETTABLEKS                       R3 R4 K7 ["useAnimatedBinding"]
      168 DUPTABLE                         R4 K32 [{"xScale", "xOffset", "yScale", "yOffset"}]
      169 GETTABLEKS                       R7 R0 K33 ["X"]
      171 GETTABLEKS                       R6 R7 K24 ["Scale"]
      173 FASTCALL1                        TYPE R6 ; [+3]
      174 MOVE                             R8 R6
      175 GETIMPORT                        R7 K14 [type]
      177 CALL                             R7 1 1
      178 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
      180 MOVE                             R5 R6
      181 JUMP                             ; [+1]
      182 LOADN                            R5 0
      183 SETTABLEKS                       R5 R4 K28 ["xScale"]
      185 GETTABLEKS                       R7 R0 K33 ["X"]
      187 GETTABLEKS                       R6 R7 K25 ["Offset"]
      189 FASTCALL1                        TYPE R6 ; [+3]
      190 MOVE                             R8 R6
      191 GETIMPORT                        R7 K14 [type]
      193 CALL                             R7 1 1
      194 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
      196 MOVE                             R5 R6
      197 JUMP                             ; [+1]
      198 LOADN                            R5 0
      199 SETTABLEKS                       R5 R4 K29 ["xOffset"]
      201 GETTABLEKS                       R7 R0 K34 ["Y"]
      203 GETTABLEKS                       R6 R7 K24 ["Scale"]
      205 FASTCALL1                        TYPE R6 ; [+3]
      206 MOVE                             R8 R6
      207 GETIMPORT                        R7 K14 [type]
      209 CALL                             R7 1 1
      210 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
      212 MOVE                             R5 R6
      213 JUMP                             ; [+1]
      214 LOADN                            R5 0
      215 SETTABLEKS                       R5 R4 K30 ["yScale"]
      217 GETTABLEKS                       R7 R0 K34 ["Y"]
      219 GETTABLEKS                       R6 R7 K25 ["Offset"]
      221 FASTCALL1                        TYPE R6 ; [+3]
      222 MOVE                             R8 R6
      223 GETIMPORT                        R7 K14 [type]
      225 CALL                             R7 1 1
      226 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
      228 MOVE                             R5 R6
      229 JUMP                             ; [+1]
      230 LOADN                            R5 0
      231 SETTABLEKS                       R5 R4 K31 ["yOffset"]
      233 MOVE                             R5 R2
      234 CALL                             R3 2 2
      235 DUPCLOSURE                       R7 K35 [PROTO_6]
      236 NAMECALL                         R5 R3 K19 ["map"]
      238 CALL                             R5 2 1
      239 NEWCLOSURE                       R6 P6
      240 CAPTURE                          VAL R1
      241 CAPTURE                          UPVAL U2
      242 CAPTURE                          VAL R4
      243 CAPTURE                          UPVAL U1
      244 RETURN                           R5 2
      245 FASTCALL1                        TYPEOF R0 ; [+3]
      246 MOVE                             R4 R0
      247 GETIMPORT                        R3 K3 [typeof]
      249 CALL                             R3 1 1
      250 JUMPIFNOTEQKS                    R3 K36 ["Vector2"] ; [+45]
      252 GETUPVAL                         R4 1
      253 GETTABLEKS                       R3 R4 K7 ["useAnimatedBinding"]
      255 DUPTABLE                         R4 K39 [{"x", "y"}]
      256 GETTABLEKS                       R6 R0 K33 ["X"]
      258 FASTCALL1                        TYPE R6 ; [+3]
      259 MOVE                             R8 R6
      260 GETIMPORT                        R7 K14 [type]
      262 CALL                             R7 1 1
      263 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
      265 MOVE                             R5 R6
      266 JUMP                             ; [+1]
      267 LOADN                            R5 0
      268 SETTABLEKS                       R5 R4 K37 ["x"]
      270 GETTABLEKS                       R6 R0 K34 ["Y"]
      272 FASTCALL1                        TYPE R6 ; [+3]
      273 MOVE                             R8 R6
      274 GETIMPORT                        R7 K14 [type]
      276 CALL                             R7 1 1
      277 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
      279 MOVE                             R5 R6
      280 JUMP                             ; [+1]
      281 LOADN                            R5 0
      282 SETTABLEKS                       R5 R4 K38 ["y"]
      284 MOVE                             R5 R2
      285 CALL                             R3 2 2
      286 DUPCLOSURE                       R7 K40 [PROTO_8]
      287 NAMECALL                         R5 R3 K19 ["map"]
      289 CALL                             R5 2 1
      290 NEWCLOSURE                       R6 P8
      291 CAPTURE                          VAL R1
      292 CAPTURE                          UPVAL U2
      293 CAPTURE                          VAL R4
      294 CAPTURE                          UPVAL U1
      295 RETURN                           R5 2
      296 FASTCALL1                        TYPEOF R0 ; [+3]
      297 MOVE                             R4 R0
      298 GETIMPORT                        R3 K3 [typeof]
      300 CALL                             R3 1 1
      301 JUMPIFNOTEQKS                    R3 K5 ["Color3"] ; [+59]
      303 GETUPVAL                         R4 1
      304 GETTABLEKS                       R3 R4 K7 ["useAnimatedBinding"]
      306 DUPTABLE                         R4 K41 [{"r", "g", "b"}]
      307 GETTABLEKS                       R6 R0 K12 ["R"]
      309 FASTCALL1                        TYPE R6 ; [+3]
      310 MOVE                             R8 R6
      311 GETIMPORT                        R7 K14 [type]
      313 CALL                             R7 1 1
      314 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
      316 MOVE                             R5 R6
      317 JUMP                             ; [+1]
      318 LOADN                            R5 0
      319 SETTABLEKS                       R5 R4 K8 ["r"]
      321 GETTABLEKS                       R6 R0 K16 ["G"]
      323 FASTCALL1                        TYPE R6 ; [+3]
      324 MOVE                             R8 R6
      325 GETIMPORT                        R7 K14 [type]
      327 CALL                             R7 1 1
      328 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
      330 MOVE                             R5 R6
      331 JUMP                             ; [+1]
      332 LOADN                            R5 0
      333 SETTABLEKS                       R5 R4 K9 ["g"]
      335 GETTABLEKS                       R6 R0 K17 ["B"]
      337 FASTCALL1                        TYPE R6 ; [+3]
      338 MOVE                             R8 R6
      339 GETIMPORT                        R7 K14 [type]
      341 CALL                             R7 1 1
      342 JUMPIFNOTEQKS                    R7 K15 ["number"] ; [+3]
      344 MOVE                             R5 R6
      345 JUMP                             ; [+1]
      346 LOADN                            R5 0
      347 SETTABLEKS                       R5 R4 K10 ["b"]
      349 MOVE                             R5 R2
      350 CALL                             R3 2 2
      351 DUPCLOSURE                       R7 K42 [PROTO_10]
      352 NAMECALL                         R5 R3 K19 ["map"]
      354 CALL                             R5 2 1
      355 NEWCLOSURE                       R6 P10
      356 CAPTURE                          VAL R1
      357 CAPTURE                          UPVAL U2
      358 CAPTURE                          VAL R4
      359 CAPTURE                          UPVAL U1
      360 RETURN                           R5 2
      361 FASTCALL1                        TYPEOF R0 ; [+3]
      362 MOVE                             R4 R0
      363 GETIMPORT                        R3 K3 [typeof]
      365 CALL                             R3 1 1
      366 JUMPIFNOTEQKS                    R3 K15 ["number"] ; [+26]
      368 GETUPVAL                         R4 1
      369 GETTABLEKS                       R3 R4 K7 ["useAnimatedBinding"]
      371 FASTCALL1                        TYPE R0 ; [+3]
      372 MOVE                             R6 R0
      373 GETIMPORT                        R5 K14 [type]
      375 CALL                             R5 1 1
      376 JUMPIFNOTEQKS                    R5 K15 ["number"] ; [+3]
      378 MOVE                             R4 R0
      379 JUMP                             ; [+1]
      380 LOADN                            R4 0
      381 MOVE                             R5 R2
      382 CALL                             R3 2 2
      383 DUPCLOSURE                       R7 K43 [PROTO_12]
      384 NAMECALL                         R5 R3 K19 ["map"]
      386 CALL                             R5 2 1
      387 NEWCLOSURE                       R6 P12
      388 CAPTURE                          VAL R1
      389 CAPTURE                          UPVAL U2
      390 CAPTURE                          VAL R4
      391 CAPTURE                          UPVAL U1
      392 RETURN                           R5 2
      393 GETIMPORT                        R3 K45 [warn]
      395 LOADK                            R4 K46 ["Unsupported type for animated value:"]
      396 FASTCALL1                        TYPEOF R0 ; [+3]
      397 MOVE                             R6 R0
      398 GETIMPORT                        R5 K3 [typeof]
      400 CALL                             R5 1 1
      401 CALL                             R3 2 0
      402 GETUPVAL                         R4 0
      403 GETTABLEKS                       R3 R4 K47 ["createBinding"]
      405 MOVE                             R4 R0
      406 CALL                             R3 1 1
      407 DUPCLOSURE                       R4 K48 [PROTO_14]
      408 RETURN                           R3 2

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
       21 GETTABLEKS                       R6 R0 K7 ["TimingConfigs"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R6 R5 K8 ["presets"]
       26 GETIMPORT                        R7 K4 [require]
       28 GETTABLEKS                       R9 R1 K9 ["Enums"]
       30 GETTABLEKS                       R8 R9 K10 ["TransitionPreset"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R9 R7 K11 ["Default"]
       35 GETTABLE                         R8 R6 R9
       36 GETIMPORT                        R9 K4 [require]
       38 GETTABLEKS                       R10 R1 K12 ["Types"]
       40 CALL                             R9 1 1
       41 DUPCLOSURE                       R10 K13 [PROTO_0]
       42 DUPCLOSURE                       R11 K14 [PROTO_15]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R8
       46 RETURN                           R11 1
