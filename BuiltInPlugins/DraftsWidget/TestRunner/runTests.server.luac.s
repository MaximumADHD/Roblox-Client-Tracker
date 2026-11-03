PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["DraftsWidgetFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 MOVE                             R2 R1
        6 JUMPIFNOT                        R2 ; [+4]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 LOADB                            R3 0
       12 JUMPIFEQKNIL                     R2 ; [+7]
       14 GETTABLEKS                       R4 R2 K2 ["Value"]
       16 JUMPIFEQKB                       R4 TRUE ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R3 0
        7 JUMPIFNOT                        R3 ; [+2]
        8 LOADN                            R2 1
        9 JUMP                             ; [+1]
       10 LOADN                            R2 0
       11 NAMECALL                         R0 R0 K4 ["ExitAsync"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 GETTABLEKS                       R0 R0 K4 ["Parent"]
       14 GETTABLEKS                       R0 R0 K4 ["Parent"]
       16 GETTABLEKS                       R1 R0 K6 ["Src"]
       18 GETIMPORT                        R2 K8 [game]
       20 LOADK                            R4 K9 ["Workspace"]
       21 NAMECALL                         R2 R2 K10 ["GetService"]
       23 CALL                             R2 2 1
       24 DUPCLOSURE                       R3 K11 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 LOADK                            R7 K12 ["DraftsWidgetFlags"]
       27 NAMECALL                         R5 R2 K13 ["FindFirstChild"]
       29 CALL                             R5 2 1
       30 MOVE                             R6 R5
       31 JUMPIFNOT                        R6 ; [+4]
       32 LOADK                            R8 K14 ["RunTests"]
       33 NAMECALL                         R6 R5 K13 ["FindFirstChild"]
       35 CALL                             R6 2 1
       36 LOADB                            R4 0
       37 JUMPIFEQKNIL                     R6 ; [+7]
       39 GETTABLEKS                       R7 R6 K15 ["Value"]
       41 JUMPIFEQKB                       R7 TRUE ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 JUMPIF                           R4 ; [+20]
       46 LOADK                            R7 K12 ["DraftsWidgetFlags"]
       47 NAMECALL                         R5 R2 K13 ["FindFirstChild"]
       49 CALL                             R5 2 1
       50 MOVE                             R6 R5
       51 JUMPIFNOT                        R6 ; [+4]
       52 LOADK                            R8 K16 ["RunningUnderCLI"]
       53 NAMECALL                         R6 R5 K13 ["FindFirstChild"]
       55 CALL                             R6 2 1
       56 LOADB                            R4 0
       57 JUMPIFEQKNIL                     R6 ; [+7]
       59 GETTABLEKS                       R7 R6 K15 ["Value"]
       61 JUMPIFEQKB                       R7 TRUE ; [+2]
       63 LOADB                            R4 0 +1
       64 LOADB                            R4 1
       65 JUMPIFNOT                        R4 ; [+94]
       66 GETIMPORT                        R4 K1 [require]
       68 GETTABLEKS                       R5 R0 K17 ["Packages"]
       70 GETTABLEKS                       R5 R5 K18 ["Dev"]
       72 GETTABLEKS                       R5 R5 K19 ["TestEZ"]
       74 CALL                             R4 1 1
       75 GETTABLEKS                       R5 R4 K20 ["TestBootstrap"]
       77 GETTABLEKS                       R6 R4 K21 ["Reporters"]
       79 GETTABLEKS                       R6 R6 K22 ["TextReporterQuiet"]
       81 GETIMPORT                        R7 K24 [print]
       83 LOADK                            R9 K25 ["----- All "]
       84 GETIMPORT                        R10 K3 [script]
       86 GETTABLEKS                       R10 R10 K4 ["Parent"]
       88 GETTABLEKS                       R10 R10 K4 ["Parent"]
       90 GETTABLEKS                       R10 R10 K26 ["Name"]
       92 LOADK                            R11 K27 [" Tests ------"]
       93 CONCAT                           R8 R9 R11
       94 CALL                             R7 1 0
       95 NEWTABLE                         R9 0 1
       97 MOVE                             R10 R1
       98 SETLIST                          R9 R10 1 [1]
      100 MOVE                             R10 R6
      101 NAMECALL                         R7 R5 K28 ["run"]
      103 CALL                             R7 3 1
      104 GETIMPORT                        R8 K24 [print]
      106 LOADK                            R9 K29 ["----------------------------------"]
      107 CALL                             R8 1 0
      108 LOADB                            R8 0
      109 FASTCALL1                        TYPEOF R7 ; [+3]
      110 MOVE                             R10 R7
      111 GETIMPORT                        R9 K31 [typeof]
      113 CALL                             R9 1 1
      114 JUMPIFNOTEQKS                    R9 K32 ["table"] ; [+9]
      116 GETTABLEKS                       R10 R7 K34 ["failureCount"]
      118 ORK                              R9 R10 K33 [0]
      119 LOADN                            R10 0
      120 JUMPIFLT                         R10 R9 ; [+2]
      122 LOADB                            R8 0 +1
      123 LOADB                            R8 1
      124 JUMPIFNOT                        R8 ; [+10]
      125 GETIMPORT                        R9 K8 [game]
      127 LOADK                            R11 K35 ["TestService"]
      128 NAMECALL                         R9 R9 K10 ["GetService"]
      130 CALL                             R9 2 1
      131 LOADK                            R11 K36 ["TestEZ test run failed"]
      132 NAMECALL                         R9 R9 K37 ["Error"]
      134 CALL                             R9 2 0
      135 LOADK                            R12 K12 ["DraftsWidgetFlags"]
      136 NAMECALL                         R10 R2 K13 ["FindFirstChild"]
      138 CALL                             R10 2 1
      139 MOVE                             R11 R10
      140 JUMPIFNOT                        R11 ; [+4]
      141 LOADK                            R13 K16 ["RunningUnderCLI"]
      142 NAMECALL                         R11 R10 K13 ["FindFirstChild"]
      144 CALL                             R11 2 1
      145 LOADB                            R9 0
      146 JUMPIFEQKNIL                     R11 ; [+7]
      148 GETTABLEKS                       R12 R11 K15 ["Value"]
      150 JUMPIFEQKB                       R12 TRUE ; [+2]
      152 LOADB                            R9 0 +1
      153 LOADB                            R9 1
      154 JUMPIFNOT                        R9 ; [+5]
      155 GETIMPORT                        R9 K39 [pcall]
      157 DUPCLOSURE                       R10 K40 [PROTO_1]
      158 CAPTURE                          VAL R8
      159 CALL                             R9 1 0
      160 RETURN                           R0 0
