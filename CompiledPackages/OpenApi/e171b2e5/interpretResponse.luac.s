PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R4 R1
        6 GETIMPORT                        R3 K1 [tostring]
        8 CALL                             R3 1 1
        9 GETTABLE                         R2 R0 R3
       10 JUMPIF                           R2 ; [+13]
       11 LOADK                            R3 K2 ["%*XX"]
       12 DIVK                             R6 R1 K3 [100]
       13 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       14 GETIMPORT                        R5 K6 [math.floor]
       16 CALL                             R5 1 1
       17 NAMECALL                         R3 R3 K7 ["format"]
       19 CALL                             R3 2 1
       20 GETTABLE                         R2 R0 R3
       21 JUMPIF                           R2 ; [+2]
       22 GETTABLEKS                       R2 R0 K8 ["default"]
       24 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["ok"]
        2 JUMPIF                           R4 ; [+14]
        3 DUPTABLE                         R4 K6 [{["success"] = False, ["errorDetails"], ["httpDetails"] = }]
        4 DUPTABLE                         R5 K9 [{"kind", "networkError"}]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K10 ["Network"]
        8 SETTABLEKS                       R6 R5 K7 ["kind"]
       10 GETTABLEKS                       R6 R1 K11 ["errorMessage"]
       12 SETTABLEKS                       R6 R5 K8 ["networkError"]
       14 SETTABLEKS                       R5 R4 K3 ["errorDetails"]
       16 RETURN                           R4 1
       17 DUPTABLE                         R4 K15 [{"statusCode", "statusMessage", "headers"}]
       18 GETTABLEKS                       R5 R1 K12 ["statusCode"]
       20 SETTABLEKS                       R5 R4 K12 ["statusCode"]
       22 GETTABLEKS                       R5 R1 K13 ["statusMessage"]
       24 SETTABLEKS                       R5 R4 K13 ["statusMessage"]
       26 GETTABLEKS                       R5 R1 K14 ["headers"]
       28 SETTABLEKS                       R5 R4 K14 ["headers"]
       30 GETTABLEKS                       R5 R1 K12 ["statusCode"]
       32 LOADN                            R6 200
       33 JUMPIFLT                         R5 R6 ; [+6]
       35 GETTABLEKS                       R5 R1 K12 ["statusCode"]
       37 LOADN                            R6 300
       38 JUMPIFNOTLE                      R6 R5 ; [+77]
       40 LOADNIL                          R5
       41 GETTABLEKS                       R7 R1 K12 ["statusCode"]
       43 JUMPIFNOTEQKNIL                  R3 ; [+3]
       45 LOADNIL                          R6
       46 JUMP                             ; [+20]
       47 FASTCALL1                        TOSTRING R7 ; [+3]
       48 MOVE                             R9 R7
       49 GETIMPORT                        R8 K17 [tostring]
       51 CALL                             R8 1 1
       52 GETTABLE                         R6 R3 R8
       53 JUMPIF                           R6 ; [+13]
       54 LOADK                            R8 K18 ["%*XX"]
       55 DIVK                             R11 R7 K19 [100]
       56 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       57 GETIMPORT                        R10 K22 [math.floor]
       59 CALL                             R10 1 1
       60 NAMECALL                         R8 R8 K23 ["format"]
       62 CALL                             R8 2 1
       63 GETTABLE                         R6 R3 R8
       64 JUMPIF                           R6 ; [+2]
       65 GETTABLEKS                       R6 R3 K24 ["default"]
       67 JUMPIFEQKNIL                     R6 ; [+22]
       69 GETTABLEKS                       R8 R0 K25 ["decode"]
       71 GETTABLEKS                       R9 R1 K26 ["body"]
       73 FASTPCALL                        pcall 2 ; [+2]
       74 GETIMPORT                        R7 K28 [pcall]
       76 CALL                             R7 2 2
       77 JUMPIFNOT                        R7 ; [+12]
       78 NEWTABLE                         R9 0 0
       80 GETTABLEKS                       R10 R6 K29 ["fromResponse"]
       82 MOVE                             R11 R8
       83 MOVE                             R12 R9
       84 LOADK                            R13 K30 [""]
       85 CALL                             R10 3 1
       86 LENGTH                           R11 R9
       87 JUMPIFNOTEQKN                    R11 K31 [0] ; [+2]
       89 MOVE                             R5 R10
       90 DUPTABLE                         R7 K32 [{["success"] = False, ["errorDetails"], ["httpDetails"]}]
       91 DUPTABLE                         R8 K34 [{"kind", "statusCode", "statusMessage", "body", "data"}]
       92 GETUPVAL                         R9 0
       93 GETTABLEKS                       R9 R9 K35 ["HttpStatusCode"]
       95 SETTABLEKS                       R9 R8 K7 ["kind"]
       97 GETTABLEKS                       R9 R1 K12 ["statusCode"]
       99 SETTABLEKS                       R9 R8 K12 ["statusCode"]
      101 GETTABLEKS                       R9 R1 K13 ["statusMessage"]
      103 SETTABLEKS                       R9 R8 K13 ["statusMessage"]
      105 GETTABLEKS                       R9 R1 K26 ["body"]
      107 SETTABLEKS                       R9 R8 K26 ["body"]
      109 SETTABLEKS                       R5 R8 K33 ["data"]
      111 SETTABLEKS                       R8 R7 K3 ["errorDetails"]
      113 SETTABLEKS                       R4 R7 K4 ["httpDetails"]
      115 RETURN                           R7 1
      116 JUMPIFNOTEQKNIL                  R2 ; [+9]
      118 DUPTABLE                         R5 K37 [{["success"] = True, ["data"], ["httpDetails"]}]
      119 GETTABLEKS                       R6 R1 K26 ["body"]
      121 SETTABLEKS                       R6 R5 K33 ["data"]
      123 SETTABLEKS                       R4 R5 K4 ["httpDetails"]
      125 RETURN                           R5 1
      126 NEWTABLE                         R5 0 0
      128 LOADNIL                          R6
      129 GETTABLEKS                       R7 R1 K26 ["body"]
      131 JUMPIFEQKS                       R7 K30 [""] ; [+34]
      133 GETTABLEKS                       R8 R0 K25 ["decode"]
      135 GETTABLEKS                       R9 R1 K26 ["body"]
      137 FASTPCALL                        pcall 2 ; [+2]
      138 GETIMPORT                        R7 K28 [pcall]
      140 CALL                             R7 2 2
      141 JUMPIF                           R7 ; [+23]
      142 DUPTABLE                         R9 K32 [{["success"] = False, ["errorDetails"], ["httpDetails"]}]
      143 DUPTABLE                         R10 K39 [{"kind", "validationErrors", "body"}]
      144 GETUPVAL                         R11 0
      145 GETTABLEKS                       R11 R11 K40 ["Validation"]
      147 SETTABLEKS                       R11 R10 K7 ["kind"]
      149 NEWTABLE                         R11 0 1
      151 LOADK                            R12 K41 ["Expected a JSON body"]
      152 SETLIST                          R11 R12 1 [1]
      154 SETTABLEKS                       R11 R10 K38 ["validationErrors"]
      156 GETTABLEKS                       R11 R1 K26 ["body"]
      158 SETTABLEKS                       R11 R10 K26 ["body"]
      160 SETTABLEKS                       R10 R9 K3 ["errorDetails"]
      162 SETTABLEKS                       R4 R9 K4 ["httpDetails"]
      164 RETURN                           R9 1
      165 MOVE                             R6 R8
      166 GETTABLEKS                       R7 R2 K29 ["fromResponse"]
      168 MOVE                             R8 R6
      169 MOVE                             R9 R5
      170 LOADK                            R10 K30 [""]
      171 CALL                             R7 3 1
      172 LENGTH                           R8 R5
      173 LOADN                            R9 0
      174 JUMPIFNOTLT                      R9 R8 ; [+19]
      176 DUPTABLE                         R8 K32 [{["success"] = False, ["errorDetails"], ["httpDetails"]}]
      177 DUPTABLE                         R9 K39 [{"kind", "validationErrors", "body"}]
      178 GETUPVAL                         R10 0
      179 GETTABLEKS                       R10 R10 K40 ["Validation"]
      181 SETTABLEKS                       R10 R9 K7 ["kind"]
      183 SETTABLEKS                       R5 R9 K38 ["validationErrors"]
      185 GETTABLEKS                       R10 R1 K26 ["body"]
      187 SETTABLEKS                       R10 R9 K26 ["body"]
      189 SETTABLEKS                       R9 R8 K3 ["errorDetails"]
      191 SETTABLEKS                       R4 R8 K4 ["httpDetails"]
      193 RETURN                           R8 1
      194 DUPTABLE                         R8 K37 [{["success"] = True, ["data"], ["httpDetails"]}]
      195 SETTABLEKS                       R7 R8 K33 ["data"]
      197 SETTABLEKS                       R4 R8 K4 ["httpDetails"]
      199 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["./Types"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["ERROR_KIND"]
        7 DUPCLOSURE                       R2 K4 [PROTO_0]
        8 DUPCLOSURE                       R3 K5 [PROTO_1]
        9 CAPTURE                          VAL R1
       10 RETURN                           R3 1
