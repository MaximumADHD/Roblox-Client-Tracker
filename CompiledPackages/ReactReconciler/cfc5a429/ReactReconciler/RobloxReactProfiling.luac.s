PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ReactMicroprofilerLevel4"]
        3 LOADN                            R3 0
        4 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [debug.profilebegin]
        3 GETVARARGS                       R1 -1
        4 CALL                             R0 -1 0
        5 GETUPVAL                         R0 0
        6 ADDK                             R0 R0 K3 [1]
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 JUMPIFNOTLT                      R1 R0 ; [+7]
        4 GETIMPORT                        R0 K2 [debug.profileend]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 0
        8 SUBK                             R0 R0 K3 [1]
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETIMPORT                        R1 K1 [warn]
        4 LOADK                            R2 K2 ["RobloxReactProfiling Timer Sampling already running."]
        5 CALL                             R1 1 0
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 0
        8 SETUPVAL                         R0 1
        9 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 FASTCALL1                        TYPE R4 ; [+3]
        5 MOVE                             R7 R4
        6 GETIMPORT                        R6 K1 [type]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["string"] ; [+2]
       11 RETURN                           R4 1
       12 FORGLOOP                         R1 2 ; [-9]
       14 LOADNIL                          R1
       15 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K2 [os.clock]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K3 ["startTime"]
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 GETIMPORT                        R1 K2 [os.clock]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K3 ["endTime"]
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["current"]
        2 LOADNIL                          R2
        3 JUMPIFNOT                        R1 ; [+25]
        4 GETTABLEKS                       R3 R1 K1 ["memoizedProps"]
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETGLOBAL                        R3 K2 ["getFirstStringKey"]
        9 GETTABLEKS                       R4 R1 K1 ["memoizedProps"]
       11 CALL                             R3 1 1
       12 MOVE                             R2 R3
       13 JUMPIFNOTEQKNIL                  R2 ; [+15]
       15 GETTABLEKS                       R3 R1 K3 ["stateNode"]
       17 JUMPIFNOT                        R3 ; [+11]
       18 GETTABLEKS                       R3 R1 K3 ["stateNode"]
       20 GETTABLEKS                       R3 R3 K4 ["containerInfo"]
       22 JUMPIFNOT                        R3 ; [+6]
       23 GETTABLEKS                       R3 R1 K3 ["stateNode"]
       25 GETTABLEKS                       R3 R3 K4 ["containerInfo"]
       27 GETTABLEKS                       R2 R3 K5 ["Name"]
       29 JUMPIFNOTEQKS                    R2 K6 ["Folder"] ; [+35]
       31 GETTABLEKS                       R3 R1 K7 ["child"]
       33 JUMPIFNOT                        R3 ; [+31]
       34 GETTABLEKS                       R3 R1 K7 ["child"]
       36 LOADNIL                          R4
       37 GETTABLEKS                       R5 R3 K1 ["memoizedProps"]
       39 JUMPIFNOT                        R5 ; [+6]
       40 GETGLOBAL                        R5 K2 ["getFirstStringKey"]
       42 GETTABLEKS                       R6 R3 K1 ["memoizedProps"]
       44 CALL                             R5 1 1
       45 MOVE                             R4 R5
       46 JUMPIFNOTEQKNIL                  R4 ; [+15]
       48 GETTABLEKS                       R5 R3 K3 ["stateNode"]
       50 JUMPIFNOT                        R5 ; [+11]
       51 GETTABLEKS                       R5 R3 K3 ["stateNode"]
       53 GETTABLEKS                       R5 R5 K4 ["containerInfo"]
       55 JUMPIFNOT                        R5 ; [+6]
       56 GETTABLEKS                       R5 R3 K3 ["stateNode"]
       58 GETTABLEKS                       R5 R5 K4 ["containerInfo"]
       60 GETTABLEKS                       R4 R5 K5 ["Name"]
       62 JUMPIFEQKNIL                     R4 ; [+2]
       64 MOVE                             R2 R4
       65 JUMPIFEQKNIL                     R2 ; [+20]
       67 DUPTABLE                         R3 K11 [{"id", "startTime", "endTime"}]
       68 SETTABLEKS                       R2 R3 K8 ["id"]
       70 LOADN                            R4 0
       71 SETTABLEKS                       R4 R3 K9 ["startTime"]
       73 LOADN                            R4 0
       74 SETTABLEKS                       R4 R3 K10 ["endTime"]
       76 GETGLOBAL                        R4 K12 ["startTimer"]
       78 MOVE                             R5 R3
       79 CALL                             R4 1 0
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R4 R4 K13 ["profilebegin"]
       83 MOVE                             R5 R2
       84 CALL                             R4 1 0
       85 RETURN                           R3 1
       86 LOADNIL                          R3
       87 RETURN                           R3 1

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETGLOBAL                        R1 K0 ["endTimer"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["profileend"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["key"]
        6 JUMPIFNOT                        R2 ; [+10]
        7 GETTABLEKS                       R6 R0 K1 ["key"]
        9 FASTCALL1                        TOSTRING R6 ; [+2]
       10 GETIMPORT                        R5 K3 [tostring]
       12 CALL                             R5 1 1
       13 MOVE                             R2 R5
       14 LOADK                            R3 K4 ["="]
       15 ORK                              R4 R1 K5 ["?"]
       16 CONCAT                           R1 R2 R4
       17 LOADNIL                          R2
       18 GETTABLEKS                       R3 R0 K6 ["stateNode"]
       20 JUMPIFNOT                        R3 ; [+28]
       21 GETTABLEKS                       R3 R0 K7 ["tag"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K8 ["HostComponent"]
       26 JUMPIFEQ                         R3 R4 ; [+8]
       28 GETTABLEKS                       R3 R0 K7 ["tag"]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K9 ["HostText"]
       33 JUMPIFNOTEQ                      R3 R4 ; [+15]
       35 GETTABLEKS                       R3 R0 K6 ["stateNode"]
       37 LOADK                            R5 K10 ["LayerCollector"]
       38 NAMECALL                         R3 R3 K11 ["FindFirstAncestorWhichIsA"]
       40 CALL                             R3 2 1
       41 JUMPIFNOT                        R3 ; [+7]
       42 LOADK                            R4 K12 ["["]
       43 NAMECALL                         R7 R3 K13 ["GetFullName"]
       45 CALL                             R7 1 1
       46 MOVE                             R5 R7
       47 LOADK                            R6 K14 ["] "]
       48 CONCAT                           R2 R4 R6
       49 JUMPIFNOT                        R2 ; [+4]
       50 MOVE                             R3 R2
       51 LOADK                            R4 K15 [" : "]
       52 ORK                              R5 R1 K5 ["?"]
       53 CONCAT                           R1 R3 R5
       54 JUMPIFEQKNIL                     R1 ; [+8]
       56 GETUPVAL                         R3 2
       57 GETTABLEKS                       R3 R3 K16 ["profilebegin"]
       59 MOVE                             R4 R1
       60 CALL                             R3 1 0
       61 LOADB                            R3 1
       62 RETURN                           R3 1
       63 LOADB                            R3 0
       64 RETURN                           R3 1

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["profileend"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["profilebegin"]
        3 LOADK                            R1 K1 ["Commit"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["profileend"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R1 R1 K6 ["getComponentName"]
       14 GETIMPORT                        R2 K4 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K2 ["Parent"]
       20 GETTABLEKS                       R3 R3 K7 ["ReactWorkTags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K2 ["Parent"]
       29 GETTABLEKS                       R4 R4 K8 ["ReactInternalTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K10 [pcall]
       34 DUPCLOSURE                       R5 K11 [PROTO_0]
       35 CALL                             R4 1 2
       36 JUMPIF                           R4 ; [+1]
       37 LOADN                            R5 0
       38 DUPCLOSURE                       R6 K12 [PROTO_1]
       39 SETGLOBAL                        R6 K13 ["noop"]
       41 LOADB                            R6 0
       42 LOADNIL                          R7
       43 LOADN                            R8 0
       44 LOADN                            R9 5
       45 JUMPIFNOTLE                      R9 R5 ; [+14]
       47 GETIMPORT                        R9 K15 [game]
       49 LOADK                            R11 K16 ["RunService"]
       50 NAMECALL                         R9 R9 K17 ["GetService"]
       52 CALL                             R9 2 1
       53 GETTABLEKS                       R9 R9 K18 ["RenderStepped"]
       55 NEWCLOSURE                       R11 P2
       56 CAPTURE                          REF R8
       57 NAMECALL                         R9 R9 K19 ["Connect"]
       59 CALL                             R9 2 0
       60 LOADN                            R10 5
       61 JUMPIFNOTLE                      R10 R5 ; [+11]
       63 DUPTABLE                         R9 K22 [{"profilebegin", "profileend"}]
       64 NEWCLOSURE                       R10 P3
       65 CAPTURE                          REF R8
       66 SETTABLEKS                       R10 R9 K20 ["profilebegin"]
       68 NEWCLOSURE                       R10 P4
       69 CAPTURE                          REF R8
       70 SETTABLEKS                       R10 R9 K21 ["profileend"]
       72 JUMP                             ; [+9]
       73 DUPTABLE                         R9 K22 [{"profilebegin", "profileend"}]
       74 GETGLOBAL                        R10 K13 ["noop"]
       76 SETTABLEKS                       R10 R9 K20 ["profilebegin"]
       78 GETGLOBAL                        R10 K13 ["noop"]
       80 SETTABLEKS                       R10 R9 K21 ["profileend"]
       82 NEWCLOSURE                       R10 P5
       83 CAPTURE                          REF R6
       84 CAPTURE                          REF R7
       85 SETGLOBAL                        R10 K23 ["startTimerSampling"]
       87 NEWCLOSURE                       R10 P6
       88 CAPTURE                          REF R6
       89 CAPTURE                          REF R7
       90 SETGLOBAL                        R10 K24 ["endTimerSampling"]
       92 DUPCLOSURE                       R10 K25 [PROTO_7]
       93 SETGLOBAL                        R10 K26 ["getFirstStringKey"]
       95 NEWCLOSURE                       R10 P8
       96 CAPTURE                          REF R6
       97 SETGLOBAL                        R10 K27 ["startTimer"]
       99 NEWCLOSURE                       R10 P9
      100 CAPTURE                          REF R6
      101 CAPTURE                          REF R7
      102 SETGLOBAL                        R10 K28 ["endTimer"]
      104 DUPCLOSURE                       R10 K29 [PROTO_10]
      105 CAPTURE                          VAL R9
      106 SETGLOBAL                        R10 K30 ["profileRootBeforeUnitOfWork"]
      108 DUPCLOSURE                       R10 K31 [PROTO_11]
      109 CAPTURE                          VAL R9
      110 SETGLOBAL                        R10 K32 ["profileRootAfterYielding"]
      112 DUPCLOSURE                       R10 K33 [PROTO_12]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R9
      116 SETGLOBAL                        R10 K34 ["profileUnitOfWorkBefore"]
      118 DUPCLOSURE                       R10 K35 [PROTO_13]
      119 CAPTURE                          VAL R9
      120 SETGLOBAL                        R10 K36 ["profileUnitOfWorkAfter"]
      122 DUPCLOSURE                       R10 K37 [PROTO_14]
      123 CAPTURE                          VAL R9
      124 SETGLOBAL                        R10 K38 ["profileCommitBefore"]
      126 DUPCLOSURE                       R10 K39 [PROTO_15]
      127 CAPTURE                          VAL R9
      128 SETGLOBAL                        R10 K40 ["profileCommitAfter"]
      130 DUPTABLE                         R10 K41 [{"startTimerSampling", "endTimerSampling", "profileRootBeforeUnitOfWork", "profileRootAfterYielding", "profileUnitOfWorkBefore", "profileUnitOfWorkAfter", "profileCommitBefore", "profileCommitAfter"}]
      131 GETGLOBAL                        R11 K23 ["startTimerSampling"]
      133 SETTABLEKS                       R11 R10 K23 ["startTimerSampling"]
      135 GETGLOBAL                        R11 K24 ["endTimerSampling"]
      137 SETTABLEKS                       R11 R10 K24 ["endTimerSampling"]
      139 LOADN                            R12 1
      140 JUMPIFNOTLE                      R12 R5 ; [+4]
      142 GETGLOBAL                        R11 K30 ["profileRootBeforeUnitOfWork"]
      144 JUMP                             ; [+2]
      145 GETGLOBAL                        R11 K13 ["noop"]
      147 SETTABLEKS                       R11 R10 K30 ["profileRootBeforeUnitOfWork"]
      149 LOADN                            R12 1
      150 JUMPIFNOTLE                      R12 R5 ; [+4]
      152 GETGLOBAL                        R11 K32 ["profileRootAfterYielding"]
      154 JUMP                             ; [+2]
      155 GETGLOBAL                        R11 K13 ["noop"]
      157 SETTABLEKS                       R11 R10 K32 ["profileRootAfterYielding"]
      159 LOADN                            R12 10
      160 JUMPIFNOTLE                      R12 R5 ; [+4]
      162 GETGLOBAL                        R11 K34 ["profileUnitOfWorkBefore"]
      164 JUMP                             ; [+2]
      165 GETGLOBAL                        R11 K13 ["noop"]
      167 SETTABLEKS                       R11 R10 K34 ["profileUnitOfWorkBefore"]
      169 LOADN                            R12 10
      170 JUMPIFNOTLE                      R12 R5 ; [+4]
      172 GETGLOBAL                        R11 K36 ["profileUnitOfWorkAfter"]
      174 JUMP                             ; [+2]
      175 GETGLOBAL                        R11 K13 ["noop"]
      177 SETTABLEKS                       R11 R10 K36 ["profileUnitOfWorkAfter"]
      179 LOADN                            R12 5
      180 JUMPIFNOTLE                      R12 R5 ; [+4]
      182 GETGLOBAL                        R11 K38 ["profileCommitBefore"]
      184 JUMP                             ; [+2]
      185 GETGLOBAL                        R11 K13 ["noop"]
      187 SETTABLEKS                       R11 R10 K38 ["profileCommitBefore"]
      189 LOADN                            R12 5
      190 JUMPIFNOTLE                      R12 R5 ; [+4]
      192 GETGLOBAL                        R11 K40 ["profileCommitAfter"]
      194 JUMP                             ; [+2]
      195 GETGLOBAL                        R11 K13 ["noop"]
      197 SETTABLEKS                       R11 R10 K40 ["profileCommitAfter"]
      199 CLOSEUPVALS                      R6
      200 RETURN                           R10 1
