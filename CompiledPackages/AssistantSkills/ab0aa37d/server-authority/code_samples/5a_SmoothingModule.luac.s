PROTO_0:
        0 DUPTABLE                         R1 K9 [{[1] = {0, 0, 0}, ["position"] = {0, 0, 0}, ["position_offset"] = {0, 0, 0}, ["is_smoothing"] = False, ["smooth_velocity"] = {0, 0, 0}, ["params"], ["last_target"] = {0, 0, 0}}]
        1 GETIMPORT                        R2 K12 [table.clone]
        3 GETUPVAL                         R3 0
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R1 K7 ["params"]
        7 JUMPIFEQKNIL                     R0 ; [+10]
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R1 K7 ["params"]
       15 SETTABLE                         R6 R7 R5
       16 FORGLOOP                         R2 2 ; [-4]
       18 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["Dot"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R4 R1 K2 ["Magnitude"]
        6 POWK                             R3 R4 K1 [2]
        7 JUMPIFNOTEQKN                    R3 K3 [0] ; [+3]
        9 LOADK                            R4 K4 [{0, 0, 0}]
       10 RETURN                           R4 1
       11 DIV                              R5 R2 R3
       12 MUL                              R4 R5 R1
       13 RETURN                           R4 1

PROTO_2:
        0 SUB                              R4 R0 R1
        1 GETTABLEKS                       R5 R4 K0 ["Magnitude"]
        3 GETTABLEKS                       R7 R2 K1 ["last_target"]
        5 SUB                              R6 R7 R1
        6 GETTABLEKS                       R7 R2 K2 ["params"]
        8 GETTABLEKS                       R7 R7 K3 ["DisableOneFrame"]
       10 JUMPIFNOT                        R7 ; [+9]
       11 LOADB                            R7 0
       12 SETTABLEKS                       R7 R2 K4 ["is_smoothing"]
       14 GETTABLEKS                       R7 R2 K2 ["params"]
       16 LOADB                            R8 0
       17 SETTABLEKS                       R8 R7 K3 ["DisableOneFrame"]
       19 JUMP                             ; [+71]
       20 GETTABLEKS                       R7 R2 K2 ["params"]
       22 GETTABLEKS                       R7 R7 K5 ["Always"]
       24 JUMPIFNOT                        R7 ; [+6]
       25 LOADB                            R7 1
       26 SETTABLEKS                       R7 R2 K4 ["is_smoothing"]
       28 SETTABLEKS                       R4 R2 K6 ["position_offset"]
       30 JUMP                             ; [+60]
       31 GETTABLEKS                       R7 R2 K2 ["params"]
       33 GETTABLEKS                       R7 R7 K7 ["Never"]
       35 JUMPIFNOT                        R7 ; [+4]
       36 LOADB                            R7 0
       37 SETTABLEKS                       R7 R2 K4 ["is_smoothing"]
       39 JUMP                             ; [+51]
       40 GETTABLEKS                       R7 R2 K4 ["is_smoothing"]
       42 JUMPIF                           R7 ; [+24]
       43 GETTABLEKS                       R7 R4 K0 ["Magnitude"]
       45 GETTABLEKS                       R8 R2 K2 ["params"]
       47 GETTABLEKS                       R8 R8 K8 ["EngageMin"]
       49 JUMPIFNOTLE                      R8 R7 ; [+17]
       51 GETTABLEKS                       R7 R4 K0 ["Magnitude"]
       53 GETTABLEKS                       R8 R2 K2 ["params"]
       55 GETTABLEKS                       R8 R8 K9 ["EngageMax"]
       57 JUMPIFNOTLT                      R7 R8 ; [+9]
       59 LOADB                            R7 1
       60 SETTABLEKS                       R7 R2 K4 ["is_smoothing"]
       62 SETTABLEKS                       R4 R2 K6 ["position_offset"]
       64 SETTABLEKS                       R1 R2 K1 ["last_target"]
       66 JUMP                             ; [+24]
       67 GETTABLEKS                       R7 R2 K4 ["is_smoothing"]
       69 JUMPIFNOT                        R7 ; [+21]
       70 GETTABLEKS                       R7 R6 K0 ["Magnitude"]
       72 GETTABLEKS                       R8 R2 K2 ["params"]
       74 GETTABLEKS                       R8 R8 K10 ["ReEngageMin"]
       76 JUMPIFNOTLE                      R8 R7 ; [+14]
       78 LOADB                            R7 1
       79 SETTABLEKS                       R7 R2 K4 ["is_smoothing"]
       81 GETIMPORT                        R7 K12 [print]
       83 LOADK                            R8 K13 ["REENGAGE"]
       84 GETTABLEKS                       R9 R6 K0 ["Magnitude"]
       86 CALL                             R7 2 0
       87 SETTABLEKS                       R4 R2 K6 ["position_offset"]
       89 SETTABLEKS                       R1 R2 K1 ["last_target"]
       91 GETTABLEKS                       R7 R2 K1 ["last_target"]
       93 SUB                              R6 R7 R1
       94 GETTABLEKS                       R7 R2 K4 ["is_smoothing"]
       96 JUMPIFNOT                        R7 ; [+82]
       97 GETTABLEKS                       R7 R2 K2 ["params"]
       99 GETTABLEKS                       R7 R7 K14 ["Fancy"]
      101 JUMPIFNOT                        R7 ; [+37]
      102 GETTABLEKS                       R7 R6 K0 ["Magnitude"]
      104 LOADN                            R8 0
      105 JUMPIFNOTLT                      R8 R7 ; [+33]
      107 GETTABLEKS                       R9 R2 K6 ["position_offset"]
      109 NAMECALL                         R7 R6 K15 ["Dot"]
      111 CALL                             R7 2 1
      112 LOADN                            R8 0
      113 JUMPIFNOTLT                      R8 R7 ; [+25]
      115 MOVE                             R8 R6
      116 GETTABLEKS                       R9 R2 K6 ["position_offset"]
      118 GETTABLEKS                       R9 R9 K16 ["Unit"]
      120 MOVE                             R12 R9
      121 NAMECALL                         R10 R8 K15 ["Dot"]
      123 CALL                             R10 2 1
      124 GETTABLEKS                       R12 R9 K0 ["Magnitude"]
      126 POWK                             R11 R12 K17 [2]
      127 JUMPIFNOTEQKN                    R11 K18 [0] ; [+3]
      129 LOADK                            R7 K19 [{0, 0, 0}]
      130 JUMP                             ; [+3]
      131 DIV                              R13 R10 R11
      132 MUL                              R12 R13 R9
      133 MOVE                             R7 R12
      134 GETTABLEKS                       R9 R2 K6 ["position_offset"]
      136 SUB                              R8 R9 R7
      137 SETTABLEKS                       R8 R2 K6 ["position_offset"]
      139 GETUPVAL                         R7 0
      140 GETTABLEKS                       R9 R2 K6 ["position_offset"]
      142 LOADK                            R10 K19 [{0, 0, 0}]
      143 GETTABLEKS                       R11 R2 K20 ["velocity"]
      145 GETTABLEKS                       R12 R2 K2 ["params"]
      147 GETTABLEKS                       R12 R12 K21 ["Time"]
      149 LOADN                            R13 1000
      150 MOVE                             R14 R3
      151 NAMECALL                         R7 R7 K22 ["SmoothDamp"]
      153 CALL                             R7 7 2
      154 SETTABLEKS                       R7 R2 K6 ["position_offset"]
      156 SETTABLEKS                       R8 R2 K20 ["velocity"]
      158 GETTABLEKS                       R7 R2 K6 ["position_offset"]
      160 ADD                              R0 R1 R7
      161 GETTABLEKS                       R7 R2 K2 ["params"]
      163 GETTABLEKS                       R7 R7 K5 ["Always"]
      165 JUMPIF                           R7 ; [+13]
      166 GETTABLEKS                       R7 R2 K6 ["position_offset"]
      168 GETTABLEKS                       R7 R7 K0 ["Magnitude"]
      170 GETTABLEKS                       R8 R2 K2 ["params"]
      172 GETTABLEKS                       R8 R8 K23 ["Disengage"]
      174 JUMPIFNOTLT                      R7 R8 ; [+4]
      176 LOADB                            R7 0
      177 SETTABLEKS                       R7 R2 K4 ["is_smoothing"]
      179 GETTABLEKS                       R7 R2 K4 ["is_smoothing"]
      181 JUMPIF                           R7 ; [+7]
      182 LOADK                            R7 K19 [{0, 0, 0}]
      183 SETTABLEKS                       R7 R2 K20 ["velocity"]
      185 LOADK                            R7 K19 [{0, 0, 0}]
      186 SETTABLEKS                       R7 R2 K6 ["position_offset"]
      188 MOVE                             R0 R1
      189 SETTABLEKS                       R1 R2 K1 ["last_target"]
      191 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TweenService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K22 [{["DisableOneFrame"] = True, ["Always"] = False, ["Never"] = False, ["VisualizeDebug"] = False, ["EngageMin"] = 1, ["EngageMax"] = 30, ["ReEngageMin"] = 10, ["ReEngageMax"] = 30, ["Disengage"] = 0.05, ["Time"] = 0.1, ["Fancy"] = True}]
        8 NEWTABLE                         R2 2 0
       10 DUPCLOSURE                       R3 K23 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R3 R2 K24 ["new"]
       14 DUPCLOSURE                       R3 K25 [PROTO_1]
       15 DUPCLOSURE                       R4 K26 [PROTO_2]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R4 R2 K27 ["SmoothPosition"]
       19 RETURN                           R2 1
